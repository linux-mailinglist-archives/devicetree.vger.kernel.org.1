Return-Path: <devicetree+bounces-256666-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB7BD39EA1
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 07:37:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 69A3A304A98E
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 06:35:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06F66271450;
	Mon, 19 Jan 2026 06:35:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="V2lfrOaf";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="InO1rNIV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2773E26E71F
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 06:34:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768804500; cv=none; b=UxYgrSCEPauVOz1Mgo4VnMS5Zc67uaH5rZ8rQgE1dVPHCMGig4gsBjLt7a18q9RPEgf2+ZGqdBKknAGEwFXoYFFbEMYYJOpHHBYt67lEgovz8iX10qGh/A8N+SceKyKh2ffR0SFLUFRaSgROHljn0NEaR5x1b3kVqkb6M3PV2yQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768804500; c=relaxed/simple;
	bh=xw982SuS0WjHblirWqSp87cGGfUE/L/njWAN0kQP1QI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fgojJIRTFjawMZ9I073XW+dBlCzlcT5xblBNK8YJrFJY7EoqkEZs7ZqglCKDaiX31Jv6XqKRtN7dwwoSqPAH+Ah5DGqiaNJsl8V/A2tUSlNWIGw2wg47aP/NrM3u+S3yJBL/4hfnm1zKPIcito9NbqaKi+7YujxjSymenSWdYbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=V2lfrOaf; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=InO1rNIV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60J34NKU1318008
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 06:34:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Vtk98BntBgPHYqOi2a6nyqVXvxV/tsREvYYoRaWitlE=; b=V2lfrOafdW0Kub5b
	R3W7fJlWtS7WU6jPRyjtwBJWs9xnG1X5zGA0rLXdkkVcl5shmxODpZegsbRHfTek
	z0G89e3H+Ii7R3MzUKZe5ZyaVWPAPlHfhKxDuZMM6OG+uBmZg3HiizEL9qcadKjZ
	CVx+PpGcdGJKpKxKWPyAo6Vn6gVCH78Lkzat/zOwypOsAPVh+EBusWZymL47mQC5
	NwBBnTGXbEjfS+Z6Ctwjn6xJ+BpfSc/mQxW7nEF2ivbzmcXiQo2z69sk32au0uCH
	i6quer50cjGdar+Bk2i/qUy+YfYZGzSny4VzcZ8POJzam4BIAKkJzCHegE3oSuk/
	KrfvoQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4br3q9bs7a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 06:34:58 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c1cffa1f2dso1275115485a.1
        for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 22:34:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768804497; x=1769409297; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Vtk98BntBgPHYqOi2a6nyqVXvxV/tsREvYYoRaWitlE=;
        b=InO1rNIVuvJPxP6o4/8lq37zXVT2d0pvOexQ4LV8y/5W+2uCMTozjMJEGSyxusz49K
         YReg0cau2ZdhDcyPIlcdggqGQOo9tnAi+xeb0qGxLbcASWrYqlJlQqJpNExyAHK1EaAY
         ViBFgKm75Er7A/yEZ6NfvrYORz7iuVxRMxdDzrJpcvcHHZMMuEUQ0NNEXQt+wXrxEydh
         79cWO4UHnY30uphc3jKQ+lsQd/vJ2m0JupL5SQhnWXiHfARGsSYjU/Sjlpk7T1LPUcDe
         nB4uk9T8JQzeQqPV9Ax8t1yR80hfRPSzL9kE6s6uhzZ63BbNeUoMNFpfTTPeiiwIo0HY
         pVEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768804497; x=1769409297;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Vtk98BntBgPHYqOi2a6nyqVXvxV/tsREvYYoRaWitlE=;
        b=b76imM2gZ8zMdbyyG2gx1dgdS9WX9OYBROtOmH+r/myei0ADmC6mzhjh0NWri7zXxv
         sC5DL4DDpfKdrsGgX5HpGIp0ERL2bk1wXT1oMSa/icX3uIzIxvHNkZrPozPQSN+PfnpX
         AIbzA/JK9NS+rSml/HYN61C8IF/UZuAVqIpSBCvZk7eYfDEXcWDOPqOfIl2RyNeDqyC5
         P2F0l+BCY9+/lBvNVN7D0kdci50smxlspjhdeuHnItH8v1dfMHFAvYcDepkx6p+AT4CE
         zoCHcDGO39poRoV3AjdhegKoLeep4ra6trZM+7DAW7l2kRfeSwzSknm6WWJwP3tdaYzh
         n/cQ==
X-Forwarded-Encrypted: i=1; AJvYcCWHWwN4xpkdUU+BySKMzIfErbgSh+qF7YCz0NcPzrgSMBfS07MnAlFUTHdzqqDfZe+GAJpTP+f9QhIR@vger.kernel.org
X-Gm-Message-State: AOJu0YyVldTvgcRowcay7xnYaY6IBtatI1EaHmVUvgwOPW5b5TN7FRaD
	hgSA28GBWaN49EAQJfaqyi4FIQ8AsZwRPAqbV5+YGhj4OMZaV9gQNFDrzlQWglQfyyyiZjOIcww
	TY4dppVvmM4UiPh5/sbGiap0Vm3ZnPAulUsr0nATKnmDoUXgFgjW2ObN6qiNi2BsS
