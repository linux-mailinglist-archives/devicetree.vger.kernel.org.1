Return-Path: <devicetree+bounces-221231-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 722B3B9DEA6
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 09:49:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2BFD2168CEB
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 07:49:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77226246766;
	Thu, 25 Sep 2025 07:49:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LDgznheI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E29726FC5
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 07:49:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758786552; cv=none; b=mt1C39nPMejF8sU1zWeq4oRTeESs88TfWCRX4x1VBMMpth7HTTe2FDuH7sXUoyIZ3rqEql2XaZAxDiJDCzRS9IeKJQNCRWjgZCJiVaq5HVGiHastwzJNdQSrYy8iaPRSv/5DRJ3bQL4nNXKnFF/aj9XRkDhLRh/SDtCie8/ouYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758786552; c=relaxed/simple;
	bh=S00mqYY/e7ImpwmZxWfTuBNJWY+6+8Vd5lL3Pi5EfIc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eGpp0RnKNmk0wu9QGNhH3ERiI7b6ZpAdxHghrGAjPD4mPhqWfDwIAexQnt++zWKZtGKyI3XpeBTWFzNNGNmF52b+zCf2iWWK0s00eo2wWaJc5oAnP6H8L2HJz2fkDHGYUK+1aw2ulzA8DqZpRQfZFBSMFVslt/cwTNmpd7ETXTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LDgznheI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0oZFJ017456
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 07:49:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PjqNeaqGN7TnTDgbbflYxfGvF5+GfS4dDejEVyN9QkY=; b=LDgznheIk71ptJCk
	Gw2gKofkGAK4nFXHiyuc5AdMW6fpT+yk1UFiCpE/jH89DaUocnl6ISaPeqAe8rDK
	9a6M16urFZO7O6kAJL7LQHfne4DECRLIafPUBjl+s/XdGK4Vj4g/Ru8G/n8TRKme
	AjPeuZnJB91NMQaUgOQj6CUQKs984TwiPs2psGlixgcrw9CHDP1UwcCRayLMLJ9F
	lImRX9oReOCj43jtZK8kSCq7A8DpdcSBRlGObWqeibMKel30uhCqC+dS0RFCTCm6
	rSj+jy5nZSTU9ILztgtbRlUNPfdae6+BXpBlZeeefcfpcOO8o0qMtaurGooBF5EE
	WO9D7g==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bhvk0k6n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 07:49:10 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b554a032e39so169646a12.3
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:49:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758786549; x=1759391349;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PjqNeaqGN7TnTDgbbflYxfGvF5+GfS4dDejEVyN9QkY=;
        b=InyYHUe2aJNCzkJ29eh+gQmIs5de23Z3+Nrb5hYjPTDqvQWPJLaYPi/NW57il1QVOs
         gie1ZnjpM/xGq7RTU478UF2/QQjiEwtGb6OTB+xYL4ebjVX+QN64uNiU133NimGp6ES+
         SXLE0vfCWYJPwDX0oOXB4dZDKK+tmkKK31MYrNRYuYDabY09GPPIEmLWrPGBrJY6SN1Z
         zuMchf8jVozl2sv6U5lY1nU6dBOt3YSKEXnOzyCkzvs2KW9591t93QGrs6/62xS2qSMF
         h6DIiUXn3GWWp6+AjaDLvRfjFknS1TBWwlX5YonafZatOQqyA7SD2qfiDGOFTlBcO8WQ
         c0ug==
X-Forwarded-Encrypted: i=1; AJvYcCUPff6hp69h+zl63jolp7ZeJY5Z9rVsg6c6ElyKM4zShrscLTvvv9tJNezH4FiNP1APZAPJB5Lxh7Kq@vger.kernel.org
X-Gm-Message-State: AOJu0YyHjhmbCQF38wJLkxu+JTmbIk/7h5laXUxdPO0Gc13TF25dv1mb
	Lt+ddLjsd0pG5cmZSQGqksigCJ7RjRRHzz6TqJCiMG3sP6yOKYUZQSCzkSd1qqxEaBPQ7RzunE2
	bS/hzEkVyRULV8TLVvRxLmCSdqwOEqleYxFkFtz2jk91lhLfMWrdLXc3fYaBjgMFU
X-Gm-Gg: ASbGnctJ5OuF167ysiObJ4RmnZdGFBLZtxr3ZHqVRIV9xvaDjbqO+u44LIWUBffJNzi
	jARgCwsiEuhyr0uqoWrn4lu37HD31yefsrEKttsMCyuC422qU/BIPdSAnGc/uoQDZvsYAqM/PMB
	qnEPQ/774Og+WLN50yDS/+mBR34zdzWskjGIYgo8HRTsUjkxu1PZXCIVLh77k3rFQa9jneK5ril
	5izlDV+2nPZ7DGs0GQt1i0+BGHXxnpNjhjM0Ctx/q91VpuaKDXzBn/P4ta3YZ28BNC4FvA3omSX
	OfuqajZnrbRycGB1HKwDNUh6oGblSjBbtF/k4mrAu0r4j24+MZp0b4QPygCWcjvu+NLiiBT7MqO
	mrjROoKALzH8fXExCVQ2QxGsd1CHU534=
