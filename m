Return-Path: <devicetree+bounces-256664-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA2AD39E88
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 07:33:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4CABA3038076
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 06:33:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8864425F7A9;
	Mon, 19 Jan 2026 06:33:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pRB21Vh7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RnANnTmN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D9BE234966
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 06:33:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768804389; cv=none; b=sf428cynpesnkg1UQE3SSUoOgQcoi8kX8NSXGdHysSXmhfAp//1f3AmkI8s/5ljslM5sPc4Ta4jtO41uIWF3cqCVjX0r9ZNkHTYdpsculZ7wdPX4bp9gRBSABB0My7EFWJKuBxLYbvLMTbhA3JbZPWDX1/cMdSgyRXH0tqGXOZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768804389; c=relaxed/simple;
	bh=3Vj40UZBPf9P1cZtv23nglhfop56SnIqNtbrp+4euMI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RAsGeu4eXnRyHPDRyCNlZYmQ2f4aP+GXcsMKbW0CTh1Lb5Y+jPVGThCvr7PYyLDsUyCP8j9PiVsAnibjMOpzFBlVzK49Q2pzsZEPmamR4IFuNtvg7jvtSJ2P0OFCZb54y01tEQy5RNdjT4OmwZ/93hl+b1q10xjLpa3IEDLiWe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pRB21Vh7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RnANnTmN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60IK2FgL3910883
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 06:33:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=8/zejiEHMPmrNrr5ntutP7bS
	CiAHEOSGtD0aZ1q4iQ8=; b=pRB21Vh7ebPZucBbPU0DBkNLZVOGc4kvo1gL9CL8
	SJXPjzds8JBytJBYOtHAtl/0Pq4qN8t1QNUbcamEgRL/t1Ww2oIPrAF97SdPugR9
	kRj28kISMci9SxDArxlsKskw7xROnQFazm6/1NmXMjDjLxTi0NsMW/z4G5KqaHG/
	i3lyrRocgVb6KODgZ7l+NVl8su0LRLiIcw+dV8R+XYUDopOz+T6TgCwaW+WDXyyk
	8yjLdIfzGhTveaA7XBLm9bp5r6DYv8qMgEqAMhqBskNqCAtwpF3fltaRd1I3SUkd
	EQVReg4qCryelGjwQB3uv0NqnmqCsskoknShpYIpNjXkpA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4br1cqc30k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 06:33:07 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c6a0ec2496so789908485a.1
        for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 22:33:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768804386; x=1769409186; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8/zejiEHMPmrNrr5ntutP7bSCiAHEOSGtD0aZ1q4iQ8=;
        b=RnANnTmN4URaNt3bCBoZ3o3e40HrSqP0xBPUNnsEF+c/RCYPbf6xk2zGzTit8MxE11
         vFNEImb+FQ49XvT5JtOxVMrCWq4+Xm+jxRUubyzFXsm8lL8dN178YRXCYSivt0DDZ93E
         Iu8XqPfGVuKLlyFL9D4bC8uatQElF3pkvapzz6GFYyuIul+0pi/7FCz222qx6bLU1R2E
         7LlSQBM4Z2hK5Xc2NscKkhAThEbiD4G1seFx6IY3O/9G8Nd1Caqn0mIwGOLDthwLE7dy
         MM8mJDDxbd7hzEJ/9QVmaXvzlAy0zjanJfE2IlxLn7K4tPwoTCWywg/UzaYWmlzKL2Xa
         9Y1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768804386; x=1769409186;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8/zejiEHMPmrNrr5ntutP7bSCiAHEOSGtD0aZ1q4iQ8=;
        b=vJd5xKp9Ao6X9OHzXFjTL+QIrZT6hUma/KE+ARS+k00QA4xScL02DUH8a8FZckx1bv
         fIXC1j7S1mLzh8VnXkjJhA9dhSQ4j7VOz5oO/0LanosTwKb5gWA5f3y2sM4wHOEUxiIi
         KqvabgSnW/bPBUqb8VlBsvaTmWWl0ToaLlYocPC9wJUKwtkuNEC96pQKHEpX6S6DYhi0
         8D2Z/XsR8Uhgc7CWj+DSVP551RwO8C/4qFbxa5NAqy3K3r235A2M+4cAwLYLPU1KcF/v
         j4Iipk6VbEYWB4Re5+O1f66s2AJ6gnevuLPYqsSHsDED1RlfiAgxbGP84yPGvtEpcnbL
         qSsQ==
