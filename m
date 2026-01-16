Return-Path: <devicetree+bounces-255837-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E8561D2A7F0
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 04:04:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 753963013EE4
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 03:04:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7340336ED8;
	Fri, 16 Jan 2026 03:04:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jSCvGrzE";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RFRILZ2f"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91BB930EF85
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 03:04:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768532677; cv=none; b=AGph/OCWI+UGOluZAbEGdQ5Va32xroxxvFdk8DvSA8ei2uzMhhsvlGeowtqwffi9eQ7cDGJ8lrCNBkdWUkyOIckc/r+atIJXCLYPvcrmN6wHcHsZf4K+EJGV9nf6iMKcXbWM93xidDd6FDMByYsBc/kM9cgh7H+mTcQNS8qj6UI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768532677; c=relaxed/simple;
	bh=MLxbdzuVZEyV9Ir9WV2aQ8nHA8b0w/q5Bo8LJKVp3Hg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JDV/FdU+B2JfiIPZFRt9kdY4JuKVCbMHQjgkv/XzDDHe8SiRX04/iUE4GsMpSi48krPtzn0osHDGe/Vrj8SoXx2RrLOQ++ADWkj2ireyc3uMpb3gfzrG/NA+I1LidgkDovBWnmi99/Ld+A+LZWXIDuX1Sv24ybp3I7LbNdpLMHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jSCvGrzE; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RFRILZ2f; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60FMbbAJ3596382
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 03:04:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/FMSDKBTVmGzi9yfMRbM6duz34qzja1sR+1VPHow9JQ=; b=jSCvGrzEveT9ZF1o
	57kom8keBejxcfo7ezH7CRJ6vE3jrSkFTAgVtGWxRp3z70Z06mQlum65vLA5Yvpt
	TjapyyvRP1wuJJcgT6J47ez9RyEMGn+lJgugjboBKfxY0i7YK+ar1kSkfgufx7jP
	rAkmkDnzFJw7cdeXlKwy05T5op9XedEo54BOutRekYI0p+JRoumk4gyMMFltZcX+
	IKx2c9FPWRvll7dWhm+Ddwd1sd9QHFQ/4cvkOH4Oct/eX2GTKz6D/ef13Yi4HJ/m
	5tA21mCHZ5EZ6LqwKp/LFYlGClwHFaIBy9XajrqEkwY9KLt4ge9hesDZYcHVkofI
	5X+ZRA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bq96rrjra-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 03:04:35 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-29f1f79d6afso17430355ad.0
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 19:04:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768532675; x=1769137475; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/FMSDKBTVmGzi9yfMRbM6duz34qzja1sR+1VPHow9JQ=;
        b=RFRILZ2frWkR4sX/iLRT2x7xewFxYxZwgADJlc5XViMfdisXKAkbSLZaJ/3kQcw8/+
         m8I1YiNj415nAHsB/EmkL3iKTRwFXqGKSicQrUd5LaqPC31KUpNp420tdII8kTJQQHgE
         CoiR6MqRSWUeh/i7L6N/57rJ6TenrYEAeIU5qREC8Am/3zEemaXhXkboB6TU2PPIliwS
         fIYEZqmuM2YYexsS4L5xe92C7V3gDknjdeX3pIKbH6ZXZsYhWJjJ/dnSZs4tV3T1Y0l6
         /UwCbsbXouyg3e4bkdONY8WluB3r4ut1SqcNEiky9Ey81RKP1BWROat0oFo8eXtXdxyn
         m5OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768532675; x=1769137475;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/FMSDKBTVmGzi9yfMRbM6duz34qzja1sR+1VPHow9JQ=;
        b=nqmHJjC6D0KmPTytV1FrJgg2drG1moUXpR9DSWyTuHYrp1iMnpp+Sj9bAKQPi6Umdp
         PbzgSWesgvdUKFiy7ZTmU7zPfpfdVkdTmASZswpRfNc3MviTgFjcLyXYEK+6xVxuOeUU
         SWOBWDl1GI7fJH0kSkVycrKKRK9ZE7FbqGf/DIZoXwmNf0DO3Tz0/LVdcqC/48wOIaQu
         F9abIuaKUR1SGEv1JWz8eSOys5o/PV2vCtrKWdVxOMP6IA89Ruhm3HbbFufc5KBWg7UM
         hHolxKbn6bXrxhaMq28p+oawVBd2s/DxFSMlIDhSJJOnVAYstQxnDghgKCUcr6lw2vXu
         pG7g==
X-Forwarded-Encrypted: i=1; AJvYcCXpyxXtQSe98fzMIsIWQwIjMDQBlJSYAb/7LyHlhCpJJ6sGVRVpKD5rQ4xqs6IvcptGeW1VXPHW/MlG@vger.kernel.org
X-Gm-Message-State: AOJu0Yxm1mtTcPY2DuongF1vc+DrGI7y2uADrIZ414hl4KNTZ5t1NKhh
	yBaYguPtZV3sHA30qBTsNRkclLj5dN7zpBDeCDIIaGbSGwFpY7GQKgqrEgpM3o1gh7UzBYr0T28
	kcwGWq94n4eqAFh/nt/BaAI0OZNOizaV3fMuqiJdj/Z7y/iM20UTq4jKexdZvZ9y7
