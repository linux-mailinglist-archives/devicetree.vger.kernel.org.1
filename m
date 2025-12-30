Return-Path: <devicetree+bounces-250557-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F3BCE9F77
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 15:45:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0A2A93030FDF
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 14:45:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C17542FCC01;
	Tue, 30 Dec 2025 14:45:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RzIHIFsV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OVTaXPKL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2312E2F745B
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 14:45:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767105925; cv=none; b=ZKcAuUzo8u6jTB6E1mpNkk1pWapQdmj24h0dhcRbwVjJ4zTSZnMGiT26fzCj8nOOcpj3wNyJRK8FpfH0PXDcECQbgMJTK75aGbtxKpwJ3ndLNsVvXCNDFx9HU2GshRez29ePivF4pXberkt2K3kWOToKG5zRWUCvVPSes9iO/E0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767105925; c=relaxed/simple;
	bh=cyCmDnGm969XQXoNnboYDcSeh38i/QFyZvGJndndrJQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VKmMA1akDoil4uanTBoLpQ671/OrAynUinIQG+iZAJsgEGukP+c4ObDX4yqIi7BHsh8gWTgNhAnSsOJwDVuZxMVYlIjXpC0aovx9pRvCQ0+/PX7jrLDJ4uE2gV0Vwzusy/pNy6xUya5mFsV9ryLOOSABKeyxSYzgX0B3OXl6yMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RzIHIFsV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OVTaXPKL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BUB8n8D3971212
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 14:45:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=BtbGTz4z3tBXs1SB7ZTHxrta
	vgmb3rsvPP5BQ4tmjQ8=; b=RzIHIFsV2es0acFtC2j9bOiKHs/Kr6f8bcMGX2X1
	tAtSQZbu9INgPQUCBlIAOEMWGvOkZHO7NfBgDvXMO3zqrPOX+AZMXqCDP+nB/60j
	zjowi9n1zW+E7zRnrR25S5vr/HwtzUjDbB1PsZinA2ZLWpOGTWT+1Nr8n8WbhEdg
	G+/0uVc6+4puXoFVMmze7HNjX5+GltipjzRUGH7PYc9rhbsnKmsNo20igV+DxCTe
	rB7ynu7yUS7Cb7Qu9qU6wpqTk+qqGNx/9yBeNbWbHqUi5HKon/CqtorMKjDqprVR
	ZwgbBSp32FP3FKzdaD1pgT2grPSvZVigV2cq4c0OHt4bmg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bcdky0f6v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 14:45:16 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4f4ab58098eso243494551cf.1
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 06:45:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767105915; x=1767710715; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=BtbGTz4z3tBXs1SB7ZTHxrtavgmb3rsvPP5BQ4tmjQ8=;
        b=OVTaXPKLsZOXRuKmkwZIy5Awxbk69zfyCMCSqy04wdvAONgqaoFqm1WZJ86zyFKOFd
         uOH20htG5440ppvcamm4nHwv3C/TUvi+KKyhFbo6HESuvhHz5UPon5jWfwPDH3V2jYGx
         LuwdGf3frVvlihazK/WTTSfe1rNN8lDYRPoBea26ufFqTyROQD1Ggtp7l+ClkpvLwcxL
         QO+3iorLP+wFZ8H2PACZ4GmXYfu/KZvtRaJpp2CJKqTnudep8j/1+YMb4Oz8xdYWgPO7
         eObN6q+KLJ3L68NO7YJeUAi5SuPn14u3CywMNEb/ZetXDDLPt9GLugK5LSTwGgFL9CB+
         2mNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767105915; x=1767710715;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BtbGTz4z3tBXs1SB7ZTHxrtavgmb3rsvPP5BQ4tmjQ8=;
        b=MtwmNH10orqAxkncvv8ItYd/ftB8tb4z8CfNyyEEOCEwjHqeGP6JaZBqRP777mTp4W
         UvgF45LaAbv8QHo5sF4516NOGk1tThS6h+OhCI9PF/y8Pce2vscfTOTKQZUiK6wUjQ0v
         pFss3XNCbbpLewBXWaxOvnbLw8Aus8fccgn04HiiBhlv9+vYrKXoVAE6CJgIdoEb4jtc
         2smumOVW/yepnsKQXAj/jORNPIVPTKBwFFo2cWpwQ4LhSAmuN7K5CfdiAcms0PwYo4kF
         2pYSFmRvpudJz1h0OX1oHnv69pepMZFdElv7uUQZghmcqBjN7D4mQ4e3zyU+VJYzEgdN
         b+aA==
X-Forwarded-Encrypted: i=1; AJvYcCXMylG0RYSesVPt4iWFH/BoGtAP1R1WTcF5RI8DYK6GjdjKYdQwJtT+Da7j4pSIghodvOtiwSfM7JiO@vger.kernel.org
X-Gm-Message-State: AOJu0YyrTmb/YRvl8bG2YKt1t7NNiYKagf3yJNs6VjsrImpePiOqEuvr
	xabKEkjjDnxPyx5Ej96oi2TjkovhPtVqrams6hUa50dhdo8YANUMoSl7Cxlkyu+Fqd307y0syD/
	U3rqZL17jTO/uHZ2VQ9xO0oaeGBHQ2mY5ZvhwEBCOAhbXfwoOkyf00Rp6HI0ubWpKN8nFqNOL
