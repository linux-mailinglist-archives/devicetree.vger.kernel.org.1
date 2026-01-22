Return-Path: <devicetree+bounces-258172-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2EfTB8aBcWk1IAAAu9opvQ
	(envelope-from <devicetree+bounces-258172-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 02:47:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B77B8607E0
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 02:47:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 4C94B4417C6
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 01:46:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C58430BBA6;
	Thu, 22 Jan 2026 01:46:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="T70pmH8q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m32105.qiye.163.com (mail-m32105.qiye.163.com [220.197.32.105])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA1131C84D7;
	Thu, 22 Jan 2026 01:46:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.105
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769046398; cv=none; b=dQUpyzi72L+25yhdgWQ3U/QSAozEQftTsGrQw5n+Cu+yenUpH+rT8BC3gHjdXNN7ysYPaYxM4PGog6ThmiPIyo+VzrhNzHyTiAt4sYmbB1nanMd+Y1VqxUKUWBDP9INPVEq1RKF2pypHmNtJjH8NM4nRgAXZm0y0BEAKeNl7Eac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769046398; c=relaxed/simple;
	bh=jZ/3N0FA7MpchfDmEQXwP3JAKTmsQ0ve/NYZDEzIUAQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=l7DfHAGRw9rnToD+yfaR3FwQFi0Nk3GL6ptQnuNJPkBFwrLBk5An4lPdBbpHrBLjKY0sqmPkqASMGaX7R/6XQXGXHfoOcbyI6fo5L6jlb19krVBkWZDYKI3aBcFLCxYxaTBcibcAgNbLvjA2n7tp7a14p15dLsC/4wPGPIuF2g8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=T70pmH8q; arc=none smtp.client-ip=220.197.32.105
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [127.0.0.1] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 31841d5d8;
	Thu, 22 Jan 2026 09:41:20 +0800 (GMT+08:00)
Message-ID: <305c6ceb-2b4d-496a-95c1-e6a0454347a5@rock-chips.com>
Date: Thu, 22 Jan 2026 09:41:19 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] arm64: dts: rockchip: Add rk3576 evb2 board
To: Andrew Lunn <andrew@lunn.ch>, Chaoyi Chen <kernel@airkyi.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Quentin Schulz <quentin.schulz@cherry.de>, Jonas Karlman <jonas@kwiboo.se>,
 Hsun Lai <i@chainsx.cn>, John Clark <inindev@gmail.com>,
 Jimmy Hon <honyuenkwun@gmail.com>, Dragan Simic <dsimic@manjaro.org>,
 Michael Riesch <michael.riesch@collabora.com>,
 Peter Robinson <pbrobinson@gmail.com>, Alexey Charkov <alchark@gmail.com>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Andy Yan <andy.yan@rock-chips.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260121015357.291-1-kernel@airkyi.com>
 <20260121015357.291-3-kernel@airkyi.com>
 <aec69818-9fd0-4e50-bab9-f5e36304a4a2@lunn.ch>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <aec69818-9fd0-4e50-bab9-f5e36304a4a2@lunn.ch>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-HM-Tid: 0a9be35cfc3103abkunm7eef6e13aa5f0
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0pNQlYaSBgaGEwaTk9KTxlWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=T70pmH8qdY78cYAYdl82YbPmk4K91SnFMl9oclLWdXtZU7Zt+XfMFTPAVjDy5RMFZlhbwmWA10hHkQBr0V0F1B5ZVfkjjNRwjo1FpCyn6tLJ2G+IJGah+n/oxK6QfY1pkOqfDazhNqn6/Ui+cX/1eppDAi70PfSusZB6v+aSrcw=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=7p+5EO72Ojt9mRPeEJmjl74hE5HSAcptIkeWj3LbPlU=;
	h=date:mime-version:subject:message-id:from;
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258172-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,sntech.de,cherry.de,kwiboo.se,chainsx.cn,gmail.com,manjaro.org,collabora.com,rock-chips.com,vger.kernel.org,lists.infradead.org];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaoyi.chen@rock-chips.com,devicetree@vger.kernel.org];
	DMARC_POLICY_ALLOW(0.00)[rock-chips.com,none];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[rock-chips.com:mid,rock-chips.com:dkim,ams.mirrors.kernel.org:helo,ams.mirrors.kernel.org:rdns,0.0.0.1:email]
X-Rspamd-Queue-Id: B77B8607E0
X-Rspamd-Action: no action

Hi Andrew,

On 1/21/2026 9:15 PM, Andrew Lunn wrote:
>> +&mdio0 {
>> +	rgmii_phy0: ethernet-phy@1 {
>> +		compatible = "ethernet-phy-ieee802.3-c22";
>> +		reg = <0x1>;
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&rgmii_phy0_rst>;
>> +		reset-assert-us = <20000>;
>> +		reset-deassert-us = <100000>;
>> +		reset-gpios = <&gpio3 RK_PD3 GPIO_ACTIVE_LOW>;
>> +		tx-internal-delay-ps = <1900>;
> 
> What PHY is this? Does it actually implement this property?
> 
> It is also close to the 2000ps default. Have you put the board in an
> environment chamber and run tests at -20C to +70C to see if it will
> work with the default 2000ps?
>

It is MotorComm yt8xxx PHY. I chose 1950 here because I find that
the MotorComm PHY binding only offer the options of 1950 or 2100. 

-- 
Best, 
Chaoyi

