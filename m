Return-Path: <devicetree+bounces-214250-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E1E07B488BC
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 11:41:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C82033B9A28
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 09:40:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CF6E2F83B6;
	Mon,  8 Sep 2025 09:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kcActATR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8483C2F2910
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 09:39:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757324394; cv=none; b=FIj8v3myF+bMJNIniCCtYZ2IRODk6LdXwjMrbJ6EEUE4qBzLCuOdSntqtAa5FPZ1aMBmnsR38lffETZOSxunPZOM3uySAf/1gK4KKYvdpkfULX6+UVVBSI41Q1jy8c2VVlOiDgBYsU9+LczWyK/pe20brbcfFhds1OcujrqC8l0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757324394; c=relaxed/simple;
	bh=gKuIl47UOtpCFx0MmxO2U2tss6DrKT87XmzqoLKEi0M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bnvGLeWRX8LmoE7fViNJvYf/jQpXsLMszXX/PrhTSI2bapogvFwmYPhifHl8iuYiS13kLj7xL1r5JvJlNiCvWfJmbtYPP3nR1bU2ueDkEgs7wDB/Eenr8RX3oTS0xHdl6D3/tkiv8dlpmZBLognPQThYU0T/F+EebOhCI3WQ2BA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kcActATR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5883lLOF013496
	for <devicetree@vger.kernel.org>; Mon, 8 Sep 2025 09:39:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	veUZKzGV5RVIn21nOgmhArWZXfr3Vm5aURD7be3Q04k=; b=kcActATRy/YmG/oM
	v41uIWypgasfnaH13qR1G2udWqNB/39HAwbTE1pvl/Lh+iVznXU0uGOo6qZAEU4m
	E0sWsSA7qRgrihSPHidpjModRVRhpxkmY36jNEU11rJhUnL0Jo/djwyhIYg85IJs
	jS01UNSQCSIIJH9mKL/11VIlBw5KbRA18+rer6KTBP8v5h0EAA9ILR3JJxPraHRR
	p7Ddp88abc2LHNk0G6ErmFeKW+/azh77unHFx73z3KsmvAKyyjsvoMtiG6EOUb+t
	3IxR5VwrjbETzT/GGhyrwrdUWV+aGW2IeQ4JYlCIFE8E5TpgIgnK5F7NXPsJJd3P
	FfDDzQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 491qhdrxnf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 09:39:51 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b5fbf0388eso25728801cf.3
        for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 02:39:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757324389; x=1757929189;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=veUZKzGV5RVIn21nOgmhArWZXfr3Vm5aURD7be3Q04k=;
        b=RsQ9VvC29wHijKt3Ts/lPBNJ96QgMcRYq5oRgqKap+babANTvoKsZmbScqphN2IKrd
         I0MpGsEC7nXwzeE713EmdX5hly1xt51nlyJqUqAqbWtWXKUZT+hRidADV7HytVS6h0ct
         Ti/8rKn233zoJ3eakjUYt6Vt6PNBmb5RA9XTV46XkdJJ4SLoz1jJUs6aP40oZ+cOPhWR
         w/yY5aDicjgwV0zyU9BbaX55UbTsgRnnZl5gi281mA9kyrIsXXmGGjG+/mwLgpY6uvHS
         QtEtBwyqR/3jRBVh+3Pl23VhgsS+EwFgnaLyA8tcpvMe/NUuWjQmhprBCgR+KgqDDlxj
         Kfyw==
X-Forwarded-Encrypted: i=1; AJvYcCUpryAGcmdxFoQQw6/l3EZrrGQbsP9aUk21u5Al7EME4t9at9RARSqJst2mXj08x/XT8NM+xx9z2L/f@vger.kernel.org
X-Gm-Message-State: AOJu0YwPbZ81L3mU2KatJrbl2a5uj8R2g5UmgAswHkyerRXh5yImy3/m
	shD2xhfcwwRH2HFbI3X56eSlczPoG0A+/tciz5PPtkI0kK3497Sh2Rvkau0fD+4O3dDt7cesC25
	FPr4uqIeHcMBLj1unPrf7kUnWpuYqVxIPEv+KVhsTnyWHjrtNFnkjMkZJyRTOOTLM
X-Gm-Gg: ASbGnctcvOP/+OqXmClO79wMr5jIoxpEWinV/2ciZ5OxUkHoK7klNC8fg/nZDB7VVsa
	TIJziUCd0QzdzEfJ/2uKH6fMruRU90gfyIjMPTEuAeXaPQqeyu9hS92rnnSpCblkZftpnTZo3Zh
	Q2WGaHEp4TT+Nq3cNTMQLdsibSjym0PRJjOT21FnnnhkaVC8mczTiSQrtS5J4x9kuslKVd18eDu
	ZPP6lmHbt2xW/IXpra7j4NJpaMwab4XD46dhbetPRWRduuMpqQnjJPlRWq8PqhheFwmZQPQm0tF
	NVfjUcyq4YDr1V+OBMdgq/Q/6yMlWwGs6e95npgvEP/1e5hlo3LorrmhyTxctNv8CYtc7mw4gMe
	p4iRaaPnZDpPyrFecXlx8/XQYcG42elb/mESYQTzpQZTu5sJgumnL
