Return-Path: <devicetree+bounces-277757-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YD2FAMfru2liqQIAu9opvQ
	(envelope-from <devicetree+bounces-277757-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:27:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AA40D2CB288
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:27:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 43CFB300A771
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:27:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D393B37AA76;
	Thu, 19 Mar 2026 12:27:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="cyzQxvzm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m32117.qiye.163.com (mail-m32117.qiye.163.com [220.197.32.117])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CE5F364E8B
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 12:27:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.117
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773923267; cv=none; b=Sc61gBwgXums9eNAso76fNxExjO4I43MQp5TMQ38otXc9kJE5r6xm7QWycNPTa0PH/Bh+qnqG2AMSI5/ymRtk22ltwhhVAWZgG1PRVCEciqSGygiKkD5yhOH+40qKOhL0yLDCZ4sG8L97C/yqAwiw14Wms+5PLutcg7YjJxDrfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773923267; c=relaxed/simple;
	bh=fnSDmun6zZ+InKxdVDlXAakkKqpAKwdWZ3665vM2g5I=;
	h=Cc:Subject:To:References:From:Message-ID:Date:MIME-Version:
	 In-Reply-To:Content-Type; b=RYTpibUPkoiEHP+m3MEAbLFKvcAngLcL2RoLo2zZ2OLt4vmPaju29nIl8z/qqPxh3ecVMPPw/QaB2iHMGDcnmvk6KRC8pBCL/wUglM9CQ7ek5W32FuVQYuZQSBItqPAuoHp8j57UzvDBUPaPqSjyW+LK08axoapO9aSk4m87YdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=cyzQxvzm; arc=none smtp.client-ip=220.197.32.117
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.17] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3792bf622;
	Thu, 19 Mar 2026 20:27:37 +0800 (GMT+08:00)
Cc: shawn.lin@rock-chips.com, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, jonas@kwiboo.se
Subject: Re: [PATCH v2] arm64: dts: rockchip: rock-3b: Model PI6C20100 as
 gated-fixed-clock
To: MidG971 <midgy971@gmail.com>
References: <7008e941-e4b0-a060-1cd7-55070fd5831f@rock-chips.com>
 <20260319101911.31348-1-midgy971@gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <b7060437-a46e-81fa-be2b-506a1b82be12@rock-chips.com>
Date: Thu, 19 Mar 2026 20:27:35 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20260319101911.31348-1-midgy971@gmail.com>
Content-Type: text/plain; charset=gbk; format=flowed
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9d0610cdfe09cckunma0125ffa661f67
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkxDH1ZNHk9CTUhOShpOS01WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	xVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=cyzQxvzm4R28cdZsEor86BWIsLK5KuqaVtYyhYPGQOXvke8pFMIlfSVAxaeEuquDRUgEKtGoYXQgBqK/w6V0hbqgxQ7s2/vMtW81y5YFAzctbkrRv+98A819iUKNEu+mckdE2RH70y2hmwhNBXO6QiO6UbKyg3Fkvnx8zMQ5nwo=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=wKS4bpN/zGnfXpSFFB4RUvieqFi2QAKBmfyhobnZlxo=;
	h=date:mime-version:subject:message-id:from;
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-277757-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shawn.lin@rock-chips.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,infradead.org:email,infradead.org:url,lwn.net:url,rock-chips.com:dkim,rock-chips.com:mid]
X-Rspamd-Queue-Id: AA40D2CB288
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

在 2026/03/19 星期四 18:19, MidG971 写道:
> On 2026/03/04, Shawn Lin wrote:
>> IIUC, you are using Claude to help generate this patch, please
>> describe it properly, for example,
>>
>> Co-developed-by: Claude claude-opus-4-20250514 [1]
>> or
>> Assisted-by: Claude:claude-3-opus [2]
>>
>> [1] https://lwn.net/Articles/1031473/
>> [2] https://docs.kernel.org/process/coding-assistants.html
> 
> Thank you for the guidance. I used Claude as a coding assistant and
> will use the proper tag in v3:
> 
>    Assisted-by: Claude:claude-3-opus
>    Signed-off-by: MidG971 <midgy971@gmail.com>
> 
>> There is a missing pipe clock which should be fixed. Please
>> refer to David's patch[3].
>>
>> [3] https://lore.kernel.org/linux-rockchip/d981fa84-bd05-ac9d-98ca-89ee47177829@rock-chips.com/T/#m6a8289609e6a60691d3c06358b6322c7aa5e43d1
> 
> Since our board-level &pcie3x2 override replaces the clocks property
> entirely, v3 adds CLK_PCIE30X2_PIPE_DFT ("pipe") as well, consistent
> with David's base DTS patch.
> 
> I tested v3 on the ROCK 3B (kernel 6.19.0-rc5): pcie3x2 probes
> successfully and the NVMe device is detected at 15.75 Gb/s. The
> pcie30_refclk clock appears in the clock tree at 100MHz with pcie3x2
> as its consumer.
> 
> One note on the pipe clock test: CLK_PCIE30X2_PIPE_DFT is defined in
> rk3568-cru.h but was not yet registered in the CRU driver in the
> tested kernel build, so the pipe clock was excluded from the
> functional test (pcie3x2 probe fails with -ENOENT at clock index 5
> when it is included). The gated-fixed-clock node and ref clock were
> verified working. I expect the pipe clock will work once the CRU
> driver registers it alongside David's DTS patch.

Pipe clock support was applied and appears in linux-next[1], you could
pick it into your tested kernel build if you'd like to have a try.

[1]https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=41b1a6760959017c4fa1dbc7c3cc318406ab1455

> 
> v3 is sent separately.
> 
> Best regards,
> MidG971
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 

