Return-Path: <devicetree+bounces-229038-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 19AE8BF33C1
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 21:36:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C754D402964
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 19:36:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 242B92D4B40;
	Mon, 20 Oct 2025 19:36:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WSK81WXg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 940CD2D738E
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 19:36:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760988970; cv=none; b=NlXRbVtcFMT2kH66f/m4WMx/+RdSZv+DkGkbA6H9W0Fj3X4+I4KV62HXIQOt7jA4Lffuh3YOuQqFVmBgVoaYT8oR4NOaw63SQV6N4aEnd2ku/o6JWLzffiQGIKZlR6OOQxkn/7zbRTPhKhygnErk676hwLLl/6SUaIx1dKIZ4gA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760988970; c=relaxed/simple;
	bh=1badgIiNTAPNpkcfawu2PFSrOUn1RLnP9k+lZMeoVE4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TfBTi0GSrIdPkAMthZZLUearE2Qw5kjLd0ULx9+qk0Glw2FQ/+UrM+VeExJ6TuSa2Y98f4xykXGilb3sZkXlxFkIXECF8yIOiK7AZL8kPs9SOd1bnaMiZe4FN+rxYEwBP9UJSYSfiNLeyhJEQIg4AXpG0zqDR1rB1SGwqoiYjIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WSK81WXg; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-57edfeaa05aso5426050e87.0
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 12:36:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760988966; x=1761593766; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2EQCZF24uyYd+K66ud5iMJvTJa8EJgzNd81qWfpbtzM=;
        b=WSK81WXgktshiOyYie0L2ydU9rH/CPH8uS6owYfRq+C11GxEnbl0E1xlnqDYCPf4wo
         de3RB9HIwnay+QRTrVoGCZn8S4QgLLZ6bsOHVyUgq7exSAcBGGDomC27GgnRCrks51uj
         VaAqZ1ikuYKYUro8o4b+/4RBUdR0Sjsveq8CjWrMrHg6kEr/30mkBZGDaEUHERB5gmlg
         D3Z/KuW1YSjA98CVchCW5wYcE4ZlGPTpUy1lNOlVYfDsPj54ccHQV209/vXll/BtG4mQ
         zwyWrkIDMgt6IMaal2oEj5avaA8ReU7z5eIyS27zW/8GNCctkepd1KSwFL5pBauRo3Ud
         15hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760988966; x=1761593766;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2EQCZF24uyYd+K66ud5iMJvTJa8EJgzNd81qWfpbtzM=;
        b=eY4BoOUCi1MvcTqkXZgg39h+lXA6CYOX0x7iP9cu3lbPeoWPxqh1nTV7x5Z/fwt3bZ
         +5NJvue0BfpywlpYWwepPp6stxj68KMbZPHUhL6ONGpaVCObmEElEFv8PnOFt8INGv/e
         vSUPVmspz0aPZql1rVv0F5WVV1aaRNoCKMBMVxqIsEPLV/JwVsJmwWgarahK3sUPu2Zc
         NPmWEe9hbLICxQLBfyNyHqh1FedADC/BzXyY1k36cAsT+ht4b8Ufq9DmkqPsCB7LjGAH
         wLERkvA4sessI7vjNMV6j/ugb80DeO0Jdf9iHHbWLvxKTY2RAokihrCuw3+sfDDJ44em
         /yTw==
X-Forwarded-Encrypted: i=1; AJvYcCUXUczFsFyMshbT+ca/kRM3evW4CM2MK3g152jeiyh0Rt8OEB2o0tkZ7fidI1g+YivqJotk7SBZ0Ol4@vger.kernel.org
X-Gm-Message-State: AOJu0YzTYY8XnbOBJ34+W9k6Gf1kJOzxfK9kvGB8u37y3Tl55XHMURON
	V4ikzN1ITb5SuhanhPKU+u2lBijCbsTYY9mtD219RYTNfik+NX4aVJacJ55rWZApS+cOa6rbyCu
	5jgUx3foVELbY0Ul7DjSsm1xbZDpXnCs=
X-Gm-Gg: ASbGncu/roa7i7C1duGoVAM8YIR13VsSQh0Jsy77SQCQ0IOWd6N6WW1TPEuvecTsmlx
	IusAFPHKmHF1HcBycDRbn1ci/0sRdOSU8U5MTyM82uzAns0vmWFvpVoq50ezSRA2m6f4dXKLFuq
	0ApF0RWe6tXnUoJDP8iuU/vvyOlHdsfhT7BAPs1AXh4s5hl187cNprW6i6VowC4en995fco2Nzp
	KqSmlzrjSWnxmqtvKGtgANqxS1ljfoapLON73AcYGefU5a3V9h8VGj1n8DVkrrfNTTW7M/hDG79
	3LoegwNJnrivt57vHQ==
