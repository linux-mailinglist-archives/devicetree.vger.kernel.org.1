Return-Path: <devicetree+bounces-219710-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7658BB8DC95
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 15:42:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 55EAC189E8E3
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 13:43:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E7962D876A;
	Sun, 21 Sep 2025 13:42:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DQMmXiwy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 922C82D4B5E
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 13:42:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758462167; cv=none; b=qhNVI9I5H4oEyTeTnZ80fzCkrhI6YLGI17qFkzO5PM6M/B1k24y2/5muj89ZdHokWj80awzskWXgRZWVNydsyO4iYT1Mq4654OwVBFIvnYtEEt/U6rwkJqvCcPCFiFmCLLIUKkDT/4h7ImGNbMCiSHqGmKSe+OnXSEGUzDzWwkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758462167; c=relaxed/simple;
	bh=H6pGhEhT4oR9iVYSy6gV+v2KRH+Ert41re6H60vwxz4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=r5DcNZELcTTGv6b0yR3FSVGGlIsrQaU8+TuMDA1hay8q+stD9TtLb2Hga0/mDyOYYlsWLRlcv7hRyw78aF8XAASHc2hr93wALpVgmNf8tCn3i4kh3kr7Kt+XUUnaFlK7Z92wfWUEv72PZGQvrORuiKNmrvP2Fhr3OU7Cd91g3Cc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DQMmXiwy; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58L3SOIv004116
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 13:42:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=41GBfb+Fc3UcRhw/qydO8Bys
	CX0wolmp7w7aZ1a7kNM=; b=DQMmXiwyrLveKBRQc6LwPjww5zdOW8yvzc9R0qIl
	owhE3ofRqCf/OzzfW+p7q3d2jfTswf9ZevD5ld7qd5K59k22RjDqT6Nx1zGHRKXO
	c7jqNNsdrBaRC7z4fbg3Mi/m4qnp0kINtiw22DVG8eR+Jl5NUMQksNXvnHl89EPE
	RKs0BinJtrRrMLiS3m49rHE7MqsYY1ENsKs0Yt1s9wFS+Zb0FQlzAHOR7SsUOoHW
	CiE62soSklyVbcRcG3wWzoxThO/8GXtNJ09rFd8w9gd1vf/mJ9Nrt9nyius2s0Dp
	m0R4Mf2Q4aldYzfECOa9AUnXJMNUdp4v1zMkRhjMhiO8Vg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499mg326w3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 13:42:44 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b5eb7b2c05so82035501cf.0
        for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 06:42:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758462163; x=1759066963;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=41GBfb+Fc3UcRhw/qydO8BysCX0wolmp7w7aZ1a7kNM=;
        b=AyyWAJv3jGBVaIxUiMHWnH+7IG07D15lR9K6WyE8VpEiMtVIdKYhakOX5YGvFsUdkL
         CJgNU0rUhic6Z4bRIUlKFXKSql+Pg0UW93WlckMNzhZN+fIQQ+46Iql1DdURlaIGBiz3
         +wlA/VX3UbaTsmAgnfPRUHoWfp0t5DrpTBpS6lNqvQKCDq9UDTho98aIQxz4codyHhtB
         XZSbdbobZAbKnS0TJCMKqg9MEOLI153wIhWxFuuNSaZPpDB4mSvPZJ0psxKl3rj/bYx3
         ksWJW2qW99J/HBt0Ed3SsHh/spOuoWKZ+dKpdQGZLitWbyEQ+FxxCAXjCuN8gTcRuiaK
         11HQ==
X-Forwarded-Encrypted: i=1; AJvYcCWv5e0SZJes86yS3lzACFMd58URQe6w1W2jVE8Tj+FIqzfhmkkcZEeHEcWVNpHcDsKy3PI+5eYrBSMh@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+4AWAT8nB8NTOAlCix+Jq3lzn1NM5LVCT4JS6D7mZaI93pUh/
	PsRFIN94Z0R4qK2LRE9/dcYK8pdfZpo6QvcB1hmPZSRf3tITSNmwirYepr+j3SDheaUI1F/A+AX
	hBmEHPWv9bhxHKG50JWbXlFtGTpOs2z3UpZpN1o+i05tmZHbG3VNXYCmF5Y0IvwnZ
X-Gm-Gg: ASbGncvzMuNHAofNZ8v0a4P46O6tJNtWRxREA05VCYojLqRMGojfJEjCHExImnPr/ta
	i+oS0+HF4ZJ9R4757GXScLx1m4ZsAxzlSpVQq8cksl3gMXfcjxEkb0TWXn8qHBfIi6rAIMamtlQ
	UK/tINpHJtAKu7GCWBlE+vnU5z0M6dnFWMi/6mAcI1O9D1pk8arYx5Y3TvBV4wsv+ebIcrQk67S
	ap0tQX4HFKJlMNHddeMiPe2hIYUCZo6m2g6w7nZzHFFj5CvNHAa0chaMTu/AgMcu3Y9ZESgHR8Z
	+l7G91s/o9pTlYhuLdQEjPCOwYwn7E3UW3Sd07wEJDAOjOythNEUvPvz7ORGGpm4urW5tJmn8M9
	4Wd0+TqjzQakcC8x8Y7TbmFo7cCEJEMmTUU45GZcDfMWMfxceaAnC
