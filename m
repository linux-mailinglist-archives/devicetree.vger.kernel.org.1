Return-Path: <devicetree+bounces-197657-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BA683B0A116
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 12:54:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E7A5816503C
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 10:54:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 180282BD038;
	Fri, 18 Jul 2025 10:54:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hdFNWohI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BB8640BF5
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 10:54:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752836045; cv=none; b=QT+fxfBILruBBDAmp5L/RprtNwgPt8Bn/daEOexmI2wpM47k8ZXw1wm42zjMYne43hc8BIOqI03062svH2RPFeegFwSvvONeQy3nYafsEEOWqKDu0IYfTGEqa6CDx1y/JUFqgqlGEsKRSqOFBfW0AxBNCL3onsD6R+2ZjFY6kZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752836045; c=relaxed/simple;
	bh=ZtyV0pcwIGmLZgYZMuNrzpvaXbHSwQYl8wSg6lg4Hjg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=q2pf79y86rdFmMrh2DGFNjYYUP+k2ZdNM20uQP9pn6FolG9yiia0PNXVEba4pAwuRsXZOnRP4v1fMEsAsx3SfjN4LDW9aUe9AM3esSTdtv1J2KCiXqASuRj4r/wQtQRV+PVHfm3eFhPCN0XzTTcQa/q9VWEgAQzI1Y7OPmNyvR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hdFNWohI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56I7sTcd032424
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 10:54:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zoFL7Jxs7RkKl/HeM9uPqTAAPaM3GkGbjjY3U9dj2iI=; b=hdFNWohIzcND3iZ3
	BkAJfQ65KpgfjHOX2Nxa49jDvvVG8k6+qZ8brK0CDvyuksdx+ot/SVyowcNOotia
	ajEJdvn9Jp5p3hn1CsJYedrfjshqSVxPN1zVUOFkB8PJqESoE3U+aw30qVjzEvnG
	2Ch1tKrOC+31cFqFOUwA5Nan8xictEbC16g0g0pcFo3KP1/+AU0XfArkpjH61MZ+
	ZtslqsXo6E7trqcixgh+KElkCHBa8OciN+hmNGACskwbpTw/HQOuVcD1NTQwdXQo
	T5umiroDG0bhAHKLDNXEer8iND5v9ENx8ESZOniM8DjwcDCFUvWYYj6M1vU6gy4q
	JVcGRA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ug38bcfc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 10:54:02 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6fabbaa1937so5658976d6.0
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 03:54:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752836041; x=1753440841;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zoFL7Jxs7RkKl/HeM9uPqTAAPaM3GkGbjjY3U9dj2iI=;
        b=IoGQWYNWhd8YYIS/83+lUhxnBctz1UhTj//z368GYaHKlwBi4k3LjnzoT4FIqhdV7F
         rk82uxXlRnrKvJg9/j0Cx7qsqipsemq42dKeDljdSAM3spFXh7g5wFhsbskptUKlLqvQ
         GP0/PUNKxc+YbZM1wR6Ke7+aqX4NhyF7OjDwFe/uTMMBLZA++zSgyZndbVZ/GD7SZwX0
         3uNf5CDJvCCXemx1K0TACACIDGWGSq2UJia2JfJhwvh1Bp0M0WWiaOCbluT8NaEne2xh
         eHc7XvIXiiG79LgykNnabKRBZ6W1gQmjmR+I5oYonoDRUzTW8JPPtozkSqSoL36upoci
         tKHg==
X-Forwarded-Encrypted: i=1; AJvYcCXSP0nJRnbTUG167a7AUBFO2k1Y+FM6h99vLoYrQZzOU7nja7GEVOAVA03ZxrMASb6VaAogbxzIt/qU@vger.kernel.org
X-Gm-Message-State: AOJu0Yzp2xRdm8t2D7ejaMm2gB9xhbaf/eFvj/OdsG36VbCi0pwF1auz
	Ov3zjrX1C3o6mcX+Vpz1mOwawAr1O5r7/+eqobwtPPcULmKiYU/4FB9MkoeDpsviB6CL09dXc0V
	684Eq9eSVYbfLL9yKgQnfvxJlijTArZKL7mFaGO0xxZlUOu1G5yoBbjfc51jpySAe
X-Gm-Gg: ASbGncs2ezhOidL5D5cEMR9t3jzOVXOb3A+/6cVxt+hfojQJvs5R0dTa2Vpcqid4YsJ
	4na9GcyL+xkJHAdbfXYIAX4jQdJWwFF8YxmR9khskVTq6rhnDbUWUTzlH7fW+CW/pXp+6hbqPWI
	AZXrTqL0CjsvpL1nUbmIzVBI2jE6nooX3OkEGmraFV+PrMEI5vSBdt0T8RMo0CoH9Dg5Eo/vnSm
	qZEICTxMBeoJiIidqX6N1/kWLljtBrBh2m702fEKszbZT0C3SNGBiaBzBxy5vcVQrLwPJE5T7pu
	NHp/BYDH96fhwZfWdl7tSqNduu4ss2C5MtHifezDrtSs5gRA6LZ8V+AJQHzksGb8S3FYPT30zGN
	35RKFGTR/6TgFdt9TM6Bt
