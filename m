Return-Path: <devicetree+bounces-248939-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 02806CD6F98
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 20:31:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8759B3003B28
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 19:31:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF4FD2773CC;
	Mon, 22 Dec 2025 19:31:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Z7ylSXSS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Bq5ICfs5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D60F72617
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 19:31:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766431910; cv=none; b=mreVo1s5/KYwcFBcc7NhXdETpSwkmgHSTARrWIog+fFiVEr8tFrVIh5gRA2FJEWZfVzAdgDT/rrquZ+zGl2XXfImerF+WGrgicw31rPbpgdqR+rML5sNLqhrSY1yL+oV5lklGFFIrNjZHe9SN1n3NjiHtrG/j0us4QD4EeeVLEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766431910; c=relaxed/simple;
	bh=ZcOCwAP0cU2ux7T66LNlypGV7T9vpGK2OpOTMXC0dZ4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cNl3gVwpAYT5JfXGdOA8YrTeun5LYF3Qv9ApCupiV2sE40td9bSbAB63ILk1lWxnd9iyQHuoO82AcdALsXjhNhKFyCAQk1mphcIivplV6vj18LKBNT7c4j23bhlMjYaQ3Ff8c9tCZtCMmFwbw14NlkMCzOz5bxFpjspoVju1I0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Z7ylSXSS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Bq5ICfs5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BMEBwoM1389033
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 19:31:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SJ+pAzVRMqG2IBJCq7u/WvJnhCJhRGrzOkSorq4J8bg=; b=Z7ylSXSS7oAlylC2
	t88LZuUXeY0up87/VkO+ZAcbbz1laonoiMNiGalqDQgBf6ZArcqeCvvfVIEkV9Km
	w4nLpPc0SgfNMOl9j+QIS1NGzswRQA+UU1u1JSOWB8kNe8zKwW1zrG6a9uj+bhRV
	y94I7WYFeM8KmkREuDrRlXcf3E6GzeBzr0IcTJMOxYedEOtc9mm4IchdJHAvZREm
	iS1xo3OqupzdQHA1mHNw9hE5U1iNcUSks5NvOpeapy3MYD6mj88G3UGUIPn0IA79
	9bciundPs2sdTZET1LiMVMtSnH0CVCLvXIMJyESJ58McC/KaKrUSRPzQFuc7PCaD
	m+T8dA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b6vk6ju5w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 19:31:48 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7b4933bc4aeso4295539b3a.2
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 11:31:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766431908; x=1767036708; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SJ+pAzVRMqG2IBJCq7u/WvJnhCJhRGrzOkSorq4J8bg=;
        b=Bq5ICfs5TABcLWvtp/JD6OZ+YsDfhyRS6/hCQvRWzNLSModPACTuDMD9KR+dal7ssG
         brz6evW9JtJXjHd+OtLmeecpS5jTxlD+Lu/f4wVFU+0EVzdJ33poRdPT78fcn6+9Nh/S
         9/VO/Xe9daaQQqDxkwMce8UFWRt0MLASwe8lawMPtipySd0SpQXhyddMI0jAy7fmy5Yf
         VT2POrBmsbx3fRBZKc0IZ0VTZ4f8X9OL+izPl/YwMxVods9xXSyy4hsTuQBFZiNgM1jJ
         /qd+yRmkTprmCXfQcVOsvq2so7oYOk6ZoB9hAK8gaLS71Vl6+Z3m58WGm4brrfzyTxrS
         UaqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766431908; x=1767036708;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SJ+pAzVRMqG2IBJCq7u/WvJnhCJhRGrzOkSorq4J8bg=;
        b=svmuNzN0X6n2hQ6zPOGaGD6n+EhjMXWgY1t5+bm5Vz8d4JCWjTAg+UD2fTEmUKBpga
         F5E/6FzD4bAqxOoTSfQ5THRgi2Q1M+bR2n/bF3XdiX2inyTBSmqM/Uk6fdlPgvW68jGm
         mBanhXU/IjvcO3p/3NKw5sCCJeZ9fUWDMjHpwzkjHSn8uVlRIXC2EabKQB50fHnxXv8F
         cJKnnHGw68+hMA4lH/QyN7UMKMGYzxImJp9ATfPiJaEWnUytdNZUmruWn5qjdnkgfOGs
         90h491udRal2LvKO+eqtxuXJ/yI64GDeI9nr4OKBNlyJUxlQdLojq/MjD+uMvcyQT0jj
         Y3YQ==
