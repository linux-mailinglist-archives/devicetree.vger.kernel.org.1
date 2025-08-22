Return-Path: <devicetree+bounces-207987-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B90B31438
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 11:53:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 292741D2026F
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 09:48:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7070D3009C1;
	Fri, 22 Aug 2025 09:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YvjNoG+q"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D24342F6185
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755855635; cv=none; b=S2O2FkCgpYi586NtsHS0a2P2Fuuu4XJrzvyz07KI2SyOT7rdCDdkIsoiyS9Kyv9IvmTyvI53h8Xq0+dgT1dZckkSI4e53MPRigcJrKo7pda9BAapTBUsNrjh8Nwf5HmVXHTDKm+LIIkVOoiwpL7t0nGVf9VBepO7MCjmWOlz9rA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755855635; c=relaxed/simple;
	bh=jmzwF7hgpK+QeNYSHRElJIUrPbgwq9GsIHmndptgODM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JxMnxEvWaJWsqcgaib7ffUQC1YsLJTkWierYbKPu9o0rSFMMEdfS4U9cJeR7Cg414mCLfrvpdD1ssoiWiD4BarcZZ/wfLGWapJp4KPsUwNwwxna7DhQWz5A5zahCPPFugtGp998opSZmgWs8SZrXFpGB8biksglpF/nnWtf5qxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YvjNoG+q; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57M8UMvw030532
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:40:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=oTdfVcHoKyH8WICZlBEizZHt
	xUjGef7BEKTRRFMZNHU=; b=YvjNoG+qJZnkXcCMccxiMYV92i/bW2UvDcwbxlEx
	CV+neUtgBnJeGViAnSZM3NBQAFxIEYLNBrzIZRoMGSYoRu77FN9sWVdm7qkJhbTo
	4KjSwDFVRssRsbw41F2grklp6e2HXOEV6AiNwepobJTfJ517ZlHRJSzY/PAzdP04
	TN/0oP8LSfFHD36NtUf1eL/NsID4M1NFGoXof5a7XrODQ1yB2fCTNjca5GGZW47v
	ZX/cdHFt/WDeh++OF/N/T1l51TcblEMcbt8ST441fMMoX4/nm2bet40a+xeT9xzI
	wuqoS2Ii4aYvgsH5U3gtLLmKJOaxsalDY0G0NkjuuNNKKQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ngtdpk3y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:40:33 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b2a1344b36so33750301cf.2
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 02:40:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755855632; x=1756460432;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oTdfVcHoKyH8WICZlBEizZHtxUjGef7BEKTRRFMZNHU=;
        b=k+9cECOkYMdpX0Pp8I48bgaXs093Am6rnlICBe7LBRR+yfpUP0oWDGkpbq8/sDLwVE
         J12JRIZ2fQMBkXl2LXRv1m6fwkIlmcPwDuuhZ6M6azJiBn9o3ggaaWnSKoEHuNfILnZT
         05u+sViJ1z9r73WIASOwL6myyXMkSUMIAxj7b6c3IrmEwg+yus+TWRA/SB8yG2hWQYST
         AO4fFXGWAapwSLctRxuJKy6DK9aCMoH/GwP9efGOZOkM6/EleC8n7V4mUeYFNomeYD4z
         5W3h9/nxzTYn5ofyFcJwN5dZwIalBn++xrZtj1T9pxhZpvqZDmVt05MFQB2DegvcceA4
         cE2w==
X-Forwarded-Encrypted: i=1; AJvYcCWHedOPtS6W4wiXQ6Z1zFPCGifnAs8TP+BGYDe4zaOTyehxCxMX8bJHhfsfz/vS+2M65EkL/xgSdq3n@vger.kernel.org
X-Gm-Message-State: AOJu0YwHqbDSqwC1/BeIJ32RW/ZbogR1PMk4c6Kz+CxYXQyKN42gsql5
	kP2qTlBUrxlJtx2wgA+9RGA10QgYiXksxGOohaN785Pet4vgjwYpnZR+zHhLY5Sa9E6OtIzwUHk
	pCtmjiK8AWzP8voVSpsClS7soQS4v/4HbgMadqdey2ab7kRDDaNCW8FXFghU3oh+T
X-Gm-Gg: ASbGncv8XE4SIzFzwcifmrzURw88QdIJULyaRF9bvzwmtTFGpkCyBUVTnaFq/gMMPA5
	2kjnw/3DKvePkaZsMUZGTJjo2JOTat543IsABgiu/Qhqi3+an2gcbajVw/PanQMvjQcp3ZFlymV
	EvWvaxQtPca7/utYQG1ugCOYu5AiLUBKBA1obt1DpiYBMlhR7GOm0apDn9HmozFAr54o/v37D1r
	nnp/jjKsKQWrcqXzh0/nfb4Ap4lagCIHL1yT1XwjCvIa0hKhhF4R0npw1yYi3g/DYLzbtNPSkRO
	4GvulCPp9dGHzMR3HX0YyLiv12EFz/Yp0IBDvG8hF8+Cz3v9tczjFv9wL1Yg9VRBGyWbhd/nsdr
	AHOqXTY+xDduHlPJVkj367OZYncj/MemY+97Xlcerb4xlzAXWNf1F
