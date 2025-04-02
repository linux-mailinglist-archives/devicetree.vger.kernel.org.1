Return-Path: <devicetree+bounces-162620-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 92CD5A7911F
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 16:24:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C4E3D3B3804
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 14:20:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F2D623A99E;
	Wed,  2 Apr 2025 14:20:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="N4HCYmCT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BB3223875A
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 14:20:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743603621; cv=none; b=CdblJ9qBPrFAnMQoLdi0mt0NQVI7LZl6pIl/ZL4VhJXIQ3jgEx/x9ThZZYe7kJGQw/eVXsHxa4TZGMj51TfUPuvmExN9O/AEAncF6V+MRQmx29Q4hvI1Kcp4MqHu4Gq2w45hf0pt7SDlxUE0elqmAqUuorPYxYTT1P07xnOgreU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743603621; c=relaxed/simple;
	bh=O+/YDL04sI1f9othV9v0cw+sBvegWdeZrHPSrCANuhg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YC/5J7E4YBsvaNAcbVf3nN3gRa3YPE9sfSDZEgqz0XGcxsar3hft4Zw8B74PrQwIWSlaD7WuxhZBnLXjbHyv5B/Ce7z9vdUwSxrd9GIcA8p1vskKWEw+9J2Go9Tn9VZww03a0koSpBTmd7lImG43XQtK+vW3NXUmDanjhaEMFEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=N4HCYmCT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 532D2SM2023729
	for <devicetree@vger.kernel.org>; Wed, 2 Apr 2025 14:20:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=/qGYZtqBb+ruyRdMIRuJ6QLg
	js6pRr9EKhlvDKdDaCw=; b=N4HCYmCTzEH7OlvuG8sUK6WDJhozdZWYoFjCYMVs
	dQ0EMPWeDOEDuRqcq812b/Y8Bw6SZkzMvEj8S/NR6vb0SF4rfBOowe6HdcO6TlCT
	kL7ynyKQ0tFwSgEt4db6uTgHw9zQ23ybQi7IzI6M4QdDWij2htH3AQx1hNNWE887
	j2kv2avbgUubiG1HJVrrGybmtC2Vr3YWn+HVi4HfTyg4ETJxi3ydpRY8imwdc+Ka
	6HcP4WKpsrQLWfJOvkkEShXguDzhvEXpyqSc8qii3Txs0LXgWo46ihyl6QcglGr4
	d2nywqYNNA1TDkn+uaOUGwsuVYPLeIJozIxC9deyZPm+yg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45rxapsk3v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 14:20:19 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c09f73873fso1034831085a.1
        for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 07:20:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743603618; x=1744208418;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/qGYZtqBb+ruyRdMIRuJ6QLgjs6pRr9EKhlvDKdDaCw=;
        b=Awyo/cVt2eRIx32e9GzbgNfZpdwmszs+6Jo4B3z7hjVd9kp+rZNyyhY4a+EAXmd2P+
         cNAqfiZZIHU5m2lVs2dLkICk9Bq4NLk14TgMls8lj2YC+OQJNUlvR+vsTyxTUraMcrrK
         oax57AFrXq9ig6M+PHU6w3L6AuSlOsYRkTGmg0e9psItQLJb+tjxltkkcRhKmd7IU0J8
         BvjB0vkxU3gezwJJqncc4pZGZ5b3nrq8m3OU8xnv1Cup374jWyYlqlHIoDqkwheHQslT
         bPATBQrbsY5Ki3MXRljAvV0CynzcuyKIHzlJ7rx5x5WFVwD11vjfKGVYVWwFVL1miwJ9
         4A1w==
X-Forwarded-Encrypted: i=1; AJvYcCW+VH1aIuY2f1gjSC9vA2Sird0g5lYmii36K085sUfIMn7uNbku9VDVNzj7dK5xi6FwWN8n6ddDn2wj@vger.kernel.org
X-Gm-Message-State: AOJu0YxnwGjLmeYfKi8AY2SxbRCqEv2gNMg/n4OG7KxkD39cr7Nqyd6e
	/lGYaSek7IvnuOlGybCC2diVlJht+6Xkm206VG1cyuPkY9SjX+OM+EoY2veFMz/Dy5X+KEkT9dm
	G8KYeM0bMpx9NcWeHe8vssJLLoKrW982861jMj/vC1DHMTpC+16RKPzsjHTHV
