Return-Path: <devicetree+bounces-114994-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7399ADAEC
	for <lists+devicetree@lfdr.de>; Thu, 24 Oct 2024 06:32:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AD1471C2181B
	for <lists+devicetree@lfdr.de>; Thu, 24 Oct 2024 04:32:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A2ED16D4E5;
	Thu, 24 Oct 2024 04:31:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="fc/cIwBt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B22B23CB
	for <devicetree@vger.kernel.org>; Thu, 24 Oct 2024 04:31:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729744319; cv=none; b=T+UBONNBHHWSOvifpAKGcLehTnlyAPmHyRbRfyj8yu9xrZXicmtWimQQhtzyJDJORsi0rS7hWbs33xmF0hwNZIR7WKWptq23eB8G7DN0K//H7cj8Qcz097xGA9JPChVGCVaPDIIkEjWgIUC2VndetuAW+jZsbOsztEobqIp0Elg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729744319; c=relaxed/simple;
	bh=FdvntSQD8TqPx+acz3FRm2XjfcHsx/sXUXQ3YBaiG78=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TpM7hMhxDNXoWkkvjWFZxVJTc6KB+GHqX6GDaZW2BvmJbZmbCxhOE2k4mPY6yRoJQY6MVyjLqdYu6FYBa/CiQrmd21Gk0bcCXMGtpVCB0sR60DsP7aT24AXbz97zPlSe6oteex+nJKrq/J/gkcUw4zYhzcQ31bFnf39wJaCxyAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=fc/cIwBt; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-539e7e73740so383344e87.3
        for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 21:31:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1729744315; x=1730349115; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rXHBkD5lHjgDpSqAIuvzM4kWXZrUfO6y78LQBr3izWA=;
        b=fc/cIwBtAfXoPt9D+mu3Abdu1TmfvkKdDv77g4ue5Au7LUTjmkOsulTipEjatCePHL
         ss3j/SN/nA7StQ39hOKKPZN3iqjK7NRwrMALufTS19+aLIY3miPPfnE/Xi/bbEi/ZKNr
         3FbFLMoUxqD6nDjr0wO4iU1h5/IxjYA/Yesf8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729744315; x=1730349115;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rXHBkD5lHjgDpSqAIuvzM4kWXZrUfO6y78LQBr3izWA=;
        b=La/D7xTFQSuRx7eHzacGdZ8wfGOdT0DYAmWPIOIGFa7cQ/+zf35kcUQBtIFBmjQ0rJ
         duXU1CTr37P7l9ji6sJ4Cq4aMsdPib0e++1g5X53sGxmfY4gJafIUvkRQ1CSwH3vFbp0
         eZ0vT1mymSY67NQCAdwQZL50SVWRAapikagX3wtnax+TNfnYFmNcZChdlInx7ccnfpBG
         9KKLZaojrMxSAn4NB5UA0AySuuW62ioRBDbLGKUqqluqY2v/NqYXgpHenj+ahKPw/Ijq
         wqYiFG1pXpK+3HQ93I9ijUwZdoXmn2ZK+KCluzz6Lb6rS8N0WY0Oo4wKQVlPbvV0bqad
         ER3g==
X-Forwarded-Encrypted: i=1; AJvYcCWPW/P1vhC04344tIXEBaftFuM2yI2QdAqPEdwazu0givpDMKHBL1kwlkbY7VxFZ9sQlhzhabPInf6y@vger.kernel.org
X-Gm-Message-State: AOJu0YyZCk5dRqBBEOhg3dPYuiMVBH3Rvyour6cmGAK+tuisA4+eyvVg
	K5UNKSzSDrC7pI9cIxik2t6v4PByJbld7D53knBxCjPBtXgNwvCJpIAfetDGq7Wr4L1i86spxlU
	FyXe1nEsIwZHgYq9CDsAdF6bITHFKqdkv2jCe
X-Google-Smtp-Source: AGHT+IHXDBEMaX7ic839HhtSb4X50NJuUWp4GLOIZefhwLSR4kBcZE77mUD9AbXS9mfI98mMdm40M834lvETM/6lm2k=
X-Received: by 2002:a05:6512:3a83:b0:53a:1a81:f006 with SMTP id
 2adb3069b0e04-53b1a34084dmr2238654e87.31.1729744315273; Wed, 23 Oct 2024
 21:31:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240702145102.46953-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20240702145102.46953-1-krzysztof.kozlowski@linaro.org>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Thu, 24 Oct 2024 12:31:43 +0800
Message-ID: <CAGXv+5HSZfr14K1sGky4g9Sik987DAisH7KTZn9v_svOwF+y6A@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mediatek: mt8183-kukui: align thermal node
 names with bindings
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 2, 2024 at 10:51=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> Bindings expect thermal zones node name to follow certain pattern.
> This fixes dtbs_check warning:
>
>   mt8183-kukui-jacuzzi-burnet.dtb: thermal-zones: 'tboard1', 'tboard2'
>     do not match any of the regexes: '^[a-zA-Z][a-zA-Z0-9\\-]{1,10}-therm=
al$', 'pinctrl-[0-9]+'
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

This seems to have been sitting for a long time. Angelo, can you pick it up=
?


> ---
>  arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi b/arch/arm64/=
boot/dts/mediatek/mt8183-kukui.dtsi
> index 6345e969efae..3aea2643f21c 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
> @@ -974,13 +974,13 @@ &ssusb {
>  };
>
>  &thermal_zones {
> -       tboard1 {
> +       tboard1-thermal {
>                 polling-delay =3D <1000>; /* milliseconds */
>                 polling-delay-passive =3D <0>; /* milliseconds */
>                 thermal-sensors =3D <&tboard_thermistor1>;
>         };
>
> -       tboard2 {
> +       tboard2-thermal {
>                 polling-delay =3D <1000>; /* milliseconds */
>                 polling-delay-passive =3D <0>; /* milliseconds */
>                 thermal-sensors =3D <&tboard_thermistor2>;
> --
> 2.43.0
>
>

