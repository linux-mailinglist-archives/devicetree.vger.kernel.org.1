Return-Path: <devicetree+bounces-217792-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id AE095B593B1
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 12:30:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E1B9B7A893A
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 10:29:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64B81305048;
	Tue, 16 Sep 2025 10:29:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dfyAVtDw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 144B82FF669
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:29:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758018564; cv=none; b=L/heM5yTxT09QrbhNp8Ufb09vTlC7trNeH+6wyb4B3lq9TDCYnxM9RuLPGs6zFLmY/WvgkdhV4JhzVVx3USmEhmdwwHeCzmT7YXJdnXy0wbkgeI9R5R47s1/bHrJ/vMkFybkd44xOExBjxkXJMp02o8twBEvvsMHzmpA2VL6p2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758018564; c=relaxed/simple;
	bh=W41XG+VcXt43LUvirb/AV12HcyVDg1aJXstceROvD1M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=C4rZbBMtnCKf0EjfkKFkYYcmrd1nYA/mUanKW2k6ekTCECEdQOxRWrXZsMA4s1ji2ri7t7mV46l1TO59poChJazuYd1d7Cq7cz1i1n5o+hLj9aaVQREbFr2VSW2WfUYevgvDrBmGGzZApeQ7LGYBp74x/ole6kSIzMUNl+17RRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dfyAVtDw; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58G9hWqt001522
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:29:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fjc236GagAAuG1GjVxN5vmBCcQ2QaumH8QuL7GP8Krc=; b=dfyAVtDwQvq5KdOz
	Ggs5DIzcIKeF4anPCYkTsYZZBYu1r5pZwAGWa6fSA1DT2gO/nG3bPScSkeGpYOGR
	q9uJu1PgUpF6dbrNNMRR5NetstUdN2PGfx0Z/92LYtRoPgE2/OkNFszi79bvnJCv
	XDeNhVOsc4if2eiwOtDPzzAH4HK7fsjKdU7jwc6O8zaSZNfqf1bChsRghrd6arvJ
	resSivQKyd8m54lqdQuwyVvLAGuv8iSCdukRGHr/rHOj/vWh1yvSVSgKFLhKKd0y
	PPRV1sEADcHzrtU0mLTmXE2zbeJA7QgoazpSCZcndzVhdbyEb7A94IYIe+dH55ZO
	RhmAjw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 495eqpygke-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:29:21 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-814370a9f58so1074432985a.1
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 03:29:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758018560; x=1758623360;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fjc236GagAAuG1GjVxN5vmBCcQ2QaumH8QuL7GP8Krc=;
        b=wFKgBdk0gmIuUGrOiytgzS8RdezLCzl2fic9kZUH8cqkwC71SHHTxjJas6dP+4v6tx
         How2KBAjZq0U3TGQX1KYdGdBmgUQ0t11iqHTcVXQnET6uRf+TsftGGyQzB7gHslJ9bq2
         OrSzv8szPE/Km6iAsFCB6g73fnwpDttMpvGuuSorx1DPF0QJNzsz1z+FMkBcG1l9v0Ai
         hgweaWcHYwNeEjvhOuUjVaLTl7KdWTEq6MHRT1WoG7fEdmp4PUuOKIH5msqSQeoAIRw8
         VQiv/nH/bxBLGwrK0QF3dC2hagxWm3g956jAFycs2U9G0oC71iAmwJtHgv1bvJgOej5a
         wi2A==
X-Forwarded-Encrypted: i=1; AJvYcCXX3o3HbFBw60O+DqX8nAJv2sFIdDosWPoyhE1kEG4D8BkuvPsE5NkFfcQlCel3J/PyW1cEOw3D3lJz@vger.kernel.org
X-Gm-Message-State: AOJu0YyE2Ud7BK0C9y5vOWN2dM/77UiqLAeMhrJKBqUnGITEz/ZgZt/y
	sT9UAoNxtc2SXshkQ2kDF6F4cVfjdnIlF/+T5hpdhWV0dzQYqYow7Gcl+y+KCxmL5uf3FtEAtZO
	YW3jmx7MiX1wzy7VtUHfdtY0eLB9PyZKGctDi4YqSFiATVv8ZGJOGuk/q0KyF5oRn