X-Received: by 2002:a05:622a:24f:b0:4b5:e72d:dbc6 with SMTP id d75a77b69052e-4b5f846fc73mr78826081cf.72.1757324389104;
        Mon, 08 Sep 2025 02:39:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFy1mrw36Xw8dyInvC+DMbqIM2PRIu/aziD0n/i6SMiCO8OR2jo73OLVrZzBTqj9rG+/JMhUw==
X-Received: by 2002:a05:622a:24f:b0:4b5:e72d:dbc6 with SMTP id d75a77b69052e-4b5f846fc73mr78825941cf.72.1757324388614;
        Mon, 08 Sep 2025 02:39:48 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608abc1798sm3486986e87.57.2025.09.08.02.39.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Sep 2025 02:39:47 -0700 (PDT)
Date: Mon, 8 Sep 2025 12:39:45 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC 3/3] arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s:
 add HDMI nodes
Message-ID: <xzw26v6aqutgau3zwm3njblf2qw2em53n45ju2yhhfh7uhyxbz@6kqvink2chld>
References: <20250821-topic-x1e80100-hdmi-v1-0-f14ad9430e88@linaro.org>
 <20250821-topic-x1e80100-hdmi-v1-3-f14ad9430e88@linaro.org>
 <a38df652-54c0-4216-9aa5-c8d32599c8f7@oldschoolsolutions.biz>
 <c66fe361-74c9-4471-b371-353ca582bb3b@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <c66fe361-74c9-4471-b371-353ca582bb3b@oss.qualcomm.com>
X-Proofpoint-GUID: WSgeGkE6kmAxPKFGAg6Oi5LVPPkwpLYu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA4MDAzNCBTYWx0ZWRfX203K8WVyKViV
 q8bxQLDp48oL4IlFMy3xMg89SYcdTSSuvZof/fu/DSjp73KuGVmAVizGRVQEHc/QEfFoa/uGWcs
 +QbFoQyRgAFPZSNPx3cEz/oi2sFSGO8LHG/oNALdUDJUhF7uJlbRjl3VhQwmcWn8b7+vs26VzWe
 CblP2dzNE9R42AwklMSg5unQGKpaE0qdhPspXkkHRor+goawXDK1FyxJZaUKvGmAv0oi5k6u6le
 j5QC23+YsDmGxIJhyfbo1sdHEzBbrbKTofYt80A3hH9lSynss2WJvr93BY1BuPqIBLfYNsiJ01A
 XzBZ7wKlcfh1Hl6ZiaRPVwTAAWBSlrNO/zqtxkdy0vucOoZLQuHGCxqKFwsmUuDmWkguXqPfwyo
 xNLIAb8U
X-Authority-Analysis: v=2.4 cv=YOCfyQGx c=1 sm=1 tr=0 ts=68bea467 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=4LzuJVVA2EB8z9vYX0EA:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: WSgeGkE6kmAxPKFGAg6Oi5LVPPkwpLYu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_03,2025-09-08_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 clxscore=1015 adultscore=0 impostorscore=0
 suspectscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509080034

On Mon, Sep 08, 2025 at 09:16:29AM +0200, Konrad Dybcio wrote:
> On 9/6/25 10:41 AM, Jens Glathe wrote:
> > On 21.08.25 15:53, Neil Armstrong wrote:
> >> The Thinkpad T14s embeds a transparent 4lanes DP->HDMI transceiver
> >> connected to the third QMP Combo PHY 4 lanes.
> >>
> > [...]
> >>   .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi    | 44 ++++++++++++++++++++++
> >>   1 file changed, 44 insertions(+)
> > [...]
> >> diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> >> index 4cf61c2a34e31233b1adc93332bcabef22de3f86..5b62b8c3123633360f249e3ecdc8ea23f44e8e09 100644
> >> --- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> >> +++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> > [...]
> >> +&mdss_dp2 {
> >> +    status = "okay";
> >> +};
> >> +
> >> +&mdss_dp2_out {
> >> +    data-lanes = <0 1 2 3>;
> >> +};
> >> +
> > 
> > Hi Neil,
> > 
> > shouldn't mdss_dp2_out also have the link-frequencies property?
> > 
> > +    link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
> > 
> > Or is it something the bridge already negotiates?
> 
> No, it seems like our driver falls back to HBR2 (54xx) ever since the
> driver has been made aware of this property:
> 
> commit 381518a1677c49742a85f51e8f0e89f4b9b7d297
> Author: Kuogee Hsieh <quic_khsieh@quicinc.com>
> Date:   Tue Dec 27 09:45:02 2022 -0800
> 
>     drm/msm/dp: Add capability to parser and retrieve max DP link supported rate from link-frequencies property of dp_out endpoint
> 
> Dmitry, is there any reason not to allow HBR3 by default? Is our dp
> controller/driver not smart enough not to advertise rates it can't
> support, during negotiation?

I don't remember the exact details. If I remmber correctly, there were
cases where using HBR3 resulted in a less stable signal than falling
back to HBR2.

-- 
With best wishes
Dmitry

