Return-Path: <devicetree+bounces-281072-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CFcUAGj+xGny5QQAu9opvQ
	(envelope-from <devicetree+bounces-281072-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 10:37:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 4062D332703
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 10:37:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 55F08307E8F2
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 09:31:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 262B7327C0D;
	Thu, 26 Mar 2026 09:30:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="BBz6saw1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m15597.qiye.163.com (mail-m15597.qiye.163.com [101.71.155.97])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6C2325491;
	Thu, 26 Mar 2026 09:30:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=101.71.155.97
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774517443; cv=none; b=SRzvIRRLLlglIIBQnXZ5NydtHhgSO6iV5O5+WiYfGwtagEHWArVXJ7b1JnYjgAOU/7qB2CwaGXNR/cpmiQQ7MgWkJXXaly3e6GYedq/r8HVcXYJUg+m4dVD1UcGA0Xrr+lcGpNdsDrpnCwiwf8Yx4S68cwmN4bIiUC8gkBcc8dA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774517443; c=relaxed/simple;
	bh=wDla5NyAgljsvaMvqYC5JGSoXENcFslDuleW6mXDGwg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZhBNb6ueLTiB6qRUm223BfEGpSdR8GjUoxQzRbGCtuP6UVV7kxImwTjtj32UI4bVyS22PJKxoasbUve7rpeuxDCUX45m5T5I+fC8zHNBhUyrWivVbzvUzgKxStPEDiyFsq13hsSwvKi8MU30Jy+zOAOAQ46HHC9zqFiMQgf4zFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=BBz6saw1; arc=none smtp.client-ip=101.71.155.97
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.43] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3865a941e;
	Thu, 26 Mar 2026 17:15:11 +0800 (GMT+08:00)
Message-ID: <ea1bf890-c4be-4d66-ad26-a6bdb58a9292@rock-chips.com>
Date: Thu, 26 Mar 2026 17:15:11 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/8] drm/bridge: dw-hdmi: document the output_port field
To: Liu Ying <victor.liu@nxp.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Marek Vasut <marex@denx.de>, Stefan Agner <stefan@agner.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@kernel.org>
Cc: "Kory Maincent (TI.com)" <kory.maincent@bootlin.com>,
 =?UTF-8?Q?Herv=C3=A9_Codina?= <herve.codina@bootlin.com>,
 Hui Pu <Hui.Pu@gehealthcare.com>, Ian Ray <ian.ray@gehealthcare.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 dri-devel@lists.freedesktop.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Adam Ford <aford173@gmail.com>,
 Alexander Stein <alexander.stein@ew.tq-group.com>,
 Anson Huang <Anson.Huang@nxp.com>,
 Christopher Obbard <christopher.obbard@linaro.org>,
 Daniel Scally <dan.scally@ideasonboard.com>,
 Emanuele Ghidoli <emanuele.ghidoli@toradex.com>,
 Fabio Estevam <festevam@denx.de>,
 Francesco Dolcini <francesco.dolcini@toradex.com>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 Gilles Talis <gilles.talis@gmail.com>,
 =?UTF-8?B?R29yYW4gUmHEkWVub3ZpxIc=?= <goran.radni@gmail.com>,
 Heiko Schocher <hs@denx.de>,
 Joao Paulo Goncalves <joao.goncalves@toradex.com>,
 Josua Mayer <josua@solid-run.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Marco Felsch <m.felsch@pengutronix.de>,
 Martyn Welch <martyn.welch@collabora.com>,
 Oleksij Rempel <o.rempel@pengutronix.de>, Peng Fan <peng.fan@nxp.com>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Richard Hu <richard.hu@technexion.com>, Shengjiu Wang
 <shengjiu.wang@nxp.com>,
 Stefan Eichenberger <stefan.eichenberger@toradex.com>,
 Vitor Soares <vitor.soares@toradex.com>
