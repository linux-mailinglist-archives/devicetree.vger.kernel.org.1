Return-Path: <devicetree+bounces-217822-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 98959B594BB
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 13:05:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C58841BC644A
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 11:05:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4123D2C21D1;
	Tue, 16 Sep 2025 11:04:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YHpmyw7u"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3F622C15BB
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 11:04:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758020698; cv=none; b=b0tbokJHX1uCpMA1lutQGyz5kyvov9ymkdO56IgJunv+d+OsBnuwouPoH7p9vvMWkWBKTpjV8pndKQPoK6LMOB2IcLgip+YwF2lytKWweUH0F5JTXpkFIp9zJJY+FlWeyr9j84/0eKwNxIcXR4v0GTmiBHHHsPsXh/nGlBS7wlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758020698; c=relaxed/simple;
	bh=D9UWu/gQQnHQlPKCWZF2A1LL9fmwajVXhNbGOBRnvzo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UjDy4rALgtUCwWYZ8XJHhWFP1Uwb4+bSIG0k1NBN9ronsMLM3G0tRq+ZaxfFu4KeMMm1GYupAgvm9l6v+kaCw5TG8n5dBxSjUaNLSfXgbGrqx1GkZ5NN/DmhiVkXGBB3pX+OETCM5XVG12eWAnntAcJFwsGnOc6g9htXiIpbkqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YHpmyw7u; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58GA4RvE014179
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 11:04:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=vHCjYO0ES8GnURwdE9zoXLkg
	FqQQm+yrdu6ceYSTxV8=; b=YHpmyw7uP+fQICIKPP2QgKGCtFMWWngEdt0Y0dMh
	jy+QS7CJufQf3pEjaDXXuS/akKu9a8pmN9kcqA6R/EzpUxMipGfCw/9nAx5PziT3
	u3DmD5lILEi5fFxWEAptm2w14BuW+wdQaCYXXwBdQUM1KdW2I421OwEWfPImGNil
	cnRtMbheWSDT2O+ZtuhbDcEBBVfDameA33pEmGXUFiGDQm+v02L0Z6HmyLkyWDvZ
	CK1YdmDnKe4fbGUD171ZahB42E0sOQ3IFRpGL3H67tJVFd/CIspFXdmFXB0k+Sdd
	jUwsaFBY07KF+78PROo06ejhu4lGzQ9OXiDC7DA4yczbgQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 495072rm43-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 11:04:55 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b78fb75a97so33443011cf.1
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 04:04:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758020694; x=1758625494;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vHCjYO0ES8GnURwdE9zoXLkgFqQQm+yrdu6ceYSTxV8=;
        b=dQsME2z611ppA/7uuQ9n7Y7cPZybEpiCjfMSEIklNDF9LDMcTWOR9LAkIaTZAjyq79
         Kj8A0OQgunrfhzRE2gl2UX2Oio+vrT+1ogbrNgVk8NuqBtQGFbXP0xw4hgA4so7dMgrV
         vXWT4/wOOpbDRPQVCWM7bQab9oNyER9ktPPM8n5m0c+ThAzvLRXGdPkeO+CfWP5KstrS
         JTfNGRiNmuy4d0k+/8neH3/vox/sDIgtC3LPwjTRRW39/6AlfbY4M4e4lPj2yr5PhA7P
         vAuUr4Fs8r0onFrpF3HuWFOBvDfomj3z0IaIqdBKI+4NQ7J+ic/onwcukQHgTvJvmH0T
         Sc8w==
X-Forwarded-Encrypted: i=1; AJvYcCVcNCLEfsjUEq09WWzJy/+5UGguBLqkbndwdzU8IGoCAQOi4Bqj9LgVLz8BqXmACOCh1gp4toeFa7+O@vger.kernel.org
X-Gm-Message-State: AOJu0YzpzIRbKy7f/fKe/8Hgg7JXyKH316fK+E4xnzpmmbI8o73xRQOT
	sqRonHIkxRcIicBP08sQLCsHTK8uy3SmIlNo5Iksz7HN2lGZFFq2EjzIePkZVh9nQ1Rrn1CKNky
	rUik7J9IEpP5shvuSWd3ZEfi4JK81m4NpRYsfPRDbTdYQOsTnST4DJlfVJ4YgcE6H
