Return-Path: <devicetree+bounces-200867-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F39DEB1665B
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 20:35:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 14A4D17BB5A
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 18:35:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 904DE2D94AE;
	Wed, 30 Jul 2025 18:35:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="O+CYcpTf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8A861F1505
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 18:35:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753900509; cv=none; b=FelcOLgbE5z9EuOiFVgjUCt8VD/2WzASGcyfs52hBoffRJl/oh1F45Y9Gt2CAlsleG4Qevt3QM9ybfn7FPMlj/2Er6+qHfxt3YzLWErSjY57v34CLdG5goE5hvAgu4tQCffY17s5UDoCkHCX8xjtXNSPsob/IwD11Y/fT7pyAKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753900509; c=relaxed/simple;
	bh=a44CJtTowNd7A+KwCUY0ZAqV0l3kVw/8bDoTakVrhZk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jBKg/1tV/93v9EWGt0dCi89J1tlEyU7MF2ODdrppzIkF5YIM9E+8nNeWf19YKy5K+7J9j3t6GDmXP/qgjPYu6FLm2yIqbb3mkGKP8IvCyHIhZWpnNsMilbGjKOD6FT7fq/txiXCimWra6YlCk1aYXoa7OXYzRhw1QPSawMan314=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=O+CYcpTf; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56UCbOWU006964
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 18:35:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qeQ+Jwe6tBBCJ8zRzKqHqrhVE6H4UDXs7p1wpuAs4qc=; b=O+CYcpTfRbYTk7Xh
	A9SWB9rFELy7Ac3OLCeqDGcCI6KVWgBr/LPeFbMiOt9JZ13wZfBPCfZbgXMnBEEo
	om/oJ9wmENdmayGiMQmifFpMSn86wR4kErWgS89X1wu9rdt5Mg2MHLKpMDTF309U
	cSTYJ1kp3bhAboa7D9i1MQ5qyjQkwoSbkddn3G15fAs59WBFPZKP30gbFm54bvLl
	NY0cucQFhWCNYeBYZXpHue/3fpcwaIsYYSKCxSQ5WRHCgOEEYG9gLeNNxKvEym78
	UzYZaUHeQTlhXKUk969kFoFsvtBsb0do4OlJ1tattxK/s7xo9lwUmOSaw0ghob16
	Ac5Olw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 485v1xjc50-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 18:35:06 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-7075d48a15bso1055866d6.3
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 11:35:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753900505; x=1754505305;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qeQ+Jwe6tBBCJ8zRzKqHqrhVE6H4UDXs7p1wpuAs4qc=;
        b=OT3hZMVOa+3qwCLM9PtTblcndXswFKpYQW8LdsX+fcH2YatMW7D9vZZ3iy0IWVeyK7
         ULutDExycz/0XCBSb2s8LxC5EY/rl5c6qh5VuGo15W7hTXc49twm8wp+5k/bG8Ns9iAw
         VJcddzrIz3pvDmJMGKkAZHdGjflpvsDRsZAV8910ml8FgmcBP3DDic7TDWrYlOJxpRxt
         cuTWZFOPC0E86zAZw74bb1y4WER8yFtfmw4F/rzgfNpZ/Y42riOgSivZfMYnGPyoENYE
         dS2c+Hk+hd6iYPIdTTuYJwFXY4+LyKw4wNvucSnVbn6K0hsHv6PA1kLtu+WGJeEMyo0I
         Siqw==
X-Forwarded-Encrypted: i=1; AJvYcCWa+pAzpBEBpGG8AK3x9zFS20G8NhlXUN4N/syBTk0u8LEn6Ci8hxhL3tZJEFohGxN2yLxYo/YYyLZy@vger.kernel.org
X-Gm-Message-State: AOJu0YzbbmS6I/ndmjAmdjVIZ1lgb/MTp+IeRRePeQHRB/sIZUKSR9It
	6PZRavNtmjpQaBoQ5TKOX9/gZe8OIt1Pj2uIh1pVWDmJMMC0RPIL+Y1dzgDCQ3I8MsDsaqvHkIl
	uJ1ekoFzThAd/0oWW0Aeq9rUIHaCJGy3vkp7PesUvGl28YFr9cVAdLqIqno11qpw+
X-Gm-Gg: ASbGncuoGcROT1GeeSyMycPR1IdNWCYm73hfjt7lAK1ekHNhx6Ws2e5U2DsZKT55Anx
	Xtsxm2tzx3VSaqIwHt+gJWMRe8IoYffAeCw7RdbweykXtLogKzyidMYRp8TJ8nPK4+eQFSxvi8s
	6ZTCcVvpAiD4PFoCsjkeTdbGUpNWNh+7SfC9wKfxkHpiBkfqSwe8yREN72VR6KIp9wtzwzmQsKI
	bYj+65D0c8L+wKAQsFJ9GXKdK/rLalFW7g/6WdTNBPD1wTDxGpxyN7vDw2CXrsgnwB54wzj21PD
	TZB8jmNo2dm4o8KflIj2wKo/mpcCXt+CeQQgLL0fn4PgJjwupHgHqjXUPwHLwJOum2375d5ASVT
	HPz5ib4TX2wdz/+7SNOY6KWEBWQuMJufMR+JZRDL8LwarARlh9lFS
