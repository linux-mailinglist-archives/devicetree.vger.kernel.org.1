Return-Path: <devicetree+bounces-169831-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA36A9857F
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 11:29:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EB6A83BCC80
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 09:29:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6121025CC58;
	Wed, 23 Apr 2025 09:29:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="P5ImFb+i"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B78125C804
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 09:29:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745400584; cv=none; b=eIjre5W25Lm/Lph8pDQnkCV5xfMD7u9RJr19LQk6ZiRb8t6tYCOhbmBDpeOVVU0sAqdP+/flDu2zpeU13m6QnfEpWuHO4q0/IAyZNp5FbBtnxhtT5hyc7DT/3Bc3mImbV6WK9iB2K2PA15fFicf8GzDsFQOwS2VHAOEhQn6OCLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745400584; c=relaxed/simple;
	bh=HfajR4jkoRL29+tIXfodAl7lyAx8wExv/1di+VXnfEE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BUbfJQsWoJYaMUo6b/q8UEE5wfcoSMFFQLUgD2wNmDQnIOJnXR/sF/9EzuhSO8eAjZuw0guOmHswG5JLq8Fvvj/iw0gkuFmOV43g/vWuES2SxrlSRBVvVh3gEKfqMcVrYTcb9/sDABTLd71i5R8kjnS+wb7ValJsuXM1TpwcoQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=P5ImFb+i; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53N0i82D011273
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 09:29:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3IJOhUo/VX2ZSjPsc4BMKNKU4usWbdjsJil7nFv3fuY=; b=P5ImFb+ijMrucFZ7
	ss1wDWWID4k5kR0pY70Sbi8UGl5gbfuHzxXi/melTqMfG3BhAVQv2ZsJkBIV5abU
	G/ASu+u48zFOw9FepRVrgnqavImvzwdhJgm4Tt9K620kLn1/vJdDKbzRd1IAl0f2
	MQZyGd1ifaCBMr60CdTgLkPbNcRMLkmdRRiOZ2UShQWX7PBrcVbRW91X6CXlsCe7
	RB9lImilI5LUwiFnioomyb+MKadqhur2sZ2nHnmHPjFm653CGrf0/D/M//mv5ZQs
	Z1lNxnZdznp11k5f1KWODFAGbCve/G4mi2f7rEKS3FZOQt9PddQRfDvCVparG868
	NicZ/g==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh1hmsu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 09:29:41 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4766654b0c3so11938141cf.0
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 02:29:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745400580; x=1746005380;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3IJOhUo/VX2ZSjPsc4BMKNKU4usWbdjsJil7nFv3fuY=;
        b=OoePKoLqXp4W0yciq7nGk/R/JCcqhi2z1mU0lB2aN2YiGCneixcfOamtBwwgzV21bh
         f3JaoJtAcUlmv7E7HP2NUD/YOFbSZZg8Jbf0NgcOkxf5zPJZQHyyDLLckbvRbOnuX/72
         hjPh6G63qqMqurjSdIzDG4Wr9rEwbWb0fTc4HhsJsDtLzeTpAMUwyvmhZSRJg1z/Uv1Z
         0FqcrRx0rNeuBwUNqm4suiWcI/lSYu/T87K7mr3tgvDO44PjowINInpLCXqZEtjaPtEY
         tOHopgesLOq1fsDo6h23BKQrU7p0h46u2l+zF+uD+FSgICqyrYrdTEl35F0pPqU+DV22
         EYGg==
X-Forwarded-Encrypted: i=1; AJvYcCVLJ67nukqcHv7Q7p+HeKMEbJN/BRnSNRYGfuAOYzfq83nyE2PaTACxh2dYwQe5+0fD80xh9ST7gX5j@vger.kernel.org
X-Gm-Message-State: AOJu0YyIiGckZaGcH7n1IKgDW8gfZdO0hWqqNCsHh9w0ZSWMRG497qoh
	7MamZkcdAmPv4lA3sS9lKQQtIIFeVTkU3KCyTpDin9mw4UFQ5Mr8iziNfW0/crnlDMjKsZpymGt
	1tzfx61ip/C82Pzjwca/X4JbVGkrdMU7giMm4uE/UdHp9GolDkoll7spOnePM
