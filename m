Return-Path: <devicetree+bounces-155689-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BA2DEA57C9B
	for <lists+devicetree@lfdr.de>; Sat,  8 Mar 2025 19:06:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 75E737A6E5B
	for <lists+devicetree@lfdr.de>; Sat,  8 Mar 2025 18:05:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 046E11E8337;
	Sat,  8 Mar 2025 18:06:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="T2+J0Nuc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33FAB1B87E2
	for <devicetree@vger.kernel.org>; Sat,  8 Mar 2025 18:06:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741457172; cv=none; b=ODpqKFw+3cG7ZWmN/beR/VMObK9OObD54j1xSc1MM2B7/xD/jICcjvtGyitejlzk5yCgtNhtC59ZL/QKMrg4yw1JiA2mYt55i4MZGsnCs/kDb+l22fq4LzIktbLtryJPVvU+wkJKbDX4x7vhEWKoJr0WbApBT9eDhfgznvT8Yl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741457172; c=relaxed/simple;
	bh=0ccMwBeStGy4Ma7W+jN1i/KRXrV5Or0BGZ7xHh3TqYE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CHz6D3sy7bOV5GQLsix9ffhhCUd681I5aTT7X6trQIWsRotQ7EPMhXxXcx26d1O31UUsemzLeKM40l31KMz8wmLnkl13ptgWUfo7tHs+o+ebYCa0siVMXA7I/miaSm8ar2nWtatmjNiUz+WGbUlb2ecF2QI8eYHmM5PFYuyMh5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=T2+J0Nuc; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 528FOJPH023290
	for <devicetree@vger.kernel.org>; Sat, 8 Mar 2025 18:06:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LK+VWm8KVqF+/ZSN/J31md9ZAvpKwgVVPmIdig4/bew=; b=T2+J0NucwnuITXs/
	hUvBMBivCZF7G7+/gR8KOl2verCrWDMIq4P1BgMlmhcuSqpOKa2lNiXNWRNrBDcJ
	WQwwxAeIotz9H/XTxbVBSfBzxoRX/pdrh/iSkoZKGRD6EYGWVPlczVBfcE6T2SV6
	vx1NasBEgjn7iz/v93EqSbGR9KEgh4af1FGFRsBguIR6g2CHWrppBSAZ81u2PQJU
	gsClnEme3cPErJiAwX57KTSMxzPnNqZ0geVB7XT5gQvUus6WgzPh/c3Rz1dnhv3q
	W+vK75bKQGB3h+DiAxaip/A5Z3oiYxBjX4hTmc/xRVrYuGni/G3Y9g7yxgFhsX1z
	21SZHw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 458f1jrxhj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 08 Mar 2025 18:06:09 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6e908928e9eso2267226d6.2
        for <devicetree@vger.kernel.org>; Sat, 08 Mar 2025 10:06:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741457169; x=1742061969;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LK+VWm8KVqF+/ZSN/J31md9ZAvpKwgVVPmIdig4/bew=;
        b=ZYSnUTdq8qdWrXYFI7S7kUiG0fkE2ZfbAfjiCa6AwelmCMmowl4Nf/RaYdrVB01bSJ
         67hXNKBIIAKUkVrNmumQDycTY4T6GLgIj3R9Byhhwt4/xcuK+noaq08LY+/kdArysdH+
         DB+mHMgvparH/3cslai7t/Q7AyidzJpNvSG1n2kHv41TtfGWi8md7zk8fXuC+I40//Xq
         DGjiJPboonAl7ZRMZODwgZ+fpKoOfczo1wPjUPCMhSDJeSNYQ7EX8MzB25w9og1AI7bZ
         PkCJsDcKUhSUqwqFdbXmkxuWFXSNEeX/p2VkgLvzHF4OZD6lJ5FSv4kfD0kegJlxFQIP
         crFA==
X-Forwarded-Encrypted: i=1; AJvYcCV6H2b2RlniiTxFaBC4/3r1xMJXpNBAgFQFWzz/GR38U703b8TTbU16B0ZZaK4JcJFQy8Y2e/pKEJi+@vger.kernel.org
X-Gm-Message-State: AOJu0Yxj+p9vg6cfCAUo4UabHdnh5Es2Yiq/CXl7YHbyf7pJuFP9FPDq
	o8yX1YQmKUZyRO1Kkj1juvEAbgq7u5VyYY3QE29lKjaLjXbKqTAsLqwrwMY+7UWowl76dqsUn/Y
	1MHjnaiHZpLZ0kmBKSttmsWD23Ug8bNG7ByHenhPJJ/TxFcVjh0WPdgMHV8il
