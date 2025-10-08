Return-Path: <devicetree+bounces-224534-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 04FA3BC4E08
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 14:40:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E84A619E1EAB
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 12:41:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53DA224DCF7;
	Wed,  8 Oct 2025 12:40:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hBd04cJg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA9AA224B15
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 12:40:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759927244; cv=none; b=LsZIw29qCoZX4RwVMHHxvoaDwjQv08z8QbLrP3Kt/9fWE93ny5jqPCkrV+FRdIozPljWfQl80NHs2RHrNs+QIMQQ1HR9k1jqQWehV5IEo7QQw6Ybs8plxWGUjIZcaNsIuIzqxWxirfAThmnL3WO9WiRLRHcbIP2UW7XxnkmVEa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759927244; c=relaxed/simple;
	bh=lUTrOhjHPJyQD1MhnOgcyFKqj4kxP0ZYD9sQND0DSt8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qteryIQDCBkh1Fai0PofIWkIiUM3wEAQ225XpXmWjj6pqYhcNtATh/H43gUwxIz70rWbge9Dswe4CIWsKGIgQBWZU1TOkTfD9VM66pMGQhoB+QtzeHHV+cMB8Wk22pmMT2+d53wB8mjNbgzZQJ+0A4OgAWwkMo2fooagXR88zT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hBd04cJg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59890O30015802
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 12:40:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	M4OPP5rGtbcoGt2hmvhc+u4aKUyzxDw05x/alaaMMrU=; b=hBd04cJgCs6FMEwT
	SLJv6hQIebpXckG7rSWR5WFqC0HAU3YzOqpBfUqFEbgMvU3Xc06MuQzjHrLsqdwt
	h8Ne8CmeNfpDQcCFgxPdgr9088KLmQcUJ6WknNvlJeMX/WPbctqMXCS4uJPYAI55
	2sta4654l/LibwERamb75M6AUI26ZJgtDStfAFLJF52818MNZxQIpzcnGlK0ye7T
	4UDigkvXMMEymCQfW8bOWuyTcJ0nExA3Vj3Q2l1d74UpiSK5uBihcP/VVfRrfmRD
	gq4Ky1onVbv6UtGwEYtK9uFvTQzRF24dfgGA+07skz++WYq/NeKviK0zVWpgy3Es
	QNDw5A==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jtk72h5s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 12:40:41 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-879826c55c8so15384266d6.2
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 05:40:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759927241; x=1760532041;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=M4OPP5rGtbcoGt2hmvhc+u4aKUyzxDw05x/alaaMMrU=;
        b=HVcyTqKjygxyMtlbN7m32fsfWC97rwldV8q7kt6tIn0aUQmoplr0XRfDaWrC6maPP5
         eZSruJnq/xrscS88WqwB99smPRaBxkw0Nfmuvva1sRJq2nWD/FV7g0AYclV8zh9LC+95
         naFE3LytWaY44QL9MEQ30v25/NF6B10WEKpB5OKaCaC3dBUU1LRBlUKLZWR1r+3mgPTg
         HoYiNaFgaPWkXCqkV6xXrrLXKhIygc0T4/dJt2KPB790mQnZbULk1VFLFrYYgTPk179q
         1utBsJfV+k2frcgD9xY5EOXrttDa0LSSyaJ7NUblFBRLY65lvpgulL0DNqgJpuQosoOi
         qQZw==
X-Forwarded-Encrypted: i=1; AJvYcCXbBswnQsslU9PpmLmQyttpxk+op/65BgcPXRoSQGSoVp6zHBXmmElj/1Dilm8X2UaeyC87on569TD0@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/K0HduIvX6lk690ABIoNOp16Qzj30INN7WG7g+gMtZZt85L6J
	4qItdsh+A9SpTLVwBIls5Ih4DyG6JwqxL8D/fzORJJDbZaCBbdYGHlBIgiKWxMGApP/jRPiDk7A
	v7+9l4EA39+2wKaG+8ZYpypDrZohgiovJSe9s1Q7zNZ2pxxpWMrgpUHpRa3p+U0Rv
X-Gm-Gg: ASbGncvdfCUAXjZml+XCOtMGcForjQPao7h7sFFz51ngBp4K3lGOUHCzw88+mz36uYj
	ft83fDn/Yj3wOXxL0s+8sEUUieuDA0JCrr9TFG99hAKQjkG05dCWZSsN9h8fwkhPsIjuM24yhL5
	9yuHnBmWfgDqhGLS1BOM9+qhce11puO81zpWSXb2iUFGRvEdo0/6rqRdaqE7qxxIq8sE8BXyjCY
	bbylxMxxStG8czPyd6akGB9DLJTNvUu6jBYiCHt7BmMjYnKlTZgn58gvW6NJJj7JmEITBW50NnY
	kEkoJEVIRr/LWjtUzmPkG20wZglu/276z2YV2CDktqpFGLaPkutNwugd0MSxEPrwnEzKFysY7ye
	6MMxkHGUa9gHcRHtgeYChy7f/TMI=
X-Received: by 2002:ad4:596a:0:b0:784:4f84:22f9 with SMTP id 6a1803df08f44-87b2ef94002mr25131186d6.7.1759927240889;
        Wed, 08 Oct 2025 05:40:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE3QYIdes0zzXDXLbtN1GZArLUcJtOk9G7EMYv269Ezp7bFtd3e0tnh7OnfT4Sdj7S94CaghQ==
X-Received: by 2002:ad4:596a:0:b0:784:4f84:22f9 with SMTP id 6a1803df08f44-87b2ef94002mr25130856d6.7.1759927240350;
        Wed, 08 Oct 2025 05:40:40 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6378810112bsm14570055a12.26.2025.10.08.05.40.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 05:40:39 -0700 (PDT)
