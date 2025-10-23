Return-Path: <devicetree+bounces-230359-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C2FC01AB4
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 16:12:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B15C318864D3
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 14:12:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 887CF322A2E;
	Thu, 23 Oct 2025 14:12:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eS6cCU1Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E12013DDAA
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 14:12:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761228751; cv=none; b=hW/9uRHQbhKHnb+koAqD9lQoEJWHrTjqL95sPJ3tfwccd+G5mxXhqv2bJFmnzq4wutRQmAZmebav02dKmeyR9nUB9ccR5rdHNzEMzsnmX9RDegOR5lHaXA94lOVqFAt0RuubLky1tW0JSaxr8dNqSOpfc6qeHn3oZwAdPrjcZxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761228751; c=relaxed/simple;
	bh=iyqybZyY5bNHA9SGCguGT/BlJQnLxb0v/4db1Mh7q2I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JThcapIg8GUaqe6mLAKaM84OQZN/M+S/yhtC4EQFrl4Fyqou+MNnlTkqpcKu+PEF36at+1YMV1Z5nXHNq3o+48S9bIY4m6Q9MY8u4M3M0GaJkbx5xvDpxDzH7pyaJM2k3Y+OF+4RB+pmdfh8Z8OOuSlQrGAxKjKFeGQcxDxHvoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eS6cCU1Q; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59N7FCvV011761
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 14:12:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=qeoOcO1veesMqEcPVFZpMChT
	izPuVR7yr4me7bFPRXU=; b=eS6cCU1Qe1GY8YuVesatReNHMV+5BoJ/qwZiQHW0
	5WBaqZjCLHGpKUus6Q2sjxRr4eU2kGrcDTHvF31z2MNergVkd8wLS5ZRRuyznprL
	c+qW08oBIrrUMrUTZ9SpAYenc+HcIi/cEOBHxoF0ByC/Vq7jiG8B7yslcVxoI0xC
	a/r8Hx/QLMcQb46j+Oo9IbUSuVO6bn2Zb07We0GsojGZrnN0Tzc4aIwQxP8ZsD4J
	8EPT4Jn+9zA7afzb52lN5FJ3ZqbK1xzRLqud+G955E3LjFGdyFXbQtJu9Af2WsPG
	PZj3Rbr8kMfQ2K+YFiE8zkTbDK0hbBeq5d1YQnUb7oaJCg==
