Return-Path: <devicetree+bounces-76309-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2001990A25B
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 04:13:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C891728188E
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 02:13:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BC1E176238;
	Mon, 17 Jun 2024 02:13:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b="iQhJR+ZZ"
X-Original-To: devicetree@vger.kernel.org
Received: from out203-205-221-242.mail.qq.com (out203-205-221-242.mail.qq.com [203.205.221.242])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A592829D19
	for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 02:13:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.205.221.242
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718590394; cv=none; b=ltMHSu0rA7al7kCDPy5WLj62/FxOCCk/8vG5c1a3TDGfByj/n9fCmFC3NrffDyfWmGbzEFDmgSKyhQynUnYefI3ZD1Z1qC0FvjEgHgSioTS0gQQBu2SO+L+VNtHi+m2K67BkDXhJ+Sx3YwZBCxJy1pVXcqD+x3az4j8zlC3ukOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718590394; c=relaxed/simple;
	bh=rwA09YQvVv7s5OK02DNYjwG45+OtHyCG5gdyZi343/Q=;
	h=Message-ID:Content-Type:Mime-Version:Subject:From:In-Reply-To:
	 Date:Cc:References:To; b=M9HOnbIFKgAstEDlyHf6pN/545P4WPuREI75O9iBAYCoU0mZusG+qcGUacfkj2flGsJp9ulXF5KBkGSuaDcNDs22rT7Jtd0xAJ+9cyWIB0owZ+bN4xJf5JMctQ9xKSP+7F64/Sl0JK/b1tGRPvOmKUiRIvu/41Avm5IQ0OYMnVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cyyself.name; spf=none smtp.mailfrom=cyyself.name; dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b=iQhJR+ZZ; arc=none smtp.client-ip=203.205.221.242
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cyyself.name
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=cyyself.name
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1718590374; bh=N3YFzKj+aaqqodxPySrFLpDvOg2rcuHAXj9hj0AnAcM=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To;
	b=iQhJR+ZZs1UGJeUuQ3E38xVEH6LOQF3Ih5Rnj8Wur9ANotrwqlR5dc8nE7hBYB73l
	 HKdfjaTd4RJ0Z/YdeCzU4QaBy+OvrfUTBHXFW0iwVaet6yf4QJ0qUhxerAksuXKBJ4
	 ZDkayAYfUxF6SXHgYgfq+AKVV+RbAEK0STzSj1Ro=
Received: from smtpclient.apple ([2409:8929:843:88d1:dc81:b668:28ec:a360])
	by newxmesmtplogicsvrszb9-1.qq.com (NewEsmtp) with SMTP
	id 30E2CC18; Mon, 17 Jun 2024 10:12:14 +0800