X-Forwarded-Encrypted: i=1; AJvYcCXjFRvJQFSsNbGqxs0rgMGNecXy78w7KbK9O/F1TAhwmAsBoIv9TTWpb5Y9WwQ4mA75N045uqnkVa3X@vger.kernel.org
X-Gm-Message-State: AOJu0YwgKClgsHxhQVqD4VvmaJLMgQWJ9foKeCMCQTdk6OVrnhtEJPvp
	XlD/yqaR3Q2dTRMqc7Zt74k8N5GxOyYLoh5aN2GA3eNhLIKK1Vxj2yqOyP7eAEoyTKYS9wkpFOA
	sXeU3jTuk3cFdUPCqoYsjqMsJtwwekzrWo2aUBeUUbLufFVbuv7u7vmZ+7qnC6hiH
X-Gm-Gg: AY/fxX485lgkvdjcHOi7h5w37p10FXWLB1LZMYaWztHKudvePLoqYgPaDyOX52gzwmY
	b6ktEKT9jhkpDTFqCRRwvz9h+YdFzlubfNSf0mLSVWoDGy6b2EX70GE/QjYb2Xj8LwsLmjhzyuY
	Le8BWGXNufNXAQsDyKlqOzeufvuyNNuq7FF14JKhOtgCfoWgjXd7HsCeIGyag9DC6R5yyko21Iy
	eImopwCUpj/Em6r/CKlodIqBYWSqXpV4DgEM5/LD4qXlq1wLbeqyAsKjlpwIeyWwvmu0T0i6VP3
	JdcSCQkDdYAXh636vsPFXZTDAozCjmbecTqcH7uVzEUgtic6e5puumIIrtCePH75KJ0BCiDzQoE
	ug8kIWkm3PXD3jcGz7vOOL9RYlU+ImpJxxXKiLpnxUmrBM+E6zquBME28qzHF4BhEgVniDSGDxs
	0HJpkr90cSBn15yodX4VKb2+c=
X-Received: by 2002:a05:620a:3910:b0:8c5:3881:da90 with SMTP id af79cd13be357-8c6a67a1fccmr1485257985a.75.1768804386379;
        Sun, 18 Jan 2026 22:33:06 -0800 (PST)
X-Received: by 2002:a05:620a:3910:b0:8c5:3881:da90 with SMTP id af79cd13be357-8c6a67a1fccmr1485256785a.75.1768804385928;
        Sun, 18 Jan 2026 22:33:05 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59baf352846sm3070297e87.38.2026.01.18.22.33.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jan 2026 22:33:05 -0800 (PST)
Date: Mon, 19 Jan 2026 08:33:03 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wei Zhang <wei.zhang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6] arm64: dts: qcom: qcs8300-ride: enable WLAN on
 qcs8300-ride
Message-ID: <k6elnnmc6pblbf6mndb3jwaave2iccytwpbg3f6oo6yqzahyoy@4mljaxcq366u>
References: <20260119041101.2685092-1-wei.zhang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260119041101.2685092-1-wei.zhang@oss.qualcomm.com>
X-Proofpoint-GUID: mJ22nYdvklZpu_9LeB1JRiXJr7dO2o6a
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDA1MSBTYWx0ZWRfX1j8vtSDz1wMg
 k49P9L+qDIFLJYdYolicqYpFGzWiTOGPD3rgkwHUozKJlbJGhY5+BAV0Rjxzm0yvLor6137Y9Hb
 wWg+IG4wRnf0dJEUS7qprFTw//JObaTjUclbaD2/LTqxZ1HUw9UAyot3GnZu7PIFyzFh/ULTwuM
 oLUsPwYyvHtX4qxqQBFMd8lQaIGmupRPLQqFtGwTp8xKIv+YVXM4Y5gGZCKH0PSv4HVK4OeYC2J
 37QHtkGitXrdNNAx7p1bTXlAdo71IWTpxxm8QTFxM/nFSTLd/736OlPc1IzG8Gh3Nl9Bog+jyjO
 J/S7TUT/lC37W4XuCMSg5298UcBbZIBLZdgE4/0JpI0qvoAWPOX+9Cm8ZcFISbmQDbmJrBAZl1B
 FQtKoj/cKB+J1knVIqhXjxwJdP8zs17F+q387Q8kpbmFdkg73YTxs8M+xIeeDcoO+itS7Op2MLE
 3zj4xuyRi6oy645y/cA==
