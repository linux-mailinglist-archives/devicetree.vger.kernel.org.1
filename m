Return-Path: <devicetree+bounces-165117-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C4CC1A83731
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 05:23:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7CA2E1B62EB1
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 03:23:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA5F41F09B1;
	Thu, 10 Apr 2025 03:23:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="I5p11Y35"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D7B91F03F3
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 03:23:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744255381; cv=none; b=SzPhvrEsr3Anx1Oqh9QYC8TkBig/IHQPKtEofeapyTcBTbUzVhTE7Vp1gNE5RSE9wEYEMneA4dtT3y/jlKfXsrsJZ2ti14hxPm7VU1MMgrfIWcSsZTnY4HP0uVthBefYtBi4H+1dN7+dBQM3aRpq/zFzCz6LzNA/cQEnheQfQck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744255381; c=relaxed/simple;
	bh=qPeh0Ja4yEU1rTr9eUKX8gtlUq67HRNq5YbB4fNpeqg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KaOMlB83d63b78oQKi/441Z5O8WlTnDwjcC/s5VR6/Bk1+etDAIAw87/ZedbwKfyNwsJaaZBtYt8Yf+6oFIXTSA8fNrguE67TQI/IwcHSzmBOeJm9vUeKRXjKt5hvLEXxfv1StDABfuBxRZP8ZhSSeQmukba9vSXHwND9jR3xa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=I5p11Y35; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 539HGnOG029082
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 03:22:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=pfANK38r2/Y0veNUeTUAv/nE
	G8v1dA3z5o6Mox8qnqo=; b=I5p11Y35E3uk4R+AslEb/sZe87E9qPzIOb9grMUy
	Q9vDG4rbEC6+ZZGjaVVMvUg5QdTvkpP4qsX9g9GMymYOJ5AO45WLI50Sgqj+it0G
	kr/imzKJHfVmBDD/9qSyTjASDo4UyanuKPW9QhmzKO6XZLvhUuWjm6lOiwD+Ecid
	YwdWQYEK6deJBbafAp2j1gotiX+NUdNYbS68TyLByWCLS6bE/vtACHIRPuNaJqCX
	ikEC9NU9/N2+i3kfMxvZqD8MW3nMeFwNrGCRhWUVUKwmoPVe/EklmrToEI695tvJ
	OMXLjeYxeZuVyPGXRqggt0aWzyT0wpJC69b7+5Jaj2RIPw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twpmdd75-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 03:22:59 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c5cd0f8961so83265485a.1
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 20:22:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744255377; x=1744860177;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pfANK38r2/Y0veNUeTUAv/nEG8v1dA3z5o6Mox8qnqo=;
        b=UO/Hc5I5XJr8D/7ITSmJ+Opdvgdg6/T5jRJl5XvT1n6ajotGRo/tgTU9Z7mp6UqaaV
         s9G1UK5YmPED6B/E9JGchMEOf0iKTChsdHImdNuLq8P0seZze//AD1ZojhUiIq65JQ8V
         0SvWeq92u+G0wb9EN9GTmxri16aWEu67Th5UXo9FBY+KHzLT45wnvYywZ4OaNODSEg1l
         Sx38d1sp/NEfJQRIDt2uilj05AXmTCOe45WGi9ZljIIyf2RY6RHDgLihzykRhCqsFOgK
         kQdomA7DOxRCA/vCjpOMbcvKw0WeSEwDsMNx+flQ8MPsZ8N/CCMcbMvtxfqOahQakdML
         yHVw==
X-Forwarded-Encrypted: i=1; AJvYcCXNh7OVizr3TNsA9Cd2u7KHmMMUG59dA5JAdBdfwL4HaHEQXg6Laq5SnebWV8atRFDUnKaq07d+Kdxl@vger.kernel.org
X-Gm-Message-State: AOJu0YwTMpjwnWzhWZON8H8CxxgyoAgC2TOhNrSpBtPF3H5eQeVdpO0m
	EiUhUgq/jjbIi+r9bgFWKlTN9EKY0a4WuVmqEvUWdTJT0AyiVYvB/fBqZLG+UDW3M95oRObTBGY
	8+7kACi8uk/vzmkq/ZgdyGzSxLPXCnjag1CoZ12XqVpsbHugOh1MGpSyRfSwDTgNbvxQ6