X-Forwarded-Encrypted: i=1; AJvYcCXYm4534DTmNDYzENFj/+1bVdvlFjQyiBuSPZKmGKX4m8E2Ha950Z+fnzdImnTqnQCpFnT1kXVq3nb3@vger.kernel.org
X-Gm-Message-State: AOJu0Yxy+KRJxcrfWpQDVIKZDI9Zoe47fnmG71p7Rqbjv3d/oL3dkOu9
	DQlKPtOhevczl2tuagFBDQd+9MvdI+xh0qkRZaweODvd3esHx4XRmTVALZuEPWjOBB0CqfXWFbm
	IbYo3/76ffFBzhGaX4NgcZPDkMJfhCr/Yt1QQxqLIdlIRHxwSc4zpEhuLCtqu/lqO
X-Gm-Gg: AY/fxX6zNfNq3JatuPgsNIhs8zcMhhDXmGYMjvfg0fwG2uqlkryJphKgLXC8ALMiWio
	xw0Vl9lJI+wZWX02x1jZaKWEl7HLi5uDIechcaviZqIVjpsnoSe2ZIAMPgb05UiCDzAkw4aFEdd
	hmOLkgwEdJs7Diprv2wXikfumKQhbqtGTjlZ0A4LOly5S8M5GKQwlDOiY3ruLjyCrVK2TpBRusy
	3jiR25sghRH/6jsNrXGadiCM425T8tsNnomhOnqqKN1cJcrhkL+rr6WviNlxGBL7Wc12lDhMhTF
	guLVBpU1nroLbWNM82ywXr4Eb17OwyHkIyjbjnG4OD0pG1LohAnCxTl08WlN8EfcKBBQnrBsWj5
	2XSJk+L6H7MWgHCH0cG26LdioIT9Vs5ynPg==
X-Received: by 2002:a05:6a00:4396:b0:7e8:43f5:bd4f with SMTP id d2e1a72fcca58-7ff676624b7mr11221749b3a.59.1766431907627;
        Mon, 22 Dec 2025 11:31:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH2s1IKHVLhxa+hMzcbcvmkLvDT1cY9A3MsIsDGWqQD5JTVY16N9cMf+LD3Bj2dgfcoNwMijA==
X-Received: by 2002:a05:6a00:4396:b0:7e8:43f5:bd4f with SMTP id d2e1a72fcca58-7ff676624b7mr11221721b3a.59.1766431907020;
        Mon, 22 Dec 2025 11:31:47 -0800 (PST)
Received: from [192.168.1.5] ([106.222.228.240])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7dfab836sm11223232b3a.36.2025.12.22.11.31.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 11:31:46 -0800 (PST)
Message-ID: <a8cc09c0-6acd-409a-a907-c3809b4f4db3@oss.qualcomm.com>
Date: Tue, 23 Dec 2025 01:01:42 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] arm64: dts: qcom: sdm845-oneplus: Update firmware
 paths
To: david@ixit.cz
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251222-oneplus6-new-fw-path-v1-0-a2d366f9eb89@ixit.cz>
 <20251222-oneplus6-new-fw-path-v1-1-a2d366f9eb89@ixit.cz>
Content-Language: en-US
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
In-Reply-To: <20251222-oneplus6-new-fw-path-v1-1-a2d366f9eb89@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: GZliFmc1QdtVtAUSkDFPrhGOJ-HjeFLW
X-Authority-Analysis: v=2.4 cv=cuuWUl4i c=1 sm=1 tr=0 ts=69499ca4 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=oy5nMm26i85I/VS19bmskg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=biikvipckgx2MqpNVBAA:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDE3OSBTYWx0ZWRfX+TiUoDq4Tz8A
 qLK6Bq0JDE7Wqo+pOGkos5BoeuG7lyGehDCr5636GFuS3gQBhTcRdV+bHXifs0wvLPjEvrGFr6v
 4UtBty8eli+mxMaLEc/IbDOsE5IDgtCrraibZaZykFZBDPdaL/GCNDOOxufdmtsoNovp0f7DH9c
 gdy65pSiGnJC/Alxzjv00fFoELaHu4JOOg5hrTzaGyU9ZmI4g6LpvvF6JHqYi/OZsY7zq1EFZbD
 q7RmSJHlbrp3+fnVVCUaRbNY2qoh+ixAteohQ1FMTV3TCvicrq5fg5nnv7weTsrpq4KmQshYcHQ
 pnfW78xEBs4O0houP/j9zXOtrBaCpnGQYFlZovHzvutl1mZNiSIb9hHgHZkCsajlVvVHY0hzOgc
 WheD0I5FhOTV+1XxHVaFXeXWTzKC0//xzfyRputrWlLTAe0ob6rHuN9pPY4l4lOtDwO1cKqTDzq
 di4Ox4cgr7RtWMi2taw==
