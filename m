Return-Path: <devicetree+bounces-186847-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A48ADDC3B
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 21:23:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DBE38402543
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 19:22:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 401892E8DE1;
	Tue, 17 Jun 2025 19:23:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="E5rz0Dk7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9327B8F54
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 19:23:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750188192; cv=none; b=XzGC7+mZOcty/6zkOWVpENtFnjYbM8G39cMBBIWtRSjSrqcbCB2igtXN89CztHrzsjECZRZXqdnq7xJy6BXNlzUS5yb83PusgvXwxalENwWi3sXKYmvxrjhFEJJWt5RLHN9SKnFGHFQqQwV2GYavdF+6OQTbAHM+X2lKqahMDRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750188192; c=relaxed/simple;
	bh=MognockFkcOcnIkzl6aBSdw4zvGQ2TZZ9c6TgXrj9X0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TTfikbfuCPLsO+Ffwn1lia9QLxaMfJ2meStl1nYSv4gyJsv6Dsh1rCjvAIlJWSfYGStqBtGVcLve7+v5ALxAS6SSwg+c6+IE1nvjf/NWb+RdtlTJei0WrmrtM2zBmrRTCT78lmpcZfo7bzkGDTEON3ekPU8aOpdFys3BtDehyWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=E5rz0Dk7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55HEEvPs019473
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 19:23:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LdzPHGOIKz6OedKEjfrT+dQssvLIdj/9tY0eYX+UX7A=; b=E5rz0Dk7OSeCVzLx
	h5/deRqpIuEEeowUpsWk9y+bYSYSnmr5N4AWBVRLez8WLzBe4g1T/sG8xo4F2v+6
	uSQxI8t8Dl1bD6Tsw+tBhZokQmYdgu04WUavzNUAJIBrdXQsCMJ4To7TlW9/nrSR
	tllmnvY//GLJIjcGB1IJtdTcqLqPbzsk8zOqjSQ3Xv5azlk9mPP6FzEsDJ9tPbig
	eJBVCiJTY24SX2f569sxTXA2iR4oYT1eroSsoWmTFl2HcM3ZR+0xlhD0FvG/nh1w
	fbIy1C0gdztrLOVrrGDfWQt3/dRvxq7woVaPa0G7eeCiJfIA4F0jUX8iHxuhXVrX
	040Bvw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4791h99gj4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 19:23:09 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c5ad42d6bcso151707985a.2
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 12:23:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750188188; x=1750792988;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LdzPHGOIKz6OedKEjfrT+dQssvLIdj/9tY0eYX+UX7A=;
        b=PKqZDZyrPjZACHGO+fNgkKVWnS8GW3HgaPLAT9xLjkkNBaAZeL4zWY91Hl7d17dvSd
         klGlkYof6uhgqpqSMdFfwcfkpMoAlmRZfFNZEbQ1yNuBKNLdvEzJNAEtdU8u0mhLyBOt
         H/i0AZGx5h3YZf8JJmGQjcGkxC4t9DUjqJb6qnfG1QAN9QVYbYimkN8c40Sbg8E959wf
         1tC2SLpWVNNKRoGhTVN0vQdiP7cvO4cGv7X9bbKXyxnncRQVVMsDeVcoohoD637JnbfO
         LfCxNo4JFxyIdubq7rsu5gpjBUG53JmKZTgFsurbeqQHOiC5Lx9DbgK3necrylQ9LIUJ
         v5HA==
X-Forwarded-Encrypted: i=1; AJvYcCUaUGomGnKvWrr/sz/DVagTUGZjlevxDjXKrk/JZNYxIa+Lyc3Su7odIbwFgLKbdFuvRtOpMppmW0Il@vger.kernel.org
X-Gm-Message-State: AOJu0YzKYbXAzVsPrA/TukQeMtf8wNDddEYnXmogbZ6vQf+jRro8+oHA
	LZrPzaJLi8My7I4ZbBHJgqdnT4+EjfZ1+0lUY4s4morP5XUk+xKaahzPZTMtURmq1Z+kNQy1qE9
	xjf56drkBQCR/sURE/DnAWrIDcZOoUIbAvrXof4okg/ke9Q6tBEdsPoeyNQ5gNIYu
X-Gm-Gg: ASbGncsggf/o67PEYTwxbRwE2rLp9AUU7e8BVFfjRNedtxVm5zzn+wqtq5E+rD7j804
	2bLV0rx7CiDfVbtSARbnWsLBMlM48LgHCI3PJBR1D8W8ugV4wENm9OUYclJ7LOklnEfx+Fa9azv
	07YMDdg6M5YANkycOozua1T6ulO1DcZSk4O0xSGAv4D3BPD64HeeXhK8+K/VBkh32taELbdT3GW
	6m8GWa4kXjcEWyeFspDoQqcO9sSuA7bwCUTRL9EOcLTNpdrebRst8/nxMR+1F7C3fS1dipmaPV0
	vhGmn5Xu6jbqUF9qfNMeWfYymCTfCqtObBoZXdvsWoZoe1hLV1askkH3QbcBjcd0eUqurlh+oGq
	sz/Y=
