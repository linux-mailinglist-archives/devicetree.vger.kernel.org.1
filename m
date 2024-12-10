Return-Path: <devicetree+bounces-129201-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E60949EAEB1
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 11:54:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 806201882A41
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 10:54:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03CED223328;
	Tue, 10 Dec 2024 10:49:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b="wPuPnjZ4"
X-Original-To: devicetree@vger.kernel.org
Received: from pv50p00im-tydg10021701.me.com (pv50p00im-tydg10021701.me.com [17.58.6.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D881210F44
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 10:49:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=17.58.6.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733827748; cv=none; b=NL6Gr+4t/+uCXNg0676uI7A3mUI6rY71QZIJLW0Zi7cw794SUiCU3z6aQwfPnfudTWr73DsaLK3S5rqh0WSq7p3vxPYXSG3DaMd5YWnT90WXrprTaLh0nA4PXOwVVFrfG6RNv+qVCh6fcWFnEPL4liicHJCtm7X0MEsmP4RHrS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733827748; c=relaxed/simple;
	bh=rCUi7YRbVnOv9RIzb+PDCdMtuonEQTe6dWQvX4EnhBU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Uacoey5s7L/y5jjKB3fAFaHwxpzIMw0ewqLYcFO/486G3gS5qLsRhE1xPpl7t7P5db0BtYvZcC8WjOxQZ0XxvLYFpdpDMAs3az4YaDhCX2aLa4pxs7BTalkCDbQquaVf0XRLKOPTc4OKe6XHuok92yyyjEGRH1ibY/nwTQPly8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com; spf=pass smtp.mailfrom=icloud.com; dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b=wPuPnjZ4; arc=none smtp.client-ip=17.58.6.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icloud.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1733827740;
	bh=O4oOUsbjBRsVMugWmEnWjUVb7nrVJHYabFXrGW4IQ3c=;
	h=Message-ID:Date:MIME-Version:Subject:To:From:Content-Type:
	 x-icloud-hme;
	b=wPuPnjZ4O33udcKvyQgOG/9HBKH4Gjr6h2yI5pQvYv2MKmZGhFfRF0fUchqED+Vtz
	 kjjshoP2XCVap4k/h5eEDwh+dxU6nSgsZqoMjgkAnzMivV5CJA4h6dxGXHqwe7bPe9
	 bzAql3opjcYuOoSm8yJIYHlrxZOgsDbj8vmnE4HKM8OjC3mrDbJT7y0VHx9YC2nv5w
	 prGCsi8X6krXBZpasfej3IBnnOMpX/E6v1rkWt639opPw9pVnmXpubxSpf9tTO9CNO
	 eoIGIQECo36Rul972DixyV17hMc9F8k/a1K4iInEyvl+oOzaH1p87X1JlKof/6KeVB
	 FcQYuOGxMEdYA==
Received: from [192.168.1.26] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-tydg10021701.me.com (Postfix) with ESMTPSA id 9A8D83A09FA;
	Tue, 10 Dec 2024 10:48:52 +0000 (UTC)
Message-ID: <7bb56d1f-f3e9-4574-b7d5-f99d33fbe998@icloud.com>
Date: Tue, 10 Dec 2024 18:48:49 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/8] of/irq: fix bugs
To: Rob Herring <robh@kernel.org>
Cc: Saravana Kannan <saravanak@google.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Marc Zyngier <maz@kernel.org>,
 Stefan Wiehler <stefan.wiehler@nokia.com>,
 Grant Likely <grant.likely@linaro.org>, Tony Lindgren <tony@atomide.com>,
 Kumar Gala <galak@codeaurora.org>, Thierry Reding
 <thierry.reding@gmail.com>, Julia Lawall <Julia.Lawall@lip6.fr>,
 Jamie Iles <jamie@jamieiles.com>, Grant Likely <grant.likely@secretlab.ca>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <rob.herring@calxeda.com>, Zijun Hu <quic_zijuhu@quicinc.com>,
 stable@vger.kernel.org
References: <20241209-of_irq_fix-v1-0-782f1419c8a1@quicinc.com>
 <20241209211532.GC938291-robh@kernel.org>
Content-Language: en-US
From: Zijun Hu <zijun_hu@icloud.com>
In-Reply-To: <20241209211532.GC938291-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: gGUpTdhN8F1P2IQ8UBU2LUOxqEiK6X8I
X-Proofpoint-ORIG-GUID: gGUpTdhN8F1P2IQ8UBU2LUOxqEiK6X8I
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2024-12-10_04,2024-12-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=796 spamscore=0
 suspectscore=0 malwarescore=0 adultscore=0 phishscore=0 bulkscore=0
 mlxscore=0 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2412100080

On 2024/12/10 05:15, Rob Herring wrote:
> On Mon, Dec 09, 2024 at 09:24:58PM +0800, Zijun Hu wrote:
>> This patch series is to fix bugs in drivers/of/irq.c
>>
>> Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
>> ---
>> Zijun Hu (8):
>>       of/irq: Fix wrong value of variable @len in of_irq_parse_imap_parent()
>>       of/irq: Correct element count for array @dummy_imask in API of_irq_parse_raw()
>>       of/irq: Fix device node refcount leakage in API of_irq_parse_raw()
>>       of/irq: Fix using uninitialized variable @addr_len in API of_irq_parse_one()
>>       of/irq: Fix device node refcount leakage in API of_irq_parse_one()
>>       of/irq: Fix device node refcount leakages in of_irq_count()
>>       of/irq: Fix device node refcount leakages in of_irq_init()
>>       of/irq: Fix device node refcount leakage in API irq_of_parse_and_map()
> 
> How did you find these refcount issues? Can we get a unit test for 
> these.
>

find them by reading codes.
yes. let me write some necessary unit tests for them.

> Rob


