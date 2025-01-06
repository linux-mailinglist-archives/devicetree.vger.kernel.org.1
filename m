Return-Path: <devicetree+bounces-135797-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF6CA023CF
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 12:04:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1032F3A4A00
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 11:04:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADAAF1946CC;
	Mon,  6 Jan 2025 11:04:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="rVMfvvgd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF67A635;
	Mon,  6 Jan 2025 11:04:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.132.182.106
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736161482; cv=none; b=jmz2iF4anJ8T1BLuNbKsiauM09tmcazty1bHOoZH150/8/D5mMCiY3pstl4Cn8BrxICW+OmBJ2bRoin8lYYjl8f3Mr6ZG2x2pIX1jaUBB3cM6BSef5U/Tu0L9gndg2R/S4ogcz2Q6eViwblm9EtKiY/wt//ByaSlz97Bh3lr05s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736161482; c=relaxed/simple;
	bh=H8lgh6uw+WN5k2fEjkN2tUO/f18B4r3SyAEnCrPJtcY=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:CC:References:
	 In-Reply-To:Content-Type; b=n4e0YEEfLWoDQmvkzazTIUta0zn6vEwZ2OohOWJIr6AJkc/6W//cJWNtXJFrS5HrZsvOTKMp3s/184karJAP78OV1eHOj1uMnB68ceeS4Pr54nOkCDutdeud4/GrqgRLC47XRDYs1PntkfvQ1MYiK8af89oRAlGHysRn/IbbohU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=rVMfvvgd; arc=none smtp.client-ip=185.132.182.106
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0288072.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5069DNA2025256;
	Mon, 6 Jan 2025 12:04:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	vrz4WaCr3xa3fBLW8MwU/j2Uew4MZOt0oEvE48Id2qE=; b=rVMfvvgdAm4++vQF
	5CNrUlSL0Glzl7b/Y5ylpg4ZFvNiPEIez9NnB1QHk3SYxGBE/nWdHJH/oSwY8Wiz
	OunfY86Pw61Fbw+vs1fwXyyCa5rphZGhW0sXDXVzYc8bVBvlyGmWQlBqeMGgrp9M
	xykBFSe/MzMqChHEEUlmIR4erjLIjD3BwXx0B7ncRBWWbDUZeH9LwcacVtUf0s5t
	3v0xncGvv9BdHV14Llm6rd5PzDJT2z5EhuLPeZVi3XxCFCrhKPlVtGTeWGejsfKz
	VyxipjJB9AEUz6oPSNwT7C6TuDZlLTAMu5mr+4CHkE2fIUHvC+mCnpIGT2y7BsRL
	wvCSuQ==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 440cbrresw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 06 Jan 2025 12:04:18 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 7EBAE40048;
	Mon,  6 Jan 2025 12:02:04 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 0B370270316;
	Mon,  6 Jan 2025 12:01:08 +0100 (CET)
Received: from [10.48.87.62] (10.48.87.62) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.37; Mon, 6 Jan
 2025 12:01:07 +0100
Message-ID: <6a6888c2-609b-4c2a-8776-4b3028edcb00@foss.st.com>
Date: Mon, 6 Jan 2025 12:01:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: gpu: mali-utgard: Add st,stih410-mali
 compatible
From: Patrice CHOTARD <patrice.chotard@foss.st.com>
To: Alain Volmat <avolmat@me.com>, David Airlie <airlied@gmail.com>,
        Daniel
 Vetter <daniel@ffwll.ch>,
        Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
CC: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
References: <20241006-sti-gpu-v2-0-c6bb408d6903@me.com>
 <20241006-sti-gpu-v2-1-c6bb408d6903@me.com>
 <d844f8f2-b5fd-460f-b31b-644bab871238@foss.st.com>
Content-Language: en-US
In-Reply-To: <d844f8f2-b5fd-460f-b31b-644bab871238@foss.st.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SHFCAS1NODE2.st.com (10.75.129.73) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01



On 1/6/25 11:47, Patrice CHOTARD wrote:
> 
> 
> On 10/6/24 22:42, Alain Volmat wrote:
>> ST STiH410 SoC has a Mali400. Add a compatible for it.
>>
>> Signed-off-by: Alain Volmat <avolmat@me.com>
>> ---
>>  Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml
>> index abd4aa335fbcebafc9164bd4963f9db60f0450c4..9318817ea1357d4d66db951513d9bc033b222190 100644
>> --- a/Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml
>> +++ b/Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml
>> @@ -33,6 +33,7 @@ properties:
>>                - rockchip,rk3188-mali
>>                - rockchip,rk3228-mali
>>                - samsung,exynos4210-mali
>> +              - st,stih410-mali
>>                - stericsson,db8500-mali
>>                - xlnx,zynqmp-mali
>>            - const: arm,mali-400
>>
> 
> Hi Alain
> 
> Reviewed-by: Patrice Chotard <patrice.chotard@foss.st.com>
> 
> Thanks


Applied on sti-next

