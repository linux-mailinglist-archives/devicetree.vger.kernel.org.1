Return-Path: <devicetree+bounces-82192-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3303D91ECE2
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 04:02:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C3DB3B222A0
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 02:02:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91BD94436;
	Tue,  2 Jul 2024 02:02:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=milkv.io header.i=@milkv.io header.b="KQNPgMJM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbg156.qq.com (smtpbg156.qq.com [15.184.82.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0386B3C38
	for <devicetree@vger.kernel.org>; Tue,  2 Jul 2024 02:02:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=15.184.82.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719885764; cv=none; b=r48+wNbDt1JVONSFt0k7PfPx1Mt85KUFMKWXzqrNWpRCtaw5/L0JzNAatu943+Ecf2q49EKPfDtvWVUpe8VTkp03yiVXx5XfC2gZF9sI7TI/ILxEoAOHsiPre/5Lu5blC3KNGAdfqD5FjWshb8UC0Bsmfv47Y4sToho/ruqD680=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719885764; c=relaxed/simple;
	bh=HOWPjCjq9v6LohAFPCOkOj7uIKZvQrNYuLq5rrh4QtM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NZJ9xAuBctrRUaxDkmsTpLNhMnEo55ZN75KZUra0sbZ9Foabyd98aSMpPJvlb2/YeuYzu+tSsdPpNSyTHhqm2iuxG8mTUBFUVqc9GKv6XDXptT2MZ5lv90JA5YCfRZsOD2e/wfAmjNQ8kH7olSqdvWOztK1l9x4oEzq1IpvJcJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=milkv.io; spf=none smtp.mailfrom=milkv.io; dkim=pass (1024-bit key) header.d=milkv.io header.i=@milkv.io header.b=KQNPgMJM; arc=none smtp.client-ip=15.184.82.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=milkv.io
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=milkv.io
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=milkv.io;
	s=pmbt2212; t=1719885686;
	bh=+ldizvF9YSD27PIyYZfFpk4CAQwaf/+/iVcCjRts9Mg=;
	h=Message-ID:Date:MIME-Version:Subject:To:From;
	b=KQNPgMJMPZb8efgo7dvlsschYUUT/QkyrcfMF6J2KJVu1EoxzJmrPYi/ejuhKKZyZ
	 g4dazPRnzV+UepnxhO+o/Av/i6GGMpD4qWgNFPZYsGTb0IiHRF6tWx4DPGxQArixEd
	 /8pSOT5KGqvDyKOS88cyyp5OmSbyNltLx9/UPqlA=
X-QQ-mid: bizesmtp91t1719885684tw3ogjgs
X-QQ-Originating-IP: E6SzRYR6PU3puRvXZ7Hqec3cV+kso3CiffS6Xe0I0HQ=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 02 Jul 2024 10:01:21 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 2448114111142640459
Message-ID: <86A69C6CEBC812CF+32fec2e6-0bee-46da-83a2-336838b6339d@milkv.io>
Date: Tue, 2 Jul 2024 11:01:21 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/4] riscv: dts: starfive: enable heartbeat LED for
 Milk-V Mars
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>, kernel@esmil.dk
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
References: <20240627115236.618-1-naoki@milkv.io>
 <20240627115236.618-2-naoki@milkv.io>
 <CAJM55Z_NaimQJkoykU1+THY_WqNMVsvENpJHJYFPTD3YuXOMnw@mail.gmail.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@milkv.io>
In-Reply-To: <CAJM55Z_NaimQJkoykU1+THY_WqNMVsvENpJHJYFPTD3YuXOMnw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:milkv.io:qybglogicsvrgz:qybglogicsvrgz8a-1

Hi

On 7/1/24 21:28, Emil Renner Berthing wrote:
(snip)
> Hi Naoki
> 
> Thanks for adding the other boards too. As mentioned previously [1] boards
> should not add functions to LEDs unless the hardware clearly defines a function
> for them, and nothing on these boards mention that it should be a heartbeeat.
> As you said on IRC userland can easily add whatever function they want.

on behalf of MilkV Technology, what should we do to add function to LED?

I think even if hardware clearly defines a function, you'll say userland 
can easily do it. any objections?

--
FUKAUMI Naoki
Shenzhen MilkV Technology Co., Ltd.

> 
> Also please add a cover letter when you're sending multiple patches.
> Eg. use git format-patch --cover-letter
> 
> /Emil
> 
> [1]: https://lore.kernel.org/linux-riscv/CAJM55Z_j8gWFyKvsiu-oGDV7Hacr4Amt5FdkHdjKnhZwZgxncA@mail.gmail.com/
> 
>>   };
>>
>>   &gmac0 {
>> --
>> 2.43.0
>>
> 

