Return-Path: <devicetree+bounces-235012-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A7AB2C339CC
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 02:15:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 25EDD4647D2
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 01:14:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64E8B243951;
	Wed,  5 Nov 2025 01:14:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="I0WzNt1o";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PtD7IxCn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0F511E5201
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 01:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762305275; cv=none; b=hzlde+t66WebzUCe+DESwhuNWf0Z1krOU7uOwNQAEDqGoIMEOsCAWUl27JDruTLtQtspLF/8v5/9v8xJsjjvyOzaxJfRKAUQftoQH/N7KFYKsQG+AxhyzxkLRg74fnCjiR/SnerQJR7d3R0jsNuNIm2ohrDlLX0xFocGXQaWMrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762305275; c=relaxed/simple;
	bh=C64jZYQf1HDqvQtVJlXXsDCo+WCdnQpr7HP6+q0YmPg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GdFWOKdZ7X39+rrhYongTFzSqDmK4pQP92RH4SY+maP2RTei0Q4Dg8bXVjeJTp8SOXpoqaEJSSSnxLQMkxTTpy7+Npjf2UgHXvFmL06C+SF8AaFQd7lFl8q/Y+2FErnJ68b92RbT5ZGWmpapE3ZaOmbLeYQNAI1p0uwFG16QzGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=I0WzNt1o; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PtD7IxCn; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A4KfqgI2996748
	for <devicetree@vger.kernel.org>; Wed, 5 Nov 2025 01:14:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bmKmcgnAzcg6F1fHCkzcngwonJWP7CEwpKltxdD0V9U=; b=I0WzNt1o5RNYEuLn
	clZx1+LqrhIdX+IqGLWSuWPCxcxQDB0iPOuIVHVmmlOaZ7H2pgLpP7IKKNvLRk02
	gLhQgwVb5tggVA7uo9EE4w+78ecKDFWGCtsppRzI0ghHMLbXLXCllU2lReaDeW26
	p8A1nQSB+aJJRuA8Cdt2WlOnXpD3PBYTaI1oqoDbca4ThzDPXTfBapiXI1uop1OI
	KbY226Fyssg+hFq8sq9qv7QLDjegEsxKlCgCi+cLa9kuXpa0xsCIhnR/NtpPMn6W
	KudVgOV1iCc41+szXhjSOXZMpgcA6GtybFk2Z3YlMcBvX38+FEk4UnS0eV5v3tJh
	ZCJKng==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a7c7jk346-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 01:14:32 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2956510d04cso43546475ad.3
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 17:14:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762305272; x=1762910072; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bmKmcgnAzcg6F1fHCkzcngwonJWP7CEwpKltxdD0V9U=;
        b=PtD7IxCnVljb8xs97S8Xk35fXLmPKZgQD+OOGDFgXNHKMVDFxZfye0ua2m/WJN81MM
         ot6E1bhEQ+h2n/S033802mfDMEi1OYQm/74KugB6ZTKR1sW0PjzAs/6aFQpJLYgjJsOU
         EDu4tPWMJ+cJaebJayFlfNt+xpbMc0owrPHnwZAVOQGRnZLkEXs79hC9kWE63Z+W1X0h
         3OYggy4/kWl7vTvPM6XE85ZXCPcJ2Z7fmYQ+P82BMb5z0f8zI6W5S19Ss1k6qUPtOe/z
         S2Lt8rm2Lak5DjeEZJa52szW1Zde3KiV2UDp4KVJbe2pThaGE7nwUwHO8njCfdwfJmHu
         AYkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762305272; x=1762910072;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bmKmcgnAzcg6F1fHCkzcngwonJWP7CEwpKltxdD0V9U=;
        b=NrcYLjgTEID2s/nzgFXubo0g9VHh9VjrZRU2tZBf+Scqd+4xlBw834wBztbvutyKe0
         fELNkKI2g7VMHSc4Qcq/n1zbSTmRWJAA1QKAEixFgSp+MlDvsmnJIkWI2AC9WSEjQl/L
         UEmLFDCFWod7qKNyj2ujOjnjCJKwOrD6xzyEfe9ZlHOFASsiH6c9q2P5U3RSnhrNuOq3
         5AgtHo925vh9IhixFExOXRsb5hWvbvk7hHAvXAp56HIfEBuaXJgT3/wHAobQtZAOwflU
         g9+S7plV7FYgS2HT+nzmLuu3bnihVvvsPN/Zq9vXZFHybmsphldJxSs99uffeKisNMOl
         14NA==
X-Forwarded-Encrypted: i=1; AJvYcCXkCXC1zSIL1EofpKE3Ad8KriGr9eDcV9GbhVacwBhPJApZv2c5ILw/kqXgUvZgdLpfdsiSmG+l1o6n@vger.kernel.org
X-Gm-Message-State: AOJu0YwQ2CPHgE7+WbhH4/4sSYDpI6ngM6rHrxmxUL/LN/TSKUd+2IhA
	NUP/r/F4VcffFgR639aV+w5wC42Kh8BrhpN9A1v9McagOf9ReuQk1eI+1n8HBjAckppjPDr9KPE
	4xhAAVWhADcDz/FuBGUMGsO9NWAGVhor18gw2t9C56Q1Uq70IWruZAIcRXsTB3yz7
