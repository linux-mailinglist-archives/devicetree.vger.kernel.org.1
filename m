Return-Path: <devicetree+bounces-180963-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 92EB0AC5C05
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 23:10:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 53F351679C5
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 21:10:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08CB72101AE;
	Tue, 27 May 2025 21:10:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="n3ocTpMZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72E2820FAA4
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 21:10:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748380210; cv=none; b=BNMLyUigS9Vqv7AoQ8S+5jf5S22ljrry0GCLnJKwpllF6SEMRsFU1vsBljaaWgW9pxWQ5h3Dajn3fY3ewID1Sgw8ICYMWZTSMmIhW+JZpHGPnekzTKc65/gNwid3x0D8vtXx+LVOnspsthDTB/DtvusPle1NWvVRg8cuU7E2Hdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748380210; c=relaxed/simple;
	bh=bgfd2MyeO4l8nu/jbExs/RPpGS8mZ6SIMNV/QjcbpQY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eMD/HNJ7leMrhxxzE+C+Hf+8uqh9k4DrBdveacgkPtqCRoCLGhTCWGWHK5WxdnfrETfZhj13EZkUOeO1kUetBtu++7A/xnTZWcKIQie9GCw3tPm/QzhQspLQxeKkQg3Gse+F+lJbkgQP+JT/wlS6NRY560oTIyH+DveBABwJBmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=n3ocTpMZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54RCGUQK022296
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 21:10:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=KTU6QlFT8LoXjBrmfp2AVZLy
	jUeZzltGjXBheEes3Qw=; b=n3ocTpMZxTkk9CXLjdp7+kJe+XGZa99d1W8OOOgQ
	3sxcsDutvZiIp4LpIawJS2OKqTf1WYXsc+Sqhlk0JPQqkSgPGhwMY3iD3yd8JOAC
	3uzo0UhDTL4+J8VHJxZLMix19ohtsGCIE4p3jF6/xk89aWU1k0vleTBkBMVv1uET
	1QmLqN/MtXfy4Spsjm6Ng1ilYW3SU9UmGIrwabiI1ptBAGAu+PehMSUNi/ID7nnE
	IpBwE6ghBHj0jN7TxxwS8znpKToZAjQVBlSgYorBOmDqdlxYgt0TWMJungjnVg8I
	LJ6w2IurZEUlGuhke+L2Njha5CqWHR4jcZ8OOg7dqSLt5Q==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u3fq8eer-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 21:10:08 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7cd06c31ad6so43735285a.0
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 14:10:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748380207; x=1748985007;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KTU6QlFT8LoXjBrmfp2AVZLyjUeZzltGjXBheEes3Qw=;
        b=eH9/tORwrSIitOVi/jcizlq9wOqJD4Oka0slHxGT9wx2AXNW86Vhe/igBUiq8RLvXL
         LEIatro0d44YQ8zN72Ikfg1g+1SKXkzr6pMZmjo0zGUQDjtg95AthKpE0mveBwQGwpxR
         xSFG/iLs5YT8dSqVOsueRfWniqnM206X/UuTG84T1/1lS7e6M3gIHCDPiXpMMvRy4VRW
         MqFQbMPUfA1v57YPYrGi5uHC6ZviATl+JG3ooAb5Xdov8pVRJMw8d0lQ82eAeBA8js68
         KalqLvda4+eSh3j4138StYCy1ODziya+SlNyEDegNd1G6ie4og1/psn6FvF13C1OuRO/
         aAkA==
X-Forwarded-Encrypted: i=1; AJvYcCX9/4jrmc6dVjbiqkNI7NyX0lO4GWVNvxGtNymMtlVOnIGM1Nf0A+iSkzRSfMaNItnMbgCliPIYpcIA@vger.kernel.org
X-Gm-Message-State: AOJu0Yxle3unaEfcnp+Dwa/Xf14D8iGaYzb9/Yzz4SFsaztLKwgxp3Qz
	WMnsdJh+MeyekMjl+GH0NlHzfAP4f6RaNehSgPtesoQ5b0Aa+1QvrVEBcb82TUYjXmDfjBD1PUH
	73ZHXCGMKCm4RDXGI79yM6eeMDiy1Cb+KG7qrjSUpoRYxSJgFc1L8bB4/qnml5u4D
