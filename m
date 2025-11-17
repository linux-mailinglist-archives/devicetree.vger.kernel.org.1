Return-Path: <devicetree+bounces-239427-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 135CEC64BAA
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 15:55:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 4C73F4E3839
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 14:52:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 595AF30EF83;
	Mon, 17 Nov 2025 14:52:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QqwZURe7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E36B336EDA
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 14:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763391147; cv=none; b=fm/aSuTkTwEQESDzByyXf+D/hUCCSe8kmFwRjQNKBGiMdaj6NQOGAm628Zvg0sBIPWpfJ4IJb/xl58hIzpbhm8VNchQPsD8ZISgBGs+g189mT0cwlTzoai9mKeNEv+uws9PrnJYf3AUAPixLX60ypGA4wBpEc/F8RtVktfmOSTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763391147; c=relaxed/simple;
	bh=MlEkZrYnj5YncvhL5E6ysRu8GQw1O8M/FI/2sDyaPv0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=la9tANU3yKUBRNoX3SxfAFjERf8yt0yhaMjcyzVuYlZwtmiIt2qjO7vfT5akv62vPUJWaKMOk18cZSya9htQYAzDuBlL6+4v1Qo5SdIYX2kbqoc0NPQiBQU/s7It4N44YP4lmsim8lGK1LcYLKBOR196ahU+vsBUIwzg9+NALmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QqwZURe7; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-5958187fa55so3208057e87.3
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 06:52:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763391141; x=1763995941; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E2msBzv7WSueld5/KoS1mtRsvHobokM0CCxMsMp1dgo=;
        b=QqwZURe7zhUdPAQpsY8AZ9b4R2OpvTO41QVF/LU8KnVK/CLThdR+PjFyaHtcd7WCAk
         JschRH01N6J/aNEqKICp316KwUk6Rqy8Mg8b1s7R9AQJe5Gt9CA4vtRG2+Unl7zSNtXd
         /GteVZOxhLBFiwg7NIYWgmJCcP6eFGuzilghSRgeYRpVWzG0tuUIkaPJIruDeyP1Ezrc
         pIByxSgt4KNflBwQG/9h7XkAngHEm+Mab8tD0W1agDlFrguqvvfHDfOR7+Rihmwnep6u
         /798q6x7Wu+0yTxOO6BYxMxSJN60/tJQTvgA/G8fYkOsbHFzW04dNbDXdIhulUQTwSQk
         GOIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763391141; x=1763995941;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=E2msBzv7WSueld5/KoS1mtRsvHobokM0CCxMsMp1dgo=;
        b=CbPGsoY9qN/WuSkD3Ddo3HIDohM7zFTzSIkuK1Q4zEa/qv3f6Z84Y/x6iSBs0/814M
         DKxQ1ImkrldCx0optK7Z7HYaHmoJfpsf0cz1X3RfPM5Bt2uCxDmemJWH+WmTrhcbdODu
         XHsO1y+xJEMpAIgdnpKnkX9DIPQsDNnqY3AxEYOfiBJqSLkZkk1C52WT3iwrZ5OjjgpU
         obRorqcN6tENIp3f7j9vcVCSEMWNbnTX+lx+95iAUR8fKu2VAKSlcPbrmS1HaWk7oiOp
         ynZjUBsnCC2uSMbklG5FWwi0wXp5gq8PhZtjmmm4LLyMPSuTlyhhQK1EyxF5NVGgfaAl
         f3wQ==
X-Forwarded-Encrypted: i=1; AJvYcCWkPBxyQ5kMMdsC2cIebSnCTQPfPSoQ+bi/iF6cC/Rm+qt8xh55Yx6DGVLeWJ09AqsKw/T3PzjNHNqb@vger.kernel.org
X-Gm-Message-State: AOJu0YxAw+UYd7Wv1okcetDgFCa8ZkyKpYIcDlsQMDYAJtA5GD75FgWx
	oEOGBRiq/EnJEEcosj4EctU+Q1wxR6dE9DxndI+puPCYOrhziQoAz23XQOr/nqxqCfQSnVm/art
	SViLHZp6yu2yA775Q42b85Ad2QW5p1SI=