X-Gm-Gg: ASbGncui48DYuLG2UyqlFl9PD7n52lvIWMtJAE+o8+gqIY++0EbrwNaYQ8cbBaKwJjb
	5+X389U6g6/fDbe6DVQV48Ec+GdaOnMIsikysnO1kJ1XCcrNxm8u+ZKxlw+26BnklZjkSHDQU/c
	po52FItaWrMzQJtZuo4cL/iIXgTsvo/M4JsE+1uv/N1QDDwQ1VCHugKMUUDKXomoYEYc7gFr2FV
	P0yPhpCr3aExY/FMc3e4ZaMwjHPMAjlXUWYbhz6h79fRdRAEHk7H8XmUmCFdLNzR5RL0HXKVnq1
	C8JjWqMf/stVtPtsx6grAU3dzshJzxZMwQ72fozf+XkZO28NWOGUN6egP6SA0Jrv7wfv+lrDHDq
	ksGM=
X-Received: by 2002:a05:620a:2706:b0:7c5:3c0a:ab7e with SMTP id af79cd13be357-7c75ba71001mr1092849985a.5.1743603617829;
        Wed, 02 Apr 2025 07:20:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEN/o86mpNr71v5/E92elkySR66M2OBZPRdbDiD45m3sJoaAQs1MMCF0xJOCLz5KtgNWdAhew==
X-Received: by 2002:a05:620a:2706:b0:7c5:3c0a:ab7e with SMTP id af79cd13be357-7c75ba71001mr1092845985a.5.1743603617437;
        Wed, 02 Apr 2025 07:20:17 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54b10956250sm1328678e87.69.2025.04.02.07.20.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Apr 2025 07:20:15 -0700 (PDT)
Date: Wed, 2 Apr 2025 17:20:13 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_varada@quicinc.com, quic_srichara@quicinc.com
Subject: Re: [PATCH v6 2/2] arm64: dts: qcom: ipq5424: Enable PCIe PHYs and
 controllers
Message-ID: <ezodm6qh63fs43xx6cw3smspfqkwqb5qscwfee36k5vtktguc4@tlqhuvjg2bly>
References: <20250402102723.219960-1-quic_mmanikan@quicinc.com>
 <20250402102723.219960-3-quic_mmanikan@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250402102723.219960-3-quic_mmanikan@quicinc.com>
X-Authority-Analysis: v=2.4 cv=Vbj3PEp9 c=1 sm=1 tr=0 ts=67ed47a3 cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=hiaWuzcqqAfEAn4-ncMA:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: 5SSLiFLRAdwTFfNcJlq-2ZBSx_6EO8mv
X-Proofpoint-GUID: 5SSLiFLRAdwTFfNcJlq-2ZBSx_6EO8mv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-02_06,2025-04-02_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 adultscore=0
 suspectscore=0 clxscore=1015 mlxscore=0 phishscore=0 bulkscore=0
 priorityscore=1501 spamscore=0 lowpriorityscore=0 mlxlogscore=900
 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504020090

On Wed, Apr 02, 2025 at 03:57:23PM +0530, Manikanta Mylavarapu wrote:
> Enable the PCIe controller and PHY nodes corresponding to RDP466.
> 
> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> ---
> Changes in V6:
> 	- No change.
> 
>  arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts | 41 ++++++++++++++++++++-
>  1 file changed, 40 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts b/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
> index 0fd0ebe0251d..1f89530cb035 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
> +++ b/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
> @@ -82,6 +82,32 @@ &dwc_1 {
>  	dr_mode = "host";
>  };
>  
> +&pcie2 {
> +	pinctrl-0 = <&pcie2_default_state>;
> +	pinctrl-names = "default";
> +
> +	perst-gpios = <&tlmm 31 GPIO_ACTIVE_LOW>;


No wake-gpios? Please document it in the commit message.

> +
> +	status = "okay";
> +};
> +
> +&pcie2_phy {
> +	status = "okay";
> +};
> +
> +&pcie3 {
> +	pinctrl-0 = <&pcie3_default_state>;
> +	pinctrl-names = "default";
> +
> +	perst-gpios = <&tlmm 34 GPIO_ACTIVE_LOW>;
> +
> +	status = "okay";
> +};
> +
> +&pcie3_phy {
> +	status = "okay";
> +};
> +
>  &qusb_phy_0 {
>  	vdd-supply = <&vreg_misc_0p925>;
>  	vdda-pll-supply = <&vreg_misc_1p8>;
> @@ -197,6 +223,20 @@ data-pins {
>  			bias-pull-up;
>  		};
>  	};
> +
> +	pcie2_default_state: pcie2-default-state {
> +		pins = "gpio31";
> +		function = "gpio";
> +		drive-strength = <8>;
> +		bias-pull-up;
> +	};
> +
> +	pcie3_default_state: pcie3-default-state {
> +		pins = "gpio34";
> +		function = "gpio";
> +		drive-strength = <8>;
> +		bias-pull-up;
> +	};
>  };
>  
>  &uart1 {
> @@ -216,4 +256,3 @@ &usb3 {
>  &xo_board {
>  	clock-frequency = <24000000>;
>  };
> -
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

