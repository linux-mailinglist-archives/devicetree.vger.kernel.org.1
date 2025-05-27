Return-Path: <devicetree+bounces-180852-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C086DAC505C
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 15:58:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EB5C71626B5
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 13:57:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7646C27701E;
	Tue, 27 May 2025 13:57:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="a7AujiWH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE8D82749DB
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 13:57:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748354247; cv=none; b=o7WmJmLFAzjvJrIjXpXzLh6Dh8P+bW2e+gsN+QkmDEaErwGu3l21Zr5T28e3p+W8TzyGPKyNq+s+kuB5bld3worrmXIPh8EDy8PISESgqIIshx+0iq2InkUoH01VeogpJ4mzWnsy8ozqmXGcy2gjzdR9qrNWXSUxYB4fXB7Sia4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748354247; c=relaxed/simple;
	bh=Jf0YCPf8g0x+7itY5WOSav/lMYNDlkwoS2veAsYnXII=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IfHEUfjXN6x5F9FEuH1YUUKUrTDD+Mo1QiSg/xbm99vYCDqmx8pnbONNVX2NIPm3CqlP0sIGacLNwUixD6NR5BTwo5DjroKuAZmHLzcjPfV98h9jbhBzOmX8n5/Jdjz7RhZtGMRlnL0BFnjZgVI+xZrLbVWHsB1Gc/ZZv0FdtS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=a7AujiWH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54RA164q003699
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 13:57:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vyW9uKYhLOSUBJHa/KU3PEprBrYxrl5Dljp8vZpViOU=; b=a7AujiWHdvmjqQnv
	cEknsSF/Aq3dRo0wPjl7o6AHVK2Z2UUKs5YzTfI9nyEbtB4CBm3LkKtJobx0yLrd
	DmP4IoifQAT+9t822m+ZTVYsK94Nor4yNM3XIxc3tw/JsycII4/EMoPlPFjeJhJx
	49hGHT9ZdOGLGTVE99O7UNbQmFfTRNQ62EudwCA05J1zDNcvfZSmin2/3U+YxyBc
	DeeX/vLxo0VK/bPxCRzM9SU1wQ609ZM7L0r5WnJReQBG1RJQF4wrsg3Qvgc4/2Rl
	gxydZ4UxjM2NYLY3kBkayoH5QE9KB60PoJcc+dW92sGhaU9u6uopWdi6j+Qoa7P9
	KLKmTw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u3fq77vr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 13:57:23 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c5af539464so108361685a.0
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 06:57:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748354243; x=1748959043;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vyW9uKYhLOSUBJHa/KU3PEprBrYxrl5Dljp8vZpViOU=;
        b=u2Th/Wx76E3YPOSKPlXmILvMXyecMGjwP2IklybcYMouzJjahVL3dCwsSV1crOaM7g
         PNcjYqEzlHAnKvRzKjCJvJ9IIGVcqQxxGbtRX2hG+VTi3QiHZ7g0FfFyLNdC9pxbJBtN
         DOk3sSrY7pAIT3cJOFECdhtdsRe3gDejUa+3e823XI+laoWDyksTizb6dm1SDSoOBU8a
         HK5aa/PcfsMCdq+bUdt2JJZYUl5g6/08Q7w24X/r0fgR3PQ3Iq7MwYatC+rLaV9LnQOV
         D6FpKMoQ+XD5VQoQ9l1f9ljgqxbTKmkYMinn+LRr8B6+AkpzYDgkF/DXTo7BFq1Ie6pm
         my9Q==
X-Forwarded-Encrypted: i=1; AJvYcCVi8iVBX5xMt6OaD6K0JjY6iYFP0xMB7fGMPFkPWqnwi/E3z0FtnE99UPI8zIlIiVZ4DjzqNXBAEtz5@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2EOS+chNJOpwWN9DJk8tKorbEbg1+ml/dCa0T4zmvOMEcx4ao
	rtCKl2TrjkcEWpmQ7xUDReac+ytVzKwpe+ZNDUA2qA9ySE6FJKSOxNHP/5rW67hdr6kY19h3Jc6
	l18UyeQvrAWgp2nMTwNaEGz3CLE+CuV75TTkSjSEKHHywBgI/KbludRIATB+VWGqH
X-Gm-Gg: ASbGncsegn5PBCK+6w8FY9iAiIHouRjtEGRlev/Qum918h+vzSoqYqR5EG2BYe4efk+
	3zH5YYWiocMCt6V4T1aapp/IRmunSsm6jt6mu8eqQL0VyyQ4x/whVX7sfQmiYSUyROlI1lu1REa
	+tvleBtr7s7SmbtL0FOF5ncmEpOVqUfVMwjJVM2xtFAG8gx66C7gyo8QR1j+c8uoM1M2xcPIIxb
	ZtBoo9ruO6s7cl4zucjrzC9eU8RTRSIrBPZeKawrJzWfiXfT/9AeL8OlQcM83EQ/9aVqlyRIUrE
	BVGkMiBkie6Gta1XweDSXq/KTZ9Q6FvpRLr1uSPIcg5nUnI4nRi9EaDTAiC0XGnpXA==
