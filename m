Return-Path: <devicetree+bounces-224763-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A9FBEBC7942
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 08:49:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AEEF819E6CFE
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 06:50:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FF4C2D0622;
	Thu,  9 Oct 2025 06:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HIlmvhS3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3950F2D0606
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 06:48:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759992533; cv=none; b=LPcIsJ0AfGPn1i3MqaEUUQtZOgNhcp9bxkr7ru9BMrvGFCVMmg89DnQpTbWx9C2DOip2IEB2xCgVKXqkk+NrkvSKn/W14ajoJbjIUjnhZouVlTFwtqb1mMlr9hqtcO1+IUO4uNJqaBlW4zkDvBiBbDVsNJbsakvx7aFOTBim8l0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759992533; c=relaxed/simple;
	bh=ic9Vss68dPabO721ajneWZTeeiSQLVPNFuFb7lBW75s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pUP1uUk5U5N7GZXcMlqUt+vi+e2nP8tTZS7ymuPZR4ac991IHD+PXXYim03IRzN34eG5Ax9KRBrnBszICeIg5cKd3NBX1V6WfTijyMJsRIXoiPGj7HI1miY//M2fOx4Roam8mXUSB+QArRgs2Il+A1t6iJPU0lsY+JcXpw9eIBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HIlmvhS3; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5996EGqO029228
	for <devicetree@vger.kernel.org>; Thu, 9 Oct 2025 06:48:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	O/X5Uvfbr+U+5LWnL/Jb57ftS3SWraOPoE3A5ZWOA9g=; b=HIlmvhS3G9ASO9yM
	N332g2WzSLEnbtLyo5rAE52mRB+Fznl8t25+LOdG9nOB47ZOKfrnpXdEzX7U5aXT
	SwXEucqkblsE/56rdz0a/RavSvqUvQB1UO3o/oqL+AoJuP3PzvEfElI1qaOI6XHG
	Oktmyq6Hfk8LQabbaF1Z2sYgzl4C4BjTmGcntFlDPt39asRiCask6hOJp39kCLP6
	HuB8eWUE0L6+fYYReLtmMyCiMcgNjWE4XtzbZY7MQOD+QSv+rCFkkyOCANtuqwSq
	xJLbCCRWsSYiMYsrLyqOZsGR2dNe07j1+lazAlBHD97OIE3tkVi/jTCaFpabMQ1l
	6IPulw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4nhs61-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 06:48:49 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7810af03a63so1993135b3a.3
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 23:48:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759992529; x=1760597329;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=O/X5Uvfbr+U+5LWnL/Jb57ftS3SWraOPoE3A5ZWOA9g=;
        b=L5qpgnfS7+4V+FMtDSK6QFM2vYTJcAFow71W5RtuGADgPNuwMVEwv020Un08J6gOEV
         sSStnV18xhREv/gtForxoNIPeKfLbtzlScsAoyds7tyh5R+LG5cy9lyQBsUsPqZsJOh4
         yeehDbiihJOn3DgqVTPX3QvWdYrP+cwCP8G+KeH0a4Dq1jMJOs3a+/kD7vYgDNP7MIJl
         veJK6lP/0/czIMs2tbvSpLXQ0WMo66Cnw0J0bvaD/7zpRFnRDeKsLwH/78uRIOROu4Zu
         VpG7LQVC8XHgqdQ1+mkxA9jdrvbx02mwfDizQ/LoLgf4YeXtx7JJXeXgTUVAuB6G6o4v
         HJ9Q==
X-Forwarded-Encrypted: i=1; AJvYcCUHJWTB5SE6hCk26DrZ1dMY0prVejSapST/huiMxcFeBGk72Dzp92anfUy2+iszSxHFxuNcjgovQehJ@vger.kernel.org
X-Gm-Message-State: AOJu0YyGo0XiGWp1KFAW/hdi1ZVVQyErIM5rxwQlLCGw0i8ycbvv4F8m
	ZJA4nqoEFs/V8OnghGxuLdj5OrfPJ3ipJHfSlIpFaJgk6W3aoLDzMsbT3A5LigtEc6tlQ+jwqmN
	8IIuHWUKNlErbP7hwNuLAk6XllGXTnRqSO7THiuH9VnivVzFII/jxD9I4t0oweCdP
X-Gm-Gg: ASbGncvctTvtW7XzAwPHwY7ulJOfRRGv0x4gm8rg5vKH5yXc+3YLsD3rg7g4KzQW/To
	aFBewhNg4EO0WdrHVGm7MiI5nXgHQ4G28IbtUPPNF1xyRrxUTAojx0XWuxOhCAQoBNO0K8CFOlq
	ElPIEhKmeO8eyRnx+BAG30rebButcAubhFom8azDJxe+evNPasoQ/ad2Q9PF4kvmGe2dRhIdHao
	G+nqon7tVBP0+0Fi1lv/a1AIWYXCNl6Tdi0Xr4FMB4okuZ9pExfQ6jBnHlppr1egxA3kcKZv1vU
	MZ8vtlURZiuUXBro7DfHI2AZHTmqFOpddosO1C4nvO3LOJaAZ/+ugeaUkxt84goZgGidKNQASTg
	8fOASsZV6d7dPXcUvrr+Pl3zEdndRjGeHblo+P0E=
