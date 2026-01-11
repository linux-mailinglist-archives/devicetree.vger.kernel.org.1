Return-Path: <devicetree+bounces-253648-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A042D0FAED
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 20:47:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6A600300C352
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 19:47:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7D7A350D64;
	Sun, 11 Jan 2026 19:47:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fX4iv/ah";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OC2hyAAg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5735134B1A0
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 19:47:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768160827; cv=none; b=Fg+WJaEu3wqowqNHqDWIIBwsxmNPkxicKnJJ9CVVx4X0bdpaLN35iyBqDj9Xv70kfhwfMhdUCKUAwm/dlC/N5YEhvubCPc8XDOz8KDSUCNBA4CkwjZMit0QtxvEAV+F8R8KfPdqzjdmKnHR143h48XQUJe9WyTrDCAAuTNOmFFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768160827; c=relaxed/simple;
	bh=LgiUmXYeM3SN3SzJ9b8ot7rT1uGH9BtlRADOOPheWOI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QuGsYMWSCtHpnRtLLRT7gGG2jHAjYtPFEh+e4OnNKuc/4a2M6p9uaSvHs0uOkMtwYuFnbbS+F/p8LxwuDnsCWKZeLFUJIXbjHnmKdRmFWiqsJNtMjuDXFQoDGAiNdAHoN6em877dGTC3mUFoJpCz8FISeFHQcj5qlEQXehLvMQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fX4iv/ah; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OC2hyAAg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60BIxDmI2676549
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 19:47:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=VWoq+K0orW96DlxbTKO5f8O+
	BBk8ncmN5cuLKOlxAh0=; b=fX4iv/ah2irCuA1GzS5zNSReTHyBAFXNNBJ1E2aM
	foqHoFgkim4tpHKuBSIIC3xRHqaQx+ZRJATO4Pslxg2WdgLtNh5Gm7wd3MJ0+dIQ
	uaBk0RYQzrEXylL1hFdzs7VYjNVW1WFfE6suCqHatdiMU3dxV3Pm5JdGA0/N6ubM
	WOphCjQzfEnbB0QP/g859YO6UPm1O1ehk6j1N45KLJu1v78PyHi4wOIwJQDdQ2wk
	2WAkStk8NZVeQyz2K3DMkJDfeIecrKHNLjJ+MSVxBcDDrOGNhBzzokXSY8XX7to4
	Tu9omNL4eTyeRX+GLDFN9G3MABOUSf4bkL5UgjOvucMM1Q==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bkf57anv8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 19:47:04 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b51db8ebd9so1946656985a.2
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 11:47:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768160824; x=1768765624; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VWoq+K0orW96DlxbTKO5f8O+BBk8ncmN5cuLKOlxAh0=;
        b=OC2hyAAg2+SE3CFPJehRCE0CkEi11LC22f2ulymz85WFfOHfw1VVjboSKeAcNEpCKP
         I0d9hwWik+zfOxaLb2t9wdR0HCwrc8FtmzJxCw2rwE+zYUpdjC0zErHUADmtj0OoFDNM
         I4gm44UC3s81Wz7FAl1q1Bx1Srhy7fLNKdOKKj6GZ6ahLoe4S2jMqSUNvkEwQJVfq7Oh
         abqwUPkm023sGG9GzRVvr2zcl4cBSSIlsByBpWSfslFvj1tQ8+QtLae4h2EdcJYOgceW
         OhF6HKKt4gzYkWloLSJeInyqDuEaobuCBxP2MfmSCtmsAruaa7H8JpMLTwYq3bQ+bQa8
         c52A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768160824; x=1768765624;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VWoq+K0orW96DlxbTKO5f8O+BBk8ncmN5cuLKOlxAh0=;
        b=DGKFRi4tZ4HnDjedBfGbtpnXDOaSyuvJHnxiIOD7Oa+zKh3W4TnjveUrtnwKkwWP/B
         R75x/CZDfjiJxza6odhQ2P6Ilplzk8/qx4otBNm4jZ0nQAmOQ6I5vkOfo5g4LynoZhYt
         kBnstSMiWcQaUx1TuswChr0FhiwvwpQMicfsDObSYwdSkSI3i9Qrl2DbnDkALQ03rYoL
         Sm4uSP6ik35To57fAKnqa6mwW+oLNobnCl/9pEFqmYzd/CLKCZsC0LD/bj3xS07X9yMO
         rrM5BgWiq4kUop//3B6Hb3Eh3tTJJz9pCdHxTivd3Rircir6pHs8nc+Y9wZvSaQPEgN5
         55CQ==
X-Forwarded-Encrypted: i=1; AJvYcCUtwyN574J3qZ0fXCw5zm82Yp+3BGq9JKDxFF4u5y+ZQxEgTeJRNmGsH4HbSX7m8PAPx9/pOEtc27xb@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5gJpITOUwxD224vOJdLlUKm4hjPL69U4z7oncZOTJzYCERRvu
	3T/bFtJrVJLVNPNUKDCPDoTZ8rfRgiMZmjjKKEG1qf1DDY647KhR4OeAJvPK0RN14GMaVoW85w8
	Y5U+Y8tGFjztQdtzwUTq+aaOsPca+qyyxvk2ws62pjZ3PDEyaWpjD0d/o+vGto55j