X-Gm-Gg: AY/fxX5FpulrEJd4/6fbYFMA1R0EmyiptDy7k7Zb67HmJn3GnVpZlo8ZQ3UbHtqIbxF
	FQ5VkdA5oI0gsj5xjbWjgw6BmHCEVU8ISOhRQ65U/0YgS7QU3IaxJfYtm7s67BMCsFa9uUvpY28
	1xbi6lodb2luglBF2HmWtp869Rn7tA87TFlaJEjZdD+Nh0I2miW6zwcf4sO5Fliy9GOXtgta4vE
	QKuLym2asvu39brD7O11Q+m7H3JjpjCQ6trpsIsRpzAqk4hXVGUEUp0YVaM4+YPJ1V9ubotbxCn
	mDmVyxgS80vLgCF/9VOX533EAj2fpc+AsNrKK4v+G5yIwdmJU5ohcGDVORsxUhkn6pxKjwvZ2Kw
	S3nhb9sghucg+d2Mxa/dJxSU+iPz+H9torWH5jzD4ChuVOIGlxCm+fDKqz6pM/d83dd1isI0CBG
	0wSWEdHDGKWcZzhy+8d6qvYiI=
X-Received: by 2002:a05:620a:7103:b0:8c5:36be:7c20 with SMTP id af79cd13be357-8c589b84dadmr1811301385a.3.1768804496973;
        Sun, 18 Jan 2026 22:34:56 -0800 (PST)
X-Received: by 2002:a05:620a:7103:b0:8c5:36be:7c20 with SMTP id af79cd13be357-8c589b84dadmr1811300085a.3.1768804496497;
        Sun, 18 Jan 2026 22:34:56 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38384fb9b31sm31475791fa.50.2026.01.18.22.34.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jan 2026 22:34:55 -0800 (PST)
Date: Mon, 19 Jan 2026 08:34:53 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yijie Yang <yijie.yang@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v4 0/4] Initial patch set for PURWA-IOT-EVK
Message-ID: <b3p5yhstng6nbrrdavx67vlv62hqqlnms7742txbimpeswqklv@eomkmkkearwp>
References: <20260116-purwa-v4-0-89b2adae9f09@oss.qualcomm.com>
 <jeyj5wqu4uw7tnm4h5ryatoqupdrqpkjcynnydgbum6oj2d4jj@qvvbbifrvud3>
 <ed49abf0-c2b6-4496-a3b0-ef040fd94615@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ed49abf0-c2b6-4496-a3b0-ef040fd94615@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDA1MiBTYWx0ZWRfX8X+rI2t1AZwC
 7BOtd5l/PMY97ltvkLaqZTHfU+7DKn/KFOCjZjCEpSj6kf+RaNe08Pv3au/RIjMvPhzcay69w2N
 E9zTLLJ2lMWpJK0KqY8+DMvqDs53u6OwzARBvUi4u4ADcCw5CbUI+oURwRJHtG/FJja0/WrU19K
 lq8mG3LCvTpFUXhAfUSmyjaCDiaLsd61/Xw/zyoI/24Q+w/pwCXp4+I4RlTBS8DA+k20HE4FQk0
 NsG/GCiaN7Xg3VsFh/+OUXSsJlyGYiHEFuIK5ZjEIIR1OiVmwh+uMdtSIDqHLd/JQ/Jzo8VpoUq
 GtuGaJdAvfLbCm2fGC/GR2tydt70fXLcLdCSzc5/iR5elwmZd6n8wpMi6ewq11Bm94l7Dtqf8PJ
 mOFTZRVvPpZTSfRs0WXwnGeoItQH/YBkkXPb/2y5q1CpFHaLZyXoLXDttovzdWNOG/lejxkADdt
 8sxykBqARkf+ZhsU3KA==
X-Proofpoint-ORIG-GUID: 36BWu0vEj4zjzdw04VZSVBM3bmioSR0m
X-Proofpoint-GUID: 36BWu0vEj4zjzdw04VZSVBM3bmioSR0m
X-Authority-Analysis: v=2.4 cv=dPurWeZb c=1 sm=1 tr=0 ts=696dd092 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=R9z89uIQJvrLHeLMgzUA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_01,2026-01-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 spamscore=0 phishscore=0 lowpriorityscore=0
 priorityscore=1501 suspectscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601190052

