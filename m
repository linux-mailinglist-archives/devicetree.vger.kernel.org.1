Return-Path: <devicetree+bounces-208919-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 107D5B33ABA
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 11:24:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C9B59172BEC
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 09:24:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BE9329D291;
	Mon, 25 Aug 2025 09:24:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RWnzqxDi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97612280CF1
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 09:24:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756113849; cv=none; b=HFO8KSw+cZO4ezyrdS/tZQruYh3I7rbIr2wfS9fMROuSN+bDJL/QZXFA84DS6/9PXd2KWobzzMKtAW7+w2iJnSK5JklOvNWztYiF1eCLd/pA0EgkRJnbU0UitomwRH7QvJM96qies28b81wKRC5JGYgsS+5w1nQVC6vgwT5dnF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756113849; c=relaxed/simple;
	bh=b2EDQMgIJW/BbvJCKvsn+1m1vJhpeJsz1lWiTiulmsA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZimXbfXSDfRlW0Nhxq/Zl0/my+I9LgIcS9AuPBwhWnGoModPMpBrQzh0bHE2cIc+2e98nbUpYPLAeR2TH8AiDL7a67aDDz5xwykfzhSzqTNu5ZBn2hOF7ICUeqwQgLRae23267Rqr9NUWoasfqIMZoaMolAsqcneEi6CsXnv/e4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RWnzqxDi; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57P84vAj030210
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 09:24:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=AT6FII3PRnGlX4a1qfX1+I0s
	GPeMrRjRAQ41zyHfCGM=; b=RWnzqxDiDyxxzeQAFtb+eDIoCyR8NHZ6VNb9sF8J
	jDadzd1bTuX2tLbaS4rysvu+kllLiBRG7QemuwKSVBYCEOrTkM6RtLP/seaV+qCo
	c3RnN/w9V9BkEVwUPH5GWd69n4Bl/nvjC6i01GQgqa22IvbrEhU6EHovW/kL2N5/
	A5n29nBjzZ3+nEPCTs5nqCdvffDt5nNvSCMq8UX/BN+yM/ThoJIlQ3agAAfrYiSO
	LkRaxAcGYymw6Ow9wcJrSqcnYVNQ3vvgNIGSGvYJBa3ngFbnun5DYRUDkoHD1E1A
	HT40jcUpwOUK00z4JvtB7ys53thHrefHPyMNSZZh7MSpSQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q6de4ker-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 09:24:07 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-70d9a65c386so58285466d6.1
        for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 02:24:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756113846; x=1756718646;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AT6FII3PRnGlX4a1qfX1+I0sGPeMrRjRAQ41zyHfCGM=;
        b=LSXx77WLuEh4XvOjglM4LW5AFI+2lxTRSxOVvzCt/uGXJZD3SmBFMTUIIkCYKQkQQe
         DQQe4cFODZHQ9EYd2JId009Ufw9d8+V5oyP2KvGK7HJufPLX8lpNOLyGfkNHREkZg6Pp
         qlIMdNl5c4ZvKmFjjIO+h1Zbt/aSwjE7HILC9VawchR7V7ENneksLoBISdj8lY2JjHWM
         Hp8zIyTmn77kDf9OcxtJ5LxJunk+9Fu8h3IJUzzwnyKbhA/L/vvUvQ2UkIbHTCRI+5pw
         PJjUF4IyQfEFwKDcCa0GsyU4R7pFWrVsMgwNAEtDSTu0Ge5N9O40++9MKGMpwyTeg3Mf
         JKjA==
X-Forwarded-Encrypted: i=1; AJvYcCVfo9voR2PAJM/ajrgvBA70I8pI+SZrIlR2wBAfbZ7a4aEMGdXksUJbXm7w8W/riU9vz84r97xIY3kb@vger.kernel.org
X-Gm-Message-State: AOJu0Ywont1IMg5n/ldg1NRkzW7nvDNiQ3vfcD+QH07pDR58wYUN2vdC
	ZXlaG2oxmnNqkDByZuRUtoskabhPUwgk0LzeDqZEUCNc0qAgKy8j4ZDudop1ugjW9+0JwGHNaBT
	tO6X3AgbhjEjcXhmhZXUF+TJXfJLesPcdBO9JTmDIqNT+aLgOL8+QtnjpxYLrZbsVgPHO1NAV
X-Gm-Gg: ASbGnct4JKbaWLydZghXkdUlryLKwBMeg+AXq7crv7bN7XX/aw5uBycsjY/5ahRyaB4
	0VVwYHsluoHT+3SGTakhV9vhdRTxXJoQpP+Pc0gYw0LdbdvqHrQ16x1on9n6Kt79vxli9e6qUKa
	3g2ef6D+U69Gow3Fl4WPO5Ib1LKtNBSN9q6Myy6Ew1dfS4taNRHzZGSnTi/rDbUG92qrikgji1J
	pz35VNDAi0//f5VdBipB4/jHT8q1hmDmI4Q2ZX/k7gttOugHWbl/2rCgGaK7gBa+8n0R/tM5lbt
	4Q1uehqkA2+YrKTAjAzTvgsnLg/25SEc8nH4+E5IuhJvFbHPKBC5WCdWFhGKKbU/ZkquyerOfNp
	R4A0YX9lzf5diP2vHj0spZWaVIEhE2GZZlFKwgHAye5N36MEE6RYL
