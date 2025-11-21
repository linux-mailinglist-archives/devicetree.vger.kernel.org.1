Return-Path: <devicetree+bounces-241104-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 58488C79250
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 14:11:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by tor.lore.kernel.org (Postfix) with ESMTPS id 4B51A2DC69
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 13:11:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F20AB343D67;
	Fri, 21 Nov 2025 13:11:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="C2KN3cvp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MMdR+f8o"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411433128D0
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 13:11:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763730680; cv=none; b=XG2cQcdR3wC5E9pcn1ZNbUEX87nw/twY41BMNFHKFvq9skGW+5PMXV2OBGTdNjsl8Nn6LCOFrItmAby0oooaLMdU8IqjYa86+p545LSqEfEo7jX4LD2wsP3ECugl77Vo2R1saqSEeMBsg9ZmjBfU0rvdY+EeU2firmA9RwOkhIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763730680; c=relaxed/simple;
	bh=1lTijskp9+Z5rD21dC5C7i96wfqr65644kYWsfFGAGE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Hdd3Li+44BboOGhIFuPa8YMXDR6FFWSkMQtIlgYM1gJtXxeRiDSChynFuFdZX2EubUKBZoHXHmUCIspMvdaUTMe52QqZNJ+w3D2m75fdBQqKNE1vbichqo8zwF6kful+A6x9WrSwK5zDxOZX7wonzS8neHTLHSt1Z987hZsJE44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=C2KN3cvp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MMdR+f8o; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AL8YtbA3139651
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 13:11:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BYy2kQw2rfOuxsttFwc2/pXTNz+kGCGAVHuOX7BZezc=; b=C2KN3cvpfpcVuwJ7
	h1J+vH2NFPNy4SkliyS8kZCocV00s9XV7OXMrb2XZXGPWJVQLx/RfUaMyudUyn5o
	RDQP1VmcCzbaV8hg+F/dzEsMwVcLZ/qBNrQh5JSkSiGlZ1g5KErLgC4ztUUBm1uV
	72yZUQZd1W7rxKMYxnn5h8IRAqSgsyzqKVEWq/AO8DSsJ7ghwabeViF40yxO6yBJ
	vwHddmYK4783L41HFNdeila9U04dR0umQ2354Lh5rm/3X4Ul/0obFooDIHWrvcgP
	36Ci2AjAkqNuezAS3n+UcAmZT2pIW/xfl/eDd6Q8Tk74JbTb/pFwuJDpkhM6ORMV
	5+ChlA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ajmppgy5q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 13:11:18 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b19a112b75so534519485a.1
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 05:11:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763730677; x=1764335477; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BYy2kQw2rfOuxsttFwc2/pXTNz+kGCGAVHuOX7BZezc=;
        b=MMdR+f8o2n+PMhpetXC+u+GqAFx1os7QwLiYD81a5oLBTq5j9PRCtMohbkAIHFHTRC
         +SCqaerkbWIxTi11lrNLtH4SR/QbG0C+yFGCcfBi4siwYwigZ/SNblLV1/cWZzj8NAcH
         nWxVCKBtDHbZtHmZgYfdwSDTNBqnlTkygjpCSpzkGhDLlK55+DY4OMU0u7hjDQnzXS+a
         97GsLV30CORY7SeSaHhDNctFsBRD4s0m8cJ+oxkWmqAPZe/3f2hEGrSTEztbiL6S3NZL
         pg7gm7LMmTUMGk7yIgW2cUXs2qsqSOAgbkr87XysAb+y+QWJpHzOuy8Bmg7FZqbNB0j4
         Cn+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763730677; x=1764335477;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BYy2kQw2rfOuxsttFwc2/pXTNz+kGCGAVHuOX7BZezc=;
        b=fm60BjhJwYYJQ9F7WxVh+OBW5S91c0PK6UKK3+1Zh55mp8A18dceqEIKtasFkWrpwL
         jRTR3/fuvOgcb9bfALbC7CU6b8lCvne893Sc31mKRPudOH2Mx8XsPW2Hli2YJKVDfj0h
         jwplO4f2I7wCksZ/cNiCsZjZUPFvQ1pJp/9g3m0RPwMO66aAp0AsGWC1bJg+frZ5Vi0R
         MLws84aaotomab3PVrGARnABOt5XhnyCHdOZxs+UpglD9MBnPNCq7D3HleTp1YyP5udk
         TbZCun+vORZRIhoE4ORM83SD19GMk4DRTxUPc+hhSoWt4BeHrlq8gU0TOsfd762vxAzp
         XFtw==
