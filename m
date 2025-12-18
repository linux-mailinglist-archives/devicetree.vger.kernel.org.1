Return-Path: <devicetree+bounces-247655-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B528CC9DCB
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 01:08:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B25203022A92
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 00:07:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A865C1A58D;
	Thu, 18 Dec 2025 00:07:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XnhpDrrh";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cjURBEAV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3574146B5
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 00:07:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766016436; cv=none; b=FYP/heWEo9tSQvWVd0R7N2MWZ7bPPfnes2MqECjK1dc8BaVbMUPWI64NAeV8u0zYg9CfT7Mo6SaC6vAvMGQ+HASBPztxIJTj0aAi6zBZ42NnOKm45/ZQOKzCUJvUnxXWmwRqOgwFVfAzP1rkvik38PwIMj7pwCgDFS1ngTlloic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766016436; c=relaxed/simple;
	bh=MkZFiW8PVfEXC9iEw+RiF1rkp6MiXEJyjsZ/QWm8WpA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ds0aC4uOJmy6OPRY+jXnsbAFWQIfdJhTKDc5f14YCKhZ+Fr1y6HN7dEtq2sKyzRTxnjb/FF5HT9xzBO/yzFMUg87KLGbjF+OYVNpK/HBX3OVeXp8Nom+pUwgWpJp+XPp/Y6IfqIGM1wLDabD0S+lk+dM4KLymlJmPi2FpWRzbz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XnhpDrrh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cjURBEAV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHKUuNV4092827
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 00:07:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+6X2ksbSDC2ya8H3LtEZEvp5I4IfOZ3iAR1V5pLfhRE=; b=XnhpDrrhKEMqop6K
	ZJxFdaUizCFjoYmS6Rm2/mPPWnuGlZYv2J9PnMpWNmwAf2HgWh8m642pU56Mfacd
	AHH0PdEGeZLU+7lun5fMhLro4ANvHO4McJst2HoGPpiAwos0qsEqqXv76EZiUDuu
	Zj0eFh4AQjjqYWOP8X6ISk+7UUNajlZZGZ3GWK7238Pi5ultBuKCgsy9ea8UpmX+
	oHlAwwB4ZQQNIGLKR61LztS2qWcWi2TBcQWxwXPokWxSL8Yi4UrULot63nwox0zY
	vBR/05yeaJnLdq2hXVu6qTL16Na3RUy8BCnU7LfreSbZsn0HFPpPGZUtIWUPfbcX
	aneM+g==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b43mb0fej-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 00:07:13 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ed6855557aso23898561cf.1
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 16:07:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766016432; x=1766621232; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+6X2ksbSDC2ya8H3LtEZEvp5I4IfOZ3iAR1V5pLfhRE=;
        b=cjURBEAVioEz4ddMJyhvIYRxwVM61Ca/bHvGNV/1TOVMb2Cex/gCsTtz5buSOEXDtr
         ndomuzLe4J+v5VQ+MNGj8DbM+gPWHAqFyo10Rbyl1GJskde9WrW9QzEblM9Vx79bv9kc
         luIcQ2c9j5+j2NV1ODmYSXseB3wLPY7b0QEcFyW00dtu+fnHFtpPI0bgKcM/Cc5aGk5B
         WZwvwr7AsjlRVoZz4iY0otrtUFqHQczYDW3OIU0UJPqnscTEvimsRI5zTrZxUjBBPghP
         NviMDhj0PKPr3uqZ461pyXhU5YbnPHMhxHYpnA1VOPpbs+YoVoQAbqJ06Xq4955N2FH/
         4mtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766016432; x=1766621232;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+6X2ksbSDC2ya8H3LtEZEvp5I4IfOZ3iAR1V5pLfhRE=;
        b=fGJfnVn4SOZGY9Y0HcIN0VHOC4xRJbyDlzgPnh48JGaUq7kzn7O+DMvzTRSTHxcgVA
         I1zcnfGNRDpIXxWKUfas234AdsEAYchMTVrYOa3aNt6d7FDmQ7Xe1cfJAExict77Vuqj
         3nfrxPBLoNf7vOlAj3FTKvD0TBthZ7GNhhuLefxpcfo+kGQ3kkVfdCXkf1LnJx9MxS73
         l9fLm87d4oABFkZqxZlpK4DQEdEU7JbRu4PU40XKqUX8o5LgfwDFfcriapoT5GnGscuP
         673DQQiGdxQt7Gwus/S+QF4ZOBXNFHwPe5uus12jXBPukBjQApK4WBDBc6IBZZur8j93
         3etg==
