Return-Path: <devicetree+bounces-130504-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 267669F0333
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 04:42:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E63591629F1
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 03:42:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51E2E156243;
	Fri, 13 Dec 2024 03:41:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="km6lHidT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C904149C53
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 03:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734061315; cv=none; b=AAQhpIt+EFTCRAVutDOSNNZDFj97MeSg09jxjTHCrLZaSfkaN3TsdQCxHQ5lalmrcOjxfw9y64UJjZRRxSpL3Po/4QJnqBP0+53NeCmXMP+plRd+1/knWjSghVTwOfRIS6S4k/DAAhEW2DfOMW0Y5KgyeSO4lM8c3Ir4bwuh5bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734061315; c=relaxed/simple;
	bh=uYsCm8LGh1jzDKS7Fzf6GR1jZRGJGUylhdJPMuJc91o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=vAZ1Y5BrvEtSbYSaG3i7inRwlo6ftyQiHVLX30PqeTrS9v4QS+K5F0Y+4iXiytGCGYwYpNHj+InlJ5KxxT2BBVMKzrl1n1y75NcUI8oo2r5wLCcdY7pPfvqVkiPTDehnrT6DlwcNos1ufF880Offg2zt+icO+i+r8OocTrbI3i4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=km6lHidT; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-71e2dccdb81so903466a34.1
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 19:41:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1734061312; x=1734666112; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7+sYwNsJPJUz8rFWIUY4qzq/70dIz9Ru6YrTek2NORE=;
        b=km6lHidTTfxoOGaA8ZdaKVpyg8ma7xUwQMIPshJJx8LObaLKEU1sfnpHLhYIZOvXVP
         3QtqfINACsAWQXwZ751uJMlntr2aX2HmcR2FRlaJXVjKCHeGn6wInuqK7mpGme1IvXMk
         5UNe2RpBUK2fj1UnutQtcPnFkguEXe5BBw0Xw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734061312; x=1734666112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7+sYwNsJPJUz8rFWIUY4qzq/70dIz9Ru6YrTek2NORE=;
        b=FCoBXXOOeCrm9J1NsCBXqwf2St+3lTsqqaNiAPmFfNU3ZyWG3oA+VJXXOIB6G8duvH
         M1ZnPAP5FEYqfJFaWvaeXt5t7AYfgLmYmrzZxQ6i16G0inYE4p7COQ0AMGN8dvsp5zU4
         oQ9seq9uRySizO8oSjFuVsZKvWsQGSc2sS2Y3P6C2ZP6o0LxKK+GJ68YegL7CnFNlAjU
         5NdjgAsA6agKB6oFFwpGpcbgOpQzz3eIr8l5znfWwVFwNcR60vwdr7fUgQCbvmw+tPOj
         YJdyeCBm3Iu0gnbxm9pmJep7pCoxIyjhHzbpvd2k1HrFUxE2ejkPkEKrPMYA0m5qSNKo
         rswA==
X-Forwarded-Encrypted: i=1; AJvYcCUjsuVjNI12yeZnP20WqXOysnkJA3BF/Hf8yHlFioMEY8v5So5g9WIhQUw4HxAA1cJ9ohCGZQD+G3/6@vger.kernel.org
X-Gm-Message-State: AOJu0Yxf0yI+i4dwXIGDkTczGohpdReflFd1ID8N9b5uaVlGAkoSnZq2
	b+ZKQJcDLpDTxDabtUh0KpddxeiWTaMGovEDZ4fJ5r1S3++8ynIPOJ0x8TQgvhVRw1fmT40YdU1
	kHebdaV/D4wXHWSjNO+cBOIp+2XeWZkdlVcnP
X-Gm-Gg: ASbGncuAtiC5Zkpr6CVssHj3mQKQnOv2sBTxIc7m3n/AGDIiupQiUodiBE/YwyF+3/m
	K2GOeD3uGJNYT5WHd18JRg+oE56F9r9odoayVqr1DBiuYlD0oVOsoZuEV8W++kJb4
