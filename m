Return-Path: <devicetree+bounces-308163-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id coeqDGORJmplYwIAu9opvQ
	(envelope-from <devicetree+bounces-308163-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 11:54:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EF0D654C2B
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 11:54:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=rock-chips.com header.s=default header.b=YNISX9hX;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308163-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-308163-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=rock-chips.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A4FFE3016C97
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 09:54:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EA2D3845B0;
	Mon,  8 Jun 2026 09:54:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49211.qiye.163.com (mail-m49211.qiye.163.com [45.254.49.211])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F5CE34D91F;
	Mon,  8 Jun 2026 09:54:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780912447; cv=none; b=jXNTT0k9XUx6Ae+33CxMIWMbPAhpuAGTAQu9dFrIsqvkhpbn1PoOaWz6w4Kq9qonweArM7QkpmLx4qeqYf7DJJGW6AL+tm2gV0yBNfdsxYGdVgZ8WGuY/NIGrQRN+C5jwu2kYSpA+Rd+RYfaaIdzG/zGamAdRSHSsI3IZMMI/mI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780912447; c=relaxed/simple;
	bh=choLjfNKc+mCYGJz549OBfiKlQYheFl74TmgEs0LqwE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ru0w0OGI2tSqvFdaB8XXy4PeFRr+O+9m0T51FlTWHaCFvuZofdFShVAudrIYITYEyGorVY7IGicwbkB+KLmwhGBAgwbAqm4eQHC+eRLf46RzxdKzR0b9f7ANom0VXxExZ5ugQNXKQzI/aWk6nxjq7HzGlgoSw7pnuMPCasa1Y50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=YNISX9hX; arc=none smtp.client-ip=45.254.49.211
Received: from [172.16.12.90] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 41806bd9a;
	Mon, 8 Jun 2026 17:38:33 +0800 (GMT+08:00)
Message-ID: <bcedaff0-abf8-4585-a0ea-057062cd0411@rock-chips.com>
Date: Mon, 8 Jun 2026 17:38:32 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH v3 0/9] accel: rocket: Add RK3568 NPU support
To: Midgy Balon <midgy971@gmail.com>
Cc: tomeu@tomeuvizoso.net, ogabbay@kernel.org, heiko@sntech.de,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, joro@8bytes.org,
 will@kernel.org, robin.murphy@arm.com, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
 linux-kernel@vger.kernel.org, Simon Xue <xxm@rock-chips.com>,
 Finley Xiao <finley.xiao@rock-chips.com>
References: <20260604135255.62682-1-midgy971@gmail.com>
 <3d99569e-9c3a-49d1-93fb-1335382523e9@rock-chips.com>
 <CA+GS1Y1s78PwN63X2YJoS8VEGp7CpTERo_K65yKs00U4VRAw4Q@mail.gmail.com>
 <e5058919-9485-4de5-8eea-331ebfc2987c@rock-chips.com>
 <CA+GS1Y3ysdWZ3qCq3ip_Pbw+v4LxHZd95aBo=jwB+orYaMBBNw@mail.gmail.com>
 <CA+GS1Y0kAM_XGLQuKPTphif2HcQg18ZXhd8RHHr2xPOEMCDvXA@mail.gmail.com>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <CA+GS1Y0kAM_XGLQuKPTphif2HcQg18ZXhd8RHHr2xPOEMCDvXA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-HM-Tid: 0a9ea6991e1403a7kunm0ef6a63b1a581f
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDHhlLVk9CH0lMHxgYTU4dSFYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=YNISX9hXTWB3JU79qXo0H1zIQ3fh38Q/5YMbGdbMb6fd15wfuSsjyr7euUN2kozRagih1CHfmjtNNcmqUqwDywkoiTwCLvwuXuGsg2ymzSQ1eBEYvRSSQEBl3Ac3zBVDZQENXtUYPsMZtRymEl4yLSxI4jnHatTSgFvAzWIKVPg=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=ge2Ka7ZiWTZZ4XiOiKgnqGsdGuGGJlMJ7SGwJ0Ypbdk=;
	h=date:mime-version:subject:message-id:from;
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:midgy971@gmail.com,m:tomeu@tomeuvizoso.net,m:ogabbay@kernel.org,m:heiko@sntech.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:joro@8bytes.org,m:will@kernel.org,m:robin.murphy@arm.com,m:dri-devel@lists.freedesktop.org,m:linux-rockchip@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:iommu@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:xxm@rock-chips.com,m:finley.xiao@rock-chips.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[chaoyi.chen@rock-chips.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-308163-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaoyi.chen@rock-chips.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,rock-chips.com:mid,rock-chips.com:from_mime,rock-chips.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5EF0D654C2B

Hi Midgy,

On 6/8/2026 5:14 PM, Midgy Balon wrote:
> Hello Chaoyi,
> 
> Following up on the need_regulator suggestion -- I implemented and
> tested it on the
> board, and unfortunately it doesn't avoid the deadlock on RK3568; it
> moves it from
> boot to the NPU job submit.
> 
> What I did: gave the RK3568 NPU power domain a regulator (a DOMAIN_M_R
> variant with
> need_regulator = true), wired domain-supply = <&vdd_npu>, and dropped the
> regulator-always-on workaround.
> 
> Boot is now clean and the NPU probes, but there is a warning during boot:
> 
>   rockchip-pm-domain ...: Failed to create device link (0x180) with supplier
>   0-0020 for .../power-domain@6
> 
> (0-0020 is the rk809 PMIC that supplies vdd_npu.) Then on the first NPU job
> submit the board hard-hangs with an RCU stall:
> 
>   rcu: INFO: rcu_preempt detected stalls on CPUs/tasks:
>   rcu:     3-...!: (1 GPs behind) ...
>   rcu: rcu_preempt kthread starved for 5115 jiffies! ... RCU_GP_WAIT_FQS(5)
>   rcu: Unless rcu_preempt kthread gets sufficient CPU time, OOM is now expected
> 
> My reading: vdd_npu is on the rk809 *I2C* PMIC, so when genpd
> enables/disables the
> regulator during the NPU's runtime-PM power transition, the I2C
> transfer runs in a
> context that starves RCU and the box freezes. (I suspect
> need_regulator is fine on
> the RK3588 NPU because its supply isn't behind an I2C PMIC.) The always-on
> workaround avoids this precisely because genpd never touches the I2C
> regulator in
> that path.
>

No, they are all controlled by RK809.

And This looks werid. Is your rocket driver compiled as a module? 
Please try compiling it as a module. When is the above error printed? 
Please provide the complete boot log.

> So: for an NPU domain whose supply is an I2C PMIC, is there a
> supported way to let
> genpd own the regulator without performing the I2C op in the
> power-transition path
> (a deferred/async regulator enable, or a flag), or should RK3568 keep vdd_npu as
> regulator-always-on? For v4 I'll keep always-on unless there's a cleaner path.
> 

-- 
Best, 
Chaoyi

