Return-Path: <devicetree+bounces-225932-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C044BD2576
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 11:42:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5109B3BDC7A
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 09:42:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 161892FE047;
	Mon, 13 Oct 2025 09:42:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ckwE5F9H"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71AAF2FDC5C
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 09:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760348555; cv=none; b=nFnPsUl9xb0aziBipod+oZLGGOJunlRCLFuIGfCGls+53D8JWQVVGdoerX26jnRiYhOD/IoRrEcR7Y7rprxw3JBUyRN+sRPyJfs1UcpIdKNWV6mJ78mRiVKTWkf1f6HxgOinVPqKLfVjdb7EYAFlEQAPYO3xyiChaWddYHDy/fM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760348555; c=relaxed/simple;
	bh=I+VcpLD2Vwq3nTThX8kfrnW8b2lxLrLieNtKngEorpU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BFoSx0V+9CRPNq1WLfuL1vZImav0SW62ZrLxxwum7isBWrZnt5Xu5yEVdz4aGlD6PSiXB1erOhhcR/NP9KTJIHgP5CqSyHDtzAp+1CdYbEdO0JO8d1LPn2UOdWfH71S1V/pwFpfRV9vxxD3nQORgQTtrwtj57KkD06gR1LuWLN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ckwE5F9H; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59D2nS5n016984
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 09:42:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HEW469dJbFSwk5XAW8ElPGM+xdFOARugfDp8dZgFiTE=; b=ckwE5F9HjBTHQwt/
	c4Sgeg+pxNjuR+rUaRI+wmd83PQNr0eMuGO665+GUi4gQBlSeYjSBJ4nG5j/E6IP
	RkEHTbS/FTa9ihKLIsSDCecVRM2K50hjsB2LDTOVmiNra2Kx7V029yUV0xHCEXu/
	uehCiAZcgd1J+1nPcW4NIAGT//cRk35hMolbDaZ9xV9VbisTPXLKIE2GuvXuxk10
	G+qBoe3HNnN1uWymnkEAH60nTufrOIUMxi6IOa14mU4LJ5NCs5J5XXhbPAO/SX5t
	hSVTgsHIAIYN7fjTv8clFftLuxe5IRUy5aX+n2pz0E1dhsk1Bn5d+TQ7OxHpjNGU
	vJm5SQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfbhv45c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 09:42:32 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8635d47553dso1798962485a.0
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 02:42:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760348551; x=1760953351;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HEW469dJbFSwk5XAW8ElPGM+xdFOARugfDp8dZgFiTE=;
        b=L2RgyqC24QK5fsq3sW2Cct8+yyvTIq5FX8LzIok8/pnBc2ikkpiMpxazznSQwPDby/
         ur8JuDLQnx3rILAMeZmCpQkKVFAnDSJoJHGboGbeP7lfMos1Ot5XLClJAwhyoPkfaFyL
         u76KJZzou1z2rg5eiFj9Bpdskb/Tz66GDkmFaHlFNnJMgUKVg0iQxIv9CKgV4IWaaNAY
         3RfSwdEwheY8p3SHaqqpOqUeRltFcf3WlaIQPeljq6L8Dw8Eei8Cj38ZlDxJmhiYi1QO
         LHW8ayCidCdxPXqsddTVrdQt58/KjsRnQn9hEDANPe8joSkLyOjwSo7nsHYWBicrNHIS
         NUZw==
X-Forwarded-Encrypted: i=1; AJvYcCXFQ37QLBuY3IeEBya0y8LGjTb7wiEHEiT7h24h61vajWQFlqLwZqxwA6dcpFNuWUqdl30Ef6bvruo8@vger.kernel.org
X-Gm-Message-State: AOJu0YzLHmxjInhVrP8xShQKO6AFEihrsvmMxRkNrL2qnFqH6tk9kfHq
	CMGNn+zuhL0raEt5X01BXKlX0krfKnXS7LQTHFppH0AVPNKeSrWgnfcYP3jdjQrc2fXKiHjDs8L
	ww9v/c1Ch0yWoKYUsJLlXUCfdNH49kwd39ftpHAx8MpRNsYAuUqHwQn21dzQ6IzRIDYvJYKwD
X-Gm-Gg: ASbGncv0lRGNdJpLjYq36BmsB71h7fz4Xle3ktQ9suFY8U1rVXjwWMLGH9HkO9YYZ1C
	kejimqyod9qKMu+te/5+bJx4PSIalJyrWuqspQlxG+i0VFRdFmkT3NmaopzTtDFXhq964pPTkZZ
	ofdatPFyXD1S+JJq05mjIvMwUrhhtHZQZCBYcGIcaciNv8Eb9HoJlFhZcvyFz6wGp4tLlNIODK+
	a0ROtLWszvlaJQJs+Gy6qOq8Nne7giKlWBagadsm8DOT9PzGPwqNk2V6ZDXl11S7RoQun+/O9k+
	tgwbaU07OQsfMm4NdqKEYUU9dLQ4g3LGi859tskh8xnNJQBBWtCmXGYX2HhSOKS2VH/lXjRAz7G
	P5qvUF+uUIS+EMLeDU6Jn0a9wKFed7ogHPHpz11G0qfFnOIevHbOv
X-Received: by 2002:a05:620a:aa0c:b0:887:1728:c4f4 with SMTP id af79cd13be357-8871728c59amr894422385a.83.1760348550999;
        Mon, 13 Oct 2025 02:42:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG5rMB9HvB5AXbxg2RKZKWc68eyxTWU6vytaj2N3831Ox5tj0I0+5UFZ/Bm24Ksc00cJzA/Sw==
