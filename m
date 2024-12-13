Return-Path: <devicetree+bounces-130656-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 469939F0969
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 11:27:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AF28E188C88E
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 10:27:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CD2C1BE251;
	Fri, 13 Dec 2024 10:27:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="mIegUPR1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D35501B87DB
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 10:27:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734085660; cv=none; b=bOXCIL9/05Zy6vZWcJFn1htRmAXPGQfpJq+ODyFBYp4A8oaqZM2cCSetpYb9C+LAP7MczHwqz0rZACTNWTDJR9CE1F4BcSV4kOHzp/gl+NphyBfmmYIUZPeSYehGg+tIexe3S7tVJVfGMtbpfiNX8V9THrZxv9yQmxmSbJCRjgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734085660; c=relaxed/simple;
	bh=Vv/kdwvOFAD2D7I9lSzGtcndmi+6+0l6EG303RWQO94=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=k2SYCTSeDMjbuFKjfyZVdvMVMzriwUkEkEpcZgWP4ZstYFJchwubaF9TNoluN3gmKAOdLpOQyd2OiAnrAYZk+nhhrDa5uIRBcegRCNCm7a9ZPPbBMGySTZMbBh9/jMlhdxatKvsuhvciH+sBuR8z/8+0/FK27GBlfJwZwyWYi6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=mIegUPR1; arc=none smtp.client-ip=209.85.167.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-3eba347aa6fso620319b6e.3
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 02:27:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1734085658; x=1734690458; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C/OBIbUmmLhH6ku2Q4LAkA6a0Sfj3H64xsbU21U06po=;
        b=mIegUPR1LHa0vnT3POBetM2YMZngrysDfTZXfFoZYMHIFWGLsyARxHPqlMU8JaneXE
         /HXhIoRGOtkgDMaoozRLxRxtz570NdvooJot0oqn/iqbKqZL8lHfiFJ5c7NFmJc0jDwK
         JFPU0KOQvat6NSbqIVwC6Qae9WCeyUq8yWKzU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734085658; x=1734690458;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C/OBIbUmmLhH6ku2Q4LAkA6a0Sfj3H64xsbU21U06po=;
        b=oTqDmIJvzethH5C1ipVhX6v11NwtrHfp/F28+qsthCVy7NvoUlvDYblCrdZ72iZgQw
         OdB4lLSAbaeKcLR8EXufzSPp5zgYgzt6A5v++ODzaJFLyrUsZCzmQTLv/IxcYh+fitb2
         mG2NtxxgjBp5pO+exjPXQjNz2xvgy5+O8JIu7knZ0NuDhdR8TiidlQv2uWxN1/OzH/Xl
         8Awyb3GVXYY2SL9YuiGY6qFW2bzGc08h7KkdTS8cadf1tcq06OI5DelB7FXKWBHYkbE3
         nJF2/CYEJ3Ab453sBpiNDaczjy0CW1mkEXW7ZsNQTAEmF947sY0WQzNBBg2DLv1XOKE3
         sLAQ==
X-Forwarded-Encrypted: i=1; AJvYcCWLaP5XknMxOVp8gwrLsxhqQDYgvYLpps9DDPrgPCTs0X95cZPE+WKQQ2GmnL8PD6SVL7XrSuv/ei36@vger.kernel.org
X-Gm-Message-State: AOJu0YxQb0iJCalLHTgpqgf0qsBX3HVBhtqcOLDb7e/2xTtrf/IUsDc2
	b2A07BI1Egl8A8Y6+bQqTIXEVoVHgHIZ25wTztc0LQzcqR0t5wXO6U+SoaPi9XW1l7EyYiVQWN1
	eM+/wdD+YcRUFVivYaEm2xMm4qMbN2ybDsHSU
X-Gm-Gg: ASbGncsm1Zpnu8pPdta0Hq1+FZL5rtfbvvnPptSICX27n3J/q3x5gu23b3sTm5Pst3R
	YaURk87BDNlPNDB1rEKTEbCjOUZDH+IIC8cyix9vy8cwNQSo8HGsM7TeLysR647Mx
X-Google-Smtp-Source: AGHT+IESbjIDYq8Dv7WLZv3lnv+V/UUSCvVg2kJFhXxDh3T+YFv70IgQ6Vlt7dxY7YDS3GWUp1Xn0M9xXxcOalecsrs=
X-Received: by 2002:a05:6808:3447:b0:3ea:5be6:a68a with SMTP id
 5614622812f47-3eba68640b4mr591582b6e.15.1734085658025; Fri, 13 Dec 2024
 02:27:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241213095044.23757-1-jason-jh.lin@mediatek.com> <20241213095044.23757-4-jason-jh.lin@mediatek.com>
In-Reply-To: <20241213095044.23757-4-jason-jh.lin@mediatek.com>
From: Pin-yen Lin <treapking@chromium.org>
Date: Fri, 13 Dec 2024 18:27:27 +0800
Message-ID: <CAEXTbpfOv876s3NLTO3oMTtVi_BwBtgb-816Gt5ZjKMjTZZKQg@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] dts: arm64: mediatek: mt8195: Remove MT8183
 compatible for OVL
To: "Jason-JH.Lin" <jason-jh.lin@mediatek.com>
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Singo Chang <singo.chang@mediatek.com>, Nancy Lin <nancy.lin@mediatek.com>, 
	Shawn Sung <shawn.sung@mediatek.com>, dri-devel@lists.freedesktop.org, 
	linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Project_Global_Chrome_Upstream_Group@mediatek.com, 
	Fei Shao <fshao@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jason,

On Fri, Dec 13, 2024 at 5:50=E2=80=AFPM Jason-JH.Lin <jason-jh.lin@mediatek=
.com> wrote:
>
> The OVL hardware capabilities have changed starting from MT8195,
> making the MT8183 compatible no longer applicable.
> Therefore, it is necessary to remove the MT8183 compatible for OVL.

Similar to patch 2/3, we need a:

Fixes: b852ee68fd72 ("arm64: dts: mt8195: Add display node for vdosys0")

>
> Signed-off-by: Jason-JH.Lin <jason-jh.lin@mediatek.com>
> ---
>  arch/arm64/boot/dts/mediatek/mt8195.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8195.dtsi b/arch/arm64/boot/d=
ts/mediatek/mt8195.dtsi
> index ade685ed2190..137ee8929e01 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8195.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
> @@ -3138,7 +3138,7 @@ larb20: larb@1b010000 {
>                 };
>
>                 ovl0: ovl@1c000000 {
> -                       compatible =3D "mediatek,mt8195-disp-ovl", "media=
tek,mt8183-disp-ovl";
> +                       compatible =3D "mediatek,mt8195-disp-ovl";
>                         reg =3D <0 0x1c000000 0 0x1000>;
>                         interrupts =3D <GIC_SPI 636 IRQ_TYPE_LEVEL_HIGH 0=
>;
>                         power-domains =3D <&spm MT8195_POWER_DOMAIN_VDOSY=
S0>;
> --
> 2.43.0
>

Regards,
Pin-yen

