Return-Path: <devicetree+bounces-184915-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F1135AD5AA4
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 17:37:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 292191883027
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 15:31:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0511E1C863B;
	Wed, 11 Jun 2025 15:31:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hxAtWI7U"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E0E51B0421
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 15:31:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749655892; cv=none; b=gft7PsIAixDOJxNVNQ4/8kMSpEfcIpiLRXGOo1DYXl1cbDG/kKwWImINrJlIwcq44l9ji5JllcH1i1IPcMAiGrHiPBgJtT9yhzdguLzJ/f51rm7MSB+M03Z4jEHai2Vs8Y8KMk1Nt0yj27ffC7HXwRMJMM4Sv9PUYbPeCP8CVU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749655892; c=relaxed/simple;
	bh=VZmnhpMNAmXEbbqud23neFBnq7loO8MoNJRWiN7z2uI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=h732Y1dRk1wW5lL5PEwsfpPuPXi6Y3URfdxtOkQRhuW+YnOJgqDO2vvXlrOXF6mx/6dsUg/39pu11r0BFmcNX4Wh8myx+ypcvKZFsKUOHp7O/t6D7BCprDs0Pz7Ym/zIKjVp6A0KO4XQ9x37+VezAecBxsmC+DLnASETaVCqSK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hxAtWI7U; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55B9DFPv010995
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 15:31:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	455gzgu0hHWS67hAKzKZb/nm3WenYkc/X441OZiZOVk=; b=hxAtWI7UUjCGmbMV
	ZivBuX7r1oKK1BmJZQUQovu0xLwD+GkbuX03yAVA1Ts73LM1e/7KUe6Kcqq2MKqm
	z5BfqNh4/mJ8CyyhtFDnuU4gnTBjy9Cnbjd5z9hI6SyHdii6gtqvN+icyd2MaGWN
	xuK2QUVQGC4mHBwWx/Gx0hdUFFVFqR0AQstfpmNm4WV4JW17pg+z7JTUSZWTof+X
	f+KVTgFugyNPC4RmBAnJICVDLK1XIjLuBsum3/a0N2Ks8IYiuFCcRn8lGj2iTZRA
	MGnFIL22jbyCDzCGhKUquxTS+flCpWdjWS8pMgwbx8KAdjU3j3Kp0WJYQjDEGM+J
	KdJPEQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 474ekpw4pw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 15:31:30 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7cfb7ee97c5so3972485a.1
        for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 08:31:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749655889; x=1750260689;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=455gzgu0hHWS67hAKzKZb/nm3WenYkc/X441OZiZOVk=;
        b=FWXOvN1mvykka7QbMXFJ+AO/eoolosaXoZ1noWFWRz88Pd+uViVZ4G4fDPa1Pjj+94
         f6rS2t++Os3BKPxyh/LNtbtaeLOzwzFXr8um+SqRi3c+xzdMzP7+cb894we+8m2d9dtt
         gztyQNpHJ1zzapy/rH195nilSHo4i4C9VHRRlKiNFIA/rNI8Hl6Hx/PDy/Avx9EG3xJz
         WXNcMPwZhCPn56v2aKA/hGaCm+aKLwDXMoJqYCyAH1kDu6Nb/JdlUPSiHR/IcZtwhcM6
         LLMvHEf7sFDWyTiH6wJD2+UeH9ChO1pjUUKrOHSFbXrcI9euPrhHuxVlzAbzo3g3YruA
         ViXQ==
X-Forwarded-Encrypted: i=1; AJvYcCXd6hnByu+JijbkwTJfVBVKdQ6TS4hTUDdcHECbuyf4LJEJZG/m0fD/Dzrxqn/ztJlf/by2Nja4c4GR@vger.kernel.org
X-Gm-Message-State: AOJu0YxYTLD1Bh9Y+GCc1XSMtpAP/VUZTFwJ9SY8xi+qd5VHGIA5unqf
	tj3tFR6jezOtGdmwL4GPA99C+AoH3u9S89l5jJha/0OQ2sH734zGGAAebg8ee9UxeSIlMlN+oLo
	llpntEeC5vEOkRK7kfb4NTh4nzgn0TyYhdeIUPMc4WQQ74LCV0SNBFnpSP43jRo4V
X-Gm-Gg: ASbGnctRZRW/8Py/4i9pylr07OK0JKl1QTLyy2bypn0gG41taWar8p+xEiBvEE3i2P4
	nF4Wdjdg9Rj0cP1Uz5GZKWD7ytltsoWmFs7+6sFnCy3MLxq5Xfd0HMYvHiXZOcqfbe8IzTKl8Ss
	SIxxqUD/TXeU5TIPsRSDULjJyhrefgrk6cMJOVD1ZwT9ZTPDoIbajTHmQIyuaBVs+XcDK3Q7fKE
	K7iGr43n9aDpiUa22DEIKKUG0QK9enVHl/RMwmfi5kBRBC7WXkxis/gnIGOY7Hg+cfkrhyIDrEO
	ROWrD+Ywudq3wbwJ46Ks9lwmleO9o3YFSQnozhQHhOlVOmw51U95fR+Y2OnXldVz3HpVJD26pq8
	zRI0=
