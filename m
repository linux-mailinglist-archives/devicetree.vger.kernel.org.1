Return-Path: <devicetree+bounces-305618-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id EoIOJDvHHmoLVAAAu9opvQ
	(envelope-from <devicetree+bounces-305618-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 14:06:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 647AB62DD3D
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 14:06:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=rock-chips.com header.s=default header.b=QfBoCmyE;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305618-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-305618-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=rock-chips.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DFBAB30094D8
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 12:00:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34DC83D5241;
	Tue,  2 Jun 2026 12:00:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m15567.qiye.163.com (mail-m15567.qiye.163.com [101.71.155.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E7603A1CD;
	Tue,  2 Jun 2026 12:00:34 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780401645; cv=none; b=TILcXiMASvYlpEMJ+zAEhr0PMT4PPnt1RxlYsJxEVGTAwAdUhadYBLT9ksaVX3+ZGpa3cOOXh3z2ITo5UXo2Sz2lJ3gRKpc09Jrcj89wD0ampjoAzpmcXTdD7IpI3IGijKO1lBUJJdTCHMkQFngvX4pjTPh+K5Ru+ZvGAj3c7EM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780401645; c=relaxed/simple;
	bh=R1Qtz+myE/xwKoIirM6+q4bijiMzaKvFps8kxN2Jsik=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iOXYYRx88PiGT1wraS1hcmSFAW5WL6rmAF3J/jZS3P7RuqRDqnyMlKtI5Kg7E4JhYGFeUjsNXz13HzDc+sqcXO6nz9ND9uQzsPNC0ZMmBcPeAkTDAE5HbF3FbUxxaYK+m33vLoxOTtsbcuhRvcDLUmjbLbsCb1th5KxOwMwbm9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=QfBoCmyE; arc=none smtp.client-ip=101.71.155.67
Received: from [172.16.12.90] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 40bc4550f;
	Tue, 2 Jun 2026 16:31:00 +0800 (GMT+08:00)
Message-ID: <4f4ff085-80ae-4144-b040-be9b136574ee@rock-chips.com>
Date: Tue, 2 Jun 2026 16:30:59 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 07/12] drm/rockchip: dw_dp: Implement out-of-band HPD
 handling
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Damon Ding <damon.ding@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>,
 Alexey Charkov <alchark@gmail.com>, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, kernel@collabora.com,
 linux-arm-kernel@lists.infradead.org
References: <20260501-synopsys-dw-dp-improvements-v2-0-d7e7f6bac77f@collabora.com>
 <20260501-synopsys-dw-dp-improvements-v2-7-d7e7f6bac77f@collabora.com>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <20260501-synopsys-dw-dp-improvements-v2-7-d7e7f6bac77f@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-HM-Tid: 0a9e87751e4e03a7kunm8e11791c2d3216
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDQklJVkseS0pITE9KTUtOSFYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=QfBoCmyEgpoenhswOoF/yKeUbTuxC9EVhGvEaAxRGsfG65iwiUWilCqWRkQMXBJJJRpVEwrSs1M1osaREHDbW7weEXveiQmAc1431woQ92hbOWFgBun80jvoxHNSm4sVE50IyzGNKvhAwX5f3PfPxGXAK/ouRy8shvw1IMoYgS4=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=JAIbtg6t1nkmAMDBYVOgCCRD8NVdgH1lo/7QZXXpTgs=;
	h=date:mime-version:subject:message-id:from;
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-305618-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:hjc@rock-chips.com,m:heiko@sntech.de,m:andy.yan@rock-chips.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:airlied@gmail.com,m:simona@ffwll.ch,m:dmitry.baryshkov@oss.qualcomm.com,m:luca.ceresoli@bootlin.com,m:cristian.ciocaltea@collabora.com,m:damon.ding@rock-chips.com,m:lumag@kernel.org,m:alchark@gmail.com,m:dri-devel@lists.freedesktop.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:kernel@collabora.com,m:linux-arm-kernel@lists.infradead.org,m:jernejskrabec@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[chaoyi.chen@rock-chips.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaoyi.chen@rock-chips.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[rock-chips.com,sntech.de,linux.intel.com,kernel.org,suse.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se,gmail.com,ffwll.ch,oss.qualcomm.com,bootlin.com,collabora.com,lists.freedesktop.org,lists.infradead.org,vger.kernel.org];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,collabora.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 647AB62DD3D

Hi Sebastian,

On 5/1/2026 6:20 AM, Sebastian Reichel wrote:
> Implement out-of-band hotplug handling, which will be used to receive
> external hotplug information from the USB-C state machine. This is
> currently handled by the USBDP PHY, which brings quite some trouble
> as the register being accessed requires the power-domain from the DP
> controller and also requires custom TypeC HPD info parsing in the
> USBDP PHY driver.
> 
> In contrast to the USBDP PHY this does not just enable the hotplug
> signal when a DP AltMode capable adapter is plugged in, but instead
> properly detects if a cable is plugged in for things like USB-C to
> HDMI adapters.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

[...]

> +static void dw_dp_rockchip_hpd_sw_cfg(void *data, bool hpd)
> +{
> +	struct rockchip_dw_dp *dp = data;
> +	u32 hpd_reg = dp->pdata->hpd_reg[dp->id];
> +
> +	dev_dbg(dp->dev, "Force HPD connected=%s\n", str_yes_no(hpd));
> +
> +	dp->hpd_cfg = hpd;
> +
> +	regmap_write(dp->vo_grf, hpd_reg,
> +		     FIELD_PREP_WM16_CONST(ROCKCHIP_VO_GRF_DP_SINK_HPD_CFG, dp->hpd_cfg));

FIELD_PREP_WM16() should be used here because "dp->hpd_cfg" is not a
constant expression.

Other patches in this series have similar issues. Doesn't your compiler
warn you about this? Thanks.

-- 
Best, 
Chaoyi

