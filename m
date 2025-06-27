Return-Path: <devicetree+bounces-190421-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2280DAEBB60
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 17:14:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 92E667A89A0
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 15:13:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E51872E8DE4;
	Fri, 27 Jun 2025 15:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LFhFY5Ug"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74CAD2C325C
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 15:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751037263; cv=none; b=sMk+bO2qzPxU+fS4gxHZWy+rRoio19z+pi6O6YZGk6sf9PxnGgTbU7GcaNvVwuOGfvOBGRx6mmrY/bDjJp34NwXmV0f+jzBYcxoWMR+K8MNZbo2IL3gtFRbsYnSMYn3FhipB8myHnGbmp87hU7W3VTW27g5Ik6R7kvkYz7EuOFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751037263; c=relaxed/simple;
	bh=55A/Hin7oai8/MceYjyk8/dYJTGhYwWWg5y51ljPaLc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AvOUeL55ttHvgC9xjKDjYR7AfZm8Cj2/kAjCwceXFzDdyy0u6RpVKkhUiqKbCtPL4L14pCkQ+SL6uOK2g5xM9Qi8r5ck0F0NHZ1F3RMCOlMV26SQ6AnMwECUo06IxFEHjz2laDvfBAYwvR3STBWEP1s1j4X9RKlv7ju0IYtrwi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LFhFY5Ug; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55RCDx9K028733
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 15:14:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	x6M5X4q5fSdw7OQCIrFZRNAHF8rjXm5Y3tv67PHp4y4=; b=LFhFY5UgnOfTIWl2
	wdlKdNkX+nxcGE9NLmss0yVp8+DLHZyKRknijmBZilSS6xbH2mbAQnDYBk2xMdZ5
	5O1TdWCZ9c8FQmSKLDU4PpUIvOGjDG5IaA7kz0MNAiNJkrkp3yqNNpxu/m3kTlXq
	ZWb0j1soWqBfiIiynWJlYyA4a9Rtw5sSW1980kRzh1Zsw5GCpYEjDls/YBW6WDDQ
	jCzP9d3RBVr07wzMBZWYa3kh24aELIgwOMuAZTTjNR5XqHiLVUxgZVahwKb/8wj3
	7ZiIcVL59RzpTqbtsrD04YHcIJUWl5Os5XIRF4oC0V9rqeRSSif7LAXTRsemIC7f
	CBsIIQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47esa50jk2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 15:14:21 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d0a9d20c2eso40256285a.0
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 08:14:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751037260; x=1751642060;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=x6M5X4q5fSdw7OQCIrFZRNAHF8rjXm5Y3tv67PHp4y4=;
        b=K6UtvGapwh8ujJ4l65Qy9rwJkeYOghFWvj+9scgbyGMwWpwENhxqT+seZ1cFYzsOSA
         m/AScWEYxt7n4Xs61P1VcJr0yjvNC+ayRGvoK01gzvEB947pHwodtTN/0txSej15et5D
         u5hJ5Vr+2LPBwctyuY7lmQpZ7sESCn8yOL885LQMSObJpWIgCVJciJfzD+VZIC/gBkhI
         lefzKhqxFLAQAmyhreOHBbK2i7I7QF8CMfglP84agqV8g7pEscatVxuNjpFt6dWZz76n
         1ouTBQGN6wplbOhsTrQrD1aqmuvG0OgZ9DpzHU9zTfDMZIhfE+OLL5ovo//ai6mc+pzk
         XF2w==
X-Gm-Message-State: AOJu0YznLrLAhW6Qyp8rh/d9VdkwN0wYSmIA3nI/E3JKezJ/UyBNhV8r
	/LpWnNgqNADeFrAB7PhdIWZko2UnU4nDOHAbk1qBxEwHXoLGunsnzQisyESwXrympYGl6a4mr+i
	jSRX7KwY8V08ItLdJcBJvCvJ+vgnxRW+htn5oOvtavc7MmPkrqyu2T2dL+/6nIY7a
X-Gm-Gg: ASbGncu0ZXAwZAuel9RBwkOLKBJbFTkyBcUoscbs0CD55AhxqQZVF7aBjg/wQweEUQC
	evnJ+s9rA79kOs5nS8T9T9vYPTIVx6gEozDRNNB2l2WAEbLoP9fS8MD822BTau/mr0Cymaaq/dk
	3uwAUVz4LF5EO1tQek4g2rsTEjDAnuYvEMpVrkHY2lEt1a4hXPCHyQ503NmhICpYJktvdRtHsO/
	gCSIYmP1yNLy0/A0BSS7REucK4jQmFBpfdMSsXQLknH6Z8snEBxt55Lw719CBWLLmXqgiYoGtHY
	5x83BOJsW1fOpWpNWML4+cGEdydbk3wH1xrhuLzuT+VPYeGlI6iNE7LCGSqq9F5i5L8S7NPsX5t
	Ttl4=