X-Received: by 2002:a05:6a00:114c:b0:742:94fe:c844 with SMTP id d2e1a72fcca58-780fceba388mr1520200b3a.4.1758786549283;
        Thu, 25 Sep 2025 00:49:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFinaZ90QR5M0XdFZvvOkdBI4OVrioOY3xXxXUY10q56iLTiuCLf12UuzRtTaZoEQdZW+XkkA==
X-Received: by 2002:a05:6a00:114c:b0:742:94fe:c844 with SMTP id d2e1a72fcca58-780fceba388mr1520186b3a.4.1758786548785;
        Thu, 25 Sep 2025 00:49:08 -0700 (PDT)
Received: from [10.133.33.140] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78102c06f2dsm1120456b3a.87.2025.09.25.00.49.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 00:49:08 -0700 (PDT)
Message-ID: <00594112-36ac-47f9-bf26-2270b7cc3266@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 15:49:04 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/20] arm64: dts: qcom: kaanapali: Add USB support for
 Kaanapali SoC
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
 <20250924-knp-dts-v1-6-3fdbc4b9e1b1@oss.qualcomm.com>
 <sn5a3dqnd4xz3tgtw4vbmjr4pdow4qlo3jjryp5c2sx3wzke4j@fnbexj3kch6d>
From: "Aiqun(Maria) Yu" <aiqun.yu@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <sn5a3dqnd4xz3tgtw4vbmjr4pdow4qlo3jjryp5c2sx3wzke4j@fnbexj3kch6d>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: Ae9BdAa3qibDrt2MB8Jp6uWrfm0cSa1O
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAxMSBTYWx0ZWRfX3agLJVpCufI4
 7KnnwnbE/JZSRXYUzZ60YNDM93/wzO1kDkiRkOvunlhjWf4FP8+q9hsfb6HC+rvcRaNGXMsXtPu
 uIhCMxDZSOzWfwqPMwj87LkpsyCth+claoyuD7PBwZk1wS/wYOGXxgU7Cr5tVpxPlivnZS/6B/m
 jGOnAlp7UQBAF0rwz4/aiYN3xe6Cpl7PV0fmMXS8zL70B6zIkfsii6OEMhnW4KZZ3S63FQeQZYH
 +n81qwdcGxPx0Zusm5xqfaZV0XOeeplpe7dBqklydEKyHzNBIFmniCtrTlTdOGWeVv+1ftRHahT
 aoq1aw6i/xEOtU23xhSg+DioJsJ2BgV5Xwj6prtLjF8ylKrXDlfH0CrgvYAQzsUbIUszvFJY+co
 k+CEKV71
X-Proofpoint-GUID: Ae9BdAa3qibDrt2MB8Jp6uWrfm0cSa1O
X-Authority-Analysis: v=2.4 cv=Csq/cm4D c=1 sm=1 tr=0 ts=68d4f3f6 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=AvVx_7eFeZfI2HUNGooA:9
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 adultscore=0 impostorscore=0 phishscore=0
 clxscore=1015 spamscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230011

On 9/25/2025 11:20 AM, Dmitry Baryshkov wrote:
> On Wed, Sep 24, 2025 at 05:17:23PM -0700, Jingyi Wang wrote:
>> From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
>>
>> Add the base USB devicetree definitions for Kaanapali platform. The overall
>> chipset contains a single DWC3 USB3 controller (rev. 200a), SS QMP PHY
>> (rev. v8) and M31 eUSB2 PHY.
>>
>> Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> ---
>>  arch/arm64/boot/dts/qcom/kaanapali.dtsi | 155 ++++++++++++++++++++++++++++++++
>>  1 file changed, 155 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/kaanapali.dtsi b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
>> index ae1721cfbffc..08ab267bf9a7 100644
>> --- a/arch/arm64/boot/dts/qcom/kaanapali.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
>> @@ -12,6 +12,7 @@
>>  #include <dt-bindings/interconnect/qcom,kaanapali-rpmh.h>
>>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>>  #include <dt-bindings/mailbox/qcom-ipcc.h>
>> +#include <dt-bindings/phy/phy-qcom-qmp.h>
>>  #include <dt-bindings/power/qcom-rpmpd.h>
>>  #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>>  #include <dt-bindings/soc/qcom,rpmh-rsc.h>
>> @@ -958,6 +959,160 @@ opp-202000000 {
>>  			};
>>  		};
>>  
>> +		usb_1_hsphy: phy@88e3000 {
> 
> No update for GCC clocks?
> 

could you help to have more detailed comments here pls?
For this driver phy-qcom-m31-eusb2, only ref clk is needed per my
current information.

-- 
Thx and BRs,
Aiqun(Maria) Yu

