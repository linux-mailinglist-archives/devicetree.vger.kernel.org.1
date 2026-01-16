Return-Path: <devicetree+bounces-255904-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EDEEED2D93A
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 08:58:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 97E4030361EA
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 07:54:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E94A92877DC;
	Fri, 16 Jan 2026 07:54:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gPVrTod1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="csrkIjW4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C3D828371
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 07:54:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768550065; cv=none; b=eB80wt0ctZI7H2lNPtM23lMRiIJoFUo6jXXbd5yBvKybFE86v04aopuyFxngMQr4SexKggkR5CRemdK87ejAJWhDDe+ptIi5fPHUXLbs18+kJG8GAhCYBdLzg0vsqubZAKGLAl0AyZzEuyn2i9ACk1VZIdRaaGoYW2PSL1D6qAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768550065; c=relaxed/simple;
	bh=FeQ/2elsJYTkiuWp4IloEO0qcnIe4QF6CyGzdhfokVg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=b0lZlckmjPvummNTcnywjc7db8FilbtsFExJeXhk5zTqnyB4NyJ2guV3a/NKVc5PCbQfkdSt9pqsmPLwxE9cDUlcNeUKaYc5BSSfC+vv7cYUQANN1sNj2i3OKYQaEoyQKR9aXtpPJ3Wc4sArK+OHrbGtLOOOfFqGNs1/W4P5/6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gPVrTod1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=csrkIjW4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60FMkjEv3582472
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 07:54:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FkdEieaxVHPqkq11OJihy/oCjaLgcwMVLwgcnnxe92k=; b=gPVrTod1bbxs/KYj
	UNOWq2MpNkzlzOLlcng6tjtI3rdkPo9chcFWqRc2+w+XIwa+tJcet9yRSJ0NtiyU
	+Iv+38ynaSV6KajbcAUPFF/KlpAr+Vg6bx067QLa0cVCpk15ZW10pjXlbE5MyNoX
	O06Gd7xda16nivcZFCREB9l73cEBgoQXzZ54m1/R9mycq2P0j9MxkoJsXeoBQnZm
	NmC5TyoS7B/L1fLEkR8dBkDP0dSVGOITQ32HXUqAMe24h94qp5/cGrIFhAu4LxKC
	7N/uKzp22MLMIy40zdYFzwspBe225AQGkK6kv20vhHmo8UntL6frP1M31kw/qCp2
	VwcTwA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bq9ays9ys-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 07:54:23 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c52f07fbd0so794426585a.2
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 23:54:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768550063; x=1769154863; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FkdEieaxVHPqkq11OJihy/oCjaLgcwMVLwgcnnxe92k=;
        b=csrkIjW4eenhpLDoBH0dLcNoSlqKOc4QKfY8oujG6mUVXqrjpn2dmb0Tq7eedyWxrO
         XEF5ZjZ5kfMHSuCJBdX8AvcGD6td6JHQPG65d3cK6C7JReSAqH1FVSJ7KcnDWWTlRvDL
         FqXH7pXo3VmqTold5qNGWbXa2a7z1LBPLWxVizWkZl6fl/WYTwOeOSjsW0ywBkPgjkDU
         F0GxPQRCJE6moC4UoC/hhFnyiKOODOMvi5SiQo/qQA8yyUhbM+QX99G7Ev0W1Er2HRdR
         JImc8P1CPCRA/rkog9UAlknVtYnc2H8HY81g/Um870SPLHpjStxgDswirZ70FYcFbMzs
         3WQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768550063; x=1769154863;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FkdEieaxVHPqkq11OJihy/oCjaLgcwMVLwgcnnxe92k=;
        b=LKjysZI2rs9m8WTKJfGH8oylVeBygs7QIPDq2gjaYyyzbvJQ7Pp7Rg2hh7Tqu0lO+F
         7/PgzXzjv8AxNfyEDXbrTosiL9gdGaeF21H3lWV9nPR4fGtxC8D/WpwFYhiL6HDlVkHv
         vE7Gv+RHlHdA+v8B9l2paJQeAmDok5Rga+oZS5fYHiT9NvYLemZh2l5oOA2JWiWSoAce
         V0JAS3aVtMDNIWD1d6eH8e5SQjkIPvhUHUoA9/3EZawtX8DqrU1xtA8n0sZeLHsfRNW4
         K4NY0ru4WJZt9g86ttSOyGwMoE72ow+w/mikeUJmDr/rAniA2eT/pHwkDw7QA1T//0BJ
         GKhQ==