X-Proofpoint-GUID: GZliFmc1QdtVtAUSkDFPrhGOJ-HjeFLW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-22_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 adultscore=0 malwarescore=0
 priorityscore=1501 spamscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512220179

On 12/23/2025 12:35 AM, David Heidelberg via B4 Relay wrote:
> From: David Heidelberg <david@ixit.cz>
> 
> Conform to the new firmware path scheme.
> Includes cosmetic cleanups.
> 
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  .../arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi | 23 ++++++++++++++--------
>  1 file changed, 15 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi b/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
> index db6dd04c51bb5..f1c63794db979 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
> @@ -181,8 +181,9 @@ panel_vddi_poc_1p8: panel-vddi-poc-regulator {
>  };
>  
>  &adsp_pas {
> +	firmware-name = "qcom/sdm845/OnePlus/enchilada/adsp.mbn";
> +
>  	status = "okay";
> -	firmware-name = "qcom/sdm845/oneplus6/adsp.mbn";
>  };
>  
>  &apps_rsc {
> @@ -353,8 +354,9 @@ vreg_s3c_0p6: smps3 {
>  };
>  
>  &cdsp_pas {
> +	firmware-name = "qcom/sdm845/OnePlus/enchilada/cdsp.mbn";
> +
>  	status = "okay";
> -	firmware-name = "qcom/sdm845/oneplus6/cdsp.mbn";
>  };
>  
>  &gcc {
> @@ -370,7 +372,7 @@ &gpu {
>  };
>  
>  &gpu_zap_shader {
> -	firmware-name = "qcom/sdm845/oneplus6/a630_zap.mbn";
> +	firmware-name = "qcom/sdm845/OnePlus/enchilada/a630_zap.mbn";

I believe this is considered as breaking backward compatibility. How
about creating a symlink in linux-firmware instead.

-Akhil.

>  };
>  
>  &i2c10 {
> @@ -422,7 +424,8 @@ rmi4_f12: rmi4-f12@12 {
>  &ipa {
>  	qcom,gsi-loader = "self";
>  	memory-region = <&ipa_fw_mem>;
> -	firmware-name = "qcom/sdm845/oneplus6/ipa_fws.mbn";
> +	firmware-name = "qcom/sdm845/OnePlus/enchilada/ipa_fws.mbn";
> +
>  	status = "okay";
>  };
>  
> @@ -474,8 +477,10 @@ &mdss_dsi0_phy {
>  
>  /* Modem/wifi */
>  &mss_pil {
> +	firmware-name = "qcom/sdm845/OnePlus/enchilada/mba.mbn",
> +			"qcom/sdm845/OnePlus/enchilada/modem.mbn";
> +
>  	status = "okay";
> -	firmware-name = "qcom/sdm845/oneplus6/mba.mbn", "qcom/sdm845/oneplus6/modem.mbn";
>  };
>  
>  &pm8998_gpios {
> @@ -593,7 +598,8 @@ &qup_uart9_tx {
>  };
>  
>  &slpi_pas {
> -	firmware-name = "qcom/sdm845/oneplus6/slpi.mbn";
> +	firmware-name = "qcom/sdm845/OnePlus/enchilada/slpi.mbn";
> +
>  	status = "okay";
>  };
>  
> @@ -744,7 +750,7 @@ bluetooth {
>  		 * This path is relative to the qca/
>  		 * subdir under lib/firmware.
>  		 */
> -		firmware-name = "oneplus6/crnv21.bin";
> +		firmware-name = "OnePlus/enchilada/crnv21.bin";
>  
>  		vddio-supply = <&vreg_s4a_1p8>;
>  		vddxo-supply = <&vreg_l7a_1p8>;
> @@ -906,8 +912,9 @@ speaker_default: speaker-default-state {
>  };
>  
>  &venus {
> +	firmware-name = "qcom/sdm845/OnePlus/enchilada/venus.mbn";
> +
>  	status = "okay";
> -	firmware-name = "qcom/sdm845/oneplus6/venus.mbn";
>  };
>  
>  &wcd9340 {
> 


