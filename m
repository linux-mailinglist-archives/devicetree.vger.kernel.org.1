Return-Path: <devicetree+bounces-243798-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 09357C9D028
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 22:06:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 401E23A46AA
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 21:06:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14BCE2F83C9;
	Tue,  2 Dec 2025 21:06:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Wi9acDJG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NdR6JS19"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76A112F7459
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 21:06:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764709604; cv=none; b=mzcaJH7bdSP4L3mIa3PKhNGoVebXBDbF1Z3GiW1Tq1CM7zZNxyCKS6198x6udA/JZK2X2icwCl/C/GS8cHW7MAZiZwbAAZbZfOvVZIQ/n8s/3Nz8KVwWcpQPiCZr6njtf0WK1le0mZmMXWYUr4xsZJgUfzvECDcTG4A6lpGZRlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764709604; c=relaxed/simple;
	bh=levm/eFs6Pq7GzCojVYWl8fYRj+Ya0yFTu2901K/OOY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KDWT8s9Qbon9CeVGFTfjQf/3rEKIZheipWcTFQO5Fr+AQH5RnymJ35vhyp3a02dSyyHdaTKxpOo20ek8Y+ZWijos0rpeqDD0IknK4XMO1JyWELaplYSCeuS6KYHInoUQauQHjkig8fwuWN3Plf5tIbxn9zVIUwn3xZiZKoj5VTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Wi9acDJG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NdR6JS19; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B2KpXS63310333
	for <devicetree@vger.kernel.org>; Tue, 2 Dec 2025 21:06:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=weaA+rX7Z/XNIRuchY/Dyj2L
	JxaYm0oPd2w5/PR0Lm4=; b=Wi9acDJGN8HvF6QJKhk/SXamaBQ0NLUmfm8mT72B
	wp8Bvwpd7HTsZb2pCgJk1SWHMjfDfn6Vwz9pQzQUT1PuLw7Zy7m7OTU+0Xry9SNH
	433W/G3NT2V5OMF/M2aV1pY4cOptoqUn95XJMIG61ULegP7BIq/OTsSyFgAnBrVi
	COfX+ITp/1Tc1uc09MLY6vpmtgcTJvBVSDIhFXLNSrA8Um7ZQFnr+1dJsFDgR4Pe
	zObOkiH59p5k3amxvVz4KEC/qvfL07rnCbR9Cf9Pb2KhOFwLR4nN1DSuI9os7zQ3
	rNk7sTbH2keiPGzN+9Yt6R+733xWBS/ia/VSl1e7CHq2PQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4asxwwhuut-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 21:06:41 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-297e1cf9aedso102051105ad.2
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 13:06:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764709600; x=1765314400; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=weaA+rX7Z/XNIRuchY/Dyj2LJxaYm0oPd2w5/PR0Lm4=;
        b=NdR6JS19LXk7Xm3wk6jooxtSpNaYAVrJuz6G5AhO8kUTA23sxdyMxHWaUIS6CL7KVM
         P2PHATM1hN408Q91jUiy77l9OQ9JUNPyIHR8u0yDEb4uRrapA84QAGeVlRHGaDV1+3hp
         kEp9vRKAJrhOIwoEqhgRO/dltAOkZB9+h88YssuJS3tsj7GzKRFD5lF6/NIjq9ue4TrA
         I/QYTI2d/BYkJOxwlLlt89W8nQ+LGZ9zznEEQbt8jUlzd2hnHHSkwRRhyyVOV/UHTwbJ
         vGHNHYYhB6Ap4qB93nWfaX5QB7D6O8grLZpx4PiZhscUc2lVCIUvdzPr3fsojeMaAN4n
         u1Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764709600; x=1765314400;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=weaA+rX7Z/XNIRuchY/Dyj2LJxaYm0oPd2w5/PR0Lm4=;
        b=N4V+/JHLKMifhZ0B+AZcia8naALv/paltxWKT1ljvbvUtwy0Z0aKZ8s6S7Df+iWQbF
         HFxTyvYM9fcrBMh32/eKWgUww/IW4puHyKKd9LwS/uzEE5jGA1W4tdy6Mmfz7JBNAX8a
         leV7ciCC6lOUhoL/BRI3lGQoPiI0NXN4akLtQIILwE9vzChGpXSDnSfAUa9uciTuSliu
         A0/UTD6xCVajsJ6wWP1xKJMYyMLkzThTGVzy+wpA6TfT1bpbrZW44JcaQuK1Hj1nXu68
         ZyI6P83eIJoloZOM84/KIe9JqcitBSbeO7KTQLsz6MTvOv5HAYgrBRaUz6FRiYFujlXe
         4W1A==
X-Forwarded-Encrypted: i=1; AJvYcCWUP/hVgPF+WXmpsEmkVImoV2BPGbIa8HDeam5Bh8XZkwMesR7ddQNVmlTWSyu6Ge1mc3xezN9uShLy@vger.kernel.org
X-Gm-Message-State: AOJu0YwW4DJdV6DrtrSFhqY3GabC+mhCw4zbTx1eBReX6Ilxec8Us4Hu
	SwoCcQg1LwsucdwIZjvQKd/cMziP0X5916BSM4bn4MCD7z6llEBeouEnDJ3MPcSMY7LpSjZFQRC
	UPJEjj5DdwAfkUc7KPGc/tHpB15MQoaWgCajz6ofXLKaKOzSeAAAhG3GEn+L+BC1T2aue017IWf
	X/vbtOthrzeR5JNMRnFmY4+CLlQ9H+qRVYMd68cfE=
