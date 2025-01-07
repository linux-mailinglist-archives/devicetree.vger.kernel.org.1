Return-Path: <devicetree+bounces-136061-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F56A03A91
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 10:04:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4CB973A1861
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 09:04:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B71691E0B96;
	Tue,  7 Jan 2025 09:04:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="gepdztKq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m1973194.qiye.163.com (mail-m1973194.qiye.163.com [220.197.31.94])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A5C1DFD99;
	Tue,  7 Jan 2025 09:04:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.94
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736240648; cv=none; b=a959rrhAURJm5CjS8fYZr8CvR+64l1/zadnnYNCxnwFI13t2qgqu09qQ+k0TAd1K1iQ25ONglouagBqbwFrF6jDcvhkVJM5fjA3e+F7k1qRjVzxkJ9mS+sF5rzqomnb7DJTtvSvcYe8rjoMnCp+TYkVnSOBBhJFXiXwznxIdzs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736240648; c=relaxed/simple;
	bh=y99pSpOVIHq6vRYvbS8Aaoq5kTd2f/zbgWDDa9Ky06U=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=AZFqhhHGkkVFJvhxSnUr3fEeNBQzIKfdKXrLiJ8PYtczUXo99BFVX+lFsNPOtgQ2Alp98FL8o//KRE5T+zZYR7k6864r8Qw73lQSyOG1QaX3P9RdIbnfIYJL51Uz6d6Axy+8SYKnI/yZ84+StjJrP3ZvADcMn29wJKurCNObTl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=gepdztKq; arc=none smtp.client-ip=220.197.31.94
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.67] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 7f39847a;
	Tue, 7 Jan 2025 15:48:22 +0800 (GMT+08:00)
Message-ID: <1f75f634-5de1-4fd7-949c-123b44a770f8@rock-chips.com>
Date: Tue, 7 Jan 2025 15:48:22 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v3 5/7] dt-bindings: arm: rockchip: Sort for boards not in
 correct order
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
 Chris Morgan <macromorgan@hotmail.com>, Rob Herring <robh@kernel.org>,
 Dragan Simic <dsimic@manjaro.org>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel@vger.kernel.org, Tim Lunn <tim@feathertop.org>,
 linux-arm-kernel@lists.infradead.org,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Andy Yan <andyshrk@163.com>
References: <20241223110637.3697974-1-kever.yang@rock-chips.com>
 <20241223110637.3697974-6-kever.yang@rock-chips.com>
 <dzrmlapgca6vwqpfxi7sub37z4taerinslfthqwqi7jltb4xxh@wtry22ybpd2r>
Content-Language: en-US
In-Reply-To: <dzrmlapgca6vwqpfxi7sub37z4taerinslfthqwqi7jltb4xxh@wtry22ybpd2r>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGR1NS1YYHUkZS0NNT0MdQkpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	JVSktLVUpCS0tZBg++
X-HM-Tid: 0a943fbc743603afkunm7f39847a
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Ni46HTo*SDIVORM#FDEuSE0*
	PgtPFAlVSlVKTEhNSUhNSktPSE5LVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFMTE03Bg++
DKIM-Signature:a=rsa-sha256;
	b=gepdztKqe2bERtuGHBs4iUoDmWFbxRAHq74BJzuNjZScZCckT2jVZtz9xN1Z5eqBgsthK+VNQdE93chKMSn71rIagS5b1JhFtzAxtNGPQw3yD/t8or3MpIcvXfZ/tNDKXcGHUfk+71cM7CQEwPBuX74GnPIx6mrm7G7Mvlg/DcM=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=W7Waz4qoMm7Thy7CdWwhTSGFNbjxkVcZlwArb6siD10=;
	h=date:mime-version:subject:message-id:from;

Hi Krzysztof

On 2024/12/23 22:58, Krzysztof Kozlowski wrote:
> On Mon, Dec 23, 2024 at 07:06:35PM +0800, Kever Yang wrote:
>> The board entries should be sort in correct order.
> And what is the sorting rule for this file? Board name? SoC compatible?

This is sort by the description msg, which should be easy to find out if 
look at

the content in the file instead of the patch.

Will update the commit msg.

> Explain this in commit msg... and please test your patches before
> posting. Public infrastructure is not replacement of your tests (see
> failiure reported by Rob).
I do run the test in my side, but the tool does not show this warning,
not sure if because of my tool not up to date.

Thanks,
- Kever
>
> Best regards,
> Krzysztof
>
>

