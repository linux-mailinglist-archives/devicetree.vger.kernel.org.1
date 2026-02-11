Return-Path: <devicetree+bounces-264796-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YD4KEcmUjGlIrQAAu9opvQ
	(envelope-from <devicetree+bounces-264796-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 15:40:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2881254EE
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 15:40:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 303ED300D162
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 14:40:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1359F1FDA92;
	Wed, 11 Feb 2026 14:40:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="ZGyScfI7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m3296.qiye.163.com (mail-m3296.qiye.163.com [220.197.32.96])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 745992C11E1;
	Wed, 11 Feb 2026 14:40:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.96
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770820805; cv=none; b=ONNzZxZ4HxDlIdUgMY+YbW8UdqtS/TBz+bNhx7PM1z1PbOrDpae4cXNoLqO8RElN+XljNJt+VtzHXd6YO/yMIq7fjbvBt2YTP1BO7jErkWEQjxqxCUZT/4tBD/EjSRZCDCaNTbmGsImcgRlpu526SpNaABmpRcKaZr7vjjdveWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770820805; c=relaxed/simple;
	bh=URVyB8RrPwXiiiW3LJ7u+j4fw/b2mC4jWGMw1C1dSLk=;
	h=Cc:Subject:To:References:From:Message-ID:Date:MIME-Version:
	 In-Reply-To:Content-Type; b=iXxaAhib1hqv33mC4M2iu9vHsJDn9s/KHIttgbvkPa3Lxg0Bf7Y9mmA8qmH6c2yWC0A4UFCUPDd7s5u0Vllt7pFtJ+gF7JQSs3plYWJxHb1D4cPYQaPaM+Imn9bv9xugBFWvrrRFxj64t3sWOzsGFTCELWwM3g34pQFiXPwY73g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=ZGyScfI7; arc=none smtp.client-ip=220.197.32.96
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 33e08660a;
	Wed, 11 Feb 2026 22:04:26 +0800 (GMT+08:00)
Cc: shawn.lin@rock-chips.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, heiko@sntech.de, linux-mmc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Fabio Estevam <festevam@nabladev.com>
Subject: Re: [PATCH v2] dt-bindings: mmc: rockchip-dw-mshc: Add RV1103B
 compatible
To: Fabio Estevam <festevam@gmail.com>, ulf.hansson@linaro.org
References: <20260207131041.2833840-1-festevam@gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <181120ce-2ba5-ff20-951b-e6b5d65995ae@rock-chips.com>
Date: Wed, 11 Feb 2026 22:04:23 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20260207131041.2833840-1-festevam@gmail.com>
Content-Type: text/plain; charset=gbk; format=flowed
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9c4d047de109cckunmb311f1781114cd
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkNOHVZISEwfSEwdTU4eGEJWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=ZGyScfI7bU8+1wFbfFPm+PUfnmYts3g9ia1xMhf6BsC3CuveXH69Oje5KEL3ofp+9a0JuboGgq6qSLqYO+KwUmGiAfR/ApfzA/FXB10M4V9yYBFepmcL76bLyuBRBpKyV3BE1pW5QFnFbEYFmjqGox7JtVBfjad3rbJa74D8v0A=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=eZbiOdABFeV6km7MW+Bf453bvMNUUhmLzSEIjWFy8dI=;
	h=date:mime-version:subject:message-id:from;
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264796-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,linaro.org];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shawn.lin@rock-chips.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,rock-chips.com:mid,rock-chips.com:dkim,rock-chips.com:email,nabladev.com:email]
X-Rspamd-Queue-Id: 6F2881254EE
X-Rspamd-Action: no action

ÔÚ 2026/02/07 ÐÇÆÚÁù 21:10, Fabio Estevam Ð´µÀ:
> From: Fabio Estevam <festevam@nabladev.com>
> 
> The RV1103B uses the DesignWare MSHC controller compatible with the
> existing Rockchip RK3288 variant. Add the rockchip,rv1103b-dw-mshc
> compatible string.
> 
> Signed-off-by: Fabio Estevam <festevam@nabladev.com>

Reviewed-by: Shawn Lin <shawn.lin@rock-chips.com>

> ---
> Changes since v1:
> - Make commit log more concise.
> 
>   Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> index acb9fb9a92cd..a75209bd2710 100644
> --- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> @@ -43,6 +43,7 @@ properties:
>                 - rockchip,rk3562-dw-mshc
>                 - rockchip,rk3568-dw-mshc
>                 - rockchip,rk3588-dw-mshc
> +              - rockchip,rv1103b-dw-mshc
>                 - rockchip,rv1108-dw-mshc
>                 - rockchip,rv1126-dw-mshc
>             - const: rockchip,rk3288-dw-mshc
> 