X-Forwarded-Encrypted: i=1; AJvYcCVL/QApgLc9dIhqFj1VuTOK0WNaG9ol1R65cQ/ABtlRg2jhjZzb1BqqWHdqDfo/5skfsXCJ1zsijcY/@vger.kernel.org
X-Gm-Message-State: AOJu0YyZMrWl7QoDSLtPpgawpNOYoTGLiNOX2mATrYkQBMtEgbXu6i72
	SpbQxt7AegD29LiV9CngDLfSRlJAJqPDBwH9CDKwYuuLRoAquKi9QNtS4hUxLfJ0pe/0X0Xlb25
	YilyewXA8RSn6GZ6+74sTkrh/Cm1B5X+vvyzuE1VEsS+fZziG0MwHv7EBHLybbf/o
X-Gm-Gg: AY/fxX6X9DtebpUYX7ukWqPhGPJLlCv+g81a55GHpbZRK8Okd/eBOlFJthJo3XO3Bix
	iwC2pwcwbGdKfyHQmR/xuLK5oBjThjcoWR8bpaujhkOVp4SNoxrU3M/efMYTioEriKLwr+5+5ir
	DW5leAoYlkyXOf4U1D3hPJGWq62AfsR9h4OjEqiJ6iQVMsrns9hO9ET6h1PcQCUmtyv56OyAHfv
	faBCC4tbcAEek2emSK30bH4A8xLdeTwq870orYRcn9y6HM4uLk3LN3fcp+fA87+RwnwtxDxyncN
	Au3cLJC3kr14R1bS4ye2QxLC7NUJLbTOH4Yf2+R98mYcvkhzyM5lpiR5IR9sr1Es2HfaIrRQFCP
	px9CJ6XPjc+yRDOOJwop86+GFtIhcf8A/yC85Os3ivmfiP7Ubch76TvBBNtRwDioDXMzeU70PUe
	d9oYXRdW/NHvzxn5pUc1yDyOY=
X-Received: by 2002:a05:620a:690d:b0:8be:8e5a:7a6c with SMTP id af79cd13be357-8c6a6956087mr263899985a.73.1768550062763;
        Thu, 15 Jan 2026 23:54:22 -0800 (PST)
X-Received: by 2002:a05:620a:690d:b0:8be:8e5a:7a6c with SMTP id af79cd13be357-8c6a6956087mr263898485a.73.1768550062331;
        Thu, 15 Jan 2026 23:54:22 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38384e79114sm5269301fa.32.2026.01.15.23.54.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 23:54:21 -0800 (PST)
Date: Fri, 16 Jan 2026 09:54:19 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: tessolveupstream@gmail.com
Cc: Jie Gan <jie.gan@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v12 3/3] arm64: dts: qcom: talos-evk: Add support for
 QCS615 talos evk board
Message-ID: <5c5oalpne2xedc42yomtur3lo7vvdyncgs7yd46xw4nvi6pzbd@vcjz3wsyjd3c>
References: <20260114100043.1310164-1-tessolveupstream@gmail.com>
 <20260114100043.1310164-4-tessolveupstream@gmail.com>
 <5102252a-0f50-4ee9-97b4-a90859a33b2b@oss.qualcomm.com>
 <128a5f86-dd3f-4e5e-a55f-3c8b5993779b@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <128a5f86-dd3f-4e5e-a55f-3c8b5993779b@gmail.com>
