Return-Path: <devicetree+bounces-198467-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DE427B0D1CA
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 08:25:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1AB533AEF81
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 06:24:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B68E028B400;
	Tue, 22 Jul 2025 06:25:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="muJLib7n"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 456901DF246
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 06:25:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753165512; cv=none; b=YHo9Y1O3sA8yvuj8The2cr2F3Y51QGrVH3fmAlaMBAKW3q6c33pg6VNTmi02bxurUOozx840rMrpRUkYpV2Avoy6jTyEkrwviLPue25zO1NzT3yBtme/Z2TD9Y1HQVw/AtS3vPqqX+4jYPm+DoNHTs2kaMFIm0kQupCMzJNRkvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753165512; c=relaxed/simple;
	bh=oJK0JmA0A1gXhX3avAQiLoakpxN5GJYgh6uOBn6ZZpE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RUbIx4LXKc3Nt76wUPwg7zbbAd427mZS/ANT0mIlgrrnaIHwcuWCkpg/pbWWHAlxoXZMq6Y8G0rgWbMZ1WFz+6FGMmF/DkAB+jSu6RKFhv6hH7R82uJWh/CjbockPvdcqvMQJuOaHAIY4EbywHwTULzutS8EF/6JV4wf1+bKLd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=muJLib7n; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56M3g4En029270
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 06:25:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=yqILAblRLDHN6S0GRPwREGOQ
	6eJ0Uo/70xJXeUDARp8=; b=muJLib7nrme8p+VrsyysMmPObzBGMpDezUOhA+nb
	jWwtE5Rv5dI2q8pmgoqB3A0AvHoz7vBXKyaxe93sOI1zZCnS2A0k2GhMtjAL00ms
	2/I5PUqWoxj/PV53xOPBE2LfV9r8I0ACSGT0DohAQfq6gvas1ppuerIxU3gioq7A
	6P03EOfTwuMsiYSuZ5Kvk3nlocbwa2jWcupKJZZepvEEYemLKHLrFtEIOwCv03Iq
	dFHkFelGlzMlapEhaUUo7nji3IFs0zsvBk8Df1WVcnRsesMIyVoNIWHIksAjXKZ5
	NB9V/IvoSlSC4ePXL7auLLPlQw6wTalMGdS9MiP7d9n0zg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48048tg97m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 06:25:09 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c7c30d8986so1613957785a.2
        for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 23:25:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753165508; x=1753770308;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yqILAblRLDHN6S0GRPwREGOQ6eJ0Uo/70xJXeUDARp8=;
        b=V1fBIRPkMlWadtqSvTOsnFWiX/X535oxZ8KXsCqBzOcRdVVcdlEwbCrfBahFrQM7qJ
         FPjzcayUzUw8kZOxIrdLGK504DWFPygfnyWXumaePyAoJQJLwsYIeb5pi9PlfJ/tcV1z
         JCM8SPtb6/2z8Y8oSQoagggmrmemF20y4PmTeqycSyZEVW9TPdUBRS2ygFAeDIL/cI7x
         0lj5ZBLQuqiSPbbV0fVSvxdfTAd24khyMT+dIc5Xl3kpiF7Cn1YcXFfsgR8uA6bDrWfW
         dkg0tL50a2diNBFDQivkn5CtRMoUWsh0Aj698vEYrdll5XLrpNKvdQ8hInMoC4DMfj6I
         PTIA==
X-Forwarded-Encrypted: i=1; AJvYcCU5ol8CT0wN8/y2PnOKgXV6zbSbZjIpGJovm+QcLoW2KuZbHn4sXvNFbGrhZgWnYHhZVQPPbO4gLD5C@vger.kernel.org
X-Gm-Message-State: AOJu0YzBY3ApJwyP4P1fcvyKdtO00mp88xX8vvRPSqURv+Uq3xJHFvN5
	nKpDYCyfTbAYO8KF44lfsrukbU3IaklIHG+10oD5vaILsM297lUZlUypjzvsecffjagpX7oW71O
	nmpKIVIkDvtG8GiT/uKBj359e53a8koBQQLXIE0YEG4H/DAK6l2l1eZWRmA6eWBvJ
