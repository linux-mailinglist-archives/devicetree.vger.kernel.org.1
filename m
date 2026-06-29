Return-Path: <devicetree+bounces-316602-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BgHaH3zKQWrUuQkAu9opvQ
	(envelope-from <devicetree+bounces-316602-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 03:29:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 334646D5678
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 03:29:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=rock-chips.com header.s=default header.b=bc5KtQ7U;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316602-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-316602-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=rock-chips.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F0578300C016
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 01:29:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1419F34F48A;
	Mon, 29 Jun 2026 01:29:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m8236.xmail.ntesmail.com (mail-m8236.xmail.ntesmail.com [156.224.82.36])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDF2133F38A;
	Mon, 29 Jun 2026 01:29:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782696567; cv=none; b=m8ny3IxHHk1A21C6gBtf0oeOs35ZVmAkazW2Q5/WfIDbGhPw1i/sbKIEt0nj9irHf3XhGOklXOhdC1dxp0qJa3P5JUiCf3U7vnuxiXj7JjD+QMOkBWqokV3dGQ4K6YbkxzqeBuzVYp5PeePvjtWlU3mylKB/HqlPE1c9+tqaaJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782696567; c=relaxed/simple;
	bh=wWFAIF0zuz8Dkz8Wdr5+B1vXQREN9qit4lZfDgy2Uno=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=K0rpk9a4BOGdPe036XkYJpvwKC2cGq9JtOBngem/hoJwa9fefmaemomAaM3wrfQrEsFwqO/aXv/091JIrDCQ35wV6V7bqH1KdYHz8iR0AhygAwaK0+Z0CnfEaweAhb2USpVlsKPDfIcH85/28eXxgXz5hEGvoiMGLx/jN2hnERA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=bc5KtQ7U; arc=none smtp.client-ip=156.224.82.36
Received: from [172.16.12.90] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4413e3e2e;
	Mon, 29 Jun 2026 09:29:10 +0800 (GMT+08:00)
Message-ID: <56c6abb8-c127-449f-9368-12f94620c2bc@rock-chips.com>
Date: Mon, 29 Jun 2026 09:29:08 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v15 1/9] drm/bridge: Implement generic USB Type-C DP HPD
 bridge