X-Forwarded-Encrypted: i=1; AJvYcCVQiwiHAkdyHmEiOPHBTy66lujp3lMF1RYLbGr6emdLRP5ztV/hu89PmXUvxDmts6MyDohw+9vshvzm@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1I+l5eJT596VUtdn+oCw1v+IWzdzDmAnAE+DL2vdsnR6leyDR
	S7CO5vXhDYK5KigWwGl7X/l2Hxrnjcl6KP0kM3O3OKQbCR1dPq4/3VvcK/SMCV+Db9H7GYOIncY
	98gMtfYo+cTvt78n48zVYBqNvZ3t/NZ/0O19ug+LvDPoFyz7tRlh/bpJWP75zWmVj
X-Gm-Gg: ASbGncufRj+FpCum6iHDfsDg0ynZOxKOYJBdU+cnyJnsyeHo8H08GIWLvsdDjVvakrf
	aRSNJPrNiMosVluKe6o6XVcrhDTLNNkkj4588//4Vlrb6gJYpVNcRSpeRNpDjrSmmlZ52RrjH/g
	ppQyg0BHnewUDcovzYwwA9EmZ98+i2BKNienX7PtOt3fUvjC3k8UGAUS+K/LZ09v78jmHkykVRh
	ummrqrTRRGhqV6pDDijN0aRHZHL4E63xKetRY77pYmtW6to9iDr/zuxjzV73Gji95OtiSKmlwQr
	5bq5IhDFyOWZq7eSKAyYI4pHROpbfLO7lhp4etOACis4x96D1iIXRbitCaWL0YgX2EE0pBA5KOj
	UFvNS/xgCBOfYdI8mWF0BrRZBuLkpJIl2dCDvORGYAN+ma1y392o3gRBBvV4/Z5MgdRpuJrp+rn
	QvweSOunkTSi9QNrOQtn4g5Ps=
X-Received: by 2002:a05:620a:40cb:b0:8b2:e7db:253d with SMTP id af79cd13be357-8b33d210524mr213655985a.38.1763730677454;
        Fri, 21 Nov 2025 05:11:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGpzUtTh/9dZw4mq0FPQDe3bbDxRD/Xd4X7XwVazYfAQDqIcRYqRmbX6vhT/6BS43dyZzE7OQ==
X-Received: by 2002:a05:620a:40cb:b0:8b2:e7db:253d with SMTP id af79cd13be357-8b33d210524mr213650485a.38.1763730676923;
        Fri, 21 Nov 2025 05:11:16 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37cc6b63acbsm11110301fa.21.2025.11.21.05.11.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 05:11:16 -0800 (PST)
Date: Fri, 21 Nov 2025 15:11:14 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Rudraksha Gupta <guptarud@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/4] ARM: dts: qcom: msm8960: expressatt: Add Magnetometer
Message-ID: <5clxuhy7tprkfxkonzmucfm3d74brk37zjw7lbdj3m2kqail6z@gjoy4pdtaotw>
References: <20251119-expressatt_nfc_accel_magn_light-v1-0-636f16f05cf4@gmail.com>
 <20251119-expressatt_nfc_accel_magn_light-v1-3-636f16f05cf4@gmail.com>
 <161da2d4-3306-4251-addb-cc9822a112c0@oss.qualcomm.com>
 <573b2293-7b39-4c68-a51b-ecd5b62b0ec1@gmail.com>
 <340f121f-e217-40fd-9a84-68896d15fa65@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <340f121f-e217-40fd-9a84-68896d15fa65@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: DKbmd36MXSrb0z6zB5FjoMHsxM0-epQ8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIxMDA5NyBTYWx0ZWRfX/g7j5PaaAPBi
 HkY45SLHRjKCIai32Lxzpcrw3F8IMSmWqohF24doCaXO8NdwXw0LJsWVHvTaKijWbVUcqw37ce2
 2Mr8x7521pZu2l5ERJiUt0DS7OmWkS5MLK5VxoUNnuKE5AVzLPxw8g7gE7n0MZgwOXRio5f7fvC
 7Dh7Voubb8RGpLFJNWdvW89JMBOh2UcH3YULiXxBIG7IWDNeeSy9s105YSQFr8kWcnihIW0h2fA
 v9ws3bo6fEbJQFzKvXm0vgxti+IK1XzinAB1iv50UpmeAu9NRVf+XNDMSJXzu3b47rs5omz66FG
 +fgHCNAPqLZZNqXHqcdL2kyLJ7/z4aKuor31kfnDii0kC+D1cxSxyY3OhgXsSHg0rvZIlIYd4GB
 4IoYGGYPZL0QDpSGZx0zZTxFVX7zqg==
