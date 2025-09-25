Return-Path: <devicetree+bounces-221565-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 73533BA1192
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 20:57:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0BF2B1C2539C
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 18:57:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4547D31B122;
	Thu, 25 Sep 2025 18:57:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UiQkNHlN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B71B531AF31
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 18:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758826630; cv=none; b=ZTC44ub9rVFMnel0rMZWLSkdpG6FdkIih+MFUCWEOrrCRXb8D+vNoZpZZdNXYwy6XS6ZgcVFbmUk3TtPH0pe6rH5WNiqTFQFy/9n6eicmVhkoFJp2mb5x7JBCUp07gmBdPSNU/hTL+zU72p59L/52uSHbD5qBf+H4tHTPAg0mf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758826630; c=relaxed/simple;
	bh=ylHBJ6rtlBkpjTgpnnEaMYg7ft/c2V00QWAikEtzBGw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=M5T3GWEDK5wtCCdVQAff3rvy5CJM+nMvPNTZB0+eAhJ2bCIvE8PkzwT/K+UPdEzgECr7Qj0uzgZdxhI0FDwVWMjqBUn9BzQ/h4DiFl4Lt2xUvL/aus0bggid7Q1dlaYmhcr+PVjdyDM5/hJfAHUhgJZyr0b1bslGo/FIpz6+7JM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UiQkNHlN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58PIUuAn006031
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 18:57:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Fx+vqLkK1t4+LrlocVqgFiy8
	Ew3NNGJkgQixYPW2UM0=; b=UiQkNHlNiGCV9w+FDR0EenYDb6YBoXQqEYNTdm4a
	vvTHle28NPFWTOPblbDemqV3NFZlIJELgqt+scdItdet7cYk1G2ugKgJsuS2LwRB
	xjAKpazGaBMb8OQA33H1YeysjSQBGXf53fo2hGxdOn4b4DckB/ZdvFVYhF4YxMCG
	Qwjll6PlvP4mL78ynFoJ/tNMOni1tUCnKMTdBOLzdJ5ABkO97vwngMgMgRzH7M5g
	Vb606AigiqmKq2u6lMim/ui1XTVtg3m5wZzkKBxKSVe2nlWyJRPZKdSw6qgZTTCN
	d8IskO/6GPrHnGKns7gY5A5QR+7qTRIM4GBb+2dOhadE+g==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db32022r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 18:57:06 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4d7f90350f3so28813201cf.0
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 11:57:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758826625; x=1759431425;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fx+vqLkK1t4+LrlocVqgFiy8Ew3NNGJkgQixYPW2UM0=;
        b=t6eY9bqINoSciRzvy9HcCT/M69L+2k9LRHVPzqFeJtBJCkpAPhSVLmMdNx6FOXCWoA
         J9e8vrnLKv6nxDgEwxXIuc8m7XKW2apydi7r9nHe+EZXnmPs+I4X25AX2470kQNFMfxd
         lMmB/RWurlj8jQDtS/8D8+zfUmUNdJKlB/lpKyRy+56vUZFRaT/cDyedp1Q6b6Eavgwt
         xjjTpdQ3i8AkUOa/K8Gtfh6vRVJNuYUcXJp3NDuN+9BP/8IfBigOphtjzQCnsYGeA+SC
         rLQHCEv6CAE+WSRLKqO+F8Pc3ezezTZ5yrTlnByGW4wh/Eg7zMAXAwjtqRnwnG+haOlR
         u0og==
X-Forwarded-Encrypted: i=1; AJvYcCWaioaSrInsFiFOOPWBltll/M3RZpX10vAYDJu5uKmBN/jtAcKtyeJsPE0rq4mwYPj44IWTmCb2vu5T@vger.kernel.org
X-Gm-Message-State: AOJu0YyXQF2dVMWJXbMjitTlyQjIhHND/O9C2FhvIq6MvlWfj7FK6M1x
	3EmvjXlJ81yNl4vtCxrHq1Cu040fVOh9rHefF8Vul1xUOpKXBNpHg+k4EU4DejFzWHDySMFIHR9
	aAC1Kr5uAnJ335WC9YL3Pxw/8P2jNi3ACQ+d/BVbvz9fkjAkQQ1ah5szZJv+b+zZ2
X-Gm-Gg: ASbGnct7VDvb8UHLlWHGlDcRekphEceWXKJAo0eq59QNdYNcFI6VMiRAz58KcbuupNw
	h2hpDfNP1LDIatfB1KOpF/bk6g4Diuz+0Pqq0ErnLvek/Bqs9+JMpp9o0qbF9pZftZtj0TKE8rz
	SptfEc2gqkSu8zcR76hsdJfFa4+rdA9WPfCOuV6chzQ6GuWWLwoxmwqdXut8LlayBSL+E6Bfx1i
	FrfRCaOuw0vlgnVawgh3H32S1n547884IgNeCExRi7wAKJU7ZNXgv67JwZowdkZtzQe1i2hyTPo
	fkrxKTslJedH7wu51BnYbOxSgv0o4IwYhrHN212CaOKtrs++Hr7/wkCJrfSgYWM9pfd+kfDfdwN
	Hi+54J0CzmQKVYFB7KRL0kDVCVqdgAP9OJSQTulBgOPuyxuBd6MPK
X-Received: by 2002:ac8:7d50:0:b0:4c8:5c17:6e45 with SMTP id d75a77b69052e-4dacd2449cdmr45034381cf.20.1758826625428;
        Thu, 25 Sep 2025 11:57:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG1xeppu8xxZGxzC1p3RKdEq4xRw2e+trGwopGxSR+ad446eBQvH1WxLgENVQj54Ul3RzWCtA==
