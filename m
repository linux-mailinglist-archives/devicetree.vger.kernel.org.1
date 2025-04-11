Return-Path: <devicetree+bounces-165717-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 100EBA852D7
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 07:01:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8E82C1B882E6
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 05:01:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FD3427CCD2;
	Fri, 11 Apr 2025 05:01:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SnnRPlaO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75B701EE014
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 05:01:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744347685; cv=none; b=bSFObyq6kteBxypIxRszBK57yrhqbeF52DS+7BQJUCQBp+PdU7Mq0rYhBTi9gurDNuw5uMvC74e1EZ5LLCHk0GROU1LOazRLHkw/cofafTmklNhgYMxBJvU9dbl7oGDzRZ8pzt8oHuGJIotq8cow3rFDyhSY2tSe6X+3patbalQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744347685; c=relaxed/simple;
	bh=Bqqip6vv1AXlW007YF0paom7H9l2UwCGujjxv1oS0Io=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rUZEVGv6gv/XX50TB0kAo4zE0WGL7jUbKp4bA3ZwAXgAJG0EF+PmF5I6Qh3jqEp/yifRbZQEyeCLkLV/Ts6xt3U7pvJoiNhw3crehs5xwtnxbpeT6/8N/vzR9L4YztcF95POkv9yj51D1K7YBcXnmVpnHYZl6BK/ysVBEQr5Hbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SnnRPlaO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53AG69fE000640
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 05:01:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iU3jF42CcRbDvr47i+k1eJkOuCjg/GXrWsAC7AGbOiU=; b=SnnRPlaOCdmkVqZq
	gb6vEUDOmCtJa/M2Kejm6+mqBauZf5wNspnKNhoDa0aVWUlMXjjSiQO5BMfQj0N1
	850wLswsmidsF7o8UnqBGIW+SFssP0fUgrjSDCFmEsdljWZRPRLLoxCmRQZUdisP
	eXFzRyOpOHX8PnKrunk4uvT6mq7XEIIvKZ9xBmg/h+sHBN9YdCOccuGNtqcaiK6G
	TLKbKMClnAYUWQq7yKyL/LJE3LLZYJrsv1ZWTVBl5JCs+wGg/PzBTUM1ftrTZUSw
	B/qnposh/BzXZFiT9EJFzthnb9Al/Q9jhIqy8RBd4OtTMAmTqLHI1WB688hzPe63
	aBcy6A==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twd316ab-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 05:01:21 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-739764217ecso1418053b3a.0
        for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 22:01:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744347681; x=1744952481;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iU3jF42CcRbDvr47i+k1eJkOuCjg/GXrWsAC7AGbOiU=;
        b=gpZcsVV1bVudokEL/eXc489V/SSyCWb4WxV4I6B+Yi3e7mCsSTv0TeLAkkIWmYrn+N
         5Zd5DuYUxaxxI1EJeyQl0c4ixDk8m9I/XRneHasuNOQs4HidUkoqmqs9MqC4sidvjD03
         A0S7MaZuv+LDom8Mp4wFbsslkVg8Vwxa0HOjb2FoabP/1rqlwb3q2XjJydA9dng4VTiz
         bHHl4iK8bdj0hb9mwt4wh+4Q55wGEMYhLK+UwuaqE6dYivDHDay2WQ2u/YpNTfgiDnGU
         raeFTZDbRF3UR9s2BVKYCaunqrebH1hmEFAjXUZoiRRgJK8e6RZZo5yj4Go7KRsZ5Srn
         ha8w==
X-Forwarded-Encrypted: i=1; AJvYcCVGosbwJyy3t0rDypTeFMTi/9zDlW7IVbw0w1J1rDXvwXkrA+XsPyAiaNO7bQMjc7pnVObnRNx795v7@vger.kernel.org
X-Gm-Message-State: AOJu0Yzy/Lovd5+R6c1pSWuIfnjROvvV4yT3/zcHbjF75BI60PYy3ovN
	NpTCRXli2LqAlEcHuyx4rtEXp7EhoQ4CQ19faz3pQxwtMidLXJ4ie+VNRKNna4NOcXcFQxagD3R
	R0/qJG3KO3B/TyqBnJStrk4rUxRnn+GQ6h7NnFjMCneIZ3GdjxcqDYOrbg8k1
