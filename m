Return-Path: <devicetree+bounces-160299-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D2BC5A6E329
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 20:16:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C41E1168E69
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 19:16:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C76181925AB;
	Mon, 24 Mar 2025 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Z3l8S/Ag"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B19992E3381
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 19:15:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742843753; cv=none; b=kkLc3DfHMALI0z4cOlnoDCmVcwWrd6kr8KmkDqSkpJr36fW705W+c/r6gWnjLkBsU4wR/YeYvbifq2ex8XWAUE/E2NhhkWplDSlM69s/cZHQ29RJKuhY19r/fhaolb0qD3bLWmR/FrUvbr8kHCITglUKv5vB6qsGZX3daNOz96w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742843753; c=relaxed/simple;
	bh=fBNjGhw6eywjKM4CPjTagVCVi48iAj00DoDAQIEtcVs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GJpSk/UHR5URi0394hY9Gx06+X6eE1iDcVbUQL0K1Y4k/HHpyuYCwBwAdQ//0thF6cZNy1yN8IolMKoiHh7GIIAUA4CBOnHXxgQfd/+wMZ5tAVHmhCjAFOAPmjElN8cVP+h+K/yAdh5U8m/DuNfc88/qRxLfZoFRRvR5quUNhRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Z3l8S/Ag; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52OIj1iZ015727
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 19:15:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	g3WlA5imHAbR+jao8j3DyOpD0bdaiCLBhc5RaKXj5z4=; b=Z3l8S/Ag79s1WMv7
	hGqHRFCxtFF/PTWnSmWTp2wvAP/2/2T1BzfZ9SDFxkX8OSNyeUYmPw1KDsJ0EhB+
	PGY2Gh7fpOXeA6xrxJC4G0U5WI3QlM1FziRzPvsZHMxt7dp2tK+ouX8+ZKXSriQ2
	lLvH/MelqWNHgrwuNyjVxV2EzizsAd2Uce14/a2eYBLlDTzhT8DXjZdYqDl8Lh+f
	sJ/DNZcmT9yfyG/BlFMtFZOWYrt9wHIC0ASwCehN2npqq34GHlFCJnVB8Pw5Pv/4
	LTKI2jkaLNzpN7hOdGVpVBK+gO/mZrSntgnQrWMYhoGyEMQ1GQvRs4lcwGmM+NJr
	pBswtA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45hn9wdcuj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 19:15:49 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-476695e930bso4704651cf.2
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 12:15:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742843748; x=1743448548;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g3WlA5imHAbR+jao8j3DyOpD0bdaiCLBhc5RaKXj5z4=;
        b=nmrfQ/MZNgII1Gg9hjdqYFp2Mbqd7uHuAbmhbroe1MRUZFRAz8UFj33ayeGusnCGvC
         bfjfTb1I73Jss26vAUt2C/3ljc7AKKko4bEQoY8iheg4M/tfPKAdgVbK4EC1bP2ThwPc
         dVq/Seq5DSBAmy8qXQL/Bw72dJhgsiN7G3jxcMYpQurRxnkzSgEMaxwwP7HrUlceeyge
         BL2g2xqc2I8cIUZnAX4muFHIqt9s7nuOTKrdpQwIWKILST4yeyJKs4V/gGRK4hl70jIf
         al+KF1gH8SbapTH2Kaxq1ipt7pKzuSUSGQs/0q/jPHGmp91tDu6Ctbinmi/a9KDGOC4t
         kDJg==
X-Forwarded-Encrypted: i=1; AJvYcCX+7JnUFCkhEpd9AtQZ9tWTOaMxheQZB8Q27qxFRY+KoA2V6pZxG2j7Ram4IJxpwSxzufvrYguweClk@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3sB552qSEfZkK8UuZuHDfeskHYqyKDWZ77duQUNrvj+qomPCV
	499AWMEvM3Eo/379JpFCO4Aoj9XcEBVggLnGGC8BiS0DFr4lPeCz1864LkYn/aRMsy3kk1xvCKw
	GqooHXtvSWOIZzHALh+6RTar97cdFuOBw8LSA2/6hbqwrUB5xAGkM+1qr1c4b
