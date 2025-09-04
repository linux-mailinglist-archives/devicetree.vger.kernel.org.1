Return-Path: <devicetree+bounces-212845-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F0ABB43DBF
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 15:52:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B4173A056C2
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 13:52:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AF8A3002A5;
	Thu,  4 Sep 2025 13:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jJUAFgrg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91F3A27991E
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 13:52:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756993954; cv=none; b=lIIhTWAX5E7UxTD/5UJN8/GgTHHu89ZQJSyMeZ8/7uEorlhRewmrtLHBtK6gi3jG9BPO9R62BJnyl0kHj22/fAeZZgZrQDEMDti7h/zw98rk6CuLB21cBjwUBC4/sGIR8tq5PdaROjpZ8b2rSo1WqeJ8sJ3GyAzl/HaEXcKE6Z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756993954; c=relaxed/simple;
	bh=HIX4eku98Wc54feYB0CQVeLO6u4tKzM8o896BSZOplE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gT+OdWPTFLNJsFG0LXbQDlWzUgMGqGHSmmdqEhZhTwE87sHuSoTT5RMep/yLW8aontIZOftNY5TNxvLJJ1fCBRov8pvfi96MfVjKBikuqKPpA13Qsx5eVS1k31rbN4F3UImezLFpY1idT/DQkuVkel8SbJA/N33e8Er5r+Mk3cE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jJUAFgrg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5849X79H003771
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 13:52:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	N4tKvhnJISTCkWgQtCnG+ZlZTaMj9wRAoIAEATKuC6g=; b=jJUAFgrgLl1eO0XE
	H435B9ors58IzgB9fud572oJwSlLJJ1zz1V3r3g0JZEvX6XMeB1ezvMYv3sg7VFa
	z2pUlv8pMnc2ozaaGDPlq+R/FpPUsOgpYYjtzXrwO1hn9N1fAarSrjDbRGw8WqlW
	DiyKjciWFQsKfz9Lr/Ts97u+vGK1tzkJ9Jt7aYEzoaDvXEreEoQ+xiDt+UNkpysT
	Aq45yYvWMiQx+MzI4Nc0zdIYMeIvHSPDyBZo4AKIsgD0Fd5zDhYC7CP2Q9b3zhDy
	TkeuZAMAzzz5AogPNNg9YwuqPzXH9osD0I7LnHSsPuiFLxvmQW/yfnKV818qGrMg
	+fP6rQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ur8s7qux-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 13:52:31 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-7273bea8979so15053086d6.2
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 06:52:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756993950; x=1757598750;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=N4tKvhnJISTCkWgQtCnG+ZlZTaMj9wRAoIAEATKuC6g=;
        b=UM+G5rI472Hq/R7nfbls/1vIqhostPX/+MCzh7Q/eqFAlzvyfH2DuBUyUc7k5lDZTp
         LpJnnLuw+yEqu6GuyHcH4zbi5BA428IC1Kd6grMCcUlwCL5NZcrAzsJP5AP3ZTAKaXOk
         HlAczRlDOGomByCJODkdiF0kEIfAXWVBmxwpcz68kyHzKLH1DLx8Xxrs1n0M9fVa9RHJ
         bkcj6Eke960BgXFqosPyd6jlJPMsT331BF418GG0BEPKBjAIVFtMWeBHlSaSZt/k5Z54
         li/GrFe4YRIwBwc9ir+6uaWvfhajNEF57TDsae+Axt6GugsBUdPaBpqVJtkMbMcumaT5
         u3Bg==
X-Forwarded-Encrypted: i=1; AJvYcCVbkpH7l719R4za+IWKwZixhq2Sf88zgNEF69yQh43KJWX4O+HOj5aA8L+CyoumrTRsf0T8GPR4ZhfI@vger.kernel.org
X-Gm-Message-State: AOJu0Yz49vgLK3Q/qQIbqrJ4Jxy5kebJjJl/AKEJjhjAqG9IUXWDR/7q
	GHLZHREft4endN4+tHcZuTdwbhJ+1T1QE6ls6YIJ9n/+Bfb0iRMBfgGPMNF/90FwhfKAVwIO0ze
	ruM4K5EYf7qCmd7oQOpp6jZYvuYFGT3s1oEbSwTZGi2ZuogNma3BMOy69Lz7eBPUR
X-Gm-Gg: ASbGncuQVhgA6NRfkhEmr1H5XuqdomrJ1QSnr+YgYV0ooH6NIxv1t2zOzTOpYC667PD
	I7cYz6b5ChElLvx47yxp+KiY8pseywrLZh05sHKEHzFNMcgvrTCpskNdfcGsSNmfbz8YSs3cfJc
	8kqFxYDn6FkowT8/3E/m6yN5lt9xrMQpoP69LhPSGj7S/X1tbUsvWFJdqtEwb7sbO/fYdp4qbsK
	p4JFgHVRMdGSaPZKdXR5APRNG5ZJk7ISpEe/09KZ4wEMXMbo/uy3YNa6L9WuwD88vGlwa6a3Ozg
	ji8n1sIIjZApUUhSP8sUhMHZGwxOitBxQYaWQZ9Zl/i1cfDtF7vTfgI3k6lzSDDtvSE+4pOiBtZ
	sOcawYGUScacvFyAaqSAUTna/IANWUtbnhsN5P/bzhOT84ahEUNgy
