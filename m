Return-Path: <devicetree+bounces-65163-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF728BCDEE
	for <lists+devicetree@lfdr.de>; Mon,  6 May 2024 14:29:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4CCD11C237E2
	for <lists+devicetree@lfdr.de>; Mon,  6 May 2024 12:29:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9036143C6B;
	Mon,  6 May 2024 12:29:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="SWUc0BpI"
X-Original-To: devicetree@vger.kernel.org
Received: from out-178.mta1.migadu.com (out-178.mta1.migadu.com [95.215.58.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B989143C54
	for <devicetree@vger.kernel.org>; Mon,  6 May 2024 12:29:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714998545; cv=none; b=ZnOcmcR4XU69jdrl3exXCur6V+OWDUi+uPj4CkSHbJHy2eQGjdr0P7pXUBtdmDzK3ACG+Q42SXc/ZtcrfjqFtkbDJDqZK+y3So3Ztkmre24JPF5rDZcPsjwQmBpjO4rM4MiOIx2XOGECPhvg13wlFHtYfiY2OlCSGDQDJayMjsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714998545; c=relaxed/simple;
	bh=EGHZPmqvH4r1KctOg6eqewuTMYhyTlB8DsvRBoa8TDs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=PXKu8vK2l5ZGCiCUfMVRzPBrCMcDbWavWb0pFmp0iF/g+Booyk9qrKecQ/iVRA1aotetz4f0Oz27kYdTa+u/qAqLllje76NkQOfXU5pzU8jjDhQAE7pLSBy4cawjeYOUMQty8XBguySRRU8IOCVCmXbtsX8Rn0yqNiB+9t25qmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=SWUc0BpI; arc=none smtp.client-ip=95.215.58.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1714998540;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=adS52XGOjAf9NFDpaofMTlIleiOLUvYtp7jAKoj1FWE=;
	b=SWUc0BpIni3DNRfn8cUmU/S7IH9xdi7XJ4z+ZZRH7gm/RTzYlhrYmjj2zDCQx466aMGh1F
	eI503oK8ijiOQj72yq1YfIfqmbSol0BmH+lfpAZr8bt2+SBH3XYmo1MMN7Lw4duS+eObGF
	rF0+s7RsflXzGqVGP70xnWc57uULqOQX4R2EN0PUEvpCoyvsFTIbgU0qPnah7koyOc4wpI
	aMWIqWYjKMU1X/hoTMTbpUlS0q47KGEi9iqZM/9Nv3Z698c7nV26ZhCUiVbZ/OiaAnwDKg
	jFbJa3U3eiF3K6rxcQpD/g8H4VvaqaXoGRu8anaYWVJvzAyRV1CGq0NYyAphrA==
From: Diederik de Haas <didi.debian@cknow.org>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Alexey Charkov <alchark@gmail.com>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Dragan Simic <dsimic@manjaro.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 Chen-Yu Tsai <wens@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Alexey Charkov <alchark@gmail.com>
Subject:
 Re: [PATCH v4 2/6] arm64: dts: rockchip: enable thermal management on all
 RK3588 boards
Date: Mon, 06 May 2024 14:28:50 +0200
Message-ID: <2543817.5xW6y1K4kI@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20240506-rk-dts-additions-v4-2-271023ddfd40@gmail.com>
References:
 <20240506-rk-dts-additions-v4-0-271023ddfd40@gmail.com>
 <20240506-rk-dts-additions-v4-2-271023ddfd40@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3764040.TKpFhyqhbS";
 micalg="pgp-sha256"; protocol="application/pgp-signature"
X-Migadu-Flow: FLOW_OUT

--nextPart3764040.TKpFhyqhbS
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
Date: Mon, 06 May 2024 14:28:50 +0200
Message-ID: <2543817.5xW6y1K4kI@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20240506-rk-dts-additions-v4-2-271023ddfd40@gmail.com>
MIME-Version: 1.0

Hi,

On Monday, 6 May 2024 11:36:33 CEST Alexey Charkov wrote:
> This enables the on-chip thermal monitoring sensor (TSADC) on all
> RK3588(s) boards that don't have it enabled yet. It provides temperature
> monitoring for the SoC and emergency thermal shutdowns, and is thus
> important to have in place before CPU DVFS is enabled, as high CPU
> operating performance points can overheat the chip quickly in the
> absence of thermal management.
> 
> Signed-off-by: Alexey Charkov <alchark@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts               | 4 ++++
>  8 files changed, 32 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts index
> b8e15b76a8a6..21e96c212dd8 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> @@ -742,6 +742,10 @@ regulator-state-mem {
>  	};
>  };
> 
> +&tsadc {
> +	status = "okay";
> +};
> +
>  &uart2 {
>  	pinctrl-0 = <&uart2m0_xfer>;
>  	status = "okay";

I built a kernel with v3 of your patch set and someone tested it on a ROCK 5B 
'for me' and it had the following line in dmesg:

rockchip-thermal fec00000.tsadc: Missing rockchip,grf property

I'm guessing that turned up due to enabling tsadc, but (also) in v4 I didn't 
see a change wrt "rockchip,grf".
Should that be done? (asking; I don't know)

Cheers,
  Diederik
--nextPart3764040.TKpFhyqhbS
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZjjNAgAKCRDXblvOeH7b
bqzGAQD1bM1bOXBrGILEfvogB5p+W1FcHVZbgNHh5ucp7mH02QEAqaUP/WdxYNiG
IwPC/uXaAjTKHHAb6H06K4aElQrtvwI=
=Nb8T
-----END PGP SIGNATURE-----

--nextPart3764040.TKpFhyqhbS--




