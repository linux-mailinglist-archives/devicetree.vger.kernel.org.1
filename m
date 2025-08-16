Return-Path: <devicetree+bounces-205420-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DE8FB28FC7
	for <lists+devicetree@lfdr.de>; Sat, 16 Aug 2025 19:26:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E0155582874
	for <lists+devicetree@lfdr.de>; Sat, 16 Aug 2025 17:26:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F4E52FE58A;
	Sat, 16 Aug 2025 17:26:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DMrKpGE3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FF591DED49
	for <devicetree@vger.kernel.org>; Sat, 16 Aug 2025 17:26:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755365189; cv=none; b=qJBUTf361AvVSorMIErsOtZzIFnajUr9J8bDNHDY6LVk/0lxCf9Ao7H1DZKRMafjwzMXK0QEsFhvdhBfiLD9aapfPUYu6+3QrAw9HFVbkbbgFhTBz3zgwKYYeYxL9ifv5s6NTYx++AvL5OkO/lP8PszWxLowPHUhrdWAZMeQMe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755365189; c=relaxed/simple;
	bh=Pt4QFkJKeDes/1dpFWEZFRC9Fyo6Q/os1TmT4UtDfcI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=m/mWhiY19ruFn8LB15pPCupm7xngJfotypobjf1ChKvtIdAD4ObdZ20Pa1c4ymoLfxf2XvikSCamYmO5m3qRIm6zXzawO5VAbUxU61K4Allc2JsOq0Ni2PBQwu0j1toH+1LZ1Sl3axds8u+pHzsiObjZn1cpzEY5hTYJRo15eIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DMrKpGE3; arc=none smtp.client-ip=209.85.219.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-e933597bc2eso1326087276.2
        for <devicetree@vger.kernel.org>; Sat, 16 Aug 2025 10:26:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755365186; x=1755969986; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+erJ0Zp3LHICZMt425StIsw9Vrx8YjGGvrTqeALgDWk=;
        b=DMrKpGE3gLl7UE8DO5puO8Qafguwz8USANOHBAqI+QGjwLDzXbI7/SDdCpaFKGSh6m
         XWJdJCqwlwo0boUVHTkN2OXspJislxpCdJSM4k2mNHtjYe/xs9X8hClf3atGALEbImPJ
         Yq7fNfFGiTfhUl5CSFvv7knPUWjBz5exqenyf3GpSgUkucn31yGH/aiADY/5l2Qc50qv
         fYOhAaW3/bbeeQtXK/uKFQJuWLKmqZZZu2qHuiNqg0+ieC1NDZPoyPcuIKhmRnHC2w7M
         TdQ/OFMfrxhJGd22TSvqtdy/aPntZ5aNT513Tgaz3rkXmc4oMHLsW8Asz8Y6VAdIeypw
         4GCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755365186; x=1755969986;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+erJ0Zp3LHICZMt425StIsw9Vrx8YjGGvrTqeALgDWk=;
        b=SUTsnOHtJpb55UK3kwwK55mwZgPynHQlhYsWm0des1SMTw1h9juBjfyX/D2ptpY4Ip
         cjLTLPKoiG9sv1J81PfIbb6eW1QC+qxp71D+PPugospuclou3TUC7omomVNJ5ErkYU98
         kiXQssLr2cqFx4LjLHnfJFDYzHUz/BQo3oFCfDiuqzDIWK6RJZVAIztf1/VVFduoH+AN
         OAp36IXx4teONZrBUDirQesxp/x3b3cZaMGgOyUzSTP0j2yMeFCgzux2IP9Tp9p71WVQ
         VONvf8kXy3mrplzS6u5ZKoxAp1Bqoh7rvJaN4/aCJuESMA2T0/9wsAAfGNgA5zvyxrIp
         UBMw==
X-Forwarded-Encrypted: i=1; AJvYcCV5eqp0VNvui0vUvxCrmxKAYHOdbd0W1g/dWJTPuAV/tP3FVX2EiL2VM/SMRrOQAvAn2WzRhobIy1GS@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1e6zMFGnm4RQoVPamy3eNRaY4+hEd1pCiexTV9sCIbKdtdP0e
	HhdIevIthIjiiY2xyaY9r98LO1ZViQrZBi22bZ93GJE8OYFEndvPMkJP4Dho5Q3XPEP5Gj5x9Dl
	Nl6sReSgRFGyUMCt55X5LWgC0wuOE+vKiCnIRJhSHLw==