X-Gm-Gg: AY/fxX68rb+ITt7Mt3bSPdJL9Rt/RsLlI2FeYCaJuRdFQgnuAnL7CUAoiaTZ+lvRDeY
	wqe673fQ8MSSsPfzn8mwgOx2zuayAcTKZkHbmQtim7BZIUzWQlxg2C4YGXewyQSUFce7mmvQMSh
	tt5VYzma+E+bCZxYpeeQe6xBrn0I2q2Rwe8BjGnQkMRx+MHvDNbinwoI2p/w4l/qmfMYm3ykNfm
	JMq5vxpGDBAnGmyF0uD98iZvdCRZe9nlmwI4EXGoaegE5Z1pfxhQDfxHeaivA2/+XjhxdHQkbF3
	VVcgjnV9o1xMUBQzILW82C9ciBivmVxYvtJX+0P1bw2mU6Swu5R2ff0fy38AMyNGyFgBCE7HwAR
	8EAaksI1oPfszpKlylBn0+gdjctfMzOIlUwuHqaR4IpnWQlu4Cpafe8ae6Bn6aQdLNXKvJ39ZfK
	WUWwWARFXM3/lP/Lcs6mWq2DM=
X-Received: by 2002:a05:620a:29ce:b0:8b2:d791:3d25 with SMTP id af79cd13be357-8c389379d70mr2313317785a.18.1768160824365;
        Sun, 11 Jan 2026 11:47:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHaSQrfT7R0upbUsE8Ls5NpEYGw1E2ZBrGO7Xau6nDy45sHOd/GEvMQLRUH+vOz30b4yVIQ7Q==
X-Received: by 2002:a05:620a:29ce:b0:8b2:d791:3d25 with SMTP id af79cd13be357-8c389379d70mr2313316185a.18.1768160823873;
        Sun, 11 Jan 2026 11:47:03 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b71b7eb22sm3234553e87.41.2026.01.11.11.47.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Jan 2026 11:47:03 -0800 (PST)
Date: Sun, 11 Jan 2026 21:47:01 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Val Packett <val@packett.cool>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/5] arm64: dts: qcom: Add support for ECS LIVA QC710
Message-ID: <qv2nlupgk3unmyj2uvegfrtdjrbnii2wuqg6xb2wzowpnqpccf@p7n66642cuvm>
References: <20260111085726.634091-2-val@packett.cool>
 <20260111085726.634091-6-val@packett.cool>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260111085726.634091-6-val@packett.cool>
X-Authority-Analysis: v=2.4 cv=K/sv3iWI c=1 sm=1 tr=0 ts=6963fe38 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=7KhyCbUdoPYTC6S1WX4A:9 a=CjuIK1q_8ugA:10 a=dK5gKXOJidcA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTExMDE4MiBTYWx0ZWRfX8lEOnGSPplus
 Myh9jPOom/fqO3DJUTCZifNwS2t12CYUZpVR9ZPm/aFgXSW3MapaGq6whAF/y3OVMUbt5VEuPue
 bJY+2ou532pJDqWiRaOf1aXiziqV8Kmew8iXXx/EHZqvB9exIhd3+lAipT5oiaUJ975TotUM1sg
 per3lQX7kEV6vMPDIl1AQTxcHtn2DxccekDaT3YRJddTTBtnQ9Kn495gJqv8NkdLu2jVRzHWzsl
 RceEAzagu/HZQ/DEIu4FzoBmiH7jQCYK7CypZT5BUh6MwEZLbWN2TReSyReLeI5lecP4/1xBVv7
 SDKpTq8GM6wzzu0M6nAUXZRA246fMTkZh8KAnnhjD5iwnpWAt428zjt8XZ4qozgW7bQpuJ9MYTn
 AZTBiesOYmmpIinXnL8+VpMCQk6ohkE7NSzYp6qZ789OhojwmW80Vbr2BDK3zJVICPvElbMsEA6
 32/UTbpScdhHJLODa3A==
X-Proofpoint-GUID: czx0IxbcJEMrjKUw0-GvcZgXEHNjRo0p
X-Proofpoint-ORIG-GUID: czx0IxbcJEMrjKUw0-GvcZgXEHNjRo0p
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-11_07,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 suspectscore=0 priorityscore=1501 adultscore=0
 lowpriorityscore=0 clxscore=1015 malwarescore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601110182

On Sun, Jan 11, 2026 at 05:35:12AM -0300, Val Packett wrote:
> Add a device tree for the ECS LIVA QC710 (Snapdragon 7c) mini PC/devkit.
> 
> Working:
> - Wi-Fi (wcn3990 hw1.0)
> - Bluetooth
> - USB Type-A (USB3 and USB2)
> - Ethernet (over USB2)
> - HDMI Display
> - eMMC
> - SDHC (microSD slot)
> 
> Not included:
> - HDMI Audio
> - EC (IT8987)
> 
> Signed-off-by: Val Packett <val@packett.cool>
> ---
>  arch/arm64/boot/dts/qcom/Makefile             |   2 +
>  .../boot/dts/qcom/sc7180-ecs-liva-qc710.dts   | 625 ++++++++++++++++++
>  2 files changed, 627 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/sc7180-ecs-liva-qc710.dts
> 
> +
> +&wifi {
> +	vdd-0.8-cx-mx-supply = <&vreg_l9a_0p6>;
> +	vdd-1.8-xo-supply = <&vreg_l1c_1p8>;
> +	vdd-1.3-rfa-supply = <&vreg_l2c_1p3>;
> +	vdd-3.3-ch0-supply = <&vreg_l10c_3p3>;
> +	vdd-3.3-ch1-supply = <&vreg_l11c_3p3>;
> +
> +	status = "okay";

Almost missed it: please add the qcom,calibration-variant and, if the
original bdwlan file works, submit it to ath10k ML ([1]).

https://wireless.docs.kernel.org/en/latest/en/users/drivers/ath10k/boardfiles.html

-- 
With best wishes
Dmitry

