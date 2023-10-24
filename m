Return-Path: <devicetree+bounces-11225-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C1677D4CB0
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 11:40:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B9C2F1F21BA6
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 09:40:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 867E4249F1;
	Tue, 24 Oct 2023 09:40:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="fo3Mt5qX"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E3918E27
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 09:40:45 +0000 (UTC)
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BCD6B173A
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 02:40:40 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-507b96095abso6333829e87.3
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 02:40:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1698140439; x=1698745239; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pFZJO3NvFyuTGjb36RJAaXGwhe1Ycdi/eoT9Ykdj5nc=;
        b=fo3Mt5qXHkJmN0GxNHc1PPrFlGSTJIqT1L8gSxQOpIjdtvHvEsIyJFuNkqvvz6j/DW
         MtMcWoAG5902Z1+OkZFOqm6noV4nRmqcmoSIgQk2YPRi8W1X4c/xabcfpGLchD2zBa/G
         y3dMQ3FZSwKt7pImkkE3IblHTRz/jOrlEO3Dw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698140439; x=1698745239;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pFZJO3NvFyuTGjb36RJAaXGwhe1Ycdi/eoT9Ykdj5nc=;
        b=lGU0cZnQ5yLPt4AtP8kvEoaDEh76iOxS7cIr27NJHgByv4eIhXfFgKe6C6557CFCra
         w89SXfPIJ8xz4CvXisLKCUJb8IMhvJeIunO2RT1fns0knRcNZCfci69LuY0n16jpa/JF
         KBkY42rRnRIGBALV5tRNr8HEvFxmlVfs81TK/Zmi5Q4pJqzK9RYxgArpPiCVVl39hiXb
         3cPkM8BwTGh+sbQoP4nP5gbd26coXC9GBcYLTn43nwZp3AJxF1Y5jgmUwoyLprurEOAx
         RV/h7PGUUsrqy76Gi3jdksVmyVJQLpr5VRNbijyX1oq9wARwXx0EqNmYtSK2iYZWfRQy
         0EgA==
X-Gm-Message-State: AOJu0YxCYn1znTZ6yva8OmBMgMJD7fr6a6q49/pKvYmCnMLJarJkKiOn
	fBP3SFfsXtfvR32LcnPmOEgEt34V3RYr/nRLXHNDrA==
X-Google-Smtp-Source: AGHT+IFRZoOVcRS4ZKYarSnzLWrQREggh2jb5IX+ohhI5nUZEVJ5YlSwxKC/Th6J+FUnLbHbkRFl8qn3j0n8dWEz5WA=
X-Received: by 2002:ac2:58e2:0:b0:503:9eb:47f0 with SMTP id
 v2-20020ac258e2000000b0050309eb47f0mr7287602lfo.59.1698140438950; Tue, 24 Oct
 2023 02:40:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231023-display-support-v1-0-5c860ed5c33b@baylibre.com> <20231023-display-support-v1-3-5c860ed5c33b@baylibre.com>
In-Reply-To: <20231023-display-support-v1-3-5c860ed5c33b@baylibre.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Tue, 24 Oct 2023 17:40:27 +0800
Message-ID: <CAGXv+5Hwe8jhgthnxwXEPezhwvhfcE=WMp_My3W8FisRagRTKQ@mail.gmail.com>
Subject: Re: [PATCH 03/18] dt-bindings: display: mediatek: color: add binding
 for MT8365 SoC
To: Alexandre Mergnat <amergnat@baylibre.com>
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Jitao Shi <jitao.shi@mediatek.com>, Xinlei Lee <xinlei.lee@mediatek.com>, 
	CK Hu <ck.hu@mediatek.com>, Thierry Reding <thierry.reding@gmail.com>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-pwm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 23, 2023 at 10:40=E2=80=AFPM Alexandre Mergnat
<amergnat@baylibre.com> wrote:
>
> Display Color for MT8365 is compatible with another SoC.
> Then, add MT8365 binding along with MT8183 SoC.

This unfortunately doesn't match what the patch is doing.

ChenYu

> Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
> ---
>  Documentation/devicetree/bindings/display/mediatek/mediatek,color.yaml |=
 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,=
color.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,co=
lor.yaml
> index f21e44092043..fbf15242af52 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,color.y=
aml
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,color.y=
aml
> @@ -39,6 +39,7 @@ properties:
>                - mediatek,mt8188-disp-color
>                - mediatek,mt8192-disp-color
>                - mediatek,mt8195-disp-color
> +              - mediatek,mt8365-disp-color
>            - const: mediatek,mt8173-disp-color
>    reg:
>      maxItems: 1
>
> --
> 2.25.1
>
>

