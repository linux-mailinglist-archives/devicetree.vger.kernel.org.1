Return-Path: <devicetree+bounces-192844-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CC5A4AF82C4
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 23:43:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 276061682FD
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 21:43:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 895802BEC4E;
	Thu,  3 Jul 2025 21:43:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lS+/7q34"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2496328A1F8
	for <devicetree@vger.kernel.org>; Thu,  3 Jul 2025 21:43:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751578984; cv=none; b=sfl827J/TpVnevNPpuguf0Tu/8p76fCb2WgUC1I9nshJEaAvm9UWqzOFHv4BJsT/rNkm/y+y7HXZO0/6MWxvZiIfVAJPeyPlFznenuwaWgedidCk+6wYpi7wDxdEhOcJwTf/tqDgUDSnq8C5DSsxUoTj5UJY4vu60LJ+6LXb1Z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751578984; c=relaxed/simple;
	bh=NQ0Qk+TMUANYCWV5dlSD/i/jLVaSorn/SnDHk88J94A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TSTZ2SaJFlQLxwLqRmApgYAyTiGB0wfZgxVXZ75rl/AfM6ULelE9r2x21+6ss1q01rQ+qf2moT4bhDN0RFGboPl6OO+gkD5jUQoheg6/LVZVN4I+ZOIYfvM3nhuS9OL5eGmPgfVkn2SGbAk26trAbGwiqWFy1ZQrUOXsB0ofZ0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lS+/7q34; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 563JPJpU029542
	for <devicetree@vger.kernel.org>; Thu, 3 Jul 2025 21:43:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=0qdR+SCx3OWhYnC0S9E4S9JM
	ShEJeWi1WMEl049av6o=; b=lS+/7q342bAzqp8ZFDO3iMZYuA0uOQdrrbO5kIU4
	eNcRDPpVD1Fwlis6JVo5p1uWlqg4uE925T6cSSTEkuFP9aA3NJQ2rtmWc9lMT7np
	M5NiLPv+nPe6kza5mHV6+NdcIVFLfBWLkcitV7V2hAXl4EBH+9wOcYKz4C1KSZ7D
	fbk7subCH+Dn1+WAbFTeqF4kXOnqdJOPq3Jf+wZXdmdz7mHGr5xeV1Sdgf/XhY+3
	28MZ/e8Ma/XO3jR7NNJqYICGm8n5UnpbuLgJ250qBoy/RRvA7kEnQX1CrrAFS87H
	rQ2TDkNvBhZiyWl27FzoOu81XrLGcd5WAISRUMOO3h9rUg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47nh9s330e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 03 Jul 2025 21:43:02 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c760637fe5so43454285a.0
        for <devicetree@vger.kernel.org>; Thu, 03 Jul 2025 14:43:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751578981; x=1752183781;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0qdR+SCx3OWhYnC0S9E4S9JMShEJeWi1WMEl049av6o=;
        b=iHxUAf/rCUqrE67Cimq8EJg6lfWYOUktN53ajxBxXSrwcsP3miXSKnsWWjI30LSlXv
         uduZKAK+3+UBTMJs+n4C6I1URxxQn3KmMF25rEtB2vNpkBnvfTpc56EtS1kdiuFw+0j1
         eiU/xX8VX9HtitBR95nFNm3mheM9nfTOZL6rJ0cWZ0zNCIkYARHHIJNORX5IkDpzGZAW
         Azpu+GgESQul4K40Yv/yEJOV4lVx3OPmxPCE7WlhI2uIQC2MoshAQsITF52+r4eBCFlD
         qFB8d0SJEnXYMHjLwfK41XRvpcaPbvsxzJW7Pm/NqDq23RnzxB4/j+zMnxO95Zm6wYiJ
         m0Pg==
X-Forwarded-Encrypted: i=1; AJvYcCVVLQfu/LKgyQQmWOaUSONj/mTgX8eJH7BvWL/fXRQ6v1HhmNy8pprgZukBWEs4z7W+eiPiB2CjJNF9@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1C9OZOaFc81luPEiwNCTlUqbpjNUdf3V5jXs8fPIoZr4tvZB9
	lsc4naXx6MTbrbCpX0v79vSZIii9VkkmVQGShjVECa6yo6QAfzR66NNiktGKFZWfEVYZzF2PkIu
	PUka507tR2xyeZDloZq6gCEy/jG9Pw9Gn8IhOwPljmqrdSov/KOXhlbdfR3J8s27K