To: Xu Yang <xu.yang_2@oss.nxp.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: Chaoyi Chen <kernel@airkyi.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Peter Chen <hzpeterchen@gmail.com>, Luca Ceresoli
 <luca.ceresoli@bootlin.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 Yubing Zhang <yubing.zhang@rock-chips.com>,
 Frank Wang <frank.wang@rock-chips.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Amit Sunil Dhamne <amitsd@google.com>, Dragan Simic <dsimic@manjaro.org>,
 Johan Jonker <jbx6244@gmail.com>, Diederik de Haas <didi.debian@cknow.org>,
 Peter Robinson <pbrobinson@gmail.com>, Hugh Cole-Baker <sigmaris@gmail.com>,
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 dri-devel@lists.freedesktop.org
References: <20260304094152.92-1-kernel@airkyi.com>
 <20260304094152.92-2-kernel@airkyi.com>
 <erx73m2ueuvbzjteadjli6aki5by4pr3hyertkkqqoqwhaa4v3@5cstmshcercx>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <erx73m2ueuvbzjteadjli6aki5by4pr3hyertkkqqoqwhaa4v3@5cstmshcercx>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-HM-Tid: 0a9f10fea08b03a7kunmf966b99e214af0
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkaSBgaVhpDH0kaHhhKTh4ZTlYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=bc5KtQ7UrGKUA1rijDG/0B4GnAe4Tbk7iG+1XzHoKWSacIyQrLgRn/wZx/UCpNfTXWV4YMlY+zS699AajY0KFrqU8mPgVl3OdvBTceFp8y15yVHWma3EgFqkkQYhFlnRAVXl6lg8VchEaO+B6yHrFQ3CnqvDkdKPMtnFtZ92LDI=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=7rX64/yu/OhWoqaAPGRmOa806yP0CYEXLXKtENt1Bg4=;
	h=date:mime-version:subject:message-id:from;
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-316602-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[chaoyi.chen@rock-chips.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[41];
	FORGED_RECIPIENTS(0.00)[m:xu.yang_2@oss.nxp.com,m:heikki.krogerus@linux.intel.com,m:kernel@airkyi.com,m:gregkh@linuxfoundation.org,m:dmitry.baryshkov@oss.qualcomm.com,m:hzpeterchen@gmail.com,m:luca.ceresoli@bootlin.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:vkoul@kernel.org,m:kishon@kernel.org,m:heiko@sntech.de,m:hjc@rock-chips.com,m:andy.yan@rock-chips.com,m:yubing.zhang@rock-chips.com,m:frank.wang@rock-chips.com,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:amitsd@google.com,m:dsimic@manjaro.org,m:jbx6244@gmail.com,m:didi.debian@cknow.org,m:pbrobinson@gmail.com,m:sigmaris@gmail.com,m:linux-usb@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-phy@lists.infradead.org,m:linux-arm-kernel@lists.infradead.
 org,m:linux-rockchip@lists.infradead.org,m:dri-devel@lists.freedesktop.org,m:krzk@kernel.org,m:conor@kernel.org,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaoyi.chen@rock-chips.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[airkyi.com,linuxfoundation.org,oss.qualcomm.com,gmail.com,bootlin.com,kernel.org,sntech.de,rock-chips.com,intel.com,linaro.org,ideasonboard.com,kwiboo.se,linux.intel.com,suse.de,ffwll.ch,google.com,manjaro.org,cknow.org,vger.kernel.org,lists.infradead.org,lists.freedesktop.org];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,rock-chips.com:dkim,rock-chips.com:email,rock-chips.com:mid,rock-chips.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 334646D5678

Hello Xu Yang,

On 6/26/2026 7:15 PM, Xu Yang wrote:
> On Wed, Mar 04, 2026 at 05:41:44PM +0800, Chaoyi Chen wrote:
>> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
>>
>> The HPD function of Type-C DP is implemented through
>> drm_connector_oob_hotplug_event(). For embedded DP, it is required
>> that the DRM connector fwnode corresponds to the Type-C port fwnode.
>>
>> To describe the relationship between the DP controller and the Type-C
>> port device, we usually using drm_bridge to build a bridge chain.
>>
>> Now several USB-C controller drivers have already implemented the DP
>> HPD bridge function provided by aux-hpd-bridge.c, it will build a DP
>> HPD bridge on USB-C connector port device.
>>
>> But this requires the USB-C controller driver to manually register the
>> HPD bridge. If the driver does not implement this feature, the bridge
>> will not be create.
>>
>> So this patch implements a generic DP HPD bridge based on
>> aux-hpd-bridge.c. It will monitor Type-C bus events, and when a
>> Type-C port device containing the DP svid is registered, it will
>> create an HPD bridge for it without the need for the USB-C controller
>> driver to implement it.
>>
>> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
>> Reviewed-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
>> ---
>>
>> (no changes since v14)
>>
>> Changes in v13:
>> - Only register drm dp hpd bridge for typec port altmode device.
>>
>> (no changes since v12)
>>
>> Changes in v11:
>> - Switch to using typec bus notifiers.
>>
>> (no changes since v10)
>>
>> Changes in v9:
>> - Remove the exposed DRM_AUX_HPD_BRIDGE option, and select
>> DRM_AUX_HPD_TYPEC_BRIDGE when it is available.
>> - Add more commit comment about problem background.
>>
>> Changes in v8:
>> - Merge generic DP HPD bridge into one module.
>> ---
>>
>>  drivers/gpu/drm/bridge/Kconfig                | 10 ++++
>>  drivers/gpu/drm/bridge/Makefile               |  1 +
>>  .../gpu/drm/bridge/aux-hpd-typec-dp-bridge.c  | 49 +++++++++++++++++++
>>  3 files changed, 60 insertions(+)
>>  create mode 100644 drivers/gpu/drm/bridge/aux-hpd-typec-dp-bridge.c
>>
>> diff --git a/drivers/gpu/drm/bridge/Kconfig b/drivers/gpu/drm/bridge/Kconfig
>> index a250afd8d662..559487aa09a9 100644
>> --- a/drivers/gpu/drm/bridge/Kconfig
>> +++ b/drivers/gpu/drm/bridge/Kconfig
>> @@ -30,6 +30,16 @@ config DRM_AUX_HPD_BRIDGE
>>  	  Simple bridge that terminates the bridge chain and provides HPD
>>  	  support.
>>  
>> +if DRM_AUX_HPD_BRIDGE
>> +config DRM_AUX_HPD_TYPEC_BRIDGE
>> +	tristate
>> +	depends on TYPEC || !TYPEC
>> +	default TYPEC
>> +	help
>> +	  Simple bridge that terminates the bridge chain and provides HPD
>> +	  support. It build bridge on each USB-C connector device node.
>> +endif
>> +
> 
> Should CONFIG_TYPEC_DP_ALTMODE select this one? Otherwise, we need to do it
> manually.
> 
> $ grep -nr --include=Kconfig "select DRM_AUX_HPD_BRIDGE" .
> ./drivers/soc/qcom/Kconfig:118: select DRM_AUX_HPD_BRIDGE
> ./drivers/usb/typec/ucsi/Kconfig:88:    select DRM_AUX_HPD_BRIDGE if DRM_BRIDGE && OF
> ./drivers/usb/typec/ucsi/Kconfig:99:    select DRM_AUX_HPD_BRIDGE if DRM_BRIDGE && OF
> ./drivers/usb/typec/tcpm/Kconfig:62:    select DRM_AUX_HPD_BRIDGE if DRM_BRIDGE && OF
> ./drivers/usb/typec/tcpm/Kconfig:85:    select DRM_AUX_HPD_BRIDGE if DRM_BRIDGE && OF
> 

That's a fair point. But based on the previous discussion, Heikki
point out that configurations in the TYPEC subsystem should not
select configurations from DRM.

-- 
Best, 
Chaoyi

