Return-Path: <devicetree+bounces-127184-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 870E89E4CC9
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 04:41:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6514B1692F5
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 03:41:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0ABAE18FDBA;
	Thu,  5 Dec 2024 03:41:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="FEFNrATf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 144B917BB35
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 03:41:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733370076; cv=none; b=LDPxTqsZU0mhzPfZWdHzu1jCMVHlG+xOE/Amxuwd8aaNaJf9RP8+iiwvoJ6xsTDAfdcj9YIya5OxSLcB3MIIgoucSBKuXSE2JDIanGyuaA5T6WooYGxwH2F1GBgRHMbotHv6HCGDUGDIyLwSI+i6zwJQloF9QSrKFv7TbgfKH9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733370076; c=relaxed/simple;
	bh=8ILclPDNeqSnZ4d4adFACLlkV1PYPYXs8E36ta2tDWs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=M0ZAHitNLiJuWjIjxHwWtifrRvfPJv/Xg3hXzBBt8K/yDpVepftQ6Wsvi1gOxw6o5tvGF3pR51NBzelCCNMbihVEhGM97y9BMFj1BFdrcpaqQWhVpqdloPlJzIuEuAU4K5+sfBPd/9I/RU6ZccooGfuMiUIaAfW8dOHh0Sb5WeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=FEFNrATf; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-53e2129be67so558486e87.2
        for <devicetree@vger.kernel.org>; Wed, 04 Dec 2024 19:41:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1733370073; x=1733974873; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JwfLitJcijVjn3mYmWjqS2pZ/U3vybZ9MoCggOPZX9Y=;
        b=FEFNrATfOjEwDJIJwKs7wzBSAJxytdGtTNh8t0ehBYRV5mQsDmQCkunBeaH3uVocTx
         PzJWfAr8GeqrpFT7e08l0OwQtfycDP2EWh51hjg4yvIcROg+GFDKH6h7kbLzcw5m0gxy
         wJ9pgvF0/wG1MhHXpyoOvtv5zK7ULh3OGV/H0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733370073; x=1733974873;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JwfLitJcijVjn3mYmWjqS2pZ/U3vybZ9MoCggOPZX9Y=;
        b=u6aTj0f+ZOZ4EXjVVNWFWzgk7etJUhEI3ba3SMCMrd7G1t+zOGpIM2tSRBF4+0as1V
         G2DrorOI/4LEDDAikSmH5NLzrMUbtef/MPbaimBQrIrz5mSQuFfUOCJ40340S7KAASuA
         MSfWuHu+Q3Ml0dWR1FPvOMA3Ffq6B3TP1Z36nvMcd07VNbBhAlCOY54o1jvUggmdkQmm
         DQrZpooPj1LmEici4PaDXc3wHHkQRtjuZ1m1qZDtIinP94lJxM7Xa3N5vxC+kBitEhR+
         wCgYDvhAPGg1WB18HQWFc2pLjB19pefEC6IOGSX+DucUH2SNP4Fq9t1GfvgU5VQXhu+n
         UdtA==
X-Forwarded-Encrypted: i=1; AJvYcCXKNq9wsY3m0akXjnKAy9XQDM0t+CfZFbvGaRrkMXgCVI7kXpEot3JNwtIo368Z5+uure1V0nrsEm0e@vger.kernel.org
X-Gm-Message-State: AOJu0Ywrc0pXAiWdugNvVdvXCngPZwjTa726MJ+rYGZF7OFq7S1v4jHc
	/WYu6T/x94EFfHAQ4YksoEYDBr5afkYqEfXuNocWIbFmgH0/3FOqYVOxaJW1yhwJb5T+cWxdpw3
	68E3w8Kc/nC/2XQqt+U048wgIG+pM2qlzq1tl
X-Gm-Gg: ASbGncuYgSUku/J2sFb/wHghg0i2tIlgc7ThmjvwwMtMGUQa+a1n33h9hdHHA+vZ4Ly
	sAoYpqaEuwqpFYI3NRQ+SS+z3WojbdzvULDE8nb/RhhebG6l6ggNkDkiCnN0=
