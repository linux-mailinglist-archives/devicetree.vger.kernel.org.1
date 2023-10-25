Return-Path: <devicetree+bounces-11698-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DD2F7D65C8
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:51:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CECDF1C20B8A
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 08:51:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F5731D6B6;
	Wed, 25 Oct 2023 08:51:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="slvhiWVD"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9761CAA6
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 08:51:04 +0000 (UTC)
Received: from proxmox1.postmarketos.org (proxmox1.postmarketos.org [IPv6:2a01:4f8:a0:821d::2])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 6CC25129;
	Wed, 25 Oct 2023 01:51:02 -0700 (PDT)
Message-ID: <3cfca397-fefb-45d1-87b8-ce7ac6ef91d4@postmarketos.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=donut; t=1698223860;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=1+DN3ZtKnTApis/Enr4XHCyjUjQUvZbaUNeoYZK7rdk=;
	b=slvhiWVDtHDEXoLU4BT+7ZNfYNlQTmeNA6Y5LoT/8h0+N2G7vqGhOhZMrYD28tpQUnKt93
	3jm6gyUzxyJkwHD4FPEYHz6B8c91eWCoiZUw9JaF1TUhpdgsjOqIRd5CncUtzZqCKxe7eW
	CQ/5R1Vdh5ou//a1t4PkVEYGxIumYeg=
Date: Wed, 25 Oct 2023 10:50:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v3 2/4] dt-bindings: arm: qcom: Add Samsung Galaxy Tab 4
 10.1 LTE
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
References: <20231025083952.12367-1-newbyte@postmarketos.org>
 <20231025083952.12367-3-newbyte@postmarketos.org>
 <8154fb11-c18f-4d22-a02f-7fe1a6c4f012@linaro.org>
Content-Language: sv-SE, en-US
From: Stefan Hansson <newbyte@postmarketos.org>
In-Reply-To: <8154fb11-c18f-4d22-a02f-7fe1a6c4f012@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 2023-10-25 10:48, Krzysztof Kozlowski wrote:
> On 25/10/2023 10:37, Stefan Hansson wrote:
>> This documents Samsung Galaxy Tab 4 10.1 LTE (samsung,matisselte)
>> which is a tablet by Samsung based on the MSM8926 SoC.
>>
>> Signed-off-by: Stefan Hansson <newbyte@postmarketos.org>
>> ---
> 
> This is a friendly reminder during the review process.
> 
> It looks like you received a tag and forgot to add it.

Yes, sorry, I just forgot about it. Thanks for the reminder.

> If you do not know the process, here is a short explanation:
> Please add Acked-by/Reviewed-by/Tested-by tags when posting new
> versions, under or above your Signed-off-by tag. Tag is "received", when
> provided in a message replied to you on the mailing list. Tools like b4
> can help here. However, there's no need to repost patches *only* to add
> the tags. The upstream maintainer will do that for tags received on the
> version they apply.
> 
> https://elixir.bootlin.com/linux/v6.5-rc3/source/Documentation/process/submitting-patches.rst#L577
> 
> If a tag was not added on purpose, please state why and what changed.
> 
> Best regards,
> Krzysztof
> 

