Return-Path: <devicetree+bounces-141059-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 515FDA1D458
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 11:23:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DE909188845D
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 10:23:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD8811FCFE5;
	Mon, 27 Jan 2025 10:23:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DJFwnw47"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A36F11FC7F9
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 10:23:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737973413; cv=none; b=txEbH6UyylxXngzeHbi6qnf+XE26Wy0Gev7ZFUAeNpJMglwsu0fSOwV7MaM7kaElKXsuOXQQHghcEkVNHm4aK6SALUO3kCTM58nNVuoV+ZxnqGB0CRfAxLciUXUArHTTHQBCIjNbwvYRPAf7efCEh0CyDDlpbL61ktC9n+SuuC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737973413; c=relaxed/simple;
	bh=/ziQCxNO8jspCZEWeweEbldQZWZOoyzeslfitT30Ucs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OzLrlFpYT0TCiAxkjQRUzCJlTCmLJKm8U/BZOmbmR2TVflMKB38qzdgtmsNAt0SJwo8wH9Qay+qH+21HT0Gkxe3/fBxXl6GAuZsKZC+gLWRA5SlbRabPk29PTQJTmJ4mdIsoZpZM6uy1P5PTssDGq4POtcsNgd5uGrKDWZ1baDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DJFwnw47; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50R4rgbA022789
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 10:23:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hGB5OVb68LNt8gE8AS+bpnEVv8dQ+ZWfbCKV+Fgql1s=; b=DJFwnw47aPPLlcK9
	HWN/KcRu8+0A34vgbRvLmEldSMPh61ljyB/ekcDy+FL3+geO6HqAyWgMRDuI0fYb
	yLY+szCFQQD60ymx13gFrE2Wgd+fapD/uLeu0jBCL4+cZCmcnujYIis3+SMoVj/v
	d0RHHqAZ8+IgKFt2juXwKcQrrCiZ2mp+Hbejtc5HTir3FdL7S5YIFKPNVYKiaQmC
	VZVoefqy5JaV8/K1eGqSln3oDHCSBMrsi3gz8/+JxdR/HvIxhfDGIDhnQp8NgtTB
	qIYLtgHRfUasMIxWRJO8KZvcwRTGmutW3QUbeAJNnP2aRo5QvnLRHTBdkHqBBSQH
	lJo43A==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44e3h2rm0b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 10:23:30 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-467a437e5feso12436621cf.0
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 02:23:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737973409; x=1738578209;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hGB5OVb68LNt8gE8AS+bpnEVv8dQ+ZWfbCKV+Fgql1s=;
        b=PfVD+/YQklguGQQEiTmsT5MP3M2xkmdAAnUcTl/Rga0cWv0qcZjtA8FWN01dnWBDqT
         3O0ozRV3MXO6eGcKH/J0GIzthtBEgkWYkTKwkHEH2/EuelzyV4jKyxMe2AWmMc8YyubB
         GVk6CsTChCX6R5zdBvZOFooethUYWcC4linRmdcIFIAxkfghz1YR+IKPB3NfXDmHrArx
         12stbrvBwf90Hkb1niZ4uJS2SZ4Zi7gfuoHz7WnatWV2ZcMn2ngbNQrwm+euGi2hkT4L
         SVEz8zAGSz8OJx2dQXWfqrGw8rC1eBJiPQR4dCiwl/RNvTAL7owKILRg1LgGM+CH0vUS
         YSIw==
X-Forwarded-Encrypted: i=1; AJvYcCV3i8FMhqq/rpSWK+UgjMzR/4hUXzGAeZmOfc+7rj4Zk8P27/+SSCh8hgP/XMHyC3NiqmqyvKgY/+3g@vger.kernel.org
X-Gm-Message-State: AOJu0YyQ4FXiPExxnf0aFYc56Z/wVwtnu0lHrmBCAgpTczTBMFRHR1Zt
	l3y2q5E9RVU6nsUkWN6ix1Gr5HWk9OiZjosAiRhh6xpF6InWSbAOTn80x+cQgPf+e7Wv/x5lj3r
	GW6aTLOtVWoOvlyZIFymjrmEUKInWYiNUxM/I5SUvTYQOkIeHeic727kQm3kL