X-Gm-Gg: AY/fxX60FXtzi4RHU+JB3lCPEuroEk1zQoF5h3GET2No2KRR6T3uQcKPk0RZeZIGOX+
	Ut8vAgqdUfdPu6MP72TpJuu25mHgEIWd/Vls+NzNr1UNR1qAacyRogJugVKqyp5Kbe7dzhyHmi5
	Ujh9+H0RsCuCH9BI4Mq96hoLZ7xd1xsMbP5bDeTSBRmnpprmoF0DdQ+ebn/D2WNmhxqNyFxUWyl
	69m5FEMRs2osQSy56Y16Ut78NWWg742HQir6HSNS0phnJYTboMVY9Z+lstCkQdC6AkkXT2BQObZ
	T3yHBJSi+rg+AWqigALG1wHG1cvfdo6qEMemQy/4NJUSo6QsCvyJ4r49kRgDW9CxECAeI0A6h3W
	7rplEaPxqV+FOkCO+cJzhGnhJAExLYzwh6KYXBagGX4FchmqwgBwgYMHLcBWTWKK5o4DKEETJAw
	zlkusU
X-Received: by 2002:a17:903:2446:b0:295:5945:2930 with SMTP id d9443c01a7336-2a71885a38bmr13862685ad.2.1768532675166;
        Thu, 15 Jan 2026 19:04:35 -0800 (PST)
X-Received: by 2002:a17:903:2446:b0:295:5945:2930 with SMTP id d9443c01a7336-2a71885a38bmr13862315ad.2.1768532674685;
        Thu, 15 Jan 2026 19:04:34 -0800 (PST)
Received: from [10.133.33.232] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a7193fb239sm6135415ad.70.2026.01.15.19.04.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jan 2026 19:04:34 -0800 (PST)
Message-ID: <3f286b17-f418-4abe-b18e-ebdce295dec8@oss.qualcomm.com>
Date: Fri, 16 Jan 2026 11:04:27 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 04/10] arm64: dts: qcom: kaanapali: Add ADSP and CDSP
 for Kaanapali SoC
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Kumari Pallavi <kumari.pallavi@oss.qualcomm.com>
References: <20260114-knp-dts-misc-v3-0-a6cc9e45de93@oss.qualcomm.com>
 <20260114-knp-dts-misc-v3-4-a6cc9e45de93@oss.qualcomm.com>
 <jad4p5l6beny3uojc7lyjtku2c2i2ykple4lgikb7s5kfyfg5h@o6a3uqqkduww>
Content-Language: en-US
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
In-Reply-To: <jad4p5l6beny3uojc7lyjtku2c2i2ykple4lgikb7s5kfyfg5h@o6a3uqqkduww>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDAyNCBTYWx0ZWRfX/Dq9NOeJu52e
 a2F6NmLV874tUNk8xp5DFEm/tbncQSa9Hvq2ekFtlaJ67cJ21i+g68AtJ7ch6kWaB4+qoYZqBWQ
 M1VeADAiwh+z9yGNYxx8mFRTElk6IjsrnBdU3Eyr+07kg6dli8VcLIS3xuWPMAgE4W0AXde4egb
 UH6ZLPz3FBghyN8KZ9YNLsm1ozhaBN3UDxWQBJOEsQig/OU2C4Rnb6fkwZZLAR5z4s89VTTWWgX
 xvSiBXCPWN88yB07naBK9Ej8G+ljZpgsGhHqZDTHhq3itFHTSFokXQcckVTrqpW6IF84xK1YDQT
 KFtLPGbq7yZRE4iD7AUuXkypKpKCVTKU9M76l0VsvDlD8jBK/EdmqKaLfqEHi8iYuJgdfpJQSA4
 QFljWSrKaxHkShUQSg7FRvlJU6C86FjtthLo7Nwt1lQsQS4nzHpWUVtVsNx8AemuI0tQTid1oD+
 jZc0VatMJ/Rr6zGovYA==
X-Proofpoint-ORIG-GUID: BlrGSqAaf-eGdG9QTdbdO8XTjX1U-WpP
X-Proofpoint-GUID: BlrGSqAaf-eGdG9QTdbdO8XTjX1U-WpP
X-Authority-Analysis: v=2.4 cv=TsTrRTXh c=1 sm=1 tr=0 ts=6969aac3 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=42wAx0joryUND99bvuYA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_01,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 malwarescore=0 phishscore=0
 priorityscore=1501 bulkscore=0 suspectscore=0 adultscore=0 spamscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601160024



On 1/15/2026 3:10 PM, Dmitry Baryshkov wrote:
> On Wed, Jan 14, 2026 at 10:49:06PM -0800, Jingyi Wang wrote:
>> Add remoteproc PAS loader for ADSP and CDSP with its SMP2P and fastrpc
>> nodes.
>>
>> Co-developed-by: Kumari Pallavi <kumari.pallavi@oss.qualcomm.com>
>> Signed-off-by: Kumari Pallavi <kumari.pallavi@oss.qualcomm.com>
>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> ---
>>  arch/arm64/boot/dts/qcom/kaanapali.dtsi | 351 ++++++++++++++++++++++++++++++++
>>  1 file changed, 351 insertions(+)
>>
>> +	smp2p-modem {
>> +		compatible = "qcom,smp2p";
> 
> Nit: and where is the modem?
> 
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> 
> 
> 
> 
modem is not enabled in this series, I will drop the smp2p-modem in next
version and send it with modem patch

Thanks,
Jingyi

