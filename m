Return-Path: <devicetree+bounces-220239-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D94AB93467
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 22:53:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C6C4017D239
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 20:53:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C33227D780;
	Mon, 22 Sep 2025 20:53:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SEhbu2QF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA90262FFC
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 20:53:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758574386; cv=none; b=EtCIG7DZYJKYuQqrEdd+zp8NmBd1hNXtadTHbDBjUiwM+waiykDqsAzGPKBokChj/k7DF5raIBd2SmDZ4EPdY/UyxffN+T3FTB5UmU7L4LU3xlD58fhV7l15/a8xZTJz807K7YTC9CISKPx8BZpvF3R/jtIGe0IORYVvvcgLsv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758574386; c=relaxed/simple;
	bh=wJKOVxTWl3mVaWN7uXpUfUAhskBfIXlt5pRVs9BcJVU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=r1p9Zux3aw24SHpk0j+UZY3fds+8vVn3yGQOtNGze3f48vJEMhKlSF7Q7d+VmNwrJYTFL5JYkGIa8/af346CHhHE6IWJcIp7931ZioeDGLw1jjnARO7s2ducM9DAjZSfThoUWGQddKfRd0ew3fubTcJ8vhGXNtxiDvY+lQlImnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SEhbu2QF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58MG02RX018208
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 20:53:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	w9Wu9mtQgEpP2zjRZmcsIaHLYNEVblC9DYlSfNlL2BY=; b=SEhbu2QF5h7XomJp
	Vj1CGhEN9jpJfKWjsFGKoxC2XGuNzsxqyQR1EQlCU1FtmoCbrCnYtukQ1tmxqHfh
	kNGii2eEpwlFZgIwtwqSnKpfxUtam162ni19KUpK/0YNUG+/MmpI5pvrzSdkYX83
	T0Kkczmxihstc0P5l05b8ENE/RG/YO+4TVZjJWk7BLxhJ16r/L813d/dxqSixjVI
	NAssD0i3oL30XMleY9IRtugLXGYLUqAaR2zRYY7cSTQ3Z3xztY3N1e8qBV+W6/Ef
	dMe5Buu5tjK4GwMXuxCmq7Yn29cWKSHGcNZ+qe6ICjlW3v3yjonqtGzVJw+RXB4+
	n0YVdw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499mg364v6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 20:53:03 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-32eb2b284e4so7875571a91.1
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 13:53:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758574382; x=1759179182;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=w9Wu9mtQgEpP2zjRZmcsIaHLYNEVblC9DYlSfNlL2BY=;
        b=Kdw6nfXlHWbfqNarDyLdFq4RDXUcAmnyJ2OvXA7gzI9myVhBe3esagj0PmaVPvILRA
         Od4R3w88wpXixMkbwwiHuw4N0xwFTJq4NsB2COAoqxGu6N/lv2udw4tHz23f2eICSRJ8
         V3dPhopqUbunPrz5UuG6KlDLmr1E32kSVdkDQlsnSJzqqMJ63aDHfkvIR+0uSgc9Tbwm
         Zx2l/h2uC9bYr4xKbxKu2lfnQ9rg1SnWuhStOqDDlCw7IkpBKg61Z/7MGwKxHsFLZh4w
         nKJpRVxeNmN+jXAp8Y10y5uufFdB7b2T9t2sgJ+BYRnJfw6zYnbHkam84kcZI9e7dFr/
         5RpQ==
X-Forwarded-Encrypted: i=1; AJvYcCX6420ik+ROcJPgT4kBe9PIvrjcoUKbpu81pYhYmLUAvKWQoP4TMh+oRP3+vJzBS/d0/MWpiMwAFBs+@vger.kernel.org
X-Gm-Message-State: AOJu0YyJ80yYS9IuZmFaUb7QMWoo2CJCkQ6Ke+CAUcp69xrLQm5NrJzk
	IzHv0qKfXHbp9tQxSAOKdqRLzguMSHI2JIlhYFM0Vy/2wp3nA6H6jJaWF2bfvV3GWMvxwygO/Qi
	jYAnRzRga0aYNZxR88CJ0y3g+5VXm77TxIoButzfTrRIpXl+UhdvBLPtAA3KCxM8E