X-Gm-Gg: ASbGncsu+9lN1Y6GV9V+c/kZekX+2Ok+KZ0RFuCYR5nBTWqVF2ZGJbrmRAyRt6nwiHb
	NPTZEFM5w+5OW38OkmGdQeIN6KIv9WDeztFSzB1yvGp8wVbkhxRrqLIZP68QsuCFH+1yGg/AbxZ
	CtGOtPNZyQi69KVKxjvukkl0bY3ojFCbrGWvaQNQqkGC2upvDXZ9E/b7pF9B2AMsBrWU4quCj6t
	forO9dhL7La+Zwi3VD90GptiGrhKiDkkqqfltAfbsK5/tvnFgUR0y5nr1Iy1ePHZjIhvv9rLKvo
	PkAGOxiqUhvsgleD5IteOluSL7K2egcpuNHA+iZWTIxHw2yxT+ToHD727ah98AyVZYSBEBUzbE0
	=
X-Received: by 2002:a05:620a:414d:b0:7ce:e9d4:4fb1 with SMTP id af79cd13be357-7cf06d3aa98mr304095685a.8.1748380207175;
        Tue, 27 May 2025 14:10:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFC5Ad4ysV6+XlrFyXeReg/9nW+7rJ89ue2KKwQKeT9Y6m1nBBLy1fCB8SouNPS6nsn646Ekg==
X-Received: by 2002:a05:620a:414d:b0:7ce:e9d4:4fb1 with SMTP id af79cd13be357-7cf06d3aa98mr304091885a.8.1748380206726;
        Tue, 27 May 2025 14:10:06 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5532eddcee4sm32257e87.27.2025.05.27.14.10.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 May 2025 14:10:05 -0700 (PDT)
Date: Wed, 28 May 2025 00:10:03 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v3 0/6] arm64: qcom: allow up to 4 lanes for the Type-C
 DisplayPort Altmode
Message-ID: <styd5gjksbsqt7efylpfn6bgwgyvt6zexxiooihjsnmp25yigp@unq7dor6gso2>
References: <20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com>
X-Proofpoint-GUID: GEVlWqH1lenRAr55pPZ9tSENMvLgZjGB
X-Proofpoint-ORIG-GUID: GEVlWqH1lenRAr55pPZ9tSENMvLgZjGB
X-Authority-Analysis: v=2.4 cv=X8FSKHTe c=1 sm=1 tr=0 ts=68362a30 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=gwmzPixrIpoEWUPfHWUA:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDE3OCBTYWx0ZWRfX+e3QaY5aev7s
 nLhecRxF3OI/CXtpB7poY9fChWYrEn/ld4FNXHzLJzDdesITsaWsikLB/mUk19UO5/2FC1tlWz5
 NZ0dw+qMMxtMyxoF6tJ1aACqQMr8pko0H4uc8zei8tSUsajGh0/dYqw7IuYwPjarN4ubNvVGwcK
 6WcGGS9o3349YKxGRw3rTRGPgyk0VQhBSmxqXkV+Jbn4ePS/umP/h/hi1OG7IgeyMUzO4QZt0xY
 2sNslfdWq8fHOA0B4chjzgfDcuXA0qG2Z5bk68De5NltnnI3Vsz2f4L1KHPG+fruERJrvxzYi1p
 EZx0drEK56CYZlT/9WnojYggoNhXD3+UQOHNuwv8Ki8m/f3lB7HORYEjBdjzn5fSh5VptB4lfIK
 Q115Sx3RBcmj2N8G4bZk8t16dmBN4ZrEPTI1M/bWHg/slwLS0I7WY0LEs77xIdGUG69BZeQr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_10,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 phishscore=0 bulkscore=0 mlxlogscore=999
 mlxscore=0 clxscore=1015 priorityscore=1501 spamscore=0 adultscore=0
 malwarescore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505270178

