Return-Path: <devicetree+bounces-258170-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eG6/Ish/cWk1IAAAu9opvQ
	(envelope-from <devicetree+bounces-258170-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 02:39:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 30464606BC
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 02:39:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 6EEF0402CF9
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 01:39:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61B5A34FF54;
	Thu, 22 Jan 2026 01:38:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b="clZNS/Hv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbg151.qq.com (smtpbg151.qq.com [18.169.211.239])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA4E3350D7E;
	Thu, 22 Jan 2026 01:38:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.169.211.239
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769045931; cv=none; b=IqlzWpLM1NQ6zbSX0mVC9qrJG4W3MRidsezDtwkRiY0VRl8ekK6i6zU7WkK/M8JY1v4P6zLSX3BU7RXKol3aOtY5dklkUfLn1y4DPs2UZFbZI85jSfmiMRvbqtCUreZrLLDvr5W61/ZQon+h6snsGHb9V1LskRm4PqCp9lsF+bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769045931; c=relaxed/simple;
	bh=cuJpUiyMQzvYXGIGmmTBqBuKrNCEdAMtLvYE5rH9SfU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iMDP5ytHzOwy5sq4k6Ir++psaauYoTTMCYR8yX8fQGo4lXO7S+5z7rNNDv/LMoo4H0PXHvxOWo6NxKUTyCv+yL5br2/TGKANRVzsqdaiZnT8MI6mYBSB3xtEvKHRRi4dnqOnx/UE9i37efRYJBUr2SMUvOdMK5dNqFG9u3bMhJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com; spf=pass smtp.mailfrom=airkyi.com; dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b=clZNS/Hv; arc=none smtp.client-ip=18.169.211.239
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=airkyi.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1769045903;
	bh=cPE0p9RxdCG7EUodZ3CA4dL1d1UqXwSbCEzSbu8JCNA=;
	h=Message-ID:Date:MIME-Version:Subject:To:From;
	b=clZNS/HvgFMGLO8/4q8wZ4fl6p8LfQGAaO4BzkRGGg8wYclcannzxH9HiiiAaLMVU
	 IiZhYpnnTpXHCX2r2IKi07qbHgsV3BMTHAj794b4WS8pzTYgnQAhoznPDIfZZruIIR
	 JDTHSvtKjAHmZEbuMliKlP6DgrBJI+J9cVMsSUrU=
X-QQ-mid: zesmtpgz8t1769045901tf13cdf21
X-QQ-Originating-IP: 94fsbE6w7nripzqNc9kOAoVpUQgk+IWMUu5xSnZT8bk=
Received: from [127.0.0.1] ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 22 Jan 2026 09:38:19 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 5162936988609351219
EX-QQ-RecipientCnt: 17
Message-ID: <81D509A8F65F0243+c7b58aef-95a4-4f2a-a423-7e8b2c0bbeab@airkyi.com>
Date: Thu, 22 Jan 2026 09:38:17 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: Change gmac phy-mode to
 rgmii-id for rk3576 evb1
To: Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Alexey Charkov <alchark@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Chaoyi Chen <chaoyi.chen@rock-chips.com>, Andy Yan
 <andy.yan@rock-chips.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Stephen Chen <stephen@radxa.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260121031548.402-1-kernel@airkyi.com>
 <20260121031548.402-2-kernel@airkyi.com>
 <b87d0c82-b8b7-4e14-85c3-c4ba88aa4000@lunn.ch>
Content-Language: en-US
From: Chaoyi Chen <kernel@airkyi.com>
In-Reply-To: <b87d0c82-b8b7-4e14-85c3-c4ba88aa4000@lunn.ch>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpgz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: NC8a1JKFOHmWZktTZABTNwpmOuZk2cZACOM39sxH3BBS17Fm20WoDAHm
	pDoMYc7WqbMo/SW4ZNKOtIkO84Kk2TGAZZOol0VcdZ5bfHgzJtK4ngi2t/IXLhcJ2zO1TUZ
	wAGSYKCWyqx6ru/ahWFDiC+x0i2pjJ1H9eyyPcMnhe6QEEquA4BI8vaTOandOmR2zeOvcx0
	c45DsmUKhr0iT+8RrZAlv4rzg9kwVzfD/1pgfYcFxnhx6lc/VTAnUNvLqhr3k2I9mkco00F
	6W3jtTDST2IZcAWBpLdZYBi5DmPPHMhZxFewtMb8OY7zORonSx62K8SVaX7mE6PhOvuiX9o
	RZHFPelyMhSD0bAz5O9VPgyVS3h+ARb8Xd2AvnRgvJsbOe7P5as+2HxZVK+t2ChnRE0DWbK
	047Ok6I946dg5OgtbkiR09d4oXQoiuszlZhX1r//YMhGcH1SOkwBagRkTgaWPRNN/K931UI
	CDE+XIuLUoIyz0QV/G9k8QlRc/GE4c4NwWgMpYvFYxbk4NqJCW7FDkgiFvNsEo1BKYKrTtN
	ygiXd/VabiHvqAOWXow1XZ21eTZ4/9dNKhz3T43yk0ksP6YQKtNVd4R09OK7784webSFFZq
	aL2Qsayt9WmbwTubLU8p+8mOeezQNRkEmPzb1oJCqqBr6lsgdYTT8XSQLwSg/9Syb3n8Cuj
	rBPi3/4XT4DnX8uSfr7iEgmYT5+tT8Ih+ZbZw1mnO6H/xmsLr57u3AcOZ3oLnt+fDM0tcAn
	X60PiTbUk34GqkpKElArNwKzbsDUERHZorv7O5UIK4AmTI9Nt0MLR8MJBD5b8dQi6lnZEUK
	+y2rOpQyMoKHaFYzzprHQ4wQsWpqc/lq59cPLQe0qTYtDWcLIdnFufk2cYPgET/WJuX/meO
	HQtcUWtTknZdjjHB8LBRkK8khMlCDFz7OIgpJ05S7krKK6bQQZczF1VIZ/fv31jEf/LTXyS
	EV0fep2FU78hd6WszhE+lHSK0VptFbP3tKrlZXRqzKRLQa+4SiQb31nc/3B96zsJNQT431u
	mKrlLw6Cs3qDZM9gIi
X-QQ-XMRINFO: MSVp+SPm3vtSI1QTLgDHQqIV1w2oNKDqfg==
X-QQ-RECHKSPAM: 0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[airkyi.com:s=altu2504];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258170-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FORGED_MUA_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[airkyi.com,none];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kernel@airkyi.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,sntech.de,gmail.com,rock-chips.com,collabora.com,radxa.com,vger.kernel.org,lists.infradead.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DKIM_TRACE(0.00)[airkyi.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.1:email,ams.mirrors.kernel.org:helo,ams.mirrors.kernel.org:rdns,airkyi.com:mid,airkyi.com:dkim]
X-Rspamd-Queue-Id: 30464606BC
X-Rspamd-Action: no action

Hi Andrew,

On 1/21/2026 8:55 PM, Andrew Lunn wrote:
>> @@ -721,6 +719,7 @@ rgmii_phy0: ethernet-phy@1 {
>>  		reset-assert-us = <20000>;
>>  		reset-deassert-us = <100000>;
>>  		reset-gpios = <&gpio2 RK_PB5 GPIO_ACTIVE_LOW>;
>> +		tx-internal-delay-ps = <1950>;
> 
> The PHY should add 2000ps, as required by the RGMII standard. The
> difference is so small there is no need for tx-internal-delay.
>

Thank you for the clarification. I chose 1950 here because I find that
the MotorComm yt8xxx Ethernet PHY binding only offer the options of 
1950 or 2100. 

> In most cases, 'rmgii-id' should be sufficient, unless the PCB is
> badly designed.
> 

I suspect the ROCK 4D board might be an exception. Sebastian once
reported that it wouldn't work properly under "rgmii-id". Well, I'm
not sure what strategy to adopt in this case.

-- 
Best, 
Chaoyi


