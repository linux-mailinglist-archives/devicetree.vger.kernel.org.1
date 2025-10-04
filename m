Return-Path: <devicetree+bounces-223616-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E33BBB8A14
	for <lists+devicetree@lfdr.de>; Sat, 04 Oct 2025 08:46:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EAD893C7452
	for <lists+devicetree@lfdr.de>; Sat,  4 Oct 2025 06:46:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFE36221704;
	Sat,  4 Oct 2025 06:46:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nEJ/mhuL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51D921DDC07
	for <devicetree@vger.kernel.org>; Sat,  4 Oct 2025 06:46:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759560364; cv=none; b=XuM+pL51kUsAFKUSXoEzJQF3Qro0xlZRay6bRDophOJWfZIKhkD9gYmv1IJYogVjVxsRI6IW/r3xjPvJyOk17PLEwue+vLMD4PEhZvvsM2D0RlXyLKPntMKGdf+WmFQeHb29f5a2rDOrx8XkcecS6QFpb3U3HsnI1EE8pahwA7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759560364; c=relaxed/simple;
	bh=Tr6GBYqy+IzLd8uqM33CAtRY3paCCFvnoi/vQfjzRKg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lYrVEn4JlZoUfs76xltv4pDUCC3dPutdI1h2RN4k5pTOFyA83FlAGe1LIVguqk6NY6AfDGIK83bfwc3WAJYQP1eL908T3sEQtjB17V2L5BqczVV2RGKlqAuv7nn31Gif8AsowiDMun7HHy1luGw32H8mQFEn0kvRASwPsSgQgNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nEJ/mhuL; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5944m6pN006734
	for <devicetree@vger.kernel.org>; Sat, 4 Oct 2025 06:46:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=T/5jf8viW1Ms0TYa2j+4TJfG
	uZOdpLLk19JW7AHS0TE=; b=nEJ/mhuLLXgISTtPjE5OngC5ziHVqscmEFKPBtJ6
	EeQKlhY88+L+pxPR/XFVAQRSQRG4ZVPTfpuRrzEtbZ2FMXaTlycOjthLDUUISWC8
	S1dmkdKp6cvzX+Oamu8eChprnIG+Wr3lJQry7WTXL1N/gJKba/IzGY3z/Y0/VQbb
	fr8SyagsLV4so9uMM17qtA2GY54fP6Zyppv3YBTGoBbQ6orwUAvc8Ak6dpRlBBfA
	dV1X8yhRqpgVlRpe1ZedCSZXhbGQLvtGkYUx54BPQlsRfjQoY4S37YUuxhS53vFL
	H3DZEy93TbhBJ7hcFrXgcVgJxJplhHSfFiOx+6gI5cU1mw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jtk6rcdp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 04 Oct 2025 06:46:01 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8217df6d44cso575040385a.2
        for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 23:46:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759560361; x=1760165161;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T/5jf8viW1Ms0TYa2j+4TJfGuZOdpLLk19JW7AHS0TE=;
        b=gQ9e125TnSyo0xWg+6QML+0I9QzCHoFCmg8LtjDVw1csgk7wmSGKBETSx7P+MzTWyg
         dlnNaYYA6GgzkWnlaCfluiV/qaZU+x05LFj4+DPMA2LeJHApa9/s3IKehY57v2ctT8U0
         qsIwsF27U+iGqFgpLHxfMPPCi//Xo3zuanHA1bfjaiWBatqY3jdzGf/vqdETDhwC+KaF
         QN90eoWKAy5i7NjJ/kDSZlZzm0NBhwdbCh6PRYFa24fCQz/9WeXJkehg51n2cCXQ/YTD
         QhRbHuV14Q1t64HN3+OnvS5zErcCGi1FDi/gQNAR7BpYTFv/swRxW17IFCUiMBkxpD0i
         afug==
X-Forwarded-Encrypted: i=1; AJvYcCWPg0kyp1JvjkP1Q5qW+MrR39XWhhE/Cg10/SJ9+RhNnKUeiciCcuts8hVJ3KVPpf9UguUKTTXnnD00@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3JVm10PZIuF2/9chl6rOeBHbeEmKYEYTWkhUFbYq856i+CMVz
	jzZICoBd3ZoTc9c/bFMsGwDcr+Zltzf5peZqktpB+dl7xkhcKNuY4/TA2vQlI44uyT625n+Ovmg
	/RypkaUZVx3eb7NqG0cB3mgJ6rQyKGLFarURxUzcmldB4ZYuU41rFh7lYCRxeNjW8
