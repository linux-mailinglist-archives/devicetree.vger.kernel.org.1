Return-Path: <devicetree+bounces-7169-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7277BF83C
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 12:13:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DAACD281966
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 10:13:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9F16179A9;
	Tue, 10 Oct 2023 10:13:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="ooMZcpQQ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C951D16431
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 10:13:08 +0000 (UTC)
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::221])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0934A99;
	Tue, 10 Oct 2023 03:13:04 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 3B782240010;
	Tue, 10 Oct 2023 10:13:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1696932783;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=tUJNRfjUuKDFIex/FlVkBB3IJFXVfYCMFME1OSx+B1Q=;
	b=ooMZcpQQ9d+EZTwSj4Ex/lkRdL5BVBOV/mrBbIZ3BpTjcbG6JWrDXoTX18T/WTyoRkLVWK
	Ui1KsmIrLO0e58CyJfmXa1EPjj6hT1+xZ0foZI7Qe+g6ndpyxdT78rigRFF8y/kn5ReIgX
	Uk8h14kB6mb6I/S3AHgnZPmYDXQqPILahEhNbmgO8EWdATehaN677V+prOn2LWFo5I8pFP
	2ZejcQt6wNfXe8xsDVAcfpZZqhAYWtHGOs48NzT/LnnLG5XjV/eLuArgVrXHfu+RjOeZxR
	YKcgTv73SEJb5GYitNWi7/22TLOzchudYSSFdsiP05XNA62nEyQXHf4aZD8Mlg==
Date: Tue, 10 Oct 2023 12:13:01 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: linux-i3c@lists.infradead.org,
	Matt Johnston <matt@codeconstruct.com.au>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Conor Culhane <conor.culhane@silvaco.com>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-doc@vger.kernel.org
Subject: Re: [PATCH] i3c: Fix typo "Provisional ID" to "Provisioned ID"
Message-ID: <169693275141.1756460.10774272832837669579.b4-ty@bootlin.com>
References: <20231003075339.197099-1-matt@codeconstruct.com.au>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231003075339.197099-1-matt@codeconstruct.com.au>
X-GND-Sasl: alexandre.belloni@bootlin.com
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


On Tue, 03 Oct 2023 15:53:39 +0800, Matt Johnston wrote:
> The MIPI I3C spec refers to a Provisioned ID, since it is (sometimes)
> provisioned at device manufacturing.
> 
> 

Applied, thanks!

[1/1] i3c: Fix typo "Provisional ID" to "Provisioned ID"
      commit: 57ec42b9a1b7e4db4a1c2aa4fcc4eefe6d31bcb8

Best regards,

-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