On Mon, Jan 19, 2026 at 10:39:04AM +0800, Yijie Yang wrote:
> 
> 
> On 1/16/2026 7:31 PM, Dmitry Baryshkov wrote:
> > On Fri, Jan 16, 2026 at 06:41:26PM +0800, YijieYang wrote:
> > > From: Yijie Yang <yijie.yang@oss.qualcomm.com>
> > > 
> > > Introduce the device tree, DT bindings, and driver updates required to enable
> > > the bring-up of the PURWA-IOT-EVK evaluation board. Focus is on two key
> > > hardware components:
> > > 
> > > PURWA-IOT-SOM — A compact System-on-Module integrating the SoC, GPIOs, and
> > > PMICs. Designed for modularity, it can pair with various carrier boards to
> > > support diverse use cases.
> > > 
> > > PURWA-IOT-EVK — A carrier board tailored for IoT scenarios, providing
> > > essential peripherals such as UART, on-board PMICs, and USB components.
> > > 
> > > Together, these components form a flexible and scalable platform. Initial
> > > functionality is achieved through proper device tree configuration and driver
> > > support.
> > > 
> > > The PURWA-IOT-EVK/SOM shares most of its hardware design with
> > > HAMOA-IOT-EVK/SOM, differing primarily in the BOM. Consequently, the DTS files
> > > are largely similar. Both platforms belong to Qualcomm’s IQ-X family. For more
> > > details on the IQ-X series, see:
> > > https://www.qualcomm.com/internet-of-things/products/iq-x-series
> > > 
> > > Hardware differences between HAMOA-IOT and PURWA-IOT:
> > > - Display — PURWA uses a different number of clocks and frequency compared to
> > >    HAMOA.
> > > - GPU — PURWA integrates a different GPU.
> > > - USB0 — PURWA uses a PS8833 retimer, while HAMOA employs an FSUSB42 as the
> > >    SBU switch.
> > > 
> > > Features added and enabled:
> > > - UART
> > > - On-board regulators
> > > - Regulators on the SOM
> > > - PMIC GLINK
> > > - USB0 through USB6 and their PHYs
> > > - Embedded USB (eUSB) repeaters
> > > - USB Type-C mux
> > > - PCIe3, PCIe4, PCIe5, PCIe6a
> > > - Reserved memory regions
> > > - Pinctrl
> > > - NVMe
> > > - ADSP, CDSP
> > > - WLAN, Bluetooth (M.2 interface)
> > > - USB DisplayPort and eDP
> > > - Graphics
> > > - Audio
> > > - TPM
> > > 
> > > Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
> > > ---
> > > Changes in v4:
> > > - EDITME: describe what is new in this series revision.
> > > - EDITME: use bulletpoints and terse descriptions.
> > 
> > Oh no. B4 probably even warned you about not sending it out.
> > 
> >  From this changelog I can assume that nothing has changed. Is it
> > correct?
> 
> This section was generated automatically by b4 and was not reviewed
> carefully. The actual list of changes is in the section below.

But why????? Why do you ignore what was done for you and write it on
your own, reversing the order, etc? And even if you decided to ignore it
for any reason, why didn't you delete it?

> 
> > 
> > > - Link to v3: https://lore.kernel.org/r/20260113-purwa-v3-0-16eefacbdce9@oss.qualcomm.com
> > > 
> > > Changes in v2:
> > > - Update the GPU firmware path.
> > > - Update the description in the cover letter.
> > > - Reorder the patches.
> > > - Use separate DTS files for Purwa and Hamoa.
> > > - Update base commit.
> > > - Link to v1: https://lore.kernel.org/all/20251222-purwa-v1-0-14ab9316e5ff@oss.qualcomm.com/
> > > 
> > > Changes in v3:
> > > - Delete unused PMIC and thermal nodes.
> > > - Add WiFi node.
> > > - Add display backlight node.
> > > - Add connectors and VBUS regulators for USB3 and USB6.
> > > - Enable PCIe3 and PCIe5; add PCIe ports along with reset and wake-up GPIOs.
> > > - Link to v2: https://lore.kernel.org/r/20260109-purwa-v2-0-f39ee10684cb@oss.qualcomm.com
> > > 
> > > Changes in v4:
> > > - Enable TPM.
> > > - Update the descriptions for video and the USB OF graph.
> > > - Link to v3: https://lore.kernel.org/all/20260113-purwa-v3-0-16eefacbdce9@oss.qualcomm.com/
> 
> Here.
> 
> > > 
> > > ---
> > > Yijie Yang (4):
> > >        dt-bindings: arm: qcom: Document PURWA-IOT-EVK board
> > >        firmware: qcom: scm: Allow QSEECOM on PURWA-IOT-EVK
> > >        arm64: dts: qcom: Add PURWA-IOT-SOM platform
> > >        arm64: dts: qcom: Add base PURWA-IOT-EVK board
> > > 
> > >   Documentation/devicetree/bindings/arm/qcom.yaml |    6 +
> > >   arch/arm64/boot/dts/qcom/Makefile               |    1 +
> > >   arch/arm64/boot/dts/qcom/purwa-iot-evk.dts      | 1549 +++++++++++++++++++++++
> > >   arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi     |  685 ++++++++++
> > >   drivers/firmware/qcom/qcom_scm.c                |    1 +
> > >   5 files changed, 2242 insertions(+)
> > > ---
> > > base-commit: 377054868ffa544991cc491ecc4016589fc58565
> > > change-id: 20251113-purwa-907ec75b4959
> > > 
> > > Best regards,
> > > --
> > > Yijie Yang <yijie.yang@oss.qualcomm.com>
> > > 
> > 
> 
> -- 
> Best Regards,
> Yijie
> 

-- 
With best wishes
Dmitry

