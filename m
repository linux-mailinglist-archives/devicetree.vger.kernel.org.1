Return-Path: <devicetree+bounces-256308-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0609CD38A9F
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 01:24:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AFD903068BC1
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 00:24:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2297F155C97;
	Sat, 17 Jan 2026 00:24:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fBqqNAYi"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3C22500944
	for <devicetree@vger.kernel.org>; Sat, 17 Jan 2026 00:24:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768609454; cv=none; b=sNTi/mZsX3KoCejSyT83k9JxN/AuO1hPmGScwPmIHw1TnXg/V36YlVGOBmhoRFB1+dDS17qbY8ij1ZVixZycAxBaUIutevmeyekOzLp16dHPOVA08EzdCEPVhxUV4hRz56W99v/4XSo7aDvGAzwRCDwvg1BK2SBNQ3fcnGbFBUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768609454; c=relaxed/simple;
	bh=U6A5F66/8wNeQzB5YOqAPM9qiLWuTBzYGYXMcYaBqBA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PwvQ3AO1BN+H6WRS0Tq4S2MLQpQuwHNYow4BiD+BOa2+NnBE6fngBcz/bTiVM0GH764c+ckk+pvYHbsWpqN8nlxcSH8dckCLFwOFdQld7T6cHTjMKOjXDW7M7JoTDPYFwzNA2/OjU+4xhl4il2/aZ8YuGoAjTEwsh9ugAhoj/SY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fBqqNAYi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8AEB1C19423
	for <devicetree@vger.kernel.org>; Sat, 17 Jan 2026 00:24:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768609453;
	bh=U6A5F66/8wNeQzB5YOqAPM9qiLWuTBzYGYXMcYaBqBA=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=fBqqNAYi7nbIuYUiNgJZmh1dgDVoDnmqPByeNNo6Jrxv5usPZVXBqNftzLuWkuhdJ
	 FTm2LhOrFL2n9Fb69gD7wTUf8eptdKImIga8BEup3eUnssoWIR6l1HcHV8cLoChtL6
	 02wAcTOzNnBq1TmCU13cJbzBffcj7xAaXqNXA7KsGp7FTuddHl28cOkCgcvlw1nbF1
	 3E5AueiSveP62C3hwfxxKrKQY6TSdoPgO2eFw5yAmJU30G71ngdO0yRS2Cibgr5QZF
	 g8koAqI0Uu0kvmYzwEOjKslKwN0HXIfHXaAA9YnUlvDY9mYKC/rgG6YmDEk6xl1HVK
	 PNjFP/PPiZkog==
Received: by mail-dl1-f42.google.com with SMTP id a92af1059eb24-121a0bcd376so1786760c88.0
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 16:24:13 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUo7yQproLFAQgCrshpQhWc77souvLanTSKuSLiblwiA5z+f8rswqryEtVeRcZZeMgzwae1pI2BJxd7@vger.kernel.org
X-Gm-Message-State: AOJu0YzvkkHKtiPZlJfEvawsCcU1gfOQI+s3F8dNZ1sj9y5upn/WIvns
	ASMb6dqXJmgx/XjSjI5CC5XNq97cgexyHHeA0MnmO4EzQc5la5eEdVhulC3NLOCoC6rTDE3xCfZ
	SRcRiHc2r9dsy9cAGZdRz3odWKWdvCQ==
X-Received: by 2002:a05:7022:221a:b0:119:e56b:c73d with SMTP id
 a92af1059eb24-1244a6d7e40mr4659486c88.2.1768609452861; Fri, 16 Jan 2026
 16:24:12 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251217-mtk-genio-evk-hdmi-support-v2-0-a994976bb39a@collabora.com>
 <20251217-mtk-genio-evk-hdmi-support-v2-1-a994976bb39a@collabora.com>
In-Reply-To: <20251217-mtk-genio-evk-hdmi-support-v2-1-a994976bb39a@collabora.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Sat, 17 Jan 2026 00:24:00 +0000
X-Gmail-Original-Message-ID: <CAAOTY__5MX0bsuW2r4V3Chg4H=_HqNJLCLQkzL7EhYgHmp94cA@mail.gmail.com>
X-Gm-Features: AZwV_QhrVWk7cGaynTa_jr48veRrDR3eq9SxYYQUvBNFuYXcjhmjYCg6uHpV0TE
Message-ID: <CAAOTY__5MX0bsuW2r4V3Chg4H=_HqNJLCLQkzL7EhYgHmp94cA@mail.gmail.com>
Subject: Re: [PATCH v2 01/12] dt-bindings: phy: mediatek,hdmi-phy: Fix clock
 output names for MT8195
To: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Cc: Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Guillaume Ranquet <granquet@baylibre.com>, kernel@collabora.com, 
	Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi, Louis:

Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com> =E6=96=BC 2025=E5=B9=
=B412=E6=9C=8817=E6=97=A5=E9=80=B1=E4=B8=89
=E4=B8=8A=E5=8D=8810:19=E5=AF=AB=E9=81=93=EF=BC=9A
>
> From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com=
>
>
> For all of the HDMI PHYs compatible with the one found on MT8195
> the output clock has a different datasheet name and specifically
> it is called "hdmi_txpll", differently from the older HDMI PHYs
> which output block is called "hdmitx_dig_cts".
>
> Replace clock output name string check by max item number one to allow
> the new name on all of the HDMI PHY IPs that are perfectly compatible
> with MT8195.
>
> [Louis-Alexis Eyraud: split patch, addressed previous feedback from
> mailing list, and reworded description]

Applied the binding patches of this series to mediatek-drm-next [1], thanks=
.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/chunkuang.hu/linux.git/=
log/?h=3Dmediatek-drm-next

Regards,
Chun-Kuang.

>
> Fixes: c78fe548b062 ("dt-bindings: phy: mediatek: hdmi-phy: Add mt8195 co=
mpatible")
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
> ---
>  Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml=
 b/Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml
> index f3a8b0b745d13ffc55d391570bff20830d925ed3..10f1d9326f18dba85b92b4c88=
f4c0f6cdddc4c25 100644
> --- a/Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml
> @@ -42,8 +42,7 @@ properties:
>        - const: pll_ref
>
>    clock-output-names:
> -    items:
> -      - const: hdmitx_dig_cts
> +    maxItems: 1
>
>    "#phy-cells":
>      const: 0
>
> --
> 2.52.0
>

