Return-Path: <devicetree+bounces-181163-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F34F9AC67FE
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 13:03:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 253D27B2058
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 11:02:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34EE527700B;
	Wed, 28 May 2025 11:03:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="p3umwhj/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C32B7218AC3
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 11:03:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748430197; cv=none; b=DbN/r7Rz23/Pq/23rlXipVHpgrNAXXRIs2Be9TaQv614uug6UFxLaP+X3DIXSOodG4jnsDXCwY3WkOY9ulAxpFtdmRuFPKPIVEmGH4dRX9o+qm6NBL3itFZecOY6dtvWsYQ08OVPWTDgduSqaUwfU/AShiXyjJx/7QZkoOclNHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748430197; c=relaxed/simple;
	bh=/RJIvErotRj3to0d6kOm5wmObFlOfph76zWlBJ4Q9Oc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ttGN43QcUucmFM9URQXtnWtSTect81joGlu2QEmoaiX8mXIkoRaQsjRJfkCrYqc8kaodLbAj236swC0XJEoveP8lzUp5Z1/zcDS56wM+ZEYRUPJ0jufOkMJ38E599B/O9P/sq5zzuK0/V7T0FhQ8i+KnKWz335qU30BNngnspK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=p3umwhj/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54S0ji8I013539
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 11:03:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ELgwTpMyunvmM7oXC9JYUZ5V
	y2pFyIIsfyTDjxB9GAY=; b=p3umwhj/5BExpQj33huf2Oh+q3NmW1Ns5ZP8BmwF
	cPOg7fHjAtrFgcPC+UAIlxGuN007wmXrmOpbd/IN6OPq+GA+t7B/hveMWLYmyKkF
	DAYwI9iG6APAwESFbdskCqOSu48HEIwfld/+JdIrQBK3QXqQE8gJi0q31DXR3RVO
	GtSrEGfoQA51ic/+QL+/xMbvVuEuRGW3ohflgv6JmO4An4cgKO99ql0aNd0LnmD+
	C7MoQN5TkP304S0idmf+4INg+3jaAxW06ftV1dvgLyDmzt4ki6GvXY3sEKZaFWPy
	Gt1q9YUO4XCyJxJbPE3/seQq/KvvUmsbxu3b7568WzGWDw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46w691cfrb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 11:03:15 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c5e28d0cc0so680222585a.3
        for <devicetree@vger.kernel.org>; Wed, 28 May 2025 04:03:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748430193; x=1749034993;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ELgwTpMyunvmM7oXC9JYUZ5Vy2pFyIIsfyTDjxB9GAY=;
        b=ai7a+qqJUsM5udUy+CqABONb5J/Ec1VLwXSDc2JLwQHH4+HBsxB/bjiXxrrOAu7h1D
         wo8Gop4bQoSv9edNzqCqxauSirig/rXTJTMv0Y41iQuKnOrSj3lVox74lU4MyE2bBg2X
         TY+ujyxx3DokrRlpbmaOgpbQUYxNgxuRnu7XZX7jbQXm4n5xzU2ZFWEIGcHFHM7xyNy2
         G0yNF8Te4ASDualp0MSosfumy3EcsSohQZ3LAO8z1Rags7LjZ96ACam84nnVpFh+LEy/
         iK/xT2Hrvmn8Or/jcjKVDQwn0Gzo+d3hPOrVGPDvGUnLPB+f2b8vqCMnL3GCLOckqox7
         v2/A==
X-Forwarded-Encrypted: i=1; AJvYcCXAelGm8W81xK7h9MBdF+VaRJ0St6zy4TMWzJjPWcoa4X1yBlHZSiFxzUmDtNAL2mCFCrLjuF9W0WbA@vger.kernel.org
X-Gm-Message-State: AOJu0YwWAzY1l3Amd/c+or7vzQ0RJC6mceQtA8tYx1IsMabuCHK8RX7i
	TPa9GttjwW6UTjfUEzaU+q4eSlBopetGeqjDtfYk08sP/cvGTJNmAmbas/T5OTzUlAgaDesCBn7
	lQpA2h5BXUMalrCQJ47GcFphHIELC5sSAcDbnCwlpN7NmGguxO15qJyttG8224aJdNoGde/Hm
