Return-Path: <devicetree+bounces-243983-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id DA2C6C9ED69
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 12:25:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 5A7453495E6
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 11:25:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5B2336D4FC;
	Wed,  3 Dec 2025 11:25:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="azXeYlNl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GKFDdlKI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60B192F361E
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 11:25:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764761137; cv=none; b=mz6LougDiFhlE39P92wNReAY8tSRrAmJna9tlQcW7YpftusZQAEOXxbqeKDcuGkzzondql+9Lx2zNFU8YU6bvlpKX9UM3lfI7SfMKn9EC/MTqKcl+XY8AHdScDJUms/MLol1TlWEksXXk23Izi7Zm0ZT559LUInKpsyvq3hG11Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764761137; c=relaxed/simple;
	bh=wLCFESleT3mEI8cKzr9T55oK4FyvroDXdtPXKrsA16Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QFVQU5d1+d61eLgA5Gp4L/1OYnHCCcBXXUkYYu04z3tHWqM7DZF5MjxtXSnGILQZNLM8gqitjjYSChxj4q3rF4s90UWpzGRXFdU9CY8jEQIymob6SVSvJ3DiSdNjq4/Re4cOncjJCldTMmucAhP0MGSLYvHtXZQjKm0xNgUkVgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=azXeYlNl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GKFDdlKI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B3B4jfA2626960
	for <devicetree@vger.kernel.org>; Wed, 3 Dec 2025 11:25:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YnBs8xgaZI8/pV93gl0GGKO1Scw+YUhAr0Btx4ZPdWA=; b=azXeYlNl1H37BdXN
	WDijZVQZ7aPlJk1vpkp+rOqR+TqBMeo88CY97KEpXMYVYD9FAGIivzWaIj7d+F5A
	Voq7C4aUmft5Kx0TKaii8wZcRheW+aETcLKVjNVJYEUBmi1/9N9HJGEnLBxENfTT
	3PaHlJn+0WzTDRjQnpUPdwwziHVAYwobtJoHrSQQB2ceLaluYm9VrxKNieqYC1j+
	P0UPZ8bRlhojEwaQCRy3t6qDyIPz5QUfjhk7a1QV1hHASchJ6GtkJvtLrgBh8b2Y
	iH0q3lLVn2LNotePE2NgGO+sQjNdEQFzyIwIUotZ2+WMvu/Hc06ukGgz4uydjGHf
	+au5GA==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4atm1281mt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 11:25:34 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b99763210e5so10927286a12.3
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 03:25:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764761134; x=1765365934; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YnBs8xgaZI8/pV93gl0GGKO1Scw+YUhAr0Btx4ZPdWA=;
        b=GKFDdlKIXJnSSKYYtIc+N6pPZW06dBlWcmD5WSx1h8KcTKeFC7w1YdBiLqi4jHX92e
         CFnOYsktR0B2/18XDj2/yipt4x5NoItw1TJ6QieSoBCjh/eByMDlOfbTvEDdFw7Atit9
         4GVC7IXKYCZNhOhFhuy+9dpo4+zK2LjPws5TxVNM9JGVzT/nQVNq83WEMs7HpUauLcrv
         170zyAuUvk7HXHllFme1zfboYZiggg4tRATNebJXEqVPlrOeI5/5oVInlwikMwfEAano
         XWCw9cmIBzaZlMUqS0X7kgV5pWAFJhQJ6l7BkrksBAaNHfMRklwO9ylXP5dZJYomnxSd
         +q1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764761134; x=1765365934;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YnBs8xgaZI8/pV93gl0GGKO1Scw+YUhAr0Btx4ZPdWA=;
        b=nKO41YDMCEra5A36TJmq7KGiEsBJXo5Agtx/IfirRdfeLttYULiSBU4sCBkVg5mPve
         GpaPJg4qSP90V6LaKUAL+7SxopKcL8XwO7+YOr1fktAQBvnMSjMOexMDoMCA63Lz83s2
         vS+y8d0mFoaEp9gN2HZBf54yqUT4WJnsm0nosGtTsqqhtCTj5RH/RR3Z7/H5uPdjyDPv
         hTstHnRaMsYleUeIIVaGyM5lvKEpV+wcnn79lP+2h6yQizVTXlyl+SPgBbQmVop+X91W
         9ROTkVd3qU+kCfo/0cvA5C5yec8xDOqsSAmFcZTQlSxSh2p0WnMwJXCnkwQvmJ4QjqIG
         px0w==
X-Forwarded-Encrypted: i=1; AJvYcCW2HHoE3F6Wjlm+44kbtMKzyLCoEyw/drtSHPWp3FHeHLk1/weHDW8oD3bw4R81RtuVrCLGPr3EFGkO@vger.kernel.org
X-Gm-Message-State: AOJu0YwJakdbEBbDBDbVeRmkfptH1kh2iKnX3iJ3UVZ38ONrtstG+HLI
	NbKZZpI6uY0gix3BD1IDzK8qEjbrN1ZpMez1hK+YmltskrtYWV0fxXHpKZTGaKVPY59gG4wIOdP
	OEyfvr3uTQ+/ZXbDMfVHskAuf1u2KKsWMDTCViDL1QmA5SN5DlnvjLdEXfwcQ4RcN
