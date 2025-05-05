Return-Path: <devicetree+bounces-173619-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 949FCAA9145
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 12:35:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6740B7A89F9
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 10:34:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6DAF1FFC54;
	Mon,  5 May 2025 10:35:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="g3PUSukw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30CDB1E3DDE
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 10:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746441324; cv=none; b=DkaxuTtQHP0yQYsgHHPbMVE4fZfok3eDlKWVzexwPdk1OqRyep8Mlf9kZtcUsbJvBxcYqPhuem4lqQ+HIdVSTxXzlPNz+SJPl+3Jkv5iVTVWAwOlWRoOj3ucpfw2hcP8jyaNDBQzGuFHQ7KLX1Sowh+quq6teKtLYjSMMQAm1bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746441324; c=relaxed/simple;
	bh=DaC2vDdqmokz9Jt/U40zeutsPirki/qadpEpK5UZga8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bMelXqCF2L3pcCVEB2SkC+c286AJQhdnGod+x7meDwusZrfsCENfvUvTXwnIUv5OB3T25KiZRYtjBOCbLyj5h1qpz5ZhYj2wrGI8eukurBVOE4obRF3I4qrdbLLatCMrFfswGZNpwBrzi+gIMZhXdqb//TPoAsYjqaJ06CEQUMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=g3PUSukw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 544NkhW1016247
	for <devicetree@vger.kernel.org>; Mon, 5 May 2025 10:35:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mzndjCg+e2OPuoc9rAF/IaDWFAfTk+vHxfMSSvYANmI=; b=g3PUSukwQcumUQ4W
	hpzGmBY1y8ZIOFAs1AI7ul4kpiFVp9AusLV6bWWe06IKm0C948aSuV2Gh82W2dV/
	PyZJOc25/WBfqwSAp0DtZDZV6jm3e/D1pKWFUQKyRediGofam3Vaxzuf0kuJPmnB
	Lz9y1kEmtzmDhpORXn+HFWtXmrAeFf5KrkKcJV9qYbaVYDCwn5SaDdhxjWdQ1QFq
	uEJXKnO2b3I/mOFa57Gcv3dNXzo/5NwkpA4VHCmjGf8dyMdJhvsYGA7i0J/RG1x4
	YXCrkAiYF0aOQdJhNkn+nd34jmD89CrrVwbTdVGvArsBqb1y3B2MSJebe06a0e/5
	GQV7MQ==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46e0xst9mc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 May 2025 10:35:21 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b115383fcecso2500497a12.1
        for <devicetree@vger.kernel.org>; Mon, 05 May 2025 03:35:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746441320; x=1747046120;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mzndjCg+e2OPuoc9rAF/IaDWFAfTk+vHxfMSSvYANmI=;
        b=eFZk1ctE90Z1w3eVvLiI8svGPI19u0HNYfDnuini55daIISddYJSD9zW7vBi8zZS9Q
         XMubWaiceonQ4gKIsGyuC02dPyzS4BymR0uaK6iQ2sEXUa6Fy8+gxewxW8ohhsBeyv4/
         YwDxFeHe17UepsR00cud5IGezvADSBOwikvg4AXbgttt5Ko87HwhdUdTTqihEW97uDYE
         oB13eC6LYLivuRA3Vo3PEDiUwEW9qBLqxoCb+E+zd1w0fJ2kqsnIptZtGsqDJvBX9tOA
         VBFZy5uPMBlFEefdsn+lpipkpsdHtqJXxPWp5zoowMLl2NixmaNfiJCyJ9C/sDKyNz5x
         hj7A==
X-Forwarded-Encrypted: i=1; AJvYcCWQ68DE3RzsrIaO9SsJmavS09lwYfANzucs1hg3wvLL4tbMKoKX2C7N3U2R69zMEK8WRCH0f01KQnbv@vger.kernel.org
X-Gm-Message-State: AOJu0YwY5kf9RdTL2FTBlTT2rj/1Bw0dlw8OAt2AK5skkVllyy6+Ljio
	xtm3UK82aK4oMK7V/FCUPYuT6mxdeT9ugUUF/KiF0AbQ8fCg4793r1CSPOguufwqmMZTEpO1cZ7
	mgWwPjja/FDFkbL+TVYBhPC02jWb+06DXiPfsuhY1K1/pcr2CNIlpTz1WnDkC
X-Gm-Gg: ASbGncsMUC+EFfNVSnxuzMUyf3ioIC64GY8OliEUDXpasKQI3tkj0UbKUkE2DDeVF0i
	7iahzF6c7CCaTFzYwCvW1mYStRBy0ozVfQBqpw77YbEdGLxOCi2LuZ74BCM1PnJMv2h9TEbPaRg
	Mh1waBIynRAn1ohh7a2wHomzxERwLO16rYmn0PHq0ok6vT4oISM8Cdfe1nDRcxyaGNVmWGCqgzG
	taKT/lfKuiE6nLiyszemtEI/RmRz5W5Db5sGYAFh6cTOlwVcVhixCEhR0m2r7xUE3TlkOfSAJdU
	xEabMl5kh0zPm0aNqYtj6yuVCcoaAi5jdcqIyqxRos+TNWm3ENJH
