Return-Path: <devicetree+bounces-254961-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E5FD1E0B8
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 11:29:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1F2A830084DA
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 10:29:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9853C38944F;
	Wed, 14 Jan 2026 10:29:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GRTZ4mUz";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZkiZG2Vx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371F93559CB
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 10:29:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768386558; cv=none; b=rpBjr7TG84IP3Gv+2KGTFXxY+/fp/ohQtnp56Pdqdcp865U4pbxx9LJMDnnCRinTqUintsDhpqtupN7gXS30uOaKnH4Pgule1gXFNdTbv4tEnSamCKqsXYABfejIWC6+W54c7HZu29UX/FT60hY1ggmdTMZ0Ntl7vtL9JSlx+ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768386558; c=relaxed/simple;
	bh=nM6cxayub3i0QpsdFJbxhMrdSpr3WErOnNdBFCoxrkA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TBHTkB5IBGtWiq45xRat9ZpuTk15+4RCbqIIsrDsst9CyGeNjD5zKx6PJ0084ixtroXU4v+IM+ni5omaaiw4rgeAl24GiiWqKBkT0MS8vq/xyUayI8xNFsYdSufT/iLruqFcwtHoF15bZ3OWdHdugtsBT89dwFIR/XPonbk6mhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GRTZ4mUz; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZkiZG2Vx; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60E85oVp1943025
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 10:29:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UMfmeMAYIu6rO8V++LXzdhaY3BJgjGY9h4t73FLy+zk=; b=GRTZ4mUzzplHlifq
	Aq5KiD7sXqgtiHu2oCQ8ZjETZ1atv5p0rBkx3KMsJ3LG0t1A9Ga/8HBUIlx0kO/J
	ZWKNwYTN9bKxOf/ObomjUz71S3WTRp2K7Wm8w/948xazTqJtLVcToEMVqxR8hOXQ
	SHlNWyq4PrAbe7u2lbBOlKho4Q/CaAAkxrbex+7Xk8jJcvTDtHqQ4QFZrsHiuruO
	CO5xz1fy9qC72R9nccId2DlgJyK3TfbDpAWoX5yUEcwOVLvHBKWKZdauTQJmYURB
	riZ/jhnyRsWCZNfH3a/xYZJK2JMNv3nQ9Zecn0asrTULTxxHXaXEuMN6jct3hVka
	OvUNAA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bp7b6rj51-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 10:29:16 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a08cbeb87eso97226405ad.3
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 02:29:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768386555; x=1768991355; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UMfmeMAYIu6rO8V++LXzdhaY3BJgjGY9h4t73FLy+zk=;
        b=ZkiZG2Vx4FsW9x2pZhyNV0HxrUsK1D51J3SHgvbfICZAr66+POevs/rb77hpxWAdtj
         4l89sMkyyZ/qic8ZqWNwy1az8qOjh3B8JWr4zFx7NxNFmLGnTMKO1WZDVXc4rDUQcaJS
         V18lvWJufSC95A8qpsZJgK1ioudNHzEvBniNYy+G4sdI4x2n/56Ee7bsmdA3jgmcUEbt
         bYa4O9zcITepGsfGgkcSaY7twyTQzWx5mkOrnU3mssrIZVn6NlwtJ6afan26pbRrysvY
         LcJxaMrL9PEYbPeuph9up0/9wKNE95Y0N7P28FaPQwjXHD9VtVcXTYIwua3V+LtAwv8J
         MZFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768386555; x=1768991355;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UMfmeMAYIu6rO8V++LXzdhaY3BJgjGY9h4t73FLy+zk=;
        b=PfoqFwdN2PN0bjc4/00N40M+Fcvxccjv7wTjQHUnHEW8a4KMMl4fu2lIV1olpfsZe4
         iciCEofSrXnZoGfCzmShWqUlIov0bgMVHOYCZzrWTXx0YN9UuBzNyftZWbWgLCkioNvl
         Xf/Jn/wrj4ONq8mDwhCDOgkqvQz3fb1vIn7J38UheSPxNA6x9VlC1zJiIsL7Hvu+zP/1
         eAMhwc/rXOfWRTSctSNDiPRdqKVgWfJJIBbb9U3901YNvqAU8s7JIoHGJolGBdUVz99b
         8ukW/5Hts5G6QBZRZh8YHPNgZMeo0zBE1tHMWN0ps6ijTa6hi9xdRjMOI6YPnY2iIhMI
         qWQg==