X-Received: by 2002:a05:6214:4705:b0:707:75cb:60b4 with SMTP id 6a1803df08f44-70775cb6130mr14420916d6.41.1753900504944;
        Wed, 30 Jul 2025 11:35:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEyD8wbKesTPaUNkvnO8IF3mRX3OX9dDMnWFlB/T+fN/kELAp+CAVujEZjIvCvLTQWvOmHIFg==
X-Received: by 2002:a05:6214:4705:b0:707:75cb:60b4 with SMTP id 6a1803df08f44-70775cb6130mr14420266d6.41.1753900504174;
        Wed, 30 Jul 2025 11:35:04 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b6316d9f2sm2223927e87.12.2025.07.30.11.35.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Jul 2025 11:35:03 -0700 (PDT)
Date: Wed, 30 Jul 2025 21:35:01 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        konrad.dybcio@oss.qualcomm.com, fange.zhang@oss.qualcomm.com,
        quic_lliu6@quicinc.com, quic_yongmou@quicinc.com
Subject: Re: [PATCH v2 02/13] dt-bindings: phy: Add binding for QCS615
 standalone QMP DP PHY
Message-ID: <ffdvzupefzhqq7fqtloycc3xzu57i55ths73xcjftor2cifuzr@5vhq2hfmkvda>
References: <20250722-add-displayport-support-for-qcs615-platform-v2-0-42b4037171f8@oss.qualcomm.com>
 <20250722-add-displayport-support-for-qcs615-platform-v2-2-42b4037171f8@oss.qualcomm.com>
 <jemfu5sy7k4a2iar55im5bhyhxzlrwpftmpqmps3b2tco7r6a2@oodls7gi45yy>
 <e673a3a3-6924-49db-9040-e34b82199a43@oss.qualcomm.com>
 <w3rwao5wbmstdyics6qhp7beulbbp5ludqkwpfsmevgqmzz3d6@u2e533zlitkr>
 <e5a3f05f-9775-4e3d-ae7d-ebbca14b4df5@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e5a3f05f-9775-4e3d-ae7d-ebbca14b4df5@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzMwMDEzNSBTYWx0ZWRfX2ihYF10Zb2XZ
 b0v8pniXndTtbXlbGM7qEeNNqgXqGfiKHYC0W1UPjQOf3QHDDxbKJ2Yv3ekqOW/PK9TMsIOiVS6
 dzr+E0NiE/a0EfJ97XahH5Rua9fnWPNKC3QPlXaF3HYmreAoBNk3FoMKtIXkx0L7rj8QSafd5S2
 APtTBm9OJuWTaA96B+oTEfeKEZyfGR+SbPylscVcYzpfjoZAbymVwWqFXCPOvvxJIG7K4WOxxL5
 0fJO1SpU+3jtxuDoco7B4QE0eO40AzuHYzhDf4KnkSEL7W9eLGonxmcCyeVgzrY8cdUy6VZ/7Gv
 I8XuxCaxf8YBIfHHY7hpTZqgAKn3+9PXU/A7yZfXK5doP9Tr39vFjTghgQL3RyNTrW7HaSfnoG1
 cX2fRzgo9s7CChJdx+X1E6kwmfAFw3FZnjhSQ4FHDyEnCC+hj0xe02SrCz0hOnmhBU2Ehfdp
X-Authority-Analysis: v=2.4 cv=JKw7s9Kb c=1 sm=1 tr=0 ts=688a65da cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Wb1JkmetP80A:10 a=Oh2cFVv5AAAA:8 a=EUspDBNiAAAA:8 a=9txEVjketrlP7N9thScA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
 a=7KeoIwV6GZqOttXkcoxL:22
X-Proofpoint-ORIG-GUID: w56V_W4L3zIgcvGh6W5vPrmz__REyyvY
X-Proofpoint-GUID: w56V_W4L3zIgcvGh6W5vPrmz__REyyvY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-30_05,2025-07-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 phishscore=0 lowpriorityscore=0 bulkscore=0 malwarescore=0 clxscore=1015
 mlxlogscore=999 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507300135

