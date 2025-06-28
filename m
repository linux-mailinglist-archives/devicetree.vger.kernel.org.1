Return-Path: <devicetree+bounces-190742-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED88AEC863
	for <lists+devicetree@lfdr.de>; Sat, 28 Jun 2025 17:49:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 51C683BC7FB
	for <lists+devicetree@lfdr.de>; Sat, 28 Jun 2025 15:49:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80AF7217F27;
	Sat, 28 Jun 2025 15:49:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZPdaOyUd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3E313B1AB
	for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 15:49:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751125775; cv=none; b=mIMx7EzM7janQMRnpxMYl/ECtku8Mv5pM/YBsvA28xM5AmQ8C1A4qAQtaITnNtzy0mjIw6HNV10IIuSbsZR5NjG1racWkUviXKY5r04/dh3UD2w5VZCckVJHQ2OYAyzX5yq/MNHyUfeRqpEMcHmnjgcbGG/3oap/Fx5mOloOZS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751125775; c=relaxed/simple;
	bh=WL6yGFxdYVn/A2aBxBxpKdgI+CtpIum5MIW6TKC+oDU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=n6UpAzjtos/DofZsHOQcgo9tfsDR92D9xZOK+3RKX14ia8qnilIDtcgF0OP/fGXvVZ9jMzSjb/w8miHik0YmP7cnkF09SM6hnDst9rJ+p4HmqzH5T7KD7Pbt+RDgjtYta8W//91S+f6Py7cypgZ08n370lyxIVBJ6s5FZr+89YU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZPdaOyUd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55S4nnZc010467
	for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 15:49:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=bFYlRX1M4QgR0o+DfBbhVTZP
	AQPHZI02U/IaC0TWvGY=; b=ZPdaOyUd2qIF8lQKby/XWSDokyByHPqdM0n0twUH
	XlhP4QTe2E4bT5GjNFLGrTTBBY7VB6OxnYiYlmdzsIifZFFRYNf+DwX29A2nMxcV
	Ema+j6ppDZmXOoOZX5GLUoDIHcJmwx5S7ccvraD2X+0dCc1J8m+VQCD4O8KyGN8w
	uYWB87tbdOnrcs9nr1X74HrIhAuFzMnsIpFgGC1kYkhHJVcjHFOhUAxBF6CCOEI/
	BfkvG2P7dgrXMKVIjkEvItiFBAeYy6mcl13kp2ret9L8EKvZgJ2Fk4N10Y7yJ72X
	/ZFiePikev+RfwL+5INtyRSCkc1IEbX8/Y3smBIuciVEpQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47j801rvcv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 15:49:31 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7cf6c53390eso57483985a.2
        for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 08:49:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751125771; x=1751730571;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bFYlRX1M4QgR0o+DfBbhVTZPAQPHZI02U/IaC0TWvGY=;
        b=gkXpJGXQQ8EYF/rjVE/8W8+RfG4fnSJQ1xzLuJyWoiw5ExmqcNHKzXO5CTnJJxLspf
         qoN+nNOgtJrS5r23HeiicQYF4XfhO/O7ZGZm7qk2OUuX0+d+WTQNeomcRlsSPGQmyTT7
         JBdBh1s/K8r1LiFQIfXerCQFwjsL1djxRqjtVvgoCF5Szxur6HZ+HTE1fK/ISkEMB8Um
         MSD3RXaIPoyIjPPY94m+7edJsm6lp9H4f+UufN09o3sgDDfpMmmO/rtI/d0p6qKMKoCU
         NoFE8vyYxChid5jb0K4vTWw4nZmgH3PmiHzNnKoKiPrla1q1q+++1cCrw+N2oCJCsoKI
         nTAA==
X-Forwarded-Encrypted: i=1; AJvYcCX2Hct7yfi7Kf//cQnYrCa2kKYCwMF9NItkFsWttE4qvcZ0zR9Re7lpTfHAkb/zfIzHkyN5Vfd25UZI@vger.kernel.org
X-Gm-Message-State: AOJu0YxlDJuQGEjs4Wu3FHbCU5J+elTbXmmjaDmb7URkl3y3nzBhNGZo
	Rdtef0f+rcqJqaWvzUwDx1A9vOlM4OJdTPSOCbG4cqdxq9eKz019/NnoWgVPRPt+m2noFWf+bMx
	wboMVY1BYHOr87/0eLDvWPfvmaCgvQz63Zl8Awc2hpkmsbkfhhNSHftk1jJRcm0if
