Return-Path: <devicetree+bounces-204481-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AF537B25C6B
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 09:00:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 438863BFE7C
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 06:57:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B80B25DB0D;
	Thu, 14 Aug 2025 06:57:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JFwL5LfJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD30259CBD
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 06:57:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755154665; cv=none; b=kqUJUU3b92WOQzYQ8Rg2Q7V/fGqP6W0PX4f/tmTHTWwCxmaZV1XRJ1T52uO9SC5XonWPKFuQxNaINI/LWTrql9HQGgbBNnv6i5G9YVlca+cJxUa7gO1eWt+gd6wRRETo+29ipPoVPqHkDOnzBDyKPaLQBVszdTDCCkPX3rPO+ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755154665; c=relaxed/simple;
	bh=2TlK50ADSnugtMeEFZsEk1xa7yMDhRG+pO5OGKlwYtc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DUDlA4MlfzE1HBcJMMTQwmAtHAe5qBFELuyQ3EiUiZdPS7UexA7TqeVxjaxUrXCW+OkadXGyhb8Cn60NpLqOPB5kZhpE2UVFjHJVs+72Mx4hBWhHal7oCUCx5d4PU2pSDdMY9GjmYo6By5/z7vPmHjjn+MCoXmElCCYKRMlw9Us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JFwL5LfJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57DN0xEL031164
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 06:57:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=WH6pheIOBCLhktt4o4IaE6vb
	Qet790mOAdYrq4OwLrA=; b=JFwL5LfJqGhhhv/hky0HR6Ild24Yz2XcjSC/F2Pd
	l/y9dNif1VXOMtJ6jtXx5rUwADOwQ6jsCgYGzoWmVQHYhK+2UCzNA6W5P5tBlEAq
	S03NXM1SShFXLTgr8m3YUKGVlQnUO/tWglYkqgM7Vd/XH8GaZA0AjrlNF7PDUHl2
	GoPb3FmLK5tvFXydN1otaGC4OtOiLUpZ/U6k9ZkVXoXVlQefKx5XnVC92htw8Rr5
	mIYK6XyLNzoV+/SS6UxmZjkBbbkYLuGbV/SPTqU61bwXztnJGN7punGrWrsb8RdC
	dcgvtdDhv1wd92kvz8v7i0rpE3xpo7pS7+jJIwWgitR7+A==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48fm3vsk6s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 06:57:42 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-70a927f4090so15312166d6.1
        for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 23:57:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755154661; x=1755759461;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WH6pheIOBCLhktt4o4IaE6vbQet790mOAdYrq4OwLrA=;
        b=edQc2FJrkM52JgQh9y+4oTPAwfCdE8KhdcjuzkbcdFvy4PyLAGl+3EVrG9ANmhQ0wO
         O1SoVKOOZ+7DagiuZpkTZ6k7M+mTw8iCVErLjFYZmbAoeA6lj/85aNXpoBvnuG0WQ/ao
         eXWgMVWFwa6OBo/Fy6uL/Iud+mdiRUjDtTtEfOUrIRwm3UMoSiGMaHwTcDiwzHDcsqda
         YQMsh8WxNzgorzDxxi/DaQZ18v7k79JiDHBFsvDg4sH9qSobE6wKwbtveNtwyF3VBGhB
         vieLvzuuvWMS1FwD1VXGPHcIFyiwA7huQ1+LxVbr4mswTfcgFJDBbfy4Uevc1krWeNnx
         bTnA==
X-Forwarded-Encrypted: i=1; AJvYcCWX89C9BNNbwOTPQNp7zq3WVyuPx19Jpj2/dcnuZzwI6ZK1DaapNP1v7kNLya/mqvFFzCfxtkHGo9Zs@vger.kernel.org
X-Gm-Message-State: AOJu0YxmnsHAQn3YCzhdiMy69AY8rVtsD+T/8j7KmDf5Zxbzv5Nech+M
	bjyK+z++dZ8ukS2HYmvI26TTHFdApP3stcd/GpUEzGVVBjsoTrV+hHIxkK0tVdGyUSRLVXx4qWf
	Hna+Jo2ct9uw+WqySjOd68aVEhXji2GQmwdMAWaeMQloL99Jn/wlB6320wwVSIez1