X-Gm-Gg: ASbGncv2j263Y+M9dXzjO4fuBv6lX/LvnP7Zrr4FSy3YbGW30ERoH8tS9TV6r7vHXUK
	QsSbNk1ex9Nx+TevvWeNDbP2tRf50VEJ3/SWI7odRFDGNJU/uaKKIOOn2wKgdGxH9fJvgCpDEDr
	KqQUHjVl5UOoNz7zB/0h2RL51W1gkZmB9TEe0PF8VYRzLv1GaXjQ995U1jA3q+FwQYnG6CYmNT8
	Vh/BWB2+bsb6T/JWoZCqz0UShUPh30KkDdYF2qjbw2tn5Z2nuRB6zrmpvBRNAs2z0ekZhHcHCcj
	ANNWZ+BrlOdoii51bLoK48ybq2w=
X-Google-Smtp-Source: AGHT+IFWM6h2Rvtm8RkhWj2jEpDk8QuIv+uwfqZ7nxdfep6jv5iqz1/m/jBBMwF7isKVulGKioEmeomT4OdX1HrsVJQ=
X-Received: by 2002:a05:6512:1552:10b0:595:909d:1af6 with SMTP id
 2adb3069b0e04-595909d1dcamr1123293e87.28.1763391140693; Mon, 17 Nov 2025
 06:52:20 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251117123643.711968-1-alexander.stein@ew.tq-group.com> <20251117123643.711968-4-alexander.stein@ew.tq-group.com>
In-Reply-To: <20251117123643.711968-4-alexander.stein@ew.tq-group.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 17 Nov 2025 11:52:09 -0300
X-Gm-Features: AWmQ_bnEYQsdBy2VHM5TVlUlvxtXcSe8WkHYIS9A8Mb6DlSo_EpO1i8bwOVaCQo
Message-ID: <CAOMZO5ByfNSYLAMwxFh4KfwtpPRFiFydQOtB8_avu0un8u9rMw@mail.gmail.com>
Subject: Re: [PATCH 3/8] arm64: dts: tqma8mpql-mba8mpxl: Fix HDMI CEC pad
 control settings
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Martin Schmiedel <Martin.Schmiedel@tq-group.com>, linux@ew.tq-group.com, 
	devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 17, 2025 at 9:37=E2=80=AFAM Alexander Stein
<alexander.stein@ew.tq-group.com> wrote:
>
> As per datasheet of the HDMI protection IC the CEC_IC pin has be

Typo: "has be" --> "has been"

The same typo is present on patch 7.


> configured as open-drain.
>
> Fixes: 418d1d840e42 ("arm64: dts: freescale: add initial device tree for =
TQMa8MPQL with i.MX8MP")
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts =
b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
> index ff2bacf24bfd2..03b75d4cf699a 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
> @@ -868,7 +868,7 @@ pinctrl_hdmi: hdmigrp {
>                 fsl,pins =3D <MX8MP_IOMUXC_HDMI_DDC_SCL__HDMIMIX_HDMI_SCL=
 0x400001c2>,
>                            <MX8MP_IOMUXC_HDMI_DDC_SDA__HDMIMIX_HDMI_SDA 0=
x400001c2>,
>                            <MX8MP_IOMUXC_HDMI_HPD__HDMIMIX_HDMI_HPD     0=
x40000010>,
> -                          <MX8MP_IOMUXC_HDMI_CEC__HDMIMIX_HDMI_CEC     0=
x40000010>;
> +                          <MX8MP_IOMUXC_HDMI_CEC__HDMIMIX_HDMI_CEC     0=
x40000030>;
>         };
>
>         pinctrl_hoggpio2: hoggpio2grp {
> --
> 2.43.0
>