X-Received: by 2002:a05:620a:2887:b0:7d4:4353:880 with SMTP id af79cd13be357-7d44396f846mr211883985a.6.1751037260224;
        Fri, 27 Jun 2025 08:14:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE6WBdJrvigCf2nGDYvaDd8CpQNSHPmJZBKggbxVz8mgd8mo0k8HFU87PzhkUBjRaat2QHU0g==
X-Received: by 2002:a05:620a:2887:b0:7d4:4353:880 with SMTP id af79cd13be357-7d44396f846mr211881785a.6.1751037259826;
        Fri, 27 Jun 2025 08:14:19 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae353ca2095sm138790866b.162.2025.06.27.08.14.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jun 2025 08:14:19 -0700 (PDT)
Message-ID: <29eced87-08c6-471c-971a-7a7882388dde@oss.qualcomm.com>
Date: Fri, 27 Jun 2025 17:14:16 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/2] arm64: dts: qcom: qcs615: Enable TSENS support for
 QCS615 SoC
To: Gaurav Kohli <quic_gkohli@quicinc.com>, amitk@kernel.org,
        daniel.lezcano@linaro.org, rui.zhang@intel.com, lukasz.luba@arm.com,
        robh@kernel.org, krzk+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, quic_manafm@quicinc.com
References: <20250625043626.2743155-1-quic_gkohli@quicinc.com>
 <20250625043626.2743155-3-quic_gkohli@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250625043626.2743155-3-quic_gkohli@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=eLYTjGp1 c=1 sm=1 tr=0 ts=685eb54d cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=COk6AnOGAAAA:8 a=GSS0VzHe2Y3C4L18hMQA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: GudlhYS6k_eMR0HjdE93PaIwnM_7MOE9
X-Proofpoint-ORIG-GUID: GudlhYS6k_eMR0HjdE93PaIwnM_7MOE9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI3MDEyNCBTYWx0ZWRfX+9pyPWhct2Gu
 2rxp/fsHrdtoG4tJDEK5yHeSEh1LoB6mYGrrzRY+h48EqQvSr/btHpC//l8jeaesMNntKo2KITM
 kf8JIJhM5LUNLdFLHYBQuk2xwoFizmmQnzzx1rz3ort9vlCesF4CACfbBbO1ALxPx4up2/DDpSB
 T8gvu+0MsCP8S/4m5fEOOaUhN0gDCaka8oOeMXIhBfb4/4nEdeCZpkMHQHFmlkplqIkn+afTmTj
 xNqjldJ88RdKFta4iXBDAI28xX01EOeSfD/RTf558FxOEFzDyDL9rg6WW72Df3eK9/Ylm1SlJSl
 PubMJ2dkMH+bcXLNcaeLsGJR2HgmlznDZ0sli/GOhWCFsL8AoSjzncIbniNi/rN6cAzKbL7dGgN
 5+19vGvMS0H+V46Ts3gIFjDsYbZaMGMlnzkK6T4geUCuKluqPT7NJJmeNhlO0RJoO5Eii7/O
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-27_04,2025-06-26_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 mlxscore=0 clxscore=1015 mlxlogscore=851
 suspectscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0
 adultscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506270124

On 6/25/25 6:36 AM, Gaurav Kohli wrote:
> Add TSENS and thermal devicetree node for QCS615 SoC.
> 
> Signed-off-by: Gaurav Kohli <quic_gkohli@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615.dtsi | 205 +++++++++++++++++++++++++++
>  1 file changed, 205 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> index bb8b6c3ebd03..c20e98f8399f 100644
> --- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> @@ -3692,6 +3692,17 @@ usb_2_dwc3: usb@a800000 {
>  				maximum-speed = "high-speed";
>  			};
>  		};
> +
> +		tsens0: thermal-sensor@c222000 {

@c263000 (first reg entry)


> +			compatible = "qcom,qcs615-tsens", "qcom,tsens-v2";
> +			reg = <0x0 0x0c263000 0x0 0x1ff>,

size = 0x1000

> +				<0x0 0x0c222000 0x0 0x8>;

size = 0x1000 as well

Konrad

