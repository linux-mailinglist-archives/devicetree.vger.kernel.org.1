Return-Path: <devicetree+bounces-237162-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C70B1C4D87D
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 12:55:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EC5E53ACD4D
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 11:54:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C85734EEED;
	Tue, 11 Nov 2025 11:54:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbguseast1.qq.com (smtpbguseast1.qq.com [54.204.34.129])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240343559D9
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 11:53:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.204.34.129
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762862044; cv=none; b=lKoa9hIC2QbF/027ZoWUksDMNVldP2QrkTy/hgU2WMI4ZBcG0BVI5XO+UuXk7MA9LG0droGPPodscNS2lfQYSAVK3LtVeJhifySLwct29hUYwlNA/vgSnA5T/8b/cNcidewwQam3ZIMRsFwqNXmMjk78rKPh+73FbH3iNn8Kn20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762862044; c=relaxed/simple;
	bh=dR6nOi9qh4XRaLJGDlSnX5FCQnJVgXOp8XhLU5rdNB4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WqFjhRDlv0pFglJHCzSIE3zinWRaHGEUdyKqpNMcqLj84CFaOqbd6Map0SojmvMQLXrxHe5j3ax6fFrshozeREWUP7f2ci/w9v3TY0uXgvZqkJNMK/ZkM6nh21X/v1LlcnF9YylWILs3/a/lmI2JUiwopb6ZeA+z0pBOOnfllxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.204.34.129
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip3t1762861977teba315bb
X-QQ-Originating-IP: 9hk3gt7N3vjJwmXMB16WeBR8MVSYirzN9zA3vngNTqw=
Received: from [IPV6:240f:10b:7440:1:62e3:2c99 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 11 Nov 2025 19:52:54 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 4277675725007631455
Message-ID: <617FDAB231C501DC+3f9809df-87df-4a02-bd5f-ebc6299b3aa7@radxa.com>
Date: Tue, 11 Nov 2025 20:52:54 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 0/3] Add Radxa CM5 and IO Board
To: Joseph Kogut <joseph.kogut@gmail.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, jonas@kwiboo.se, kever.yang@rock-chips.com,
 honyuenkwun@gmail.com, quentin.schulz@cherry.de, dsimic@manjaro.org,
 pbrobinson@gmail.com, amadeus@jmu.edu.cn, jbx6244@gmail.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20251105051335.17652-1-naoki@radxa.com>
 <199E172C8E20ED38+71169242-5525-4d60-9e37-a03ad172d639@radxa.com>
 <CAMWSM7gezjVSoF+-7ivboTeB=5gQAE-QVrbAbKu3M=obmb3Axg@mail.gmail.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <CAMWSM7gezjVSoF+-7ivboTeB=5gQAE-QVrbAbKu3M=obmb3Axg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: N0JG5d2dvsRDzxh9BujXcIVpDp8VtwcUMvs3Intk2N3mRIGyInsL2y2j
	FVm6lsUw5KU+/BVk+0KzOic5/0569mBOXju4/uvag6BNZBgrhUjQKECwc0dTnvKuXNUibpw
	BvLjrcC0FEqU7mIVvfq18FBTlMawneSs5mWdCIgUjonlJv3r7Byw0tcuQmAoSQooJQEFGsl
	SNOSnsm71Xr08gwboOH2VcZdLO3QeY7DgZLccjUG0zqaOnUdqoIU8Wls5QdNc3jOYRTis9l
	cDScdlx0neSfD1i788BmTo4muOEqgo3F5b8Bxu86hLvLtGBwtEZ2wxc9ZCSyopNz+MF467q
	SFYnzeK38LToGoTALE8CoVwL381HnxusnFJrHQ6MosEhlnR/lyl0kCEAIycSpPRDmXXCawK
	M8IfSixwBsyqUTiRdwCB1uK3vQ1LPsvSTDz9y7sXTXfB1lZRV8C+3XAA6tTnpNbyHQwdT0B
	QD3bTFO3Z+ZwMy7twMFb0bc3tIIqzPjp75+lz+2WUXRq02+xkwebVHZ+PmhPtu5WhfsiH0W
	kEybpbGjQW3wEY2p4Tx/NmeZSCawcovFJcjgI9iPs3ybw8Ya3QGYPe9YFWo3I5VydS+bVfP
	FrrK38jU7LMRA6yuha4RasvO6t6k2BZvsENYKBPmrwd7926xS0MFPpOX2ykyGrGAt0ga7/C
	hzdOIGTB3lYHS9Y3aDQFHHEQZl2e9NyeGPBsBzlRE5lGM0V3ndH6hGmWHdNCQnepdfztJJl
	T6rB2xyaLL6KOF14TwMx6yhmpENfUbMdjYThh77eddSO0Vo0KspbxQhl0mxO7pQwZ1XbWUR
	KntBfGM6BikkYaKS6UQ0YX+e+a/u1I2l47WW0MbUvmbYaQDSCI6mfV/+nGAdJhuVF9AfQfq
	uPtydyXyVTUdjGXtwhy4sHd4hNAFSI+6w5Ljez3Hc11YtAhEAMdlHpXqdcY5/2t1ST4UGl7
	mhazgC9CCQq5itiYelnJXcZglzlxsHyZK3DOdUODAxsZfb49V24NZnXQxWBHIYRaeQwdogh
	Aa0Qt+P5Q3Jk21xwAas3RQmeOL/ObTY5fG6y7prA==
X-QQ-XMRINFO: Nq+8W0+stu50PRdwbJxPCL0=
X-QQ-RECHKSPAM: 0

Hi all,

On 11/6/25 02:48, Joseph Kogut wrote:
> Hello all,
> 
> On Wed, Nov 5, 2025 at 4:15 AM FUKAUMI Naoki <naoki@radxa.com> wrote:
>>
>> I'd like to clarify the situation regarding the v6 patch series I submitted.
>>
>> The original device tree work for the Radxa CM5 and IO Board was
>> authored by Joseph Kogut. I took over the responsibility of getting it
>> upstreamed with his agreement.
> 
> I'll confirm this. I've been in communication with Naoki. They made a
> large number of revisions to my original patch series, which I think
> have technical merit. I suggested they submit the patches themselves,
> and gave them explicit permission to add my Signed-off-by and CC me.
> 
> I assume this was the correct way for them to continue the work I
> started, but if not, please let us know the best way to proceed.

Can anyone help us?

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Best,
> Joseph
> 