X-Proofpoint-ORIG-GUID: mJ22nYdvklZpu_9LeB1JRiXJr7dO2o6a
X-Authority-Analysis: v=2.4 cv=NfbrFmD4 c=1 sm=1 tr=0 ts=696dd023 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=RAcZDtF_tHjv-8NrTeEA:9
 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_01,2026-01-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 adultscore=0 suspectscore=0 impostorscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601190051

On Sun, Jan 18, 2026 at 08:11:00PM -0800, Wei Zhang wrote:
> Enable WLAN on qcs8300-ride by adding a node for the PMU module
> of the WCN6855 and assigning its LDO power outputs to the existing
> WiFi module.
> 
> On the qcs8300-ride platform, the corresponding firmware and BDF
> are QCA6698AQ instead of WCN6855, which have been added in the
> 20250211 release.
> 
> Signed-off-by: Wei Zhang <wei.zhang@oss.qualcomm.com>
> ---
> This patch depends on:
> - PCIe
> https://lore.kernel.org/all/20251128104928.4070050-1-ziyue.zhang@oss.qualcomm.com/
> 
> Changes in v6:
> - Rebase patches
> - Remove unintended 'output-low' from wlan-en-state pinctrl (Konrad)
> - Link to v5: https://lore.kernel.org/all/20251113055148.2729943-1-wei.zhang@oss.qualcomm.com/
> 
> Changes in v5:
> - Rebase patches
> - Flip the order of property-n and property-names (Konrad)
> - Flip the order of bias and output property (Konrad)
> - Link to v4: https://lore.kernel.org/all/20250325075331.1662306-1-quic_stonez@quicinc.com/
> 
> Changes in v4:
> - Rename the symbol pcieport0 to pcie0_port0 (Konrad)
> - Adjust the property order in node pcie0_port0 (Konrad)
> - Add to the commit message mentioning FW and BDF used by QCS8300 (Dmitry)
> - Specify the calibration data using the correct variant (Dmitry)
> - Link to v3: https://lore.kernel.org/all/20250318093350.2682132-1-quic_stonez@quicinc.com/
> 
> Changes in v3:
> - Complete the nodes property definitions according to DTS binding requirements (Bjorn)
> - Link to v2: https://lore.kernel.org/all/20250227065439.1407230-1-quic_stonez@quicinc.com/
> 
> Changes in v2:
> - Rename the nodes name according to DTS coding style (Konrad & Krzysztof)
> - Provide regulator-min/max-microvolt to the regulators (Konrad)
> - Link to v1: https://lore.kernel.org/all/20250210062910.3618336-1-quic_stonez@quicinc.com/
> ---
>  arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 107 ++++++++++++++++++++++
>  1 file changed, 107 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> index 68691f7b5f94..9a5de3754cc1 100644
> --- a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> @@ -33,6 +33,88 @@ regulator-usb2-vbus {
>  		enable-active-high;
>  		regulator-always-on;
>  	};
> +
> +	vreg_conn_1p8: vreg-conn-1p8 {

I wonder hopw I didn't notice it earlier. What is the name for other
regulator nodes in this file? What are the name for the regulator nodes
you are adding? Why do they differ?

> +		compatible = "regulator-fixed";
> +		regulator-name = "vreg_conn_1p8";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		startup-delay-us = <4000>;
> +		enable-active-high;
> +		gpio = <&pmm8650au_1_gpios 4 GPIO_ACTIVE_HIGH>;
> +	};
> +

-- 
With best wishes
Dmitry