X-Forwarded-Encrypted: i=1; AJvYcCU+8CuBs/M7CBM7x+NdOgozTix/aqnrS0AmKnc1Yq/1ghbrmB+bBolG5JaE+dcByepgDGVYh1ov2T0t@vger.kernel.org
X-Gm-Message-State: AOJu0Yz66ftiar6LrTXtwsqllb1KIsmQ/94J4mw1GUzhVAociAJSV6XW
	yIIXXub588KAnKThgKADxSZ7fO1NBPpBIbXnZMiDIo454PAerfsCfgsQ6QQUIfMieQGU/KuobRB
	GG9g/ae/dsF/eKSr+cZBgdcR17vRx6pk4DOajt+TK84I/hyss9+V1eiDTLVOjfaRn
X-Gm-Gg: AY/fxX5iL85/VjduGKHs1F0yMImG3phKLGdiIwQdgCYMbHjrhurGNl+kS7uyydPNFs5
	43QPZ3TW/RS6DHirtkoaHSPn+IicnAT2wHTPiLmcPPgF5QyCVzCUhcmW0AyZBm1xOtHN7NAChi9
	/PKqdcsSo6tDBjw7b+f2HoxPhIEK/3NttG7egD8Byt8JKyRdSwtHzz+o6et0/zZ1eA0jjcPOiRD
	orzDY2aaUkHYTH4RUtK1dGk5YhjYYatZdpP8qG8SOdj0YmOzBPiwnlcdomxaYwmUF0a2U8QotEC
	5ZGoUkJaRF3hymgzRgW55jNwTXGg4oWpfBuDvh8OLdI1UfAc5fKctKBSz0ctGcNFDm7WeFsJQmL
	WtPkapcDiFCeXNHBD3oUcOA+qsaWZvlvb0sjoG0u11XFmCij9qcevz53+so/fqlcsmkmOi6apY5
	Bh04N1+TlYeebQMJHXxcqlDGErkTA=
X-Received: by 2002:a17:902:d2cb:b0:295:5945:2930 with SMTP id d9443c01a7336-2a599daac4fmr25706365ad.2.1768386554782;
        Wed, 14 Jan 2026 02:29:14 -0800 (PST)
X-Received: by 2002:a17:902:d2cb:b0:295:5945:2930 with SMTP id d9443c01a7336-2a599daac4fmr25705995ad.2.1768386554238;
        Wed, 14 Jan 2026 02:29:14 -0800 (PST)
Received: from [10.190.201.90] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cc7856sm227326415ad.68.2026.01.14.02.29.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 02:29:13 -0800 (PST)
Message-ID: <ad105956-3192-4559-9d53-3b526f2fa361@oss.qualcomm.com>
Date: Wed, 14 Jan 2026 15:59:07 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/4] arm64: dts: qcom: Introduce Glymur base dtsi
To: Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>,
        Maulik Shah <maulik.shah@oss.qualcomm.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>
References: <20260112-upstream_v3_glymur_introduction-v4-0-8a0366210e02@oss.qualcomm.com>
 <20260112-upstream_v3_glymur_introduction-v4-3-8a0366210e02@oss.qualcomm.com>
 <h5psb3hw7wqdrqpok6facoefptdfd2qw2ojymk6k64d77a5ie5@iwy2nxmu6l6b>