X-Gm-Gg: ASbGnctyig2nZk6FXMN/WBhn4DahMhXSWlea9pWosCsHXL6gvJ3l1ScXwL+dlCB0nDK
	lYiro6J9w4rQRPM8ZvWqDk2ajwE5obKSAvAOPLdMWXRfxtuDFQRfqQsYqRGswjYmrzWIUEIpGsR
	u4EA4esQoXUkAa+H3BQeUinkC0pCKefGeQS73KJItI7gHIwfyhWgC8CBaY22y3axGYu5Y5q4xFv
	sLjp0p2phy2dmal0zkeJ/ipwuZk5FQB7alSS6s+tuujRVCgZB2aXishWeIT4GAgWUMsIE+dOw81
	1DklIGltp6VMVmbpSYG+uLBGTkE4xpocqMmNUF7abWqJLPEDWPu2zR5angA6bJf3akejtGJJziL
	z6saiFzD2pxDhPvV9Q9r+y511nazL0j07HI5Qqr7IW+cS5906vVQRRXWzjg==
X-Received: by 2002:a05:620a:2a0d:b0:83b:5f20:41a6 with SMTP id af79cd13be357-87a33f1f29dmr848490085a.2.1759560361072;
        Fri, 03 Oct 2025 23:46:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGUMkJm/6OV7cxicvapSEjp5hlA70/rYB9hv2U/Vt5pJr1Bht3HvfH+Ym3gM8TNKn9utq0DZQ==
X-Received: by 2002:a05:620a:2a0d:b0:83b:5f20:41a6 with SMTP id af79cd13be357-87a33f1f29dmr848487685a.2.1759560360579;
        Fri, 03 Oct 2025 23:46:00 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-374fc0787a2sm3101491fa.61.2025.10.03.23.45.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Oct 2025 23:45:58 -0700 (PDT)
Date: Sat, 4 Oct 2025 09:45:55 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
Cc: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: sa8775p: Add reg and clocks for
 QoS configuration
Message-ID: <ezlm452ti4lrrkjkriz4yasbbsma4vw5grsxhg4ggetvku7r42@aqhdjeyc7elb>
References: <20251001073344.6599-1-odelu.kukatla@oss.qualcomm.com>
 <20251001073344.6599-4-odelu.kukatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251001073344.6599-4-odelu.kukatla@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAxNyBTYWx0ZWRfX5BUWZW1FqQZw
 UAMnJBhHAVK9aU/yvEv1aYHQeLcjxGuXRSJt78NPbI2lLxJXNjvcAg92t689/lYTK1WXt3pN9V9
 7TehVeZCSYFiyX4g9TPcQlA/cQI1++GzaWApLzpRLaBl/4crt36Lqg5CamwT1mKyGjSnCumANc2
 mZEsv1PsuJaF1xlT6KIhu/Um4yjGWVUEYm7zqm8Jl9BMczKbwG2hBk7jDhS+VtRTqfAd4PXxIU1
 kZfsl9SeNJC6UCfXPNfgw7FhewcX7F1Nve8UyAU7lcRSvQUmhwArvxV+CVVmMRJ2RK7zsi8H126
 ivrJKvAOYu8o45w7642q+etvMB9gpv5dUS8ucqWvtD2vuRmGKUq0GuH4g1wqQl9ye1VC3iuqcjr
 XO6UVYHJkkRQZ3tE1FD33qHExRJheg==
X-Authority-Analysis: v=2.4 cv=do3Wylg4 c=1 sm=1 tr=0 ts=68e0c2a9 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=M9tGKf1UEhd6l-wMVe4A:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: d-iaaEID7b_YhgCWo_RvdvjMquY-4n5P
X-Proofpoint-ORIG-GUID: d-iaaEID7b_YhgCWo_RvdvjMquY-4n5P
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-03_07,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015
 malwarescore=0 spamscore=0 impostorscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040017

On Wed, Oct 01, 2025 at 01:03:44PM +0530, Odelu Kukatla wrote:
> Add register addresses and clocks which need to be enabled for
> configuring QoS on sa8775p SoC.
> 
> Signed-off-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/lemans.dtsi | 163 +++++++++++++++------------
>  1 file changed, 91 insertions(+), 72 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