X-Gm-Gg: ASbGncsxNCh8KZShDqeWlJtsUZWgrZEMIhcEqc5TKKf1LTbcsouVFNrmoX7qyCvDIsB
	pp5hog5jDfaoVt72H6AqxvomjRk+zVjALbMm8EBTiDYagaPm4kZK57hKYDojeQhqIqXb+JvKnNA
	U81Bx3nRffYUDnYHbPJAfhlIGJujy3QwRlAh+MaQCJgfvBke+R68F8cBk94E+heZsvZklhGqHZ9
	ajkNLEsVx7/ptL93XZf/XSdgSd0P4zZbTDoQ0OPP1zYYEtRGTniDzfyDN/J+S80yke0UHkBFK/r
	glwb71Z4k1Yxg83w5Hmcg/6GH8vRH3Ad7PswMLZGUafw9S3b7X1xYaioJco6/nLrxgI=
X-Received: by 2002:a05:622a:251:b0:47b:3a2:1fc6 with SMTP id d75a77b69052e-47d1b89d080mr14403041cf.3.1745400580370;
        Wed, 23 Apr 2025 02:29:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEdny5fOZQ/qOaIGMfGM2UJEzXsu/AVomAsa8SRTqZeN1JSrDmSVwu15sKN8rjBrgJBsxL5+g==
X-Received: by 2002:a05:622a:251:b0:47b:3a2:1fc6 with SMTP id d75a77b69052e-47d1b89d080mr14402971cf.3.1745400579936;
        Wed, 23 Apr 2025 02:29:39 -0700 (PDT)
Received: from [192.168.65.183] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb6ec0b30dsm789693766b.18.2025.04.23.02.29.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Apr 2025 02:29:39 -0700 (PDT)
Message-ID: <c8e36d23-3325-4ad8-91da-94f9f31c3c15@oss.qualcomm.com>
Date: Wed, 23 Apr 2025 11:29:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/6] arm64: dts: qcom: qcs615: Add mproc node for SEMP2P
To: Lijuan Gao <quic_lijuang@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: kernel@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Kyle Deng <quic_chunkaid@quicinc.com>
References: <20250423-add_qcs615_remoteproc_support-v1-0-a94fe8799f14@quicinc.com>
 <20250423-add_qcs615_remoteproc_support-v1-3-a94fe8799f14@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250423-add_qcs615_remoteproc_support-v1-3-a94fe8799f14@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: vYGAwoXuwF8y72J6wY10VFiEwOyU9aCc
X-Proofpoint-ORIG-GUID: vYGAwoXuwF8y72J6wY10VFiEwOyU9aCc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDIzMDA2NCBTYWx0ZWRfX54vbTf9Exsst 2/3viUZevEPOuRSrDletdten1N2WHkoZapaWNUygt8hCOWMq+1uRf5bdWqyxPKCyru3vADFr6/4 1GwQWDko0eFHCCsGikiqmpon7Ih2rRIg17MjtM27mUHZCLw7vdkHFhXVhVpCQ8zEdzlrSwfgQz7
 UIpwVCnEpQSgyfkGQUb2YKP0XKZ8Fz/GmGLZR/mKrL7vn0SQNU4LPYIKhe3ElEWM9Fpgcqiwxdw P86z0gRsuousyjkLYKny/XL/z5duoqcjWO0oGEJZ18ic643DFNxGY7uvteuXua1ii4FOl9Kifm5 FilXFnClYU1XKpeXuGMDJBbj06lBIhd/C/s6qyQDxjH8wxELIPlfNWKVztobnzzNdyBivpLZr0W
 qlBQ31g20sopOVO3O/gMOhFTh3WcvSyv4/zOc/7tsES85UgtB0WiXo60ZrXS+2cOTav6rPRV
X-Authority-Analysis: v=2.4 cv=ZpjtK87G c=1 sm=1 tr=0 ts=6808b305 cx=c_pps a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=IXTFuLhWsd_PX2s7ergA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-23_06,2025-04-22_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 malwarescore=0
 lowpriorityscore=0 priorityscore=1501 phishscore=0 clxscore=1015
 bulkscore=0 suspectscore=0 mlxlogscore=904 spamscore=0 impostorscore=0
 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504230064