X-Forwarded-Encrypted: i=1; AJvYcCVVJGdYYbfWiyjOJ6Nnvwdlt/dF7RyoenXGKMQMopWi657xUNiVm5RX7aft6L/iM+vGiw22H1DLvD7y@vger.kernel.org
X-Gm-Message-State: AOJu0YxiAxLv6k1q/Lp8t8On7IZeTVLSqBReMlRtk8PdpgidfKVWu0+c
	iGVn1kP54QbvE1x0CFMiCe6HMGXMvRLat5Dk+G9ahVqxb7jX3F4GfwurJDk8K60b2iNsxcRNkbb
	2TQpXrracS17RZjfPugjkaPwAAP9HbraMYPC0UvVkEZXepFdq9r6XLIGwdnlVAgnw
X-Gm-Gg: AY/fxX5l6TwL5CHjBiq8nirEn0Il5tdenrBsD5biHZII4mw/yhkYrKb9xuGpcLy0cl6
	IVghwCcN8MNMEuUXPmMdldYED1BOKQaeyQX/0vM5f+0F5gUbOTzKdupBz3EgHGSFievqRrHB48g
	7Fg8lZ7EiGDeOQUUXmwYBQ9ZgC2agUBjnhhjoFWaTaqTjnxE1APCeSp/NCGdtKKqzgyrIQ1BG4d
	xhVeSGi9TYfFAt7aZxw0UyIP0rPgqBQj08b1jN9Mshtr4pNi+y/r9X4i6FgWw5bCauEY94sM0SM
	37QvSV5Br0ewyAZCMlxHA+iMMQOrj8DgswyNSK/fVRwnw/Z2b4am7dHUDTe9Vc9CZ3NpYup8iF/
	MipJppmoqf46HYDiIdwxQKqLJKJLy46ry80KWeMmgUigd1+zzYMWxG1T/AZ/+LaI6VZWPuypDrI
	H/ryBpvax+W9J4eRMex247ZqA=
X-Received: by 2002:a05:622a:2d2:b0:4ed:a2dc:9e51 with SMTP id d75a77b69052e-4f35f43ab71mr22024411cf.21.1766016432004;
        Wed, 17 Dec 2025 16:07:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF7r9ikBXTn9EQK+HDVKOPnuyMaSvuztty6xD+BwyGt1UHdgEs/NzHIQGQgsKy4i7SuFf+65A==
X-Received: by 2002:a05:622a:2d2:b0:4ed:a2dc:9e51 with SMTP id d75a77b69052e-4f35f43ab71mr22023971cf.21.1766016431146;
        Wed, 17 Dec 2025 16:07:11 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a132cb5f7sm321357e87.4.2025.12.17.16.07.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 16:07:09 -0800 (PST)
Date: Thu, 18 Dec 2025 02:07:06 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: jerome.debretagne@gmail.com
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Johannes Berg <johannes@sipsolutions.net>,
        Lorenzo Bianconi <lorenzo@kernel.org>,
        Maximilian Luz <luzmaximilian@gmail.com>,
        Hans de Goede <hansg@kernel.org>,
        Ilpo =?utf-8?B?SsOkcnZpbmVu?= <ilpo.jarvinen@linux.intel.com>,
        Jeff Johnson <jjohnson@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-wireless@vger.kernel.org, platform-driver-x86@vger.kernel.org,
        ath12k@lists.infradead.org, Dale Whinham <daleyo@gmail.com>
Subject: Re: [PATCH v3 4/6] platform/surface: aggregator_registry: Add
 Surface Pro 11
Message-ID: <s45ki2ckgw7fu25h5wd6mb3mc4kzs6qq5eitv56asqf2suxh6l@s5tbqce7gz3f>
References: <20251218-surface-sp11-for-next-v3-0-875afc7bd3b7@gmail.com>
 <20251218-surface-sp11-for-next-v3-4-875afc7bd3b7@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251218-surface-sp11-for-next-v3-4-875afc7bd3b7@gmail.com>