X-Gm-Gg: ASbGncuoBFIxv7VFvyPXongswQIizBpXM+0C1gLy9LqSBUYrNKHRLai1rW/57xUfsz3
	Xm3RfvBoSgl5StzbM7jfRy2Akl7qoggUkKMFdCEtM/6OX5FEvvru4yZtamXyXgJ8toiwoF3QdoP
	enfOJebHPYTGZUoIf700n7kcy/2VOQ1TWeGub+AJPKWQHBd2SCBokAuO35wyCVDpc/9DuQ1otdF
	muEHl63vSYce2iIvVqzizemXUs6LQrZGyOH14X3HacR0R5ZgyHa5mNJDl2FyLatxMtbUEaScFeJ
	+nDhfdIqVVuDAj4hXd6tG3cfeqtt2lgTbg3YuQGACbu0sGh1f3kb
X-Received: by 2002:a05:6a00:98b:b0:736:5969:2b6f with SMTP id d2e1a72fcca58-73bd0c23517mr2253804b3a.6.1744347680613;
        Thu, 10 Apr 2025 22:01:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFIC6y3kfTqx6FOCy0TY1K2LPWbtvRdwzYJO2IyUfSa5wij8amglx6d0xzJSPEL9BxFADh8lw==
X-Received: by 2002:a05:6a00:98b:b0:736:5969:2b6f with SMTP id d2e1a72fcca58-73bd0c23517mr2253757b3a.6.1744347680105;
        Thu, 10 Apr 2025 22:01:20 -0700 (PDT)
Received: from [10.151.37.217] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73bd2198c17sm529769b3a.36.2025.04.10.22.01.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Apr 2025 22:01:19 -0700 (PDT)
Message-ID: <54efe237-01ea-4f98-8dbe-390d344aa6cf@oss.qualcomm.com>
Date: Fri, 11 Apr 2025 10:31:14 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 2/6] arm64: dts: qcom: ipq5424: Add the IMEM node
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org
References: <20250408-wdt_reset_reason-v1-0-e6ec30c2c926@oss.qualcomm.com>
 <20250408-wdt_reset_reason-v1-2-e6ec30c2c926@oss.qualcomm.com>
 <6298f149-caae-49d0-af68-c3d102d0ef7d@oss.qualcomm.com>
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <6298f149-caae-49d0-af68-c3d102d0ef7d@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: UNHr6ljmYi75mpJX4u184j14IREdOsMt
X-Proofpoint-GUID: UNHr6ljmYi75mpJX4u184j14IREdOsMt
X-Authority-Analysis: v=2.4 cv=NaLm13D4 c=1 sm=1 tr=0 ts=67f8a221 cx=c_pps a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=jTFA79TV-ThCIif_KeMA:9 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-11_01,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 impostorscore=0
 priorityscore=1501 adultscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 bulkscore=0 mlxlogscore=857 clxscore=1015 phishscore=0
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504110035


On 4/10/2025 12:11 AM, Konrad Dybcio wrote:
> On 4/8/25 10:49 AM, Kathiravan Thirumoorthy wrote:
>> Add the IMEM node to the device tree to extract debugging information
>> like system restart reason, which is populated via IMEM. Define the
>> IMEM region to enable this functionality. Corresponding DTS and driver
>> changes will be added incrementally.
>>
>> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/ipq5424.dtsi | 9 +++++++++
>>   1 file changed, 9 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/ipq5424.dtsi b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
>> index 5d6ed2172b1bb0a57c593f121f387ec917f42419..a772736f314f46d11c473160c522af4edeb900b7 100644
>> --- a/arch/arm64/boot/dts/qcom/ipq5424.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
>> @@ -486,6 +486,15 @@ ssphy_0: phy@7d000 {
>>   			status = "disabled";
>>   		};
>>   
>> +		sram@8600000 {
>> +			compatible = "qcom,ipq5424-imem", "syscon", "simple-mfd";
>> +			reg = <0 0x08600000 0 0x1000>;
>> +			ranges = <0 0 0x08600000 0x1000>;
> It looks like this should be a little longer


Yes. It is 112KB. But only first 4KB is accessible by all masters in the 
system, remaining regions are access protected by TZ. I shall mention 
this in the commit message in the next version.


>
> Konrad

