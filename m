Return-Path: <devicetree+bounces-203201-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A4ED6B205F6
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 12:44:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2473F7A51BC
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 10:42:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2248723B632;
	Mon, 11 Aug 2025 10:44:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RTjwMIBC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5469324886F
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 10:43:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754909039; cv=none; b=UAb4l3a7eLetUw8N1y9nJtpJwLPiExDUoaOAqCXYpT/k8KHVUZR6RSQ20u5pKMmEyvVhg4CRYAR1Xm/tNuaUt5+ENqHsGxArSaEWbYRNDwKCU9U7P6NhOCWFX+w0yfp2ZwOQm1hIhZKXGbV0ngKkg/7oHeyk2zkAc4TCeGuKNDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754909039; c=relaxed/simple;
	bh=OrQf5TeKik0aA/FhPSEBXH6grpaJsQKJVsOv7xshB1I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cyD9T2VyXan+kneA0QG6ufolovOjtYxfnt+db+6OBLHSn7XVJLVY8h3uFC3i6cp+C20YYu3inRF6oMbjkldfXVDd6k7z9HfS0DWk2FXYlto2iJCSLdvtKfBTVjX4N4lK6vGHVaxKlxR/hziAdhjEVwXLTqb+0dQzrax1uggi/MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RTjwMIBC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57B9d8s4000598
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 10:43:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=HhXbP2+tna5Rc97KVm0kgr+C
	8N/2nVWZsJajTcTfHec=; b=RTjwMIBC52U1VjfbSIfzSN1mAUaM2KKVo+Z2O260
	XTreoGsZB/KYV4rhJT+n6PuSeZr873taoyzUfkfxRGL5rDWwn+dCYR8hTtZEdo8E
	+/Zq/8xHh6h9fs/k+hPLMm0bAvlFDlY9QkTm8UYns32DweQEF4sk+bfIscU4ZTYK
	0ONMH/4N/ljyTD9Gxhu2xbDW7J1gT/ykfBtkK4AdBWCo/xJFMuaAq3D1JMdWMJxB
	P0TT+qrgScff8fw5YObUKhrxgIL+bAt+kCFFP1ZTF0YoKQXj6i1CTk0b3QxX4W4F
	vV5uh0Ifb4TXw2tTiRJQBxwsuqUpvjENWDf7ovJ9/KhoZg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dxq6v0t6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 10:43:57 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b0b507d014so48370701cf.2
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 03:43:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754909036; x=1755513836;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HhXbP2+tna5Rc97KVm0kgr+C8N/2nVWZsJajTcTfHec=;
        b=WZbRYNCVnwvxeRDYBrpADTpkgvvYAlnys3MtG5pQebqgn95C9ewPvHPbCv0+uZIg45
         jSeou1Wjhs2hzq+EoAer5jIxjOP0aLyMeOf+cmGvP4k0FNdU18yzAIlxbSwhBazs226u
         Do15m8gHxmaH0aqfO9bc9cqjme1R9Qnx0JMON0nBLeMfrRnRmQ8vFTjVdmU0xqH5DwWf
         +QR9myCG7/ChQiOUrbcfWRH9PNsARXtWOHNTPJ1RJvBhmHt8nUBmD0XMvG6w2fEYuNov
         nBd7N066Mdzee6A03pp7f3uAr3OyI7OHe8mD7gmGkh+5XaQhXRZ4JNH4TxYaq6rhcUP4
         VuuA==
X-Forwarded-Encrypted: i=1; AJvYcCWdbgnlKahAtbT94/3Aiwp5KLbv5K5UceGaw3rjjKlnAfqP5QlYQ3Dg3Swnr3g0csipnQzk3bnn4FIW@vger.kernel.org
X-Gm-Message-State: AOJu0YwvFSXtI56FtPTx1fsAsqsDeqRAUZJNn/tE/WLvtn3g4ms7lL/Q
	omBOWwqC2a2SfryMa6/WQvd0W4gg4/fsid7cRxp32DVO1xYwfqQHeWZ+IOBPc3XjmbsRFOwnHaj
	CHg4QG6sMvNAIXbyIPcoF5EDgkzAifRF+CrWBGsZ34sjNKonDo7YuWBk8/Vu1OEOu
X-Gm-Gg: ASbGncuqCY3lyz4pobdBjueLVUBwV+Df3G0lkDCi+Q9QBw+UFCM6In3dM+kQ+aIP4R7
	EluAvSIXddk9oM2pVjgLZZVA+bteYU/rPPcEL7tZKl/7JKvufsOeg7C5nUQdU7a4xZMRtQn7tn+
	qJymGJirOD2tssQI2AQE68zmbjXBzQq8C5JD7GflkaXnj9qgKwbahixN663lT+d9Nnk2JKl5J4j
	zkESC1q7jo3JsgdWe3AlK2PkCp3LFe41WA1+/zOSMXkmPjKjYrlbPzjgk1PunLJYTVMNUjPlBO5
	W4Vq8uWleHYO3pAYbjywoNZUcJibOCMDxto0+xbnjXQRxjptn4+TFjbEL2EB4slk+rHdEJSiv7n
	gLEPJNfkYvE8FucrXxkkhROM13lRD0uIkCIthmRhkGOHuSSYALBBr