X-Gm-Gg: ASbGnctQdPS9sEvxng0M2pHbLW+2AKdHTmSAmyPuJURiW+/+r2BaigtpHaeeNHcaoC0
	S2v+mQJs2i/t4v3tQ71eAo/YvuEnvg8zCwQ9DWQYVnG84fCL0M5p5KyqK6x+EH9SKASBueQGFMZ
	iVod0N2h/1BRKqm1kP0A+o4ToEeJtj0LX9c6XYT1rnfZG0cZFBJzfhY5fINjiyHaUgBfFvFLovF
	q+ZS9EcoZjB090T9bVXxIOMazOZMgkphDT31pmNEucAwDFr3YnlVRWN9s2wpi3qlvEmqP7hmeFt
	7uOUwmH8c3tUFBP0ipo4cUutv6v/3l2gaDSIGBrro+yWLj5qgbx0z3mCUPGqe2QQpu36zw==
X-Received: by 2002:a05:6214:501b:b0:6e4:4034:5ae8 with SMTP id 6a1803df08f44-6e908cceab1mr19640366d6.5.1741457169106;
        Sat, 08 Mar 2025 10:06:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHMQkvbQh1rjRfG86SAdJJ5ORJCPHMqxLeQ9DLm77nL0J1hbYTt5Bzvldd0S5aoDLn5Aq+8SQ==
X-Received: by 2002:a05:6214:501b:b0:6e4:4034:5ae8 with SMTP id 6a1803df08f44-6e908cceab1mr19640106d6.5.1741457168728;
        Sat, 08 Mar 2025 10:06:08 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac2394fd5b8sm464847666b.79.2025.03.08.10.06.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Mar 2025 10:06:08 -0800 (PST)
Message-ID: <58f46660-a17a-4e20-981a-53cad7320e5a@oss.qualcomm.com>
Date: Sat, 8 Mar 2025 19:06:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 6/9] soc: qcom: geni-se: Add support to load QUP SE
 Firmware via Linux subsystem
To: Viken Dadhaniya <quic_vdadhani@quicinc.com>, andi.shyti@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        gregkh@linuxfoundation.org, jirislaby@kernel.org, broonie@kernel.or,
        andersson@kernel.org, konradybcio@kernel.org, johan+linaro@kernel.org,
        dianders@chromium.org, agross@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-serial@vger.kernel.org, linux-spi@vger.kernel.org
Cc: quic_msavaliy@quicinc.com, quic_anupkulk@quicinc.com
References: <20250303124349.3474185-1-quic_vdadhani@quicinc.com>
 <20250303124349.3474185-7-quic_vdadhani@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250303124349.3474185-7-quic_vdadhani@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=ctthk04i c=1 sm=1 tr=0 ts=67cc8712 cx=c_pps a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=Gn0hrFsMAShasAEqVYMA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: kM0ZEf6fCag4dqbU11saQbz7AnbXFafj
X-Proofpoint-GUID: kM0ZEf6fCag4dqbU11saQbz7AnbXFafj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-08_07,2025-03-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 bulkscore=0
 clxscore=1015 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 phishscore=0 adultscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503080139

On 3.03.2025 1:43 PM, Viken Dadhaniya wrote:
> Load the firmware to QUP SE based on the 'firmware-name' property specified
> in devicetree. Populate Serial engine and base address details in the probe
> function of the protocol driver and pass to firmware load routine.
> 
> Skip the firmware loading if the firmware is already loaded in Serial
> Engine's firmware memory area.
> 
> Co-developed-by: Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>
> Signed-off-by: Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>
> Signed-off-by: Viken Dadhaniya <quic_vdadhani@quicinc.com>
> ---

[...]

> +static bool elf_phdr_valid(const struct elf32_phdr *phdr)
> +{
> +	if (phdr->p_type != PT_LOAD || !phdr->p_memsz)
> +		return false;
> +
> +	if (MI_PBT_PAGE_MODE_VALUE(phdr->p_flags) == MI_PBT_NON_PAGED_SEGMENT &&
> +	    MI_PBT_SEGMENT_TYPE_VALUE(phdr->p_flags) != MI_PBT_HASH_SEGMENT &&
> +	    MI_PBT_ACCESS_TYPE_VALUE(phdr->p_flags) != MI_PBT_NOTUSED_SEGMENT &&
> +	    MI_PBT_ACCESS_TYPE_VALUE(phdr->p_flags) != MI_PBT_SHARED_SEGMENT)
> +		return true;
> +
> +	return false;

return (contents of the if condition)

> +}
> +
> +/**
> + * valid_seg_size() - Validate the segment size.
> + * @pelfseg: Pointer to the ELF header.
> + * @p_filesz: Pointer to the file size.
> + *
> + * Validate the ELF segment size by comparing the file size.
> + *
> + * Return: true if the segment is valid, false if the segment is invalid.
> + */
> +static bool valid_seg_size(struct elf_se_hdr *pelfseg, Elf32_Word p_filesz)
> +{
> +	if (p_filesz >= pelfseg->fw_offset + pelfseg->fw_size_in_items * sizeof(u32) &&
> +	    p_filesz >= pelfseg->cfg_idx_offset + pelfseg->cfg_size_in_items * sizeof(u8) &&
> +	    p_filesz >= pelfseg->cfg_val_offset + pelfseg->cfg_size_in_items * sizeof(u32))
> +		return true;
> +	return false;
> +}