X-Received: by 2002:ad4:5bc5:0:b0:70d:6de2:1b35 with SMTP id 6a1803df08f44-70d9723e568mr105994836d6.65.1756113846186;
        Mon, 25 Aug 2025 02:24:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF9KdiFDmptPVEofCOhzPmh2gkvGoRl091r38GytacLaqu0DbZGgyFkNfMNserqEeK0yyOrKg==
X-Received: by 2002:ad4:5bc5:0:b0:70d:6de2:1b35 with SMTP id 6a1803df08f44-70d9723e568mr105994626d6.65.1756113845564;
        Mon, 25 Aug 2025 02:24:05 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f35c9a21fsm1548650e87.128.2025.08.25.02.24.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Aug 2025 02:24:04 -0700 (PDT)
Date: Mon, 25 Aug 2025 12:24:02 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yijie Yang <yijie.yang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Quill Qi <le.qi@oss.qualcomm.com>, Jie Zhang <quic_jiezh@quicinc.com>,
        Shuai Zhang <quic_shuaz@quicinc.com>,
        Yongxing Mou <quic_yongmou@quicinc.com>
Subject: Re: [PATCH v6 3/3] arm64: dts: qcom: Add base HAMOA-IOT-EVK board
Message-ID: <qlyqobhy2wjwpp437qwyk3zs6gqp47sremvdud674ygjbeziag@motnuwsalpvj>
References: <20250821-hamoa_initial-v6-0-72e4e01a55d0@oss.qualcomm.com>
 <20250821-hamoa_initial-v6-3-72e4e01a55d0@oss.qualcomm.com>
 <jj3mvad27kdpfxo4p2c3jfpjq2icao6mltpx4uu3sretqgkfap@vpqgfwzl3sjs>
 <33ac5fef-f855-46f3-acd3-daa8fc34d918@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <33ac5fef-f855-46f3-acd3-daa8fc34d918@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzNyBTYWx0ZWRfXyU4nYvtBC/s2
 E5yW7tV718yt+1RynsZdAMSyj1sgUba3vdNA4VWWmcQiBnU24l5AMMIRW+AJNQMCPdgPYS06Xig
 oGKmMeP4BQQztzGo+kUO858wGq2WveHyzDZqlba4J/FEFsaFm28mJdZIZMbcnX4AHt0jnYZT1kS
 gUUwZJXOggy3/JjKl1cBllCg9+Az2w/4a+0pw5HAhi+uDIp6IvtSx8QmXzgqfn/sYcO6352uBfE
 iufUUy/sLinvc61jaSgB5haGyX3othsVIslMBbdpF5Brmj0voHm6lfpJjMA0fTyy08mTfKwYgvl
 lNv5ldKnnDZhfKuEYkSP+7Gd4CzqOLk9E5vrAeitYViiSc5ChuMz95undEq1jUYnOun46ezpP4g
 53XY//V7
X-Proofpoint-ORIG-GUID: p-YrBHLF5MILLK3cXM-RvZQE2kasFkq0
X-Proofpoint-GUID: p-YrBHLF5MILLK3cXM-RvZQE2kasFkq0
X-Authority-Analysis: v=2.4 cv=K7UiHzWI c=1 sm=1 tr=0 ts=68ac2bb7 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=PfjXB2Kww6_2cIryhmQA:9
 a=CjuIK1q_8ugA:10 a=1HOtulTD9v-eNWfpl4qZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-25_04,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 malwarescore=0 suspectscore=0 adultscore=0
 bulkscore=0 phishscore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230037

On Mon, Aug 25, 2025 at 10:47:22AM +0800, Yijie Yang wrote:
> 
> 
> On 2025-08-22 19:56, Dmitry Baryshkov wrote:
> > On Thu, Aug 21, 2025 at 04:20:24PM +0800, Yijie Yang wrote:
> > > The HAMOA-IOT-EVK is an evaluation platform for IoT products, composed of
> > > the Hamoa IoT SoM and a carrier board. Together, they form a complete
> > > embedded system capable of booting to UART.
> > > 
> > > This change enables the following peripherals on the carrier board:
> > > - UART
> > > - On-board regulators
> > > - USB Type-C mux
> > > - Pinctrl
> > > - Embedded USB (EUSB) repeaters
> > > - NVMe
> > > - pmic-glink
> > > - USB DisplayPorts
> > > - Bluetooth
> > > - Graphic
> > > - Audio
> > 
> > No WiFi?
> It's in patch 2/3.>

No, it's not. It has PCIe4, but not a WiFi (which makes sense since WiFI
is not present on the SoM).

> > > 
> > > Co-developed-by: Quill Qi <le.qi@oss.qualcomm.com> # Audio
> > > Signed-off-by: Quill Qi <le.qi@oss.qualcomm.com>
> > > Co-developed-by: Jie Zhang <quic_jiezh@quicinc.com> # Graphic
> > > Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
> > > Co-developed-by: Shuai Zhang <quic_shuaz@quicinc.com> # Bluetooth
> > > Signed-off-by: Shuai Zhang <quic_shuaz@quicinc.com>
> > > Co-developed-by: Yongxing Mou <quic_yongmou@quicinc.com> # USB DisplayPorts
> > > Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> > > Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
> > > ---
> > >   arch/arm64/boot/dts/qcom/Makefile          |    1 +
> > >   arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 1247 ++++++++++++++++++++++++++++
> > >   2 files changed, 1248 insertions(+)
> > > 

-- 
With best wishes
Dmitry