Message-ID: <e3400ab5-c4ea-455a-b8ea-d4fba2ece85d@oss.qualcomm.com>
Date: Wed, 8 Oct 2025 14:40:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] arm64: dts: qcom: lemans: add mdss1 displayPort
 device nodes
To: Mani Chandana Ballary Kuntumalla <quic_mkuntuma@quicinc.com>,
        dmitry.baryshkov@oss.qualcomm.com, marijn.suijten@somainline.org,
        swboyd@chromium.org, mripard@kernel.org, abel.vesa@linaro.org,
        andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, robin.clark@oss.qualcomm.com,
        jessica.zhang@oss.qualcomm.com, abhinav.kumar@linux.dev,
        sean@poorly.run, airlied@gmail.com, simona@ffwll.ch,
        alex.vinarskis@gmail.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        freedreno@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
        quic_rajeevny@quicinc.com, quic_vproddut@quicinc.com,
        quic_riteshk@quicnic.com, quic_amitsi@quicnic.com
References: <20250926085956.2346179-1-quic_mkuntuma@quicinc.com>
 <20250926085956.2346179-3-quic_mkuntuma@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250926085956.2346179-3-quic_mkuntuma@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAxNyBTYWx0ZWRfX/j+1R0j8z+kM
 Hidp55qIEYGUhgQd58RSi5qVZjiO0vFl9d8vYLlnMlXgCNL8ZaNu5i1rZOYs3F4Id4hyoH8RZao
 VzQ9xT73mnU4ZjdIdRHxHMhMuGw0PWSaRkGWPDaB7nr8rHc+IoYwjM0Uks9hzDGsTrY+cLL+s79
 Z9M8q7zoFvhde0cJZwSxeiBE4tZ5cig6avVinsuJj3d8eiVst1izanf/a5yf7yCuPP+bGOyIG9S
 glyqRR1G4SVPK4UEUdj9fOlm0cZ3A8fC4gO5UNMNWBDN0ZnEGhspKcS26eE5G8GxTA7JBUama3i
 XcXYCGKZz4wiwSjSGCiLl2gQDh7mZfWg151FrZSvaIRhOkYYw1MUjlGZ0pPpdA0dUlVun3APoF/
 TOlYaFKQQwWou3BYiH3rb9L1LGfJgg==
X-Authority-Analysis: v=2.4 cv=do3Wylg4 c=1 sm=1 tr=0 ts=68e65bc9 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=COk6AnOGAAAA:8 a=5YqVK4ek60l4VI_saP8A:9
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: syHIa4hOz9sloqjVNxmb1TjSRwC7mfyu
X-Proofpoint-ORIG-GUID: syHIa4hOz9sloqjVNxmb1TjSRwC7mfyu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_04,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015
 malwarescore=0 spamscore=0 impostorscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040017

On 9/26/25 10:59 AM, Mani Chandana Ballary Kuntumalla wrote:
> Add device tree nodes for the mdss1 DPTX0 and DPTX1 controllers
> with their corresponding PHYs.
> 
> Signed-off-by: Mani Chandana Ballary Kuntumalla <quic_mkuntuma@quicinc.com>
> ---

[...]

> +			mdss1_dp0: displayport-controller@22154000 {
> +				compatible = "qcom,sa8775p-dp";
> +
> +				reg = <0x0 0x22154000 0x0 0x104>,

sz = 0x200

> +				      <0x0 0x22154200 0x0 0x0c0>,

sz = 0x200

> +				      <0x0 0x22155000 0x0 0x770>,

sz = 0xc00> +				      <0x0 0x22156000 0x0 0x09c>,
> +				      <0x0 0x22157000 0x0 0x09c>,
> +				      <0x0 0x22158000 0x0 0x09c>,
> +				      <0x0 0x22159000 0x0 0x09c>,

sz = 0x400 for all 0x9c

> +				      <0x0 0x2215a000 0x0 0x23c>,
> +				      <0x0 0x2215b000 0x0 0x23c>;

0x23c -> 0x600

[...]


> +			mdss1_dp1: displayport-controller@2215c000 {
> +				compatible = "qcom,sa8775p-dp";
> +
> +				reg = <0x0 0x2215c000 0x0 0x104>,
> +				      <0x0 0x2215c200 0x0 0x0c0>,
> +				      <0x0 0x2215d000 0x0 0x770>,
> +				      <0x0 0x2215e000 0x0 0x09c>,
> +				      <0x0 0x2215f000 0x0 0x09c>,
> +				      <0x0 0x22160000 0x0 0x09c>,
> +				      <0x0 0x22161000 0x0 0x09c>,
> +				      <0x0 0x22162000 0x0 0x23c>,
> +				      <0x0 0x22163000 0x0 0x23c>;

0x2216_2000 and _3000 don't exist, there's no MST2/3

sizes should be changed similarly 

[...]

>  		dispcc1: clock-controller@22100000 {
> @@ -6872,6 +7115,8 @@ dispcc1: clock-controller@22100000 {
>  				 <&rpmhcc RPMH_CXO_CLK>,
>  				 <&rpmhcc RPMH_CXO_CLK_A>,
>  				 <&sleep_clk>,
> +				 <&mdss1_dp0_phy 0>, <&mdss1_dp0_phy 1>,
> +				 <&mdss1_dp1_phy 0>, <&mdss1_dp1_phy 1>,
>  				 <0>, <0>, <0>, <0>,

You need to remove the same amount of zeroes that you added

Konrad

>  				 <0>, <0>, <0>, <0>;
>  			power-domains = <&rpmhpd SA8775P_MMCX>;