X-Received: by 2002:ac8:7f94:0:b0:4b0:8087:b85 with SMTP id d75a77b69052e-4b0aed7c82emr155599541cf.57.1754909036486;
        Mon, 11 Aug 2025 03:43:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFQ+2vRNgiTRkhuWDXI9Wct/WD586NSNRCy2C3GvPTxw8ogEqF2gQptR6rB/WMoGGoXT8d+eA==
X-Received: by 2002:ac8:7f94:0:b0:4b0:8087:b85 with SMTP id d75a77b69052e-4b0aed7c82emr155599241cf.57.1754909036028;
        Mon, 11 Aug 2025 03:43:56 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b88cabce5sm4279421e87.151.2025.08.11.03.43.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Aug 2025 03:43:55 -0700 (PDT)
Date: Mon, 11 Aug 2025 13:43:53 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ling Xu <quic_lxu5@quicinc.com>
Cc: cros-qcom-dts-watchers@chromium.org, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_kuiw@quicinc.com,
        ekansh.gupta@oss.qualcomm.com, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/2] arm64: dts: qcom: sc7280: Add memory region for
 audiopd
Message-ID: <ucgmkx5fhwf4tc634gexj4usgzdme7aj44qup5qo4fpolnixm3@dgghylexk36y>
References: <20250701084905.872519-1-quic_lxu5@quicinc.com>
 <20250701084905.872519-2-quic_lxu5@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250701084905.872519-2-quic_lxu5@quicinc.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAyOCBTYWx0ZWRfX9g7MpT7jqZCu
 eF9hwxcxHF40EEX1qvrONxqDfDi/+DSq3yEmwuYw0d06QFESRmugMnlWWWksomnPKNdYsfjRLMu
 XNwYHvs0MemCAM2ruQthr/S1Yi4UVoMzTziYc+4LrmxWILHdUnhG0bxB4NIbBaSv12gOPYBmyY5
 BCu/YfkqQ5p9urB+qz32AxDBVgZjz/2NAFfLDEmavSZUwhHi7IQRozEfpNbjxZcX/pX43vw8/6X
 MpHT30g/rnQG6+Fpo5e7UC4quuBVWNkF5SDP5cfzEghjlWNn9bWWRgxii0wgHT0+pm/wpH2MXnn
 09FVgJEnEgMXXposjM0v+HC4kSh1DS+vWuLqENTFapddsIcozBzdZ+sYpvdng8DEtBh9d3kFXOL
 MrH0boHW
X-Authority-Analysis: v=2.4 cv=QYhmvtbv c=1 sm=1 tr=0 ts=6899c96d cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=2S0CspHO_B4CzmGuarAA:9
 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: sEPWWQlCjgeoohhfyE4-Q-VCGIqf1S_0
X-Proofpoint-ORIG-GUID: sEPWWQlCjgeoohhfyE4-Q-VCGIqf1S_0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-11_01,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 spamscore=0 phishscore=0 bulkscore=0
 malwarescore=0 impostorscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508090028

On Tue, Jul 01, 2025 at 02:19:04PM +0530, Ling Xu wrote:
> Add reserved memory region and VMIDs for audio PD dynamic loading and
> remote heap memory requirements. This is required in use cases such as
> audio compressed offload. For example, playback of compressed formats
> like MP3 need audio PD support.
> 
> Co-developed-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
> Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
> Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index 64a2abd30100..b1def5611764 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -189,6 +189,14 @@ rmtfs_mem: rmtfs@9c900000 {
>  			qcom,client-id = <1>;
>  			qcom,vmid = <QCOM_SCM_VMID_MSS_MSA>;
>  		};
> +
> +		adsp_rpc_remote_heap_mem: adsp-rpc-remote-heap {
> +			compatible = "shared-dma-pool";
> +			size = <0x0 0x800000>;
> +			alignment = <0x0 0x100000>;
> +			alloc-ranges = <0x0 0x80000000 0x0 0x40000000>;
> +			no-map;
> +		};
>  	};
>  
>  	cpus {
> @@ -3907,6 +3915,9 @@ fastrpc {
>  					qcom,glink-channels = "fastrpcglink-apps-dsp";
>  					label = "adsp";
>  					qcom,non-secure-domain;
> +					memory-region = <&adsp_rpc_remote_heap_mem>;
> +					qcom,vmids = <QCOM_SCM_VMID_LPASS>,
> +						     <QCOM_SCM_VMID_ADSP_HEAP>;

We should stop defining VMIDs in the DT and use label to determine them
instead.

>  					#address-cells = <1>;
>  					#size-cells = <0>;
>  
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

