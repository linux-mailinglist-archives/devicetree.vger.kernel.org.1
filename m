Return-Path: <devicetree+bounces-245439-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8875FCB0F6C
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 20:52:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 298DF30C38BF
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 19:52:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 004EB307AD8;
	Tue,  9 Dec 2025 19:52:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Z2as6eIj";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VVaPBslz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 687D73074AB
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 19:52:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765309947; cv=none; b=c5gPH9vB0R8vu68aKW7FQeeeM6KwGFIFQkUUtUT5cMN1di9/JAmL3UjZn83fWlfqyrBPOf/pwm7A8U1eeg3qPMGTaRVC+82IVGGMbdzlxLSz2/CTf1gvaozIMkU/xY9LSpmbvF1uSy7yc943d/Bhd9JJCuxaDKkKeewwbx7e5Pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765309947; c=relaxed/simple;
	bh=8gDtjH8CAXjFERT4oqE6LxOPprXGZHnDQXf80+5pkCY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kOcmLLz9VMoNDVLlHwlbszupnGoLYhjFFW+g4G0NJdqP2DPdC8oHKHQTISAcwdldJhxRd5VfFW2OicrhYqzGhmsQyQ2llax4BuWIteADTKSfvKd5AlCp0Gkp2WNcJmD7nm0wNzKpTJW2W2CvaLELlywTo8C6Qvk6YK/8OVqIJHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Z2as6eIj; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VVaPBslz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B9GiYr04093904
	for <devicetree@vger.kernel.org>; Tue, 9 Dec 2025 19:52:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=am8yGl2Cdr3Q4f3mL2nUDyaP
	OEzmYIVC9+T1mbbHHcQ=; b=Z2as6eIjPNGMLYgDpx31RhvWf8lZ6y6oXbnQuvCi
	tbCLYLy7RGx1Row/C6Pf0Vr3z9wAfYwDDLz4u6wJ/SYlw0HcLxzvJzhnDBSn3V3K
	2ylSI4Zp3+LEpVU2awoyCYRqvOSGuoiqnPpghUyepJTwgQ+tpiKdYtSfvZwZazy+
	YTfsNU2Rjabl07NriR1KCuVzj5DhEW9m4UDxyVsaQfpu9EvogK8Ifyv5C8YlyQw2
	OJxhW8hYq8blYLU1PIafMGD2Cv1kz1LwB6apK0skBDSRaAruPNDRRgBQr/NdgBYU
	qPwsJ8bbOtMOBQ+DgDKNQ0v7kbC0XUpuTyMElZDi6vZOmw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4axjk51qyu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 19:52:25 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ed6e701d26so128655911cf.1
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 11:52:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765309944; x=1765914744; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=am8yGl2Cdr3Q4f3mL2nUDyaPOEzmYIVC9+T1mbbHHcQ=;
        b=VVaPBslzRe6JVOC29Yfn4YWI+kM+SpxRLjWEwA4RG2sQpLI70FvhRSNiICCkafxdhG
         9iPe9bNolOQ7hmYpf+KcZfSgpI+eJGDs9Ab5+6iKioyvMPiOVu7Mu2p2jAKV71P7ScPF
         MINqJDwRsl5eqeYJMWajmS52MFrHrscfs6+shYfq3p2GWHvC99sgOIdL9JsY0OB6+xpX
         TYTuR5NLNr6k8Dsg0VypKLOFBCb2aGcq62o7qpt9FLqYpVapj6VMdB+QnsB3rcufNb/e
         Exz3zHmxmQqvPUoyyXMTuGAkzRrmW30o4dIPLuG4bT9nkYrhLKE/wafYxMlrvPwGPbUu
         +kpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765309944; x=1765914744;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=am8yGl2Cdr3Q4f3mL2nUDyaPOEzmYIVC9+T1mbbHHcQ=;
        b=tUQFVjr06Ef2pPPvHsA4iT2XTg/cWr5xDfzy+hC15mPNl2lmyTW1+e5Kd8DkQgCwWV
         othuKILbwmXQb1fO+bFiPcycAF/kPjblnElYeEu6hUYdytET7D+4Bmdp+0DtgeloU8E2
         qDu4Z3AE5lG/Zt8ip7bdZpbmniGVtHVILEarOjjjZ7dHsbsXaQBpR8pf88GxWfqD4HGY
         baRStCR+alf/r2lDX/nfiviPnDljxAZAUcblI8SC5Xk1OHqx9nPC0UEcs3Q7/9no1Og4
         by0nt52JeF4LuZ0RPecZekiXZhPFKwji83b29o8x1ZmSSEp1pnjYyDYmeWm3OgfgKUB4
         ilKA==