X-Gm-Gg: ASbGncvyU9A731IEjrnLodU6oHdzw1KL3oMhPfVI5RX4oQmTRZc9NBkfKxbEjtP+KGC
	hEsI10VHOtn7S6T3Lhriw200Rc0aL6JnpntlA9PLa0pZcGru8H+UzRG5TGklngqs2E86U4d29/R
	btnTjLv6ZfmeDnTdOJo0ZhwcQPq+Y5sG6NaFM0mnFFEjzeQuUrjSzLfFXLqYBlooKg615iKTFav
	JfX6g==
X-Google-Smtp-Source: AGHT+IEiUE/ZBe/h6CTv9oXmV/520CYO08VrAKRH9DK2kLKicjLwLKXfuc77q+NFZWV5/udeIZCHd/ZkZBNSaus2ZAI=
X-Received: by 2002:a05:6902:1208:b0:e93:36f3:573c with SMTP id
 3f1490d57ef6-e9336f35958mr7576548276.5.1755365186241; Sat, 16 Aug 2025
 10:26:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250815070500.3275491-1-ivo.ivanov.ivanov1@gmail.com> <20250815070500.3275491-4-ivo.ivanov.ivanov1@gmail.com>
In-Reply-To: <20250815070500.3275491-4-ivo.ivanov.ivanov1@gmail.com>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Sat, 16 Aug 2025 12:26:15 -0500
X-Gm-Features: Ac12FXxe2rWnXKWQd1X34M41uQmxOqzmaGTi-5t45-ucTyoZet0Hf0j8vH7V5Mg
Message-ID: <CAPLW+4mp5DASdcToSW1QD7f51w4AYQeKzTF=nq2U=f-HiXD-8w@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] arm64: dts: exynos2200: increase the size of all syscons
To: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 15, 2025 at 2:06=E2=80=AFAM Ivaylo Ivanov
<ivo.ivanov.ivanov1@gmail.com> wrote:
>
> As IP cores are aligned by 0x10000, increase the size of all system
> register instances to the maximum (0x10000) to allow using accessing
> registers over the currently set limit.
>
> Suggested-by: Sam Protsenko <semen.protsenko@linaro.org>
> Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
>
> ---
> Did not add the r-b from Sam, as the patch is pretty much completely
> reworked, including the description. Please send it again :).
> ---

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

>  arch/arm64/boot/dts/exynos/exynos2200.dtsi | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/exynos/exynos2200.dtsi b/arch/arm64/boot=
/dts/exynos/exynos2200.dtsi
> index 943e83851..b3a8933a4 100644
> --- a/arch/arm64/boot/dts/exynos/exynos2200.dtsi
> +++ b/arch/arm64/boot/dts/exynos/exynos2200.dtsi
> @@ -306,7 +306,7 @@ cmu_peric0: clock-controller@10400000 {
>
>                 syscon_peric0: syscon@10420000 {
>                         compatible =3D "samsung,exynos2200-peric0-sysreg"=
, "syscon";
> -                       reg =3D <0x10420000 0x2000>;
> +                       reg =3D <0x10420000 0x10000>;
>                 };
>
>                 pinctrl_peric0: pinctrl@10430000 {
> @@ -328,7 +328,7 @@ cmu_peric1: clock-controller@10700000 {
>
>                 syscon_peric1: syscon@10720000 {
>                         compatible =3D "samsung,exynos2200-peric1-sysreg"=
, "syscon";
> -                       reg =3D <0x10720000 0x2000>;
> +                       reg =3D <0x10720000 0x10000>;
>                 };
>
>                 pinctrl_peric1: pinctrl@10730000 {
> @@ -418,7 +418,7 @@ cmu_ufs: clock-controller@11000000 {
>
>                 syscon_ufs: syscon@11020000 {
>                         compatible =3D "samsung,exynos2200-ufs-sysreg", "=
syscon";
> -                       reg =3D <0x11020000 0x2000>;
> +                       reg =3D <0x11020000 0x10000>;
>                 };
>
>                 pinctrl_ufs: pinctrl@11040000 {
> @@ -450,7 +450,7 @@ cmu_peric2: clock-controller@11c00000 {
>
>                 syscon_peric2: syscon@11c20000 {
>                         compatible =3D "samsung,exynos2200-peric2-sysreg"=
, "syscon";
> -                       reg =3D <0x11c20000 0x4000>;
> +                       reg =3D <0x11c20000 0x10000>;
>                 };
>
>                 pinctrl_peric2: pinctrl@11c30000 {
> @@ -471,7 +471,7 @@ cmu_cmgp: clock-controller@14e00000 {
>
>                 syscon_cmgp: syscon@14e20000 {
>                         compatible =3D "samsung,exynos2200-cmgp-sysreg", =
"syscon";
> -                       reg =3D <0x14e20000 0x2000>;
> +                       reg =3D <0x14e20000 0x10000>;
>                 };
>
>                 pinctrl_cmgp: pinctrl@14e30000 {
> --
> 2.43.0
>
>