On Tue, May 27, 2025 at 10:40:02PM +0200, Konrad Dybcio wrote:
> Register a typec mux in order to change the PHY mode on the Type-C
> mux events depending on the mode and the svid when in Altmode setup.
> 
> The DisplayPort phy should be left enabled if is still powered on
> by the DRM DisplayPort controller, so bail out until the DisplayPort
> PHY is not powered off.

This series doesn't seem to solve the USB side of a problem. When the
PHY is being switch to the 4-lane mode, USB controller looses PIPE
clock, so it needs to be switched to the USB-2 mode.

> 
> The Type-C Mode/SVID only changes on plug/unplug, and USB SAFE states
> will be set in between of USB-Only, Combo and DisplayPort Only so
> this will leave enough time to the DRM DisplayPort controller to
> turn of the DisplayPort PHY.
> 
> The patchset also includes bindings changes and DT changes.
> 
> This has been successfully tested on an SM8550 board, but the
> Thinkpad X13s deserved testing between non-PD USB, non-PD DisplayPort,
> PD USB Hubs and PD Altmode Dongles to make sure the switch works
> as expected.
> 
> The DisplayPort 4 lanes setup can be check with:
> $ cat /sys/kernel/debug/dri/ae01000.display-controller/DP-1/dp_debug
> 	name = msm_dp
> 	drm_dp_link
> 		rate = 540000
> 		num_lanes = 4
> ...
> 
> This patchset depends on [1] to allow broadcasting the type-c mode
> to the PHY, otherwise the PHY will keep the combo state while the
> retimer would setup the 4 lanes in DP mode.
> 
> [1] https://lore.kernel.org/all/20240527-topic-sm8x50-upstream-retimer-broadcast-mode-v1-0-79ec91381aba@linaro.org/
> Changes in v3:
> - Take the series from Neil
> - Rebase
> - Rename many variables
> - Test on X1E & X13s
> - Apply a number of small cosmetic/codestyle changes
> - Remove some unused variables
> - Some smaller bugfixes
> - Link to v2: https://lore.kernel.org/lkml/20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-0-a03e68d7b8fc@linaro.org/
> Changes in v2:
> - Reference usb-switch.yaml in bindings patch
> - Fix switch/case indenting
> - Check svid for USB_TYPEC_DP_SID
> - Fix X13s patch subject
> - Update SM8650 patch to enable 4 lanes on HDK aswell
> - Link to v1: https://lore.kernel.org/r/20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-0-07e24a231840@linaro.org
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
> Konrad Dybcio (1):
>       phy: qcom: qmp-combo: Rename 'mode' to 'phy_mode'
> 
> Neil Armstrong (5):
>       dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Reference usb-switch.yaml to allow mode-switch
>       phy: qcom: qmp-combo: store DP phy power state
>       phy: qcom: qmp-combo: introduce QMPPHY_MODE
>       phy: qcom: qmp-combo: register a typec mux to change the QMPPHY_MODE
>       arm64: dts: qcom: sc8280xp-lenovo-thinkpad-x13: Set up 4-lane DP
> 
>  .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         |   7 +-
>  .../dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts     |   6 +-
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 182 +++++++++++++++++++--
>  3 files changed, 173 insertions(+), 22 deletions(-)
> ---
> base-commit: 460178e842c7a1e48a06df684c66eb5fd630bcf7
> change-id: 20250527-topic-4ln_dp_respin-c6924a8825ce
> 
> Best regards,
> -- 
> Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 

-- 
With best wishes
Dmitry