On 4/23/25 11:17 AM, Lijuan Gao wrote:
> From: Kyle Deng <quic_chunkaid@quicinc.com>
> 
> The Shared Memory Point to Point (SMP2P) protocol facilitates
> communication of a single 32-bit value between two processors.
> Add these two nodes for remoteproc enablement on QCS615 SoC.
> 
> Signed-off-by: Kyle Deng <quic_chunkaid@quicinc.com>
> Signed-off-by: Lijuan Gao <quic_lijuang@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615.dtsi | 79 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 79 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> index edfb796d8dd3..ab3c6ba5842b 100644
> --- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> @@ -332,6 +332,80 @@ mc_virt: interconnect-2 {
>  		qcom,bcm-voters = <&apps_bcm_voter>;
>  	};
>  
> +	qcom,smp2p-adsp {

Remove the qcom prefix

> +		compatible = "qcom,smp2p";
> +		qcom,smem = <443>, <429>;
> +		interrupts = <GIC_SPI 172 IRQ_TYPE_EDGE_RISING>;
> +		mboxes = <&apss_shared 26>;
> +		qcom,ipc = <&apcs 0 26>;
> +		qcom,local-pid = <0>;
> +		qcom,remote-pid = <2>;
> +
> +		adsp_smp2p_out: master-kernel {
> +			qcom,entry-name = "master-kernel";
> +			#qcom,smem-state-cells = <1>;
> +		};
> +
> +		adsp_smp2p_in: slave-kernel {
> +			qcom,entry-name = "slave-kernel";
> +			interrupt-controller;
> +			#interrupt-cells = <2>;
> +		};
> +
> +		sleepstate_smp2p_out: sleepstate-out {
> +			qcom,entry-name = "sleepstate";
> +			#qcom,smem-state-cells = <1>;
> +		};
> +
> +		sleepstate_smp2p_in: qcom,sleepstate-in {
> +			qcom,entry-name = "sleepstate_see";
> +			interrupt-controller;
> +			#interrupt-cells = <2>;
> +		};
> +		smp2p_rdbg2_out: qcom,smp2p-rdbg2-out {
> +			qcom,entry-name = "rdbg";
> +			#qcom,smem-state-cells = <1>;
> +		};
> +
> +		smp2p_rdbg2_in: qcom,smp2p-rdbg2-in {
> +			qcom,entry-name = "rdbg";
> +			interrupt-controller;
> +			#interrupt-cells = <2>;
> +		};
> +	};
> +
> +	qcom,smp2p-cdsp {
> +		compatible = "qcom,smp2p";
> +		qcom,smem = <94>, <432>;
> +		interrupts = <GIC_SPI 576 IRQ_TYPE_EDGE_RISING>;
> +		mboxes = <&apss_shared 6>;
> +		qcom,ipc = <&apcs 0 6>;
> +		qcom,local-pid = <0>;
> +		qcom,remote-pid = <5>;
> +
> +		cdsp_smp2p_out: master-kernel {
> +			qcom,entry-name = "master-kernel";
> +			#qcom,smem-state-cells = <1>;
> +		};
> +
> +		cdsp_smp2p_in: slave-kernel {
> +			qcom,entry-name = "slave-kernel";
> +			interrupt-controller;
> +			#interrupt-cells = <2>;
> +		};
> +
> +		smp2p_rdbg5_out: qcom,smp2p-rdbg5-out {
> +			qcom,entry-name = "rdbg";
> +			#qcom,smem-state-cells = <1>;
> +		};
> +
> +		smp2p_rdbg5_in: qcom,smp2p-rdbg5-in {
> +			qcom,entry-name = "rdbg";
> +			interrupt-controller;
> +			#interrupt-cells = <2>;
> +		};
> +	};
> +
>  	qup_opp_table: opp-table-qup {
>  		compatible = "operating-points-v2";
>  		opp-shared;
> @@ -3337,6 +3411,11 @@ apss_shared: mailbox@17c00000 {
>  			#mbox-cells = <1>;
>  		};
>  
> +		apcs: syscon@17c0000c {
> +			compatible = "syscon";

There is already a description for this block above what you added

qcom,ipc under smp2p is mutually exclusive with `mboxes`, so adding
the above isn't necessary at all

Konrad