X-Gm-Gg: ASbGncuaaLintP8HiMucUxfcX6wQ2+FIa7SxBh/18spWVrmQCRI6N0RxSmjx/6hiEG9
	YyLvpvufshXPO0SoccwKLA1o6nONRQQ1cXGjZuQGqACHX3MtpYFl5CIOlXZz+eoJ6v4Xm54JmFC
	xDG/T4ay4AO/g+syhPQehZgkkFdixv3BwNB43eWD+qw50BhSSf4k7nlxtL5z+ylNtSEjc3Hlfey
	MouQkvjDpS1WiiolVpEm/Nw5nKKUHdl69uNJgZ3mMV0MYXLqVqrnMZYRwoCXP24IsnzASwikh2b
	LbppSq+PwA47k/zcUMyv88lPIMt1nykccZm0a2+Jqc/P/kb4qe4cNyXaYguZY79YHk2p9siIvEV
	ikvje3++2a8B7qU0VuSmMdQFRKJq69xU=
X-Received: by 2002:a17:90b:1847:b0:329:ca48:7090 with SMTP id 98e67ed59e1d1-332a9a03323mr314246a91.37.1758574382402;
        Mon, 22 Sep 2025 13:53:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFmGBgoTPZCCqPtAA5u6G0ADv+sA5Otpw3FKsEi++cUEokO+1hOzsSKXTEDIDmo6qjE4PrGIQ==
X-Received: by 2002:a17:90b:1847:b0:329:ca48:7090 with SMTP id 98e67ed59e1d1-332a9a03323mr314228a91.37.1758574381933;
        Mon, 22 Sep 2025 13:53:01 -0700 (PDT)
Received: from [192.168.1.239] (syn-075-080-180-230.res.spectrum.com. [75.80.180.230])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33046a4d0basm16048941a91.27.2025.09.22.13.53.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Sep 2025 13:53:01 -0700 (PDT)
Message-ID: <588fd98b-ed22-2940-a749-d4601f77b0b1@oss.qualcomm.com>
Date: Mon, 22 Sep 2025 13:52:59 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 1/9] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add
 Glymur compatible
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org
References: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
 <20250920032108.242643-2-wesley.cheng@oss.qualcomm.com>
 <nkkimxkdp3q3iiyv4ic6rxnwwedq5tnnn2zismqf4pdocvmono@xltxaqz6rb5q>
Content-Language: en-US
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
In-Reply-To: <nkkimxkdp3q3iiyv4ic6rxnwwedq5tnnn2zismqf4pdocvmono@xltxaqz6rb5q>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAzMiBTYWx0ZWRfX8bTp2vM3x/jS
 qAtTkEFbIuwRFu/QjyEeAiRXn9X7qcXvN7RZez2pLsT0/IzbI1ZBPRdY9ADNEQfNpLjP7dUPsjq
 Uo+DSxS/qEWff2R+CgJa6cJnOgzY3ViW6ZcBED9Ld7BcQE4u18xNKslPntCRnniaFevf9qgD5Mk
 SmdeaUm/BOaqvAAY2c3vJSbXmXD/RPME2ifz2Uj7KOX0FJOW+uhBKAxzumrVFEAE6Um10XmsIno
 at2ijxGTPTVQdi3UoWSk6zw0I8mDWfxC89YNWCclO7+S04YC/hB+41oVS6ilcN/zavh65bSZWMs
 mn9LIJyPllph6F8rGGf8K7kRbUf/RJDDaSM0YfcNMPpped1gA8M7WRR/ljPZhzLHXj0Sx0Jg4xy
 +Og4Ggkm
X-Proofpoint-GUID: inxS9m8ph_WgwI3siM0CryryfEUHNhgt
X-Authority-Analysis: v=2.4 cv=UvtjN/wB c=1 sm=1 tr=0 ts=68d1b72f cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=agQD+r7xwyS+FYqxhQjztw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=JfrnYn6hAAAA:8 a=EUspDBNiAAAA:8
 a=Sr9xLzlp0V7X-QRcIyAA:9 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-ORIG-GUID: inxS9m8ph_WgwI3siM0CryryfEUHNhgt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_04,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 adultscore=0 impostorscore=0 bulkscore=0
 malwarescore=0 suspectscore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200032



On 9/20/2025 8:18 AM, Dmitry Baryshkov wrote:
> On Fri, Sep 19, 2025 at 08:21:00PM -0700, Wesley Cheng wrote:
>> Define a Glymur compatible string for the QMP PHY combo driver, along with
>> resource requirements.  Add a different identifier for the primary QMP PHY
>> instance as it does not require a clkref entry.
> 
> Are register programming the same for both of them or not? If it's the
> same, it might be not necessary to have different compatibles.
> 

Hi Dmitry,

Yes, the register programming sequences are the same, but the number of 
clocks are different between the primary and the other controllers. 
Specifically, on the primary USB controller, we don't have a clkref in 
the TCSR.  Was just adding a separate compatible ID to define the max 
clock items.  However, I do see that even if I only need 4 clks (for the 
primary) it technically doesn't break the DT bindings definition, as 
minItems = 4 and maxItems = 5 for the clock and clock-names fields.

