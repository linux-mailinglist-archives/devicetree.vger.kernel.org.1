Return-Path: <devicetree+bounces-240088-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D01C6D3A0
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 08:48:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 478734EF933
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 07:43:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EDBE2E4258;
	Wed, 19 Nov 2025 07:43:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rootcommit.com header.i=@rootcommit.com header.b="Mi5f0Aim"
X-Original-To: devicetree@vger.kernel.org
Received: from panther.cherry.relay.mailchannels.net (panther.cherry.relay.mailchannels.net [23.83.223.141])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8F622E090B;
	Wed, 19 Nov 2025 07:43:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=23.83.223.141
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763538230; cv=pass; b=a5mzM4c/2g1UkuVkOEbdqT6HI10j52WeU7UJykC+w9DmnBpOuxjYFdH5AjkWzYTbwMpZZnFlT/txn/kuFsQrVpjYdxE6RJGGwyltfnW8sY7cTc8QUBUUUn4cBF3rXJYCdCqlmrcnMYeCLFbUQ4NY52N2lXeqAoTguautfc0HncI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763538230; c=relaxed/simple;
	bh=rrR5KPdyxt6EWEr863CISEakBVv6kuR5Gw61RuYyOmU=;
	h=Message-ID:MIME-Version:Cc:Subject:To:References:From:In-Reply-To:
	 Content-Type:Date; b=AE9aa5UYgTxvfXrDQLWyRV0ayXosk1J0R8MbG9Svi6AVBaubiKbS6mSXMadGFlYEZogttIZQ0w8Ouv0Sw3lnxw48p3WX6rSsmnAyyUMVVCkK90hKKtSpbXljHq4nyhJHNj5hKhyejgnA1GgGrjg4H6gfHtSzGAse7YfbPe5b6lI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rootcommit.com; spf=pass smtp.mailfrom=rootcommit.com; dkim=pass (2048-bit key) header.d=rootcommit.com header.i=@rootcommit.com header.b=Mi5f0Aim; arc=pass smtp.client-ip=23.83.223.141
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rootcommit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rootcommit.com
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id BBC99561A1A;
	Wed, 19 Nov 2025 07:25:41 +0000 (UTC)
Received: from de-fra-smtpout2.hostinger.io (100-99-165-60.trex-nlb.outbound.svc.cluster.local [100.99.165.60])
	(Authenticated sender: hostingeremail)
	by relay.mailchannels.net (Postfix) with ESMTPA id 505CF561D5C;
	Wed, 19 Nov 2025 07:25:39 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; d=mailchannels.net; s=arc-2022; cv=none;
	t=1763537141;
	b=SXZOMk+mLUWVr9hiGJDiD5WPGgaLnW2Korsd+tFcb4IodW4xwQAplgaRrEGjT+frbzFgV5
	eEXrpkrjoA/ggggVfMxotbmHhT8Ds5xT2plkORDQRXdrzueCT8TjPcvaoAkl/k4cbiVRsy
	X0qqGV0kzKiPSDOqjFKnmTfJvSoR0wtESjat93YZds/PKosoRxFuKs3RdYSodNgzVNtRSz
	AWO1bUytSZoz0HeG9MlhHCYmXRBnI+kxmPF/34ZAkYV3qw3G+lp7561BlT6AbUL08ZVYp0
	6Ywn5FOQzwggp2jkD994lV2v3twFE9kMun7OjxCA1nx2j/KjqZ0zYdgQR8/2eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net;
	s=arc-2022; t=1763537141;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=49vW6mKGN2/Z4O8Jgy0czTepb6Rq/WdAgbHJY2d7Qmw=;
	b=ChnunEDyH1e6JnKFkJstIGNayHR9ranHtJxPpB8xUSX1MG3eihu1U3U2qcL7BsFzChghDi
	GZo80jblETorS3Tks5y1D1mbriTh+YAk9lYoqNVJCh4bPC/XaMiENX+8JEes8D0Bd1DT81
	a/ZIbXlwEw2el2vUIg+qkkKspqPLT36xuiklre+etciDhU0tCcBHyogEaiTwSAO+1UPjL4
	PN90L3qHjn8xMD359TmGhc5yIy9n2uMUlJSc4EwYwQdGhaOv/L83uGD/DHLH+xTBdrahV8
	ON9KaDNK35zNKxML2EwThPWK9buFrZuigbCRDwFK6Y7a5K0TPtEiQ1mstwuq6g==
ARC-Authentication-Results: i=1;
	rspamd-5ffd6989c9-nm4jb;
	auth=pass smtp.auth=hostingeremail
 smtp.mailfrom=michael.opdenacker@rootcommit.com
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MC-Relay: Neutral
X-MailChannels-SenderId:
 hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MailChannels-Auth-Id: hostingeremail