On Wed, Jul 30, 2025 at 04:53:16PM +0800, Xiangxu Yin wrote:
> 
> On 7/22/2025 8:41 PM, Dmitry Baryshkov wrote:
> > On Tue, Jul 22, 2025 at 08:05:06PM +0800, Xiangxu Yin wrote:
> >> On 7/22/2025 4:38 PM, Dmitry Baryshkov wrote:
> >>> On Tue, Jul 22, 2025 at 03:22:03PM +0800, Xiangxu Yin wrote:
> >>>> Introduce device tree binding documentation for the Qualcomm QMP DP PHY
> >>>> on QCS615 SoCs. This PHY supports DisplayPort functionality and is
> >>>> designed to operate independently from the USB3 PHY.
> >>>>
> >>>> Unlike combo PHYs found on other platforms, the QCS615 DP PHY is
> >>>> standalone and does not support USB/DP multiplexing. The binding
> >>>> describes the required clocks, resets, TCSR configuration, and clock/PHY
> >>>> cells for proper integration.
> >>> Simply put: no, this is not correct. Even if you go to the SM6150 block
> >>> diagram, it points out that DP uses the USB3 PHY, not a separate DP PHY.
> >>>
> >>> I thought that we have discussed it beforehand.
> >>>
> >>> I can quote my comment from the previous thread:
> >>>
> >>>>> No. It means replacing extending existing entries with bigger reg and
> >>>>> #phy-cells = <1>. The driver must keep working with old node definitions
> >>>>> as is to ensure backwards compatibility. New nodes should make it
> >>>>> register two PHYs (USB3 and DP). On the driver side modify generic code
> >>>>> paths, all platforms supported by the driver should be able to support
> >>>>> USB3+DP combination.
> >>> Looking at the hardware memory maps:
> >>>
> >>> MSM8998: USB3 PHY regs at 0xc010000, DP PHY regs at 0xc011000
> >>> SDM660: USB3 PHY regs at 0xc010000, DP PHY regs at 0xc011000
> >>> QCM2290: USB3 PHY regs at 0x1615000, DP PHY regs at 0x1616000
> >>> SM6115: USB3 PHY regs at 0x1615000, DP PHY regs at 0x1616000
> >>>
> >>> Now:
> >>> SM6150: USB3 PHY regs at 0x88e6000
> >>>         USB3 PHY regs at 0x88e8000, DP PHY regs at 0x88e9000
> >>>
> >>> I do not know, why msm-4.14 didn't describe second USB3 PHY. Maybe you
> >>> can comment on it.
> >>>
> >>> But based on that list, the only special case that we need to handle is
> >>> the first USB3 PHY, which doesn't have a corresponding DP PHY block. But
> >>> it will be handled anyway by the code that implements support for the
> >>> existing DT entries. All other hardware blocks are combo USB+DP PHYs.
> >>>
> >>> Having all of that in mind, please, for v3 patchset implement USB+DP
> >>> support in the phy-qcom-qmp-usbc driver and add the following logic
> >>> that also was requested in v1 review:
> >>>
> >>>>> Not quite. Both USB3 and DP drivers should be calling power_on / _off.
> >>>>> If USB3 is on, powering on DP PHY should fail. Vice versa, if DP is on,
> >>>>> powering on USB should fail.
> >>> I think our understanding might not be fully aligned. 
> > I did not write this. Please fix your mailer to quote messages properly.
> > As you are using Thunderbird, I'm not sure where the issue comes from.
> >
> > Also please fix it to wrap your responses somwhere logically.
> >
> >>> Perhaps this is because I didn’t accurately update the mutual exclusion relationships and test results for the different PHYs. 
> >>> Let me clarify my latest findings and explain why I believe these are separate PHYs that require mutual exclusion via TCSR.
> >>>
> >>> 1. About the TCSR DP_PHYMODE Registers
> >>>
> >>> MSM8998/SDM660:
> >>> 	Only one TCSR_USB3_DP_PHYMODE register at 0x1FCB248.
> >>> QCM2290/SM6115:
> >>> 	TCSR_USB3_0_DP_PHYMODE at 0x3CB248
> >>> 	TCSR_USB3_1_DP_PHYMODE at 0x3CB24C
> >>> SM6150:
> >>> 	TCSR_USB3_0_DP_PHYMODE at 0x1FCB248
> >>> 	TCSR_USB3_1_DP_PHYMODE at 0x1FCB24C
> > SM6150 has two different sets of output pins, so the first register
> > covers first set of SS lanes (which are routed to the documented SS
> > PHY), the second register covers the second set of SS lanes (which are
> > routed to the DP and secondary USB PHY).
> >
> > I can only assume that the same configuration was supposed to be
> > applicable to QCM2290 / SM6115, but was later removed / disabled, while
> > the registers were kept in the TCSR block.
> >
> >>> Even though MSM8998, SDM660, QCM2290, and SM6115 all have one USB3 PHY and one DP PHY, the TCSR DP_PHYMODE register configuration is different on each platform.
> >>>
> >>> Additionally, I found some interesting register documentation for QCM2290/SM6115:
> >>> 	TCSR_USB3_0_DP_PHYMODE: “In kamorta this one is for mobile usb. DP not supported.”
> >>> 	TCSR_USB3_1_DP_PHYMODE: “DP mode supported for Auto usb in kamorta.”
> >>> I think the reason for having two different TCSR registers is to allow both the USB3.0 and DP PHYs to be useds at the same time in certain product configurations.
> > Sure. One for the first PHY (USB), one for the second PHY (USB+DP).
> > If you check the memory map, you will find the second VLS CLAMP register
> > for the second USB PHY.
> >
> >>> 2. SM6150 Test Results
> >>> When TCSR_DP_PHYMODE_0 is switched to DP, the USB3 primary PHY cannot work, and the DP PHY is also not functional (possibly due to clock lack or other configuration mismatch with this TCSR setting).
> >>> When TCSR_DP_PHYMODE_1 is switched to DP, both the USB3 primary PHY and the DP PHY work normally.
> >>> I think "why msm-4.14 didn't describe second USB3 PHY", because TCSR_DP_PHYMODE_1 always works in DP mode.
> >>> https://android.googlesource.com/kernel/msm/+/af03eef7d4c3cbd1fe26c67d4f1915b05d0c1488/drivers/gpu/drm/msm/dp/dp_catalog_v200.c
> > Here it still programs the TCSR register.
> >
> >>> Based on these info, I believe these are separate PHYs, and only the
> >>> TCSR DP_PHYMODE registers determine which USB3/DP PHYs are paired or
> >>> mutually exclusive. This is why I have maintained separate private
> >>> data for each PHY and implemented Power on mutex control via TCSR,
> >>> rather than using a qmp_combo-like structure.
> > Still, no. Check the block diagram of SM6150.
> >
> >>> Given the above, do you think we still need to force USB and DP to be strictly bound together like a combo PHY?
> > Yes.
> 
> I checked the related PHY series and block diagrams again.
> 
> PRI and SEC go to different nodes based on the SoC design, and there are two types of configurations: USB3-only and USB3+DP pairing.
> 
> Before proceed the v3 patchset, I’d like to double-confirm whether the following structure is what you expect:
> 
> usb_qmpphy_1: phy@88e6000 {
>     compatible = "qcom,sm6150-qmp-usb3-prim-phy"; <== rename to PRIM

No, we already have a compatible name and DT schema for this device.

>     ...
>     qcom,tcsr-reg = <&tcsr 0xb244>, <&tcsr 0xb248>;
>     qcom,tcsr-names = "vls_clamp", "dp_phy_mode";

No need for qcom,tcsr-names. Second TCSR register should be optional in
the driver.

>     
>     #clock-cells = <1>;
>     #phy-cells = <1>;

#clock-cells = <0>;
#phy-cells = <0>;

>     ...
> };
> 
> usb_qmpphy_2: phy@88e8000 {
>     compatible = "qcom,sm6150-qmp-usb3dp-sec-phy"; <== SEC SS, use usb3dp to indicate DP capability

qcom,sm6150-qmp-usb3-dp-phy

> 
>     reg = <0x0 0x088e8000 0x0 0x2000>; <== SS2 base address and offset define in driver config
> 
>     clocks = <&gcc GCC_AHB2PHY_WEST_CLK>,
>             <&gcc GCC_USB3_SEC_CLKREF_CLK>; <== This SoC has no USB3.0 SEC SS clk
>     clock-names = "cfg_ahb",
>                 "ref";
>     clock-output-names = "dp_phy_link_clk",
>                     "dp_phy_vco_div_clk";

No need to, the driver can generate names on its own.

>                     
>     resets = <&gcc GCC_USB3PHY_PHY_SEC_BCR >,
>          <&gcc GCC_USB3_DP_PHY_SEC_BCR>;
>     reset-names = "phy", "phy_phy";

"phy_phy", "dp_phy". Is there no GCC_USB3_PHY_SEC_BCR?

> 
>     qcom,tcsr-reg = <&tcsr 0xbff0>, <&tcsr 0xb24c>;
>     qcom,tcsr-names = "vls_clamp", "dp_phy_mode"; <== added for backward compatibility with legacy configs that only had vls_clamp

No need for qcom,tcsr-names, correct otherwise.

> 
>     #clock-cells = <1>;
>     #phy-cells = <1>;
> 
>     status = "disabled";
> };
> 
> >
> >>>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> >>>> ---
> >>>>  .../bindings/phy/qcom,qcs615-qmp-dp-phy.yaml       | 111 +++++++++++++++++++++
> >>>>  1 file changed, 111 insertions(+)
> >>>>

-- 
With best wishes
Dmitry

