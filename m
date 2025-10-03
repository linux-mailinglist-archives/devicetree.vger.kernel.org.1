Return-Path: <devicetree+bounces-223584-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DFCF2BB8302
	for <lists+devicetree@lfdr.de>; Fri, 03 Oct 2025 23:31:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6C5E74EC822
	for <lists+devicetree@lfdr.de>; Fri,  3 Oct 2025 21:31:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDF3A264A86;
	Fri,  3 Oct 2025 21:31:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BQvBvPjc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3518D23816D
	for <devicetree@vger.kernel.org>; Fri,  3 Oct 2025 21:31:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759527063; cv=none; b=uFDLeRRTbMK2F+EwbrTt2mEqqL1yXmBcdG5YdLhfAhoP7drey8Ck8coGhUjM6OPVb/fMA8O6Xje8StvI9pjzg3veRK5ntlgzb3WAoem0n1FuklaW6exlPPGktrOdQ+lvBqdhW1sDEzvxnhnNSaImy/D2+vJGkFSdiBtdPUhG9gU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759527063; c=relaxed/simple;
	bh=fq/fY6JqxN6dNqCJ5P8kQFzhneXSbn5maPTRGVNN67o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=b2Ws7biZuxVdXE+Vy3fYHW2HdTNQCoM+1TowLyFD76xqEtN562mZwqBPDwwfIsoyL7rGNg2PJj9NjOgVcztGt7mPTg3n5TkSC+LjFMmFVJVdR3dq9LbWDMcO9JcWym1Fis+ZDhN/9wqeAexqBRgp0HqZiJ1/QNaASWvF/h93YWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BQvBvPjc; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 593AeiAK012212
	for <devicetree@vger.kernel.org>; Fri, 3 Oct 2025 21:31:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=53GD0wKdX2v1xIpZL/WLa0QS
	fyyHKKezHxL8P/DVLl0=; b=BQvBvPjcO2pKigMd5bMO6BPzrdB4vVM4zW7/pVs4
	eEOVd45pngf6L5dByrIbvmnYYDqXDHHbob1Ea2lfz4gjF08X+bgd+xDEpc8aQxvW
	G5iKWvR8BrUOqPeEoj3hF4OT1Ep9DIhAaIcOx3lPBtwg8t0QsYm2X0yWlwgDEAel
	uHCHq8Nn5SdQupzYVcbwm8RT0JGepSPj4W0VD/Vu2jJ2C+bSpAfchbcPTiSlTTds
	GztC5pmQ1N3A7ZEHI2NjHNse4/5NiAqZ1tCH6q4FtOb0ugjplakhftzV12GjhNne
	McRK0vfLoS3l9i4yG6CPH9/IHNPL6hmv4PPWIE5+3Jc4VA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e80u464d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 21:31:01 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4dd6887656cso14284851cf.3
        for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 14:31:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759527060; x=1760131860;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=53GD0wKdX2v1xIpZL/WLa0QSfyyHKKezHxL8P/DVLl0=;
        b=XoF0lBjKwpcaypoFmZ1OvTLbCOkvWvjF9zGyuG1omXJUWWSwyTx4adAheG0Fqt7NPq
         KOZOChX8N7ZNbti0fKp8qkHt1ih2/zsVZNkBT96Yzi4++spyu8baR/kktSjgWjQwGAzk
         Hg71tJ9dKmb9BlyhQz+QzfuX0EC2oo8hPqyyWU0d2pid5KGz1fwfd9LygDJIGJXGwuLb
         pDEoBzM7cBO1n/7xgHw3lg1UjWDfMjOGTOMDGuVElK33UMIkksyA/SXEzehc0qkOwF0n
         r12y1xugiFkHFXMCCCasoE0HwZOgiyt9h78crk4eSfvq5x7npx19yf4TY/7XfjqOanxE
         89tQ==
X-Forwarded-Encrypted: i=1; AJvYcCWCHIvPcpTQDry06OgENlAI5AnXeiiLAgNGM8gbZxOwBlmsdwtoi9cSgHQWarVw1ik8WerQE1VaKwhG@vger.kernel.org
X-Gm-Message-State: AOJu0YyW1P54hbIvPf5ClOXYvvoNimbytySmU8p4wpi7vdwoGvlpkeIe
	bOGDY4xAEFpRlMvASbU1sJfKb3yagKvXNM4NRgnCN6fPIQWElvZJXh9kERt55s+Bvi8aDYr8ZmX
	iCvx/FGwRXR0JQiSUifpMIJbJdZvAn596sAQAC/RvfZP0Zkxd7JKgFMThj6xCJIuX