same here

[...]

> +static int geni_configure_xfer_mode(struct qup_se_rsc *rsc)
> +{
> +	/* Configure SE FIFO, DMA or GSI mode. */
> +	switch (rsc->mode) {
> +	case GENI_GPI_DMA:
> +		setbits32(rsc->se->base + QUPV3_SE_GENI_DMA_MODE_EN,
> +			  GENI_DMA_MODE_EN_GENI_DMA_MODE_EN_BMSK);
> +		writel_relaxed(0x0, rsc->se->base + SE_IRQ_EN);
> +		writel_relaxed(SE_GSI_EVENT_EN_BMSK, rsc->se->base + SE_GSI_EVENT_EN);
> +		break;
> +
> +	case GENI_SE_FIFO:
> +		clrbits32(rsc->se->base + QUPV3_SE_GENI_DMA_MODE_EN,
> +			  GENI_DMA_MODE_EN_GENI_DMA_MODE_EN_BMSK);
> +		writel_relaxed(SE_IRQ_EN_RMSK, rsc->se->base + SE_IRQ_EN);
> +		writel_relaxed(0x0, rsc->se->base + SE_GSI_EVENT_EN);
> +		break;
> +
> +	case GENI_SE_DMA:
> +		setbits32(rsc->se->base + QUPV3_SE_GENI_DMA_MODE_EN,
> +			  GENI_DMA_MODE_EN_GENI_DMA_MODE_EN_BMSK);

This write is common across all 3 modes

> +		writel_relaxed(SE_IRQ_EN_RMSK, rsc->se->base + SE_IRQ_EN);
> +		writel_relaxed(0x0, rsc->se->base + SE_GSI_EVENT_EN);

These two writes are common across !GPI_DMA

> +		break;
> +
> +	default:
> +		dev_err(rsc->se->dev, "invalid se mode: %d\n", rsc->mode);
> +		return -EINVAL;

I wouldn't expect this to ever fail..

> +	}
> +	return 0;
> +}
> +
> +/**
> + * geni_enable_interrupts() Enable interrupts.
> + * @rsc: Pointer to a structure representing SE-related resources.
> + *
> + * Enable the required interrupts during the firmware load process.
> + *
> + * Return: None.
> + */
> +static void geni_enable_interrupts(struct qup_se_rsc *rsc)
> +{
> +	u32 reg_value;
> +
> +	/* Enable required interrupts. */
> +	writel_relaxed(M_COMMON_GENI_M_IRQ_EN, rsc->se->base + GENI_M_IRQ_ENABLE);
> +
> +	reg_value = S_CMD_OVERRUN_EN | S_ILLEGAL_CMD_EN |
> +				S_CMD_CANCEL_EN | S_CMD_ABORT_EN |
> +				S_GP_IRQ_0_EN | S_GP_IRQ_1_EN |
> +				S_GP_IRQ_2_EN | S_GP_IRQ_3_EN |
> +				S_RX_FIFO_WR_ERR_EN | S_RX_FIFO_RD_ERR_EN;

The S-es should be aligned, similarly for other additions in this patch

[...]

> +	/* Flash firmware revision register. */
> +	reg_value = (hdr->serial_protocol << FW_REV_PROTOCOL_SHFT) |
> +		    (hdr->fw_version & 0xFF << FW_REV_VERSION_SHFT);

Use FIELD_PREP and GENMASK to denote bitfields

> +	writel_relaxed(reg_value, rsc->se->base + SE_GENI_FW_REVISION);
> +
> +	reg_value = (hdr->serial_protocol << FW_REV_PROTOCOL_SHFT) |
> +		    (hdr->fw_version & 0xFF << FW_REV_VERSION_SHFT);
> +
> +	writel_relaxed(reg_value, rsc->se->base + SE_S_FW_REVISION);
> +}

Konrad

