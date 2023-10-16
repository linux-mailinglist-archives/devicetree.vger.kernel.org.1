Return-Path: <devicetree+bounces-8958-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CA48A7CAC86
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 16:55:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0730C1C208E9
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 14:55:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF61728DDB;
	Mon, 16 Oct 2023 14:55:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="Jn+t4amb"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 466DB262A1;
	Mon, 16 Oct 2023 14:55:51 +0000 (UTC)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::225])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8F90AB;
	Mon, 16 Oct 2023 07:55:48 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 14FD81C000A;
	Mon, 16 Oct 2023 14:55:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1697468147;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=E4UCdwwM/vYHFGtnjXt/BfQr8+RHOz42nLlox8hDx7I=;
	b=Jn+t4ambL8klBhufvO/6Mt4eVlnDDEzL3Wexe0PvgBhcWVFCcJRo1Qoyq07k0Jp1gZvSm0
	FQevd84bliIV7mLtzCd4rZhpjapU9C/NA/Zj9Nqx7dSO4N18PwEdUWOMNkg4w64sQ9KGGe
	fEh3G4Ay9qV5YpeJeEtvGRJCJesGoMJw6mEBHGwrr5hMs35d1f+5jb58Kws5+3nxoTBm5b
	b8chmLbqj6wmQXUnU14+OHr0RABsVKRCsDe8bR67wcpWgs9KvuaNN94rSCV0zid36j7M3c
	PbYXy1E8Tnwke+YcaOfybZxZIa9h0yUvGAF9IaGcde7wNaGVCbCpuuCTRoHx/w==
Date: Mon, 16 Oct 2023 16:55:45 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Alessandro Zummo <a.zummo@towertech.it>,
	Daniel Palmer <daniel@0x0f.com>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Romain Perier <romain.perier@gmail.com>
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 0/3] Add RTC for MStar SSD20xD SoCs
Message-ID: <169746807623.26616.11393539981836060067.b4-ty@bootlin.com>
References: <20230913151606.69494-1-romain.perier@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230913151606.69494-1-romain.perier@gmail.com>
X-GND-Sasl: alexandre.belloni@bootlin.com
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


On Wed, 13 Sep 2023 17:16:03 +0200, Romain Perier wrote:
> This patches series adds a new driver for the RTC found in the Mstar
> SSD202D SoCs. It adds a basic rtc driver, the corresponding devicetree
> bindings.
> 
> The rtctest (from selftests) has been passed on this driver, with the
> following output:
> 
> [...]

Applied, thanks!

[1/3] rtc: Add support for the SSD202D RTC
      commit: ebf6255868e6141c737cacb8d62b0b347f344877
[2/3] dt-bindings: rtc: Add Mstar SSD202D RTC
      commit: cfb67623ce281e045ec11e3eddb1b68b879b53a1

Best regards,

-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