X-Gm-Gg: ASbGncuBmx8mtR6jAeJm9ZHQaxvItk/N01+1BH6AGM6GmO/awzHvbD8gxvQcTj85ptt
	YviUE901KIFWbUDcGAeRSb4zNcRq2uYdGBg/yk7RiX/bWhWUd9lh0bQSGzUKQey+/uwoy/8p9HU
	er50iRo2klaoC+xBccx3z7O1bOcw59O7ZstixBXcnXNGRtfjstqROVZNExbpfLwpfEBsSrIRFdM
	ypuuNvZ1Qg8ziZC/jp6AK+AE1KwibZZP1gGp2cyJs0BYhEfv2h/bH4rBFa8yp8wTDmB7z2ndQtH
	/uipLhDVNcBkRdQjEssElQRAhdD9UYHZObtEOazY+p72sFO6zru0jeRXbB5fOCkDgsBpYXDCP7w
	qS8/gYuFoWuC4py/IL8qHNNTq+6mRxf/3f4miSOrXa428Hg==
X-Received: by 2002:a05:7301:b0a:b0:2a6:d0bd:4a07 with SMTP id 5a478bee46e88-2ab92e52960mr970674eec.18.1764761133598;
        Wed, 03 Dec 2025 03:25:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF5V7ZXy9Y8/CV+ditSdoy+4q/BB9igg/hRdHJxnpEofPC3YDQwwxJk6gz2wtunaJHJ7ab1gw==
X-Received: by 2002:a05:7301:b0a:b0:2a6:d0bd:4a07 with SMTP id 5a478bee46e88-2ab92e52960mr970652eec.18.1764761133106;
        Wed, 03 Dec 2025 03:25:33 -0800 (PST)
Received: from [10.217.219.121] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2a965ae9d06sm64456209eec.4.2025.12.03.03.25.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Dec 2025 03:25:32 -0800 (PST)
Message-ID: <4de408ba-c6ed-42ba-8f68-fa342ee670a4@oss.qualcomm.com>
Date: Wed, 3 Dec 2025 16:55:26 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] phy: qualcomm: phy-qcom-eusb2-repeater: Add squelch
 detect param update
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Luca Weiss
 <luca.weiss@fairphone.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Pengyu Luo <mitltlatltl@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251203083629.2395451-1-krishna.kurapati@oss.qualcomm.com>
 <20251203083629.2395451-3-krishna.kurapati@oss.qualcomm.com>
 <fe15827d-c15c-4b4e-973e-3cc379714467@oss.qualcomm.com>
Content-Language: en-US
From: Krishna Kurapati PSSNV <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <fe15827d-c15c-4b4e-973e-3cc379714467@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAzMDA5MSBTYWx0ZWRfXyEfYy94oURkF
 rmxqFASkOYBRyggoCM5t4BEthFV0kx59onZzetbJ63D86dP9aczqA4QgUtjGTaDWJQyOwooNvIb
 G106njSNXiuKLsV7DyiXLQ+B3ymjUlkg730KFyG0/XsRKxm4+6qzLM2dDQAeD9AshCUgVDNQSZk
 IUz5nJxiihRUicQFYbHw8fYqBwoixAFX+yrAzacqzsjTZWv1uFPyscoQ4XIXQ7cUJbS+/1/fJIH
 uDP4rvVzq2oIgdTowU1kIWZCHnOo7D51TQE1GmFqmfhD3lKzutFiKLldjFo/2v5R1ejaqQmOpPB
 fAOVPpf+f2N16hQTq1fFNyoXd3Im9hNCCsmr+El/ddc3x3+JSt6zV9iNbiAlPrdBcQqe4xmKjy2
 j3QI4G1GNAMFHdBf0wbwjZwXaVIPrA==
X-Authority-Analysis: v=2.4 cv=JY6xbEKV c=1 sm=1 tr=0 ts=69301e2f cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=ZzE7xM72-ti_z1JB6dEA:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: Dd8ede5YpWRPngyJpyac-jYjhM4Vb_7r
X-Proofpoint-ORIG-GUID: Dd8ede5YpWRPngyJpyac-jYjhM4Vb_7r
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-02_01,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 impostorscore=0 suspectscore=0 priorityscore=1501
 malwarescore=0 bulkscore=0 lowpriorityscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512030091



On 12/3/2025 4:45 PM, Konrad Dybcio wrote:
> On 12/3/25 9:36 AM, Krishna Kurapati wrote:
>> Add support for overriding Squelch Detect parameter.
>>
>> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
>> ---
> 
> [...]
> 
>>   struct eusb2_repeater_init_tbl_reg {
>>   	unsigned int reg;
>>   	unsigned int value;
>> @@ -120,7 +131,9 @@ static int eusb2_repeater_init(struct phy *phy)
>>   	struct regmap *regmap = rptr->regmap;
>>   	u32 base = rptr->base;
>>   	u32 poll_val;
>> +	s32 dt_val;
>>   	int ret;
>> +	int i;
>>   	u8 val;
>>   
>>   	ret = regulator_bulk_enable(rptr->cfg->num_vregs, rptr->vregs);
>> @@ -147,6 +160,14 @@ static int eusb2_repeater_init(struct phy *phy)
>>   	if (!of_property_read_u8(np, "qcom,tune-res-fsdif", &val))
>>   		regmap_write(regmap, base + EUSB2_TUNE_RES_FSDIF, val);
>>   
>> +	if (!of_property_read_s32(np, "qcom,squelch-detector-bp", &dt_val)) {
>> +		for (i = 0; i < 8; i++) {
>> +			if (squelch_detector[i] == dt_val)
>> +				val = i;
>> +		}
>> +		regmap_write(regmap, base + EUSB2_TUNE_SQUELCH_U, val);
> 
> 
> How about:
> 
> if (!of_property..) {
> 	for (i = 0; i < ARRAY_SIZE(squelch_detector); i++) {
> 		if (squelch_detector[i] == dt_val) {
> 			regmap_write()
> 			break;
> 		}
> 	}
> }
> 
> We could also validate the value (if none found but property present, error
> out), but the dt checker already lists all the available values so that may
> not be necessary
> 

Thanks for the review Konrad.

Will make changes accordingly.

Regards,
Krishna,

