Return-Path: <devicetree+bounces-179820-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F25F9AC1CA8
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 07:52:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DCAC1A406EB
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 05:51:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32AFB2248BE;
	Fri, 23 May 2025 05:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jW0B5fjS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFF8A22126D
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 05:51:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747979513; cv=none; b=e7SqQA0rcqe4/ov02z8M5LMI0I6DN4zB0MV/FsCckarev73sOBzavNUUESIybinUB/sWlZ/PMe8urQ9RMHlyKNrLV9HWjFOZxoCLPESGV7a03MOWfp7lx2Lg5v3tU0L2qY1OWoYRTszALkZX6htntdbobRyZjVL9q11ZDjZawTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747979513; c=relaxed/simple;
	bh=+Vr6IE5YP6gSNF0sYVXBQDOOTdCJAwKBdrwjzpIKREk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=L8urrf3jypavI8JnD7sbUirmLrBnG4pY36inItMjTlo+c1hWxP6brz5+6FlpY3CV5u2wXfPEtr02nctHjRtp6IT0WflzvSdFNioZf9rINJO9kVvpln567zRXGU9AtIpJosAW1NC+TPkj+r8t3e73CZSagJHdot9x397rjVY9pYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jW0B5fjS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54MIQF6j012749
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 05:51:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=QXrNGmCmt2zhECBpwtfjdX/H
	WyQDRPapxMVv9gaUZfM=; b=jW0B5fjSeWzuzpVhQfTMEJLldza0fotTojG+Sb+O
	lxtSBi50yJOCtd1O/xHB0GqFcBKvjgZZNYFKRFgu2QWSy7NwdzqgFoMy4JrXP/mo
	p/U0swFqGPIDvL7p6KbFT8pCEbUc3FzmmQVCmUs8EDD6c7qCGtqoV+3VD5SQHwJF
	vsn2z8+gHnQa0n0U4gjR48SoLNoFWd5HdHnWzhZWq5Lbmafns9i6dsLigfvpFxUd
	Z85ffhpy4Z8vbER5omrEEUTfA4ASVVHJIU59js1cQK0MXJJo/cVYbE3yiWusaZG7
	otKao2r0n+LJosEdZB8N/5El1J4P+BU+EaNtYIMYPHH3UA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwf9gk2m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 05:51:49 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6f8d0c8e917so51045356d6.3
        for <devicetree@vger.kernel.org>; Thu, 22 May 2025 22:51:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747979508; x=1748584308;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QXrNGmCmt2zhECBpwtfjdX/HWyQDRPapxMVv9gaUZfM=;
        b=Y4EzyYQJa1cPnayzQtWP/9Mf+OARDdf9xoFQuvOlw7/20tlfkeV84YQwBwugFYISxJ
         Nw3oj3OexKUYmuKv7nH2asYo14H0UF/5J1At7QMp6z3T/bzz0npBbxEBSqoVFoUgfhwu
         EJvKaz908G1rTfwXbmW+Te1+bzfwc7tsjix8NM+OM9px/YRaihIkUNQzMfW+fvVoTy3v
         994iTbIBnvft62YLW0jF69Tpu1gXlvWmasxodrI3srpdaSEJr03f7l0MY6UIlaHt2Gxd
         Ct30s6y+OrDa0WJLuD6KpgSwXTONUOaBjU0GInvUZQmX7fS7/vK0/DHUmXc0rQtwVNCZ
         6kZg==
X-Forwarded-Encrypted: i=1; AJvYcCUrWfRxXR8n85ov8toisGKr9xCHSQ3j12SUGtRcER0XtfOULn7BtIF3n1L5oyhOeaCMnrP0fVfnTAu/@vger.kernel.org
X-Gm-Message-State: AOJu0YzSxjOAYCfGK+C5tpC+6s2z7/Ofs1hgWhXkvXKdfkr09tSLAaNb
	rlTtrvn41hwzG8YddpWus0McnDD6K/j+Ww/uPZ07kDNwXNIPKs41y0f8qZnd7pPiFy01lq8vcxq
	I4ZiK8EppL0qnbtINXnSg72NDtjAz7x3uRM8ZsUsEoRkwlKrh40k/Sni3PFMx52fw
X-Gm-Gg: ASbGncs1wWKG7ZL4diNr6Exbgodz4rgYijjsRz332M6dn7qkuKEvc8p+iYYOd84gNfQ
	OpOjs5tiDK2PXvDV4iN9QK/3sN3sqQzRGmS4nNQoZTmqgQGyl+Z1Fgxi7Pr3oBL9nrQACxTZjnA
	NOhcXXq8bv6Hjbr6Sz4vdZnKCp3XYVy5nnPUYuBfDx3IfJ09JOGF3Gchb0UK6LHuiH2YqAt4K0c
	Zv8EtfGKxhP89TC+UpuKnRVVtsqEaLNBAd2MSMhraK8gKoqmYPuUqmKceHEUAmEPwaIvOY1KzaW
	oAbjV5fwQrsEgekq+RgUe13O4VVU+zfWQTW7N/4YAGFTjqew9oqUFyAbm91LpzA4Rl7rwmw+kvg
	=
X-Received: by 2002:a05:6214:21ea:b0:6d8:9d81:2107 with SMTP id 6a1803df08f44-6fa93a3cf76mr26275976d6.20.1747979508621;
        Thu, 22 May 2025 22:51:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFezhd1t/DrxIQ4E+HtvXS9OGyRKywlZu8VfL24fR/uLLWgaowbUpflzX+MwS4KemgCK5nrPg==
