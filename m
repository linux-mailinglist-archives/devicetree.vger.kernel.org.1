Return-Path: <devicetree+bounces-253719-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F975D10D57
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 08:19:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BEF76300FF8A
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 07:19:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5088A32D7F1;
	Mon, 12 Jan 2026 07:19:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="PeMuDwGG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B71C32B99D
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 07:19:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768202397; cv=none; b=bfIPyainMFtlsqovnJ4EDHKiO6ctehq4j6LfgQHgK+spJ8TlayQzh4NAmG7ZgtGUyEYbaG/mOAgPtkMNlYsRdCUW6EUE+x3zCTmkjSmZxLozEJKzfOT/Og5juyKW9IMFzHJDNV0/FP8mTyQ1ZoQe654b/4/SZrZPC8x96BC27cU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768202397; c=relaxed/simple;
	bh=AN1yX5rxct6fwdqhRaRJAn2eX4PBR9xyRB85ITybH2U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ga9+bU7p08YljSbGCecGAom8RcLR1z4PxNm9Ic3xq5tFx9eqCs2aqBxD88KBUxFuJ3ACbdV0/gwcSTpl8brAbnZ2kh0DOUCrQXGEE7/6JqafZyaQGKl837seFpgo3tZDqLgtUGNgl+WztmSlpY4fqpjUmVyYb7tTEKd+8M68AoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=PeMuDwGG; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-59b855a4700so1379182e87.0
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 23:19:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1768202394; x=1768807194; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4Ph/Etg5Sr0NTZwxuYotbPw8N7SzYppkUoPjd6ftsrA=;
        b=PeMuDwGGQorJnT9wN0yu7DrpxeiKJAbc5viY1eubICmR2xy4kVCxSCCiT8LO58pCWc
         TZt3jyIOLjl/VAC/0prXVTswvcDh5yjMAdTEoUI1T11gEJcBdqlO3yj9EdazUyD6cVzC
         zNg57fQcHN7mkLZj/YtZmxgVIou9+nT6efw4c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768202394; x=1768807194;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=4Ph/Etg5Sr0NTZwxuYotbPw8N7SzYppkUoPjd6ftsrA=;
        b=Ir30CsdPoTWbZFcLFgRpHWlOXk3eKT85rgMnp5XnjWyyokert/tHzIwkpcIL41jgB/
         4KSfXMzuD5NLVCckxjSITpWX1EpingeF/Msy3IujivRYSkojGZ8O6b+rHll61FZ2ttL4
         2KRZg60IJXDcfcevyR5HeFFz5Q6AWWsIL41VbRrkFfVyU7dtSdGSTzf9YkBjJ5t6PYT6
         RimP/08DdMFfKLpvFJ/zPB0AK0EjzWTm30y2dL5OXutiahAuBcaODKR5RuvQYWcUFasO
         1K4o2aO6a8u6UqrpxWyG/ubgHQ8aS/+HS1YIbPDoZvEQV7MAm/S0HU0ugwLZr6IPUbYp
         R1Lw==
X-Forwarded-Encrypted: i=1; AJvYcCVs7EbRLw14xsBk6o0pxK6pHS1/pyt7wp5WTW6voVpRc/BuSfYEfIzy4r5pHgomitgSOq1Qu4wh46oF@vger.kernel.org
X-Gm-Message-State: AOJu0YzLjyaYZ3NF+CVbWt/PMBeQ+0kGr86t56db+MuXhXKm0/BCMdhS
	nFGei+eSDOhmYpfkYROFv+39gmjXC1kNDmR7jGTRxKolheScBNjZ5aLRFY0gRj15JCS5MFJdVhr
	KkpgA9lhkA6Lz7G7gFvC8CDF5dVCgo6/tPCfxf1Jp