Received: from mail-vk1-f199.google.com (mail-vk1-f199.google.com [209.85.221.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49y524av7g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 14:12:29 +0000 (GMT)
Received: by mail-vk1-f199.google.com with SMTP id 71dfb90a1353d-5579e776f49so1977544e0c.1
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 07:12:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761228748; x=1761833548;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qeoOcO1veesMqEcPVFZpMChTizPuVR7yr4me7bFPRXU=;
        b=p1LqBq2zh3xys71UFzXQYf5+NaXS7KyrV6Jhud9WFxs7XmfHF9VPC8DzLvaN2Vx/AH
         s69SeeaL1zMXF2l/hJimMC5xmsop6xDwqG408YOn1Pc8jz/DapkTr9puSHEZ4r3XJ/ZG
         ifXvy4kDRV8pZOfh/JonUvT2OWTYT9FWhic9Ec+6f5WT/GarBIOUzmMAOD/zgrYu5/bW
         +aAyf4j1uXDl5r9KRIr1+Ef2hKUq7PiKY79/Z+Ll3+NLr8WKQqutTWJaJS40o9leMP9+
         t+Z21whWcB0VQ9HjqoAJYYAKKpmZwGhKZ3XA93qD9GMGSSOZ2QVuLYBS7n1YNSgn6ogb
         HDdw==
X-Forwarded-Encrypted: i=1; AJvYcCUmTff5cgL2YU76L2U6j3dkUz79Ehzy5UfqkQyb20T/WFo9oXxoU0qtTerIRRXZtRCG1ydwl+7MHbm4@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7SshD983jtufzXt3UyLNiSkpKtdSUU2VMmH4GV0hawLyYrrTp
	NH9S0bSLCJmX8Av4qwcyFunS/pZK5c7Jaj/8gAWtxRPTaYyjeuLzFEmsHXpi0T6HxxRQKQz5ARz
	kHuGQSRiBbhkhd8xYpu13PCVnaqgNqbZ0bBmKoj2KyaiKjBqfc1mk2M5ao0c7xSzz
X-Gm-Gg: ASbGncvWJjq8UwTZO6jCdVhsnEBFU70Uk52B2pkizkzIr9OdfMGLApTLY+k6wbZU6rA
	5FmE86SvIPkac/kfPeCTlooo+8METatMS0Rf/gtEEoIBDc6L9LOE2tmgGk150qf2UeN1HshtH/Y
	MR0hIyIcV4lQwZtolDzYe4+y38TiYDBCImnwdoNFj7hdd4sTUNiMQtYmf/z0/240pkyJb69N6pS
	V0XZ37MARYs/S9bFnVo3zkAuLZjocfg199SzEb56h6r+Yb+qWXaudAhsdxwoEQV7WLB1ygO2cp7
	WtVffyrUy3gaNeIzaUsr/Ew+HjC3hF9AULL0O0gr6f5xCsPgktTWEn10lyhc4rQAdnWQN/Utssi
	cmwPLnnCbJUglLTHmEPRbAC+LxAQ/n3o56gD+9+YWUwb4+BIHYHizrX9jUtCGQ0RThBQKbnn4gC
	BYWYe0AEU+zuN7
X-Received: by 2002:a05:6122:4885:b0:557:c743:e14c with SMTP id 71dfb90a1353d-557c743e201mr404442e0c.11.1761228747823;
        Thu, 23 Oct 2025 07:12:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFgbKo41PqVd7TUv2vVkrbVSOh/K8cr27Fv5VDy+4ClPVzLmIu3ASP4QAwm/TtYKYA6F9LwQA==
X-Received: by 2002:a05:6122:4885:b0:557:c743:e14c with SMTP id 71dfb90a1353d-557c743e201mr404318e0c.11.1761228745509;
        Thu, 23 Oct 2025 07:12:25 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-378d680322dsm4791451fa.47.2025.10.23.07.12.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 07:12:24 -0700 (PDT)
Date: Thu, 23 Oct 2025 17:12:22 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_srichara@quicinc.com, quic_varada@quicinc.com,
        kathiravan.thirumoorthy@oss.qualcomm.com
Subject: Re: [PATCH v1] arm64: dts: qcom: ipq5424: add gpio regulator for cpu
 power supply
Message-ID: <3xxdcekqzn6hxc2zoavsge3s53czavpfs2evc3ot37aivw4rib@uee2g2mem3hx>
References: <20251023040224.1485946-1-quic_mmanikan@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251023040224.1485946-1-quic_mmanikan@quicinc.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIyMDE1NSBTYWx0ZWRfX4l09E/LnTbM5
 plyQlzfmBvDXVnbLZJDVKfyBSSYAChiCF4Fm+5zAoxCtDWyrWfQLTwk1mdnPyYWAW4wi0khvZV6
 LOrXvGPyXKq8O98pqn3ujxrujYo5QKxHPf5y5+/yJXMW8DMg6XIND/DOoq8/MDZPu231U9Zo6Pe
 0l/USdCiaZzH4BEOeDpOdW/eUOorzHHfJuHiUdth6iKEz2rGCywMwo+qTk7f8NL/5fPQjteJ4gN
 mlwj1gj9kilwhIBNJwKC/7b6QIqerXLCvQliqxB6+TnS7F9oGhBj2IVAIjTiWnvnteNxCCvSiai
 0a2nnntOmK130h8krPWkGIlDwcUrbAHj0d3XHPuc8e4fYcnLtDP4eHovwW9zICXig2LCvDExuJB
 AvXxMIzMLnifhfaZN0m/eq6dOft1Ow==
X-Authority-Analysis: v=2.4 cv=Uotu9uwB c=1 sm=1 tr=0 ts=68fa37cd cx=c_pps
 a=+D9SDfe9YZWTjADjLiQY5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8
 a=Mip_WMAhk2IpQyCGaMUA:9 a=CjuIK1q_8ugA:10 a=vmgOmaN-Xu0dpDh8OwbV:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: dQ-EgWSM3dbF4xbRzgZdTgiYy3G5Qzyj
X-Proofpoint-ORIG-GUID: dQ-EgWSM3dbF4xbRzgZdTgiYy3G5Qzyj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-23_01,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 priorityscore=1501 clxscore=1015 spamscore=0
 adultscore=0 suspectscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510220155

On Thu, Oct 23, 2025 at 09:32:24AM +0530, Manikanta Mylavarapu wrote:
> Add a GPIO-controlled regulator node for the CPU rail on the
> IPQ5424 RDP466 platform. This regulator supports two voltage
> levels 850mV and 1000mV.
> 
> Update CPU nodes to reference the regulator via the `cpu-supply`
> property, and add the required pinctrl configuration for GPIO17.
> 
> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts | 24 +++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/ipq5424.dtsi       |  4 ++++
>  2 files changed, 28 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts b/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
> index 738618551203..6d14eb2fe821 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
> +++ b/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
> @@ -46,6 +46,23 @@ led-0 {
>  		};
>  	};
>  
> +	vreg_apc: regulator-vreg-apc {
> +		compatible = "regulator-gpio";
> +		regulator-name = "vreg_apc";
> +		regulator-min-microvolt = <850000>;
> +		regulator-max-microvolt = <1000000>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +		regulator-ramp-delay = <250>;
> +
> +		gpios = <&tlmm 17 GPIO_ACTIVE_HIGH>;
> +		gpios-states = <1>;
> +		states = <850000 0>, <1000000 1>;
> +
> +		pinctrl-0 = <&regulator_gpio_default>;
> +		pinctrl-names = "default";

'vreg' > 'usb'

> +	};
> +
>  	vreg_misc_3p3: regulator-usb-3p3 {
>  		compatible = "regulator-fixed";
>  		regulator-min-microvolt = <3300000>;
-- 
With best wishes
Dmitry