X-Received: by 2002:a05:6214:21ea:b0:6d8:9d81:2107 with SMTP id 6a1803df08f44-6fa93a3cf76mr26275736d6.20.1747979508218;
        Thu, 22 May 2025 22:51:48 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-551fdf900dfsm1724630e87.60.2025.05.22.22.51.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 May 2025 22:51:47 -0700 (PDT)
Date: Fri, 23 May 2025 08:51:45 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 00/10] Grab IPA IMEM slice through DT, part 2
Message-ID: <j23rf3rjfv6rh73ce22ka6g5e4tujeeg25fmobvetpxo4kth7p@rvi3krl5hvwh>
References: <20250523-topic-ipa_mem_dts-v1-0-f7aa94fac1ab@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250523-topic-ipa_mem_dts-v1-0-f7aa94fac1ab@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: LoGPuEV2_VCkf9nmBwV1OkNx9w5qn9vr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIzMDA1MCBTYWx0ZWRfX5Ts2T1mCWloU
 0Vx0nyhBvVjJvZhb9yHQI23d8Uf9AEg64l+CLCFRFHoofFr9ggoX/NaghyERVJJkI1Ucpg1Ada/
 4xL4gOXINFueVRmNitBcMu0sbGQBc1SITyvhkcbh/OyuUFHwh6xbjfyNSeVTwYAtw9ke+ReXsfX
 IZZ/o2jsHM3M9vTb44OgMW2DfIFKuPmRN3ZOB4DTMcLlSF5mA1gofGWvhkM7p37iL+IGz2OJE3S
 wq4trqRxEtUmP5LHWITXKEHMps/zho9hZsWcO5j9MgPwMP2X7S8DIAqUAg7yBlorrnoXOB/jIeC
 UB+x8ltyXmixoIOKCyb0KW5e+t3JMsEyztY7yK0BdgGb366rpzFQBy/2y7vaCBFActO0lpp7qN2
 vfdycYsXJz0kCEff2EFfoNXHUMPZqMfYkkLYkDg1mwER13aylGiNv3EfWWM5O3q2S0ak8EOs
X-Authority-Analysis: v=2.4 cv=GawXnRXL c=1 sm=1 tr=0 ts=68300cf5 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=VhJxsdNJsIdQkEDcdXYA:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: LoGPuEV2_VCkf9nmBwV1OkNx9w5qn9vr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-23_02,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 mlxlogscore=845 lowpriorityscore=0 impostorscore=0
 priorityscore=1501 clxscore=1015 malwarescore=0 phishscore=0 bulkscore=0
 spamscore=0 suspectscore=0 adultscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505230050

On Fri, May 23, 2025 at 01:18:15AM +0200, Konrad Dybcio wrote:
> The IPA IMEM slice addresses/sizes are hardcoded in the driver. That's
> mucho no bueno, especially since the same versions of IPA are used
> across a number of vastly different platforms, which invalidates that
> approach completely.
> 
> This series wires up the IMEM slices in DT on almost all platforms
> (need some more time for SDX55/65) and fills in the necessary bindings
> holes.
> 
> Tested on SC7280 only, FWIW.
> 
> Patches 1-3 are good to go instantly, the rest must wait for the
> bindings changes that were submitted in the series marked as a
> dependency.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
> Konrad Dybcio (10):
>       dt-bindings: sram: qcom,imem: Add a number of missing compatibles
>       arm64: dts: qcom: sdm845: Expand IMEM region

You've expanded IMEM region for SDM845, but you didn't add IPA slice. Is
that expected?

>       arm64: dts: qcom: sc7180: Expand IMEM region
>       arm64: dts: qcom: sc7180: Explicitly describe the IPA IMEM slice
>       arm64: dts: qcom: sc7280: Explicitly describe the IPA IMEM slice
>       arm64: dts: qcom: sdm845: Explicitly describe the IPA IMEM slice
>       arm64: dts: qcom: sm6350: Explicitly describe the IPA IMEM slice
>       arm64: dts: qcom: sm8350: Explicitly describe the IPA IMEM slice
>       arm64: dts: qcom: sm8550: Explicitly describe the IPA IMEM slice
>       arm64: dts: qcom: sm8650: Explicitly describe the IPA IMEM slice
> 
>  Documentation/devicetree/bindings/sram/qcom,imem.yaml | 13 +++++++++++++
>  arch/arm64/boot/dts/qcom/sc7180.dtsi                  | 16 +++++++++++-----
>  arch/arm64/boot/dts/qcom/sc7280.dtsi                  |  6 ++++++
>  arch/arm64/boot/dts/qcom/sdm845.dtsi                  | 16 +++++++++++-----
>  arch/arm64/boot/dts/qcom/sm6350.dtsi                  | 16 ++++++++++++++++
>  arch/arm64/boot/dts/qcom/sm8350.dtsi                  | 16 ++++++++++++++++
>  arch/arm64/boot/dts/qcom/sm8550.dtsi                  | 16 ++++++++++++++++
>  arch/arm64/boot/dts/qcom/sm8650.dtsi                  | 16 ++++++++++++++++
>  8 files changed, 105 insertions(+), 10 deletions(-)
> ---
> base-commit: 6add743d2854d744c3037235b87c1c9d164fd132
> change-id: 20250523-topic-ipa_mem_dts-58f5d73a1f21
> prerequisite-message-id: <20250523-topic-ipa_imem-v1-0-b5d536291c7f@oss.qualcomm.com>
> prerequisite-patch-id: f6aa0c354d434ec11dd88b93528c05cb3a45bb07
> prerequisite-patch-id: 89f72ef0c3d3f29753b0cb9e290a4036ba380cc1
> prerequisite-patch-id: 330c94ac7c2b42dd86c5f763b133f0d2598fda40
> 
> Best regards,
> -- 
> Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 

-- 
With best wishes
Dmitry