X-Language-Wiry: 07163cef468b89d4_1763537141244_1147105000
X-MC-Loop-Signature: 1763537141244:3022879499
X-MC-Ingress-Time: 1763537141243
Received: from de-fra-smtpout2.hostinger.io (de-fra-smtpout2.hostinger.io
 [148.222.55.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
	by 100.99.165.60 (trex/7.1.3);
	Wed, 19 Nov 2025 07:25:41 +0000
Received: from [IPV6:2001:861:4450:d360:c546:29e2:335f:d5df] (unknown [IPv6:2001:861:4450:d360:c546:29e2:335f:d5df])
	(Authenticated sender: michael.opdenacker@rootcommit.com)
	by smtp.hostinger.com (smtp.hostinger.com) with ESMTPSA id 4dBCgj1Z8wz3wgc;
	Wed, 19 Nov 2025 07:25:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rootcommit.com;
	s=hostingermail-a; t=1763537137;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=49vW6mKGN2/Z4O8Jgy0czTepb6Rq/WdAgbHJY2d7Qmw=;
	b=Mi5f0AimXbv/QvHajYw+l7A1RJRkGQqGcd2/DiC8aShJi8qiJNe4TefBAOGRw3ih6vztuf
	tEGFR7JTWLtA3A7WhQMxb730rIKNBElsqvWHd6GyvR7B9cS8eDNJ254+f3Fe0H4jYwD6/Q
	dFaEC7tg3PbeuBuwrbw4FOlrIBxxLVhXf38zZhlMUrww8Yv3ByQWkqNEhx/CXK5CNDVQqK
	svcu/IKEAOCwE+mISeTOOnX8vH9dJX3sUfgVRYK9Xezw8zdpIY+fR4uQv7gA2BCrpdZFSf
	odaxs8y1PoaSczSOQjZn2sH7Bm29+jVGVR7oGEftK8/3tL25K0M76rjf7XYz+g==
Message-ID: <8fce39e0-62f7-4a79-83b8-e3a63af10e2f@rootcommit.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: michael.opdenacker@rootcommit.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: rockchip: Add Asus Tinker Board
 3 and 3S
To: Dragan Simic <dsimic@manjaro.org>
References: <e4cd11d0-463c-e707-5110-6b92899b1ba3@manjaro.org>
 <0c224662-b3c2-4075-8b68-c0ae27421ba8@rootcommit.com>
 <3c96ee6b-dca7-1a0a-792b-f8c165ec997d@manjaro.org>
Content-Language: en-US, fr
From: Michael Opdenacker <michael.opdenacker@rootcommit.com>
Organization: Root Commit
In-Reply-To: <3c96ee6b-dca7-1a0a-792b-f8c165ec997d@manjaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Date: Wed, 19 Nov 2025 07:25:37 +0000 (UTC)
X-CM-Envelope: MS4xfERUWHQWiMV8pLBkWbvvGhDn9+Rj1a59Ys05xPrmL3MRHIdl0Keb354f8g0b9NFTSE98al/Vgkvrj5gtwff0Wo0Xy2IGWmnFICHumSLoUoPvQtLRxbCP 8CY5VmGNNwUvGhNwgsQV94nuqa5wka+DoGhQ7orXw/R1YAj+R8kZkkGmDgVpnjm0GFOC/XhKuoqZgMIGUArZqt4Td2JMX507m6+jGTJu/hOY6woCduzSl0iY jvd9pbqBSSV6iMOapzyt+InGpHlcQkPdX/R30HifuJqNSLC6Pd8UJUygpOF+MgJAd/3kRwwcs63ICRlsac+wUCtIMIHPoGQ69R3KqoT/iMDPXIVLuotbFOJP woT/3zmVwaEwrOQCUA57FFHaTgxotMRGkkIIFZSqclvJ+SVIsi0dTMdL30VU/F6tS3lCWjpq1bNMpzVgI66/lNW8RhfhU6BdFP2W3eFX9z3Hu9HKfqt7ODlW t4e6s67oxkhoV/ruvR8K8y28qB01isWAkaxRiMvudHEZZiAkqxjQ8/6Os0yeFRogmKyoziCEeLBk5rXLvmHH+aleyFywkWfaUfdvZVuaAfEYbVUSLHn+etbV 3l6FOqI3eJ9iTdLkp4E635cvpKcn+v0awT/iXFMGiynv0c/85H6hvpOh7iVjWoJTH8k=
X-CM-Analysis: v=2.4 cv=Ceda56rl c=1 sm=1 tr=0 ts=691d70f1 a=ZT5r2a33aVEFtXz168a3Sg==:617 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=d70CFdQeAAAA:8 a=ZwQsaBEdSMyVPtTqx_cA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=NcxpMcIZDGm-g932nG_k:22
X-AuthUser: michael.opdenacker@rootcommit.com

Hi Dragan

Thanks for your reviews in busy times!

> This should let us keep the "asus,rk3566-tinker-board-3" compatible
> in the new rk3566-tinker-board-3s.dts board dts while satisfying the
> validation properly:
>
>    - description: Asus Tinker Board 3/3S
>      items:
>      - enum:
>          - asus,rk3566-tinker-board-3s
>      - const: asus,rk3566-tinker-board-3
>      - const: rockchip,rk3566
>
> I'm quite busy at the moment, hence my delayed response, and I also
> apologize for not running the checks on the above-proposed solution,
> but I think it should work as expected.

I actually already tried this, but it doesn't pass "make dtbs_check":

arch/arm64/boot/dts/rockchip/rk3566-tinker-board-3.dtb: / 
(asus,rk3566-tinker-board-3): compatible: 'oneOf' conditional failed, 
one must be fixed:
     ['asus,rk3566-tinker-board-3', 'rockchip,rk3566'] is too short

The "enum" statement seems to mean that there is at least one of the 
items, which is not the case for rk3566-tinker-board-3.dts that doesn't 
have it.

So, my V3 seems like the way to go if we don't want to duplicate entries 
in rockchip.yaml.
Cheers
Michael.

-- 
Michael Opdenacker
Root Commit
Yocto Project and OpenEmbedded Training course - Learn by doing:
https://rootcommit.com/training/yocto/