X-Gm-Gg: ASbGncvQ+CjjDctYwejNjEJU5BTeKJrjAvm84oO3Uxr2OjXBDi6KyBD8BjWIQ5REj0S
	GN8GpcGfWnc8aUE68OzhEKfcBQ2nnTSjiQ/GoUs8WfuL5IqnlD7DfzO8qG4Vz5zeAYZIFqeYCIc
	LfuKHiwn+PaxV3bNh5mSOOFZWs8WjMcx8bmuehV/gjaAuramItKnf+8bd8tsH0xQ98f18YbVgi+
	mQN2C8P1f7BoD7rVHjDUhSmjbvMStKC8QcyhGd3muLDLWKG8vOcmrwa13j5hN54xVX5PeoKA4Ed
	soGGzVlf1aRprpbA3idiWAxX5GS0xdHtSVbjbGh4M4woXN+rCAfF0UNJwxV0AxhnzCgEMviig5c
	sKVs+aVQm4hGTsXPtTQkx0kZElNgPMdGSlBvZ1x4JQYZmyz/gqeTD
X-Received: by 2002:a05:620a:7181:b0:7e6:243d:e3c with SMTP id af79cd13be357-7e6243d3139mr57441085a.35.1753165508288;
        Mon, 21 Jul 2025 23:25:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHPEoufn0Hs+RA2zP7PfRn6yClVi2ckcXVyA/hATBGSEOgw2HzSTorcYIUcwTOrFP3AAai2Lw==
X-Received: by 2002:a05:620a:7181:b0:7e6:243d:e3c with SMTP id af79cd13be357-7e6243d3139mr57439185a.35.1753165507863;
        Mon, 21 Jul 2025 23:25:07 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55a4cd997fbsm7232e87.203.2025.07.21.23.25.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Jul 2025 23:25:07 -0700 (PDT)
Date: Tue, 22 Jul 2025 09:25:04 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Odelu Kukatla <quic_okukatla@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Mike Titpon <mike.tipton@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH V3 1/1] arm64: dts: qcom: qcs8300: Add EPSS l3
 interconnect provider node and CPUCP OPP tables to scale DDR/L3
Message-ID: <l6lwso53m3roxggh2dy44iaebrlfxy34mpu66kjlknxig6y7ir@5eklfdr346ab>
References: <20250722055039.135140-1-raviteja.laggyshetty@oss.qualcomm.com>
 <20250722055039.135140-2-raviteja.laggyshetty@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250722055039.135140-2-raviteja.laggyshetty@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIyMDA1MSBTYWx0ZWRfX8iwiBBbmQAou
 Ue7jVmOmrZgVZdvAgFKVELRxKgQq9qZxWlxK10hh3pMP8JzhCSxT1Cim45bZwVSO/zYK6G6WptT
 fJzIkTTOTcxMb01E6wpP3BW/2dAJFdk00/EqacX/8NwiPAQn9UfSWGn1WJCJcIQDpQ6SgFWN+n1
 RIw+gZhQIdZcCRGxQj+QX/0WMjxwRpeZU/Utj7m0SdiojPlh7qnAIi4bJvyGD+rAzXmErasLztk
 9o0u8a62fYvB+YppKdodabU4V9NP3c9da5UvlX4EXrnf93/KKA45TEcAFB2sEHf/HK+hqffyC10
 JdfTCEW7lH7hdPA/VEjNEiWuLJJ+3e/ycQCEGv+MCPMABUf1VzMJOLNeUPTXuyPyZu3FIU4QYmN
 vRvB/iZblkaAY4vZZLWhkovtfMLfDsQI23w5BkrYG3WNrIyF7+6QiQrnSpfSVZpBnI7QQcTN
X-Authority-Analysis: v=2.4 cv=Jb68rVKV c=1 sm=1 tr=0 ts=687f2ec5 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=tFNSTuR40NsBDPEYOFkA:9
 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: PJFe92VexTp0Z_q5w3kYkgoZBlNIimXI
X-Proofpoint-ORIG-GUID: PJFe92VexTp0Z_q5w3kYkgoZBlNIimXI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-22_01,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=961 adultscore=0 priorityscore=1501 clxscore=1015 phishscore=0
 lowpriorityscore=0 suspectscore=0 bulkscore=0 malwarescore=0 mlxscore=0
 spamscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507220051

On Tue, Jul 22, 2025 at 05:50:39AM +0000, Raviteja Laggyshetty wrote:
> Add Epoch Subsystem (EPSS) L3 interconnect provider node and OPP tables
> required to scale DDR and L3 per freq-domain on QCS8300 platform.
> As QCS8300 and SA8775P SoCs have same EPSS hardware, added SA8775P
> compatible as fallback for QCS8300 EPSS device node.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Co-developed-by: Imran Shaik <quic_imrashai@quicinc.com>
> Signed-off-by: Imran Shaik <quic_imrashai@quicinc.com>
> Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300.dtsi | 301 ++++++++++++++++++++++++++
>  1 file changed, 301 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