X-Proofpoint-GUID: DKbmd36MXSrb0z6zB5FjoMHsxM0-epQ8
X-Authority-Analysis: v=2.4 cv=CK4nnBrD c=1 sm=1 tr=0 ts=692064f6 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=2dWhQ9a6AAAA:20 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8 a=rlwsiYw20X8JTfAuXFQA:9
 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=bA3UWDv6hWIuX7UZL3qL:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-21_03,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 adultscore=0 spamscore=0 impostorscore=0
 suspectscore=0 lowpriorityscore=0 clxscore=1015 malwarescore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511210097

On Fri, Nov 21, 2025 at 01:54:22PM +0100, Konrad Dybcio wrote:
> On 11/21/25 12:35 PM, Rudraksha Gupta wrote:
> >>> +        iovdd-supply = <&pm8921_lvs4>;
> >>> +
> >>> +        // TODO: Figure out Mount Matrix
> >> pmOS wiki has this:
> >>
> >> https://github.com/SiddharthManthan/accelerometer-mount-matrix-generator/blob/master/rotation_matrix.py
> >>
> >> but for accelerometers.. shouldn't be too different, I would assume
> > 
> > Unfortunately this seems to generate a broken matrix for me for the accelerometer. Downstream is also useless here as I believe Android does something slightly different.
> > 
> > I have been trying to upstream the pinephone pro's accelerometer and magnetometer as well ( https://lore.kernel.org/all/20250929-ppp_light_accel_mag_vol-down-v4-0-6598f22d3451@gmail.com/ ), but I'm just not sure if what I'm doing is right. I think the easiest solution for me right now is to get the screen working and use GUI programs to figure out if the mount matrix is right. If you have other suggestions, please let me know. I'm all ears.
> > 
> > But since I have your attention for now, I had a couple questions on trying to get the screen to work:
> > 
> > - The pipeline is MDP4 <-> DSI <-> Panel, right? Any information you can give me so that I can try to get this working faster?
> 
> Yes that's the pipeline
> 
> Unless the MDP4 driver is missing something (which it may as well, all
> hw since ~2013 has moved on to MDP5/DPU), you should just be required to
> come up with a panel driver (DSI init sequences, poking at regulators,
> reset GPIO(s) etc.)

For MDP4 I mostly test LVDS and HDMI output, my DSI4 devices, Nexus7 is
not that usable for testing. Last time I checked it, it was working.

> 
> > - Is IOMMU broken? It seems like I can use APQ8064's implementation, but that's broken since at least 5.10. Should this be reported, and if so where?
> 
> I don't know, this platform uses its own arcane driver.. +Dmitry?
> If you have a bug report, please send it to linux-arm-msm

It seemed to work for the minimal test cases (mainly around display).
Please send bug reports to this ML, cc iommu@lists.linux.dev

> 
> > - I see Adreno 2xx, but seems like there is not Adreno 225 DTS compatible? Any insight here?
> 
> Adreno is a separate HW block, you can/should get software rendering to
> work first

Jonathan Marek had, if I'm not mistaken, A225 implemented, but likely
not contributed upstream. You can try asking him.

-- 
With best wishes
Dmitry