X-Received: by 2002:a05:620a:43a8:b0:7c0:cc94:46c4 with SMTP id af79cd13be357-7d3a87d34b9mr218668185a.2.1749655889053;
        Wed, 11 Jun 2025 08:31:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH5SyB2UQ9M+HBsZiuY7IxSNchyuOSdndxJp/raWV9Me50SKe7sJUDsLyWN7TOdPxpU9D5OXw==
X-Received: by 2002:a05:620a:43a8:b0:7c0:cc94:46c4 with SMTP id af79cd13be357-7d3a87d34b9mr218665285a.2.1749655888415;
        Wed, 11 Jun 2025 08:31:28 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ade1db55f6bsm906998066b.51.2025.06.11.08.31.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Jun 2025 08:31:25 -0700 (PDT)
Message-ID: <c24314dd-229f-4e26-befb-1491a5ca4037@oss.qualcomm.com>
Date: Wed, 11 Jun 2025 17:31:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] PCI: qcom: Add equalization settings for 8.0 GT/s
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, jingoohan1@gmail.com, mani@kernel.org,
        lpieralisi@kernel.org, kwilczynski@kernel.org, bhelgaas@google.com,
        johan+linaro@kernel.org, vkoul@kernel.org, kishon@kernel.org,
        dmitry.baryshkov@linaro.org, manivannan.sadhasivam@linaro.org,
        neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
References: <20250611100319.464803-1-quic_ziyuzhan@quicinc.com>
 <20250611100319.464803-2-quic_ziyuzhan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250611100319.464803-2-quic_ziyuzhan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=JcO8rVKV c=1 sm=1 tr=0 ts=6849a152 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=XRhAMW6oQtNP-qC2JosA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjExMDEzMCBTYWx0ZWRfXwONjevVG4m21
 MRbiEsCCswR1OZ8y3TUdFL7MNgrYzoAsy4yVNvV79R41AtS++oAd2xJlwr4E6fAqn+oLRtFSrPg
 95+ag0LyTVfjFgGB5RYu3g7ys8bIY3FTXeNe9uZPQ7tlWw/lCxx2N/yZyGywRwMgSO27KEi6+ej
 oc+ScB7rQPxdervNnizpFbBBMSK6ND9D4bNtnao4XacIswU462gulOmjcdEuv44oVGQxIPelL6e
 kMhy6VNE91F9mIliMy1L/ZihUyIQbxX25cva9uoxiPpURov/9tmXweTEnSZ5zxqnA+OWInNoOfP
 XrnXZxB4nNIvkjfEJfI1Mt3Ecqj2Ckc7Dpsl+vtPH45GNaZLTALCggwQfIWik9sL5v/RzY3+r8n
 LR2nFnY9YMVl2xjY8Irj6wWkyX3E2jbEgeOLzUfPNIUN/GmmWaYuyBxpJ+VJTU+sezExzFgS
X-Proofpoint-GUID: d_ylvISPHWjNSGPov_v2-iSfZEwXyk3c
X-Proofpoint-ORIG-GUID: d_ylvISPHWjNSGPov_v2-iSfZEwXyk3c
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-11_05,2025-06-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999 bulkscore=0 spamscore=0 impostorscore=0 phishscore=0
 priorityscore=1501 mlxscore=0 adultscore=0 clxscore=1015 malwarescore=0
 suspectscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506110130

On 6/11/25 12:03 PM, Ziyue Zhang wrote:
> Adding lane equalization setting for 8.0 GT/s to enhance link stability
> and fix AER correctable errors reported on some platforms (eg. SA8775P).
> 
> 8.0 GT/s and 16.0GT/s require the same equalization setting. This setting
> is programmed into a group of shadow registers, which can be switched to
> configure equalization for different GEN speeds by writing 00b, 01b
> to `RATE_SHADOW_SEL`.
> 
> Hence program equalization registers in a loop using link speed as index,
> so that equalization setting can be programmed for both 8.0 GT/s and
> 16.0 GT/s.
> 
> Co-developed-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---

[...]