X-Gm-Gg: ASbGncu3Nw1nFpQaDmHWU7eIFSCARoAhKvfMaFUhenoJB8UQyP2tLWj7/IOJnwGrlPG
	cu7oFoXfJWA3+8AApF7jXur6Voc6dLVzVYF6G1trlUim2qpTjQkITDlW4dVCIju4Eoo4usFGow8
	hzaBY2d0g0Fhsn1bo+e3lzIijdS9qduB2Jaw8azNF4q33zODmNtmYx5+J5Vgv0TPX7Ny4O+2DLg
	ANzCsb+oo58+QwVsELxq5F/7FFvfc8B1CdyyEpg8X6Smu/i/1M9Vng8a7gzSKCpL1Y/tehLHdyJ
	2DQCNICm0rljOeCTpEiIt44E2xHYnT8zJOnOkeTIQwOuQ01v6WCEYW01VAhuQRUqQ1emreoWrss
	=
X-Received: by 2002:a05:620a:372b:b0:7c5:5585:6c8b with SMTP id af79cd13be357-7cfd19dbd92mr228983985a.50.1748430193405;
        Wed, 28 May 2025 04:03:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFGnv4Xt58Punjx8otwKBoHUwlys2VKyZhjUmL0mq9X43VaGyy/glqWWnkmJnsvnpqUXlWpEA==
X-Received: by 2002:a05:620a:372b:b0:7c5:5585:6c8b with SMTP id af79cd13be357-7cfd19dbd92mr228978885a.50.1748430192892;
        Wed, 28 May 2025 04:03:12 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32a79f69878sm1973641fa.89.2025.05.28.04.03.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 May 2025 04:03:11 -0700 (PDT)
Date: Wed, 28 May 2025 14:03:10 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Maulik Shah <maulik.shah@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v4 1/3] soc: qcom: qcom_stats: Add support to read DDR
 statistic
Message-ID: <d4sb62vm3nfeqaipl4cw7wwbrg3b4xzqhtjkr26ephfmygnnub@aaqoyzfnw5y6>
References: <20250528-ddr_stats_-v4-0-b4b7dae072dc@oss.qualcomm.com>
 <20250528-ddr_stats_-v4-1-b4b7dae072dc@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250528-ddr_stats_-v4-1-b4b7dae072dc@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=WfoMa1hX c=1 sm=1 tr=0 ts=6836ed73 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=ahjRXFyu6kw89l6o8aEA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: 4H7PB-TZqe_bpzvzYeWfc74ju3OJRkZv
X-Proofpoint-ORIG-GUID: 4H7PB-TZqe_bpzvzYeWfc74ju3OJRkZv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI4MDA5NiBTYWx0ZWRfX6d2VZxZuCSds
 jkbxYnIOAW8f8F12lJeH4Q5RMEVzUptJuCt0133DmC8WUpHt6R5ZenfOnjqkY3irl0+x7htfIvD
 4P/1WV1a4n6aD8UzII/ApMZWL5aMf4w7mkgMFr8zkQdI0WanvN/DwuiiPJ5axy9OvnoDNNdeKCI
 i2ldjihAN8ZnZgN+tlSvcwhn2gDdeG9iVdwgv5R6KXuR6LrY2BauVBVQg+ua9jn9hBKdpE2Gp5f
 L1wzJo3ZMaF7tbzIPTiJ087c9ITahR3MHkJHLQp+BPRO+2H+U/bxCFI4WWzdq1MWEyWoMJTQiOX
 GLTVImqbaDMBPF0h6DVGaeQcqH6GtCOvmdmNXn/pBIJnfC75OfLrvZLaplIITCl8k4YlmvE3M8n
 pWRn38XZT9fVIh0YuidD4xi6FOdTjtVQrw4isckkrFXEHP6l9J1Eoea1DpaOVSzwjcmbR2H7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-28_05,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 mlxlogscore=807 priorityscore=1501 mlxscore=0
 bulkscore=0 adultscore=0 spamscore=0 suspectscore=0 malwarescore=0
 clxscore=1015 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505280096

On Wed, May 28, 2025 at 02:51:31PM +0530, Maulik Shah wrote:
> DDR statistic provide different DDR LPM and DDR frequency statistic.
> Add support to read from MSGRAM and display via debugfs.
> 
> Signed-off-by: Maulik Shah <maulik.shah@oss.qualcomm.com>
> ---
>  drivers/soc/qcom/qcom_stats.c | 99 +++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 99 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

