Return-Path: <devicetree+bounces-172010-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C82FAAA0F74
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 16:48:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0E9534A2D8B
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 14:48:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA67921B19D;
	Tue, 29 Apr 2025 14:46:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="yEeVUC7B"
X-Original-To: devicetree@vger.kernel.org
Received: from fllvem-ot04.ext.ti.com (fllvem-ot04.ext.ti.com [198.47.19.246])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F39A8433CE
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 14:46:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.246
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745938012; cv=none; b=CbfzUr+RcNJH2xJBjP6kJbohOTVliZltMm8h209Rc9op8yKXTav43WNhauMXn1oJc2MVTAPbhhp0TZKyGBGD6eS2bb0yo+lSkn7f80DWOk27pnCBzrRjPHqRYQwI0z1G8PT8KXqWARi/tyBDfz05kBvidk+W+cxFcJFDmm/vQuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745938012; c=relaxed/simple;
	bh=TPSnSvhdhTsFhy05HO1g4CfCj5oEpCqxwIKyjLdNoW0=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=rxsz+zIw3Duar1E7Bl+Upf4DqLsMlQ4I2IwM09m04XyR6NNwmoMFctrdHHP77/vJkh7GlCeGRJkg88wphzwcnGfWmH4uH46DldmMunFG472cbY+NS6fEAsiq0raBEODYl6kzXUB+qgWXzOiQiPhjd4LK5gdXgaj3jkgrBTckXAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=yEeVUC7B; arc=none smtp.client-ip=198.47.19.246
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllvem-ot04.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 53TEkjNL3699137
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 29 Apr 2025 09:46:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1745938005;
	bh=AUtH6qYBNKD+N5mY6n6DhaFZniwZFgbgJcKa/OYa00o=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=yEeVUC7BKsxRLNh/tIJg1TLtguiDJc9T/hlHcOxEP5xEaiTVszFaXTM6kkJ0Ra8M9
	 LCLHU/FjPOSgCf6VvYZGNdITTNtKC2zcMRbLJa6LFSBhLVHdn4Kytt5GYpbKmNz5L+
	 r37iSeiSV85FmeB1Z6NIADrg1Wrwo+CqzZcFmOVA=
Received: from DFLE110.ent.ti.com (dfle110.ent.ti.com [10.64.6.31])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 53TEkiZO013806
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 29 Apr 2025 09:46:45 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 29
 Apr 2025 09:46:44 -0500
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 29 Apr 2025 09:46:44 -0500
Received: from [128.247.81.105] (judy-hp.dhcp.ti.com [128.247.81.105])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 53TEkiuj117182;
	Tue, 29 Apr 2025 09:46:44 -0500
Message-ID: <9128dc1c-8f15-499b-84f6-f824bbfe61fe@ti.com>
Date: Tue, 29 Apr 2025 09:46:44 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: ti: k3-am6*: Set eMMC clock parents to
 default
To: Nishanth Menon <nm@ti.com>
CC: Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>
References: <20250429142333.4140010-1-jm@ti.com>
 <20250429142825.bvrbpoc5iz32wh35@garment>
Content-Language: en-US
From: Judith Mendez <jm@ti.com>
In-Reply-To: <20250429142825.bvrbpoc5iz32wh35@garment>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

Hi Nishanth,

On 4/29/25 9:28 AM, Nishanth Menon wrote:
> On 09:23-20250429, Judith Mendez wrote:
>> Set eMMC clock parents to the defaults which is MAIN_PLL0_HSDIV5_CLKOUT
>> for eMMC. This change is necessary since DM is not implementing the
>> correct procedure to switch PLL clock source for eMMC and we have a
>> non-glich-free mux. To remove any potential issues, lets switch back to
>> the defaults.
>>
>> Fixes: c37c58fdeb8a ("arm64: dts: ti: k3-am62: Add more peripheral nodes")
>> Fixes: d3ae4e8d8b6a ("arm64: dts: ti: k3-am62a-main: Add sdhci0 instance")
>> Fixes: b5080c7c1f7e ("arm64: dts: ti: k3-am62p: Add nodes for more IPs")
> 
> I thought I had given this comment previously as well, please DONOT put
> multiple fixes in a single patch -> All three are solving the similar
> problems, but on three different baseline - please think through how
> this patch needs to be automatically backported to previous stable
> kernels.
> 

I understand now, will split this patch in three, thanks.

~ Judith


