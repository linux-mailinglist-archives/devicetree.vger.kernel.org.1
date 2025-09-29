Return-Path: <devicetree+bounces-222386-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A30F4BA8AC5
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 11:39:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 40EB33A408E
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 09:38:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A30928CF77;
	Mon, 29 Sep 2025 09:38:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lqX2erMb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC7591F582C
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 09:38:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759138683; cv=none; b=b087P9WoO9f+mCX/ac6EuaYaoxSUHqu+ZitNESDGf9MgTtanxWuroPMaMDbR05XWJbUvzBCVRSQ8ZKXU2dKo/OA8yqfuLsfX8J+Q2CP4TD13d2ceMBASe2haDjKuUrJtDNZgRkNmbUv1ZDq5SulEdB7A7h9B0fdsZfZa63I75Lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759138683; c=relaxed/simple;
	bh=1titZlYiqCGea4shUB6s1SlT200aB6VqOgT9uvqDHos=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kQ+cCvaFp4MuIeykeEptGjZLT7n4cVB4GERi5yJYT8oEJnR41Q4TEFCyfr2tfiIaUPXbCZrQRlY1IsLlP1UfhEuCLx8f5HplSIvCpe+ffd5DScikqw6KiiJgZcNen4tsN/MN8Ia+eEfjNAZ1fgsGfbcfVTXGNRX6G//Kj0qYxIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lqX2erMb; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58T9AT6X030509
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 09:38:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=uMrlZfYJFsa/roxg6t05N0o/
	qG4IRrmXSTCcqA1YII0=; b=lqX2erMbnrxRKWLuns06uDSLqkXVa6AirFZeCU5R
	TnlBtePDEsyiapTu8FAtXRXVRW9/9CJZfdBmZw0z6O3vMx/7Jb0ek1Pkn/wtMQwp
	FPrHN6sUHfv44RhuWAu3ZCvYhRgpxsRHJjPUpCySzID69NQN34OPGxlnCD359/6H
	fP5vo540McH7RD6VOIk35qd1fhN+J1u1ic1NhC7san93DTn3QzXNA+fYegFpJjq6
	VGOvJ4IaR341XAToGkyUdXU1KEp+xPhkhMOLd3dCk9BcBt0dN/vbGpqmWKyB4P8e
	Z5NOj+nVA0Il1PboIKseTGN5oY36TfkuerY4adQHXTqIZA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e5mcmx2q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 09:38:00 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4d6a41b5b66so107678261cf.1
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 02:38:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759138679; x=1759743479;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uMrlZfYJFsa/roxg6t05N0o/qG4IRrmXSTCcqA1YII0=;
        b=iM+zZzrPqFDfO2fV8Xf1vuAi4gWxDkIypPYNK4Yp098fEEQbZC1rabv6LhYqbo38jV
         lMX/fGnoiJseFolWJtJfzsM3EFMlgHKveZELB2HehnzmaZmGb+Z3DvZYYT//05l/+OvY
         nla8ilpPo41H7u9OVhz3kC+WmgyzbEQ8QzTuKeIvB2opLNLIaH2tJyIQjjXMPelllcnx
         PP2BQU+WdWCmfscFhwXS0pUSunF5wYoyaWR2l9mc9e5XEZS9awCe52UUrBUCoFwbgCRu
         5fLrM132rBkNKxDuPp+1yvFAKMIGv6DG1DA2cJGqdz2VdVjKXqH1NwsMPFI9UJH+uazr
         JXjg==
X-Forwarded-Encrypted: i=1; AJvYcCVZS0OwTB+f0aAc7/hIR8emzOTJ/ookrwyv/FBznoN3rgxqTyjxUgl8f4KV1zsOxfc1hXGnzFxg1U7l@vger.kernel.org
X-Gm-Message-State: AOJu0YyKBh4s+DyzbbpgTnPzakr53uPzo75N1P00EnByrDb0XL5QYGty
	UzP4BXuDhBYrULXIj+ZG4Ipr6yJZK/x3doj2XMkwDNEiKr3ZLftmj1EvahaN3rzIXSpCcvyEFLP
	DQzZMEcqMatyjlLAT7JYYJfv+m85cdF67Ky8oTiLkHmLJR52RAyb4vTgJZpffC2Ed
X-Gm-Gg: ASbGnct1T3vyX2qtsc3xY0DQBHewDBOhn9cqTnwV4+d0mFk3bXn/+cRg0UhLPNf1GTP
	zfsx1OEsQouea3E6qQ9f7lWaIYJFvA6G9YRjg/ycUKMVCmG0Wpq/2hHDXcWr+5406ofQWmZd8cK
	gH73bgz9eKQWiODMNJP7j4mrCi1q82yGsi6Ej7AB+9VJek0HvVTXntVkRepr9HgorYs5as4+Bdx
	P5B3dAiVrtxda8uF6RNFCi7KUzrWNqq1N0HGT/vtieXBjcGZuK2/1vzPIrGUrCitYCYssQ7Xy97
	F4O/kZp54lh+tuVOWiO5wkB0F+MQRC5Z0EKtUILXd2BGwSgsdlVP3LKGn6+y9SgG5KNsFQOST7S
	hayQAQr4LEeHZuaxHj4d5cSp2fJGr8EGQrykLmxgm23ZSAgrp/CST