References: <20260320-drm-lcdif-dbanc-v1-0-479a04133e70@bootlin.com>
 <20260320-drm-lcdif-dbanc-v1-4-479a04133e70@bootlin.com>
 <050c6532-8122-4ded-9946-3ce1a86d2be0@nxp.com>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <050c6532-8122-4ded-9946-3ce1a86d2be0@nxp.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-HM-Tid: 0a9d296d244d03a3kunm1010b4977b1d91
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGR5OS1ZLSxpMSBpMSh0fGE1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	xVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=BBz6saw1bA1HipARZJu1Th3JeGDhlWRDZM5b3IG6nb6VPuZJDLQA30JTB/X6J79LLkbgUnkqaZqnmMnVOtKWw03gpXLqkD6fTgBZcfRXfa74ymJvbj3O7FKcBLPHT1zk8aZ8xOSoV6SuC+/1g7OjciB+8/8J4m3qKQN1tjIqK4Y=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=hV1UzNvduceK201Bbs4LBHoL7oLLk3YAabMlA/Ugb6M=;
	h=date:mime-version:subject:message-id:from;
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-281072-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[nxp.com,bootlin.com,denx.de,agner.ch,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,pengutronix.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se];
	FREEMAIL_CC(0.00)[bootlin.com,gehealthcare.com,lists.freedesktop.org,lists.linux.dev,lists.infradead.org,vger.kernel.org,gmail.com,ew.tq-group.com,nxp.com,linaro.org,ideasonboard.com,toradex.com,denx.de,kontron.de,solid-run.com,pengutronix.de,collabora.com,technexion.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_GT_50(0.00)[55];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[damon.ding@rock-chips.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,nxp.com:email,bootlin.com:email,rock-chips.com:dkim,rock-chips.com:mid]
X-Rspamd-Queue-Id: 4062D332703
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/26/2026 3:25 PM, Liu Ying wrote:
> Hi Luca,
> 
> On Fri, Mar 20, 2026 at 11:46:15AM +0100, Luca Ceresoli wrote:
>> The meaning of this flag may not be obvious at first sight.
>>
>> Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
>> ---
>>   include/drm/bridge/dw_hdmi.h | 5 +++++
>>   1 file changed, 5 insertions(+)
>>

First of all, these changes related to the DW HDMI controller work well 
when tested on RK3399 HDMI.

>> diff --git a/include/drm/bridge/dw_hdmi.h b/include/drm/bridge/dw_hdmi.h
>> index 336f062e1f9d..45f6ba1a8ee1 100644
>> --- a/include/drm/bridge/dw_hdmi.h
>> +++ b/include/drm/bridge/dw_hdmi.h
>> @@ -126,6 +126,11 @@ struct dw_hdmi_phy_ops {
>>   struct dw_hdmi_plat_data {
>>   	struct regmap *regm;
>>   
>> +	/*
>> +	 * The HDMI output port number (which must be 1) if it is described
> 
> I'd rephrase:
> The HDMI output port number must be 1 ...
> 

Yes, the output port number should be 1, but I found that the output 
port number in the Rockchip-side dw-hdmi driver remains 0.

Therefore, it may be better to adapt the dw-hdmi drivers across all 
platforms to the bridge-connector architecture simultaneously.

This would allow removing &dw_hdmi_plat_data.output_port and unify the 
setting of DRM_BRIDGE_ATTACH_NO_CONNECTOR during the attach stage.
(Just as the Analogix DP driver does [0])

[0] 
https://lore.kernel.org/all/20260319071452.1961274-1-damon.ding@rock-chips.com/

>> +	 * in the device tree. 0 if the device tree does not describe the
>> +	 * next component (legacy mode).
> 
> Maybe be a bit more specific about "legacy mode":
> legacy mode without DRM_BRIDGE_ATTACH_NO_CONNECTOR flag when attaching bridge
> ?
> 
> Reviewed-by: Liu Ying <victor.liu@nxp.com>
> 
>> +	 */
>>   	unsigned int output_port;
>>   
>>   	unsigned long input_bus_encoding;
>>
> 

Best regards,
Damon


