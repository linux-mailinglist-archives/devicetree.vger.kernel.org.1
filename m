Return-Path: <devicetree+bounces-46517-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2379B869E16
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 18:43:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CD6A72904FE
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 17:43:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40ADE13A884;
	Tue, 27 Feb 2024 17:42:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61A0C4D9EF
	for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 17:42:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709055728; cv=none; b=CpdO4tPA16lzpUKS6pRLEF5c0PL8DprpG4/9qF8cOHh+fq9lVHylS5nivSwhNFKg+51EhKlDuC83SZk3N1eDGcCtz55UK6WDI2P7wz3/hbMh6TvIuTe5YOo8sHORt5b78TbC7JrcL9dDbNmo7nKwvoSW+etAF6IDkJo/E55N+rA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709055728; c=relaxed/simple;
	bh=H6zxC2c3+Ep71HmSHVPFs/nQPvOzGeqcdbhDpZeiw7s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=b9u9GZTKGgnuGmFcmkFnSFCSG5LEVYaAD0FhvSTSv22X5kWW8F7+cuVpP3WnQoijilpqtFf5+VLRQglqWYUAvpErf6SCwr+/vpFCNvj4IxFIiQfLcYn6UPFDdsST/GHsc/Nq4CMKAi3pqV20Nx2bJiN+vMf8Rr+kcltfNg7G7qM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from i53875b6c.versanet.de ([83.135.91.108] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rf1Sq-0007Qa-OF; Tue, 27 Feb 2024 18:42:00 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
 Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 0/2] arm64: Add basic support for QNAP TS-433
Date: Tue, 27 Feb 2024 18:41:59 +0100
Message-ID: <6020339.31tnzDBltd@diego>
In-Reply-To: <2ifrk72uv2j27eukuxeekeuluzf4bu5335qk73gaaykg7tcq4d@uhkutnknqqd2>
References:
 <cover.1709034476.git.ukleinek@debian.org>
 <170904127405.3703837.16422930909447111254.robh@kernel.org>
 <2ifrk72uv2j27eukuxeekeuluzf4bu5335qk73gaaykg7tcq4d@uhkutnknqqd2>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Am Dienstag, 27. Februar 2024, 14:55:57 CET schrieb Uwe Kleine-K=F6nig:
> Hello Rob,
>=20
> On Tue, Feb 27, 2024 at 07:45:06AM -0600, Rob Herring wrote:
> > New warnings running 'make CHECK_DTBS=3Dy rockchip/rk3568-qnap-ts433.dt=
b' for cover.1709034476.git.ukleinek@debian.org:
> >=20
> > arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dtb: video-codec@fdea040=
0: 'interrupt-names' is a required property
> > 	from schema $id: http://devicetree.org/schemas/media/rockchip-vpu.yaml#
> > arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dtb: i2s@fe420000: reset=
=2Dnames:0: 'm' is not one of ['tx-m', 'rx-m']
> > 	from schema $id: http://devicetree.org/schemas/sound/rockchip,i2s-tdm.=
yaml#
>=20
> Yes, I saw these, too. But given that the added dts doesn't touch these
> two nodes, I thought this to be a problem of rk3568.dtsi that I can
> ignore for this series.

I think I found suitable fixes for those in [0].

The question would be, if the bot finding errors causes the patch to get
removed from the review queue, because the binding addition still would
profit from an Ack :-)


Heiko


[0] https://lore.kernel.org/linux-rockchip/20240227173526.710056-1-heiko@sn=
tech.de/



