Return-Path: <devicetree+bounces-246127-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB58CB8C9B
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 13:22:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BB4DD306C73B
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 12:21:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E84D225779;
	Fri, 12 Dec 2025 12:21:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CKElu3Bi"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D136E3128B7;
	Fri, 12 Dec 2025 12:21:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765542104; cv=none; b=ktIZ5Jan6az1hnTeKjPucZCRHT/5vw2NHc1Qw5fhgS6A9IvpdouH8ajVKKyCy7wxDzDYpPX5zWYz+pDjIQq3Kq2FWVLJVQ/6q8j2YfORZEUPJWb2x2wxWONyZwma2iG606YYZY8ViZ5SlYAghvhsH8rN4N811iPNHIWMP/0r1AY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765542104; c=relaxed/simple;
	bh=qwHwsnvXdxZz+JlFM9cCdo07mygZe4+6jXInLh8nByk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sJRBulYNUOn4B5Wewe37AeD9XSTuganxL1HOQryFi2BHwqzOi35VPLQE4VueACUnUixjufHk8GqWRKFmuTU7z1wLRoihcwDgh8GnaHwwJ/kLPH4g1CJw3/WspOrOidisp/VmsHYGelx/L5CVaR03hbt8MWSc6A5fzzKw9r6X5/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CKElu3Bi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE028C4CEF1;
	Fri, 12 Dec 2025 12:21:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765542104;
	bh=qwHwsnvXdxZz+JlFM9cCdo07mygZe4+6jXInLh8nByk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=CKElu3BicyqwaWZYENC4wJG1yQwooaczRcRsYnOCFCXaqx22FzgofIJpSyB4ZJIA6
	 HAXkGswAi6DfX90//331fSj5QQpZPdx9EAvj5wsG/J/8e2xm6pSSGipXquKSKZ4xax
	 YcKdgd4Ob/KaqC8QDwUdJtvCOA0JataSEMl8cYa91wufJRPfP+jNWdBVlgD5Z6OMQ7
	 oFSdej9TT5cFt2HGA4/KxwZqT7Lah/91rXXRAtWMSf0MbWXNWzOzIWInHS+X+U6jYY
	 tvjtBP7xxj0IZNqSUZWDiyeXSk5R0G+AEwexFO7zJFE3y/zuq/X0eKBsLEP+xLmxug
	 hfABycwo2Tg6w==
Message-ID: <7c750ad3-9d93-48e6-b546-719f6f13d446@kernel.org>
Date: Fri, 12 Dec 2025 06:21:41 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: arm: altera: combine Intel's SoCFPGA into
 altera.yaml
To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-kernel@vger.kernel.org
References: <20251211043353.93944-1-dinguyen@kernel.org>
 <20251211135613.GA898633-robh@kernel.org>
Content-Language: en-US
From: Dinh Nguyen <dinguyen@kernel.org>
In-Reply-To: <20251211135613.GA898633-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 12/11/25 07:56, Rob Herring wrote:
> On Wed, Dec 10, 2025 at 10:33:53PM -0600, Dinh Nguyen wrote:
>> For all SoCFPGA platforms, whether it has the "intel" or "altr" vendor
>> prefix are referring to the same business unit that is responsible for
>> the platform. And now that Altera has spun off to be a separate corporate
>> entity from Intel, it would make sense to have the device bindings
>> documentation in the same file.
>>
>> Move the Intel AgileX board binding documentations into the same file that
>> contains the Altera ones.
>>
>> Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
>> ---
>>   .../devicetree/bindings/arm/altera.yaml       | 26 ++++++++++++
>>   .../bindings/arm/intel,socfpga.yaml           | 40 -------------------
>>   2 files changed, 26 insertions(+), 40 deletions(-)
>>   delete mode 100644 Documentation/devicetree/bindings/arm/intel,socfpga.yaml
> 
> I'm assuming you will take this via soc tree. Let me know if you want me
> to take it.
> 

Yes, I'll take it via the soc tree.

Thanks,
Dinh


