Return-Path: <devicetree+bounces-251793-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 06482CF70B4
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 08:34:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 264F6305F310
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 07:33:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EC793093B2;
	Tue,  6 Jan 2026 07:33:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="d8njPqG4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56B9230ACF0
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 07:33:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767684783; cv=none; b=csOgSF3bVRQv9Ppob3nkDkWCZVREezfjViosA62MA9RKVtsCv/3g5ezHPB+IgMdKf0Jm0Tn7PVQtuF+lgWKPIIEaYqb5wzRm8fNGgXdCZERqEt+WIUO394u35Jye1/hKAH2Y1EPsYgIgpJAZ/2yTp/7O5nq2lCcRV1mMK9w8cn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767684783; c=relaxed/simple;
	bh=y4qwVpvdRzADYNSMvPVIQb0E7h4woHXVfUrKr1Z/PWk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jhe4QkD0eupSxHKFL8x4JXDyX7QOURSC6c8EpLMEyy/PT5ZCltaWBZ5nOOupNtyEYGGs0TMf0Gi3GNIwNYw3UzyRJTjZz6JvxmBIrY26aVppJ4yFnN2MBQXLRVuiwr32U4Bq+MDL0mBtr18YxOSiiWem5acsU1HR00koHJnTTf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=d8njPqG4; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-59583505988so1064043e87.1
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 23:33:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1767684779; x=1768289579; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fqzY4iNsINolRoiuSHq4WTtx5oWDWFvmNdTLgX48a8Q=;
        b=d8njPqG4zhaO8sA4Pe+0DjMOX2FL2QHvMlvLlnkkc3n3Sft0+Jlgo/rOva/UEBbJro
         OyOuhQcCa1C2auDLk7V6zsS6710oDTM355e6z8AYZRz996jPeOzg081J80UMMr6rqFB5
         xokEK4igZBZ1T6MP4MLIiRc1EWkIUURdBoJsM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767684779; x=1768289579;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=fqzY4iNsINolRoiuSHq4WTtx5oWDWFvmNdTLgX48a8Q=;
        b=DeuKey+KZE2a4WyjmRP1yjAL073FFWUNQ8sF3goN367zuVReHWpAuA0HspzDXtdLng
         7S8WqQnEuY+wik4YeNcYbOdZC0G+JCDu7tjPNgTK8AGpYOGpMzitykXtPMpIjj5pYfXd
         opIsacAs8XTq76cWO1efPnCdT28spQUjohVsC/m2HfLNCBRsNz3KKi0ZdMw15yTDdqIN
         uqzg+Fwm3sAC7NUEauPFURjOiWD4/RvPEsigYXNAlcSH4z8sn5OMmjz320LoSA9J/QVH
         Sbhk+6RYg+GIl/fOUMzmX0eEGTjxHDhJ0DM2sZ6vqcDKkbfnhcoiyKID0AModRtHknpK
         4VAw==
X-Forwarded-Encrypted: i=1; AJvYcCVYuyof4BbdMhcqafgxuDG/dxToPl/pYKIZafACr8WqKuJ1qJ58UmoalXMRmDq6TGKYhFjiTKciFxpb@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/R50c8S4zt0ENx2C7eJksqjxKtXMRPPCKzdoxJmu+Gj55XbtN
	s1+klBwOI4CtVfbmd9RAypdIUeRnUjcfAZK5kTmTX5oxprz7dOd9DigFnZGi9l6DXrW7iETiOsN
	HlonbiEPJ4QrRxafzlpKz8ot2I654Kb3n5LQfbDrT
X-Gm-Gg: AY/fxX5U060Bwa0Di+FJceOsqeu0JWeoghBf3lEDd/DvbOp8Oyh2N+5teAcrKgBQ7/r
	4OhKg+1dNZTV6etuRWDZ0ffoXQrxxQjiSStqusAvj7EKytEpUaLpNej8PmcSAutVqgTBxbJR6Vu
	fqKO1cwRJCKkmX4oKkxxm8WUjDAsGLge5Ros8hvHaR25NBznLxtAJ0RxxV0+g9Fja3J7BcXZKLj
	3h/dGOHnLxtOC8Op+tf+OXNZubiwltw3oayIl4eHn4EIRQ8HY85blcZ+h/8VZNfJuzNz9pyVRpw
	RHlc6w3clS7xf2iGzWF7zZeRzg==
X-Google-Smtp-Source: AGHT+IEAoJiu1UH67YXklgc9uvuOf1qJleDiwyIXSrIHeshyOtNKWRsImtZQBp/VYi3lIcNm+2tmz26j0NyKZvubb0Y=
X-Received: by 2002:a05:6512:3e08:b0:59b:67cf:ac0c with SMTP id
 2adb3069b0e04-59b67cfac63mr326251e87.17.1767684779427; Mon, 05 Jan 2026
 23:32:59 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251206-mt8183-display-graph-v1-1-a30e54481f28@abscue.de>
In-Reply-To: <20251206-mt8183-display-graph-v1-1-a30e54481f28@abscue.de>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Tue, 6 Jan 2026 15:32:48 +0800
X-Gm-Features: AQt7F2oScs1nPo40H3ZrV8FDmqy_y-OidGavDVEUMs49HzaB-TFtZc3H2BO4VmE
Message-ID: <CAGXv+5EXA5GF6+-_+SnqU1=Rq3Cv4_Uq+xHD55TO2CBtYans_A@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mediatek: mt8183: Add missing endpoint IDs to
 display graph
To: =?UTF-8?Q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, Evans Jahja <evansjahja13@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Dec 7, 2025 at 1:54=E2=80=AFAM Otto Pfl=C3=BCger <otto.pflueger@abs=
cue.de> wrote:
>
> The endpoint IDs in the display graph are expected to match the
> associated display path number, i.e. all endpoints connected to
> mmsys_ep_main must have reg =3D <0> and all endpoints connected to
> mmsys_ep_ext must have reg =3D <1>.
>
> Add the missing ID to all endpoints in the display graph, based on
> mt8365.dtsi as an existing example that does this correctly.
>
> Fixes: e72d63fa0563 ("arm64: dts: mediatek: mt8183: Migrate to display co=
ntroller OF graph")
> Reported-by: Evans Jahja <evansjahja13@gmail.com>
> Closes: https://lore.kernel.org/linux-mediatek/CAAq5pW9o3itC0G16LnJO7KMAQ=
_XoqXUpB=3DcuJ_7e3-H11zKd5Q@mail.gmail.com/
> Signed-off-by: Otto Pfl=C3=BCger <otto.pflueger@abscue.de>

Tested-by: Chen-Yu Tsai <wenst@chromium.org>

Restores the display on my MT8183 Juniper device to normal.

> ---
>  arch/arm64/boot/dts/mediatek/mt8183.dtsi | 122 +++++++++++++++++++++++++=
------
>  1 file changed, 98 insertions(+), 24 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/d=
ts/mediatek/mt8183.dtsi
> index 4e20a8f2eb25803057955401a7737c7f029a1424..0c73043c67fd01147179e8f9b=
065684f67749ec2 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> @@ -1754,15 +1754,21 @@ ports {
>                                 #size-cells =3D <0>;
>
>                                 port@0 {
> +                                       #address-cells =3D <1>;
> +                                       #size-cells =3D <0>;
>                                         reg =3D <0>;

"reg" (and "compatible") properties should come before all other ones,
as documented in the device tree coding style. This applies to all the
additions in this patch.


ChenYu

