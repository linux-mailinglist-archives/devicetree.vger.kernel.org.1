Return-Path: <devicetree+bounces-240598-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F14C73167
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 10:19:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id BB4D8314CB
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 09:14:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2091C3115AE;
	Thu, 20 Nov 2025 09:14:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CxmCZUO0";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gwbh6MF+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A6C93115B5
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 09:14:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763630069; cv=none; b=Paj9NhN870qY3G/mWTKi1MfVdgWoMSvi0+soUjECiL4sSQmMDiBlieM6HKGgpHrL9b4HWfgfk13OiQAF0hV5aOlFdZpECp/AQHZHw/ExYAY86lWoB/J9YHV/ck9s3aQrtiy81E/A+HJn3wWfEze6+ctbzPhvL7ZTtyeRY0ZWIoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763630069; c=relaxed/simple;
	bh=+IGXn9AvE72m3W84TDf4Uh/2wXTRVB1LmFhE4Ua2318=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=i251XKeI5oRF3UWOT2DDSfWAuwUzLr2CaJxiJoYlamjKg1IDxUXcONIYvxChmt3c3x65E/1+AsqbADVB8wdVxJypjxoY+zbGozMXJrkzwHByjXqbV2oa5LRxMbaygubn6s8drm700ZnVbQt7b31wT6WQ62uVyPTYhw56sgMrCPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CxmCZUO0; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gwbh6MF+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AK4pdmq3720050
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 09:14:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+TV6NxIFpq6J6amCzIrX3rYHFvYpcNQYkdj9hSdm1co=; b=CxmCZUO0I4AZsL57
	xoRH6gtp+DddeTClEGnE4/WaNhAzRs18pMCj5EiFuR3Ksnk+JuY+vT/terJQxOBV
	sC68FYYSu8RCx7qcUcCavhb36cjT/K3Ysrj2QhBGdBI5Zt9VwmOlgvb+8P7yjRXx
	ve2RqdJrcTYdhPhU5A9Gk/V+3Aes/+2JXK1JB9lrXN13O28HvG7ofSe6fbxNzfrm
	WNEQZuQrPcir1spfxRjkDKCVBJZtYLgyB1/YzTelekxDKsdTSzomkpbQywkgvMrq
	lWy+gYmwZCg+e2p5joIiMY1Jd9gYXhsAkJvh1hXPzM3O5s7//BjrxrT568rJibgI
	PEyn4Q==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ahqb0hmvh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 09:14:26 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ee05927183so1903591cf.0
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 01:14:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763630065; x=1764234865; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+TV6NxIFpq6J6amCzIrX3rYHFvYpcNQYkdj9hSdm1co=;
        b=gwbh6MF+jCh59Y0ePvEvOvLcvR7TpRXx6JhcbQERpqp0SU8zvCkjYEUbOxoqjmfinr
         OlrfNO0W/cpm03z3QZXICooaHYetoGFHnqci/Wd9fIsNBP70cRl0hFp2sF4gxYrjXkQZ
         gktv3z2hROBJbrcKHT77tMH3rovR1Z7ay0fVxH6M4aTFCnX/ii5t2PUZoI34TgmQCYTV
         phUqX0OlEqnGVIGs4DhfwZyphjzpred1KGt00mwzr5XXguL7kLD0XK3gXHTfd5ZvIrlI
         t8Gbaxk6qVNmSdofAFL20abRyIiMHX+IwUhMbf92+sGPk+g4v9EGFa8gUhSqlEBpFC1G
         WrYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763630065; x=1764234865;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+TV6NxIFpq6J6amCzIrX3rYHFvYpcNQYkdj9hSdm1co=;
        b=PPuc1vJ9BzLyfxOgVTa9OxGa/wnn86Pun+DYnyTPj7iGeFBcd2cMWKg7v1fkOpMhNC
         ZKoFi89hnva7VOV6grX9jbrZUpy6PoHz9r2kh8FYBo+IRacJyl13uf461rtWNzJ0bSSD
         ujLW2hsFvnYelCn2MmXXcCkcDJ7A+2GMsgo6TOWel7egd2itsYCqTpCJjRhtaRRS+dzd
         g4hZHiDOtrI4to1mDx7I903GESkSHjOE6/U2IfWz1p77P6cpSWhBLSQTWAi0/xoB+IKx
         27OmdyaWdU54ZxquVi9PkZjvpEGlkbVXqHZkInXCtDsrofk8q7uue8VjFXmS5xhbQBCt
         iJTA==
X-Forwarded-Encrypted: i=1; AJvYcCXCNQiO9Z5OJsYpjMSCkAp6NDvD/gbqJF039wXIhDmKp+bVnb/2r5YqwViAE6EKXa4ELNjeejDcnRKI@vger.kernel.org
X-Gm-Message-State: AOJu0YzOB9Em6f/R3DwLjd/vpZ4LN4GxxIRHqqFamFiyja4NbK9esYkv
	dQdfvNYGv+IONp0XEKc8NmCWOxhW6BjBmmEjW9TMdxkV7H2N5gwIUayG4rwZF8/MUWYdtnF5ajj
	G6md/s7YzHpQmfVR1OsVJcF4igd36uoUrwa9+/wzYVu3TfyVFEBVfWFKm6LaPfzNn
