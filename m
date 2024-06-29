Return-Path: <devicetree+bounces-81660-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A04191CF5F
	for <lists+devicetree@lfdr.de>; Sun, 30 Jun 2024 00:02:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 58A3D1C20BBF
	for <lists+devicetree@lfdr.de>; Sat, 29 Jun 2024 22:02:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B71213BC3F;
	Sat, 29 Jun 2024 22:02:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="GTCN+DWR"
X-Original-To: devicetree@vger.kernel.org
Received: from out-172.mta1.migadu.com (out-172.mta1.migadu.com [95.215.58.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA0372594
	for <devicetree@vger.kernel.org>; Sat, 29 Jun 2024 22:01:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719698521; cv=none; b=PKIKjYF1jVrAiKgxAD4OZV6vnal8wCFWKCRN48d2MqzrtsGO0+0rojZsmiS06MgcDHFXaqCnZVGTwr28sP1O74BQmN4a2UWtUXGN0PI4pDCC+6KtsZ4GuSKdeZoPHS5zYCSzZz1jo1191JmFf1x/Hr/lhGcTtZ4LcfEjtt53PdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719698521; c=relaxed/simple;
	bh=Q49OzQnfAYa/aLJQrn/hsoa776DUSHoaalMU757j7aU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=b8dI5xW/W8iFv73kwzs1uXdLqHz4Yj08HEfQSr1DccfBqAi2FfIVD2qDRZyjzIhYwiIeWigTbnRvTIKyK1yWvJDnQTmIaA27EUYKRR6sEIQthymg12a7RdENcC92HX+fw2qUKPXge1GNgHB/x64YC/MgQ/mcCtElE4OLU6N9f5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=GTCN+DWR; arc=none smtp.client-ip=95.215.58.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
X-Envelope-To: linux-rockchip@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1719698515;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=m1o1vsrZvTo7w5mqkqn99pIT4RNtcwpqiHGAg8MQ6WE=;
	b=GTCN+DWRgIZo/u+pWipknXtRkLAjdyUrwU+HdUc7083DraYzcL9bw6yzLoQpnRJoGGnwNb
	dc/nvykEyF4yotpKigjxNzlX4v84unJ0XqM+7wETRKKq/fQhSaLX3HxZv4G1aovakg2vL4
	ROr86QVDV9xNhDLR3QN/3VcwRL4VHVWup3JTVvf7uBnKD1q4SBdGKJCHhqhbYGc1eok9cm
	lbek1QJQP0HK0h25BHCwe5yEbpCoASQKeUK4s9wg2DYA4bjmrgsjMK3Ih3SgTRTOKI1TcJ
	emelpSSQpjggUSZSQBMyOLfjLZ8D35lAEypdk7kULY/zr1HraN/P/zrO19XwwQ==
X-Envelope-To: dsimic@manjaro.org
X-Envelope-To: heiko@sntech.de
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: devicetree@vger.kernel.org
X-Envelope-To: robh@kernel.org
X-Envelope-To: krzk+dt@kernel.org
X-Envelope-To: conor+dt@kernel.org
X-Envelope-To: linux-kernel@vger.kernel.org
X-Envelope-To: jonas@kwiboo.se
X-Envelope-To: didi.debian@cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: linux-rockchip@lists.infradead.org, Dragan Simic <dsimic@manjaro.org>
Cc: heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-kernel@vger.kernel.org,
 Jonas Karlman <jonas@kwiboo.se>, Diederik de Haas <didi.debian@cknow.org>
Subject:
 Re: [PATCH v2] arm64: dts: rockchip: Add GPU OPP voltage ranges to RK356x SoC
 dtsi
Date: Sun, 30 Jun 2024 00:01:41 +0200
Message-ID: <2442162.AJoTavkB1d@bagend>
Organization: Connecting Knowledge
In-Reply-To:
 <bdb60f1f793166cd65f58ab7aea025347076019c.1719679068.git.dsimic@manjaro.org>
References:
 <bdb60f1f793166cd65f58ab7aea025347076019c.1719679068.git.dsimic@manjaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart1882325.2XYCnfxICR";
 micalg="pgp-sha256"; protocol="application/pgp-signature"
X-Migadu-Flow: FLOW_OUT

--nextPart1882325.2XYCnfxICR
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
Date: Sun, 30 Jun 2024 00:01:41 +0200
Message-ID: <2442162.AJoTavkB1d@bagend>
Organization: Connecting Knowledge
MIME-Version: 1.0

On Saturday, 29 June 2024 18:39:02 CEST Dragan Simic wrote:
> Add support for voltage ranges to the GPU OPPs defined in the SoC dtsi for
> RK356x.  These voltage ranges are useful for RK356x-based boards that are
> designed to use the same power supply for the GPU and NPU portions of the
> SoC, which is described further in the following documents:
> 
>   - Rockchip RK3566 Hardware Design Guide, version 1.1.0, page 37
>   - Rockchip RK3568 Hardware Design Guide, version 1.2, page 78

That was interesting to read, thanks.
Now I understand the difference between rk809(-5) and rk817(-5).

But AFAIUI the above description described why there were separate tables for 
rk809 and rk817 in v1. But that was dropped in v2. So it seems to me the 
(commit) message should be updated accordingly?

I also expected that (for v1) there would be a similar construct as was 
recently added for rk3588. But I should interpret Heiko's comments as that 
strategy should not be applied to rk356x?

> The values for the exact GPU OPP voltages and the lower limits for the GPU
> OPP voltage ranges differ from the values found in the vendor kernel source
> (cf. downstream commit f8b9431ee38e ("arm64: dts: rockchip: rk3568: support
> adjust opp-table by otp")). [1][2]  

Why? In their latest update Rockchip changed it to the values as specified in 
the links. My assumption is that based on extensive testing they did and/or 
the feedback they got from the client/customers, they felt the need to change 
it to the values they did.

I think we should follow their values unless we have an explicit and very good 
reason to deviate from that.

> However, our values have served us well so far, so let's keep them for now,

And I don't think that qualifies as a (very) good reason.
I think it's reasonable to assume that far more (stress) testing has been done 
with the downstream code, then has happened with the upstream code.
Hopefully that'll change in the future, but I don't think we're there yet.

When we/upstream adds npu support, I think we should also follow downstream's 
OPP values, unless we have a very good reason to deviate from that.

> until we actually start supporting the CPU and GPU binning, together with
> the related voltage adjustments.

I may not fully understand what you mean by that, but I think it's (again) 
reasonable to assume that Rockchip has far more insight into this then we do.

Cheers,
  Diederik

> [1]
> https://github.com/rockchip-linux/kernel/commit/f8b9431ee38ed561650be7092ab
> 93f564598daa9 [2]
> https://raw.githubusercontent.com/rockchip-linux/kernel/f8b9431ee38ed561650
> be7092ab93f564598daa9/arch/arm64/boot/dts/rockchip/rk3568.dtsi

--nextPart1882325.2XYCnfxICR
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZoCERQAKCRDXblvOeH7b
bmLfAP0QPd2WlC4AazLxIQOIFkV2bx4wFpfRqdN+4AFpLEgYvAD5AQC+00IJVpXB
cFuaeWYS5g5ZLUCOXWd2dGxRo/CDVg4=
=tszs
-----END PGP SIGNATURE-----

--nextPart1882325.2XYCnfxICR--