X-Received: by 2002:a05:6214:2025:b0:6e8:fee2:aae2 with SMTP id 6a1803df08f44-6fa9d35e356mr81224616d6.9.1748354242744;
        Tue, 27 May 2025 06:57:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGy8CpXFq9dIDx07jLGkQ8eE6QzLzCZcUSNuxAodp8IkcqCYpVd2hVBDPcVrD9eccP7q+X0qA==
X-Received: by 2002:a05:6214:2025:b0:6e8:fee2:aae2 with SMTP id 6a1803df08f44-6fa9d35e356mr81224466d6.9.1748354242360;
        Tue, 27 May 2025 06:57:22 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d443a0fsm1868061866b.97.2025.05.27.06.57.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 May 2025 06:57:21 -0700 (PDT)
Message-ID: <429b4c99-b312-4015-8678-0371eac86de4@oss.qualcomm.com>
Date: Tue, 27 May 2025 15:57:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 2/3] arm64: dts: qcom: qcs615: add venus node to
 devicetree
To: Renjiang Han <quic_renjiang@quicinc.com>,
        Vikash Garodia <quic_vgarodia@quicinc.com>,
        Dikshita Agarwal <quic_dikshita@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20250527-add-venus-for-qcs615-v7-0-cca26e2768e3@quicinc.com>
 <20250527-add-venus-for-qcs615-v7-2-cca26e2768e3@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250527-add-venus-for-qcs615-v7-2-cca26e2768e3@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 1m-k9fmbam1WRjbYLWX8FpRnPXsf6S_9
X-Proofpoint-ORIG-GUID: 1m-k9fmbam1WRjbYLWX8FpRnPXsf6S_9
X-Authority-Analysis: v=2.4 cv=X8FSKHTe c=1 sm=1 tr=0 ts=6835c4c3 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=pe7rIdR15tyH1Ib53uMA:9
 a=6SDWfad8ZZyXS8WB:21 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDExNCBTYWx0ZWRfX+g/oVqYIaAa/
 7sT3QN0PShpFAd5Sd0jK0DQMcqe5S/GAAdsCZdaFtxaOqi5ZRMPlJEgOy1f8sq1ejqcRZ24JlpZ
 v4OC9bweQnmx/j7QM99A0p9TXxVbLbKlzIO4IzVaKsQYWc1nQQl6BJkIaM2gmlBJplKmK9Sj4H1
 Pn0p8FOvGDYf9otYCifKaMhy8GLec2rfEfZuE1VATNDNGYJM/sDPUKuLKfnau7/fPsC/DE8IdNx
 7bmTeQ6SuWbH/XVWZ2RtPxRchLAnPkoXV1XahL7id24sbwSfm7pKVaNMCWwhu76XfSvCxYlsOxf
 H2G2xM3AaiAkVeHBkBXepWeUzpPqjTuoYRITuf9TIA34sRlE4a1jc2iSSkLyBDWBxPZAxXSTnHx
 1xRpAXojkwt92TCCA7pKUREElajLoIcd+HHeKyE/HdxtF7wBeQHiR08MjHj0L1DAw9DWFcVV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_07,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 phishscore=0 bulkscore=0 mlxlogscore=999
 mlxscore=0 clxscore=1015 priorityscore=1501 spamscore=0 adultscore=0
 malwarescore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505270114

On 5/27/25 5:32 AM, Renjiang Han wrote:
> Add the venus node to the devicetree for the qcs615 platform to enable
> video functionality. The qcs615 platform currently lacks video
> functionality due to the absence of the venus node. Fallback to sc7180 due
> to the same video core.
> 
> Signed-off-by: Renjiang Han <quic_renjiang@quicinc.com>
> ---

[...]

> +			interconnects = <&mmss_noc MASTER_VIDEO_P0 QCOM_ICC_TAG_ALWAYS
> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> +					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
> +					 &config_noc SLAVE_VENUS_CFG QCOM_ICC_TAG_ALWAYS>;

QCOM_ICC_TAG_ACTIVE_ONLY on the second path

> +			interconnect-names = "video-mem",
> +					     "cpu-cfg";
> +
> +			iommus = <&apps_smmu 0xe40 0x20>;

fwiw docs mention 0xe60 0x20 (which result in the exact same resulting sid)

> +
> +			memory-region = <&pil_video_mem>;
> +
> +			status = "disabled";
> +
> +			venus_opp_table: opp-table {
> +				compatible = "operating-points-v2";
> +
> +				opp-133330000 {
> +					opp-hz = /bits/ 64 <133330000>;
> +					required-opps = <&rpmhpd_opp_low_svs>;
> +				};
> +
> +				opp-240000000 {
> +					opp-hz = /bits/ 64 <240000000>;
> +					required-opps = <&rpmhpd_opp_svs>;
> +				};
> +
> +				opp-300000000 {
> +					opp-hz = /bits/ 64 <300000000>;
> +					required-opps = <&rpmhpd_opp_svs_l1>;
> +				};
> +
> +				opp-380000000 {
> +					opp-hz = /bits/ 64 <380000000>;
> +					required-opps = <&rpmhpd_opp_nom>;
> +				};
> +
> +				opp-410000000 {
> +					opp-hz = /bits/ 64 <410000000>;
> +					required-opps = <&rpmhpd_opp_turbo>;

nom_l1

> +				};
> +
> +				opp-460000000 {
> +					opp-hz = /bits/ 64 <460000000>;
> +					required-opps = <&rpmhpd_opp_turbo_l1>;

turbo

Konrad