X-Received: by 2002:a05:622a:a942:b0:4e0:e01d:9b10 with SMTP id d75a77b69052e-4e0e01d9fd8mr40968301cf.80.1759138678798;
        Mon, 29 Sep 2025 02:37:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFD5964wxBa34FImGPLm/8ZICEnP/mK7N2I+GucPncX7EMAJYQKfCHTslaPOWWcyM2ZGE+L0Q==
X-Received: by 2002:a05:622a:a942:b0:4e0:e01d:9b10 with SMTP id d75a77b69052e-4e0e01d9fd8mr40968071cf.80.1759138678292;
        Mon, 29 Sep 2025 02:37:58 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58313fc205fsm4034625e87.63.2025.09.29.02.37.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Sep 2025 02:37:57 -0700 (PDT)
Date: Mon, 29 Sep 2025 12:37:55 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com
Subject: Re: [PATCH 0/2] Add Qualcomm SM8850 socinfo
Message-ID: <2wk7sdt6xq7poqzhym742yvfvfdctq7oydhu3hdcwbev5swhzn@xxsyt2h3l2ok>
References: <20250924-knp-socid-v1-0-fad059c60e71@oss.qualcomm.com>
 <ebxbhaaefuoemadcef5h4lxfw2k2hwkfe72aubctqb3tk2zdmp@p7ck45rd2hy7>
 <6094ed8b-ddcd-462c-8753-06a1d58a9691@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6094ed8b-ddcd-462c-8753-06a1d58a9691@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=RMC+3oi+ c=1 sm=1 tr=0 ts=68da5378 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=k9_RiEPCMvdJkSLYmZIA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: vI2FudjLLny9jkYpurARY57Ac1LGVF2v
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAwNCBTYWx0ZWRfX7Jwm5DsVxjia
 Z9yWdqiE2ZGMgJ6pzOqZ9ZLibG9iAAjePow3Z6EEhrVHkHnjvlO+dc+/Kpwem3OLBEHLP7+kwSk
 l+Zov/kunMEfSPH7YZnRevVTfQnXYU/q1vCWtfqdq9DOGjDZGJE+jbCAM1FymjWMwxslpfYok5e
 VAjjicHPEOQlDsSmpdIIgyvSlJFUD46Be9DxpX8/WY5YgnLydgQ8xwlKwEKJoT2shkI/soe1tIF
 GS1s0KLkvltGnN+F8opA8LE4BVKv7ozcBrIJl2sUU9efYzCuUHN1HabypaUQ2T5S5P268BOd0o+
 kU+YHNAVs1tPd+j0iaCjsyj+6KSU5Zo2704NodZ4hR8fnNeOJkWnJJuyQFymmheaonVMQdBGXaU
 I7JsSk5UiYq7h6g0crWM9SLKEgs6/w==
X-Proofpoint-GUID: vI2FudjLLny9jkYpurARY57Ac1LGVF2v
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-29_04,2025-09-29_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 suspectscore=0 impostorscore=0 spamscore=0
 adultscore=0 bulkscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270004

On Mon, Sep 29, 2025 at 01:54:13PM +0800, Jingyi Wang wrote:
> 
> 
> On 9/25/2025 10:38 AM, Dmitry Baryshkov wrote:
> > On Wed, Sep 24, 2025 at 04:17:45PM -0700, Jingyi Wang wrote:
> >> Add socinfo for Qualcomm SM8850 SoC.
> > 
> > What is SM8850?
> > 
> 
> SM8850 is the soc id for Kaanapali, SKU numbers instead of codename
> is used in this file, like QCS9100 for lemans, do you mean we should
> add the info "kaanapali" in commit msg?

I mean that you should explain what and why you are doing.

> 
> Thanks,
> Jingyi
> 
> >>
> >> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> >> ---
> >> Jingyi Wang (2):
> >>       dt-bindings: arm: qcom,ids: add SoC ID for SM8850
> >>       soc: qcom: socinfo: add SM8850 SoC ID
> >>
> >>  drivers/soc/qcom/socinfo.c         | 1 +
> >>  include/dt-bindings/arm/qcom,ids.h | 1 +
> >>  2 files changed, 2 insertions(+)
> >> ---
> >> base-commit: ae2d20002576d2893ecaff25db3d7ef9190ac0b6
> >> change-id: 20250917-knp-socid-f96f14a9640d
> >>
> >> Best regards,
> >> -- 
> >> Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> >>
> > 
> 

-- 
With best wishes
Dmitry

