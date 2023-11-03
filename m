Return-Path: <devicetree+bounces-13816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B494A7E08B6
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 20:04:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B456D1C20967
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 19:04:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1028121107;
	Fri,  3 Nov 2023 19:04:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="N4Lw034G"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB7BD224D7
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 19:04:07 +0000 (UTC)
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2AADBD;
	Fri,  3 Nov 2023 12:04:02 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 727D1FF805;
	Fri,  3 Nov 2023 19:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1699038241;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=dss+61W/+HYAg0e5xd/Pz/gyDtB4Y0Iwbk0N61bIATc=;
	b=N4Lw034G7uM2A93eso9Bw/JSrNQnmJRPBniVBxbVSxgtyFjQf2yN8hb5Qn/H58vXodfjbQ
	JBcHn0KksFszWgp+TxmL7M3e5uuL2/V8IZvbrcgnmS2/xKjOG3kkYIre4IHNgqCkdJvh2f
	eYkc8FCMLZYt1PPEjJGSCqb9FpCPf5oHDyAANyrA8mRhaIgBmfX0yh53NCpu7pmdXEkARN
	lBHtaZvS8FLV1kaJRReVBMYGeKlRwg4RrAUlaN/rqXMXCF+UHYzceETrKY52ucqr8v4C6q
	miXWqx3hX9O15Kugv8k5M8iQX0UTgt6j47M06dyGPiXeatYmYGQEMblSD1Vcng==
Date: Fri, 3 Nov 2023 20:04:00 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: miquel.raynal@bootlin.com, Frank Li <Frank.Li@nxp.com>
Cc: alexander.stein@ew.tq-group.com, conor+dt@kernel.org,
	conor.culhane@silvaco.com, conor@kernel.org,
	devicetree@vger.kernel.org, festevam@gmail.com, haibo.chen@nxp.com,
	imx@lists.linux.dev, joe@perches.com, kernel@pengutronix.de,
	krzysztof.kozlowski+dt@linaro.org, krzysztof.kozlowski@linaro.org,
	linux-arm-kernel@lists.infradead.org, linux-i3c@lists.infradead.org,
	linux-imx@nxp.com, linux-kernel@vger.kernel.org, peng.fan@nxp.com,
	ping.bai@nxp.com, robh+dt@kernel.org, s.hauer@pengutronix.de,
	shawnguo@kernel.org, sherry.sun@nxp.com, xiaoning.wang@nxp.com
Subject: Re: [PATCH v2 1/2] i3c: master: svc: fix compatibility string
 mismatch with binding doc
Message-ID: <169903821819.391162.6378829151615918079.b4-ty@bootlin.com>
References: <20231017194657.3199749-1-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231017194657.3199749-1-Frank.Li@nxp.com>
X-GND-Sasl: alexandre.belloni@bootlin.com


On Tue, 17 Oct 2023 15:46:56 -0400, Frank Li wrote:
> In the binding documentation, the compatible string is specified as
> 'silvaco,i3c-master-v1', but in the driver, it is defined as
> 'silvaco,i3c-master'.
> 
> Rename 'silvaco,i3c-master' to 'silvaco,i3c-master-v1' to ensure
> compatibility with the documentation.
> 
> [...]

Applied, thanks!

[1/2] i3c: master: svc: fix compatibility string mismatch with binding doc
      commit: 8911eae9c8a947e5c1cc4fcce40473f1f5e475cd

Best regards,

-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