X-Received: by 2002:a05:622a:11c9:b0:48d:8053:d8ee with SMTP id d75a77b69052e-4b2aaa7d88dmr21808841cf.36.1755855630864;
        Fri, 22 Aug 2025 02:40:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHsVhv7L8dU3Sq9QVmMF8OX+HjQZsePw3qXFbwxDvx5fPbibAtj7OF1KcsW/5psLmLDmYVKTg==
X-Received: by 2002:a05:622a:11c9:b0:48d:8053:d8ee with SMTP id d75a77b69052e-4b2aaa7d88dmr21808571cf.36.1755855630011;
        Fri, 22 Aug 2025 02:40:30 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3340a63da08sm35381751fa.67.2025.08.22.02.40.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 02:40:27 -0700 (PDT)
Date: Fri, 22 Aug 2025 12:40:26 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Aleksandrs Vinarskis <alex.vinarskis@gmail.com>,
        Abel Vesa <abel.vesa@linaro.org>, Xilin Wu <wuxilin123@gmail.com>,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Srinivas Kandagatla <srini@kernel.org>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Johan Hovold <johan@kernel.org>,
        Christopher Obbard <christopher.obbard@linaro.org>,
        Maud Spierings <maud_spierings@hotmail.com>
Subject: Re: [PATCH v2 00/10] arm64: dts: qcom: x1: Add missing pinctrl for
 eDP HPD
Message-ID: <xos3ayzhunyl24wu3nd2vqutvsx5dnffqrrp2xnouw2w43nmsw@mbfmcq75qgpn>
References: <20250822-x1e80100-add-edp-hpd-v2-0-6310176239a6@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250822-x1e80100-add-edp-hpd-v2-0-6310176239a6@linaro.org>
X-Authority-Analysis: v=2.4 cv=LexlKjfi c=1 sm=1 tr=0 ts=68a83b11 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=Cg9rbgvQzwxKNQwbMMcA:9 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: ZpdXU9olstuDNPzxHyKI0WdjjW_-9N_G
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDEzNSBTYWx0ZWRfX/PRRlqbhm0m+
 GWgwDjr+ms8+iUO1q3MOH/JNNvP9lMAlwTX46Q1LlkfQGYRuccEhYzA6yq5HtOa8ehX1cyVP4dh
 wsnhCMKI/lBexCUg16Y1yyCoYjB267fwS3cbUfk+XX46zheuUTNS8d8tyPhsrffRQhbVLbMOgSd
 t0pF8R+c/0WsGMg9X7j5VecgQMLiM37LdwEokQs/003Dq1+LiVvOkWSBOqIRy8H1MnWiC6jllpr
 25Yik+S3FO1NHn5Xx7YR5+yYwz7bwI0vwa5FOGWbDxvYX0CP2QS9Bv6driZzSByFSDrYjWszQ/G
 Ulb0H7waJlXZoJMj2N4cwo8dGRQcL01Wyuo6SYnvzNvfYA/NnMYwhXhSp4eqBwjDQ4mXNnWbJix
 OjMV2LWY57XJYhOWAdRiMgWCE1z+pA==
X-Proofpoint-ORIG-GUID: ZpdXU9olstuDNPzxHyKI0WdjjW_-9N_G
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_03,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 bulkscore=0 adultscore=0 malwarescore=0
 spamscore=0 priorityscore=1501 suspectscore=0 clxscore=1015 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200135

On Fri, Aug 22, 2025 at 11:28:51AM +0200, Stephan Gerhold wrote:
> At the moment, we indirectly rely on the boot firmware to set up the
> pinctrl for the eDP HPD line coming from the internal display. If the boot
> firmware does not configure the display (e.g. because a different display
> is selected for output in the UEFI settings), then the display fails to
> come up and there are several errors in the kernel log:
> 
>  [drm:dpu_encoder_phys_vid_wait_for_commit_done:544] [dpu error]vblank timeout: 80020041
>  [drm:dpu_kms_wait_for_commit_done:524] [dpu error]wait for commit done returned -110
>  [drm:dpu_encoder_frame_done_timeout:2715] [dpu error]enc40 frame done timeout
>  ...
> 
> Fix this by adding the missing pinctrl for gpio119 for all the boards
> supported upstream, using a &edp0_hpd_default template in x1e80100.dtsi.
> 
> I ran into this issue on the X1E CRD while testing some things and had this
> fix in my local tree for a while. Chris made a similar patch for the T14s
> [1], this series fixes up all of the boards upstream.
> 
> [1]: https://lore.kernel.org/linux-arm-msm/20250731-wip-obbardc-qcom-t14s-oled-panel-v6-1-4782074104d1@linaro.org/
> 
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---
> Changes in v2:
> - Define &edp0_hpd_default template in the SoC dtsi and only reference it
>   individually for each board, since it is exactly the same for all the
>   boards upstream anyway (Dmitry)
> - The resulting DTBs are functionally still the same, so pick up tags from
>   previous version.
> - Link to v1: https://lore.kernel.org/r/20250814-x1e80100-add-edp-hpd-v1-0-a52804db53f6@linaro.org
> 

For the series:


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



-- 
With best wishes
Dmitry