X-Received: by 2002:a05:622a:259b:b0:4ca:bde6:cc8e with SMTP id d75a77b69052e-4cabde6d94dmr6608331cf.25.1758462163161;
        Sun, 21 Sep 2025 06:42:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFswrcTGOhaSgk/wSyNd13eYZMRtIi7CH1fbBIBuWJI/FFQV4PYBBaf+PW90z6AV2BM7gp+Eg==
X-Received: by 2002:a05:622a:259b:b0:4ca:bde6:cc8e with SMTP id d75a77b69052e-4cabde6d94dmr6608161cf.25.1758462162670;
        Sun, 21 Sep 2025 06:42:42 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-578a957396esm2546067e87.107.2025.09.21.06.42.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Sep 2025 06:42:41 -0700 (PDT)
Date: Sun, 21 Sep 2025 16:42:40 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Antony Kurniawan Soemardi <linux@smankusors.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        David Heidelberg <david@ixit.cz>, Max Shevchenko <wctrl@proton.me>,
        Rudraksha Gupta <guptarud@gmail.com>, Shinjo Park <peremen@gmail.com>
Subject: Re: [PATCH v2 5/5] ARM: dts: qcom: msm8960: rename msmgpio node to
 tlmm
Message-ID: <kfqv3prsr5q2ulbsir5ndw3baixoldt2qwhdj5spidgok7y7ad@pmwczkealior>
References: <20250921-msm8960-reorder-v2-0-26c478366d21@smankusors.com>
 <20250921-msm8960-reorder-v2-5-26c478366d21@smankusors.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250921-msm8960-reorder-v2-5-26c478366d21@smankusors.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAzMiBTYWx0ZWRfX273VOiAuLAUU
 GXbEo3VwazgPvbi7VAz0aEKMuWE9iWIZQJT+Rd9j3I+fCirm/b2XjlYluvq4N+VOJ4messSTpPn
 OHbdBDfW08JgzN7v13lvE4vhmqyVlEGUUoL6SKoZtVia/DIERO0BteEGeDj1Tfi9Ga365eIk2ow
 v6mVNE+hG8CaiEV8MVp8ToZSTPWFN8QKTJFmNZTlNzwGwkxoX28/xAmFlcqzo3qkFnxMxqcfWK5
 HXeM6CKjoQwNZzK+WUXf/s7FK42xIAqs2pjW8RM+maI0t83For4ayzWGJBPhAkOCEJPLkXtqpxN
 E8LOm7gilbkvdYZ7fF1wUocaiWZRv/omsxdZl6Pcd3pZxLqT8uYfhA9ucqqXyNdfK8HA/k82HSh
 Cg8sZ4+o
X-Proofpoint-GUID: 6nbhus6EU2DdhR9H9nGqmAQtsEZeYwYE
X-Authority-Analysis: v=2.4 cv=UvtjN/wB c=1 sm=1 tr=0 ts=68d000d4 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=pGLkceISAAAA:8 a=wxLWbCv9AAAA:8 a=EUspDBNiAAAA:8
 a=WfKvcdoTxDYLXQoqPjMA:9 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=QJY96suAAestDpCc5Gi9:22
X-Proofpoint-ORIG-GUID: 6nbhus6EU2DdhR9H9nGqmAQtsEZeYwYE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-21_04,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 adultscore=0 impostorscore=0 bulkscore=0
 malwarescore=0 suspectscore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200032

On Sun, Sep 21, 2025 at 03:08:15AM +0000, Antony Kurniawan Soemardi wrote:
> Rename the GPIO controller node from "msmgpio" to "tlmm" to match the
> convention used by other Qualcomm SoCs.
> 
> Suggested-by: Shinjo Park <peremen@gmail.com>
> Signed-off-by: Antony Kurniawan Soemardi <linux@smankusors.com>
> ---
>  arch/arm/boot/dts/qcom/qcom-msm8960-cdp.dts                | 10 +++++-----
>  arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts | 12 ++++++------
>  arch/arm/boot/dts/qcom/qcom-msm8960-sony-huashan.dts       |  2 +-
>  arch/arm/boot/dts/qcom/qcom-msm8960.dtsi                   |  6 +++---
>  4 files changed, 15 insertions(+), 15 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



-- 
With best wishes
Dmitry

