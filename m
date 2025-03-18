Return-Path: <devicetree+bounces-158554-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A063A673AF
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 13:18:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BD67819A3DAB
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 12:18:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B87A20A5D1;
	Tue, 18 Mar 2025 12:18:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cwIdQksR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 521B77464
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 12:18:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742300319; cv=none; b=c1kx0e1wf+cpL+HyZ1UjSzSLgz/NiKXgk3awQTZg2fBNvSA1wcKimIDdhC/AJdnWcMl1Dg1LJH+P7v/MpnW0JJgyKVHN9TpNWjve+mEGJ71BSmpbsIacmzoai8LMBJnv1htYVQ/GsTcHgTM55QisQa86nmrpH9IJdSkDnq3QDPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742300319; c=relaxed/simple;
	bh=am/30GpZTY2s+8gT/8IN/7HWvN3ksEhNLeGyzvnK2DU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=r6c+/sH0PaQgld6JaZkYir//BwL77D4Q1uFtoBE1EiJkZ1c2tNEwIoS/w8aypjezbLyJZyhLwL3OMurCLCR4kZc+s/CglNOkrL/eoQmD7xNAtMtH/is4H35r8X3jXxRrKvKVWYzumaNmKT03GkRCiiPHlLT1m6aSSVFuVHGJDF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cwIdQksR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52IAjrJM020855
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 12:18:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6FP47rR0U/ctCK4nyi+etF5q5oJtPAAebWv7VpEswOc=; b=cwIdQksR4m+RB154
	7oLW3DHv4dhACB089rn3HEPHi45/50UUBOvI6L6ayuFNXxxOBUA5PtUw6SHhmjL4
	gZPd9UCwTdDeEmOSFeUC6OXX6pfiHaY1AE5ssJaLd1z14EeQP/DJCFxQSFyn6xLR
	anbDQCk1lzAp2YiTfCLS+6bZw1REHX8hZ/djsGYhIPwHEEikAczyVFJY+F5mlnyw
	72PZnaA1XKyv74gGHAFytAGu/jqOM71XNaJVDfGYS+a8uRL6RYeiJXI2MYDTo2GL
	WXGgEaB0DvxIG0GHhPXKVGqHIcjztmdSD5yvsaI6jhUm+GanRcODSKW77GFVWBcx
	o3bWEQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45exxbhq08-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 12:18:36 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c552802e9fso82035285a.0
        for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 05:18:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742300315; x=1742905115;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6FP47rR0U/ctCK4nyi+etF5q5oJtPAAebWv7VpEswOc=;
        b=SSg/FFaDBa7dPuApQpF3aWeDCC2hMdb2E5u43lNWLNWa9xxwxWsEOQhDfnf0/uAESZ
         t8RReZZqHaid6H9p/hNF8fSRr0jnqHUQRTD1ONwcIabI3LrzbXAAW5H2JhebQEGy/lCc
         SdfzCux2kUYdjx2UsQOOCc3UBHn1IY/gHLu3RLQIFD883Otld0dumeXosuW37+DqqXtj
         fylH1plvr2AOa9oVJvxyhS45hsYbFeDPli513ohFxksdd9C602IE0dUDW7AA7oQiAhu5
         nhqOapC9q/IAmHbBpyh6TZeObTwS6vJTS9YZiGi1rnectopdkWQu3XCLwwHORejLkxjz
         ExOA==
X-Forwarded-Encrypted: i=1; AJvYcCVlm5RVCQIdkiMr4UzYrq8zqdCG+d1Vf2kK4Iw2Zqkwp5oHX8KeuolL5YbrMX4iz0oUKHL3jgoYCjXq@vger.kernel.org
X-Gm-Message-State: AOJu0YwXjrPVBFPUo7/ngQD1rM/b47Q5pdedv7dH1X3tEk6szZ/N3kuS
	aSNh+gFdlDtDXoLSMo4gVOJEsbKnXkYdblMYaRAz+xH2RBj4nE6yxvixeVTfD0SZtp+mxsrBCIt
	I1yZuJf+mFzDMMQwUzix10s8+zvMNYfY9J4UgP+1SIkR2RMqgDh+OBMwsgFp8
X-Gm-Gg: ASbGncvReWd5CkX0Drr6Q1tBv95FOeLHsmbrdGg/XYlNaowbpeIF79xw2zdk6xCflAw
	4IOzaiYnsMzTbwuUAomKBpoUb15zjqjGkRz9wZAry0fUabsfWmIADV2Fhr2dRsVy71igForN1/p
	enjhhaI8NWV/0I9iY9vul5JCTv2cWaFc95IbET4dovBnlpvdxH9Nbbq3+XaM1KHNZ/P1UStQqE4
	eacH6ZmsMPEtE2Mz5ncIV1z+14O3E8eVOEdPo2+lW0qtxynPuqdtZoc9hUzopydRTmDqy/j559v
	njozEZ34zzaumxO6oNdr7XS/Ez1FoUrXj7Aua8amO8gPVDXnAYwhR+uwzCHuhBxJZH32uA==
X-Received: by 2002:a05:620a:2416:b0:7c0:c024:d5 with SMTP id af79cd13be357-7c57c80ef86mr893631985a.8.1742300315340;
        Tue, 18 Mar 2025 05:18:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHEG7CK07mwtkmA6s4uH/NbskYpJIBzUzTHhz070ZIicYP5YWlI6I69wYt6IFXGqD21vMt7AQ==
X-Received: by 2002:a05:620a:2416:b0:7c0:c024:d5 with SMTP id af79cd13be357-7c57c80ef86mr893630785a.8.1742300315032;
        Tue, 18 Mar 2025 05:18:35 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e8169b896csm7681095a12.44.2025.03.18.05.18.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Mar 2025 05:18:34 -0700 (PDT)
Message-ID: <ed903f42-30e5-491c-9d87-16c1df854b0b@oss.qualcomm.com>
Date: Tue, 18 Mar 2025 13:18:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: x1e001de-devkit: fix USB retimer reset
 polarity
To: Johan Hovold <johan+linaro@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sibi Sankar <quic_sibis@quicinc.com>, Abel Vesa <abel.vesa@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250318074907.13903-1-johan+linaro@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250318074907.13903-1-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=QN1oRhLL c=1 sm=1 tr=0 ts=67d9649c cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=3oMfD0ubo92HsboIllkA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: J8m43tD7njoAaW0lzqCjLKpzZAl1qNk0
X-Proofpoint-GUID: J8m43tD7njoAaW0lzqCjLKpzZAl1qNk0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-18_06,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 clxscore=1015
 phishscore=0 spamscore=0 impostorscore=0 suspectscore=0 mlxlogscore=934
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 adultscore=0
 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503180091

On 3/18/25 8:49 AM, Johan Hovold wrote:
> The ps8830 retimer reset is active low.
> 
> Fix up the retimer nodes which were based on an early version of the
> driver which inverted the polarity.
> 
> Fixes: 019e1ee32fec ("arm64: dts: qcom: x1e001de-devkit: Enable external DP support")
> Cc: Sibi Sankar <quic_sibis@quicinc.com>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

