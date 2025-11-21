Return-Path: <devicetree+bounces-241210-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DFBBC7AEC2
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 17:46:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B7352346C8F
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 16:46:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 417D32F066D;
	Fri, 21 Nov 2025 16:46:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Vrx3oM8O";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jRHhlX5A"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E0BF2E22A3
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 16:46:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763743587; cv=none; b=Re1qQ83IUKh5YN2EMies29nQq+eedpbEyBu4zZGSlxDSwHi3HPw2Np5TJeWVaZ75RFkzNYKpSaeRPmSesvBbb8/DzHchlIU6hhZy11czmaDcpj/0QJnlFxFkHgHuQEtSbmih0NRXhCO5N27SSZ4YNkcueJOpK1iDU8zCifc+w7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763743587; c=relaxed/simple;
	bh=fk/sn6bCoX+Lhzv8XrY+s5rPYVek4Y+4MA5RJ2Lxpuw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BqaHcG4FxikZopTw8iQUIdFp5DxE6fD6HOhtCJ5OVWaeM84lPbaf+tB7ihPD+nH4sfL8Wbil57TOms9PwU586M7hmiz1VGc8VG9uekt7mJMiPDQnluMu5GQnY/kKKk7swYlVCADqQnyqg+pzepRsGtDGF6HNY1BuqBn4sut35Tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Vrx3oM8O; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jRHhlX5A; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ALCBb7r2832271
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 16:46:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Dish8P1D1ku8eO1qPQVS9u/K+aVmOz84EXJR4kqR5cQ=; b=Vrx3oM8O73MyLP8O
	xnpo1HIiNxfKYS8v5Fkw8JYVp94CwLswTY273Lf2TCixjH3/EHXMy+g8y4MlbM2L
	CPqPH1q9vTjLz5EWRpwpuqJnntwmYLzsS4kpcE4TT/VNV0V4JUzTjXsIi/IUl5Is
	rLw/CG47g/vlURCAjpP0BGn8BEnmVucoxzKQZS1LPIlQ7Mu9kH/Ih8wejqvBLlkj
	5VvfgTaGBq5GP19wdWZItGYxDw/DXEzEPNLjjpVQKttnf8IzbNZcTAN7UtAN0BsM
	5MrYNCsj/fkjDwL31dadUXmk04Y7GtG2q9erZL0G+2+wOi1kbf9lQozXDG/nFstN
	+xr5fA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ajhyq26se-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 16:46:24 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b22d590227so254771185a.1
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 08:46:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763743584; x=1764348384; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Dish8P1D1ku8eO1qPQVS9u/K+aVmOz84EXJR4kqR5cQ=;
        b=jRHhlX5ADODa2T71PGwmCr1XZ+RbgqwAfZOcANgpqopB04zuoJ4wta6kgSCvea+Y0e
         X+WRbu2MZdg/4z/qiaoeC50CdcmZ+3JawdOAon3aspFER00EVWdSgTL6IgJdNztEcYkI
         5htrwLfWxMJLQyW+KBK1BiIde0Hf6RNj0qwFT03bDuZ3rInjDHAf+O1vrgTB9n8ZTwDh
         1KR49vUjbHougOuNIcvFnzvHevCjxsgBTgs50iFcx6U9KbGPUD9TQez9dCnxskeddu87
         3n/SlomUy35KUlLEndUDw6ja4WG7Nsj+hsz1UidAqdAZdufnm12ESGkEwMdGgXzcgFUe
         FCBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763743584; x=1764348384;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Dish8P1D1ku8eO1qPQVS9u/K+aVmOz84EXJR4kqR5cQ=;
        b=H9s9iToVHRnsswSoghg15O8qg9nzU+CBctRSHdP7Qk4qfHErge9+aEgXRl2doM91e2
         cqosvX8Ev28bHIygl3UB6ZbDUpLDK6TdS5jbUE7IO5/KI/feq6HZy8MyFIkla7Xw7dz6
         6sFlXtJqr78VI/HkEOY5i6PR8qZqI0Ndsn9QygtxVNFXI6qYzr6Dq2rWGE8pkKaY1WCO
         +LsjuCd1DKK6yVh9MvqjUlnFuPX9wY5nuXkTkGMdLhmTJTcIagQetXBxACPF/pe7jJ8J
         WdWJ0m/MBV1n1Zmh+S4S1/xs8IK1lFrTAkjRtCX2EaiBIX7V4klgn3/tluWoeIKy+TsI
         IhNw==