X-Gm-Gg: AY/fxX44a/Ugq1ejt8/vGmxrgaiYUQBdDW8pSC8xrzeDo5lPSFAeE9UDByM0uJigvTJ
	0izLcwb/aPvUoVyrT6pp78HitQCBtAVrlxsD/Z59KDBss51VroFZ4soECCooHl1CGB5Xal3Jckg
	wqFnAKJF1JRPJDrgzWQOUckqRaeeXNscdmrfMT0OoELY6v/nPAuTHMIyvDhK2NyWdHsoA01P6JJ
	ZAuxJdq8DENZM4IRZC3OI4XWZ2OSRDDSpoc/s+hLdCLdQGlKE43MJozoWBuXO6CpBx4TZe8ThGh
	UPxwmpuVwoWwnXaDYlwHCo88
X-Google-Smtp-Source: AGHT+IG5kl0ZwX10KZuxnttOREwQR6GL+Z0E9J2N56/uwpX3vjlGU2NciA+itFAj/Kp8QX6ABfil/wuy6GMvq1S6NvQ=
X-Received: by 2002:a05:6512:3d1e:b0:59b:85ea:5a6 with SMTP id
 2adb3069b0e04-59b85ea063emr2341817e87.49.1768202393448; Sun, 11 Jan 2026
 23:19:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260109114747.37189-1-angelogioacchino.delregno@collabora.com> <20260109114747.37189-3-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20260109114747.37189-3-angelogioacchino.delregno@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 12 Jan 2026 15:19:41 +0800
X-Gm-Features: AZwV_Qj1Q-eovEPEvCaFCrkejPJ97W98r-3qCY7fgi6Nqe05K80d4_P2-yj-wb0
Message-ID: <CAGXv+5GEdqgbr5yPJ4_7gBKsg8=PkBvFCvarp+=Qcsq8kqWR_A@mail.gmail.com>
Subject: Re: [PATCH 02/11] arm64: dts: mediatek: mt8183: Fix dtb warnings in
 display graph
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-mediatek@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, matthias.bgg@gmail.com, sjoerd@collabora.com, 
	hsinyi@chromium.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 9, 2026 at 7:48=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:

No commit message?

> ---
>  arch/arm64/boot/dts/mediatek/mt8183.dtsi | 119 +++++------------------
>  1 file changed, 23 insertions(+), 96 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/d=
ts/mediatek/mt8183.dtsi
> index db86e2bd0c7b..676f8ecd89e2 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi

[...]

> @@ -1904,9 +1880,9 @@ ports {
>                                 #size-cells =3D <0>;
>
>                                 port@0 {
> -                                       reg =3D <0>;
>                                         #address-cells =3D <1>;
>                                         #size-cells =3D <0>;
> +                                       reg =3D <0>;

reg should be first or second (when the first property is "compatible")
property under a node.

Ref: "Order of Properties in Device Node" in
     Documentation/devicetree/bindings/dts-coding-style.rst

>
>                                         rdma1_in: endpoint@1 {
>                                                 reg =3D <1>;
> @@ -1915,9 +1891,9 @@ rdma1_in: endpoint@1 {
>                                 };
>
>                                 port@1 {
> -                                       reg =3D <1>;
>                                         #address-cells =3D <1>;
>                                         #size-cells =3D <0>;
> +                                       reg =3D <1>;

Same here.

>
>                                         rdma1_out: endpoint@1 {
>                                                 reg =3D <1>;

[...]

> @@ -2165,9 +2092,9 @@ ports {
>                                 #size-cells =3D <0>;
>
>                                 port@0 {
> -                                       reg =3D <0>;
>                                         #address-cells =3D <1>;
>                                         #size-cells =3D <0>;
> +                                       reg =3D <0>;
>
>                                         dpi_in: endpoint@1 {
>                                                 reg =3D <1>;
> @@ -2176,11 +2103,11 @@ dpi_in: endpoint@1 {
>                                 };
>
>                                 port@1 {
> -                                       reg =3D <1>;
>                                         #address-cells =3D <1>;
>                                         #size-cells =3D <0>;
> +                                       reg =3D <1>;
>
> -                                       dpi_out: endpoint@1 {
> +                                       dpi_out: endpoint@1  {
>                                                 reg =3D <1>;
>                                         };
>                                 };

Same for these two blocks.

So all the deletions are correct, but the simple reordering is wrong and
not needed.

Once fixed,

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

ChenYu