I'll just go back to one compat for the primary and other controllers.

Thanks
Wesley Cheng

>>
>> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
>> ---
>>   .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    | 45 ++++++++++++-------
>>   1 file changed, 28 insertions(+), 17 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>> index 38ce04c35d94..e0b10725a1c5 100644
>> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>> @@ -15,22 +15,28 @@ description:
>>   
>>   properties:
>>     compatible:
>> -    enum:
>> -      - qcom,sar2130p-qmp-usb3-dp-phy
>> -      - qcom,sc7180-qmp-usb3-dp-phy
>> -      - qcom,sc7280-qmp-usb3-dp-phy
>> -      - qcom,sc8180x-qmp-usb3-dp-phy
>> -      - qcom,sc8280xp-qmp-usb43dp-phy
>> -      - qcom,sdm845-qmp-usb3-dp-phy
>> -      - qcom,sm6350-qmp-usb3-dp-phy
>> -      - qcom,sm8150-qmp-usb3-dp-phy
>> -      - qcom,sm8250-qmp-usb3-dp-phy
>> -      - qcom,sm8350-qmp-usb3-dp-phy
>> -      - qcom,sm8450-qmp-usb3-dp-phy
>> -      - qcom,sm8550-qmp-usb3-dp-phy
>> -      - qcom,sm8650-qmp-usb3-dp-phy
>> -      - qcom,sm8750-qmp-usb3-dp-phy
>> -      - qcom,x1e80100-qmp-usb3-dp-phy
>> +    oneOf:
>> +      - items:
>> +          - enum:
>> +              - qcom,glymur-qmp-usb3-prim-dp-phy
>> +          - const: qcom,glymur-qmp-usb3-dp-phy
>> +      - enum:
>> +          - qcom,glymur-qmp-usb3-dp-phy
>> +          - qcom,sar2130p-qmp-usb3-dp-phy
>> +          - qcom,sc7180-qmp-usb3-dp-phy
>> +          - qcom,sc7280-qmp-usb3-dp-phy
>> +          - qcom,sc8180x-qmp-usb3-dp-phy
>> +          - qcom,sc8280xp-qmp-usb43dp-phy
>> +          - qcom,sdm845-qmp-usb3-dp-phy
>> +          - qcom,sm6350-qmp-usb3-dp-phy
>> +          - qcom,sm8150-qmp-usb3-dp-phy
>> +          - qcom,sm8250-qmp-usb3-dp-phy
>> +          - qcom,sm8350-qmp-usb3-dp-phy
>> +          - qcom,sm8450-qmp-usb3-dp-phy
>> +          - qcom,sm8550-qmp-usb3-dp-phy
>> +          - qcom,sm8650-qmp-usb3-dp-phy
>> +          - qcom,sm8750-qmp-usb3-dp-phy
>> +          - qcom,x1e80100-qmp-usb3-dp-phy
>>   
>>     reg:
>>       maxItems: 1
>> @@ -46,7 +52,7 @@ properties:
>>         - const: ref
>>         - const: com_aux
>>         - const: usb3_pipe
>> -      - const: cfg_ahb
>> +      - enum: [cfg_ahb, clkref]
>>   
>>     power-domains:
>>       maxItems: 1
>> @@ -63,6 +69,8 @@ properties:
>>   
>>     vdda-pll-supply: true
>>   
>> +  refgen-supply: true
>> +
>>     "#clock-cells":
>>       const: 1
>>       description:
>> @@ -110,6 +118,7 @@ allOf:
>>         properties:
>>           compatible:
>>             enum:
>> +            - qcom,glymur-qmp-usb3-dp-phy
>>               - qcom,sc7180-qmp-usb3-dp-phy
>>               - qcom,sdm845-qmp-usb3-dp-phy
>>       then:
>> @@ -129,6 +138,8 @@ allOf:
>>         properties:
>>           compatible:
>>             enum:
>> +            - qcom,glymur-qmp-usb3-dp-phy
>> +            - qcom,glymur-qmp-usb3-prim-dp-phy
>>               - qcom,sar2130p-qmp-usb3-dp-phy
>>               - qcom,sc8280xp-qmp-usb43dp-phy
>>               - qcom,sm6350-qmp-usb3-dp-phy
>>
>> -- 
>> linux-phy mailing list
>> linux-phy@lists.infradead.org
>> https://lists.infradead.org/mailman/listinfo/linux-phy
> 

