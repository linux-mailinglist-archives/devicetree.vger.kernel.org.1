Return-Path: <devicetree+bounces-197617-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 47287B09F88
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 11:26:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A66C33A58A0
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 09:26:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B11C298989;
	Fri, 18 Jul 2025 09:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Yryr+SyN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87935298261
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 09:26:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752830793; cv=none; b=UvSu+IQrdMZHZU6CQ534aYAa3nTlAuaKta2MjM028yPO2ZXqxdckLf4ZqpFl7orzLJ1df4/rM8s4V8H6wyoqCvqzg+PpIdUC3wUzYP/mlPTceuPNqCSLk7LoPpcJmVqKte5F8xTPIu41J3yzxeiOpn3TxZlLW2pI0i+hKhsW6N4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752830793; c=relaxed/simple;
	bh=smS1OUgSzyUIU0rtJExIYiq4cV0O0jPRf2zTTzbUCgM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gAXJR9E78yq/bvzvMbpNZdjmr1txiqjERJsfvm1rMciKkIbBbyN6dZf997GdaNWt3tM6Uzi2AyZ5HT/uQZEkfzTD8iRCLmTVoe5ljGdAMgT62xFpON9QuH4DclwRJ4eQatcTO53rt4FOyMpKAEMfpmAWjVdDCIqD5CJkoOZuR90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Yryr+SyN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56I7ZGlG016545
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 09:26:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	COoiyLtsPRDlOGmj2f0fDl3bkCfHbow0lzqZhkT/2HI=; b=Yryr+SyNF7Y/9D6S
	6gMKQsrrWdxVdG9IfnBC90Cuhc4tplEXzE2U5NoRa0Q0bKVYrwTFjJsemNOwpOxv
	pepm0F9PyOfLeyd0ROf5CQtFNKgbiLQ9i3R5DmkW4buhAVgaa/jK/SYVtSImjvUi
	cavRR87EQ5uM8Ib1y/uZrTsWbHyF5ZJiqDoaIi4ABya6ABVNF8FNCXoTqhQDSkpY
	3/3S+7nLe004t5+MsDz1y5ES+5cLJ700NOjTPKJhTeM78YJl9xFNt3i7oCEjMT8i
	zvKrlmzfod5L+8ieBSd+XP4GGWf215q2MhtcFdmwgABlji77IcT80Uw85A1dtRlb
	05akZg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47w5dywwdw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 09:26:25 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7e348600cadso245512785a.3
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 02:26:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752830784; x=1753435584;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=COoiyLtsPRDlOGmj2f0fDl3bkCfHbow0lzqZhkT/2HI=;
        b=F0QXgHo7sGnF+tu+4PI+FDp13P/3S10AcwTSar2z5vYACfh9xOqzlYgenBrrQCtne5
         gKge/DBHt63HZ0DwHwbOnSYVsWPiOehhE398MKvxyyolM/uOM+6qLyOGlWUfR+nQt0J5
         8/4hKAZwbuDdVnnnbfTV8sKybuFt77H7iNZK8QsETosN1fIRi6NyO8vSjQgy7V0BLajK
         dmMincUoevvJyNpCMxx/C0cYuMsvQKNENbNnDJeuyaZXGNHglUvcSmRV8ZFDnvYw1hlx
         WbLg+VMRDeKuLLg29zU1hUatfLWQWnr3f7sNpigZoDFX/j5VStW0oQADYVfS53TEUNBY
         v6aw==
X-Forwarded-Encrypted: i=1; AJvYcCUdSPIQJS1V8tR94hPt9CxydgxyBG4UlPxUZbpSXKIHb/dfTKDJLvtJiWpTQHqzVWcFaqIy48wv18Nb@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3XuuXFL+EFyiLAUVI7xSgM/nDsIhRMVdTZczeJBaoikpAU3mn
	QvxsomeP1M3d5E3JhRgeGXM+r6Gj8XArFVavaQWMH5b72nBMjYsi3qaqhClFbL/TpA5DO4aecdd
	C4yUpd4r0CdjZ8eVX6VBd2TD2NxjV4RoXid3Kx1SEgDQbReXPsYbtvWeBGHWgYTbp
X-Gm-Gg: ASbGncvOKti6IeF7BUh3iDLLsswEAi/9NrkQs+1+ybyphPytnLOXaQglb1eXxB0jQzZ
	+nLR1Uk71e1koFmwi6td8luRDKUAb+Mtwu/4yRdztAmoQ3hA9QgkhcIqmeFxc12tNo4doVJ3mKY
	qCehUnRVd0tBtxgMMx7/66+P1P8eZ/qREqglTBf3DCc8LZKep13pqLNpgghq9Pphf+X1gMZh84X
	RtBZ6SbAzPkyGV9q4KuZAgbFdP3N/s361qNLjr09OSscP7Tkm0j8FHtWSVMRzCSqS4wDy3a2KC4
	XhmZMLD5iThib8gv+sIeWnkZrhszsxJ5eJADSTVabxqTOJj3nkhijtWSntIlTRD34DbVLyeyglN
	f9biI6g+0nasz1gbnXRSYfqapg2LU8MMpwh4f99BAhHMl7h7B8KyS
X-Received: by 2002:a05:620a:6904:b0:7e3:430c:5e0e with SMTP id af79cd13be357-7e3430c62femr877497485a.18.1752830784282;
        Fri, 18 Jul 2025 02:26:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF0ULvdLv8+JBhbfjsjnyFteMc4V0YqUWrlV8q9vEs/1OYuftM9PI5a+ZhXXON7UyumHdQcLQ==
