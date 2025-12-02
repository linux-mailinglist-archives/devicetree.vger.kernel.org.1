Return-Path: <devicetree+bounces-243693-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 54857C9B50B
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 12:28:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B6B15347A4F
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 11:28:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61326307499;
	Tue,  2 Dec 2025 11:28:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rootcommit.com header.i=@rootcommit.com header.b="Xsv1k17d"
X-Original-To: devicetree@vger.kernel.org
Received: from black.elm.relay.mailchannels.net (black.elm.relay.mailchannels.net [23.83.212.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3857B2FDC4B
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 11:28:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=23.83.212.19
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764674935; cv=pass; b=hmn8g1s++ruJeB20/FQl8N7J6QK7NKhFFgimj6KEH3iH2POFGFsxjRmXwwxqqGhyjctaX09McoxRsOAOW0JoMLljrETKnWcZX/tL86EtMUd+iCSMnVKsdR7kVApy41v2PjDysuT3Ymaf8Fvi8yiwp38xWOsbjKy3Qjx+kipaKaI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764674935; c=relaxed/simple;
	bh=Vz6ydTCrdebqiFwp3artNDiqXEPcVMkN8/MtXZ+EIF8=;
	h=Message-ID:MIME-Version:Cc:Subject:To:References:From:In-Reply-To:
	 Content-Type:Date; b=BPspadLoGdzx2mthTlqCB+BdgGQ/iWjfBtPvDTVYdPNRPHkppay83oI/z7j0oMr4C7+hJI5F2IQT9OyGr1KaWXkLeQ08Mp/h3vMto6t0lBQ2ef0c3Hc+oL9zjcoAqbeBjsMPopDSbsVM+As9RF8BvMJ6m2WnxmTw0JiCdOiclno=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rootcommit.com; spf=pass smtp.mailfrom=rootcommit.com; dkim=pass (2048-bit key) header.d=rootcommit.com header.i=@rootcommit.com header.b=Xsv1k17d; arc=pass smtp.client-ip=23.83.212.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rootcommit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rootcommit.com
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 4A5517E1758;
	Tue, 02 Dec 2025 08:30:35 +0000 (UTC)
Received: from fr-int-smtpout18.hostinger.io (100-102-148-76.trex-nlb.outbound.svc.cluster.local [100.102.148.76])
	(Authenticated sender: hostingeremail)
	by relay.mailchannels.net (Postfix) with ESMTPA id 8B8E87E0C6B;
	Tue, 02 Dec 2025 08:30:30 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; d=mailchannels.net; s=arc-2022; cv=none;
	t=1764664233;
	b=S2ei4NX/OmcW4uVDFwUgy7GgGLoJMZ+8CsEQ2gqdVQVI0IhqpLD0BlDQ84r23TZE1j71Rg
	RVlK3c/g5NC7zrJrNo+p9J6+VTKUtLPg3RCWolCfcZ+GXkr7dzAhs4MJ/rLK7gyGEsZxhi
	IkkVeZv4/xblq4Hi+2Ko68VcoTvbp6wubrW9C7JSyEn/OJNHizJ6vxYXJq6pEI0rf2dDM9
	EE/417+SS+7s6eddykWIm0zasLGGjpVEuPB3TMoobuQKM5vvtuODt9R3fAF6B6yaIZ/R31
	Izm4v99/AEmRjTR564PqsLi67wdmx+fSytltZKnfvZhn1voLM8Sd/a1tlY2RwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net;
	s=arc-2022; t=1764664233;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=Ley75SWwtYUQSOKfKl89nrvKpkM8jSi+DitKAkjfpXc=;
	b=nR+f8gccN1PptNZumFywrW9sX78Vtp5FhP37RuANd/BquiBFzPuaA8F7awP1+Rbn5WEBbQ
	hdfSvDUjg/LF1ypv3q1cFvslu4ONmxl9bF1RhlTF1vID9eNXWNujUpc33W7uNsJPqfhT0n
	gtW91gg7PJQHmPf8/xW4vdQ/s3SdMSwP0IkUeNZmWb+OCHKIno5r8Q4fCyjarKw3f2v5cH
	t9JJNNezi0c9+ABZpKVz+XlNdsoFwCp0W/Vo0gLxXnQaztQQHgIxDwliss42wtJ3UaAVWL
	6FzoKZan1zAHLu4sNGka9qz3IyYGX9J2vyiQ5ov0s6tsje0JMo2wLd4/R/xYwg==
ARC-Authentication-Results: i=1;
	rspamd-789b768497-lcglk;
	auth=pass smtp.auth=hostingeremail
 smtp.mailfrom=michael.opdenacker@rootcommit.com
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MC-Relay: Neutral
X-MailChannels-SenderId:
 hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MailChannels-Auth-Id: hostingeremail
X-Shrill-Name: 73399b740a6afbc2_1764664233808_3913982712
X-MC-Loop-Signature: 1764664233808:3088935135
X-MC-Ingress-Time: 1764664233807
Received: from fr-int-smtpout18.hostinger.io (fr-int-smtpout18.hostinger.io
 [148.222.54.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
	by 100.102.148.76 (trex/7.1.3);
	Tue, 02 Dec 2025 08:30:33 +0000
Received: from [IPV6:2001:861:4450:d360:6e8e:ae36:2a62:da44] (unknown [IPv6:2001:861:4450:d360:6e8e:ae36:2a62:da44])
	(Authenticated sender: michael.opdenacker@rootcommit.com)
	by smtp.hostinger.com (smtp.hostinger.com) with ESMTPSA id 4dLDVW3DZsz1yT0;
	Tue,  2 Dec 2025 08:30:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rootcommit.com;
	s=hostingermail-a; t=1764664228;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Ley75SWwtYUQSOKfKl89nrvKpkM8jSi+DitKAkjfpXc=;
	b=Xsv1k17dijSH1AujkcVhV9riqthenO4qWP925KQnlIAiYKb/vlLFLhkDz3xUiEwQE3RAQ8
	fVRrt4WFtS60zS2icyYpkpceDuUI8n6hsssBOMU+YxIOA4d4NnQlx9LB98bSB4freC7VkT
	x60g4XshEj9zQe3eSH2GDQbTIAzoy2ym8z3LhX7Ds7jcV22nMfmChWSzzuT0j/WJJySX8O
	YgUkR0z9CeoMG9LfCpOr3j0OJUId14Sy2O9u4H4qY6X4DaF6qCrE55ESf0OdtQq0NNPGFQ
	WojWTjcyJX40cQAWRjDk2XlCdhqYtHCr90Es/kf8qMdWc3/1NLU72Oz/hTOJAQ==
Message-ID: <39d3d988-f436-4b31-a130-c65dc292c469@rootcommit.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: michael.opdenacker@rootcommit.com, joseph.kogut@gmail.com,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 quentin.schulz@cherry.de, jonas@kwiboo.se, kever.yang@rock-chips.com,
 i@next.chainsx.cn, honyuenkwun@gmail.com, inindev@gmail.com,
 dsimic@manjaro.org, pbrobinson@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [RESEND PATCH v5 3/3] arm64: dts: rockchip: Add support for CM5
 IO carrier
To: FUKAUMI Naoki <naoki@radxa.com>, heiko@sntech.de
References: <20251202052702.155523-1-naoki@radxa.com>
 <20251202052702.155523-4-naoki@radxa.com>
Content-Language: en-US, fr
From: Michael Opdenacker <michael.opdenacker@rootcommit.com>
Organization: Root Commit
In-Reply-To: <20251202052702.155523-4-naoki@radxa.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Date: Tue,  2 Dec 2025 08:30:27 +0000 (UTC)
X-CM-Envelope: MS4xfMVsaxLMQxhbfY1aQPxhV+2OytAy48JdzdZbV3z/AV9eqlX6mjIh7wVb1B00wtpl8otMOf/akXI1Emq2GyJbYjmfLSXcsxIRFSTgBPoWKOtBLMKK/fU7 XDzI85DUM2GkB5bzeV+T8OanX22lAT5Wtyu05xnjCq4ECmIwZ4UCtLCukeYGVUM9N8ML1MCUTpxdq+OpLZYew0N4bI8E/Grs1Bym4YvtdjXuFuYa2QGmHbiG QbVUnoHdFXyulZ+gg2cMGosLBfns1RlIR0m2n6p895400zOyV+rEtY+YThaS/ZHMgho9rVaTsBSKUOiQxLX/cE72AjHjF/EX26vWDvnpTFU6nY4+CizpRx8x 1MR9rk//AWuyIcpIOHEpPScE66ZzjOZdZJi4rMM9v/fa7Qf3ewRxe8BloQJpA3zBA9wyKpOmawGm9qxXRojZefCMxFF3NVWQV1Ft2XHXKVRdugRsKjmuknLs EtUq9ER2ARkXh+XQFeB5rWNEZVCISgXaBjXEZ7LyQb3pjeyQZYBqXE/UkLYRuuIkNtlVnymjyNMHL6oe5keclqrC5XJfGSYlu9hIDzWnWlP1ND0WXK+7GqZG Sut4dRnSz9Mbix+EzFaxE92/6+CrJiaTpWdalI/3Ji0TBBJLsAprVd8fy8l5yNo8w5uiNlOOyjuuEpc1wyJU9nuZUggVVKPI1f3Ll0WSp95yvkqZXtkSpv7x m2Ikn6VqDDI62PhL9THcDa1WOMeqJaRX/lsKwgcX+eeE+SfYXbjLQmyuFfBxQqgzJce28bihJ6eArAhSSPlYtoc7jwu/dUFLuEadDyokW/WfK2mEFf0XOc1k XZCKpWWcHb+MAZ7j0kk=
X-CM-Analysis: v=2.4 cv=GbNFnhXL c=1 sm=1 tr=0 ts=692ea3a4 a=6so7Vy82K7yOKamN0HWF1Q==:617 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=d70CFdQeAAAA:8 a=pGLkceISAAAA:8 a=ksxQWNrZAAAA:8 a=ao2VnssSHDEXJ7ABfRsA:9 a=QEXdDO2ut3YA:10 a=NcxpMcIZDGm-g932nG_k:22 a=l7WU34MJF0Z5EO9KEJC3:22
X-AuthUser: michael.opdenacker@rootcommit.com

Hi Naoki,

Thanks for the patch update!

On 12/2/25 06:27, FUKAUMI Naoki wrote:
> From: Joseph Kogut <joseph.kogut@gmail.com>
>
> From: Joseph Kogut <joseph.kogut@gmail.com>
>
> Specification:
> - 1x HDMI
> - 2x MIPI DSI
> - 2x MIPI CSI
> - 1x eDP
> - 1x M.2 E key
> - 1x USB 3.0 Host
> - 1x USB 3.0 OTG
> - 2x USB 2.0 Host
> - Headphone jack w/ microphone
> - Gigabit Ethernet w/ PoE
> - microSD slot
> - 40-pin expansion header
> - 12V DC
>
> Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
> Rebased on linux-next 20251201, no change.
> ---
>   arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>   .../dts/rockchip/rk3588s-radxa-cm5-io.dts     | 486 ++++++++++++++++++
>   2 files changed, 487 insertions(+)
>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5-io.dts
>
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index dbdda9783e93..697808b544d8 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -210,6 +210,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-odroid-m2.dtb
>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-orangepi-5.dtb
>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-orangepi-5b.dtb
>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-roc-pc.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-radxa-cm5-io.dtb
>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-rock-5a.dtb
>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-rock-5c.dtb

Small nitpick...
The file names are alphanumerically ordered in this file.
You should have rk3588s-radxa-cm5-io.dtb before rk3588s-roc-pc.dtb.

Cheers
Michael.

-- 
Michael Opdenacker
Root Commit
Yocto Project and OpenEmbedded Training course - Learn by doing:
https://rootcommit.com/training/yocto/