X-Gm-Gg: ASbGncuViRqu9p1BqjT5aB/myt1xvMH5qsokKUEciZ5gEfk+oHNys6IoKzZtINKSOJn
	JAlQQbqARnEEVHfXTXHpcL0jdbnd13bvQhTUxZKrAn+PzGwTqNM4d5P0gpsITpAwoN/mWPh1CCy
	ksSAQ3cATEA4R/gHO5Qr8axmNu7ut8QRauPeohIIz1HSO5fVSK4Z5CYrwl0X8WYV8MsV8gOF17u
	N+JOjNbvDxmqCpzQIuray/zrBMeFJEAZsQXsvKZiTjZWmEHIepTiW7yXc1g2opxztl31JbftL+B
	WcGrYKZo2WzVUMq4WJk2VzWCWQX40i+W3ncwMOE5mMierUqQo+PkUO3mI08j30Zt2kspbrVergR
	RgJTeFdR6vcR/UxToxaPvmLrrvA7x71kS8Jwy/cDecEHItVtC/Urh
X-Received: by 2002:ad4:5fc5:0:b0:707:39f7:c607 with SMTP id 6a1803df08f44-70af5b4a03fmr31187126d6.7.1755154661132;
        Wed, 13 Aug 2025 23:57:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGBZQ5FEsnMbOmX8KkrKa9+kBE6Os+GRoekHbqN1j+i/35W5BLwx3DVldiMtvDJKOME7rzkJw==
X-Received: by 2002:ad4:5fc5:0:b0:707:39f7:c607 with SMTP id 6a1803df08f44-70af5b4a03fmr31186696d6.7.1755154660637;
        Wed, 13 Aug 2025 23:57:40 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cc8d64512sm2420634e87.11.2025.08.13.23.57.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 23:57:39 -0700 (PDT)
Date: Thu, 14 Aug 2025 09:57:38 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Harrison Vanderbyl <harrison.vanderbyl@gmail.com>
Cc: marcus@nazgul.ch, kirill@korins.ky, vkoul@kernel.org, kishon@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        mani@kernel.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
        bvanassche@acm.org, andersson@kernel.org, agross@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org
Subject: Re: [PATCH 2/3] ufs: ufs-qcom: describe x1e80100 quirks
Message-ID: <lj7qsbtk5xlmji6eknfv4ffrqypcsfkq5m7icrz4mvplncflpi@5j2opxwb5lft>
References: <20250814005904.39173-1-harrison.vanderbyl@gmail.com>
 <20250814005904.39173-3-harrison.vanderbyl@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250814005904.39173-3-harrison.vanderbyl@gmail.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODExMDEwNyBTYWx0ZWRfXzEsB3tB19Sv1
 m1p+HlAI1RDeetp3itHAz3q05DrZaEexJof25z4V+blWKULqNCqQKa61z+wIWUVFQ7/SF0YsNCc
 HWi4DgVv++VtD4DdPBC0FN+ioa4LYog4MP/QCstGM7k/ElgUkNXkThiJK8VQIJIZET4dZGvmxdb
 IY2n9Jx/v1buagGSQXUWsmbZ/o3trXAp8dYLEs3zThSvxGNEif3TxhylyTwAZlwcBxi95lP2d00
 d02kpbfOKcbQgEG2t03jECj3cs1NQ0W99ESGM/ArJ4O3CIpP4e0PadKtB2+E6CT2vVwuSpWyce+
 o4V0Mw+acYf7Z4/mXTQIbzjTSNSdYhMJD3i+MBFtEyBeZs8jRXrzdY7qjJzUeF2Hr3o4iwxmYfg
 TdiBPDg9
X-Proofpoint-GUID: t7-urSIXeJ13zvB4NjjQ_15inRXsSvxk
X-Authority-Analysis: v=2.4 cv=A+1sP7WG c=1 sm=1 tr=0 ts=689d88e6 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=pGLkceISAAAA:8 a=D3Jz6Z15PsX1N0F7-5EA:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-ORIG-GUID: t7-urSIXeJ13zvB4NjjQ_15inRXsSvxk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-13_02,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 priorityscore=1501 malwarescore=0 spamscore=0
 phishscore=0 clxscore=1015 adultscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508110107

On Thu, Aug 14, 2025 at 10:59:03AM +1000, Harrison Vanderbyl wrote:
> Describe describe driver quirks for x1e80100 ufs device
> Signed-off-by: Harrison Vanderbyl <harrison.vanderbyl@gmail.com>

Again, missing empty line

> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 3 +++
>  drivers/ufs/host/ufs-qcom.c             | 1 +
>  2 files changed, 4 insertions(+)

And this also needs to be split into two patches.


-- 
With best wishes
Dmitry