X-Gm-Gg: ASbGnctE14cJLpgsBpqe41msa61aAFk3+DUgaEx+BExOQ2NMzLz4NYRiHCoNa8lXrG2
	VAdWipjS1Ooi0Fwof9TRzxbg3Qzczsd/HnuViu3EtrV/p+egcmxWGe57M624Rq9lH81i/KCnso2
	QHchWv9fZ6GX0zn6/8f7JrrA1v7eJa4+6658mi8DREUy7KZGPSEi0hgNts6FFrjFIaiGKBHAlnj
	v6TVpees9P0SNYmJ587nbHv8DKjDUMFELwYEugpXJfK3wybonh+yxqf2BmnYvuprHZPGQpByPPf
	owfevr+yf5U0wDqP4gAZcrI+C/uGrQMjn5Lsy4d/a+RWUsaigBIOW3/xp2F+n8d0Gwus+N0h0ck
	S9OCIbc8VarPu3idcAQzl6TK1dFdGe19W75sggppwEGvC9wBEMZeC
X-Received: by 2002:ac8:7d8a:0:b0:4b7:b010:9398 with SMTP id d75a77b69052e-4b7b0109485mr48756781cf.66.1758020694401;
        Tue, 16 Sep 2025 04:04:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF6CFcjOUHfVB3qDL3/3Dgy6gktvnzjviqaP5HM0+Zp284gX+z2P0MiYsdiK9Z9DwpAJOTgfw==
X-Received: by 2002:ac8:7d8a:0:b0:4b7:b010:9398 with SMTP id d75a77b69052e-4b7b0109485mr48756191cf.66.1758020693781;
        Tue, 16 Sep 2025 04:04:53 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-573c8330eb9sm1927373e87.60.2025.09.16.04.04.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 04:04:52 -0700 (PDT)
Date: Tue, 16 Sep 2025 14:04:51 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yingying Tang <quic_yintang@quicinc.com>
Cc: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Yijie Yang <yijie.yang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Yingying Tang <yingying.tang@oss.qualcomm.com>,
        Shuai Zhang <shuaz@qti.qualcomm.com>
Subject: Re: [PATCH v11 4/4] arm64: dts: qcom: Add base HAMOA-IOT-EVK board
Message-ID: <umnolmlh63rgtoj4e6aubaupr3o44gxcufzele6wkxlosukskz@d5kuxk3pfkfu>
References: <20250910-hamoa_initial-v11-0-38ed7f2015f7@oss.qualcomm.com>
 <20250910-hamoa_initial-v11-4-38ed7f2015f7@oss.qualcomm.com>
 <aMPhEm8PuhEofHP7@linaro.org>
 <317ffa87-060c-4f1b-a6bf-61bb27367477@quicinc.com>
 <jimz3qnjrcvemvgrqpwxq4zmywfo6psplsg4jefkvvpiwlffek@fwn3juynr4zx>
 <b3bf54a2-f33b-44d5-a9e4-65ba18ea267d@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b3bf54a2-f33b-44d5-a9e4-65ba18ea267d@quicinc.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAyNSBTYWx0ZWRfXxZMQdHP7JO0D
 4VVUQSmGdLivB3R3OuQ6rx8FlBeKSRozkHxnuC5fTbs6AK3LCB/HKXfNF5h7pkpf+nPKz2Shkh9
 itYy4wJbvMjbV5+ttKbp4FJ16Jalphq9ecx2UEBYKZzL0jRDpTpPz7iGfjzcf3yIYuWCuUoFsHO
 lSdVSJX01OtuidQNRnzK8JZ79DsdEE+djF3sJqDzt9Kg0+DY/t1AHWJKT96uoXu+NxzdsMCXShI
 303LIHhMHgRHlgac1hB0Le7Nng2vXVVP/LzxC3IEgAVCVun4O6afB/kQ4ZHULhRK290QRa/lDYf
 8z7SyTSsEon/n+N32SiqduP8jWJJzp8qp8/oP/urL4vC06XkrXW27yNWZPISwB2x4gBbJloIXhI
 trNv+/wt