X-Gm-Gg: ASbGncv0UdnccmYZif66BYo3qDne+HLHJQaJa49p7N75LUs6ZQGqqtk2eNDVsACulfC
	Dj+GjAzRf62cJ4fkHfa9RrzK0ucI87PIMWJkOv449La6TF2QoGYxIijB5e+5ZIu7mL0wEBt4eI8
	sKmEJPR+GugYJtith7Z9vxyoASE0aJUVMFWWGzMkFUuHkCRGOoq7zAWgNQyNT47RZtA06hha4Rm
	KC43AIYFFsrb9ESrUrDeck=
X-Received: by 2002:a17:903:40ca:b0:29d:584e:6349 with SMTP id d9443c01a7336-29d584e6510mr45243095ad.13.1764709600175;
        Tue, 02 Dec 2025 13:06:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHhG/ITWxbbVQlcZSwuu5xuuK3grqFEEBLjX2WNOEW4DAnjX7z5p6mwkSjVqc+lIk0uaIi8WN84vFytgq4LOrA=
X-Received: by 2002:a17:903:40ca:b0:29d:584e:6349 with SMTP id
 d9443c01a7336-29d584e6510mr45242845ad.13.1764709599637; Tue, 02 Dec 2025
 13:06:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251107105735.1491273-1-tessolveupstream@gmail.com>
 <20251107105735.1491273-3-tessolveupstream@gmail.com> <badmoityubqmjsxune27vrh2e6htwkhvnak4uj7iiixnxhjpkm@qi56e6kilyt2>
 <db3edb31-4a1c-4512-ac46-ca3b4e9f187e@gmail.com>
In-Reply-To: <db3edb31-4a1c-4512-ac46-ca3b4e9f187e@gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 2 Dec 2025 23:06:28 +0200
X-Gm-Features: AWmQ_bkLJWTM4Nido7Wn3CF4LTeT0kNAOKXGyWrlQ-X6bErmexXFtYdBKS1bY9A
Message-ID: <CAO9ioeUVx_qf3no9aLgZ3OQQPQ7nG-2aTx8SHaEN5DUf02USWA@mail.gmail.com>
Subject: Re: [PATCH v6 2/2] arm64: dts: qcom: talos-evk: Add support for
 QCS615 talos evk board
To: tessolveupstream@gmail.com
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Authority-Analysis: v=2.4 cv=JbyxbEKV c=1 sm=1 tr=0 ts=692f54e1 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=pGLkceISAAAA:8
 a=GV42bERHAddS6UJatvEA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: k1VAgsaD2mHmeAyX5P5US-pXTVVs5fa4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAyMDE2NiBTYWx0ZWRfX6ZEaTrppA28W
 xzQCzFkrgTaa/bL31QOm6Hb28GSqxE9v5i8egxoQU43l0h/8ZkR863BYfG5sYXCrP2/FgkgYrjL
 lzIfBcx+1JDIkiHQg1MsdL+RES66mScv7pGAlDzVDRfWrKMQyoalTktAuuNZomYKl0P6EZ4x/4e
 cjbXuiF5jVqULG6hMMPLZUcfQNx9lH1m5nzbiOUPNTGqy5tXkz8lXRr9njr9VxEzSEHoSaCU2JM
 ZsoVFvpO2ZltMs3jNyJxm40BqWMIE128bXdohjntUu2fb//bWWAzRZtr8H8bYgMJ01NixKHTsd1
 3hyRniOK+hq43IhUSYEeU4+6wLVougGevoJUIpG82DDvNafK2eZRfZ9tqdfRtzOa44EHtBDeUxK
 DsCrymZKwm1C0/jBDJ0PohAe4G0IkA==
X-Proofpoint-GUID: k1VAgsaD2mHmeAyX5P5US-pXTVVs5fa4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-01_01,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0
 clxscore=1015 suspectscore=0 adultscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512020166

On Tue, 18 Nov 2025 at 12:16, <tessolveupstream@gmail.com> wrote:
>
>
>
> On 14-11-2025 01:38, Dmitry Baryshkov wrote:
> > On Fri, Nov 07, 2025 at 04:27:35PM +0530, Sudarshan Shetty wrote:

> >> +
> >> +&uart0 {
> >> +    status = "okay";
> >> +};
> >> +
> >> +&usb_1_hsphy {
> >> +    vdd-supply = <&vreg_l5a>;
> >> +    vdda-pll-supply = <&vreg_l12a>;
> >> +    vdda-phy-dpdm-supply = <&vreg_l13a>;
> >> +
> >> +    status = "okay";
> >> +};
> >> +
> >> +&usb_qmpphy {
> >> +    vdda-phy-supply = <&vreg_l5a>;
> >> +    vdda-pll-supply = <&vreg_l12a>;
> >> +
> >> +    status = "okay";
> >> +};
> >> +
> >> +&usb_1 {
> >> +    status = "okay";
> >> +};
> >> +
> >> +&usb_1_dwc3 {
> >> +    dr_mode = "host";
> >> +};
> >> +
> >> +&usb_hsphy_2 {
> >
> > So, the labels are usb_1_hsphy, but usb_hsphy_2? That's not logical,
> > please fix one of them. Then please fix the order of nodes here.
>
> The node names come directly from the included talos.dtsi, where they
> are defined as usb_1_hsphy & usb_hsphy_2.
> To avoid breaking inherited definitions, we kept the same labels
> in our board DTS.

Please fix them in the base DT.

> However, I will reorder the nodes so they appear in a logical and
> consistent sequence.

This is a prerequisite, no questions.

-- 
With best wishes
Dmitry

