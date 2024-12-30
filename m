Return-Path: <devicetree+bounces-134759-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id ACFF99FE737
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 15:45:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 99D4D1881F7A
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 14:45:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DC3C487B0;
	Mon, 30 Dec 2024 14:45:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YIerSV+e"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 757512905;
	Mon, 30 Dec 2024 14:45:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735569920; cv=none; b=aE2xZ3a8xtoVtuyMVrUddoX5CkROVfXCGtEJT8DFsIgYd/y0hQhk1/Yv0WyYVf9/IF777QdYc3x6SdXCfcXnBqQ1qRFNd/DQPdAMuSc4YWCZhP82HJofGM65+1qxMCMgeT3/d3Jj/3ZR7Ea3kiA4qIqrCPdbpPryAFuelbcFwhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735569920; c=relaxed/simple;
	bh=WI+NkNOipLWPbdl8Ai0uXMv9gV+VvTtRbrScwl1kVbM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uEq3PpvDAQyNfoGqi2kdIaGhGTVtvCVmVDiiwGE9VFjpzvhzxKol1UyxFnTJowwO+7ZRFHmezsqNERgIHSIE1HTNTKLQ6L5wzkJkvOjtDerxvfvihL3eOa61z92w1VYKnVVSDx8kdwwWp2z2en5mcYATPpFoFmdH1EUIizJ8Q5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YIerSV+e; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D4424C4CED0;
	Mon, 30 Dec 2024 14:45:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735569917;
	bh=WI+NkNOipLWPbdl8Ai0uXMv9gV+VvTtRbrScwl1kVbM=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=YIerSV+ekT/dhVYSsaTBI3u92CdL9kYvdDXuWIIDafLCt3n5oJQAjNpjFdAlzilyu
	 RR9WyRNiTo7NZD4WGFzTovSgT4/YC6oErNBIOU4Bc+8g/LCcHkgdAA1e5lZduM73VP
	 qSr8UhvaWYnZMSVKLYqYM8U9mTrEChvc+2nC7GkLu9lrBcxWv94U0SC+4RrTOxiOCJ
	 AJNVSYDqcY+HJYgbtPSZHAZ1uDCZU2+fMZC1fQWPbE+Gv3AK/P2jlkH0pYyXchDCUC
	 Rc3WW7vncDD7uhyP//mWWf/ZmhnvFXxIektHo62vuDbhh2eMjq1gaYRtbmLFkswPQy
	 d9IVQlDN5eIXA==
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-2ef760a1001so11982191a91.0;
        Mon, 30 Dec 2024 06:45:17 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWAKVdbZDtmVHKAuwnnF23gXb9F1wTQxySzSn0YLfT7PXAxUR/61bj4vMUFgGMy0fsp1S6GJTVq4UX9vpcr@vger.kernel.org, AJvYcCXkR/2OAKwB9qyBApRNQSudC8QoB2s1aenrfXYho06kkiP2KnaDZ1EI0Cjv7HjjoIC0sh8VxRlyEfT2@vger.kernel.org
X-Gm-Message-State: AOJu0YzKqdT0Wd925V+Aj/KCKQxFfJx76I1UdH7qOT0JfNr54y+aVF0D
	iKLjPb+me40NCQPH6DfvnANiYcb7ALYq0GyRuQQJDwrVzpgP/CgcAOHv9m76MEaF/05B80vfrus
	TMbpD71f4RHRFf+NpLc0dJh7IOw==
X-Google-Smtp-Source: AGHT+IGqBjofA/9ZD/GcwInvNoJpn3Bcz2gP5ADkT6kMX87x83YxDQetl+FMgD2Y0zy3a2LSykWpXd7X4STelitYQeM=
X-Received: by 2002:a17:90b:518d:b0:2ee:5958:828 with SMTP id
 98e67ed59e1d1-2f452e214admr54708663a91.9.1735569914855; Mon, 30 Dec 2024
 06:45:14 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241105090207.3892242-1-fshao@chromium.org>
In-Reply-To: <20241105090207.3892242-1-fshao@chromium.org>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Mon, 30 Dec 2024 22:45:48 +0800
X-Gmail-Original-Message-ID: <CAAOTY_9tnJbhF2fGzAcjdHb=uMGaHyqeHZvL=Whb9GJZCUupPA@mail.gmail.com>
Message-ID: <CAAOTY_9tnJbhF2fGzAcjdHb=uMGaHyqeHZvL=Whb9GJZCUupPA@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: display: mediatek: dp: Reference common
 DAI properties
To: Fei Shao <fshao@chromium.org>
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi, Fei:

Fei Shao <fshao@chromium.org> =E6=96=BC 2024=E5=B9=B411=E6=9C=885=E6=97=A5 =
=E9=80=B1=E4=BA=8C =E4=B8=8B=E5=8D=885:02=E5=AF=AB=E9=81=93=EF=BC=9A
>
> The MediaTek DP hardware supports audio and exposes a DAI, so the
> '#sound-dai-cells' property is needed for describing the DAI links.
>
> Reference the dai-common.yaml schema to allow '#sound-dai-cells' to be
> used, and filter out non-DP compatibles as MediaTek eDP in the same
> binding doesn't support audio.
>
> This fixes dtbs_check error:
>   '#sound-dai-cells' does not match any of the regexes: 'pinctrl-[0-9]+'

Applied to mediatek-drm-fixes [1], thanks.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/chunkuang.hu/linux.git/=
log/?h=3Dmediatek-drm-fixes

Regards,
Chun-Kuang.

>
> Signed-off-by: Fei Shao <fshao@chromium.org>
> ---
>
> Changes in v2:
> - reference to dai-common.yaml since the hardware exposes DAI
>   and update to `unevaluatedProperties: false`
> - update commit message
>
>  .../display/mediatek/mediatek,dp.yaml         | 19 ++++++++++++++++++-
>  1 file changed, 18 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,=
dp.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.ya=
ml
> index 2aef1eb32e11..75ce92f4a5fd 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
> @@ -42,6 +42,9 @@ properties:
>    interrupts:
>      maxItems: 1
>
> +  '#sound-dai-cells':
> +    const: 0
> +
>    ports:
>      $ref: /schemas/graph.yaml#/properties/ports
>      properties:
> @@ -85,7 +88,21 @@ required:
>    - ports
>    - max-linkrate-mhz
>
> -additionalProperties: false
> +allOf:
> +  - $ref: /schemas/sound/dai-common.yaml#
> +  - if:
> +      not:
> +        properties:
> +          compatible:
> +            contains:
> +              enum:
> +                - mediatek,mt8188-dp-tx
> +                - mediatek,mt8195-dp-tx
> +    then:
> +      properties:
> +        '#sound-dai-cells': false
> +
> +unevaluatedProperties: false
>
>  examples:
>    - |
> --
> 2.47.0.277.g8800431eea-goog
>