X-Gm-Gg: ASbGncszVfEPePSxSJHFzkIWqVBG9off4LNibIwXsyNpS97zL4A8mNXk8jVL3i3Nm4V
	8pZX5679uwnoki2JEw84NCSDbvT4oRBaD6U4tFlhWKA4vgyW3sPmfVO/F28vwz+jK8TwTozqOrX
	f6ht/6jaQsGUBEEoHj0w6nryCW9TyFO0ma9+1PyNQtVSlOvAAVymmJaZaQE8iHe7qqA7mpoNt5u
	8DiQTOkEVp8oXARVz4ilfEQduuzsq+bTq88xEeNYd+AIfKzYJluRw3xP8f1gzQt5QMaCap2oYQE
	tqetvo2pf9m4p80++8WU3oXfTDOZRBBro0ccUTjOuFdS2qTU7uAvHh9dag4sz0r4iSblvt3Z6W6
	ENGg/jQoJQF416Z6n4UHxbBIXvMQAhD9uMHGnK4TOaikhshyV/4rO
X-Received: by 2002:a05:6214:20ac:b0:780:a69f:d7a8 with SMTP id 6a1803df08f44-78d5e5ef10dmr13227286d6.21.1758018559773;
        Tue, 16 Sep 2025 03:29:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEHlOk6xxLvmgGoKl9Oz0VBGIlnFZcTk1O6pZfk8xFUIOuu/r3qlX4woNj4vW/bK9oeM9aVww==
X-Received: by 2002:a05:6214:20ac:b0:780:a69f:d7a8 with SMTP id 6a1803df08f44-78d5e5ef10dmr13226936d6.21.1758018559048;
        Tue, 16 Sep 2025 03:29:19 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e65d11f49sm4346755e87.142.2025.09.16.03.29.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 03:29:18 -0700 (PDT)
Date: Tue, 16 Sep 2025 13:29:16 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Tessolve Upstream <tessolveupstream@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>, konradybcio@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingweiz@qti.qualcomm.com
Subject: Re: [PATCH 2/2] arm64: dts: qcom: Add support for QCS615 talos evk
 board
Message-ID: <4e5hygjnmbnxm7gmdqce5w75nupwxo3b6ehgocmrjmfuhlomf5@6ydkk2yaxazj>
References: <20250909125255.1124824-1-tessolveupstream@gmail.com>
 <20250909125255.1124824-2-tessolveupstream@gmail.com>
 <f6kaau5sxgleuim7cgdw6hsvlwl73ye7emwjtrxwvtpl3pxsvr@frxbvtv6ixho>
 <98a92bff-db74-4b14-8a19-1171e60e87bd@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <98a92bff-db74-4b14-8a19-1171e60e87bd@gmail.com>
X-Proofpoint-GUID: Oyau9rKb828ZG09MixV5bS_OfZSPoD1A
X-Proofpoint-ORIG-GUID: Oyau9rKb828ZG09MixV5bS_OfZSPoD1A
X-Authority-Analysis: v=2.4 cv=XJIwSRhE c=1 sm=1 tr=0 ts=68c93c01 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=pGLkceISAAAA:8 a=t2fj3te4-gpxl8S1CQ4A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDE4NiBTYWx0ZWRfXwXPL+/1n/lVY
 1b6re1Eq1NKWY9Za5VaESLkQjyMaDaRCwhIok4mL0IevkRQW/tfAtNRUykAwRvyjPmjYDzt8eqY
 C/FRQBJ+g1XO0Qgo9FKC9JOn9VX7VJ26JlSd0r4wxl8+StE1Q0huCa51ZuuhMv3MKjRQs5qWnCs
 xTLQKUeZZShpoth2fnL8es1nzIPRjE+iPA4COUl+H2yUPIOctQXJH0PHsU9OVNhGpE2K0MeUpX0
 /yjBlcgoFMzB1SyBzQlE9Xvo0lt19a/fFkA0VszCl/UlMK4V9/PmHxXdSaCOnIBnG/BalmVNEj9
 5K/0O/TtB5cmn330TDO8YpbGRA9AvEQlm+hge66NREOjwZeSu7HR2ULwxCTEXw7b0u6VyorFB3y
 lTkRkW8h
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 priorityscore=1501 phishscore=0 impostorscore=0
 malwarescore=0 spamscore=0 bulkscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509130186