> -void qcom_pcie_common_set_16gt_equalization(struct dw_pcie *pci)
> +void qcom_pcie_common_set_equalization(struct dw_pcie *pci)
>  {
>  	u32 reg;
> +	u16 speed, max_speed = PCIE_SPEED_16_0GT;
> +	struct device *dev = pci->dev;
>  
>  	/*
>  	 * GEN3_RELATED_OFF register is repurposed to apply equalization
> @@ -18,33 +20,43 @@ void qcom_pcie_common_set_16gt_equalization(struct dw_pcie *pci)
>  	 * GEN3_EQ_*. The RATE_SHADOW_SEL bit field of GEN3_RELATED_OFF
>  	 * determines the data rate for which these equalization settings are
>  	 * applied.
> +	 *
> +	 * TODO:
> +	 * EQ settings need to be added for 32.0 T/s in future
>  	 */
> -	reg = dw_pcie_readl_dbi(pci, GEN3_RELATED_OFF);
> -	reg &= ~GEN3_RELATED_OFF_GEN3_ZRXDC_NONCOMPL;
> -	reg &= ~GEN3_RELATED_OFF_RATE_SHADOW_SEL_MASK;
> -	reg |= FIELD_PREP(GEN3_RELATED_OFF_RATE_SHADOW_SEL_MASK,
> -			  GEN3_RELATED_OFF_RATE_SHADOW_SEL_16_0GT);
> -	dw_pcie_writel_dbi(pci, GEN3_RELATED_OFF, reg);
> +	if (pcie_link_speed[pci->max_link_speed] < PCIE_SPEED_32_0GT)
> +		max_speed = pcie_link_speed[pci->max_link_speed];
> +	else
> +		dev_warn(dev, "The target supports 32.0 GT/s, but the EQ setting for 32.0 GT/s is not configured.\n");
>  
> -	reg = dw_pcie_readl_dbi(pci, GEN3_EQ_FB_MODE_DIR_CHANGE_OFF);
> -	reg &= ~(GEN3_EQ_FMDC_T_MIN_PHASE23 |
> -		GEN3_EQ_FMDC_N_EVALS |
> -		GEN3_EQ_FMDC_MAX_PRE_CUSROR_DELTA |
> -		GEN3_EQ_FMDC_MAX_POST_CUSROR_DELTA);
> -	reg |= FIELD_PREP(GEN3_EQ_FMDC_T_MIN_PHASE23, 0x1) |
> -		FIELD_PREP(GEN3_EQ_FMDC_N_EVALS, 0xd) |
> -		FIELD_PREP(GEN3_EQ_FMDC_MAX_PRE_CUSROR_DELTA, 0x5) |
> -		FIELD_PREP(GEN3_EQ_FMDC_MAX_POST_CUSROR_DELTA, 0x5);
> -	dw_pcie_writel_dbi(pci, GEN3_EQ_FB_MODE_DIR_CHANGE_OFF, reg);
> +	for (speed = PCIE_SPEED_8_0GT; speed <= max_speed; ++speed) {
> +		reg = dw_pcie_readl_dbi(pci, GEN3_RELATED_OFF);
> +		reg &= ~GEN3_RELATED_OFF_GEN3_ZRXDC_NONCOMPL;
> +		reg &= ~GEN3_RELATED_OFF_RATE_SHADOW_SEL_MASK;
> +		reg |= FIELD_PREP(GEN3_RELATED_OFF_RATE_SHADOW_SEL_MASK,
> +			  speed - PCIE_SPEED_8_0GT);
> +		dw_pcie_writel_dbi(pci, GEN3_RELATED_OFF, reg);
>  
> -	reg = dw_pcie_readl_dbi(pci, GEN3_EQ_CONTROL_OFF);
> -	reg &= ~(GEN3_EQ_CONTROL_OFF_FB_MODE |
> -		GEN3_EQ_CONTROL_OFF_PHASE23_EXIT_MODE |
> -		GEN3_EQ_CONTROL_OFF_FOM_INC_INITIAL_EVAL |
> -		GEN3_EQ_CONTROL_OFF_PSET_REQ_VEC);
> -	dw_pcie_writel_dbi(pci, GEN3_EQ_CONTROL_OFF, reg);
> +		reg = dw_pcie_readl_dbi(pci, GEN3_EQ_FB_MODE_DIR_CHANGE_OFF);
> +		reg &= ~(GEN3_EQ_FMDC_T_MIN_PHASE23 |
> +			GEN3_EQ_FMDC_N_EVALS |
> +			GEN3_EQ_FMDC_MAX_PRE_CUSROR_DELTA |
> +			GEN3_EQ_FMDC_MAX_POST_CUSROR_DELTA);
> +		reg |= FIELD_PREP(GEN3_EQ_FMDC_T_MIN_PHASE23, 0x1) |
> +			FIELD_PREP(GEN3_EQ_FMDC_N_EVALS, 0xd) |
> +			FIELD_PREP(GEN3_EQ_FMDC_MAX_PRE_CUSROR_DELTA, 0x5) |
> +			FIELD_PREP(GEN3_EQ_FMDC_MAX_POST_CUSROR_DELTA, 0x5);
> +		dw_pcie_writel_dbi(pci, GEN3_EQ_FB_MODE_DIR_CHANGE_OFF, reg);
> +
> +		reg = dw_pcie_readl_dbi(pci, GEN3_EQ_CONTROL_OFF);
> +		reg &= ~(GEN3_EQ_CONTROL_OFF_FB_MODE |
> +			GEN3_EQ_CONTROL_OFF_PHASE23_EXIT_MODE |
> +			GEN3_EQ_CONTROL_OFF_FOM_INC_INITIAL_EVAL |
> +			GEN3_EQ_CONTROL_OFF_PSET_REQ_VEC);
> +		dw_pcie_writel_dbi(pci, GEN3_EQ_CONTROL_OFF, reg);
> +	}

this function could receive `speed` as a parameter instead, so that
it's easier to parse

Konrad

