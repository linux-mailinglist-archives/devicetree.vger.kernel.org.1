Return-Path: <devicetree+bounces-306825-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 57S9NMB1IWpCGwEAu9opvQ
	(envelope-from <devicetree+bounces-306825-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 14:55:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D0E8464017A
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 14:55:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=rock-chips.com header.s=default header.b="IxM8Rb/I";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306825-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306825-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=rock-chips.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B73463002B75
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 12:48:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8E7D47AF66;
	Thu,  4 Jun 2026 12:48:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m15597.qiye.163.com (mail-m15597.qiye.163.com [101.71.155.97])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7573447A0B2;
	Thu,  4 Jun 2026 12:48:27 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780577313; cv=none; b=lPhpDq0aYDf/r9OXgtJ6gk1eSaQrcEWbP2ym5PlbZ6ekPcpBq4KvZYtlKY1kZBk3YJCL8qrsishgfcVVHDAi0Qb8Sa6UMx8iJJhNZPcxRbyRBR0uNs1TrvCLvR9w4hPLZRykX8M0r5LEb1GltIMhl6gAwT3z0v/nYGcKmKtO9h8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780577313; c=relaxed/simple;
	bh=Z7ZjuWCseYufeftIaFPtaxwDGdS/Yzj0JhHbc9oq6xY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=r1fxA7BKK/5WsYBHcsTKH6hqHqe1Wf/9/oVNXhLeDlJaViUn5y/kgsQwDfCWWu4nb/b3NzpReES11bECWqOfr1UbnPH+PkE+gIgUi5z3kLUkq6DubQI76VoUklgh6DRjWUTzHmo2RSktyKAkTv+aKzASyhbyo12Ttzff4t8vbJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=IxM8Rb/I; arc=none smtp.client-ip=101.71.155.97
Received: from [172.16.12.77] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4114f0229;
	Thu, 4 Jun 2026 19:32:31 +0800 (GMT+08:00)
Message-ID: <c3b829f2-8f8f-4b76-bbd6-977ee49e32d1@rock-chips.com>
Date: Thu, 4 Jun 2026 19:32:20 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 03/12] drm/bridge: synopsys: dw-dp: Simplify driver
 data setting
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Damon Ding <damon.ding@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>,
 Alexey Charkov <alchark@gmail.com>, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, kernel@collabora.com,
 linux-arm-kernel@lists.infradead.org
References: <20260501-synopsys-dw-dp-improvements-v2-0-d7e7f6bac77f@collabora.com>
 <20260501-synopsys-dw-dp-improvements-v2-3-d7e7f6bac77f@collabora.com>
Content-Language: en-US
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20260501-synopsys-dw-dp-improvements-v2-3-d7e7f6bac77f@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-HM-Tid: 0a9e9268059309d8kunmba51a6264c1bb
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkaSxkYVkIeQh4ZGUNNQxhDGlYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=IxM8Rb/I2HY1HFLeGgoTCxr9yMRWq2uCjku9+lyH/eib/AzBDiclBkhnEdoRyaaPTlFEUfrz/eWpdvhOjsfiFG59EBa8a0xBqZ2z8mm1cMQNjrlANczPs4s9KDMWCWIUhYEsabXYKnzCDej+y/axSmo7vmX89rHtVB+LDW95RbM=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=WPG/AsGIP40sCtd85f/8cpoPt3ZPqI9/+Lllb2HF/3o=;
	h=date:mime-version:subject:message-id:from;
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:hjc@rock-chips.com,m:heiko@sntech.de,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:airlied@gmail.com,m:simona@ffwll.ch,m:dmitry.baryshkov@oss.qualcomm.com,m:luca.ceresoli@bootlin.com,m:cristian.ciocaltea@collabora.com,m:damon.ding@rock-chips.com,m:lumag@kernel.org,m:alchark@gmail.com,m:dri-devel@lists.freedesktop.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:kernel@collabora.com,m:linux-arm-kernel@lists.infradead.org,m:jernejskrabec@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[collabora.com,rock-chips.com,sntech.de,linux.intel.com,kernel.org,suse.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se,gmail.com,ffwll.ch,oss.qualcomm.com,bootlin.com];
	FORGED_SENDER(0.00)[andy.yan@rock-chips.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[29];
	TAGGED_FROM(0.00)[bounces-306825-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andy.yan@rock-chips.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[collabora.com,rock-chips.com,kernel.org,gmail.com,lists.freedesktop.org,lists.infradead.org,vger.kernel.org];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,collabora.com:email,vger.kernel.org:from_smtp,rock-chips.com:mid,rock-chips.com:dkim,rock-chips.com:from_mime,rock-chips.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D0E8464017A

Hello,

On 5/1/26 06:20, Sebastian Reichel wrote:
> There is no need to get the platform device just for setting up
> the driver data. Simplify the logic.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

    Reviewed-by: Andy Yan <andy.yan@rock-chips.com>
> ---
>   drivers/gpu/drm/rockchip/dw_dp-rockchip.c | 3 +--
>   1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/dw_dp-rockchip.c b/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
> index 150c2da8fee5..52e956bffb12 100644
> --- a/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
> @@ -74,7 +74,6 @@ static const struct drm_encoder_helper_funcs dw_dp_encoder_helper_funcs = {
>   
>   static int dw_dp_rockchip_bind(struct device *dev, struct device *master, void *data)
>   {
> -	struct platform_device *pdev = to_platform_device(dev);
>   	const struct dw_dp_plat_data *plat_data;
>   	struct drm_device *drm_dev = data;
>   	struct rockchip_dw_dp *dp;
> @@ -87,7 +86,7 @@ static int dw_dp_rockchip_bind(struct device *dev, struct device *master, void *
>   		return -ENOMEM;
>   
>   	dp->dev = dev;
> -	platform_set_drvdata(pdev, dp);
> +	dev_set_drvdata(dev, dp);
>   
>   	plat_data = of_device_get_match_data(dev);
>   	if (!plat_data)
> 