X-Forwarded-Encrypted: i=1; AJvYcCWiCvNH4fiEiXVF3B2FiQp2UI999246lbkDjv35z6p6l2idlfUH7DkDd+UYu0daI9dbRO+nqfzsthOL@vger.kernel.org
X-Gm-Message-State: AOJu0Yw96zD9++Xn3FsV0KBVzP4XMQTvi5qWNjVsoBAj9E22nC4FOSR8
	szEVXtFj4TWEtK4O0CTi1reBJbK14IXef43VLIqG5+dCUwE070pH40yDqjNijHz7+V6DtPsTIW9
	8pqjxxGfu0YQ3xKnqmQaS08gIBU6R2bFaLq/PgRCBQtQdyS5t6Rx8kesAD+OXFwbs
X-Gm-Gg: ASbGnctEN7yjBdjkii72p2s+X1rif+g0Jl8LgBVgwTYacB/pSKvijGc1EPwD+bDqhNm
	rGY+8qnPRsmd1kIYajS1SWyYypW28oE6z03P7yHVFMAt9UqHD9z7Ywy1b/9zPib5v5Fcs4v2GPT
	KGOwz8Nc7c1TCfIHPp5mouE85aCYR5lNttEJDQ8SFWpvAlaWNXOauBqFdd6CFmVRwE81iAcjClA
	gYkCSleyeRuYiTyAN84O1KizBmtWtq2jylUU1q8gLNjbKufhElcagL5eTVE/7Q5GSGY/hbzRP9i
	ayULvingKE5/j22GInmyaSzBRdb84NYDfMTF9NZBAS2AaNJMkkvpu3lXelSn+PHk4D5ghvNYFck
	/KDJYDmb4WYdGu3eAJfp67vhm/Vh7s9UTw+51+hpbwMm3q2NGJkfLi+FSvH0VIXdpafCJCLjSFC
	Okl7qNZ9Wva6hZ31jsgSLI/Rk=
X-Received: by 2002:ac8:7f8f:0:b0:4ee:42e5:f5ae with SMTP id d75a77b69052e-4f03fdfe609mr177180111cf.25.1765309944285;
        Tue, 09 Dec 2025 11:52:24 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHtLwoELzFNN5fXJFR4PgH324tdBP86AvmtFkrKxvIX9gnUYNAoeIhzFFU9OjFOmYDS8wOrTA==
X-Received: by 2002:ac8:7f8f:0:b0:4ee:42e5:f5ae with SMTP id d75a77b69052e-4f03fdfe609mr177179971cf.25.1765309943789;
        Tue, 09 Dec 2025 11:52:23 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-597d7b247f3sm5578951e87.39.2025.12.09.11.52.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 11:52:23 -0800 (PST)
Date: Tue, 9 Dec 2025 21:52:21 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: george.moussalem@outlook.com
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manikanta Mylavarapu <quic_mmanikan@quicinc.com>,
        Jassi Brar <jassisinghbrar@gmail.com>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>
Subject: Re: [PATCH v6 1/8] firmware: qcom_scm: ipq5332: add support to pass
 metadata size
Message-ID: <zjimpbzncmjfcaoiepbkwcg3v3soka3mhudee447h5hseuiyci@kfexqup2aly2>
References: <20251208-ipq5018-wifi-v6-0-d0ce2facaa5f@outlook.com>
 <20251208-ipq5018-wifi-v6-1-d0ce2facaa5f@outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251208-ipq5018-wifi-v6-1-d0ce2facaa5f@outlook.com>
X-Proofpoint-ORIG-GUID: E8hvFaFifkJ5sduB5rZvpIZ49qJZS8a-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA5MDE1MSBTYWx0ZWRfX8Klmgp7U5IRT
 mqBdz5EVPmzYAAY6RW8mfreJYr3hSETVZS6FAvZtgh7rNdBvdYVbNk01XSoIDpEzfE9W0uSBEX0
 DloID0h0MTopi2yZClseswcJCod35JVs0myPA7jXFkz1MRzVCSSVfr2mul1t+R/1SeqYBY1AH2+
 MQr/QTmkLVz5OOMZQU9XAR04KZEi+S0PpkgWFJD8qQW+RQKQtr+EJw+OhnXYkWFRXIZeSTO3YQx
 +J/LJvY/d2mHwHgZNLL+mo9FYsf2YWzvNgXuqqaKYoa59Ky9b6ETOq0YaHY834AcKu4YtRctbUW
 A9rnDuxe74LD91ftqzV7WH3vIoXs7FoXCsv/Lvlg4hPXiqNiIUy3nXLC6w1sUFA+vMt5vaN5hyk
 wuD41vtxocPWgiy7WgSYUbZRwa4sOQ==
