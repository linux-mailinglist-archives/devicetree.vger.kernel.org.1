Return-Path: <devicetree+bounces-148200-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B9403A3B05A
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 05:29:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 91CCA16B334
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 04:29:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 878F31AAA23;
	Wed, 19 Feb 2025 04:29:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="FcxhHo88"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A91481A7046
	for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 04:29:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739939370; cv=none; b=VZGXuWHfLEy2m/v4hz2KKdu/fUqOfsz8nCRREVhB4w51qsNOo6nQux3zqq3L3FoOKMJvK0hAhDGwseZCoyhlgqBy23AUuR9vc8lQrJ/wEzJz4r8BvNsu1dpFBizaFtCY/wUGC4Y5Axl/Gjb/e7KvDkXoxhse7vywJ97KXvAsBjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739939370; c=relaxed/simple;
	bh=zb/9KgFfbpk6f/2smouuL+kG7zlSq7ptifNXDJHDfA4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ai/vzC9kidBpPaFicjvlwSjOvbDmATM6GzxPcW0sqaK0wop4dUO9TwfoyEGKjrHzsgrrZ7B2gxZstk66pdlmfPCgiByj3zx4H64o9SEo3VNHmez9+ris2rsA8fwUZPY6oVZpIhYzBIUJJxsOnKmWaFKfVHtZkrrj3Nl89P/0PVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=FcxhHo88; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-54524740032so5441600e87.3
        for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 20:29:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1739939367; x=1740544167; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6VEqGe71O4B6jvfykXcb0jRrukuykdD7MfjxVd1svFc=;
        b=FcxhHo88lA3YUC6lyZGCLtuE8o8haZuf05zOPMCMiChbPYAlGSs1rXu3phsaFt+/ud
         FcHr6ild44OfnrLB0ubk5EDXNon5iyG0DPXR15poxsczeDqunu1ypeDyZlL+4V4IzhSW
         xXqFxKH2fYCp815Oxtd1YMwJOkwDJ1+XZDbz8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739939367; x=1740544167;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6VEqGe71O4B6jvfykXcb0jRrukuykdD7MfjxVd1svFc=;
        b=elNw3cwLNyNG9enAknq96CDYmpMJhTiLDGzDCf2nWRi6MEhBUvt0XMt88ijA8teXih
         MVi3/DS9J7CPEQbEU5z2oIykzPD/UbIADxr7cdYqlqnn4CQemC7A7UYPX6/PLivWSm4D
         WPU7yHB8LgpGQjT0sOkvGOZmE59Bm1XuQBBHCPeyMHsaFDw9TC6znqlmSDFqynyQ/Zl4
         u90EJSEakpoxX9D4YFKFEhh/oo6A01ACG+FWAL33jM+Zo8t7igXylyzdPk6zXzXzdRsB
         1MvISDTyhxV5NfUWrvEQmj8g3gr5IL/VxbhmnSLblT7HlKMpcWwWi1eBiE2hdwKar40P
         /HMw==
X-Forwarded-Encrypted: i=1; AJvYcCWao7q1JdNDo66/DEmruNQLxR4V+bmiIeHYPlfBWJPVTsMFZo1ubmBjfQIf5qY4+yq330sJHgfLYtW5@vger.kernel.org
X-Gm-Message-State: AOJu0YzrAtLxHeL/wbZC3hv9j5lzzrhNDue0FCM3k9MWPBRyxm7et1r/
	GavMMoHqjKD9HXePtSsfq8XlcTdRjzSnPNMhDLItbyA8Kl82RftNP+SDQjoPhnZVFuvf0Af8OED
	MrR10zTUOC/Degg4WEsUV3zFYhAfW4KwWZ/47
X-Gm-Gg: ASbGnctUk/ENEG08Iv+ib73yBjmMs/Ost1YJuhlJsOHqLmN/G3CBWGIXUuT/9hQJxhZ
	durcSgywc+fNIaqN/PPEXkWKHk8CwMkGM69dHnQdxqH9DkHZpnEVRPNibmqEBPt/pKNWXK/5C+x
	6xi0Z2ArHdQ8LWkYHB/3J4g+Ly
X-Google-Smtp-Source: AGHT+IFDON5BTBrIkCqYoruAW+GgEU4kzLUMfNza88SwUu5KL01SJq4OJVKPavaKWnoXBdabjUxCkcKdf2JVNhz5ek0=
X-Received: by 2002:a05:6512:3d8a:b0:545:85f:4962 with SMTP id
 2adb3069b0e04-5452fe5bd65mr6877441e87.20.1739939366740; Tue, 18 Feb 2025
 20:29:26 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250218-genio700-dmic-v1-0-6bc653da60f7@collabora.com> <20250218-genio700-dmic-v1-6-6bc653da60f7@collabora.com>
In-Reply-To: <20250218-genio700-dmic-v1-6-6bc653da60f7@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Wed, 19 Feb 2025 12:29:15 +0800
X-Gm-Features: AWEUYZkGeDpr43jARxyOu4uYPJJwq5tj1ueAuV0HV6f4Jx2FAOS0QlcBYZWYQSE
Message-ID: <CAGXv+5H1pfJMQPBTF_K72D3-JFsZDvZ277erZ449sc6FTkNFSA@mail.gmail.com>
Subject: Re: [PATCH 6/6] arm64: dts: mediatek: mt8390-genio-common: Add routes
 for DMIC
To: =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= <nfraprado@collabora.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, kernel@collabora.com, 
	linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	devicetree@vger.kernel.org, parkeryang <Parker.Yang@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 19, 2025 at 5:27=E2=80=AFAM N=C3=ADcolas F. R. A. Prado
<nfraprado@collabora.com> wrote:
>
> Add necessary routes for the onboard dual DMIC present on the Genio
> 700/510 EVK. The dmic is supplied by micbias0 and micbias2, and inputs
> into the MT8188 DMIC DAI.
>
> Co-developed-by: parkeryang <Parker.Yang@mediatek.com>
> Signed-off-by: parkeryang <Parker.Yang@mediatek.com>
> Signed-off-by: N=C3=ADcolas F. R. A. Prado <nfraprado@collabora.com>
> ---
>  arch/arm64/boot/dts/mediatek/mt8390-genio-common.dtsi | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8390-genio-common.dtsi b/arch=
/arm64/boot/dts/mediatek/mt8390-genio-common.dtsi
> index a37cf102a6e928440cc88e7e8fe0225fc28ec962..efdeca88b8c4e58f0c1782515=
6276babf19af145 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8390-genio-common.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8390-genio-common.dtsi
> @@ -959,7 +959,11 @@ &sound {
>         pinctrl-0 =3D <&audio_default_pins>;
>         audio-routing =3D
>                 "Headphone", "Headphone L",
> -               "Headphone", "Headphone R";
> +               "Headphone", "Headphone R",
> +               "DMIC_INPUT", "AP DMIC",
> +               "AP DMIC", "AUDGLB",
> +               "AP DMIC", "MIC_BIAS_0",
> +               "AP DMIC", "MIC_BIAS_2";
>         mediatek,adsp =3D <&adsp>;
>         status =3D "okay";

Shouldn't there also be one or two new dmic-codecs, and a dai-link here?

ChenYu

>
> --
> 2.48.1
>
>