X-Gm-Gg: ASbGncs6TVI4USA7FH53xOkv4EDl3I8oLzgRIWVTpxW9BNH+JaEullMAE5tVHC+XEBh
	XIpXWfTdeDou1Ew9TsuraDzY39rUJOG+uiFbrW0ErKZxjq8OYLEvmR2d8A6LjoGytiwYiKlOCkD
	khPSYzbQ7aIoe9BSHJtJvC0BKH/99uTyXRBtLidLVZQ7B60EqEvlQAPAXdxwBJG0kWXvfj73aYl
	Sxe/QCZNhZkVAOjM9sV+/Ig6sCNXZBiu/lWsbbzhdY2Wc7Bibc6JXr6FP9IZ6bLAgMK2MT1Vpd5
	aL23Ul6wR5KQG8YGIDUQZ9+yMn0hTtJq7t/0Ejo+7FyuVI88cn8FSVjM2aA=
X-Received: by 2002:a05:622a:1aa0:b0:467:825e:133b with SMTP id d75a77b69052e-46e12ba1478mr227274641cf.13.1737973409381;
        Mon, 27 Jan 2025 02:23:29 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHhhZmUefm+tAZLgJqV2ZW+k6GYLfZ7Ycaf8L6tOGjzPWuZ8gyIBxlMk/OY2hdBHc96AIiM+Q==
X-Received: by 2002:a05:622a:1aa0:b0:467:825e:133b with SMTP id d75a77b69052e-46e12ba1478mr227274371cf.13.1737973408993;
        Mon, 27 Jan 2025 02:23:28 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab675e11a1esm562672266b.33.2025.01.27.02.23.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jan 2025 02:23:28 -0800 (PST)
Message-ID: <3ed5858c-3030-4edc-847d-28ff54ea5aea@oss.qualcomm.com>
Date: Mon, 27 Jan 2025 11:23:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] arm64: dts: qcom: sm8750: Add UFS nodes for SM8750
 SoC
To: Melody Olvera <quic_molvera@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
        Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
        Trilok Soni <quic_tsoni@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, Nitin Rawat <quic_nitirawa@quicinc.com>,
        Manish Pandey <quic_mapa@quicinc.com>
References: <20250113-sm8750_ufs_master-v1-0-b3774120eb8c@quicinc.com>
 <20250113-sm8750_ufs_master-v1-4-b3774120eb8c@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250113-sm8750_ufs_master-v1-4-b3774120eb8c@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: mEs1LjXd7a2bkvEp_I4v_S8oy6U3Rqz2
X-Proofpoint-ORIG-GUID: mEs1LjXd7a2bkvEp_I4v_S8oy6U3Rqz2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-27_04,2025-01-27_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 clxscore=1015
 phishscore=0 lowpriorityscore=0 adultscore=0 spamscore=0 mlxscore=0
 bulkscore=0 priorityscore=1501 mlxlogscore=999 suspectscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501270083

On 13.01.2025 10:46 PM, Melody Olvera wrote:
> From: Nitin Rawat <quic_nitirawa@quicinc.com>
> 
> Add UFS host controller and PHY nodes for SM8750 SoC.
> 
> Co-developed-by: Manish Pandey <quic_mapa@quicinc.com>
> Signed-off-by: Manish Pandey <quic_mapa@quicinc.com>
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---

I don't see anything wrong per se here, just some style nits
atop the other replies:

[...]

> +		ufs_mem_hc: ufs@1d84000 {
> +			compatible = "qcom,sm8750-ufshc", "qcom,ufshc", "jedec,ufs-2.0";

1 compatible per lines, please

> +			reg = <0x0 0x01d84000 0x0 0x3000>;
> +
> +			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
> +
> +			clocks = <&gcc GCC_UFS_PHY_AXI_CLK>,
> +				 <&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
> +				 <&gcc GCC_UFS_PHY_AHB_CLK>,
> +				 <&gcc GCC_UFS_PHY_UNIPRO_CORE_CLK>,
> +				 <&rpmhcc RPMH_LN_BB_CLK3>,
> +				 <&gcc GCC_UFS_PHY_TX_SYMBOL_0_CLK>,
> +				 <&gcc GCC_UFS_PHY_RX_SYMBOL_0_CLK>,
> +				 <&gcc GCC_UFS_PHY_RX_SYMBOL_1_CLK>;
> +			clock-names = "core_clk",
> +				      "bus_aggr_clk",
> +				      "iface_clk",
> +				      "core_clk_unipro",
> +				      "ref_clk",
> +				      "tx_lane0_sync_clk",
> +				      "rx_lane0_sync_clk",
> +				      "rx_lane1_sync_clk";
> +			freq-table-hz = <100000000 403000000>,
> +					<0 0>,
> +					<0 0>,
> +					<100000000 403000000>,
> +					<100000000 403000000>,
> +					<0 0>,
> +					<0 0>,
> +					<0 0>;
> +
> +			resets = <&gcc GCC_UFS_PHY_BCR>;
> +			reset-names = "rst";
> +
> +
> +

stray double \n

Konrad