X-Gm-Gg: ASbGnctM/176lHEY5pqHsT9HVTLqn0YAne4+mhBxIb7qjWbubn6lb+ky9M8P/pGRA/+
	+ehF1+tcpxGNTPflST35SSAKsurH8aT/6Ynzs74gh+CYkVRCkpFE81z15MpRustZi7Ha0yJjO72
	dEOVHt0+CfGtXqoTff1+GWEG6wvkNAqneHg4phfZ7alqk6NarNJeKsCXPt3Ze7g1eK5W78DwmPA
	1PymwuP1pYlwcT8M+LRAqkjW1fKuC/8+daAl4Z7088u4j9vWkMsuJZtTafNBi4EJWw7WC/sDbJf
	LvPpa6NmGwVF5arYYLiYhRmCviziBSWzA8+Cex8QoLNw2ze2v55jfp2qdyCjC/U9jvbs1A==
X-Received: by 2002:a05:622a:8b:b0:474:efa8:3607 with SMTP id d75a77b69052e-4771dd591camr75030521cf.1.1742843748416;
        Mon, 24 Mar 2025 12:15:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEtmaP6yOrhxO/q6iKc0oEvHBuaQJo1z8Kot1OeZWFMeia/4semGeZRZf9taq7A7UDWKD4wzA==
X-Received: by 2002:a05:622a:8b:b0:474:efa8:3607 with SMTP id d75a77b69052e-4771dd591camr75030291cf.1.1742843747870;
        Mon, 24 Mar 2025 12:15:47 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3efb658e4sm719173166b.87.2025.03.24.12.15.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Mar 2025 12:15:47 -0700 (PDT)
Message-ID: <2b038454-8994-490c-9d59-9bd03f52e337@oss.qualcomm.com>
Date: Mon, 24 Mar 2025 20:15:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: qcom: sc7280: Move phy, perst to root port
 node
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com
References: <20250322-perst-v1-0-e5e4da74a204@oss.qualcomm.com>
 <20250322-perst-v1-2-e5e4da74a204@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250322-perst-v1-2-e5e4da74a204@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 7m7EVKzmnHsSNDDQw4feBIisN-oeUqe5
X-Proofpoint-ORIG-GUID: 7m7EVKzmnHsSNDDQw4feBIisN-oeUqe5
X-Authority-Analysis: v=2.4 cv=CPoqXQrD c=1 sm=1 tr=0 ts=67e1af65 cx=c_pps a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=bSnlr1PQR7FYCNIf-OoA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-24_06,2025-03-21_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 mlxlogscore=999
 spamscore=0 priorityscore=1501 suspectscore=0 bulkscore=0 mlxscore=0
 lowpriorityscore=0 malwarescore=0 adultscore=0 phishscore=0
 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503240137

On 3/22/25 4:00 AM, Krishna Chaitanya Chundru wrote:
> Move phy, perst, to root port from the controller node.
> 
> Rename perst-gpios to reset-gpios to align with the expected naming
> convention of pci-bus-common.yaml.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---

[...]

> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index 0f2caf36910b..6c21c320a2b5 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -2271,9 +2271,6 @@ pcie1: pcie@1c08000 {
>  
>  			power-domains = <&gcc GCC_PCIE_1_GDSC>;
>  
> -			phys = <&pcie1_phy>;
> -			phy-names = "pciephy";
> -
>  			pinctrl-names = "default";
>  			pinctrl-0 = <&pcie1_clkreq_n>;
>  
> @@ -2284,7 +2281,7 @@ pcie1: pcie@1c08000 {
>  
>  			status = "disabled";
>  
> -			pcie@0 {
> +			pcieport1: pcie@0 {

pcie1_port0 (or pcie1_port), please

Konrad