X-Google-Smtp-Source: AGHT+IGJf1d7OGOI2bEsOsRKUAzUwqlW11kyu2gHkb5eSm8a2k5NOCXXslI+k5uFUiRwdMzagVbTM2EzHHMJP+MrdtU=
X-Received: by 2002:a05:6512:3b0c:b0:57a:310:66a8 with SMTP id
 2adb3069b0e04-591d85773ffmr4241105e87.55.1760988965463; Mon, 20 Oct 2025
 12:36:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250816-tegra210-media-enable-v1-1-bdb1c2554f0d@gmail.com>
In-Reply-To: <20250816-tegra210-media-enable-v1-1-bdb1c2554f0d@gmail.com>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Mon, 20 Oct 2025 14:35:54 -0500
X-Gm-Features: AS18NWDrjImObZLOKx397rQyb3hlXNjedT2Ykb-TqO4MVmOUlln0IpbJiO75nUI
Message-ID: <CALHNRZ_KcJmoUp68a1NZau_KAMRczNbtiQ3cbXi7ET-vO=9uhw@mail.gmail.com>
Subject: Re: [PATCH] arm64: tegra: Enable NVDEC and NVENC on Tegra210
To: webgeek1234@gmail.com
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, 
	Jonathan Hunter <jonathanh@nvidia.com>, devicetree@vger.kernel.org, 
	linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Aug 16, 2025 at 1:03=E2=80=AFAM Aaron Kling via B4 Relay
<devnull+webgeek1234.gmail.com@kernel.org> wrote:
>
> From: Aaron Kling <webgeek1234@gmail.com>
>
> The other engines are already enabled, finish filling out the media
> engine nodes and power domains.
>
> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> ---
>  arch/arm64/boot/dts/nvidia/tegra210.dtsi | 28 ++++++++++++++++++++++++++=
--
>  1 file changed, 26 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/nvidia/tegra210.dtsi b/arch/arm64/boot/d=
ts/nvidia/tegra210.dtsi
> index 402b0ede1472af625d9d9e811f5af306d436cc98..80d7571d0350205b080bcf48b=
8b8e2c1b93227f2 100644
> --- a/arch/arm64/boot/dts/nvidia/tegra210.dtsi
> +++ b/arch/arm64/boot/dts/nvidia/tegra210.dtsi
> @@ -277,13 +277,25 @@ dsib: dsi@54400000 {
>                 nvdec@54480000 {
>                         compatible =3D "nvidia,tegra210-nvdec";
>                         reg =3D <0x0 0x54480000 0x0 0x00040000>;
> -                       status =3D "disabled";
> +                       clocks =3D <&tegra_car TEGRA210_CLK_NVDEC>;
> +                       clock-names =3D "nvdec";
> +                       resets =3D <&tegra_car 194>;
> +                       reset-names =3D "nvdec";
> +
> +                       iommus =3D <&mc TEGRA_SWGROUP_NVDEC>;
> +                       power-domains =3D <&pd_nvdec>;
>                 };
>
>                 nvenc@544c0000 {
>                         compatible =3D "nvidia,tegra210-nvenc";
>                         reg =3D <0x0 0x544c0000 0x0 0x00040000>;
> -                       status =3D "disabled";
> +                       clocks =3D <&tegra_car TEGRA210_CLK_NVENC>;
> +                       clock-names =3D "nvenc";
> +                       resets =3D <&tegra_car 219>;
> +                       reset-names =3D "nvenc";
> +
> +                       iommus =3D <&mc TEGRA_SWGROUP_NVENC>;
> +                       power-domains =3D <&pd_nvenc>;
>                 };
>
>                 tsec@54500000 {
> @@ -894,6 +906,18 @@ pd_audio: aud {
>                                 #power-domain-cells =3D <0>;
>                         };
>
> +                       pd_nvenc: mpe {
> +                               clocks =3D <&tegra_car TEGRA210_CLK_NVENC=
>;
> +                               resets =3D <&tegra_car 219>;
> +                               #power-domain-cells =3D <0>;
> +                       };
> +
> +                       pd_nvdec: nvdec {
> +                               clocks =3D <&tegra_car TEGRA210_CLK_NVDEC=
>;
> +                               resets =3D <&tegra_car 194>;
> +                               #power-domain-cells =3D <0>;
> +                       };
> +
>                         pd_sor: sor {
>                                 clocks =3D <&tegra_car TEGRA210_CLK_SOR0>=
,
>                                          <&tegra_car TEGRA210_CLK_SOR1>,
>
> ---
> base-commit: 8f5ae30d69d7543eee0d70083daf4de8fe15d585
> change-id: 20250814-tegra210-media-enable-576bb6a34b5c
>
> Best regards,
> --
> Aaron Kling <webgeek1234@gmail.com>

Reminder to review or pick up this patch.

Aaron

