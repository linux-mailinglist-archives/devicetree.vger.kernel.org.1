Return-Path: <devicetree+bounces-136040-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 99117A03939
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 09:04:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1F59B7A1AE3
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 08:04:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E54FF1459F6;
	Tue,  7 Jan 2025 08:04:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="fFCSiGMi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m127206.xmail.ntesmail.com (mail-m127206.xmail.ntesmail.com [115.236.127.206])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B21561862;
	Tue,  7 Jan 2025 08:04:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=115.236.127.206
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736237052; cv=none; b=MaCdX5NfacyYPXfUtUXSHqnlCAkn9619iKnkGi30+zg/ugU86MfwUyLC9YtKPXCwJ+V3PALobrDZxWZQ4L+bpNtwUplMHcKM6FUZ11qNXZ8O2IzxzcTQat66+bUJCtqztIe1jBkRbTza2KsuDTqRC9JEpIqlxfryl8u2BMC9q6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736237052; c=relaxed/simple;
	bh=y99pSpOVIHq6vRYvbS8Aaoq5kTd2f/zbgWDDa9Ky06U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=W6SEy6ZyPalUzKJ9oMcw++JOvAsFQnCR94YY90HzvkcvFBGdO+HtTLsqfroWf4/jlKxnoLMPoE6FZqXRogHFdhyjKtZTXijCYA7m+zPh3N8Qulo4FqjnFaSs9eRNgC9I1dOLzlJPtbDCYNvKrR2q94GlWy4HzDHkFrw+ZoYenYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=fFCSiGMi; arc=none smtp.client-ip=115.236.127.206
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.67] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 7f2e6f8d;
	Tue, 7 Jan 2025 15:28:41 +0800 (GMT+08:00)
Message-ID: <df8983a4-5e0f-4eae-b163-05788b2bc7cd@rock-chips.com>
Date: Tue, 7 Jan 2025 15:28:41 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
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
From: Kever Yang <kever.yang@rock-chips.com>
In-Reply-To: <dzrmlapgca6vwqpfxi7sub37z4taerinslfthqwqi7jltb4xxh@wtry22ybpd2r>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkJMSlZJHxlMGUpLSxlLQk9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	JVSktLVUpCS0tZBg++
X-HM-Tid: 0a943faa6dca03afkunm7f2e6f8d
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NhA6Cgw6NjIQExMCSxMuMU4K
	DQMKFCxVSlVKTEhNSUhPQklJTUhKVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFMTE03Bg++
DKIM-Signature:a=rsa-sha256;
	b=fFCSiGMiQG14SsmasmUq9Z2NiXJPBN9ENW4gZ8eVH++l8WiemtuurIUtbnrKpS3ut+xS0hrKcV43Nx+AEi4OB5U288HibqvS/M4t+NDtFwF4Pbu7Yl1DhD+uxpeWTnz3qiN4+j8ouxQc82bp3JfkRyuAHnGSjLJ6vH9HnbKbAgU=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
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