X-Received: by 2002:a05:6214:21c8:b0:725:16ca:a76a with SMTP id 6a1803df08f44-72516caace5mr71502196d6.3.1756993949986;
        Thu, 04 Sep 2025 06:52:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE0EbzO3RGw4eqBINrGkwEPKwOp5hhL8Lt3eiyZMY3NmrRXVtmOrj8S+YObl1fR76T6Vkoa2A==
X-Received: by 2002:a05:6214:21c8:b0:725:16ca:a76a with SMTP id 6a1803df08f44-72516caace5mr71501656d6.3.1756993949282;
        Thu, 04 Sep 2025 06:52:29 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608aba7e15sm1241448e87.52.2025.09.04.06.52.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 06:52:28 -0700 (PDT)
Date: Thu, 4 Sep 2025 16:52:26 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yijie Yang <yijie.yang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v9 2/3] arm64: dts: qcom: Add HAMOA-IOT-SOM platform
Message-ID: <2o2ypmxo6wbohrb5edkj27ueqpgbqhsnqu4ofzfubtfwg7vyri@mdsu4ca63fr5>
References: <20250904-hamoa_initial-v9-0-d73213fa7542@oss.qualcomm.com>
 <20250904-hamoa_initial-v9-2-d73213fa7542@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250904-hamoa_initial-v9-2-d73213fa7542@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAxOSBTYWx0ZWRfX8VgZhr4Sf2n4
 HleHVHX/aFjk3ToScFPMsLK5+Wc2+D/o7DAjbLEhyfA/7qWuMigAU5yt/AcgC2Eo1bD66rI4GGi
 9+MT6zYNUFlo4BQQ9OUuCquTIa+m6TAPk2j1OvuiWMLbQa2t4aeRPjMV2LXkIRuZfyLz5FzuIqF
 ikRqgo3Sc9GB3tbKIy7b6Daho0ZZyCLo/q7x9HPqFN+hFXi+B52FEhFaK2wo5oqreKy0lJsJULB
 VQHomJfHQC9XxmbPkmoFtPziYV595833eM84UiYrIBn4XPtMJ3hURFBjmKNwCZMteg7GPMqOw9E
 sE9jmNQfuJSwtdFrQPgD9ZBC1TaJSmiJF/CGQwoDvjKJLOaUjDjl935JpbADiPI789axZoNfrDN
 odnpAe7O
X-Proofpoint-GUID: YUzIwqwooNeVQANXcdXmomYMlmpMiTaX
X-Proofpoint-ORIG-GUID: YUzIwqwooNeVQANXcdXmomYMlmpMiTaX
X-Authority-Analysis: v=2.4 cv=PNkP+eqC c=1 sm=1 tr=0 ts=68b9999f cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=PhgHo22kut4TJJxNvVMA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_05,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 priorityscore=1501 impostorscore=0 clxscore=1015
 suspectscore=0 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300019

On Thu, Sep 04, 2025 at 03:48:33PM +0800, Yijie Yang wrote:
> The HAMOA-IOT-SOM is a compact computing module that integrates a System
> on Chip (SoC) — specifically the x1e80100 — along with essential
> components optimized for IoT applications. It is designed to be mounted on
> carrier boards, enabling the development of complete embedded systems.
> 
> This change enables the following components:

Documentation/process/submitting-patches.rst, "[This patch] makes xyzzy
do frot".

> - Regulators on the SOM
> - Reserved memory regions
> - PCIe6a and its PHY
> - PCIe4 and its PHY
> - USB0 through USB6 and their PHYs
> - ADSP, CDSP
> - WLAN, Bluetooth (M.2 interface)

No, you don't. WiFi and BT are not present on the SoM.

> 
> Written in collaboration with Yingying Tang (PCIe4 and WLAN)
> <quic_yintang@quicinc.com>.

Co-developed-by, Signed-off-by.

> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi | 609 ++++++++++++++++++++++++++++
>  1 file changed, 609 insertions(+)

> +
> +&usb_1_ss0 {
> +	status = "okay";
> +};
> +
> +&usb_1_ss0_dwc3 {
> +	dr_mode = "otg";
> +	usb-role-switch;

Please check with Johan or any other X1E8 developers and make this into
a platform default.

> +};
> +
> +&usb_1_ss0_hsphy {
> +	vdd-supply = <&vreg_l3j_0p8>;
> +	vdda12-supply = <&vreg_l2j_1p2>;
> +
> +	status = "okay";
> +};
> +
> +&usb_1_ss0_qmpphy {
> +	vdda-phy-supply = <&vreg_l2j_1p2>;
> +	vdda-pll-supply = <&vreg_l1j_0p8>;
> +
> +	status = "okay";
> +};
> +
> +&usb_1_ss1 {
> +	status = "okay";
> +};
> +
> +&usb_1_ss1_dwc3 {
> +	dr_mode = "otg";
> +	usb-role-switch;
> +};
> +

The same.

-- 
With best wishes
Dmitry

