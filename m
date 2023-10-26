Return-Path: <devicetree+bounces-12189-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 003767D849A
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 16:24:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 77AF4B20FEA
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 14:24:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CDAE2EAE3;
	Thu, 26 Oct 2023 14:24:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="QIn7GuOI"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07E4F2E411
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 14:24:44 +0000 (UTC)
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [217.70.183.193])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0CD71B3;
	Thu, 26 Oct 2023 07:24:40 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id EB058240008;
	Thu, 26 Oct 2023 14:24:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1698330279;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PziSD1PgLb0667xILGVhhWhS3pJpGafG9WCNyplDM6M=;
	b=QIn7GuOInRvzLopWLDpEwkNAHOMLbAID0zp3gldafosregQkAiEFK3AidlLnrta4vGYG4y
	wr5A5L4tEgRVFz6aDtcbpalX2QiVE7UgBQla1eH5D+AaaCpOUCM2d7EkqGfs9QCWHHExWY
	KgKsYMAFdux9kQYKH4Dr5F88YDwjoxpvGkDZ4ydIhkmDgh2c+IhcdLWMdgUOa3FhrWvZXb
	fi1g9c84ant7cWC5XmGIy0/bcZQanfqqXLE9L2VH36Zz+NSpS16lVJgwHNZj2j8BP8PaX6
	OHMers7IgTCaRz8Pels/IChplDKbacwVhDlxNpUIxSHIXwEeb3h7Yf2EHrZlvg==
Date: Thu, 26 Oct 2023 16:24:38 +0200
From: Herve Codina <herve.codina@bootlin.com>
To: Rob Herring <robh@kernel.org>
Cc: Frank Rowand <frowand.list@gmail.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] of: address: Consolidate bus .map() functions
Message-ID: <20231026162438.5b063044@bootlin.com>
In-Reply-To: <20231026135358.3564307-3-robh@kernel.org>
References: <20231026135358.3564307-2-robh@kernel.org>
	<20231026135358.3564307-3-robh@kernel.org>
Organization: Bootlin
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-redhat-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-GND-Sasl: herve.codina@bootlin.com

Hi Rob,

On Thu, 26 Oct 2023 08:53:59 -0500
Rob Herring <robh@kernel.org> wrote:

> The bus .map() functions vary only by checking the flag cells values
> and skipping over any flag cells to read the addresses. Otherwise they
> all do the same reading 'ranges' address and size and returning the
> address's offset if it is within the 'ranges' entry.
> 
> Refactor all the .map() functions to pass in the flag cell size so that
> each bus can check the bus specific flags and then call a common
> function to do everything else.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>

Acked-by: Herve Codina <herve.codina@bootlin.com>

Best regards,
Hervé