X-Google-Smtp-Source: AGHT+IGb90yBCnvxG+Hi9Pwd10WdldUyRYAIXkWApYl0He7r8e3m4xh8APMlHNhOCG/vLZzWYNxtLLt1WvD3XZbbN2w=
X-Received: by 2002:a05:6830:6619:b0:71d:54cd:5289 with SMTP id
 46e09a7af769-71e3ba9bef9mr613276a34.21.1734061312077; Thu, 12 Dec 2024
 19:41:52 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241212153344.27408-1-jason-jh.lin@mediatek.com> <20241212153344.27408-2-jason-jh.lin@mediatek.com>
In-Reply-To: <20241212153344.27408-2-jason-jh.lin@mediatek.com>
From: Pin-yen Lin <treapking@chromium.org>
Date: Fri, 13 Dec 2024 11:41:41 +0800
Message-ID: <CAEXTbpfc0ybrvMCuJkKAUwXXTtpZ=vU9MLfU=4CzgdTd-ck4qw@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: display: mediatek: ovl: Modify rules for MT8195/MT8188
To: "Jason-JH.Lin" <jason-jh.lin@mediatek.com>
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	Singo Chang <singo.chang@mediatek.com>, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, 
	Project_Global_Chrome_Upstream_Group@mediatek.com, 
	Nancy Lin <nancy.lin@mediatek.com>, linux-mediatek@lists.infradead.org, 
	Shawn Sung <shawn.sung@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
	linux-arm-kernel@lists.infradead.org, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jason,

On Thu, Dec 12, 2024 at 11:33=E2=80=AFPM Jason-JH.Lin <jason-jh.lin@mediate=
k.com> wrote:
>
> From: Hsiao Chien Sung <shawn.sung@mediatek.com>
>
> Modify rules for both MT8195 and MT8188.
> Hardware capabilities include color formats and AFBC are
> changed since MT8195, stop using the settings of MT8183.
>
> Acked-by: Rob Herring <robh@kernel.org>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collab=
ora.com>
> Signed-off-by: Hsiao Chien Sung <shawn.sung@mediatek.com>
> Signed-off-by: Jason-JH.Lin <jason-jh.lin@mediatek.com>
> Reviewed-by: CK Hu <ck.hu@mediatek.com>
> ---
>  .../bindings/display/mediatek/mediatek,ovl.yaml           | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,=
ovl.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.=
yaml
> index 9ea796a033b2..0ace12bbb623 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yam=
l
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yam=
l
> @@ -36,16 +36,14 @@ properties:
>            - enum:
>                - mediatek,mt6795-disp-ovl
>            - const: mediatek,mt8173-disp-ovl
> -      - items:
> -          - enum:
> -              - mediatek,mt8188-disp-ovl
> -              - mediatek,mt8195-disp-ovl
> -          - const: mediatek,mt8183-disp-ovl

This breaks the schema check for mt8195.dtsi, which is currently using
`compatible =3D "mediatek,mt8195-disp-ovl", "mediatek,mt8183-disp-ovl";`

IIUC this is supposed to be a RESEND of [1], which actually added a
binding for "mediatek,mt8195-disp-ovl". However [1] still breaks
mt8195.dtsi because it only allows `compatible =3D
"mediatek,mt8195-disp-ovl"` But not `compatible =3D
"mediatek,mt8195-disp-ovl", "mediatek,mt8183-disp-ovl"`.

If "mediatek,mt8183-disp-ovl" is a reasonable fallback for
"mediatek,mt8195-disp-ovl", please keep a binding like:

      - items:
          - const: mediatek,mt8195-disp-ovl
          - const: mediatek,mt8183-disp-ovl

Or, fix mt8195.dtsi instead in the same series.

[1]: https://patchwork.kernel.org/project/linux-mediatek/patch/202312121219=
57.19231-4-shawn.sung@mediatek.com/
>        - items:
>            - enum:
>                - mediatek,mt8186-disp-ovl
>                - mediatek,mt8365-disp-ovl
>            - const: mediatek,mt8192-disp-ovl
> +      - items:
> +          - const: mediatek,mt8188-disp-ovl
> +          - const: mediatek,mt8195-disp-ovl
>
>    reg:
>      maxItems: 1

Regards,
Pin-yen