X-Google-Smtp-Source: AGHT+IHqgDnUkKGPY8hz6ukhVqJstOuAN0fggL2+fodGywtVNADNTkDdluEMvlUwqS+eqw7nTOCdm7Cyv8kDB7dlMcU=
X-Received: by 2002:a05:6512:2822:b0:53e:228a:85b with SMTP id
 2adb3069b0e04-53e228a0a02mr191564e87.11.1733370073161; Wed, 04 Dec 2024
 19:41:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241204092855.1365638-1-wenst@chromium.org> <20241204092855.1365638-2-wenst@chromium.org>
 <4762E5F1-59F2-40D1-9D22-724107623AAB@public-files.de>
In-Reply-To: <4762E5F1-59F2-40D1-9D22-724107623AAB@public-files.de>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Thu, 5 Dec 2024 11:41:01 +0800
Message-ID: <CAGXv+5EYf9-r88nv7zDo8JFGhMFyzVPU1gBNwkETvGTp+27q0g@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: mmc: mtk-sd: Document compatibles that
 need two register ranges
To: frank-w@public-files.de
Cc: Chaotian Jing <chaotian.jing@mediatek.com>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wenbin Mei <wenbin.mei@mediatek.com>, linux-mmc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
	Andy-ld Lu <andy-ld.lu@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 4, 2024 at 6:38=E2=80=AFPM Frank Wunderlich <frank-w@public-fil=
es.de> wrote:
>
> Am 4. Dezember 2024 10:28:52 MEZ schrieb Chen-Yu Tsai <wenst@chromium.org=
>:
> >Besides the MT8183's MMC controller and all its compatible derivatives,
> >the recently added MT7986 and MT8196 also require two register ranges.
> >This is based on the actual device trees.
>
> Hi
>
> Mt7988 is similar to mt7986 (only using different clock settings) and usi=
ng 2 reg too.
>
> Currently there is no mmc node in mt7988 dts (i currently upstreaming it)=
 so i guess this is why you have not yet noticed it.
>
> See this for more:
>
> https://patchwork.kernel.org/project/linux-mediatek/patch/20241202122602.=
30734-3-linux@fw-web.de/

I think I noticed it at the beginning, but it then slipped my mind. I
might have gotten it mixed up with mt7986.

> Maybe you can add mt7988 compatible here too in v2.

Will do.

Thanks
ChenYu

> Regards Frank
>
> >Properly enforce this in the binding.
> >
> >Fixes: 4a8bd2b07d88 ("dt-bindings: mmc: mtk-sd: Add mt7988 SoC")
> >Fixes: 58927c9dc4ab ("dt-bindings: mmc: mtk-sd: Add support for MT8196")
> >Cc: Frank Wunderlich <frank-w@public-files.de>
> >Cc: Andy-ld Lu <andy-ld.lu@mediatek.com>
> >Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> >---
> > Documentation/devicetree/bindings/mmc/mtk-sd.yaml | 9 ++++++++-
> > 1 file changed, 8 insertions(+), 1 deletion(-)
> >
> >diff --git a/Documentation/devicetree/bindings/mmc/mtk-sd.yaml b/Documen=
tation/devicetree/bindings/mmc/mtk-sd.yaml
> >index f86ebd81f5a5..9ea035928563 100644
> >--- a/Documentation/devicetree/bindings/mmc/mtk-sd.yaml
> >+++ b/Documentation/devicetree/bindings/mmc/mtk-sd.yaml
> >@@ -235,11 +235,18 @@ allOf:
> >       properties:
> >         compatible:
> >           contains:
> >-            const: mediatek,mt8183-mmc
> >+            enum:
> >+              - mediatek,mt7986-mmc
> >+              - mediatek,mt8183-mmc
> >+              - mediatek,mt8196-mmc
> >     then:
> >       properties:
> >         reg:
> >           minItems: 2
> >+    else:
> >+      properties:
> >+        reg:
> >+          maxItems: 1
> >
> >   - if:
> >       properties:
>
>
> regards Frank

