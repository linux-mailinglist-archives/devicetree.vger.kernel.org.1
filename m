Return-Path: <devicetree+bounces-240082-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B436C6D26F
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 08:35:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id E8F0A2D5C9
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 07:34:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82B403254A1;
	Wed, 19 Nov 2025 07:33:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rootcommit.com header.i=@rootcommit.com header.b="WUctF8Rm"
X-Original-To: devicetree@vger.kernel.org
Received: from gecko.ash.relay.mailchannels.net (gecko.ash.relay.mailchannels.net [23.83.222.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D8B2EFDA2;
	Wed, 19 Nov 2025 07:33:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=23.83.222.66
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763537592; cv=pass; b=CYgU/rQtOyrcBzabtJGcJX1h+mRthR6TTWVnK30FnHYV9KSt0jrAP+rzv275tjDb05bJn4SUv7Mc+UmzZVOsxE5uAwsUpdvNT19YPOnAoB/5ckktlSeArO99ig/CiU0Hpfz2K1S3MnCC07lYOX11X8SlvEKGf81l45KVswjpN3Y=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763537592; c=relaxed/simple;
	bh=m1BqxGTyJeApI42A6A2Z80jY3RwisfZ5LF8pVrsXQP0=;
	h=Message-ID:MIME-Version:Cc:Subject:To:References:From:In-Reply-To:
	 Content-Type:Date; b=snWZAqpcfFIajV778EmsS+xXuGkvDOuMTSDpwM5XMvcWtYxOAibMVTPoXmpn113vKLWUWGp9AOH6gpppeKV1sQj9W/uQW3gqYPKJICZcoPtrPUK3c7kSYEp6JPMSjPvFUombkP61vx4U1Z1pNWUV4Yxk3jvwq4k2/DcWeDxrJXE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rootcommit.com; spf=pass smtp.mailfrom=rootcommit.com; dkim=pass (2048-bit key) header.d=rootcommit.com header.i=@rootcommit.com header.b=WUctF8Rm; arc=pass smtp.client-ip=23.83.222.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rootcommit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rootcommit.com
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id CC7508A276B;
	Wed, 19 Nov 2025 07:33:01 +0000 (UTC)
Received: from fr-int-smtpout19.hostinger.io (100-96-202-146.trex-nlb.outbound.svc.cluster.local [100.96.202.146])
	(Authenticated sender: hostingeremail)
	by relay.mailchannels.net (Postfix) with ESMTPA id 81BBB8A26F5;
	Wed, 19 Nov 2025 07:32:59 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; d=mailchannels.net; s=arc-2022; cv=none;
	t=1763537581;
	b=qH3njPfspa4Y6/4DYMNHxGXgrrRa3zUfs7dysJvaAX9oSpIdqHyV/XKOH7W2mrfC2ZQYy6
	DLv63P47j+iof30AvPBTS43FdgNKLPF3j7gSF47KBVxk7gWi00g1eBehHVroxLcdSpUxwO
	Cz7fDwCxUCiki1wa2W9vGQmuYs3cq2S2fEOXA7S82R/7/8gWCbuxrQIctSP3j9zpfapZiB
	G0ACc98mBtpNpmARGyQQMXGyza86jnOkRC+OG52Ce66WtcQ0MqX94jBWtKxjykxgXgRoa7
	kgzQHqAr0uW3Z3O8GMdRXU1SL+xBn/yuuOlcvdJaVDNSyondDiF5Zp3XUZNWWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net;
	s=arc-2022; t=1763537581;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=T7FPIIPqguMBGK80Eu0/GYCdp66S9qABzZqZQoPkk/c=;
	b=Lx87qnKW7tqWqFR4BbJ9gFcnmeMS2aGCQo/tJcvYaciklvqyMIaT0cpZnBXyMfuK9NULqG
	pmjRjNshSfvrjBT9X9pBFWrojR7qm5pl72oL97U81eafItiRKK54tqBMwyweyavl0mNV1V
	0de8jkxXf1Fa0al3gcmImIKfyvDmPwn8OGq4K4ymC7RekQVTlXcHDJm+W8PlO2t7PudrtN
	rKn2b7PSlKNa9F1wF64PVRAin6dTI75rG0JsBrHMXtxh/V0/E/i9PvEyYANRiUJ7SNck9G
	MLY5lQHMnbTAcjUFVODmdbgb4REXcPq4nUhneoT1rdjNwanDITin+gt/qP6UVg==
ARC-Authentication-Results: i=1;
	rspamd-55b59744f-5rtcb;
	auth=pass smtp.auth=hostingeremail
 smtp.mailfrom=michael.opdenacker@rootcommit.com
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MC-Relay: Neutral
X-MailChannels-SenderId:
 hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MailChannels-Auth-Id: hostingeremail
X-Language-Ski: 210e651045f8322f_1763537581705_2679991986
X-MC-Loop-Signature: 1763537581705:1368043681
X-MC-Ingress-Time: 1763537581705
Received: from fr-int-smtpout19.hostinger.io (fr-int-smtpout19.hostinger.io
 [148.222.54.35])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
	by 100.96.202.146 (trex/7.1.3);
	Wed, 19 Nov 2025 07:33:01 +0000
Received: from [IPV6:2001:861:4450:d360:c546:29e2:335f:d5df] (unknown [IPv6:2001:861:4450:d360:c546:29e2:335f:d5df])
	(Authenticated sender: michael.opdenacker@rootcommit.com)
	by smtp.hostinger.com (smtp.hostinger.com) with ESMTPSA id 4dBCr91X4tz1xxj;
	Wed, 19 Nov 2025 07:32:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rootcommit.com;
	s=hostingermail-a; t=1763537577;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=T7FPIIPqguMBGK80Eu0/GYCdp66S9qABzZqZQoPkk/c=;
	b=WUctF8RmXDPWCkw1ejnEA/deye1/YCPQPq4wZRx1lsAZUheZ6W72oOed6+i0wjJSVIamRU
	K1EgbJpTReEiWohfd5vvm1Q0PS/OBw6j9gXrzOEL/DthdQ0WFLAOZ3/QoNIOV/OvdBKtw7
	3RFJZxlkwHUr/W3u6b2HnaWMApM9iYf3Vb0i8+sGJt18ZICj3nSS8Pb5i5WDsRj7HkTGch
	uyQCNJeUNBdA0UQj+SQ9y26LQnj6QnraDZUhrocFFjqt9wnkmP7xvNtz2Dhcq3Lf5XE0D5
	Ph303RMFKd8g/EIj4Ew48WHHhz830CHGTBXsvyiNjl1GmAmXBqfwWxUhPeT2TA==
Message-ID: <d6b3ca5a-e036-4019-8f4f-428d4d132f2f@rootcommit.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: michael.opdenacker@rootcommit.com, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: rockchip: Add Asus Tinker Board
 3/3S
To: Dragan Simic <dsimic@manjaro.org>, Krzysztof Kozlowski <krzk@kernel.org>
References: <20251118-tinker3-v3-0-2903693f2ebb@rootcommit.com>
 <20251118-tinker3-v3-1-2903693f2ebb@rootcommit.com>
 <155d3d05-49f8-a000-6939-1411917745bb@manjaro.org>
 <e7417a6e-3824-48f7-af56-eaf4bf097cb9@kernel.org>
 <b8e91b59-afb1-6d0d-4709-c7f76ded0e18@manjaro.org>
Content-Language: en-US, fr
From: Michael Opdenacker <michael.opdenacker@rootcommit.com>
Organization: Root Commit
In-Reply-To: <b8e91b59-afb1-6d0d-4709-c7f76ded0e18@manjaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Date: Wed, 19 Nov 2025 07:32:57 +0000 (UTC)
X-CM-Envelope: MS4xfLaeISHAFTUmvcbpnL6lH5D0hiEa0ZwcDeNTq39xSpVmqC1zb5gbnXm55IF2cAwm3koLEvtAzTxZKxyO/v7PM7kOtSI4HzQCNsGjJu2J9WrRJxkQifP6 m/XaejMx5rQWb8pJn1N+dt33nprANSJn98XCE3t66JiVXmNcDA0RZiAneCgZ/OvGN6dtuBMvU+rOhdRTOnog8cf1RtSK+QOD4Xct3um9CLZfxI5kPn1XK0Vu qFgVzkWSYmHW01xM1LYSfuqDpxfUbbgf8GHCbVLsXweLCQU+K1NiPp7DOgsKK0mYuqPRm2x1AzMxYT+bdLtNmPQbxlMTVjye20J2zuuI98i6tzXyHSx5dn2l AxIV6Fqck4vVx+3JYRZDlH7tW25Dwm76bwGIftDjTatthFWFkjtQnhyPD6432aSBIRCkQayuBTQ00+wzLYcbnuTmJ8b3nP779mZlTVcdFVuTkDGRRn0FIY80 7mCdBXY4dKYiylrbPTvAEKpfQVVndjuYXy6ZpnD89okH/XMsKJtpTFa40FfA0aU4Kl0Xd99/ByFLi39onVxSWDDixw5TfuLY0hElfJLHllwdl+xmpubJoQ/e HbiBAd4GEuo4hJE64JfW0kFFdIf5AA0ftFqn445A5A8iipRw+RKr/q/n9lLaLiWNHlZvkNMUihwp1+rz+iUv70K1r6qOKr3Z1k0AdB0C7zhQ3TGs3xm3zyEh pi9/VkZqFTZ8LnOLuLgMYLfsp+RXMEgs
X-CM-Analysis: v=2.4 cv=Lflu6Sfi c=1 sm=1 tr=0 ts=691d72a9 a=ZT5r2a33aVEFtXz168a3Sg==:617 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=d70CFdQeAAAA:8 a=e6NoAuRXJklMgYph6uQA:9 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10 a=NcxpMcIZDGm-g932nG_k:22
X-AuthUser: michael.opdenacker@rootcommit.com


On 11/19/25 08:23, Dragan Simic wrote:
> No, I'm not suggesting that the series goes back to v2, but Michael
> failed to give me enough time to respond.  If that were the case,
> the v3 would've been in nicer shape, with, from my point of view, no
> need for further adjustments.

I'm sorry if I caused trouble.

I agree I didn't leave you much time to react to my reply to your 
review. What happens is that I'm new to this subsystem and I was feeling 
some pressure to avoid missing the launch window for 6.19, which I don't 
know exactly when it will be.

Michael.

-- 
Michael Opdenacker
Root Commit
Yocto Project and OpenEmbedded Training course - Learn by doing:
https://rootcommit.com/training/yocto/