Content-Language: en-US
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
In-Reply-To: <h5psb3hw7wqdrqpok6facoefptdfd2qw2ojymk6k64d77a5ie5@iwy2nxmu6l6b>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: 0rvH-jqN-w1FU-6XsGKu2BlHwdR3Aj7o
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE0MDA4NSBTYWx0ZWRfXxlt1MZXBTdxL
 730Rh2WyGYT694TA5O6iE24NSqwSJW7jkiIBhbR9TVhyoa6khWj3/bQmGaU43OCgQwKMCF68b0x
 Cl8dW0wVRkzeGzOn0a8rNvKN2Hge/AJPVGio3Nyk4Neth/CexHVuNiLPbabnO3wfAUBnamIpUEh
 WqDYPIn2aWt210l/8gvp5eEBVz8nFwu0oFPWswFk9vxMUCF+yUKtBVHxpn+VEmh4z9/WoBPl+fy
 WFYTP6lTtgAysgbKhl/vshIFjS0GP/oImshFSaWiDFkSoGY0V731jcPJDQ57XUull43WTEiPtQT
 CKzgeTILcZ5NhoXgzED7QKvw6TRn5mmHPbdeRLHPnIrHvKaZAOx/x2teMyVxc00Il5punmAVPSu
 0RYG+C5ZZew6Tv4CsNUBsNeYIeV3kcWGAqgmIiG4nk9FiPW/CyUmNfvHCn9y7PzQyftN21UMiu1
 FoDDRnQGGW8hSQtBiTg==
X-Authority-Analysis: v=2.4 cv=W+w1lBWk c=1 sm=1 tr=0 ts=69676ffc cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=5tyqGv89VatObklNbhcA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: 0rvH-jqN-w1FU-6XsGKu2BlHwdR3Aj7o
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-14_03,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 malwarescore=0 spamscore=0
 lowpriorityscore=0 clxscore=1015 adultscore=0 suspectscore=0 phishscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601140085

On 1/14/2026 9:47 AM, Bjorn Andersson wrote:
> On Mon, Jan 12, 2026 at 05:52:36PM +0530, Pankaj Patil wrote:
>> Introduce the base device tree support for Glymur – Qualcomm's
>> next-generation compute SoC. The new glymur.dtsi describes the core SoC
>> components, including:
>>
>> - CPUs and CPU topology
>> - Interrupt controller and TLMM
>> - GCC,DISPCC and RPMHCC clock controllers
>> - Reserved memory and interconnects
>> - APPS and PCIe SMMU and firmware SCM
>> - Watchdog, RPMHPD, APPS RSC and SRAM
>> - PSCI and PMU nodes
>> - QUPv3 serial engines
>> - CPU power domains and idle states, plus SCMI/ SRAM pieces for CPU DVFS
>> - PDP0 mailbox, IPCC and AOSS
>> - Display clock controller
>> - SPMI PMIC arbiter with SPMI0/1/2 buses
>> - SMP2P nodes
>> - TSENS and thermal zones (8 instances, 92 sensors)
>>
>> Add dtsi files for PMH0101, PMK8850, PMCX0102, SMB2370, PMH0104,
>> PMH0110 along with temp-alarm and GPIO nodes needed on Glymur
>>
>> Enabled PCIe controllers and associated PHY to support boot to
>> shell with nvme storage,
>> List of PCIe instances enabled:
>>
>> - PCIe3b
>> - PCIe4
>> - PCIe5
>> - PCIe6
>>
> 
> Why didn't you run "make qcom/glymur-crd.dtb CHECK_DTBS=1" before
> sending patches to the mailing list?!
> 
> It would taken you 30 seconds to conclude that I can't do anything with
> these patches.
> 
> Regards,
> Bjorn

I've ran the bindings check, dt-bindings specified as dependencies will fix the errors
Additionally, I'll drop qup-memory from interconnects for serial and spi in next rev,
which cause the bindings errors, this was missed



