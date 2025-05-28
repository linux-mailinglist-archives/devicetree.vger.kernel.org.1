Return-Path: <devicetree+bounces-181165-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F8DDAC6809
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 13:04:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 26EEE1BC7164
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 11:04:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61DFC279333;
	Wed, 28 May 2025 11:04:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EgA0yIdl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE2E321858A
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 11:04:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748430259; cv=none; b=SLoL4m2WfBelEZYTkgPJOXA/khdfXqyCFYm16kcOxNoJvjMZcB7OvFlw5QlQndJwUEMea3C6vAI7PLLRgAA75E8kk9skz7ds9ULvl0sQYHDFZhYlEXwBPyvNzSkVamRsl0RVgXuszb9w4LkVayGnqK2QIkoYJiTuOM+ctdSgRf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748430259; c=relaxed/simple;
	bh=riQtv7nBcYcJJkZrsW58H8At7TEIUV7pDVxb2GsgEmA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=E01aMTZiUiCI20jnmzSEHXI0+kqPP3Dh+4PWO1HScFBXqLdTUOBKGAnzCqJHQZoWeJqk+iSTPCQENym+laQpsJjcqJ0eYOK9dhEKCG/m6kClCGcIoOFb7YuhVkxVD7hBKyskSVaJgLQQugQ/5XgU1v3HqkYw7EdHbhCz3qgChsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EgA0yIdl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54S9hNRL009567
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 11:04:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=WBsyeat3wl3WwBotOVfTmQNG
	LpvBr+fBrkq380ZI68c=; b=EgA0yIdl8RcX2Cj4+Lq4jHOnMqJ3ywL5nriTjlYQ
	Q+pA5n+d5CnLWOcXy2v0PGBCcRvB50AKkOBtq3dnO7DSX0Se8DRdUzax8ymWZ70o
	4f67tPxxKNVXVj7nyimPPcRM3P1nXo/PrlKcARAR99o3+ZJz26euxy/H3AKTelKC
	qqc6swMlt2VYZSXl1zQawK+B038ThJ0WhWbXKcx4FpFxog3lX5lNBTutyEYC1gpv
	vn0FNUNtGrflXeUxvQDfcTWblN15/BCgZZpxdD6buISDApufZCIusSHq1OD4FYZi
	k4E4LPeJylSKYVjlI3R2b3BpvqfKek+Rvf4MZ58NoHWwTQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46x03mr67t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 11:04:16 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c9305d29abso701615585a.1
        for <devicetree@vger.kernel.org>; Wed, 28 May 2025 04:04:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748430255; x=1749035055;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WBsyeat3wl3WwBotOVfTmQNGLpvBr+fBrkq380ZI68c=;
        b=kbgks9MwZ0sACJ98VyovxOR3PrQ6dZX9nO8RIoktDfDxiH3R1Q5WtPrpBy6ven1agg
         N3Cp1x39uXndBddNpV2z5mwdXVK3I5gHndZ6Wu2ahLx560yDbuXEghN2UogeTVhMqLf3
         o/7Xg4By3AeuvU4h2h2ckiNPMb5EoUNOj614XJ22rYYDsZGbqL8Jvtf/HJXr5eHL7o1S
         6NB/yqYkZW5zG203FWjsc8g2eVCU6kIcskqLPD3/QdNqr0xeGocTMRBVKRepQyNeOTRB
         kiRl12q+smfUGpuPPLtyXPTbKUUhHUZiakosSmTBY6ngTFDrc3WT8tzI8yYNkELD+SGi
         603A==
X-Forwarded-Encrypted: i=1; AJvYcCUd9sZ0vL7nrs9cMI28HnNi3aFoB7JnsrIbg2TjZAz00+kP4GRfeOAcoKBjS/7MRLjm7BXX8rEFyFld@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7XhOj5O3nHYfvdgDU2LEZxwPkaRKNRr3jvf9wut5ALjYlqdfy
	PYyZ7ZjvhVHSKhQdrpPr3yZwX1buvAP3N/Q0+Lz4WNyD79WR2A7O04OKbYXMHavE5+u5u/Yf8/R
	WJQ2SqFbm/VcYuBX6mALemjOT+2p2ZAuYAR6wxQKUVm4tCBdVwB1dDC4lMTLgjqyY
X-Gm-Gg: ASbGncs0adbagxqLSPCcXSdGrEoB2193KtWBw6XghycI78Vo1CptO9m6cpt0BBI0m7r
	wJwoewG4PEOe/EhX/Q3yyq4nCqzUPDB9j8W895UFEjKyykOPlHBrr6hD5thToYudbboBuLv0xhK
	AAi5LEnL6wbjQSvfgxSGppu3JUb52RbmdxZD1a3vvdI5RPt5K+DK10UoJbFsFuH9h2OhG27hhhy
	6/xjelyJME5Rg5u+BMOTJigFbhv1FKWyTttgbJ5Eq4Ye6W32DYBfKSWoh4d9O1+81D0JEa6aJ9Y
	edG7xK2BPHcm7/ybbHm6uykqPw1iPet5mKHpp9TPnyhnaf7ylWYi2LEUCj0dims6ALsoHpO8aBs
	=