X-Received: by 2002:a05:620a:1727:b0:7c7:9d87:9e2 with SMTP id af79cd13be357-7d3ddfc335fmr269470185a.12.1750188188587;
        Tue, 17 Jun 2025 12:23:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH0yvPjKPU38lsTFY4yNQOSMkrjfXE9YWA0WVDxHRlxx4vA+NZcrpEX0zx8IWsyvawWlt53nQ==
X-Received: by 2002:a05:620a:1727:b0:7c7:9d87:9e2 with SMTP id af79cd13be357-7d3ddfc335fmr269468285a.12.1750188188108;
        Tue, 17 Jun 2025 12:23:08 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adec88feb23sm914603466b.96.2025.06.17.12.23.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jun 2025 12:23:07 -0700 (PDT)
Message-ID: <d23b8cf0-1ba0-45f6-b06b-f7a862bae457@oss.qualcomm.com>
Date: Tue, 17 Jun 2025 21:23:05 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: qcs8300: Add EPSS l3 interconnect
 provider node
To: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Mike Tiption <mdtipton@quicinc.com>, Sibi Sankar
 <quic_sibis@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250617090651.55-1-raviteja.laggyshetty@oss.qualcomm.com>
 <20250617090651.55-4-raviteja.laggyshetty@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250617090651.55-4-raviteja.laggyshetty@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: Q23tR4HGv_RhiE_yMbSD_khft7_ElAAV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE3MDE1NSBTYWx0ZWRfX/Xn2LQn9UzmD
 /sxEdUiN4+gnGPV9jqR8x+afoMTEYo5CvRjMSEc5iIdX3lXqTdsfwfJYbhebYwuUhA28DyvLuHN
 b6Jrh5/uDXXuWppUvsc27ivwLXvn9GcpnDOsparG/bDCmuvxu1Lg7xr8VYYfteCRzsh8PKk2JPG
 pZ5aplJ1QX+yjFdC8h4S9k8tzj9hcBjZDQJk4ppJ87F/Fbl1W6snt3beMi2y9AtkExlZSBhgTEB
 IODImpuJRhH1ik1vZlrAEa3h6+o8+JATcPBDkN9RM3DU8cqr+HRw6fwcKbUnvgv+y5slE5kDML9
 itA/V/A9l40is/kaldOxb5huDTNzsh0+wMyA0/5Jmj0RqbSNKG713GlkNfPVaK0LdHj5ZETYWp5
 zmiSjue5hm7Wz2mSgpQqIQFfh/QIfgzz+QcyfUf/R8U6DUZ+Unp/Oi1S+ozyOqNg76NIXgVc
X-Authority-Analysis: v=2.4 cv=UL/dHDfy c=1 sm=1 tr=0 ts=6851c09d cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=LJL_6YULmAKA-UV3y8AA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: Q23tR4HGv_RhiE_yMbSD_khft7_ElAAV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-17_08,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 adultscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 phishscore=0 mlxlogscore=999
 malwarescore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506170155

On 6/17/25 11:06 AM, Raviteja Laggyshetty wrote:
> Add Epoch Subsystem (EPSS) L3 interconnect provider node for QCS8300 SoC.
> 
> Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300.dtsi | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs8300.dtsi b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> index 7ada029c32c1..e056b3af21d5 100644
> --- a/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> @@ -12,6 +12,7 @@
>  #include <dt-bindings/dma/qcom-gpi.h>
>  #include <dt-bindings/firmware/qcom,scm.h>
>  #include <dt-bindings/interconnect/qcom,icc.h>
> +#include <dt-bindings/interconnect/qcom,osm-l3.h>
>  #include <dt-bindings/interconnect/qcom,qcs8300-rpmh.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>  #include <dt-bindings/mailbox/qcom-ipcc.h>
> @@ -5433,6 +5434,14 @@ rpmhpd_opp_turbo_l1: opp-9 {
>  			};
>  		};
>  
> +		epss_l3_cl0: interconnect@18590000 {
> +			compatible = "qcom,qcs8300-epss-l3", "qcom,epss-l3";
> +				reg = <0x0 0x18590000 0x0 0x1000>;
> +				clocks = <&rpmhcc RPMH_CXO_CLK>, <&gcc GCC_GPLL0>;
> +				clock-names = "xo", "alternate";

Very odd indentation

You should also immediately bind these providers to something,
otherwise sync_state will happily take them to whatever minimum
rate the hardware allows, making things worse

Konrad


