Return-Path: <devicetree+bounces-13689-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 354937DFFB3
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 09:23:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E09AE281D9A
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 08:23:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D85A8460;
	Fri,  3 Nov 2023 08:23:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="Q3gJxd9T"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A16B38BE3
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 08:23:10 +0000 (UTC)
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::226])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E6DB131;
	Fri,  3 Nov 2023 01:23:05 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 7D12EC0002;
	Fri,  3 Nov 2023 08:23:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1698999782;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=kg/HZQyNEJyh61W61ZvN9JqFC68uxEc/k0ZZDJXIcjY=;
	b=Q3gJxd9T6Wh0hhaNygTPywLxIUVhymxQRDuK88JIbNh7Bfhd2c4n3N4kBNkAS1sL/JFQjk
	dnFy08a/MUFmxGCD27ayJ3JKZXKosqzM/4AHeVFPB+gsejeXY5rwV9GlaBZo4gIjO01URf
	ywa/Zx+I62xaWBaEhrOhmewt47BmpfHIosBAtMlz+7Cf3PtLJiDG8mx1zurpQ61SbObK78
	nwv4BFLMmIsr3zxGXJ01uY4lZpvy3G4nZDt5DzBy1fvNlbgDqt8GrzBeEPHech0xOFY1gQ
	9L583DI3Enk0a8/kZsm8LUBpKxUwxyQTo9Mv335lmrzXNWVKEAKkCj8It9dJ8w==
Date: Fri, 3 Nov 2023 09:23:00 +0100
From: Mehdi Djait <mehdi.djait@bootlin.com>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: mchehab@kernel.org, heiko@sntech.de, hverkuil-cisco@xs4all.nl,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	conor+dt@kernel.org, linux-media@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	thomas.petazzoni@bootlin.com, alexandre.belloni@bootlin.com,
	maxime.chevallier@bootlin.com, paul.kocialkowski@bootlin.com
Subject: Re: [PATCH v9 2/3] media: rockchip: Add a driver for Rockchip's
 camera interface
Message-ID: <ZUSt5GC4lALz/fq5@pc-70.home>
References: <cover.1698666612.git.mehdi.djait@bootlin.com>
 <f7367726eb077d43446c83591ecbf9acbc77ef5f.1698666612.git.mehdi.djait@bootlin.com>
 <6f98b471-b139-4043-a8ab-e7a9f9608d60@wolfvision.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6f98b471-b139-4043-a8ab-e7a9f9608d60@wolfvision.net>
X-GND-Sasl: mehdi.djait@bootlin.com

Hello Michael,

On Tue, Oct 31, 2023 at 11:23:17PM +0100, Michael Riesch wrote:
> Hi Mehdi,
> 
> Thanks for your work! Please find a few comments inline:
> 

thank you for the comments! 

Have you been able to test this driver ? That would be really nice.

--
Kind Regards
Mehdi Djait

