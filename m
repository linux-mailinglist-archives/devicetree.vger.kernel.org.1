Return-Path: <devicetree+bounces-77796-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D3F790FF82
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 10:52:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 144171F24C34
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 08:52:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2B821AB8E2;
	Thu, 20 Jun 2024 08:49:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="GpiQjkF/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com [209.85.222.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D28D19AD94
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 08:49:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718873396; cv=none; b=NkjmbE9R8pwUBas3L8F6Tb4ZRRowX3V2uh2EnB+h5zFVZKOG07kxzBs2J92wHogAjGnSCjf9gjf42wdHusEMUHo6dL5gYtrve9HXhNi2iyXKN494YQ5LDBJjdCRsArdtmnLs2ah5TFVMSYGLiIR6pU8wd+8t37WuWA5wToDcrzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718873396; c=relaxed/simple;
	bh=2CIj8Y9AUmvIjg+JAcqcZ+r+tVIYJcXIr4N0cIi9dVU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GiUZXoC8QvP4h9yHdo6VkEdTdc8q61PMPMrRcYidTqCqUkku5WZM970facPyWdYFYzKnkSzMQLHCXnOwbieOBuDYIdXkSjlpdc9s5exMnbSB+NLYRHpmgaFFwVyz56nQEO4bIchDM10+KCscWqovfUjdhXllHxmVvnboF5ewsoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=GpiQjkF/; arc=none smtp.client-ip=209.85.222.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ua1-f42.google.com with SMTP id a1e0cc1a2514c-80f4b2b8c9eso184568241.3
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 01:49:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1718873394; x=1719478194; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wnzPQkY7olrxeTisghk4ynlDr11qeA45cqHLGGh55Sg=;
        b=GpiQjkF/wJ9IZ02l5qoUnjOL2HklREfOw67jYRkhqkUJTWYJf84rJMyMSmIuyGg5Fb
         PJw7KOS16dileS5uQw7sQKuUoEryJa8GMFlL5yPP0XzYRu9v10yRzzKpNrqwK0kFhLTi
         bOruxCpirmPR97yfNqOAuJWoFcO/Ignol4ag4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718873394; x=1719478194;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wnzPQkY7olrxeTisghk4ynlDr11qeA45cqHLGGh55Sg=;
        b=JsQWTdiYN9bR/RMJPEz4bRAcTI0FCuS6WKNGn4TLkeFcy6wJTnsF1LMm6AJwaFUrP5
         AvzT7syM6I2OQ7MxwVc3go4TJpIC+/uJsvOdX8upJ1k303U3EG+XL6axMsbcnfH2MGBY
         UCZr5ucdvySB8cmmP7gvvnaQLE73Pvtc4qAj4ucJi60hTfYpJH+ZpvAYRLKmVwI3yX/v
         hGhvl81jBhEgbs8AAAPeqHU5NyIsf58q+Jwgfmk9611LtVcprMdQoe6hOc4o8A8Oeg+q
         AAqcL7Re8dgOsIZBMVkS64kpiiOah5AtRWD65wAjC4YYXIfgiXFJSCJtqP5X/TapL2cI
         zNXg==
X-Forwarded-Encrypted: i=1; AJvYcCWVoJ3Ko8+w8TYAnqvSteaoi13iZFCC0hfK9ApnsHF7vwAmWTH7SY6b26L6huLKseSOOdhbZXMLT2pXkgr3ymFC/J+5XAJJSk7OvQ==
X-Gm-Message-State: AOJu0Yx4tbVvm2VGiVoFNGea7CWnCgX0LbyqksPWbnDng9JEzXo7Hdq5
	+wY/w70vAUu0ln7x4dlqsxqxo1uiuWE5DuSXW2H5lPgztpGLuD2WIKiRIq6fsvk2btx656qQcm8
	=