X-Gm-Gg: ASbGncuYwMGFBNqwv/fG8a3MMg3hmkkQ1s8Uj5Bje6Iv+cK6KPsc5rqgHBXU+VvvRce
	eRKImP4iIJ5zitBRJfTgaoWL6mFrwTN8nFoP/dmTw0TBOTzWcanNntOVzycM7tNlvFBzNrN4EYu
	QbA4Fzu/pglAVQcOVJXMqAa8hLgvo8xAyvi6XYQso+mp08SrsyIB7oIsJs73Rn1wOSPwKgsCIWW
	Qp3QAKx9skBCyo98nsBnVNksy5VYoHLzyIkRTEJaRI3n6LCSEkIFT7cQFsDza5ReNHgwAZmlSxd
	TgyLD1x/Pd8eSPagxv3uUBeKK5IWv1ZjcYgqCfWpGZfCZfBA7w+AAOJ2fovyN4snltpN9LC3kxA
	=
X-Received: by 2002:a05:620a:4011:b0:7c5:5d4b:e621 with SMTP id af79cd13be357-7c7a81b6b63mr131508085a.37.1744255377681;
        Wed, 09 Apr 2025 20:22:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEvdPKTSB3sqkRdmy4+rKmOaEHDNl9nfoJyk2DFMvWHYvIaySZUI2uhQyy+e3BTNZL0wgeEFg==
X-Received: by 2002:a05:620a:4011:b0:7c5:5d4b:e621 with SMTP id af79cd13be357-7c7a81b6b63mr131496485a.37.1744255375618;
        Wed, 09 Apr 2025 20:22:55 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30f465d4ebbsm3476721fa.73.2025.04.09.20.22.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 20:22:54 -0700 (PDT)
Date: Thu, 10 Apr 2025 06:22:53 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Melody Olvera <melody.olvera@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 06/10] phy: qcom: Add M31 based eUSB2 PHY driver
Message-ID: <fvbfsvx4ibixnvdh7ujt3kaybjqj3fdla4k5sx6lguegepxipg@ci5nmq36irpr>
References: <20250409-sm8750_usb_master-v4-0-6ec621c98be6@oss.qualcomm.com>
 <20250409-sm8750_usb_master-v4-6-6ec621c98be6@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250409-sm8750_usb_master-v4-6-6ec621c98be6@oss.qualcomm.com>
X-Proofpoint-GUID: j67Uq2Nprcr3cIrqj5-Z6b9Q_fQD7qhh
X-Proofpoint-ORIG-GUID: j67Uq2Nprcr3cIrqj5-Z6b9Q_fQD7qhh
X-Authority-Analysis: v=2.4 cv=MpRS63ae c=1 sm=1 tr=0 ts=67f73993 cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=RKJlQbLL0f_VtHaaO3gA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-09_06,2025-04-08_04,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 mlxlogscore=495 clxscore=1015 priorityscore=1501 impostorscore=0
 spamscore=0 bulkscore=0 suspectscore=0 malwarescore=0 adultscore=0
 phishscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504100023

On Wed, Apr 09, 2025 at 10:48:17AM -0700, Melody Olvera wrote:
> From: Wesley Cheng <quic_wcheng@quicinc.com>
> 
> SM8750 utilizes an eUSB2 PHY from M31.  Add the initialization
> sequences to bring it out of reset and into an operational state.  This
> differs to the M31 USB driver, in that the M31 eUSB2 driver will
> require a connection to an eUSB2 repeater.  This PHY driver will handle
> the initialization of the associated eUSB2 repeater when required.
> 
> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
> Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/Kconfig              |  10 +
>  drivers/phy/qualcomm/Makefile             |   1 +
>  drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 325 ++++++++++++++++++++++++++++++
>  3 files changed, 336 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

