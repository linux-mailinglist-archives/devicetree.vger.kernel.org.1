Return-Path: <devicetree+bounces-270033-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0LptFmySpWnXEAYAu9opvQ
	(envelope-from <devicetree+bounces-270033-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 14:36:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id F11CE1D9E74
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 14:36:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2DCD7302EFAC
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 13:35:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BD403FB057;
	Mon,  2 Mar 2026 13:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Fj5IHgDd";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CFOZpAIQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08DB33FB051
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 13:35:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772458534; cv=none; b=MMqNWbYSCrDw4grMhmFk51Sh7YH1MmyGRMcb6w6e03BClYskThlbwnSfXdf8LlX6LXzWIja+7Nj7L2CK0tMyCMJzZSqTE4hyG2i8c6IB1fQ0ZFg9mqViR+lSRJriy6VsQWiUry9zHWdQYi7zMXPyCc6TGCoP7Tpc0RQfaqmyaG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772458534; c=relaxed/simple;
	bh=MAdEfj8qxc7Md+FO11o4muoqDFeGPDI3hErbx4VOMK4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MSAhz6M8TWNZL03viRsj0/v2eF+q6ktWBba2HEkM3Imapq1Bmk9EtLZstIY/Pb0zuBSY2S8XQqCDngdePHu4LY1UpizXSMFZIAl5Ly0fyv+24rR8GyVPo3FYmyA+BjNekS2FHP9iF15DSyS0rx1KNZ59aohhV7iHc5r/DItQe1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Fj5IHgDd; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CFOZpAIQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6229JZRS3741985
	for <devicetree@vger.kernel.org>; Mon, 2 Mar 2026 13:35:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=P254J3MDCNQW2brjbXOB4OcJ
	K4ugiVnJqpO/rx59Igg=; b=Fj5IHgDdkP+FCNvtufLBSWDhMSz9HSeoxIHnagz6
	CPBxi9yOSl4F5mrLO44wnau559mHGHVOz6I99LOcfVMYiRiFLi0M9p7xGX97etvc
	oawoAP0ZbqTKZ7W9KczTWGikoZQ1FrwWz8CUPWUyUatfwmFE4Q29U5DzybfFagS3
	QH8JnZeGQawBFr4Wtrg9dSDZrcNN9wK6K4e7SfAH6Djx0o3YXqT4OrypIdV3Oji+
	eDGqcjWvL9GSywnX13d56DomFfu6RJAxCwuN21ipPCJ32+z6FOPgSbrQ+Cng+lBU
	KNPRE6sFxrX798oJi47/j1foOxWDN+a9rjDP8zihmZ0Ykw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cn7trgtyp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 13:35:32 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c70e610242so3633066185a.2
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 05:35:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772458531; x=1773063331; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=P254J3MDCNQW2brjbXOB4OcJK4ugiVnJqpO/rx59Igg=;
        b=CFOZpAIQQeTu/4e55fexm3LLHvnlncwU3u1lCzpFDsKccfCPkIsC2TR6qOGSudzEXv
         gJvIP69hf7yy8Chfmw9MYs8Y44AYx9EeHBm3vnEpqhM7Em646xo2/0At+HglMkcA9Rdi
         t9kDTZ4fX9RRBwFgzFZZhnrwLtcixCN2DooJ7mh16toxfDx/dfDa9jQwMx3MwdpbuKiH
         T+2XjjrcJwfwU/h6AsVQnvDn3p67G55bpiYUP1kD7KVnrPR51XFpBNj5o9lqWS/cmzzS
         MsEIjFG1dyOPlUZNiv5SKKwB9k/85mMhOmrmMLEC0gLV/PpqT+U+CchS9D06IyPQuwje
         xUNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772458531; x=1773063331;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P254J3MDCNQW2brjbXOB4OcJK4ugiVnJqpO/rx59Igg=;
        b=pIJ+QlrN5mNQu+ssTUVMOSbR80kNs+tQC2kOK8nQX+3F6hZs+AFqtZahVhXw0zBoZB
         4ze5qXuDAMzo1DEMLBSoj1YumrF1czqSPNF3Rj38MlGG1sj4qqzGBUt89DFHd9MGWJXF
         TDnqU3QEHz42rwc+biR1T2GXsLEe6ybAakeKGNeLVkmVHHnBRB2KKRsSK5rneEXnY0SS
         co2da4dzhnkkBueWIcO7iiGLruuU6tZB9p2CLqAuN4fbr13lXUjOjeSUUgeYlesxCPSJ
         j4/8JXTJ+BHT6i5F9eBwZPD0EOTB9E8NyJfyx841s3o5itwpZYfDami8xkigSCvR81Jc
         2SMA==
X-Forwarded-Encrypted: i=1; AJvYcCXuIaHrh8YNdesuwZ9THcfQKr8NSIaS0S/MtEOhgtpGUU7nptPMhad383SgvZ9JqVggGZo7vVkkzrH4@vger.kernel.org
X-Gm-Message-State: AOJu0YxP50voRH+NA2uBtdOZO7T/Mb+RDVDKzTniZCI+ldH00VA3BM2y
	1A+tgg1UFl1xhh5pNPuASAT/oI6bniB0fV1ewW50/HFdYrk+VM2CR73RQTGJ4vCREBCnkmbPG3N
	dDW4dN4jcL4LV1rNE2xtdT5PP6FWEVZ5UTlHwr3TtlqGDIR1MgmXTwlNHRQTvVd/d
X-Gm-Gg: ATEYQzyQ/6j0adgP4uubExaprSox6yQgbcI/LDeq2eR9xLdezzXasQU7KMC9e3j14I4
	Loa9dxEZPmG7M2LnHzeEeHQLTJlIdJse9EN5SzDIzGUGAPLBOyL8vg/PCnor2g9RKdz662aWeZt
	5CQWf+zDExVYiy6PVPuhoovzZqUDl3JIxzizveeh9C7r6gArZaqOoFg7BWBbCjOsysZ74Fqrbhn
	LOOtg3ydeJXrR6J8RnAFR8deau6I4CN0FrzxEaMiY1RJXr/lj8VymfRI3kZ3XY7d7D+MYBr1vRx
	qpp/FD3cwmeKq8t8KRmt9sxqKbP+UpkHlIsCVynuIDyvmD93QblfK+3mOqpyBrBUUXNpsxGas5D
	H73zV68BoGYJdkogysAQgDPv2gpMLcRbGgoOHdeYL9zjHfJegSeV6WQxXWCVGlDW9xV8mT/d+QP
	GQUMFoS1S4Me7JERlnY+9Sz93OiQ5DB+hBn8c=
X-Received: by 2002:a05:620a:7109:b0:8ca:3c67:891e with SMTP id af79cd13be357-8cbc8e05146mr1393407285a.42.1772458530952;
        Mon, 02 Mar 2026 05:35:30 -0800 (PST)
X-Received: by 2002:a05:620a:7109:b0:8ca:3c67:891e with SMTP id af79cd13be357-8cbc8e05146mr1393402585a.42.1772458530231;
        Mon, 02 Mar 2026 05:35:30 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-389f2f62a31sm30220471fa.14.2026.03.02.05.35.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 05:35:29 -0800 (PST)
Date: Mon, 2 Mar 2026 15:35:26 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 vdda-refgen supply for Glymur
Message-ID: <z5xwgs3qzzkyzfcyl2yipja67fzbb3h33pd4fimxlrpvzkpkck@5mcrx2uqo2bd>
References: <20260208-refgen-v1-0-87ca84fd78b3@oss.qualcomm.com>
 <20260208-refgen-v1-1-87ca84fd78b3@oss.qualcomm.com>
 <20260209-magic-conscious-seahorse-b81c8b@quoll>
 <aY1Jx5J8x/OALk5M@hu-qianyu-lv.qualcomm.com>
 <hcslao22elcihjw56ltu4yo54lotheqpikzsrq6tia33di4fs4@2ygrbwhcfx2a>
 <aaVkpKZcrNM7k4Xm@hu-qianyu-lv.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aaVkpKZcrNM7k4Xm@hu-qianyu-lv.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDExMyBTYWx0ZWRfX9tbw2aG5THE0
 xt4aNGoJpKMqwNVzqjtZ4eGLhBBl1yenXsUkhOngzRdnhDYvTsfWM+HjrFvkc4kHZcXmDt/+pmp
 1ho/PZiV7w/gPr+UG8VWYVSSSziBC23r3WazAdJNdVFHDdvRvk0kASe6Z690tJcJl5xVufgZBHE
 Mbe6fXnPw0FC0Ze5XwqofJ/dDgy1B8SLymqvM8iDa3UKFSVhnh20maoLUypaVBBxb3gcNUsioMP
 DIjxOpD3JIOkB7cHBoUN3cwJd2GZoVloKonqU71vV5hIJkNWc3C7LesQWbDA7pVtX4MbwjXlXPj
 rAbc2DA14vVy6o5F/CsyHZs1jSk0qQ9fRpkpAExJl2laIlfJmXmyPqgtWUjoDJOPb+m4NSEHTRx
 fV1prBO+l+kH1Y/BtDgR1HS0B69lMUuMMdDMsvvNtco3qgzzKNUdIPwZZFCMuZ8cpV50lP+9X9n
 MrkMusV5qr+/m68NFlQ==
X-Authority-Analysis: v=2.4 cv=TNhIilla c=1 sm=1 tr=0 ts=69a59224 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=wiyiQmdw19YBYzJq5jwA:9
 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: Akzil2HQR0a_En_Ze_4Ou2xd531xH_QB
X-Proofpoint-GUID: Akzil2HQR0a_En_Ze_4Ou2xd531xH_QB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_03,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 bulkscore=0 lowpriorityscore=0
 malwarescore=0 spamscore=0 phishscore=0 suspectscore=0 impostorscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603020113
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270033-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:dkim];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: F11CE1D9E74
X-Rspamd-Action: no action