X-Received: by 2002:a05:620a:4490:b0:7d5:c29a:b41d with SMTP id af79cd13be357-7e342ab5490mr671468585a.6.1752836041392;
        Fri, 18 Jul 2025 03:54:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHlcZ4cMvUifS/6K13j2DzA/MxzlKQABGHki3WuWIX0V7eMrHBQtq5xw0vfsXBYwbja7Ah8Qw==
X-Received: by 2002:a05:620a:4490:b0:7d5:c29a:b41d with SMTP id af79cd13be357-7e342ab5490mr671464785a.6.1752836040901;
        Fri, 18 Jul 2025 03:54:00 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aec6ca310ccsm99825266b.85.2025.07.18.03.53.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Jul 2025 03:54:00 -0700 (PDT)
Message-ID: <86e14d55-8e96-4a2d-a9e8-a52f0de9dffd@oss.qualcomm.com>
Date: Fri, 18 Jul 2025 12:53:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/4] arm64: dts: qcom: sa8775p: remove aux clock from
 pcie phy
To: Johan Hovold <johan@kernel.org>,
        Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
        mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
        bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
        kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
        qiang.yu@oss.qualcomm.com, quic_krichai@quicinc.com,
        quic_vbadigan@quicinc.com
References: <20250718081718.390790-1-ziyue.zhang@oss.qualcomm.com>
 <20250718081718.390790-4-ziyue.zhang@oss.qualcomm.com>
 <aHobmsHTjyJVUtFj@hovoldconsulting.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aHobmsHTjyJVUtFj@hovoldconsulting.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE4MDA4NSBTYWx0ZWRfX8tFxYD/1uSXJ
 +E78srfP7zU1K9fmkIVeBcmMFdmJLRR1d/nZSwvnGpT43B377RAF8t1fdAao1R50kkcieUXcriy
 xNoaCggn9onPhn8uEBMov2vzLS9lVtR2uLRMZKSw5KAi6YWO+MSkGIlvr/g6Shc/ZpIMAxsUGDV
 k8fRY2IZhpWilg8izOhRtoqByTwPnlChC+DZLiJZIEH+qNZSKGb8Z1+KlBEG+WvEpXE1PCY/GHu
 JXoMXRqSs7SdxXDIJrKk1M14PKtZtl8YZPcdwBW6ReHw9n3yt7TVGgyIvJH02dWxM/Z38wTrD7f
 jJSFg1snQtZaJvQgNjanzfwGTK4V9qdjk5Wyvp9+DgcODhbd0yUkm17fKP7L9kskk2SNFyvsqf8
 lMIlrDC2nAyi6ar0Z4t7UWz+JnAaM3CO5rIj3FEgmERBVSQeBPjZdsEk2oUwlXPpp4ukqyBN
X-Proofpoint-GUID: 25ZDkZAk5rr99_NcklaiY0vhRBHel9ea
X-Authority-Analysis: v=2.4 cv=SZT3duRu c=1 sm=1 tr=0 ts=687a27ca cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=JwSYIlhaqBluAGix--wA:9 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-ORIG-GUID: 25ZDkZAk5rr99_NcklaiY0vhRBHel9ea
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-18_02,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxlogscore=999 mlxscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 adultscore=0 impostorscore=0 malwarescore=0
 phishscore=0 spamscore=0 suspectscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507180085

On 7/18/25 12:02 PM, Johan Hovold wrote:
> On Fri, Jul 18, 2025 at 04:17:17PM +0800, Ziyue Zhang wrote:
>> gcc_aux_clk is used in PCIe RC and it is not required in pcie phy, in
>> pcie phy it should be gcc_phy_aux_clk, so remove gcc_aux_clk and
>> replace it with gcc_phy_aux_clk.
> 
> Expanding on why this is a correct change would be good since this does
> not yet seem to have been fully resolved:
> 
> 	https://lore.kernel.org/lkml/98088092-1987-41cc-ab70-c9a5d3fdbb41@oss.qualcomm.com/

I dug out some deep memories and recalled that _PHY_AUX_CLK was
necessary on x1e for the Gen4 PHY to initialize properly. This
can be easily reproduced:

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index a9a7bb676c6f..d5ef6bef2b23 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -3312,7 +3312,7 @@ pcie3_phy: phy@1be0000 {
                        compatible = "qcom,x1e80100-qmp-gen4x8-pcie-phy";
                        reg = <0 0x01be0000 0 0x10000>;
 
-                       clocks = <&gcc GCC_PCIE_3_PHY_AUX_CLK>,
+                       clocks = <&gcc GCC_PCIE_3_AUX_CLK>,
                                 <&gcc GCC_PCIE_3_CFG_AHB_CLK>,
                                 <&tcsr TCSR_PCIE_8L_CLKREF_EN>,
                                 <&gcc GCC_PCIE_3_PHY_RCHNG_CLK>,

==>
[    6.967231] qcom-qmp-pcie-phy 1be0000.phy: phy initialization timed-out
[    6.974462] phy phy-1be0000.phy.0: phy poweron failed --> -110

And the (non-PHY_)AUX_CLK is necessary for at least one of them, as
removing it causes a crash on boot

Konrad