X-Forwarded-Encrypted: i=1; AJvYcCWeK18iw4KvieUl3qIPqknqo7ftInsIVrK6wDHSNFXJ1ilmK5XfM2ZowWBHbBtLIyUMwcdqEG7a+3Aw@vger.kernel.org
X-Gm-Message-State: AOJu0YyNYmfybZkvqRume7jvxIU/XxW3AzsjSHrgZQi8HaubDLJyg31O
	7qb5WMSKNXMhxIXRId54Cj7nWbrWdCqkAgUiAMBbMx/WjWkxAWAN4pU5GqU3aDwd1EV7+qzKhjF
	fIUlJwB29iVizeoIcojaUYYSVuBtZXA96l9G6CfBLTbdaY33/xgCeBDt7oaDPiKEF
X-Gm-Gg: ASbGncsnPFiyAAHCzv/mFUGv/Z6Ec+BXnae3B/C2IsVD/vrplrB9DOXqoYTHsMcjAX8
	9cGGGAE/SVDy3AOIygJa/YJW6YDNidbySPFLWGO0X8k21VFbwT0SUKkZ8G7iImxjHsEbv8ro97v
	J2qXl2FjG8wV7z6ySX4IZ7zEEwxEY1977k9oXEmQcnVVndm0rAnI3+DeHGnha8vRA6xBC7QQJ9Q
	ZCbSt6XHqv8fPbgB7Yl6JlBiJBUl97wLJJgqYAktKNLt7hp1Twa6kCtRk314YlDsfou/2CEBNNk
	3wBHsORAxLOVd3wcyPEuE7fnzkkbDnhp8kaFXhUKMepb4wcYSr2MA4XCLIbD0Jqofmth3CvVXGL
	k3d+cD1sGMnLKa6FwgBH4Ncx8BKLHfar/V2nq4hFQOs+QlvJ/diW9UayUCUtQTQYUTvx4OqapUL
	RhXX6viafP6BnTVz0hIU0jML8=
X-Received: by 2002:a05:620a:1708:b0:8b1:1585:225d with SMTP id af79cd13be357-8b33d497510mr382775585a.82.1763743583614;
        Fri, 21 Nov 2025 08:46:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHRWaAqzZHl1p7u4hKa0AaNatE6ic1VlC2VdmBCj9jG6rJAGp7VmzQL9XnlDqjTM3vddA9vuw==
X-Received: by 2002:a05:620a:1708:b0:8b1:1585:225d with SMTP id af79cd13be357-8b33d497510mr382769385a.82.1763743583064;
        Fri, 21 Nov 2025 08:46:23 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-596a0d1496csm1288609e87.71.2025.11.21.08.46.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 08:46:21 -0800 (PST)
Date: Fri, 21 Nov 2025 18:46:19 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: tessolveupstream@gmail.com
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 2/2] arm64: dts: qcom: talos-evk: Add support for
 QCS615 talos evk board
Message-ID: <46k4uvtoit5tty3ojh7da7yliqz27tdcscu2co5tuowy33uicc@v3f3cojpwvzp>
References: <20251118130814.3554333-1-tessolveupstream@gmail.com>
 <20251118130814.3554333-3-tessolveupstream@gmail.com>
 <ug4n5dpsg5v5jwhwmjaktvydhtfx6gagoum6lul2a27h44xexz@uvdu6ma42wei>
 <17085f43-22fc-4590-bf42-6869ca3d7bd3@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <17085f43-22fc-4590-bf42-6869ca3d7bd3@gmail.com>