X-Received: by 2002:ac8:7d50:0:b0:4c8:5c17:6e45 with SMTP id d75a77b69052e-4dacd2449cdmr45033951cf.20.1758826624772;
        Thu, 25 Sep 2025 11:57:04 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-583139f990asm995397e87.38.2025.09.25.11.57.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 11:57:04 -0700 (PDT)
Date: Thu, 25 Sep 2025 21:57:02 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
Subject: Re: [PATCH 14/24] arm64: dts: qcom: Update the pmh0110.dtsi for
 Glymur
Message-ID: <mzoctelzfp6h2ezzkc3j7gnghsaf67flxqlvfhtlpdfxtddsvi@zqihmnygvdjk>
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-14-24b601bbecc0@oss.qualcomm.com>
 <CAJKOXPdQH2jXcEY6ZpkmixvUt26SqdzYgDAiJ3RHMG7xkPyi_A@mail.gmail.com>
 <lcbcjpoazpwbltedkiqlw4l3aomwvi3qsfwvmwghb6uf5wvnme@kh7qdpunfuwr>
 <CAJKOXPcyhDdFW_u4YQLiHYj8gM7wYB-LOmB_PJs+5OOgn8WZFw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAJKOXPcyhDdFW_u4YQLiHYj8gM7wYB-LOmB_PJs+5OOgn8WZFw@mail.gmail.com>
X-Authority-Analysis: v=2.4 cv=ao6/yCZV c=1 sm=1 tr=0 ts=68d59083 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=zo-Yedng5-Uof10tyqQA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: pSz8X8k8hQucZiZK5XHNHgt0Rl-ZbMeX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MiBTYWx0ZWRfX0/BCLTmEcb4Q
 khrpY8CrSD8UGFiqLV7Bn7VVeEqCw5K2LtLkwkuyBpE8O31WBtZGlsSyp4lnux1etS2/bD6qC+L
 T1PmpMKVMKCvygv6xHn92ho6JT1/fjrS9Rk8bSrCVFvjDY49vXY0f2p7bMWDLB3YvhEXPGXU5vY
 lDcWHybKFcORzQTavuFIJvpsvCgwTIuKfeK1gQGOMNdIqrYxwR8ANCtEW7yyKBcGhEw/sN+4W0X
 vGaO02r8Mem56VANiwILMQoY4rigsU6JzkjuFhbuVmqEbYYVJXYGHv4PDGlvLT9Xeba1d2uWogv
 HkWSI1OwUyPoj2Kq9TN6pi7waXt6IWJ+hihitYFmGCw3KB2wH1SSKRdSrrwQC69WmfN7i+fVT+5
 CclVhD3F1oT6vGoUAYrKvCgDxuKpRw==
X-Proofpoint-GUID: pSz8X8k8hQucZiZK5XHNHgt0Rl-ZbMeX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_01,2025-09-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 priorityscore=1501 suspectscore=0 phishscore=0
 adultscore=0 spamscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250172

On Thu, Sep 25, 2025 at 10:34:52PM +0900, Krzysztof Kozlowski wrote:
> On Thu, 25 Sept 2025 at 22:14, Dmitry Baryshkov
> <dmitry.baryshkov@oss.qualcomm.com> wrote:
> >
> > On Thu, Sep 25, 2025 at 05:08:54PM +0900, Krzysztof Kozlowski wrote:
> > > On Thu, 25 Sept 2025 at 15:34, Pankaj Patil
> > > <pankaj.patil@oss.qualcomm.com> wrote:
> > > >
> > > > From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> > > >
> > > > Add multiple instance of PMH0110 DT node, one for each assigned
> > > > SID for this PMIC on the spmi_bus0 and spmi_bus1 on the Glymur
> > > > CRD.
> > > >
> > > > Take care to avoid compilation issue with the existing nodes by
> > > > gaurding each PMH0110 nodes with `#ifdef` for its corresponding
> > > > SID macro. So that only the nodes which have the their SID macro
> > > > defined are the only ones picked for compilation.
> > > >
> > > > Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> > > > Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> > > > ---
> > > >  arch/arm64/boot/dts/qcom/pmh0110.dtsi | 66 ++++++++++++++++++++++++++++++++++-
> > > >  1 file changed, 65 insertions(+), 1 deletion(-)
> > > >
> > > > diff --git a/arch/arm64/boot/dts/qcom/pmh0110.dtsi b/arch/arm64/boot/dts/qcom/pmh0110.dtsi
> > > > index b99c33cba8860f1852231db33a127646c08c1e23..4a5c66e5c9fbc35cedb67601f4568844dc41fbea 100644
> > > > --- a/arch/arm64/boot/dts/qcom/pmh0110.dtsi
> > > > +++ b/arch/arm64/boot/dts/qcom/pmh0110.dtsi
> > > > @@ -7,6 +7,8 @@
> > > >  #include <dt-bindings/spmi/spmi.h>
> > > >
> > > >  &spmi_bus0 {
> > > > +
> > > > +#ifdef PMH0110_D_E0_SID
> > >
> > > NAK
> > >
> > > I already explained on IRC in great details why.
> >
> > A short summary or a link to a channel / date would be nice in order to
> > include other people into the discussion.
> >
> 
> Of course but:
> 1. You were there so maybe you remember the arguments, and:
> 2. I'm offline, using phone, not having laptop, replying during my
> personal time off just before merge window so any emergency time
> should be spent on important matters instead these two huge patch
> bombs adding such usage I already said: NO, don't do this.


Well, If I'm asking, it means I don't rememebr the discussion. And I
defeinitely didn't know that you are spending your personal vacation
time in ML. And if the discussion was with some other people, then
somebody else can drop the response to the question.

-- 
With best wishes
Dmitry