X-Received: by 2002:a05:620a:aa0c:b0:887:1728:c4f4 with SMTP id af79cd13be357-8871728c59amr894420685a.83.1760348550522;
        Mon, 13 Oct 2025 02:42:30 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-590881e4e58sm3942630e87.25.2025.10.13.02.42.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 02:42:29 -0700 (PDT)
Date: Mon, 13 Oct 2025 12:42:28 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Tessolve Upstream <tessolveupstream@gmail.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: Add support for QCS615 talos
 evk board
Message-ID: <7izkmevb43hgqxosvf5aox7lasnby67kbmyqxjh6hypqvonh7p@x5rm3ehnsoye>
References: <qq4aak33bn3mqxd2edu6zgkkshby63mmitg7zqkly2rj4c2lh7@4s7sndb7e2jr>
 <20251010114745.1897293-1-tessolveupstream@gmail.com>
 <20251010114745.1897293-2-tessolveupstream@gmail.com>
 <q32oj6ry7ixulfaxzkm63nidg7ddmdl2moaakmx6rlv77p3wzl@wd2ekastvyms>
 <2d5a3fa5-3882-4859-96fd-3ff2174e655d@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2d5a3fa5-3882-4859-96fd-3ff2174e655d@gmail.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX22aN2/dzNPCN
 nyNZvIpr1sdTqWRLTUXvusOMvMEQBPBl9nn0sN6pN9g1d4FYUSjcoedjFNK9hhkLm+udXIBm0l3
 FLLkRkh826yEtfkNZsgEyauHv548WiqMeIEYeMSATIJC1FZp9oL/q4HxKl1JHrENel05XNRn8WM
 4ozSE0N3mlaiJsgijeYrEjxaIG6GrPJHhSqRsIyYazo4nH5f/c4isS+wRNaD1otdDcWgWvnhoRE
 dDTGhV3Zc7FZeWejTzGmAXo+iPvwaHcoTDu1Vw4NhDuQXsvzE6t3hkS7TVOVuzlQLfleV2/QvlL
 pxc3kwVq2v4tY63B7VYz3KtqNUhkF7pcnWr4sLw1j1I6cB0lNYqn3wOnp7IOyTnMoY8v7sqR6nV
 JpOhIPhdS6SbBrndAX5SdNJzmivSdQ==
X-Proofpoint-ORIG-GUID: My0JRy8JLaVLGIM1Oa4y4GFapdXb7XBz
X-Authority-Analysis: v=2.4 cv=bodBxUai c=1 sm=1 tr=0 ts=68ecc988 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=x6icFKpwvdMA:10 a=pGLkceISAAAA:8 a=3Jcqw9wqeHKyueRvwKwA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: My0JRy8JLaVLGIM1Oa4y4GFapdXb7XBz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 adultscore=0 impostorscore=0 suspectscore=0
 bulkscore=0 priorityscore=1501 clxscore=1015 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110018

On Mon, Oct 13, 2025 at 02:34:10PM +0530, Tessolve Upstream wrote:
> 
> 
> On 10/10/25 17:49, Dmitry Baryshkov wrote:
> > On Fri, Oct 10, 2025 at 05:17:45PM +0530, Sudarshan Shetty wrote:
> >> Introduce the device tree support for the QCS615-based talos-evk
> >> platform, which follows the SMARC (Smart Mobility ARChitecture)
> >> standard. The platform is composed of two main hardware
> >> components: the talos-evk-som and the talos-evk carrier board.
> >>
> >> The talos-evk-som is a compact System on Module that integrates the
> >> QCS615 SoC, PMIC, and essential GPIO connectivity. It follows the
> >> SMARC standard, which defines a modular form factor allowing the SoM
> >> to be paired with different carrier boards for varied applications.
> >>
> >> The talos-evk is one such carrier board, designed for evaluation
> >> and development purposes. It provides additional peripherals
> >> such as UART, USB, and other interfaces to enable rapid
> >> prototyping and hardware bring-up.
> >>
> >> This initial device tree provides the basic configuration needed
> >> to boot the platform to a UART shell. Further patches will extend
> >> support for additional peripherals and subsystems.
> >>
> >> The initial device tree includes basic support for:
> >>
> >> - CPU and memory
> >>
> >> - UART
> >>
> >> - GPIOs
> >>
> >> - Regulators
> >>
> >> - PMIC
> >>
> >> - Early console
> >>
> >> - AT24MAC602 EEPROM
> >>
> >> - MCP2515 SPI to CAN
> >>
> >> QCS615 talos-evk uses a Quectel AF68E WiFi/BT module (PCIe for
> >> WiFi and UART for Bluetooth), which is different from the RIDE
> >> platform. Plan to enable these in a follow-up patch series.
> >>
> >> Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
> >> ---
> >> Changes in v2:
> >>  - Rename compatible to "qcom,talos-evk" (suggested by Dmitry/Bjorn)
> >>  - Merge enum entry with existing qcs615-ride block (suggested by Krzysztof)
> >>  - Fix subject and commit message to use imperative mood
> >>
> > 
> >> +
> >> +&usb_1 {
> >> +	status = "okay";
> >> +};
> >> +
> >> +&usb_1_dwc3 {
> >> +	dr_mode = "host";
> > 
> > Is it really host-only?
> 
> The USB1 port supports both device and host modes, and the ID pin
> is available on the hardware. By default, it operates in device mode,
> and switching to host mode requires a hardware switch on the SoM.
> In the current patch, I’ve set dr_mode = "host" for host operation.

Please provide this info as a comment (e.g. switch xyz should be
switched to 'ON' for this to work).

> I plan to add proper role-switch logic (using the ID pin) in the
> next patch version, so the controller can dynamically switch between
> device and host modes.

Yes, please. There are a lot of users who depend on USB device mode to
work (e.g. to connect to the board via ADB).


-- 
With best wishes
Dmitry