X-Received: by 2002:a05:6a20:7d9b:b0:1f5:6878:1a43 with SMTP id adf61e73a8af0-20cde85d355mr16144499637.14.1746441320567;
        Mon, 05 May 2025 03:35:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHP03PciZv8s1ToFZ5GwS61QgMF+GczmQXsLG40quiJUaX2iw5O5dKsziticwj7Edr0uWka/A==
X-Received: by 2002:a05:6a20:7d9b:b0:1f5:6878:1a43 with SMTP id adf61e73a8af0-20cde85d355mr16144478637.14.1746441320214;
        Mon, 05 May 2025 03:35:20 -0700 (PDT)
Received: from [10.151.37.217] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74058d7a225sm6379719b3a.23.2025.05.05.03.35.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 May 2025 03:35:19 -0700 (PDT)
Message-ID: <15f4021a-821b-4a5d-8873-8eb8f59484e2@oss.qualcomm.com>
Date: Mon, 5 May 2025 16:05:15 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: ipq5424: fix MSI base vector interrupt
 number
Content-Language: en-US
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Sricharan Ramabadhran <quic_srichara@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Vignesh Viswanathan
 <quic_viswanat@quicinc.com>,
        stable@vger.kernel.org
References: <20250505-msi-vector-v1-1-559b0e224b2d@oss.qualcomm.com>
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <20250505-msi-vector-v1-1-559b0e224b2d@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: LsypVRU1QVrvnbv2aoSDQu6J5_eJbKeS
X-Proofpoint-ORIG-GUID: LsypVRU1QVrvnbv2aoSDQu6J5_eJbKeS
X-Authority-Analysis: v=2.4 cv=bdprUPPB c=1 sm=1 tr=0 ts=68189469 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=rSoPyq_vb_VxFnRLzkQA:9 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA1MDEwMCBTYWx0ZWRfX05DGdVeFPsxM
 Q65eTJ/HmamWVKNKSv+4VuwhDq/o6utiG2bH87DEgXVgclbsK2clwQa54cgGhKZHj1S9uWrdBM3
 3CEnlreh0rQVRPUZdbbAQvAgaGkIyFPDW7JX+I4qhsv6FB3b/r7No5V9FHk8sgdxGzM85+lW/dT
 gc7juocrSB7HRhTZCZ0RP08jCKDlFrLuopcKifzDjuRzOnY3Efgl/kI2AyEYhJSl+zn9PkVGi9Q
 zQEklRsWbROvG5/a2QnANH1wSpkOEl+QNqRRLXbPVt2Nee6K1px/NBaZwr3GbEvr9AUbXCIwzOT
 sQMrht23504CnffzBId3PCQWvf8cDnRy5G5roBvPKwoFh0PBTIh8mpS/25rnlyiSvbW+y1OqBN/
 JZD9mCb+ryIzF1WXZbiR3RkI9UGs6mCI750yi4kbT1IKC5V6LCVo9aG/wyDjzzYuICf0J4aW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-05_05,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 suspectscore=0 malwarescore=0
 clxscore=1015 phishscore=0 adultscore=0 spamscore=0 impostorscore=0
 mlxlogscore=733 mlxscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505050100


On 5/5/2025 3:29 PM, Kathiravan Thirumoorthy wrote:
> From: Vignesh Viswanathan <quic_viswanat@quicinc.com>
>
> As per the hardware design, MSI interrupt starts from 704. Fix the same.


Please ignore this patch. There has been some confusion.


>
> Cc: stable@vger.kernel.org
> Fixes: 1a91d2a6021e ("arm64: dts: qcom: add IPQ5424 SoC and rdp466 board support")
> Signed-off-by: Vignesh Viswanathan <quic_viswanat@quicinc.com>
> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
> ---
>   arch/arm64/boot/dts/qcom/ipq5424.dtsi | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/ipq5424.dtsi b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
> index 5d6ed2172b1bb0a57c593f121f387ec917f42419..7a2e5c89b26ad8010f158be6f052b307e8a32fb5 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5424.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
> @@ -371,7 +371,7 @@ intc: interrupt-controller@f200000 {
>   			#redistributor-regions = <1>;
>   			redistributor-stride = <0x0 0x20000>;
>   			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
> -			mbi-ranges = <672 128>;
> +			mbi-ranges = <704 128>;
>   			msi-controller;
>   		};
>   
>
> ---
> base-commit: 407f60a151df3c44397e5afc0111eb9b026c38d3
> change-id: 20250505-msi-vector-f0dcd22233d9
>
> Best regards,