X-Google-Smtp-Source: AGHT+IEVpk+2vuPxEf//uprfisWNAiZehYg4dppo6JcfZaL0RjGi9HSj0hpWQKrKKqAUmFiMcLMkwQ==
X-Received: by 2002:a05:6102:1889:b0:48d:7692:51ba with SMTP id ada2fe7eead31-48f1304d706mr4853227137.4.1718873394172;
        Thu, 20 Jun 2024 01:49:54 -0700 (PDT)
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com. [209.85.217.50])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-48da43c784dsm2876759137.8.2024.06.20.01.49.54
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Jun 2024 01:49:54 -0700 (PDT)
Received: by mail-vs1-f50.google.com with SMTP id ada2fe7eead31-48d9998787fso254688137.1
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 01:49:54 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXa9xU3c2F/88A+eRWI2CrOfkI4XXTvTD8img8prfuYYceOvCxrvCcBnz6VC0f5GiQ6+ftcg49tT0zLs4/7AIStI9WK7C+lZpPpuQ==
X-Received: by 2002:a05:6102:1889:b0:48d:7692:51ba with SMTP id
 ada2fe7eead31-48f1304d706mr4853217137.4.1718873393626; Thu, 20 Jun 2024
 01:49:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240619085322.66716-1-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20240619085322.66716-1-angelogioacchino.delregno@collabora.com>
From: Fei Shao <fshao@chromium.org>
Date: Thu, 20 Jun 2024 16:49:16 +0800
X-Gmail-Original-Message-ID: <CAC=S1njt1tEH-S2YYKvewRmqta468DuteZFCXKgC02vMUoiBdA@mail.gmail.com>
Message-ID: <CAC=S1njt1tEH-S2YYKvewRmqta468DuteZFCXKgC02vMUoiBdA@mail.gmail.com>
Subject: Re: [PATCH 1/3] arm64: dts: mediatek: mt8188: Fix VPPSYS0/1 node name/compatibles
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: krzk+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org, 
	robh@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com, 
	jassisinghbrar@gmail.com, garmin.chang@mediatek.com, houlong.wei@mediatek.com, 
	Jason-ch.Chen@mediatek.com, amergnat@baylibre.com, Elvis.Wang@mediatek.com, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 19, 2024 at 4:53=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Like VDOSYS0/1, the VPPSYS0 and VPPSYS1 are syscon nodes, as
> described by the mediatek,mmsys binding: fix the node name to
> be syscon@address and add "syscon" to the list of compatible
> strings for both VPPSYS0 and VPPSYS1.
>
> Fixes: 9461e0caac9e ("arm64: dts: Add MediaTek MT8188 dts and evaluation =
board and Makefile")
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>

Reviewed-by: Fei Shao <fshao@chromium.org>

> ---
>  arch/arm64/boot/dts/mediatek/mt8188.dtsi | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/d=
ts/mediatek/mt8188.dtsi
> index 3b02170562ae..77c4f2d104cd 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
> @@ -1331,8 +1331,8 @@ mfgcfg: clock-controller@13fbf000 {
>                         #clock-cells =3D <1>;
>                 };
>
> -               vppsys0: clock-controller@14000000 {
> -                       compatible =3D "mediatek,mt8188-vppsys0";
> +               vppsys0: syscon@14000000 {
> +                       compatible =3D "mediatek,mt8188-vppsys0", "syscon=
";
>                         reg =3D <0 0x14000000 0 0x1000>;
>                         #clock-cells =3D <1>;
>                 };
> @@ -1349,8 +1349,8 @@ wpesys_vpp0: clock-controller@14e02000 {
>                         #clock-cells =3D <1>;
>                 };
>
> -               vppsys1: clock-controller@14f00000 {
> -                       compatible =3D "mediatek,mt8188-vppsys1";
> +               vppsys1: syscon@14f00000 {
> +                       compatible =3D "mediatek,mt8188-vppsys1", "syscon=
";
>                         reg =3D <0 0x14f00000 0 0x1000>;
>                         #clock-cells =3D <1>;
>                 };
> --
> 2.45.2
>
>

