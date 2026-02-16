Return-Path: <devicetree+bounces-265701-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0BHUDQP7kmlx0gEAu9opvQ
	(envelope-from <devicetree+bounces-265701-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 12:09:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A9390142B25
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 12:09:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9314D30073DB
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 11:09:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A92BB2D4816;
	Mon, 16 Feb 2026 11:09:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="Xi9XsN2X"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52B4F2BF3D7;
	Mon, 16 Feb 2026 11:09:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771240192; cv=none; b=Q8qpSz5v8Jbx4rGVtS7znuLmn+ypvuJiIK/d3JcRYksl/VMayZeuUzM5ujWD5bvFiAnJAIPYw0rho5h2QLROurq5EI3SotqN5pMpzEgnq3AMAJVAl4fQwZ0UWyQC2jT5YofKEurxb37nevYSRv7ZvrJdKy/B7bsYhOQVAoQ2nyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771240192; c=relaxed/simple;
	bh=7ietRFN+k+TRUno7TzNeMRtjx+kFVY2I1NkiqflKaCU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bUoGMA3vk5N8No9tGdhwqXMk0gnBygbvcvIZL2+I3eXeJtOoy/QJwjclNiSQl7vgoFmlcI0xGAyxXGk09a9tyBugELh7wTZAmvw/tuDYcZpBbdXyxiUxnJUB387Xx5cKJWpxYkQ7WhcVJwSaRyMJtvsjTtsBqgpYkacwWIzBPyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=Xi9XsN2X; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1771240189;
	bh=7ietRFN+k+TRUno7TzNeMRtjx+kFVY2I1NkiqflKaCU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Xi9XsN2XuP/NOMgD8xmsvfAskZ0p1oaCPQqEHR/XUh2U6uvr8WYr3P/QJ3POFiVTt
	 qlQtrr6HjRt5oMOTC2v6SinHAWSTZJ192NsUTms78LmXflEmCzPyUodjfwS5EbrXvH
	 QUJjBwYB1w9inrtcr/9dD7lR4lGGyAJw45NGVteuFX6IVd3Rztf1cmmXGAa8ifxF4b
	 Mlzje39Ida3WYAUnVsHS9qpHpAS3P3Y2D5msTIhA9/4JMrBSz699d30Nc4E3gdO6iL
	 jIiZFceBX4a8FOEvEiKIcVEEzdMwLfVbVvKytm2PYeeb6l3qWD/T2CzWdmzT9CZS1l
	 ebTKR4cERKeSg==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id AE9F317E12E9;
	Mon, 16 Feb 2026 12:09:48 +0100 (CET)
Message-ID: <02766a04-b777-4e8b-9908-7abfc4ba113c@collabora.com>
Date: Mon, 16 Feb 2026 12:09:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] gpu: drm: mediatek: ovl: add specific entry for
 mt8167
To: Luca Leonardo Scorcia <l.scorcia@gmail.com>,
 linux-mediatek@lists.infradead.org
Cc: Val Packett <val@packett.cool>, Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chunfeng Yun
 <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Jitao Shi
 <jitao.shi@mediatek.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org
References: <cover.1771144723.git.l.scorcia@gmail.com>
 <b440a9c1972dedc4cfbf29a84366e635b0d7d984.1771144723.git.l.scorcia@gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <b440a9c1972dedc4cfbf29a84366e635b0d7d984.1771144723.git.l.scorcia@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265701-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[packett.cool,kernel.org,pengutronix.de,linux.intel.com,suse.de,gmail.com,ffwll.ch,mediatek.com,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,collabora.com:mid,collabora.com:dkim,collabora.com:email]
X-Rspamd-Queue-Id: A9390142B25
X-Rspamd-Action: no action

Il 15/02/26 09:53, Luca Leonardo Scorcia ha scritto:
> From: Val Packett <val@packett.cool>
> 
> While this configuration is otherwise identical to mt8173, according
> to Android kernel sources, this SoC does need smi_id_en.
> 
> Signed-off-by: Val Packett <val@packett.cool>
> Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>

Okay, sure.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

> ---
>   drivers/gpu/drm/mediatek/mtk_disp_ovl.c | 12 ++++++++++++
>   1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> index e0236353d499..97a899e4bd99 100644
> --- a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> +++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> @@ -671,6 +671,16 @@ static const struct mtk_disp_ovl_data mt2701_ovl_driver_data = {
>   	.num_formats = ARRAY_SIZE(mt8173_formats),
>   };
>   
> +static const struct mtk_disp_ovl_data mt8167_ovl_driver_data = {
> +	.addr = DISP_REG_OVL_ADDR_MT8173,
> +	.gmc_bits = 8,
> +	.layer_nr = 4,
> +	.fmt_rgb565_is_0 = true,
> +	.smi_id_en = true,
> +	.formats = mt8173_formats,
> +	.num_formats = ARRAY_SIZE(mt8173_formats),
> +};
> +
>   static const struct mtk_disp_ovl_data mt8173_ovl_driver_data = {
>   	.addr = DISP_REG_OVL_ADDR_MT8173,
>   	.gmc_bits = 8,
> @@ -742,6 +752,8 @@ static const struct mtk_disp_ovl_data mt8195_ovl_driver_data = {
>   static const struct of_device_id mtk_disp_ovl_driver_dt_match[] = {
>   	{ .compatible = "mediatek,mt2701-disp-ovl",
>   	  .data = &mt2701_ovl_driver_data},
> +	{ .compatible = "mediatek,mt8167-disp-ovl",
> +	  .data = &mt8167_ovl_driver_data},
>   	{ .compatible = "mediatek,mt8173-disp-ovl",
>   	  .data = &mt8173_ovl_driver_data},
>   	{ .compatible = "mediatek,mt8183-disp-ovl",