X-Received: by 2002:a05:620a:28c2:b0:7c5:5d4b:e62f with SMTP id af79cd13be357-7ceecc2b4eemr2502092285a.43.1748430255200;
        Wed, 28 May 2025 04:04:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG10UZJ7QoYyXLSVHNCzvi96Bk8bbljVwgKTscsPit6mUHckIdBl5B8wYFznELJjPcvrLyuhw==
X-Received: by 2002:a05:620a:28c2:b0:7c5:5d4b:e62f with SMTP id af79cd13be357-7ceecc2b4eemr2502087985a.43.1748430254788;
        Wed, 28 May 2025 04:04:14 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5532f629746sm236497e87.56.2025.05.28.04.04.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 May 2025 04:04:13 -0700 (PDT)
Date: Wed, 28 May 2025 14:04:12 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Renjiang Han <quic_renjiang@quicinc.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vikash Garodia <quic_vgarodia@quicinc.com>,
        Dikshita Agarwal <quic_dikshita@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v7 2/3] arm64: dts: qcom: qcs615: add venus node to
 devicetree
Message-ID: <idc4476ibh4geraklzpas5536jnwvbp6xhjjaajcdcwxicorrf@myh7kyz77rxy>
References: <20250527-add-venus-for-qcs615-v7-0-cca26e2768e3@quicinc.com>
 <20250527-add-venus-for-qcs615-v7-2-cca26e2768e3@quicinc.com>
 <429b4c99-b312-4015-8678-0371eac86de4@oss.qualcomm.com>
 <6a9e7daf-c0df-42db-b02d-96d9893afcde@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6a9e7daf-c0df-42db-b02d-96d9893afcde@quicinc.com>
X-Proofpoint-GUID: auv3xRMj8DCfJtEE4qaTrPIiDtp3jzr5
X-Authority-Analysis: v=2.4 cv=FuAF/3rq c=1 sm=1 tr=0 ts=6836edb0 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=DEnfwTRa2Hw7pMDRkAkA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: auv3xRMj8DCfJtEE4qaTrPIiDtp3jzr5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI4MDA5NiBTYWx0ZWRfX0KtCx6V5A1EP
 aIC0mmqHEQ22f46D6OhGaWNgFLDHUoznN+vTrrZrKMUto3mn+RJxDHPCooQijMXsyvoUfIpuRNL
 aaMMZjQZtowo9+UclOl4jDBT7LjgVdlFxbkRUnZjWQq4cdz3CSRsMmZLO5zGO2z+lRqzoLYbxb8
 p9tR2+Oq3UD+qYeP0KlyPnBmfDwKe6NJPck6nSD1mvT0Dff0Gw3AvWVBm+vHgpBO0S4NfNO7V5V
 Bq27C4JMYRAk8CAQSYYERLY3GWzylrn84yyQ7aniHeWA4uyH3s50Abo+c+X0tarIMZ6hkvT77oN
 0LjmNuSdh95NEmU7+lDY9rkSh1oyoeMun7iv4E3dl6aWgkXLgaamQWZDoeVNPlbnHdrGp0zfsT5
 ybqPYC0pf8O3K6SQkYmlNQgIryJFur3/re32nokUKm/t1lznWm65Kr9oZdWC9F+MkRSex1Jv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-28_05,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 mlxlogscore=822 mlxscore=0 impostorscore=0
 bulkscore=0 spamscore=0 phishscore=0 priorityscore=1501 lowpriorityscore=0
 clxscore=1015 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505280096

On Wed, May 28, 2025 at 05:13:06PM +0800, Renjiang Han wrote:
> 
> On 5/27/2025 9:57 PM, Konrad Dybcio wrote:
> > On 5/27/25 5:32 AM, Renjiang Han wrote:
> > > Add the venus node to the devicetree for the qcs615 platform to enable
> > > video functionality. The qcs615 platform currently lacks video
> > > functionality due to the absence of the venus node. Fallback to sc7180 due
> > > to the same video core.
> > > 
> > > Signed-off-by: Renjiang Han <quic_renjiang@quicinc.com>
> > > ---
> > [...]
> > 
> > > +			interconnect-names = "video-mem",
> > > +					     "cpu-cfg";
> > > +
> > > +			iommus = <&apps_smmu 0xe40 0x20>;
> > fwiw docs mention 0xe60 0x20 (which result in the exact same resulting sid)
> OK. Will update it with next version.

How would you update this?

-- 
With best wishes
Dmitry