X-Proofpoint-GUID: lgAuxMWUscJyH81i6_mc4cUBDb5dyWEI
X-Authority-Analysis: v=2.4 cv=WcsMa1hX c=1 sm=1 tr=0 ts=68c94457 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=JLD08uh4RoC6iUDgxfoA:9
 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: lgAuxMWUscJyH81i6_mc4cUBDb5dyWEI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 adultscore=0 bulkscore=0 spamscore=0
 suspectscore=0 phishscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509130025

On Tue, Sep 16, 2025 at 06:29:08PM +0800, Yingying Tang wrote:
> 
> 
> On 9/16/2025 6:14 PM, Dmitry Baryshkov wrote:
> > On Tue, Sep 16, 2025 at 09:42:26AM +0800, Yingying Tang wrote:
> >>
> >>
> >> On 9/12/2025 5:00 PM, Stephan Gerhold wrote:
> >>> On Wed, Sep 10, 2025 at 05:02:12PM +0800, Yijie Yang wrote:
> >>>> The HAMOA-IOT-EVK is an evaluation platform for IoT products, composed of
> >>>> the Hamoa IoT SoM and a carrier board. Together, they form a complete
> >>>> embedded system capable of booting to UART.
> >>>>
> >>>> Make the following peripherals on the carrier board enabled:
> >>>> - UART
> >>>> - On-board regulators
> >>>> - USB Type-C mux
> >>>> - Pinctrl
> >>>> - Embedded USB (EUSB) repeaters
> >>>> - NVMe
> >>>> - pmic-glink
> >>>> - USB DisplayPorts
> >>>> - Bluetooth
> >>>> - WLAN
> >>>> - Audio
> >>>>
> >>>> Written in collaboration with Quill Qi (Audio) <le.qi@oss.qualcomm.com>,
> >>>> Jie Zhang (Graphics) <quic_jiezh@quicinc.com>, Shuai Zhang (Bluetooth)
> >>>> <quic_shuaz@quicinc.com>, Yingying Tang (WLAN) <quic_yintang@quicinc.com>,
> >>>> and Yongxing Mou (USB DisplayPorts) <quic_yongmou@quicinc.com>.
> >>>
> >>> This looks like you should have Co-developed-by: tags together with
> >>> their Signed-off-by: tags.
> >>>
> >>>>
> >>>> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
> >>>> ---
> >>>>  arch/arm64/boot/dts/qcom/Makefile          |    1 +
> >>>>  arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 1221 ++++++++++++++++++++++++++++
> >>>>  2 files changed, 1222 insertions(+)
> >>>>
> >>>> +
> >>>> +	vreg_wcn_3p3: regulator-wcn-3p3 {
> >>>> +		compatible = "regulator-fixed";
> >>>> +
> >>>> +		regulator-name = "VREG_WCN_3P3";
> >>>> +		regulator-min-microvolt = <3300000>;
> >>>> +		regulator-max-microvolt = <3300000>;
> >>>> +
> >>>> +		gpio = <&tlmm 214 GPIO_ACTIVE_HIGH>;
> >>>> +		enable-active-high;
> >>>> +
> >>>> +		pinctrl-0 = <&wcn_sw_en>;
> >>>> +		pinctrl-names = "default";
> >>>> +
> >>>
> >>> regulator-boot-on?
> >>
> >> It shoulde be regulator-always-on
> > 
> > Why it's not boot-on and always-on?
> > 
> As I described before, connectivity power is voted by UEFI in boot phase.So PCIe link between connetivity card and RC4 is established once RC4 is on.
> If we set this node as "regulator-boot-on", connectivity power will be down first then up. That cause PCIe link down and the link can't be trained again unless you reboot board.
> So we can't set it to "regulator-boot-on"

I've asked about it being boot-on + always-on. Any issues with that? I
doubt that it will cause a spike on the regulator.

> >>>
> >>>> +		regulator-always-on;
> >>>> +	};
> >>>> +
> >>
> > 
> 

-- 
With best wishes
Dmitry

