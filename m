Return-Path: <devicetree+bounces-254793-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B0B5D1C397
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 04:17:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 421B23026C0A
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 03:16:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 964BE2D3A93;
	Wed, 14 Jan 2026 03:16:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="UDwBVrXC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m32101.qiye.163.com (mail-m32101.qiye.163.com [220.197.32.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80A98257423
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 03:16:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768360615; cv=none; b=axqOvXViC2Oi+OJRbl+XAutTNVUgWV4vYwA8ygEGhHpB9b6tPUQZsPLEmZNCR/YVSlLn1UmLK6jLgpANNLjew3+evw0x2AVnFLXrbR23HD8DZCIUbXKtlG1h3OS2/7vcE32Fgoce+o159EkGSsmlysylRnWRr7psB8YpoBdPnXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768360615; c=relaxed/simple;
	bh=G48swz4CGDD7j4SmaPJWAPjzyZu+jvl4eVvNd5e8KDE=;
	h=Message-ID:Date:MIME-Version:Cc:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=c5PibhrbXQuN3Ku/G24u3nBnbCDcvdEvMoXB4xzReNDxAYxwYPnbjSDaEMUZN2+FIqbaEW7yWMn0dRbWBBqJ8l9FnmL1alsulkoQm0K0yMxW4ep2lk58x1sL86L34YnT6AxHLrhxItVwdhDXHhzJ0buAfsrp+oRxIauNp6d2gBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=UDwBVrXC; arc=none smtp.client-ip=220.197.32.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 308cc1bf2;
	Wed, 14 Jan 2026 10:01:09 +0800 (GMT+08:00)
Message-ID: <05979948-1bc2-4bc0-ad2f-b0c3cd1c367f@rock-chips.com>
Date: Wed, 14 Jan 2026 10:01:08 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 FUKAUMI Naoki <naoki@radxa.com>, John Clark <inindev@gmail.com>,
 Tianling Shen <cnsztl@gmail.com>,
 Detlev Casanova <detlev.casanova@collabora.com>
Subject: Re: [PATCH v2 0/3] Fix sd card support for RK3576
To: Marco Schirrmeister <mschirrmeister@gmail.com>
References: <1768267105-127385-1-git-send-email-shawn.lin@rock-chips.com>
 <CAGJh8eAXC+CAMfjxOP8LUwR-xcQGgbwyxFkNLgAujFiP6c2hOg@mail.gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <CAGJh8eAXC+CAMfjxOP8LUwR-xcQGgbwyxFkNLgAujFiP6c2hOg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9bba3c3f7a09cckunm945f63b942b5c2
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkxCSVZKHUhDSB0eTkkfHk1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	xVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=UDwBVrXCaVtqIYVs6qzI0xGX+D3JfSbP920C/M75WdA7On08Lv2/H2J4GegQvhiSKNmjlIijqL0GPWOKX0lw46JGodAMW7WkNoqfWkyHAsMPAjLmnpQhftX2gFLbLS/DWwwmoUHeGA1coHqNr07vuOIbJF6NOTShbQMN616owZc=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=vbBSKZDRjU8UtCXxv4OwpYCJNOYxh2lr4Kodtylvbj0=;
	h=date:mime-version:subject:message-id:from;

在 2026/01/14 星期三 4:35, Marco Schirrmeister 写道:
> Hi Shawn,
> 
> On Tue, Jan 13, 2026 at 2:19 AM Shawn Lin <shawn.lin@rock-chips.com> wrote:
>>
>> This series fixes this mess but only adds slot-gpio support for RK3576-EVB1.
>> Other boards are also missing slot-gpio support, but folks are all cced for
>> checking the boards they are using.
>>
>> Please review and test
> 
> I tested this series on the FriendlyElec NanoPi R76S.
> With the addition of 'cd-gpios = <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;'
> in the board DTS, the µSD hot-plug now works correctly.
> 

Thanks for testing.

> However, even with this fix, the NanoPi R76S still suffers from the
> constant 400kHz retuning loop when runtime PM is enabled. I will send
> a v2 of my driver quirk to address this board-specific instability.
> 

When talking about board-specific instability of SD support, the
intuitive reaction is bus more or frequency related. I never came
across this kind of problem which caused by runtime PM support. That
being said, there is potential unveiled problems for your boards.
I will comment your v2 to see if we could sort them out.

> Link to v1: https://lore.kernel.org/all/20260110010715.1610159-1-mschirrmeister@gmail.com/T/#t
> 
> Tested-by: Marco Schirrmeister <mschirrmeister@gmail.com>
> 