X-Gm-Gg: AY/fxX5VYsUWyYJoIAEmBgmXRsPuZZA6wAYaYo0Uwn0+IRZ/5h2T1DPGT8Ag7uWm3z2
	6ZEmVlrKIxY/D35oMAeX34JtYFL4sqCRsrSKhIjQAAv0zVhnzfoRGdYHGSqcfMZTVzB3/fGEey+
	I5yUWHgwiElnbyi5WhvxxSY6qktycUWGCy22CKUM/5+/LNza7YLKW2daj6MAhSza/7QgQBhWtOL
	jXkZAFn4N+GPq13XYzL7yIq6k6dzd+ugRwjTp3I2RCzSUNdzbUNP/VDzKLV5BRXFDW9xzQJi/Jz
	qKV/FgQ0eOd+8RXsElPs5NDvC0U8V5PM23i04BFCPRGTp+LeHrMp4bzVzhBbTcncQLZ1W7bzcaI
	RNPX567ju9n/Xil9jXZbYKhAFb9372Zn1eD2NprG30QWq2xUvUdWmvKue7D9od0n+eJIIWIHYco
	kGWwCzF1rgBua8Ok7XdIjEw3M=
X-Received: by 2002:a05:622a:1b8f:b0:4f1:ba00:4cc6 with SMTP id d75a77b69052e-4f4abdcbd81mr542598971cf.79.1767105914412;
        Tue, 30 Dec 2025 06:45:14 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHSOuHs5XIls1dFJC2cY0NtsblAHccF6WAmbn/yx2ubNFUZf9dLstfEiT+b3xoXpusvFkHUqw==
X-Received: by 2002:a05:622a:1b8f:b0:4f1:ba00:4cc6 with SMTP id d75a77b69052e-4f4abdcbd81mr542598231cf.79.1767105913813;
        Tue, 30 Dec 2025 06:45:13 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3812251cfffsm96999781fa.19.2025.12.30.06.45.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 06:45:13 -0800 (PST)
Date: Tue, 30 Dec 2025 16:45:11 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Sudarshan Shetty <tessolveupstream@gmail.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v10 5/5] arm64: dts: qcom: talos-evk: Add support for
 QCS615 talos evk board
Message-ID: <jby57ycrknqtjawed5urodwsq6gucrfyhkrb2uhwsoeif6qb4m@h3ra353ermps>
References: <20251230130227.3503590-1-tessolveupstream@gmail.com>
 <20251230130227.3503590-6-tessolveupstream@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251230130227.3503590-6-tessolveupstream@gmail.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMwMDEzMiBTYWx0ZWRfX+sOCXdTgP2sO
 Y8ESMC6QBsPZoaFaUUrg6FGQsMo+6LdAyU9hoW+n9XyyF/q0X7fywJnq5opVvhNo4KHOQpnKOcW
 kZsCQH3QuFIVl0Yni/YAhDMbBQ3nxhSFdRaOfcvKme5CwCJVragf4HcOD0jU/XNtBRJZITBAa9P
 32SKs8kRMaZjj4h6WjgYel+MPnf0SmAIGuj+/4r/oYfmPBh8eEIDb35gvoVTp9I9O7Oq7NnZvwy
 QyzhN1pH28liVHQp9q9Pr2SMAMDtUkeFx/hfF77/7m7rkTv4VmIcTEVOgqubdj4gG1bojQY8GLO
 /+kk1dxP6TO18bHVCjkVpNZixFVj+bHijsGc1MEm6ochew3bncAbWHGElg2g3Pl4ClPvsL8LBVe
 qUydayJJEN3bBJBKeB6J8RWgB31v0bvoxokf7/6f4mGxrzLz1d4rBUAdQvzkUqpvt0o3XPVmI3x
 Ima9xrvQNMNBxqIY8cg==
X-Authority-Analysis: v=2.4 cv=Wskm8Nfv c=1 sm=1 tr=0 ts=6953e57c cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=6q-ckXwDscysDfU1ynwA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: SWeKFE0byxylQLo_1WwUDQD_MQTyiwgP
X-Proofpoint-ORIG-GUID: SWeKFE0byxylQLo_1WwUDQD_MQTyiwgP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-30_01,2025-12-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501
 impostorscore=0 clxscore=1015 adultscore=0 bulkscore=0 phishscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512300132

On Tue, Dec 30, 2025 at 06:32:27PM +0530, Sudarshan Shetty wrote:
> Add the device tree for the QCS615-based Talos EVK platform. The
> platform is composed of a System-on-Module following the SMARC
> standard, and a Carrier Board.
> 
> The Carrier Board supports several display configurations, HDMI and
> LVDS. Both configurations use the same base hardware, with the display
> selection controlled by a DIP switch.
> 
> Use a DTBO file, talos-evk-lvds-auo,g133han01.dtso, which defines an
> overlay that disables HDMI and adds LVDS. The DTs file talos-evk
> can describe the HDMI display configurations.
> 
> The initial device tree includes support for:
> - CPU and memory
> - UART
> - GPIOs
> - Regulators
> - PMIC
> - Early console
> - AT24MAC602 EEPROM
> - MCP2515 SPI to CAN
> - ADV7535 DSI-to-HDMI bridge
> - DisplayPort interface
> - SN65DSI84ZXHR DSI-to-LVDS bridge
> - Wi-Fi/BT
> 
> Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile             |   4 +
>  .../qcom/talos-evk-lvds-auo,g133han01.dtso    | 126 ++++
>  arch/arm64/boot/dts/qcom/talos-evk-som.dtsi   | 598 ++++++++++++++++++
>  arch/arm64/boot/dts/qcom/talos-evk.dts        | 139 ++++
>  4 files changed, 867 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtso
>  create mode 100644 arch/arm64/boot/dts/qcom/talos-evk-som.dtsi
>  create mode 100644 arch/arm64/boot/dts/qcom/talos-evk.dts
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

