Return-Path: <devicetree+bounces-126197-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D00D9E07F8
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 17:08:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 335AA284244
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 16:08:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C004A16D30B;
	Mon,  2 Dec 2024 16:08:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IN8oPbX5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01C611632C8
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 16:08:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733155694; cv=none; b=LN7FN+PxD8dPbAtiu/igV2FbsyzkPBODapoy3EbwYOqfeDJuGE/yEZAQK2rKiqTGmx+Pa0YvUiTgDs1lwN0Q+gqn8FNeSmSiHw45zLQIbKL2yQlH1Zg2To6qrSjlU85hY794tmHDTV6rALExX6DOe20egYfHBlHn/sxBNQb2910=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733155694; c=relaxed/simple;
	bh=0BkrnC0seWUpFfjCOuhHrYtdt/QLPpXm683QTECDbjE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Kuo5T5isQPmJ9+RzKV59m8s5KOLuY39lONsF8hYIULIb84akha3+nR+6XbwLK/rp942j8SC07IUAR5EcS6sDaN9Lhtzpk7Vru4uCZm8iVvJdIJJBoULzo/2PfjoeN1MA98GzMKoATKiLCav4LnESUIk7rXCPDg/Nf0+QfgFxi9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IN8oPbX5; arc=none smtp.client-ip=209.85.219.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-e396cc8c9a1so3397598276.0
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 08:08:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733155692; x=1733760492; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=PaH2quEaKj8yOu++9MIx8fQjkXZLihRJEM2GwaPWvJ8=;
        b=IN8oPbX5LeamoxYoHaswYgo7+0JOZB/DVMQMgAyMQH8ek5iVzo3oZ6h3+a/G+RLblQ
         q26pdVwjh0U9zih+qzpswRFsHIVNqJqMC2rkSp4qBjwA4WZTKbWxpLfIYvmnypUig0GZ
         AM04aaH9/g2cTbMPHoE/LlcGwy0KfYSJ1/qiqzEMEwLm1KoVEig1Qdb9kpSIjEUhr+BK
         fehS5VCT0sMcqWNJN0hXqcd4+9EfV78JjanB7sjt79jXcBOP/Ktd5sUfQftre9DFSGeN
         d9x01vLEuER3hX1W9JWpHbLhAdSiTbYKiEBwbiiYfiJ8wtCaCG6ef8vU600gCH1KSmA/
         DahQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733155692; x=1733760492;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PaH2quEaKj8yOu++9MIx8fQjkXZLihRJEM2GwaPWvJ8=;
        b=UlDW+T+IouhNrM1nCWwfHssdKddLKq1GaSw2L+B+u0qaOCtKFLdQywlK+zP7Feln+F
         keDeFuJnVjPjBqY8W6eEOwOuKa1kKlDVzBCPr8D/0IRyC4iN+WKDLSHjDKkDPj5dK4l/
         ytboQ2US7GVjhK0as8eAzd96yG9I28H4bhOkDQdZU9H026vhaQ89eeCjsXMOtMUkch4x
         6ZuQqFsQ6974KHAemImokL72XY7DZ1ocy93HuXeywRJff0PESUhmCqVO7ZpChLa/5Qjd
         +DVgeKl8oBNI1yibJ+PrhXq1p1gWvwzyehQ6GioNYqhWfsoye1eTnuSRtUaYtxHWKJ+2
         kxeA==
X-Forwarded-Encrypted: i=1; AJvYcCV6Ak7V7i30npZamvhzfnRz1azyhUgLgLe7z0Ryghvpazfp11AkdZ6EStNWUcIamNY4yKQWQfdC0ILK@vger.kernel.org
X-Gm-Message-State: AOJu0YwzoB7MRCz4L09/lXwktzl+gcw+37D+zi0W2AUJWPW7gU8E893L
	wa3yyIdCBzgrnEKl7VDuCs91n76rawtkGnI8/C8BX7HApRz7gbA/AGKHKbUqzxxMh/GFUTO5MbR
	W2TKZj/y7R7MYJyUjV+dlF+lw+zf/ABmyr2ofgA==
X-Gm-Gg: ASbGncubq0gURhhevvnSUq6a+FQ9aa3GEIGe/WFhjIhEOmLcYF/fe0e+/PVPPke6H22
	g1UDpASl32m+1C+MNFGvJC98XBtr75isL
X-Google-Smtp-Source: AGHT+IG7HwzdQGc2Kvrg8khctxbecpx+AXVlBCSBHTZ8x/NzPHJXof0Ee7iQcAC8+6QwlvR9QUpxPUtKrKBUqfZBBpA=
X-Received: by 2002:a25:7bc5:0:b0:e38:864a:1522 with SMTP id
 3f1490d57ef6-e3971958a74mr15808882276.9.1733155689500; Mon, 02 Dec 2024
 08:08:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241001113052.3124869-1-fshao@chromium.org> <20241001113052.3124869-2-fshao@chromium.org>
In-Reply-To: <20241001113052.3124869-2-fshao@chromium.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 2 Dec 2024 17:07:33 +0100
Message-ID: <CAPDyKFocgdjSdek-sNHy_w1ZQkscgs8Z0TYwXPKC9phUbH-scg@mail.gmail.com>
Subject: Re: [PATCH v2 1/8] dt-bindings: power: mediatek: Add another nested
 power-domain layer
To: Fei Shao <fshao@chromium.org>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	"Rob Herring (Arm)" <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Fabien Parent <fparent@baylibre.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	MandyJH Liu <mandyjh.liu@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 1 Oct 2024 at 13:31, Fei Shao <fshao@chromium.org> wrote:
>
> The MT8188 SoC has a more in-depth power-domain tree, and the
> CHECK_DTBS=y check could fail because the current MediaTek power
> dt-binding is insufficient to cover its CAM_SUBA and CAM_SUBB
> sub-domains.
>
> Add one more nested power-domain layer to pass the check.
>
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Fei Shao <fshao@chromium.org>

Applied for fixes (to silence the warning in v6.13-rc[n], thanks!

Kind regards
Uffe


> ---
>
> (no changes since v1)
>
>  .../devicetree/bindings/power/mediatek,power-controller.yaml  | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml b/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml
> index 8985e2df8a56..a7df4041b745 100644
> --- a/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml
> +++ b/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml
> @@ -54,6 +54,10 @@ patternProperties:
>              patternProperties:
>                "^power-domain@[0-9a-f]+$":
>                  $ref: "#/$defs/power-domain-node"
> +                patternProperties:
> +                  "^power-domain@[0-9a-f]+$":
> +                    $ref: "#/$defs/power-domain-node"
> +                    unevaluatedProperties: false
>                  unevaluatedProperties: false
>              unevaluatedProperties: false
>          unevaluatedProperties: false
> --
> 2.46.1.824.gd892dcdcdd-goog
>