On Tue, Sep 16, 2025 at 11:17:31AM +0530, Tessolve Upstream wrote:
> 
> 
> On 09/09/25 19:56, Bjorn Andersson wrote:
> > On Tue, Sep 09, 2025 at 06:22:55PM +0530, Sudarshan Shetty wrote:
> >> Introduce the device tree support for the QCS615-based talos-evk
> >> platform, which follows the SMARC (Smart Mobility ARChitecture)
> >> standard. The platform is composed of two main hardware
> >> components: the IQ-QCS615-SOM and the talos-evk carrier board.
> >>
> >> The IQ-QCS615-SOM is a compact System on Module that integrates the
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
> >> Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
> >> ---
> >>
> >> This series depend on the below patch changes
> >> https://lore.kernel.org/linux-arm-msm/20250625063213.1416442-1-quic_ziyuzhan@quicinc.com/T/#t
> > 
> > This was merged August 11.
> > 
> >> https://lore.kernel.org/all/20241224-fix-board-clocks-v3-0-e9b08fbeadd3@linaro.org/
> > 
> > This was merged December 27.
> > 
> >> https://lore.kernel.org/linux-arm-msm/20250604-qcs615-sm6150-v1-0-2f01fd46c365@oss.qualcomm.com/T/#t
> > 
> > This was merged July 16.
> > 
> > You just wasted 5 minutes of my time, tracking down the status of these
> > dependencies. Don't list dependencies that are already in linux-next (or
> > actual releases), or even better, only send patches once the
> > dependencies has landed (or send them together with the dependencies).
> > 
> >> ---
> >>  arch/arm64/boot/dts/qcom/Makefile        |   1 +
> >>  arch/arm64/boot/dts/qcom/qcs615-som.dtsi | 414 +++++++++++++++++++++++
> >>  arch/arm64/boot/dts/qcom/talos-evk.dts   |  42 +++
> >>  3 files changed, 457 insertions(+)
> >>  create mode 100644 arch/arm64/boot/dts/qcom/qcs615-som.dtsi
> >>  create mode 100644 arch/arm64/boot/dts/qcom/talos-evk.dts
> >>
> >> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> >> index 4bfa926b6a08..588dc55995c5 100644
> >> --- a/arch/arm64/boot/dts/qcom/Makefile
> >> +++ b/arch/arm64/boot/dts/qcom/Makefile
> >> @@ -117,6 +117,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= qcm6490-shift-otter.dtb
> >>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs404-evb-1000.dtb
> >>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs404-evb-4000.dtb
> >>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs615-ride.dtb
> >> +dtb-$(CONFIG_ARCH_QCOM)	+= talos-evk.dtb
> > 
> > If you look a little bit harder, you can see that all other entries in
> > this file is sorted alphabetically.
> 
> Yes, Will sort it in v2 patch. 
> > 
> >>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs6490-rb3gen2.dtb
> >>  
> >>  qcs6490-rb3gen2-vision-mezzanine-dtbs := qcs6490-rb3gen2.dtb qcs6490-rb3gen2-vision-mezzanine.dtbo
> >> diff --git a/arch/arm64/boot/dts/qcom/qcs615-som.dtsi b/arch/arm64/boot/dts/qcom/qcs615-som.dtsi
> >> new file mode 100644
> >> index 000000000000..1b9b2581af42
> >> --- /dev/null
> >> +++ b/arch/arm64/boot/dts/qcom/qcs615-som.dtsi
> >> @@ -0,0 +1,414 @@
> >> +// SPDX-License-Identifier: BSD-3-Clause
> >> +/*
> >> + * Copyright (c) 2025, Qualcomm Innovation Center, Inc. All rights reserved.
> > 
> > This is not the correct copyright statement.
> 
> Thanks for the review. 
> I used above copyright since qcs615-ride.dts in the same platform tree already follows this format.
> If you’d prefer me to switch to The Linux Foundation for consistency with older DTS files, I can respin the patch accordingly.

Please check current marketing guidelines, then you won't have to ask
such a question. Also please fix your mailer to wrap your responses on a
useful boundary (usually 72-75 chars per line).


-- 
With best wishes
Dmitry