On Mon, Mar 02, 2026 at 02:21:24AM -0800, Qiang Yu wrote:
> On Fri, Feb 13, 2026 at 07:47:36PM +0200, Dmitry Baryshkov wrote:
> > On Wed, Feb 11, 2026 at 07:32:23PM -0800, Qiang Yu wrote:
> > > On Mon, Feb 09, 2026 at 09:06:23AM +0100, Krzysztof Kozlowski wrote:
> > > > On Sun, Feb 08, 2026 at 08:49:39PM -0800, Qiang Yu wrote:
> > > > > The PCIe QMP PHYs on Glymur require stable reference voltage provided by
> > > > > refgen. The refgen itself requires two separate power supplies:
> > > > > vdda-refgen0p9 and vdda-refgen1p2.
> > > > > 
> > > > > Since there is no dedicated driver for REFGEN, add vdda-refgen0p9-supply
> > > > 
> > > > How does the driver matter for the bindings? If I add dedicated driver
> > > > for refgen, then I change the bindings?
> > > 
> > > Yeah, I know that dt-bindings should describe hardware, not software. But
> > > what I meant to say is that the refgen is different from qref which is
> > > controlled via TCSR registers and its LDOs are requested to vote in
> > > tcsrcc driver. The refgen doesn't required register setting and it doesn't
> > > have dedicated driver, so we vote its LDOs in phy driver. I will avoid
> > > this statement in next version.
> > 
> > I must admit, I could not find references to the refgen in any of Glymur
> > PCIe-related HPGs.
> > 
> > > 
> > > > 
> > > > There is qcom,sc8280xp-refgen-regulator so why there cannot be
> > > > qcom,x1e-refgen-regulator?
> > > 
> > > I think we can and it seems better because the refgen for pcie phy also
> > > supplies reference voltage to other modules like usb. But I checked the
> > > qcom-refgen-regulator.c, it contains some register settings and there is
> > > no LDOs voting. I'm not sure what does those register do, maybe Konrad
> > > can provide some backgroud.
> > 
> > Those regs provide voting for refgen, because on those platforms DSI
> > block doesn't have a hardware vote for refgen.
> 
> Hi Konrad, Dmitry
> 
> I tried to model the reference voltage as a fixed regulator but the fixed
> regulator driver only supports a single vin-supply. However, the refgen
> block requires two separate power supplies (1.2V and 0.9V LDOs).

On which platform? Does it require those power supplies only on GLymur
or on all relevant platforms?

> Would it be appropriate to modify the qcom-refgen-regulator.c driver to
> handle LDO voting for both the 1.2V and 0.9V supplies? In the regulator's
> enable/disable callbacks, we could vote for and unvote these two LDOs
> instead of performing register operations.

Depending on the answer on the previous question either we should fix
all refgens to use proper power supplies, or you should add separate,
Glymur-specific one (especially if you don't need to program it. Do
you?).

But, let's first sort out regulators for older platforms. Please inquiry
internally.

> > > But on Glymur, we only need to vote LDOs. So
> > > what if we use a fixed regulator in the device tree to represent refgen?
> > > We could set refgen0p9 and refgen1p2 as its input supplies, then the PCIe
> > > PHY would just need one refgen supply reference.
> > > 
> > > > > and vdda-refgen1p2-supply properties to the PCIe PHY dt-bindings. Use
> > > > > conditional schema to restrict these properties to only Glymur PCIe QMP
> > > > > PHYs.
> > > > 
> > > > Best regards,
> > > > Krzysztof
> > > > 
> > 
> > -- 
> > With best wishes
> > Dmitry

-- 
With best wishes
Dmitry