X-Proofpoint-ORIG-GUID: f-7Zy3NeWV6Y3fdBCgvl_ikh6SyGwbjv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDE5NCBTYWx0ZWRfX16ZqmWdGCeB6
 x6juAln0456qLMQP39MTITbNKJ5CbRhcTpvTAHn92SxsGt0qph0aDR0Y+uAPUVVpXz6LcQW7QRY
 uMdiesRUF+HHm/V4w+nRWod6cvmZsk+j2mwb0HBVS+u4yQQycmceuehUZixMEp3/MJxd4sy/zo9
 eNQoW/6Ia/CeKtVrVm4bcjvf+lJPSyGcC3pQnZAYZQBH4U0w2HFl4vhzStnUr63J/n2dwKGpVXl
 /jd3SosS+u0/Y+GgpQq3Qy6HfE1Ksu2F5MllhavReakCTuwIUreVXtaDMLApP0DB4oDs0XqJxoA
 FMv3DO65XMrzMs73gicUqOyPHPRhs/3E5beAElr2O7RSnGbLjwFit/8XpjZnqMFWS2Frkk+jUBZ
 qhwClax+KPbewlARDVojMDXx3PbCXA==
X-Authority-Analysis: v=2.4 cv=NPHYOk6g c=1 sm=1 tr=0 ts=694345b1 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=pGLkceISAAAA:8 a=27tkrN_41n3i1SKUIiEA:9 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: f-7Zy3NeWV6Y3fdBCgvl_ikh6SyGwbjv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_03,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 suspectscore=0 phishscore=0 clxscore=1015
 bulkscore=0 impostorscore=0 adultscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512170194

On Thu, Dec 18, 2025 at 12:56:40AM +0100, Jérôme de Bretagne via B4 Relay wrote:
> From: Dale Whinham <daleyo@gmail.com>
> 
> This enables support for the X1-based Surface Pro 11.
> 
> Signed-off-by: Dale Whinham <daleyo@gmail.com>
> Signed-off-by: Jérôme de Bretagne <jerome.debretagne@gmail.com>
> Reviewed-by: Maximilian Luz <luzmaximilian@gmail.com>
> ---
>  drivers/platform/surface/surface_aggregator_registry.c | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/drivers/platform/surface/surface_aggregator_registry.c b/drivers/platform/surface/surface_aggregator_registry.c
> index 78ac3a8fbb736384f7e50f1888a71297a892a7c3..c18d991afc8b0a0bbb26966351b75b8ea01097a4 100644
> --- a/drivers/platform/surface/surface_aggregator_registry.c
> +++ b/drivers/platform/surface/surface_aggregator_registry.c
> @@ -406,6 +406,22 @@ static const struct software_node *ssam_node_group_sp9_5g[] = {
>  	NULL,
>  };
>  
> +/* Devices for Surface Pro 11 (ARM/QCOM) */
> +static const struct software_node *ssam_node_group_sp11[] = {
> +	&ssam_node_root,
> +	&ssam_node_hub_kip,
> +	&ssam_node_bat_ac,
> +	&ssam_node_bat_main,
> +	&ssam_node_tmp_sensors,
> +	&ssam_node_hid_kip_keyboard,
> +	&ssam_node_hid_kip_penstash,
> +	&ssam_node_hid_kip_touchpad,
> +	&ssam_node_hid_kip_fwupd,
> +	&ssam_node_hid_sam_sensors,
> +	&ssam_node_kip_tablet_switch,
> +	NULL,
> +};
> +
>  /* -- SSAM platform/meta-hub driver. ---------------------------------------- */
>  
>  static const struct acpi_device_id ssam_platform_hub_acpi_match[] = {
> @@ -485,6 +501,8 @@ static const struct of_device_id ssam_platform_hub_of_match[] __maybe_unused = {
>  	/* Surface Laptop 7 */
>  	{ .compatible = "microsoft,romulus13", (void *)ssam_node_group_sl7 },
>  	{ .compatible = "microsoft,romulus15", (void *)ssam_node_group_sl7 },
> +	/* Surface Pro 11 */
> +	{ .compatible = "microsoft,denali", (void *)ssam_node_group_sp11 },

Please keep it sorted. arcata < denali < romulus

>  	{ },
>  };
>  
> 
> -- 
> 2.47.3
> 
> 

-- 
With best wishes
Dmitry