X-Received: by 2002:a05:6a00:23d4:b0:77f:3ceb:92bb with SMTP id d2e1a72fcca58-793858fb3b6mr7616199b3a.8.1759992528739;
        Wed, 08 Oct 2025 23:48:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGj8Rv9uj1kQjcjGsQYqLP1M7EZTs7RFClhYrctbezz0OUijiztZ7vcfVQque68PbIFbDQhdg==
X-Received: by 2002:a05:6a00:23d4:b0:77f:3ceb:92bb with SMTP id d2e1a72fcca58-793858fb3b6mr7616185b3a.8.1759992528318;
        Wed, 08 Oct 2025 23:48:48 -0700 (PDT)
Received: from [10.133.33.62] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-794e22ab4ffsm1796190b3a.70.2025.10.08.23.48.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 23:48:47 -0700 (PDT)
Message-ID: <fdca746b-e1b0-4610-ada1-6d9fd156c7c7@oss.qualcomm.com>
Date: Thu, 9 Oct 2025 14:48:44 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: mailbox: qcom-ipcc: Add bindings for
 physical client ids
To: Rob Herring <robh@kernel.org>
Cc: Manivannan Sadhasivam <mani@kernel.org>,
        Jassi Brar <jassisinghbrar@gmail.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20250922-ipcc-header-v1-1-f0b12715e118@oss.qualcomm.com>
 <20251002003432.GA2714683-robh@kernel.org>
Content-Language: en-US
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
In-Reply-To: <20251002003432.GA2714683-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX9TzIYEgFZ7H5
 5td6XaVThvb3eVbHj/41apgYJIqGnZoNgpoHCloSrSd85FHEEbHR8nEx5fsA75hb90tTLFSepU9
 t26OmSTRqVDjJ7V0fMlHMcBot08ot2nZub0jGXTIwrLDu7Z3OmOkGOLu/6X8h4gVRq14TnZGpcG
 ParFK6em/fxHsooqsQig3xOYTZ3vnAyruBe7d2LjVmwIbrd4lpKt0OdC8SI7icka2W2GDRhw20W
 pjRiT7WclbI0Hm7XfGdcVzSPs0WyHxOZBMKaYuhk5Kj27/vo6SCHT/xtPY9QQcZg+8AfuIwdBOU
 qst2p6pEPacW8qz/8Cxi36vIezGHC/BZ9ZTHW5dVWAr911pho7IDdqS0RUYQdeKmFULLx2llvZH
 FXeZArPU7FL6UW3oeEbEk+jNiNiU4Q==
X-Proofpoint-ORIG-GUID: 1KzUwFTcK3zwxRzZn_2oPu9J96dkZpo9
X-Proofpoint-GUID: 1KzUwFTcK3zwxRzZn_2oPu9J96dkZpo9
X-Authority-Analysis: v=2.4 cv=VK3QXtPX c=1 sm=1 tr=0 ts=68e75ad1 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=lwdf39Mp2klsYuJi8zAA:9 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_02,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 phishscore=0 clxscore=1015 impostorscore=0
 bulkscore=0 spamscore=0 malwarescore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121



On 10/2/2025 8:34 AM, Rob Herring wrote:
> On Mon, Sep 22, 2025 at 08:34:20PM -0700, Jingyi Wang wrote:
>> Physical client IDs instead of virtual client IDs are used for qcom new
>> platforms in the Inter Process Communication Controller (IPCC) driver
>> as virtual physical mapping logic is removed in HW. Add the bindings.
>>
>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> ---
>>  include/dt-bindings/mailbox/qcom-ipcc.h | 48 +++++++++++++++++++++++++++++++++
>>  1 file changed, 48 insertions(+)
> 
> This looks incomplete. Where's the binding additions for the new h/w 
> that uses these ids. This series looks more complete:
> 
> https://lore.kernel.org/all/20250924183726.509202-3-sibi.sankar@oss.qualcomm.com
> 
> Can QCom please coordinate your work so we're not getting the same thing 
> a day apart.
> 
> Rob

Hi Rob,

Sorry we thought all the platform use the same phy id at first, as different platform
has different IDs, maybe it is better to maintain it in different header files
like qcom-ipcc-kaanapali.h? Please let me know if you have disagreement for this.

Thanks,
Jingyi