X-Gm-Gg: ASbGncv8Wzesw9DOWwRpqFSlZUnuX3GCm8eBUeOi2aXfAyHlZ59FqlowXwxw14qPCxd
	DiUFAAKN4FkFh5bN3z2VY2Di1SlMbfu0+SRkd/hY28gxRT+B4UqEPnY6xt99KU/3g9GP152yxe+
	DDi9cznUxn/GL76Gdos9k49PpDqGVCOeLe6pJF+JHocn7Xrip13Y3ho/wtMHhGDsYaesTKuoNUw
	BtNfnZDzUeAt/QGSvw0hzpx0FdEgmpO9jdpWTG343/uyXwHB9P/8RixsuTazu8tEPxHc0qgGVQW
	cKbUpqbRXkyE944jUC5ny16aF+gDaRATBVTw6mJVwl8Ly/dIDAsNpUCK7cuUYZWPbdg8F3b/TIF
	howaz9s2HigMkB+s9Ch1A6MMqUFVq0lnckKka7L3JPtdpEyIc2jA8WJzv2VtS3Mh6IMw=
X-Received: by 2002:ac8:5704:0:b0:4ee:1f0c:c19d with SMTP id d75a77b69052e-4ee49314d9bmr22982751cf.0.1763630065272;
        Thu, 20 Nov 2025 01:14:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHzSqpjIkrynAsEMRJnm8v+9fsCfA5C+Hvuztpok8rzvBgHvc55wV/HJaapki1sZFjuTIoBYQ==
X-Received: by 2002:ac8:5704:0:b0:4ee:1f0c:c19d with SMTP id d75a77b69052e-4ee49314d9bmr22982651cf.0.1763630064855;
        Thu, 20 Nov 2025 01:14:24 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7654cf0435sm163012966b.4.2025.11.20.01.14.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Nov 2025 01:14:24 -0800 (PST)
Message-ID: <161da2d4-3306-4251-addb-cc9822a112c0@oss.qualcomm.com>
Date: Thu, 20 Nov 2025 10:14:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] ARM: dts: qcom: msm8960: expressatt: Add Magnetometer
To: guptarud@gmail.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251119-expressatt_nfc_accel_magn_light-v1-0-636f16f05cf4@gmail.com>
 <20251119-expressatt_nfc_accel_magn_light-v1-3-636f16f05cf4@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251119-expressatt_nfc_accel_magn_light-v1-3-636f16f05cf4@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: jobu4fTgN_8JEkU_A2igjdCEvTLrWsRL
X-Proofpoint-ORIG-GUID: jobu4fTgN_8JEkU_A2igjdCEvTLrWsRL
X-Authority-Analysis: v=2.4 cv=DMqCIiNb c=1 sm=1 tr=0 ts=691edbf2 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=2dWhQ9a6AAAA:20 a=pGLkceISAAAA:8
 a=mTMy--iH0EC1zWreqloA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=bA3UWDv6hWIuX7UZL3qL:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIwMDA1NCBTYWx0ZWRfX9XemrHx9vt9V
 IkBIe4Vphob42922qOA5u7W+vNKxZLE0lvtvWCa7de3VgMApDQAMjOILl0ZFKkX0SCakYpZI94y
 cyrOvgBcBzun8nSODgTmeA1hUFt3zeT0EQIdGbiSDfzq/e2B73ThN3vGqqMpzTc6ledx3WfOmFH
 A6dQBP24JHLB9QmcGSJjFM0uN007+BM1aEXAM1cwMSefLQy5nwQYqIOrdXnuT+6Uqg/bc7w0BUj
 C3SHC39kuEdLMJh85k4w8TdFfc0GmcAiud0Aja+hgwQtsa4g43MPe6+k5lozp4hDrx1bD0utvFx
 qZnPkq+5YJ/aYE4iz8l+5J9L5rMNp/aC3D/tclz237+PfZ2CsQ5jeR2kwc0K0UYtXOfIjJZ3RQM
 aS6VYW/k6e4dfwFqeifu6bKlzqdejQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-20_03,2025-11-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 phishscore=0 malwarescore=0 adultscore=0
 priorityscore=1501 bulkscore=0 spamscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511200054

On 11/20/25 8:14 AM, Rudraksha Gupta via B4 Relay wrote:
> From: Rudraksha Gupta <guptarud@gmail.com>
> 
> Add the Yamaha magnetometer. Mount Matrix is left as a TODO.
> 
> Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
> ---
>  .../boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts  | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts b/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts
> index 81806d7ca001..403bef67a148 100644
> --- a/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts
> +++ b/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts
> @@ -490,3 +490,21 @@ &usb1 {
>  	dr_mode = "otg";
>  	status = "okay";
>  };
> +
> +&gsbi12 {
> +	qcom,mode = <GSBI_PROT_I2C>;
> +	status = "okay";

Please add a \n before status

> +};
> +
> +&gsbi12_i2c {
> +	status = "okay";
> +
> +	magnetometer@2e {
> +		compatible = "yamaha,yas532";
> +		reg = <0x2e>;
> +		vdd-supply   = <&pm8921_l9>;

Odd double space

> +		iovdd-supply = <&pm8921_lvs4>;
> +
> +		// TODO: Figure out Mount Matrix

pmOS wiki has this:

https://github.com/SiddharthManthan/accelerometer-mount-matrix-generator/blob/master/rotation_matrix.py

but for accelerometers.. shouldn't be too different, I would assume

Konrad

