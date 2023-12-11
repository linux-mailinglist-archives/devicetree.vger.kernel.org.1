Return-Path: <devicetree+bounces-23922-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B06A680CC4D
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 15:00:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DC89A1C212DB
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 14:00:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1492D482C2;
	Mon, 11 Dec 2023 14:00:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="YGEmrRc1"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [IPv6:2a00:1098:ed:100::25])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83E33478A;
	Mon, 11 Dec 2023 05:59:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1702303189;
	bh=dKIWPsl1+iB2/HkzpJsN57Kk1dREJYExJbg+W32xu7M=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=YGEmrRc1jEJzfPPF6dLbd4heZq9uLnyF4pej2TSkPXZLgrVyhmu7OqHPZ/0jcl64t
	 t+KUNzhJXuzEGlo/xfv9iZqv4eSRp/turrbYd63mibACbd3cUlMGxGwNloE6Hu6C0T
	 bEHMjdbzd03fJ5iUlhHrIoXhghvM0fKdWDYwx8ZP/a6rGL9ZfdMcTrRlIcWA/nhyXO
	 KuGhiV+v2xBkPfkLNsGyMnHP5sCnO7G83SFrUJVcRsAl6oF65vdFTBs1JJ0VRyNK+c
	 /xZ83+DtdN9XTwo39xLwW84zGhdZjBM9iu5shi+/fKdNSZE1Ifpwfp9XkRAc67AnJ6
	 dt9L3hQiw+9oQ==
Received: from [IPV6:fd00::2a:39ce] (cola.collaboradmins.com [IPv6:2a01:4f8:1c1c:5717::1])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 70134378110F;
	Mon, 11 Dec 2023 13:59:47 +0000 (UTC)
Message-ID: <4fce268c-4ef1-4361-b524-4c9bf9b60370@collabora.com>
Date: Mon, 11 Dec 2023 14:59:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/4] clk: mediatek: Add pcw_chg_shift control
To: Daniel Golle <daniel@makrotopia.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Sabrina Dubroca <sd@queasysnail.net>, Jianhui Zhao <zhaojh329@gmail.com>,
 Chen-Yu Tsai <wenst@chromium.org>, "Garmin.Chang"
 <Garmin.Chang@mediatek.com>, Sam Shih <sam.shih@mediatek.com>,
 Markus Schneider-Pargmann <msp@baylibre.com>,
 Alexandre Mergnat <amergnat@baylibre.com>,
 Jiasheng Jiang <jiasheng@iscas.ac.cn>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Frank Wunderlich <frank-w@public-files.de>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Dan Carpenter <dan.carpenter@linaro.org>,
 James Liao <jamesjj.liao@mediatek.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 netdev@vger.kernel.org
References: <097e82b0d66570763d64be1715517d8b032fcf95.1702158423.git.daniel@makrotopia.org>
 <28c8ccd234ba311591b6db0de131fde36d3ec409.1702158423.git.daniel@makrotopia.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <28c8ccd234ba311591b6db0de131fde36d3ec409.1702158423.git.daniel@makrotopia.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 09/12/23 22:56, Daniel Golle ha scritto:
> From: Sam Shih <sam.shih@mediatek.com>
> 
> Introduce pcw_chg_shfit control to replace hardcoded PCW_CHG_MASK macro.
> This will needed for clocks on the MT7988 SoC.
> 
> Signed-off-by: Sam Shih <sam.shih@mediatek.com>
> Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> ---
> v4: always set .pcw_chg_shift if .pcw_chg_reg is used instead of
>      having an if-expression in mtk_pll_set_rate_regs().
> v3: use git --from ...
> v2: no changes
> 
>   drivers/clk/mediatek/clk-mt6779.c            | 1 +
>   drivers/clk/mediatek/clk-mt8183-apmixedsys.c | 1 +
>   drivers/clk/mediatek/clk-mt8188-apmixedsys.c | 1 +
>   drivers/clk/mediatek/clk-mt8192-apmixedsys.c | 1 +
>   drivers/clk/mediatek/clk-mt8195-apmixedsys.c | 1 +
>   drivers/clk/mediatek/clk-mt8365-apmixedsys.c | 1 +
>   drivers/clk/mediatek/clk-pll.c               | 3 +--
>   drivers/clk/mediatek/clk-pll.h               | 2 ++
>   8 files changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/clk/mediatek/clk-mt6779.c b/drivers/clk/mediatek/clk-mt6779.c
> index ffedb1fe3c672..e66461f341dd3 100644
> --- a/drivers/clk/mediatek/clk-mt6779.c
> +++ b/drivers/clk/mediatek/clk-mt6779.c
> @@ -1166,6 +1166,7 @@ static const struct mtk_gate apmixed_clks[] = {
>   		.pcw_reg = _pcw_reg,					\
>   		.pcw_shift = _pcw_shift,				\
>   		.pcw_chg_reg = _pcw_chg_reg,				\
> +		.pcw_chg_shift = PCW_CHG_SHIFT,				\
>   		.div_table = _div_table,				\
>   	}
>   
> diff --git a/drivers/clk/mediatek/clk-mt8183-apmixedsys.c b/drivers/clk/mediatek/clk-mt8183-apmixedsys.c
> index 2b261c0e2b61d..184e0cd1dde29 100644
> --- a/drivers/clk/mediatek/clk-mt8183-apmixedsys.c
> +++ b/drivers/clk/mediatek/clk-mt8183-apmixedsys.c
> @@ -75,6 +75,7 @@ static const struct mtk_gate apmixed_clks[] = {
>   		.pcw_reg = _pcw_reg,					\
>   		.pcw_shift = _pcw_shift,				\
>   		.pcw_chg_reg = _pcw_chg_reg,				\
> +		.pcw_chg_shift = PCW_CHG_SHIFT,				\
>   		.div_table = _div_table,				\
>   	}
>   
> diff --git a/drivers/clk/mediatek/clk-mt8188-apmixedsys.c b/drivers/clk/mediatek/clk-mt8188-apmixedsys.c
> index 41ab4d6896a49..87c5dfa3d1ac4 100644
> --- a/drivers/clk/mediatek/clk-mt8188-apmixedsys.c
> +++ b/drivers/clk/mediatek/clk-mt8188-apmixedsys.c
> @@ -53,6 +53,7 @@ static const struct mtk_gate apmixed_clks[] = {
>   		.pcw_reg = _pcw_reg,					\
>   		.pcw_shift = _pcw_shift,				\
>   		.pcw_chg_reg = _pcw_chg_reg,				\
> +		.pcw_chg_shift = PCW_CHG_SHIFT,				\
>   		.en_reg = _en_reg,					\
>   		.pll_en_bit = _pll_en_bit,				\
>   	}
> diff --git a/drivers/clk/mediatek/clk-mt8192-apmixedsys.c b/drivers/clk/mediatek/clk-mt8192-apmixedsys.c
> index 3590932acc63a..67bf5ef3f0033 100644
> --- a/drivers/clk/mediatek/clk-mt8192-apmixedsys.c
> +++ b/drivers/clk/mediatek/clk-mt8192-apmixedsys.c
> @@ -56,6 +56,7 @@ static const struct mtk_gate apmixed_clks[] = {
>   		.pcw_reg = _pcw_reg,					\
>   		.pcw_shift = _pcw_shift,				\
>   		.pcw_chg_reg = _pcw_chg_reg,				\
> +		.pcw_chg_shift = PCW_CHG_SHIFT,				\
>   		.en_reg = _en_reg,					\
>   		.pll_en_bit = _pll_en_bit,				\
>   	}
> diff --git a/drivers/clk/mediatek/clk-mt8195-apmixedsys.c b/drivers/clk/mediatek/clk-mt8195-apmixedsys.c
> index 44a4c85a67ef5..ccd6bac7cb1fc 100644
> --- a/drivers/clk/mediatek/clk-mt8195-apmixedsys.c
> +++ b/drivers/clk/mediatek/clk-mt8195-apmixedsys.c
> @@ -54,6 +54,7 @@ static const struct mtk_gate apmixed_clks[] = {
>   		.pcw_reg = _pcw_reg,					\
>   		.pcw_shift = _pcw_shift,				\
>   		.pcw_chg_reg = _pcw_chg_reg,				\
> +		.pcw_chg_shift = PCW_CHG_SHIFT,				\
>   		.en_reg = _en_reg,					\
>   		.pll_en_bit = _pll_en_bit,				\
>   	}
> diff --git a/drivers/clk/mediatek/clk-mt8365-apmixedsys.c b/drivers/clk/mediatek/clk-mt8365-apmixedsys.c
> index 9b0bc5daeac06..daddca6db44e7 100644
> --- a/drivers/clk/mediatek/clk-mt8365-apmixedsys.c
> +++ b/drivers/clk/mediatek/clk-mt8365-apmixedsys.c
> @@ -39,6 +39,7 @@
>   		.pcw_reg = _pcw_reg,					\
>   		.pcw_shift = _pcw_shift,				\
>   		.pcw_chg_reg = _pcw_chg_reg,				\
> +		.pcw_chg_shift = PCW_CHG_SHIFT,				\
>   		.div_table = _div_table,				\
>   	}
>   
> diff --git a/drivers/clk/mediatek/clk-pll.c b/drivers/clk/mediatek/clk-pll.c
> index 513ab6b1b3229..139b01ab8d140 100644
> --- a/drivers/clk/mediatek/clk-pll.c
> +++ b/drivers/clk/mediatek/clk-pll.c
> @@ -23,7 +23,6 @@
>   #define CON0_BASE_EN		BIT(0)
>   #define CON0_PWR_ON		BIT(0)
>   #define CON0_ISO_EN		BIT(1)
> -#define PCW_CHG_MASK		BIT(31)
>   
>   #define AUDPLL_TUNER_EN		BIT(31)
>   
> @@ -114,7 +113,7 @@ static void mtk_pll_set_rate_regs(struct mtk_clk_pll *pll, u32 pcw,
>   			pll->data->pcw_shift);
>   	val |= pcw << pll->data->pcw_shift;
>   	writel(val, pll->pcw_addr);
> -	chg = readl(pll->pcw_chg_addr) | PCW_CHG_MASK;
> +	chg = readl(pll->pcw_chg_addr) | BIT(pll->data->pcw_chg_shift);
>   	writel(chg, pll->pcw_chg_addr);
>   	if (pll->tuner_addr)
>   		writel(val + 1, pll->tuner_addr);
> diff --git a/drivers/clk/mediatek/clk-pll.h b/drivers/clk/mediatek/clk-pll.h
> index f17278ff15d78..84bd8df13e2e5 100644
> --- a/drivers/clk/mediatek/clk-pll.h
> +++ b/drivers/clk/mediatek/clk-pll.h
> @@ -22,6 +22,7 @@ struct mtk_pll_div_table {
>   #define HAVE_RST_BAR	BIT(0)
>   #define PLL_AO		BIT(1)
>   #define POSTDIV_MASK	GENMASK(2, 0)
> +#define PCW_CHG_SHIFT	31
>   
>   struct mtk_pll_data {
>   	int id;
> @@ -48,6 +49,7 @@ struct mtk_pll_data {
>   	const char *parent_name;
>   	u32 en_reg;
>   	u8 pll_en_bit; /* Assume 0, indicates BIT(0) by default */
> +	u8 pcw_chg_shift;

Ok this is better - please call this "pcw_chg_bit" (same for the definition).

Also, since it is impossible for PCW_CHG to be 0, please add a sanity check at
the beginning of function mtk_clk_register_pll_ops(), like so:

if (!data->pcw_chg_bit) {
	pr_warn("Invalid PCW_CHG bit for pll %s", data->name);
	return ERR_PTR(-EINVAL);
}

...like that, we're fully covered for eventual mistakes during porting (etc).

Cheers,
Angelo

