Return-Path: <devicetree+bounces-133829-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CD869FBCEE
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 12:33:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AC4BD1883216
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 11:33:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 283931BC9E6;
	Tue, 24 Dec 2024 11:33:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OiLxFpAi"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0FF01AF4E9;
	Tue, 24 Dec 2024 11:33:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735039984; cv=none; b=QZmhK9yI7ae85YrDavhb+vFmwut6q7V4N4JBSyE5EmQMRrOFkb9s6ylI/vSIC2QrOtCbB/bllHWK3phk9IxyV3cjZ06+ddySQg/OogRaBGQkJ79iDiE/8OqmMZ76yNLgE57jJ1MPwHfNZICGscscO4eji3DyYgpcq0zdDVpHMEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735039984; c=relaxed/simple;
	bh=RDQAjNOAdC8KLqZh7kvEfTA7Zk449zVSYCNgtWtHXMk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=prBnbIj8PG2Z4BpYz1Vo8uKwjnDa47br5ODz5m8aeN7Nf8PeRI0bDWnaq1q3xB8SqxUBgN8Vj/3iM6sEcQ86mUYizQJE9tRrvtzqUmZrg/T0wAlemsa5u8a7CcosUVTaeGtCsWidZuMjHlCsFUhELrQP9WzJnAP9AhlQDUZZZVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OiLxFpAi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC16EC4AF09;
	Tue, 24 Dec 2024 11:33:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735039983;
	bh=RDQAjNOAdC8KLqZh7kvEfTA7Zk449zVSYCNgtWtHXMk=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=OiLxFpAiR56DYABPtJKsbmozRm+7qCsdT+CsY94qwJ/LPZoK7rAcobBkuwSUPyENn
	 eWPaliTjS9rjywxLZR/Ksss7Jb7IRyk9SmdRirifHnI5O72xs/OVJhaZWsCMEsYSdP
	 5m3gcB3iFkLHR7v9yUxwArzoiYSUhIaDCjXlS9fTPPpIY3oFY3uJo9LgWbI/E00Vo3
	 rBLKoXmVo92L5C0eyJUL2WF6Vmsx4eoS9cjY9ktCdXSVvWXPiewtCca60GT1Bnr7Y0
	 k0CRRbLive4FS26PtlGoODE8I+FsHwrlAaXekMSlFTTZHpwHZ90vVBw+XXYwcdYu5m
	 sf9St7Bk1ZXVw==
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-2ef87d24c2dso4448548a91.1;
        Tue, 24 Dec 2024 03:33:03 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUahXZJHaL3WpSj8odm2E56ryWBqDw3dbIqUYObjgbbXA9eFg1PpJ9qVKGBGBiY997L4Krm3AMtQkVC@vger.kernel.org, AJvYcCVrJa7STenAUGm9lk6iJzcCqVfa1tqU1hrIFHPPToJ20Vz1aF4dzDopAeZ9Sq32EgGJOXh3K2IRNCTwiUpW@vger.kernel.org
X-Gm-Message-State: AOJu0Ywdr8NKfB0XiKyo/0bVsbaNeFOzJ+KliJxElr1W3zJ8cetMxMgb
	Dzr5jxh3wkSJJM1Oem7U7IIFL+IUzkvXUdCB7SaqQfAJdJEZby/1f69IhTybAjCMh8Um+pGuz5H
	LtqxooIK5rAmOzzVbwXbwLQ3i/w==
X-Google-Smtp-Source: AGHT+IGjk5EjNkRdP4/egK3HpkP0kg9EvE0XRDFf66/0s82KLvsrvKxQ79Fnquu0pdesdRpeuQ8UYTFz1+bWSm5jFBI=
X-Received: by 2002:a17:90a:d64e:b0:2ee:a4f2:b311 with SMTP id
 98e67ed59e1d1-2f452dfae72mr26965676a91.8.1735039983380; Tue, 24 Dec 2024
 03:33:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241219181531.4282-1-jason-jh.lin@mediatek.com> <20241219181531.4282-3-jason-jh.lin@mediatek.com>
In-Reply-To: <20241219181531.4282-3-jason-jh.lin@mediatek.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Tue, 24 Dec 2024 19:33:35 +0800
X-Gmail-Original-Message-ID: <CAAOTY_9dApKQ2C_rYBQ8eH7b17dmZntvAND+BYfgkRms1gEbmw@mail.gmail.com>
Message-ID: <CAAOTY_9dApKQ2C_rYBQ8eH7b17dmZntvAND+BYfgkRms1gEbmw@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] dt-bindings: display: mediatek: ovl: Modify rules
 for MT8195/MT8188
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
	Fei Shao <fshao@chromium.org>, Pin-yen Lin <treapking@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Jason-JH.Lin <jason-jh.lin@mediatek.com> =E6=96=BC 2024=E5=B9=B412=E6=9C=88=
20=E6=97=A5 =E9=80=B1=E4=BA=94 =E4=B8=8A=E5=8D=882:15=E5=AF=AB=E9=81=93=EF=
=BC=9A
>
> From: Hsiao Chien Sung <shawn.sung@mediatek.com>
>
> Modify rules for both MT8195 and MT8188.
> Hardware capabilities include color formats and AFBC are
> changed since MT8195, stop using the settings of MT8183.

Acked-by: Chun-Kuang Hu <chunkuang.hu@kernel.org>

>
> Acked-by: Rob Herring <robh@kernel.org>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collab=
ora.com>
> Reviewed-by: CK Hu <ck.hu@mediatek.com>
> Signed-off-by: Hsiao Chien Sung <shawn.sung@mediatek.com>
> Signed-off-by: Jason-JH.Lin <jason-jh.lin@mediatek.com>
> ---
>  .../bindings/display/mediatek/mediatek,ovl.yaml          | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,=
ovl.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.=
yaml
> index 33542211507f..4f110635afb6 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yam=
l
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yam=
l
> @@ -26,6 +26,7 @@ properties:
>            - mediatek,mt8173-disp-ovl
>            - mediatek,mt8183-disp-ovl
>            - mediatek,mt8192-disp-ovl
> +          - mediatek,mt8195-disp-ovl
>            - mediatek,mt8195-mdp3-ovl
>        - items:
>            - enum:
> @@ -36,16 +37,14 @@ properties:
>            - enum:
>                - mediatek,mt6795-disp-ovl
>            - const: mediatek,mt8173-disp-ovl
> -      - items:
> -          - enum:
> -              - mediatek,mt8188-disp-ovl
> -              - mediatek,mt8195-disp-ovl
> -          - const: mediatek,mt8183-disp-ovl
>        - items:
>            - enum:
>                - mediatek,mt8186-disp-ovl
>                - mediatek,mt8365-disp-ovl
>            - const: mediatek,mt8192-disp-ovl
> +      - items:
> +          - const: mediatek,mt8188-disp-ovl
> +          - const: mediatek,mt8195-disp-ovl
>        - items:
>            - const: mediatek,mt8188-mdp3-ovl
>            - const: mediatek,mt8195-mdp3-ovl
> --
> 2.43.0
>

