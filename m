Return-Path: <devicetree+bounces-279016-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oFMvGbATwWnkQQQAu9opvQ
	(envelope-from <devicetree+bounces-279016-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 11:19:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C61BB2EFE2E
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 11:19:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 42573301BD53
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 10:11:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECD6F38A734;
	Mon, 23 Mar 2026 10:11:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="Fko7vEm8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m1973192.qiye.163.com (mail-m1973192.qiye.163.com [220.197.31.92])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F3438552C;
	Mon, 23 Mar 2026 10:11:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.92
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774260674; cv=none; b=XTqZzj2tOsf3RPuLhHqkAVacK7YM3duFEVYh/MAi6CiIQJdxR9T4y/ZCWMJxfXij5ZA7VMjtZIKrmH1E0kQeoloYhjQRr0YBDH8JPeXMlGYHdTTAfqkjDwP+uDItoLiiifmIe4I0O+d76C0vPwoIMoppoWDct6jild12/hTP+kE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774260674; c=relaxed/simple;
	bh=yKG8ZW2zGLq6YF4S9Hev2SNAZWQM9/EOqnbhR6kvr90=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JcNk9LxuabNDKJU8PXvxUHWvBgtt3eaEFif+oMgMGhPXDElrTa5LeXC/UdEu9jEbNI2W3fcWUfgziJCKbfohWA+hD7oPlyylpW63Fyt+XMlSP2NndVUGpG+iKiuaELkq0OTIIUMl8jm5yHdiSZSNrEXSzC+GH3nf7aCY15FLeLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=Fko7vEm8; arc=none smtp.client-ip=220.197.31.92
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.43] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 37f14d637;
	Mon, 23 Mar 2026 18:05:53 +0800 (GMT+08:00)
Message-ID: <170a22d3-f1d6-4f71-97ca-db3edf689d93@rock-chips.com>
Date: Mon, 23 Mar 2026 18:05:53 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/9] dt-bindings: display: rockchip: analogix-dp:
 Expand clock-names "hclk" for the third clock
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, andrzej.hajda@intel.com, neil.armstrong@linaro.org,
 rfoss@kernel.org, Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, nicolas.frattaroli@collabora.com,
 alchark@gmail.com, cristian.ciocaltea@collabora.com,
 sebastian.reichel@collabora.com, kever.yang@rock-chips.com,
 heiko.stuebner@cherry.de, tomeu@tomeuvizoso.net, amadeus@jmu.edu.cn,
 michael.riesch@collabora.com, didi.debian@cknow.org,
 dmitry.baryshkov@oss.qualcomm.com, luca.ceresoli@bootlin.com,
 dianders@chromium.org, m.szyprowski@samsung.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260319104031.1986946-1-damon.ding@rock-chips.com>
 <20260319104031.1986946-2-damon.ding@rock-chips.com>
 <20260320-amusing-magnetic-harrier-20cc40@quoll>
 <311d143b-cc78-465e-9be2-0a9a0a33ea0b@kernel.org>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <311d143b-cc78-465e-9be2-0a9a0a33ea0b@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9d1a28788303a3kunmafb06323593c9f
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGh5CSVZIHU0ZQxpKH0wdSkhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=Fko7vEm8qr/yM2Scx5aIktLIO/rsbKX9HQLG3hxzupnw8xra/FYMjlKPI2owJHEspyFJD+ms/U9DaO5WfmxhCm2w1GQVeKDGIM+SQNwMZMvzBNT1QbEO9S3xjsmMIMpH/LWoSgi9tGb7pVcciBKkTO5ljMPe4juXCYwDkDNEcL8=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=qCbZ2f0Kcl+hC4CPhtXEDMfwP+rqGeU660PawdGL7lw=;
	h=date:mime-version:subject:message-id:from;
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-279016-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[37];
	FREEMAIL_CC(0.00)[rock-chips.com,sntech.de,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,linaro.org,ideasonboard.com,kwiboo.se,collabora.com,cherry.de,tomeuvizoso.net,jmu.edu.cn,cknow.org,oss.qualcomm.com,bootlin.com,chromium.org,samsung.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[damon.ding@rock-chips.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,rock-chips.com:dkim,rock-chips.com:email,rock-chips.com:mid]
X-Rspamd-Queue-Id: C61BB2EFE2E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Krzysztof,

On 3/20/2026 5:41 PM, Krzysztof Kozlowski wrote:
> On 20/03/2026 10:19, Krzysztof Kozlowski wrote:
>> On Thu, Mar 19, 2026 at 06:40:23PM +0800, Damon Ding wrote:
>>> The RK3588 eDP controller needs the video datapath clock "hclk" to work
>>> well. Previously, it works without explicitly adding this clock because
>>> the 'rockchip,vo-grf = <&vo1_grf>' property implicitly enables HCLK_VO1.
>>>
>>> Fixes: f855146263b1 ("dt-bindings: display: rockchip: analogix-dp: Add support for RK3588")
>>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>>> ---
> 
> BTW, all your patches (this and previous set... actually, everything you
> ever sent IIRC) end up marked as spam. I don't see anything in the
> headers pointing to the issue. There is no score assigned and
> DMARC+SPF+DKIM pass.
> 
> However it seems you are using @rock-chips.com and SMTP server 163.com,
> so maybe that difference. Or maybe it is rock-chips lack of DMARC policy
> (p=none dis=none)?
> 
> Regardless of the reason, if you do not ever receive answers from
> people, it is likely that is the reason.
> 
> 

Thank you for the kind heads-up! And I’m sorry for the extra work you 
have to go through checking the spam folder.

It looks like I really need to have a good talk with our IT team about this.

Thanks again for letting me know — much appreciated!

Best regards,
Damon