X-Proofpoint-GUID: 8dFSQHmjAUNf9kRXtpPOiYZh1beq9o4w
X-Proofpoint-ORIG-GUID: 8dFSQHmjAUNf9kRXtpPOiYZh1beq9o4w
X-Authority-Analysis: v=2.4 cv=N94k1m9B c=1 sm=1 tr=0 ts=69209760 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8 a=BjXusaqdeZu2ZgiMuIEA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIxMDEyNCBTYWx0ZWRfX2F2KPc/CkkGi
 9vUQXBKaQNixZzf1eBeSR/9l1mi/KjgAOQ4RwIpvwrQjhYLOmMYngmxjxWgJMvF2nLF3s3yE7OU
 j4G/ZWaOrhUS4F6VKhj6q4q777s/4L2c9wNXTGgK36PtPl67jRpeii0bVMZwaiQIR1Tkhtt7Dr2
 AJuQmMEi5ZBKKmFrr4AdJJPRGjf8r5+4fnMiWI4A4Iv8Y+D15ouhmDDm0VgiDFUhnpDqtoB7Axh
 fj7vkGStmeYXZ/IWAAmZimd8mAvkHSRM6LKIQCFotnBS+rt+psgUnPkBH+DtzUz2Sr2bWkdkeFL
 NwZVADD4cr3jifVBlB6pd07s4jlQg2fzBK33PnxKAPoLPEUx1HeqY8/mloAaTIiSEWLUH4MPrs6
 qfMh6XgUhlTCSnigX6bOGVl2KJ+Z9A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-21_04,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 spamscore=0 adultscore=0 clxscore=1015
 priorityscore=1501 impostorscore=0 malwarescore=0 phishscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511210124

On Thu, Nov 20, 2025 at 01:02:39PM +0530, tessolveupstream@gmail.com wrote:
> 
> 
> On 19-11-2025 15:55, Dmitry Baryshkov wrote:
> > On Tue, Nov 18, 2025 at 06:38:14PM +0530, Sudarshan Shetty wrote:
> >> Add the device tree for the QCS615-based Talos EVK platform. The
> >> platform is composed of a System-on-Module following the SMARC
> >> standard, and a Carrier Board.
> >>
> >> The Carrier Board supports several display configurations, HDMI and
> >> LVDS. Both configurations use the same base hardware, with the display
> >> selection controlled by a DIP switch.
> >>
> >> To avoid duplication, use an include file, talos-evk-cb.dtsi, which
> >> defines the interfaces and peripherals common to both display
> >> variants. Two additional DTs (e.g. talos-evk and talos-evk-lvds)
> >> can describe the selected display configuration.
> >>
> >> The initial device tree includes support for:
> >> - CPU and memory
> >> - UART
> >> - GPIOs
> >> - Regulators
> >> - PMIC
> >> - Early console
> >> - AT24MAC602 EEPROM
> >> - MCP2515 SPI to CAN
> >> - ADV7535 DSI-to-HDMI bridge
> >> - DisplayPort interface
> > 
> > You got the question for v6, responded there but didn't update commit
> > message. What is not enabled here? E.g. why isn't venus enabled?
> 
> In earlier patch, we have added 'Wi-Fi/BT and ethernet is not 
> supported'as a commit message. Later,based on 
> Krzysztof Kozlowski’s review comments, we removed the same. 
> Please find the below review comment for your reference.
> https://lore.kernel.org/all/20251028053248.723560-1-tessolveupstream@gmail.com/T/#mda58996a7abac13780f8ce2cd49b84c32d4c50a6
> 
> We are not clear whether 'Wi-Fi/BT and ethernet is not supported'
> should be added back to the commit message or not. 
> Could you please confirm your preference?

If you are unsure, you can add this info to the cover letter. Or you can
write something like 'Ethernet and WiFi/BT are not (yet) supported.'.

> 
> Venus is enabled in this patch.

Ack, excuse me.

> > 
> >> Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
> >> ---
> >>  arch/arm64/boot/dts/qcom/Makefile           |   1 +
> >>  arch/arm64/boot/dts/qcom/talos-evk-cb.dtsi  |  56 +++
> >>  arch/arm64/boot/dts/qcom/talos-evk-som.dtsi | 447 ++++++++++++++++++++
> >>  arch/arm64/boot/dts/qcom/talos-evk.dts      |  94 ++++
> >>  4 files changed, 598 insertions(+)
> >>  create mode 100644 arch/arm64/boot/dts/qcom/talos-evk-cb.dtsi
> >>  create mode 100644 arch/arm64/boot/dts/qcom/talos-evk-som.dtsi
> >>  create mode 100644 arch/arm64/boot/dts/qcom/talos-evk.dts
> >>
> > 
> 

-- 
With best wishes
Dmitry