X-Proofpoint-GUID: E8hvFaFifkJ5sduB5rZvpIZ49qJZS8a-
X-Authority-Analysis: v=2.4 cv=RqvI7SmK c=1 sm=1 tr=0 ts=69387df9 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=M7v-gDGZAg3xi0XEQhcA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_04,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 priorityscore=1501 malwarescore=0 suspectscore=0
 bulkscore=0 lowpriorityscore=0 phishscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512090151

On Mon, Dec 08, 2025 at 04:25:33PM +0400, George Moussalem via B4 Relay wrote:
> From: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> 
> IPQ5332 security software running under trustzone requires metadata size.
> With new command support added in TrustZone that includes a size parameter,
> pass metadata size as well.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> Signed-off-by: Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>
> ---
>  drivers/firmware/qcom/qcom_scm.c | 17 +++++++++++++----
>  drivers/firmware/qcom/qcom_scm.h |  1 +
>  2 files changed, 14 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
> index 1a6f85e463e06a12814614cea20719c90a371b69..c970157f75b51027fb73664a58c38550344ab963 100644
> --- a/drivers/firmware/qcom/qcom_scm.c
> +++ b/drivers/firmware/qcom/qcom_scm.c
> @@ -583,9 +583,6 @@ int qcom_scm_pas_init_image(u32 peripheral, const void *metadata, size_t size,
>  	int ret;
>  	struct qcom_scm_desc desc = {
>  		.svc = QCOM_SCM_SVC_PIL,
> -		.cmd = QCOM_SCM_PIL_PAS_INIT_IMAGE,
> -		.arginfo = QCOM_SCM_ARGS(2, QCOM_SCM_VAL, QCOM_SCM_RW),
> -		.args[0] = peripheral,
>  		.owner = ARM_SMCCC_OWNER_SIP,
>  	};
>  	struct qcom_scm_res res;
> @@ -617,7 +614,19 @@ int qcom_scm_pas_init_image(u32 peripheral, const void *metadata, size_t size,
>  	if (ret)
>  		goto disable_clk;
>  
> -	desc.args[1] = mdata_phys;
> +	if (__qcom_scm_is_call_available(__scm->dev, QCOM_SCM_SVC_PIL,
> +					 QCOM_SCM_PIL_PAS_INIT_IMAGE_V2)) {
> +		desc.cmd = QCOM_SCM_PIL_PAS_INIT_IMAGE_V2;
> +		desc.arginfo = QCOM_SCM_ARGS(3, QCOM_SCM_VAL, QCOM_SCM_RW, QCOM_SCM_VAL);
> +		desc.args[0] = peripheral;
> +		desc.args[1] = mdata_phys;
> +		desc.args[2] = size;
> +	} else {
> +		desc.cmd = QCOM_SCM_PIL_PAS_INIT_IMAGE;
> +		desc.arginfo = QCOM_SCM_ARGS(2, QCOM_SCM_VAL, QCOM_SCM_RW);
> +		desc.args[0] = peripheral;
> +		desc.args[1] = mdata_phys;
> +	}
>  
>  	ret = qcom_scm_call(__scm->dev, &desc, &res);
>  	qcom_scm_bw_disable();
> diff --git a/drivers/firmware/qcom/qcom_scm.h b/drivers/firmware/qcom/qcom_scm.h
> index a56c8212cc0c41021e5a067d52b7d5dcc49107ea..b8e5b4f2498e75c9eca1a0c0032254b7126b9ed3 100644
> --- a/drivers/firmware/qcom/qcom_scm.h
> +++ b/drivers/firmware/qcom/qcom_scm.h
> @@ -100,6 +100,7 @@ int qcom_scm_shm_bridge_enable(struct device *scm_dev);
>  
>  #define QCOM_SCM_SVC_PIL		0x02
>  #define QCOM_SCM_PIL_PAS_INIT_IMAGE	0x01
> +#define QCOM_SCM_PIL_PAS_INIT_IMAGE_V2	0x1a

Please keep these defines sorted (QCOM_SCM_PIL_PAS_INIT_IMAGE_V2 should
come after QCOM_SCM_PIL_PAS_MSS_RESET).

>  #define QCOM_SCM_PIL_PAS_MEM_SETUP	0x02
>  #define QCOM_SCM_PIL_PAS_AUTH_AND_RESET	0x05
>  #define QCOM_SCM_PIL_PAS_SHUTDOWN	0x06
> 
> -- 
> 2.52.0
> 
> 

-- 
With best wishes
Dmitry