X-Gm-Gg: ASbGncs1qNO8ah11QdrL6PajooOqUiKp1dakdgTFvphTg1/rU5Sa+G5N4zDoIVO9LDt
	wAE+6ONpEqRKbi8boJmS/09MmJVmvBYSwzDpK2mkZTQiQNrpxFHHdjh/V2E98HFu3Xi2AtCDm73
	ZEiOMwipTQuDyIo0wFOijhRSGpehHkdisdpSpZvbbj1mO65yLjaPvBVo6blb14gvSVdfXM5+y+c
	cvOgn7ju5B75oDzRB4Bkknu7uF4E9IbgKGR3sdNf2czu2WMf/LhkdnSsckgzwjBOfSQgpeJutkC
	GsLf+VbGwGS6CU4Yx/sc/Mvif8ED/ePdVMaaMjGwpRtXQjeKXWiG7bICs9HBp9OCZilLAc1jq4N
	ZtjQLAh+dzAihf1USv4UaBb8iMWUiDFqbHXI=
X-Received: by 2002:a05:620a:4403:b0:7d0:9ed4:d269 with SMTP id af79cd13be357-7d44397de4emr1022353785a.2.1751125770911;
        Sat, 28 Jun 2025 08:49:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFTc1GHFIXHHTe6OywkmfcHC6MJabIV0A+xXqmDPIh6fhNsR5dR6VvXgAtiOkV5DRj7Dqn9VA==
X-Received: by 2002:a05:620a:4403:b0:7d0:9ed4:d269 with SMTP id af79cd13be357-7d44397de4emr1022351085a.2.1751125770470;
        Sat, 28 Jun 2025 08:49:30 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5550b2dcbaasm838063e87.224.2025.06.28.08.49.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Jun 2025 08:49:28 -0700 (PDT)
Date: Sat, 28 Jun 2025 18:49:26 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
Subject: Re: [PATCH 2/3] soc: qcom: socinfo: Add SoC IDs for SM7635 family
Message-ID: <woo5nauppiy2i4xe4ewbsapuk6ixdn2davyrlmugwcqagjgdke@akj2ehtetlmh>
References: <20250625-sm7635-socinfo-v1-0-be09d5c697b8@fairphone.com>
 <20250625-sm7635-socinfo-v1-2-be09d5c697b8@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250625-sm7635-socinfo-v1-2-be09d5c697b8@fairphone.com>
X-Proofpoint-GUID: P1qptSkbtABNPff98k7ZTVIpG6bmINZl
X-Authority-Analysis: v=2.4 cv=YPWfyQGx c=1 sm=1 tr=0 ts=68600f0b cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=CBhOcW6rsiGSrLAFeggA:9
 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: P1qptSkbtABNPff98k7ZTVIpG6bmINZl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI4MDEzMiBTYWx0ZWRfX+F7xaSOT3/Bg
 KYdCKR5GDNQVy7u0QkuCbbkiZQ1kFBObdpPFoo9cKFmk1T0LaBH8xV8Cir5OZD7ixXK5YE5AJxf
 g36/GfSV29outscvinFT+7JUVbHOTJ3d1UKjQNF10kqkKPvYFULq5cGdphDRUrjAqmuUu+OosLI
 0risvpdDBNck85GeGoT39MM+885ASFdyfmaaKkNS1RS/tZ5o1iBerDEsvnmkM+Ed3pRuskJTMeD
 efl5Uudn4+OVp+IfMtmAA3p1kfATK2tzzpS2l6rlWOG9bFbMrFehyxkpXsqRsZO1P7gVdBIpNY0
 P3AlSkn5lRMa8SyI99UYQ/iRR7oy06P11Wo8hFJKbSkQlM+9JI/2J40cRm+6/m0UIGyHtH7/5t3
 S4nj6rAm5j1HzT847TliEAkuNN8wscPLm9G/QBIvickWm4emlvVEUyDq/adtmXBt4EiM6USv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-27_05,2025-06-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 mlxlogscore=894 mlxscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 impostorscore=0 adultscore=0
 priorityscore=1501 bulkscore=0 phishscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506280132

On Wed, Jun 25, 2025 at 11:11:45AM +0200, Luca Weiss wrote:
> Add the entries for the 'volcano' family, namely SM7635, SM6650,
> SM6650P, QCM6690 and QCS6690.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  drivers/soc/qcom/socinfo.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