X-Gm-Gg: ASbGncumj4EMXkUyC8VnTo/2s/JM8fLPBGd/vdqhtu8nTv8Bq5oTDH0DkkGnafE3P0k
	TB+1okMqmOVvo8IbvpmGPUtOsiWioq/inr3AOdcKz71IAcgYWBHG7352u1DK20VocJ9pr7EFV+O
	EIH1Q2gRorln789pjC12hubSSeEhvc61TYotVyun6+dg77TZ4E0hpJPR+Jd1gifxUOHYRM8W3Oy
	nSdeO+Ap9JNfCWML529HkXLLQmuo9CM1zx351ehqRI2pNueuMTl2e+F8QbdHZhgotEgq/Qf87b8
	C62g/ux3bq4aycz/LNNrs3G/Fxn4IbDrnsxeZFHC7hFoyCkCNiwQvCVo4p7zhLSawWoOLrBwMdV
	mUGlbcwVe6vJpfgnsLgBxYR8KbQiQ4fxU6AU=
X-Received: by 2002:a05:620a:7187:b0:7d5:cbfb:8844 with SMTP id af79cd13be357-7d5ddb1d9d6mr7417885a.4.1751578980945;
        Thu, 03 Jul 2025 14:43:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH0r+yYXY87tfD9NzSKu2cGD8cQwmepM7gyxeU11O6CFVmLIqXER+CNuV5QEvR6O0qoT+qaMA==
X-Received: by 2002:a05:620a:7187:b0:7d5:cbfb:8844 with SMTP id af79cd13be357-7d5ddb1d9d6mr7415685a.4.1751578980482;
        Thu, 03 Jul 2025 14:43:00 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-556384cea54sm74195e87.247.2025.07.03.14.42.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Jul 2025 14:42:59 -0700 (PDT)
Date: Fri, 4 Jul 2025 00:42:57 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Pushpendra Singh <quic_pussin@quicinc.com>
Cc: cros-qcom-dts-watchers@chromium.org, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@quicinc.com, kernel@oss.qualcomm.com
Subject: Re: [PATCH v2] arm64: dts: qcom: sc7280: Add support for two
 additional DDR frequencies
Message-ID: <waxxtkaqatisuvdhejahcion3i62d5ojljtgkmhw7acckjpxzq@qbe2pb3jg45b>
References: <20250702000120.2902158-1-quic_pussin@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250702000120.2902158-1-quic_pussin@quicinc.com>
X-Authority-Analysis: v=2.4 cv=frrcZE4f c=1 sm=1 tr=0 ts=6866f966 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=C_4s4C4ZoqFTuNAt9h8A:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzAzMDE3OSBTYWx0ZWRfX5cygrXiSsgWd
 MBDYL0qkFsDhuuSimG7lvGlzGdEXLEIdQ6S8wb/uRqpbcjXFXz1yuJVMCRKAaUDB0th4t0GnsLY
 hZ/xZFoAfpav3h80VqrNDFnOe3/Vq/30tfWRmZnC2KfzF3CKevaqSRC/18zC4jPknt3iYRvAPjF
 UkXm0XfMGOXAaAX3oQXI9AdUleeWkGwPw4cp5v6cJuLngi+yLgDypxmwO7MjF3Oq8/OZ1h8hlOY
 PC5mJDGHfL0n1KucYwY6FOFFyNAoLN967Cl+EvEEwdADfQ0q/reh0FN2MGkzAtC9mpu0dHtoGzl
 Z54dC+pX2BhaDOmapIt3q1pDa0VnnLb0XpIFPfAQ2iUb+3YxMsDAzU3srOS+bFArifdOKBvbekz
 N9PgDpmFauftByg0xZrT5pZuW8R5mhZmxnQ2jwVLA7eL3gjsiA/7ewSUI3VZXtf7K0l3KZjQ
X-Proofpoint-GUID: GJ9ecQMRY5yuRmncmTZTbyIj5x3SV29h
X-Proofpoint-ORIG-GUID: GJ9ecQMRY5yuRmncmTZTbyIj5x3SV29h
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-03_06,2025-07-02_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 mlxlogscore=997 bulkscore=0 spamscore=0 adultscore=0
 impostorscore=0 clxscore=1015 lowpriorityscore=0 suspectscore=0 mlxscore=0
 priorityscore=1501 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507030179

On Wed, Jul 02, 2025 at 05:31:20AM +0530, Pushpendra Singh wrote:
> The SC7280 SoC now supports two additional frequencies. This patch
> add those frequencies to the BWMON OPP table and updates the frequency
> mapping table accordingly.
> 
> These changes do not impact existing platforms, as the updated mapping
> only affects the highest OPP. On any given platform, this will continue
> to vote for the maximum available OPP.
> 
> Signed-off-by: Pushpendra Singh <quic_pussin@quicinc.com>
> ---
> 
> 	changes in v2:
> 	Fixed the commit message [removed cc and change id]
> 	Link to v1: https://lore.kernel.org/all/20250701074334.1782967-1-quic_pussin@quicinc.com/
> 
>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 18 ++++++++++++------
>  1 file changed, 12 insertions(+), 6 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

> 
-- 
With best wishes
Dmitry