X-Received: by 2002:a05:620a:6904:b0:7e3:430c:5e0e with SMTP id af79cd13be357-7e3430c62femr877495585a.18.1752830783799;
        Fri, 18 Jul 2025 02:26:23 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55a31a9bb43sm186031e87.32.2025.07.18.02.26.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jul 2025 02:26:22 -0700 (PDT)
Date: Fri, 18 Jul 2025 12:26:20 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yijie Yang <yijie.yang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/4] arm64: dts: qcom: Add HAMOA-IOT-SOM platform
Message-ID: <rsybfhs6bb46putaytvp4tikauvhynhsam6aufxaflo6vkvzwh@qrh7sm3g7i73>
References: <20250716-hamoa_initial-v1-0-f6f5d0f9a163@oss.qualcomm.com>
 <20250716-hamoa_initial-v1-3-f6f5d0f9a163@oss.qualcomm.com>
 <b4nxjsx4fu4xmookpxukumw36wlcpzelh6axjucqe4lyswptm4@kczsldalq53n>
 <822af9fe-5db0-4620-8f08-9232c608d443@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <822af9fe-5db0-4620-8f08-9232c608d443@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: zyNfyEBBbcGyPy9Whf1Es46_xw2MsJIy
X-Authority-Analysis: v=2.4 cv=RtXFLDmK c=1 sm=1 tr=0 ts=687a1341 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=H507J6Sm5dMqOWlkyu0A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE4MDA3NCBTYWx0ZWRfX6mzZB7zK+hCs
 9Ee8whkbiMMOQs5ON1Vp9fgXwF/uo6NxAVzmY/DENh11CSjP8nyh6X/yDvv3AngMXX//3xI8Ihq
 oTHWj2IjZH4PPxnCMAuB9KC/9iL8wBmD77JVIuTwFNaoUmYoSOWrBCOBUOJE+3e74rCsrKompbf
 LH7LtuY45VPCJcnyUUZctngZZ65/rEyIJKkMHwrT9awm11/cPqe3eRU8chD5K1IPSLCbz2cN9UN
 PRUj7ns/RQu8Om4IcOs5q/MZDAbSSoz+juVvV5gsKNCFXxJWaeKIxAz+dkY45VSHULjF8PMGkbC
 dVnP+FZYW9328iGyv2XBl/dBasJWZ/bZ0ch35MzuBsmc7/9SN/jHLmZ7AS58+aBEQgIu/iNKPeC
 2Utc8Xv6KMiSxnAk3vyROagDlWjPXXkIVxRNWgYOmXLIfu3n4pzu8b1/VSVNt9ZAPm+Is3De
X-Proofpoint-GUID: zyNfyEBBbcGyPy9Whf1Es46_xw2MsJIy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-18_02,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0
 impostorscore=0 malwarescore=0 clxscore=1015 mlxlogscore=999
 priorityscore=1501 phishscore=0 spamscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507180074

On Fri, Jul 18, 2025 at 02:33:50PM +0800, Yijie Yang wrote:
> 
> 
> On 2025-07-18 02:52, Dmitry Baryshkov wrote:
> > On Wed, Jul 16, 2025 at 05:08:41PM +0800, Yijie Yang wrote:
> > > The HAMOA-IOT-SOM is a compact computing module that integrates a System
> > > on Chip (SoC) — specifically the x1e80100 — along with essential
> > > components optimized for IoT applications. It is designed to be mounted on
> > > carrier boards, enabling the development of complete embedded systems.
> > > 
> > > This change enables and overlays the following components:
> > > - Regulators on the SOM
> > > - Reserved memory regions
> > > - PCIe6a and its PHY
> > > - PCIe4 and its PHY
> > > - USB0 through USB6 and their PHYs
> > > - ADSP, CDSP
> > > - WLAN, Bluetooth (M.2 interface)
> > > 
> > > Written with contributions from Yingying Tang (added PCIe4 and its PHY to
> > > enable WLAN).
> > > 
> > > Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
> > > ---
> > >   arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi | 607 ++++++++++++++++++++++++++++
> > >   1 file changed, 607 insertions(+)
> > > 
> > 
> > > +&remoteproc_adsp {
> > > +	firmware-name = "qcom/hamoa-iot/adsp.mbn",
> > > +			"qcom/hamoa-iot/adsp_dtb.mbn";
> > 
> > Is there a significant difference qcom/x1e80100/adsp.mbn ? If not, can
> > we use that firmware?
> 
> I believe there are differences in firmware between it and the EVK, even if
> they’re minor. Therefore, it's better to maintain a dedicated folder for
> each board and move the code to the carrier board.

Then it's not a 'hamoa-iot'. It should be 'qcom/hamoa/iot-board-name'.
Please submit the firmware to linux-firmware and also move existing
x1e80100 firmware to the 'hamoa' subdir, maintaining the compatibility
x1e80100 -> hamoa symlink.

> 
> > 
> > > +
> > > +	status = "okay";
> > > +};
> > > +
> > > +&remoteproc_cdsp {
> > > +	firmware-name = "qcom/hamoa-iot/cdsp.mbn",
> > > +			"qcom/hamoa-iot/cdsp_dtb.mbn";
> > > +
> > > +	status = "okay";
> > > +};
> > > +
> > 
> 
> -- 
> Best Regards,
> Yijie
> 

-- 
With best wishes
Dmitry