X-Gm-Gg: ASbGncu9vglrcaWytvbpKrdpiS4/rImBv8uWslgut4P/WDmUrU7OzUt2HtPM55zesh2
	EOH3e+u5x5Hu1axH8Bgjcux3u5SO6yVLHST/Dz94Hf05GsGysgxPua2CXY9UcFSkk+eGVHxm7KV
	BvUYsXk9XIxixo+mP7xCnadSseVG6WM/Y0BXPTzs+/QqdqhVwDB+AHCTMu8b2gd1NkW1+YChjH7
	hneoc5hju43Jn+s+uOY4NzOizQKAvAZIDVIcwsdsvRfLye9X3ObLMtjiHAwl2/bFXqqFjxL7J5m
	eaz3cBAD9FgWhW17R1LEPQmsoZcNHum77o0TMhgKOk5obRpl8k6vzdDHF3hkeut8cjT9bb+w8QL
	FspdA8vUZ0Zlt4JbZoEFOc99Fb18WQESgxD7V9YsP0GRtZTE7LejaIW5/Z3d3S1nQ
X-Received: by 2002:a17:902:f607:b0:290:29ba:340f with SMTP id d9443c01a7336-2962ae671a1mr18399925ad.42.1762305272195;
        Tue, 04 Nov 2025 17:14:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEED/fTV83G2ZG7/CS+zuzRag4nZh2Fw/C150/51l7Zurc95Tng0uT8OYLPRpC5Vpxhxx6R4Q==
X-Received: by 2002:a17:902:f607:b0:290:29ba:340f with SMTP id d9443c01a7336-2962ae671a1mr18399265ad.42.1762305271615;
        Tue, 04 Nov 2025 17:14:31 -0800 (PST)
Received: from [10.133.33.139] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29601998893sm41616145ad.40.2025.11.04.17.14.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Nov 2025 17:14:31 -0800 (PST)
Message-ID: <8a7dd1b4-505a-4507-8cc1-75d955c706eb@oss.qualcomm.com>
Date: Wed, 5 Nov 2025 09:14:24 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: hamoa: enable ETR and CTCU devices
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach
 <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251104-enable-etr-and-ctcu-for-hamoa-v1-0-af552cfb902c@oss.qualcomm.com>
 <20251104-enable-etr-and-ctcu-for-hamoa-v1-2-af552cfb902c@oss.qualcomm.com>
 <25b7abfe-1881-41e5-914b-ee16ce63ed3e@oss.qualcomm.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <25b7abfe-1881-41e5-914b-ee16ce63ed3e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA1MDAwOCBTYWx0ZWRfXwsO4XwW4cgI1
 +8hVgPV4HJ9sQXWRnk2Aa0+2b+/CkHvVgsJ7AWYXhIo7Ud/JpIxieZxwEiYeYQyofeSXC9hBl5o
 RCnfWxvjux7mSdcesiJjR+OU+I33iRdRFPt+5BDf6B5DsuJka1lftz4fozGqD1Foz3mtrDE6PON
 0Aa7ecEuEoNaDxpIYveiaKGz6Wfftrqkuh3JnbZGyaRRqnyevr2jtMPmOjz4ouIn9fAWygF82VN
 ujXimwU3g0hhxcipZP9WwAdx4nkUQRKEjvo9CyC9dGbKdyC3SC2PnTayKjzrwwh0AJJFNkqPIl9
 HkPZvd6HkcahK8KwkWael/ZyHDM0RjAh9OI7LbqpZEFQV1Ljul3Z+GDCxkoLF8n3CkZkVz8fodm
 vci7UMM2EKs56JjIzsC3xaMKY9vqjA==
X-Proofpoint-ORIG-GUID: gJ6IH9ZgGbW5T07n0NRF7y4suMoYkzWq
X-Proofpoint-GUID: gJ6IH9ZgGbW5T07n0NRF7y4suMoYkzWq
X-Authority-Analysis: v=2.4 cv=DvNbOW/+ c=1 sm=1 tr=0 ts=690aa4f8 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=DRhC30DjRFB-TwiKtc8A:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-05_01,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 malwarescore=0 phishscore=0 bulkscore=0
 lowpriorityscore=0 priorityscore=1501 adultscore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511050008



On 11/4/2025 8:47 PM, Konrad Dybcio wrote:
> On 11/4/25 9:10 AM, Jie Gan wrote:
>> Embedded Trace Router(ETR) is working as a DDR memory sink to collect
>> tracing data from source device.
>>
>> The CTCU serves as the control unit for the ETR device, managing its
>> behavior to determine how trace data is collected.
>>
>> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/hamoa.dtsi | 160 +++++++++++++++++++++++++++++++++++-
>>   1 file changed, 159 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
>> index a17900eacb20..ca4a473614ee 100644
>> --- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
>> @@ -6713,6 +6713,35 @@ data-pins {
>>   			};
>>   		};
>>   
>> +		ctcu@10001000 {
>> +			compatible = "qcom,hamoa-ctcu","qcom,sa8775p-ctcu";
> 
> Missing space between after the comma
> 
> no issues otherwise

sorry for the mistake. Do I need send a new version to fix it?

Thanks,
Jie

> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Konrad