X-Proofpoint-ORIG-GUID: X53VvEAzL3QVhixdSH2KmaPuhQFfMrHw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDA1OSBTYWx0ZWRfXzmR2VOoKeyjw
 V0NRznZsYSVqltRV0z45jzKEfDA2HyW2epQ+nni70u/vrWQ5/TSZCs/eQiQODZDPIFwjqsVrg5c
 WKgAx/vGm7xY+jeZ3jhBn7WR7am1bb39Nyg9xEozW7eFMYA5UeK1+9YLcaIUeP0DFMSrXD82rQJ
 6voG75omMb2qKpfe+6bWEQEsnRX8Q05IGYQPFjbrUuIRZ1z4qOgO9BJtR/I6EjjLX9gN+EwNE67
 JaBWPC+ZXsEjwls/37eReukZqANZeDlhkMJ8cfCIjlvDPPuHoOtXvvH9B3FlTqWswqf+VN8+UZ4
 xuSxFHqWrXGeKWZREpYCwnql1FTklvJbZw+Yyq7wRKtr3OyEoAvLSzQ3iY45Zc+djx0BPOucl7y
 FZfDeShA2bLmhN7GnlahVhhWsmZdsh9gGWNp98BNO6lJiTL72b52VircaPyTbSYaiOjrEe73W4y
 4kMruQuHKVTpuMKZPzg==
X-Proofpoint-GUID: X53VvEAzL3QVhixdSH2KmaPuhQFfMrHw
X-Authority-Analysis: v=2.4 cv=NfDrFmD4 c=1 sm=1 tr=0 ts=6969eeaf cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8 a=e2_Bygt052TcFees0PwA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_02,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 impostorscore=0 suspectscore=0 spamscore=0
 phishscore=0 clxscore=1015 priorityscore=1501 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601160059

On Fri, Jan 16, 2026 at 11:25:50AM +0530, tessolveupstream@gmail.com wrote:
> 
> 
> On 15-01-2026 07:54, Jie Gan wrote:
> > 
> > 
> > On 1/14/2026 6:00 PM, Sudarshan Shetty wrote:
> >> Add the device tree for the QCS615-based Talos EVK platform. The
> >> platform is composed of a System-on-Module following the SMARC
> >> standard, and a Carrier Board.
> >>
> >> The Carrier Board supports several display configurations, HDMI and
> >> LVDS. Both configurations use the same base hardware, with the display
> >> selection controlled by a DIP switch.
> >>
> >> Use a DTBO file, talos-evk-lvds-auo,g133han01.dtso, which defines an
> >> overlay that disables HDMI and adds LVDS. The DTs file talos-evk
> >> can describe the HDMI display configurations.
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
> >> - SN65DSI84ZXHR DSI-to-LVDS bridge
> >> - Wi-Fi/BT
> >>

> >> +
> >> +&usb_1 {
> >> +    status = "okay";
> >> +};
> >> +
> >> +&usb_1_dwc3 {
> >> +    dr_mode = "host";
> >> +};
> >> +
> >> +&usb_hsphy_1 {
> >> +    vdd-supply = <&vreg_l5a>;
> >> +    vdda-pll-supply = <&vreg_l12a>;
> >> +    vdda-phy-dpdm-supply = <&vreg_l13a>;
> >> +
> >> +    status = "okay";
> >> +};
> >> +
> >> +&usb_2 {
> >> +    status = "okay";
> >> +};
> >> +
> >> +&usb_2_dwc3 {
> >> +    dr_mode = "host";
> >> +};
> > 
> > Both usb devices have been configured to host mode, do we need adb?
> > The adb only work with usb peripheral mode.
> > 
> 
> This topic was discussed previously, and the fix was implemented 
> based on that discussion.
> For reference, I’m sharing the earlier communication in the 
> links below.
> 
> https://lore.kernel.org/all/qq4aak33bn3mqxd2edu6zgkkshby63mmitg7zqkly2rj4c2lh7@4s7sndb7e2jr/T/#meaa464a4e6992b36b5d8d41ddc691ee4ea36b1ce
> 
> https://lore.kernel.org/all/20251014120223.1914790-1-tessolveupstream@gmail.com/T/#t

Neither of these links is relevant to the question.


-- 
With best wishes
Dmitry