X-Gm-Gg: ASbGnctciBX8IWLyzhLPhITEM/VYn3dCBLgFcJU+RtiTGqzkaKsWTR4N+uNaot80ZqH
	72hx7U7f17NBX03bIrEkcJ/gvk+OOvhq36sMebQ0G8aPu7wT0SOIgS8ezt7lR0Gkulnu2AViy8w
	eLm1OzfVHO9svJ9HeH130gtnb/tUaU3K2QGO/3kyupL8MRd5HrNtGRjjWKKb/h96N/rDZ+yhbfr
	VcjsobPN1Rci6T/QQbOctAtzavvbRT5WQJ2bsMlX9CxHN72tRMAD264wYmtXXV3+gm866hS8PZG
	k2wTeUQS/cZeCbym06A3SKOY3Fh/6WDO2Ref5E+TJ1CawlpQOgJqOVAZSgtTZB9+Yz3W1qM+rXI
	/9T+ujF7Cdob1peJWSeKpS7Zw+cnPj0y3OXEnJz6/HJcZMxZs7e4l8nh8RA==
X-Received: by 2002:a05:622a:5c99:b0:4b7:9ce0:43c4 with SMTP id d75a77b69052e-4e576a453eemr60116141cf.5.1759527060135;
        Fri, 03 Oct 2025 14:31:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEbWgg1m6ArZd6deTxtHGQP9AEmpq7RXsHx30Vj5OcL3B8xyMb602ba9wWnqn1h9OZ2s/kPsw==
X-Received: by 2002:a05:622a:5c99:b0:4b7:9ce0:43c4 with SMTP id d75a77b69052e-4e576a453eemr60115521cf.5.1759527059351;
        Fri, 03 Oct 2025 14:30:59 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b0118d6e6sm2175292e87.78.2025.10.03.14.30.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Oct 2025 14:30:56 -0700 (PDT)
Date: Sat, 4 Oct 2025 00:30:52 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Paul Sajna <sajattack@postmarketos.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        Amir Dahan <system64fumo@protonmail.com>,
        Christopher Brown <crispybrown@gmail.com>
Subject: Re: [PATCH v3 02/11] arm64: dts: qcom: sdm845-lg-common: Add uarts
 and Bluetooth
Message-ID: <qg4rlyl3gqlkih7sssixi6sfvdrkreoaz247ckmbja4zkybxt5@vkfvvhmce4kj>
References: <20250928-judyln-dts-v3-0-b14cf9e9a928@postmarketos.org>
 <20250928-judyln-dts-v3-2-b14cf9e9a928@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250928-judyln-dts-v3-2-b14cf9e9a928@postmarketos.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAyOSBTYWx0ZWRfX92wlawsgzmub
 3ip0r3KexUlO/rX40C12JVsu/GzasDc3cjk616xFEbJA1U7K38HNHIXi6v346DBU868AS6tO2/O
 J3jFHz81Uk3TtHcRJQ6kqrVqfvQIqGIZfcQzrbZVHjMuXH3aps7A4Qmb669NoCpe/pCmkjcdd7p
 0BdaMoeF0KT0aF53gbKOB8HbGICDPCEtjBf6Teo+0yG68GiyBiMqWB7cLpGdVPxlzDYEMHRAdcP
 imijTz55P0S1KEYLS/qcICtdCH7+3iBufxmf8s3IHH9WLGregDn9/+Rdg9sVPSRd9DH5DE5vzUe
 tlnN72OdLZzHFo2xspGlOnremxBwO3YvmbOdQvr/LfCkiiBVGvH9+RibkiC1L0wDU4VWmGzy3/6
 oyfKQ9LmBp4KGH9ZbCmEl/lJu9KBKw==
X-Proofpoint-GUID: lulESkpM4_xQhDh_DuKeR6KhRmAdOxLJ
X-Authority-Analysis: v=2.4 cv=OMkqHCaB c=1 sm=1 tr=0 ts=68e04095 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=Mq719mGqAAAA:8 a=Gbw9aFdXAAAA:8 a=EUspDBNiAAAA:8
 a=8yVOI8cEZPrke_ejmRoA:9 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=gOTWM5O2Sh7P_NUuVqe5:22 a=9vIz8raoGPyDa4jBFAYH:22
X-Proofpoint-ORIG-GUID: lulESkpM4_xQhDh_DuKeR6KhRmAdOxLJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-03_07,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 bulkscore=0 phishscore=0 adultscore=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270029

On Sun, Sep 28, 2025 at 10:05:25PM -0700, Paul Sajna wrote:
> uart9 is debug serial on USB SBU1/2
> 
> UART RX is SBU1 and UART TX is SBU2 of the USB-C port).
> 1.8V Logic Level
> Tested using pololu usb07a https://www.pololu.com/product/2585
> and CH340 USB-UART
> 
> uart6 is bluetooth
> 
> Add bluetooth firmware path
> 
> Signed-off-by: Paul Sajna <sajattack@postmarketos.org>

If the series get resent, could you please add the boot messages from
the bluetooth (hci0)?

The patch itself:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


> ---
>  arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi | 45 ++++++++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts  |  8 +++++
>  2 files changed, 53 insertions(+)
> 
-- 
With best wishes
Dmitry