X-QQ-mid: xmsmtpt1718590337t3u07rrvc
Message-ID: <tencent_903C4110ED3E47425CB4989C90CE4615BE07@qq.com>
X-QQ-XMAILINFO: NX3xVHLFGis3TvSqR8RRf9YmiGRHD+fPCx6HP/o8cOfCn5mqEKRy9wZqazzJT5
	 fwmbuKEwnpiSVmTFAqqMONntw9mQapZZvZJtBABjo6hljsomONnCQBU1WZXDCanfxmbBRfqP/tzB
	 GknjakwFrYuVqHDvGtlzH6j1ogpi9wlZEt+5dC0b8tglyy4uxLEhC/hJzvfibqQwRCrUstFiQXJ3
	 KUrFFJ9vcnxZGvznlV9qbzuRDhSbPz50fWqonWRH92cM4RbSz9R9AqRUjrDDnixSi/8GoPEXObjG
	 qFyl3YjFVPotDwkU9YGNUX3aAFjVLH0prjnoyvRaBNL02+l+rF8RxgQKT4G+WF1NM0nmFx9D5lbz
	 i/4VJn9rYegqublviF2K6zuLnXYUrTu3HkLrvaXrpvYkwjwPgu/ls10ewTuUb59rKnMMwCieg7sS
	 9L/Ou+PH542vknAkFSv19ChcTw1bvtrJ0STG/Q30neq3tfTO3/zBuJM/6Pdng9ZXK4FWkyvofPOe
	 +eAn/s6nHcs0cmdDgqN7yJjrnXU04R5vlK6b2qOIiQ8yOAdYtmebtvBEvaFPFb6BaYmFfTtz6E4e
	 C/4SH6NKUu7XYIWDPMy30k65GFHfDsFg2W8l2bipOQeudIPEhFin9wcRsK2hHELQnn2b3GCoSpaO
	 dKbbjlN/vnqPjkIUImFK1m8EkCApMj0bGDr1wEuJMxIbviNgfIq5YuqxJsuX5dhyrPkQ75lIe78+
	 5PVYoU1UczSsuTnSAp3N7DGRZfKH0odGX2jfDXxaf7nUKaxouRjGCyplfFu79OeN2FZDnwimDDNC
	 bEq070X8+TbPDUVof3abWItdXRt4o/d+8Ac7qnB16hIImAwdFm1UKKzJjXiEW+1or6eX7DzzZBjn
	 yosD5UHIarTf2BOgzqVMR7wb+pW9ptZXqM7eNIonGsFeo9ifeN7n8n3oJstlpWwMKF/Ru0lO+6ZE
	 1SfII/Ykqnz8sa04Q6HEcNgu0Sxl3SO6AIrJAkdpTHkV87h5IyVg89ECC/xAtweK0dhTZas1/RUY
	 dJ9jH6A24Iw3gosFE5
X-QQ-XMRINFO: Nq+8W0+stu50PRdwbJxPCL0=
Content-Type: text/plain;
	charset=us-ascii
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.600.62\))
Subject: Re: [PATCH v1 6/9] riscv: add SpacemiT SOC family Kconfig support
From: Yangyu Chen <cyy@cyyself.name>
In-Reply-To: <20240616222636.GA3983622@ofsar>
Date: Mon, 17 Jun 2024 10:12:41 +0800
Cc: linux-riscv@lists.infradead.org,
 Conor Dooley <conor+dt@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Samuel Holland <samuel.holland@sifive.com>,
 Anup Patel <anup.patel@wdc.com>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
X-OQ-MSGID: <0E6182E4-714B-4FE9-823F-955C40CB90A0@cyyself.name>
References: <tencent_BC64B7B1876F5D10479BD19112F73F262505@qq.com>
 <tencent_D935633C42BE1A7BF8C80553B5571C737009@qq.com>
 <20240616222636.GA3983622@ofsar>
To: Yixun Lan <dlan@gentoo.org>
X-Mailer: Apple Mail (2.3774.600.62)


> On Jun 17, 2024, at 06:26, Yixun Lan <dlan@gentoo.org> wrote:
> 
> On 01:20 Mon 17 Jun     , Yangyu Chen wrote:
>> The first SoC in the SpacemiT series is K1, which contains 8 RISC-V
>> cores with RISC-V Vector v1.0 support.
>> 
>> Link: https://www.spacemit.com/en/spacemit-key-stone-2/
>> 
>> Signed-off-by: Yangyu Chen <cyy@cyyself.name>
>> ---
>> arch/riscv/Kconfig.socs | 5 +++++
>> 1 file changed, 5 insertions(+)
>> 
>> diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
>> index f51bb24bc84c..8a5775586845 100644
>> --- a/arch/riscv/Kconfig.socs
>> +++ b/arch/riscv/Kconfig.socs
>> @@ -24,6 +24,11 @@ config ARCH_SOPHGO
>> help
>>  This enables support for Sophgo SoC platform hardware.
>> 
>> +config ARCH_SPACEMIT
>> + bool "Sophgo SoCs"
>              ~~~~~ is this a copy & paste typo?

Yes. I will fix them soon.

>> + help
>> +  This enables support for SpacemiT SoC platform hardware.
>> +
>> config ARCH_STARFIVE
>> def_bool SOC_STARFIVE
>> 
>> -- 
>> 2.45.1
>> 
> 
> -- 
> Yixun Lan (dlan)
> Gentoo Linux Developer
> GPG Key ID AABEFD55


