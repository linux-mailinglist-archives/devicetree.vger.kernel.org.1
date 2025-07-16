Return-Path: <devicetree+bounces-196951-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 22386B07A1C
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 17:39:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C30F9189ECEC
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 15:37:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD5AF275855;
	Wed, 16 Jul 2025 15:36:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="G/Wx82xZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66BC61A238F
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752680184; cv=none; b=AsA1i1otcRlmoeNV/N637N/rBLvhoXwXNtTlJqtdySbbv3vpwOti4pDZ50aXOUSGJrjjAQeTePQuw45mCtCGK/V0QSkdV30pRQoQOHUSOdY93klB+QaabBo8jX4jhFRrfelZhZgKwRKK/GDJK8iuhpnNUixD14Jx9E6h5w9R9lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752680184; c=relaxed/simple;
	bh=t7DSi05slPCkN4UsojGxy4oP5CIR3/pwbBY7inCPQo0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=evw0M4hQkiH2V0940ZHtW9U7cF+xX+hr7erReDFjHu5Aiu1VJMZ3shjLI4jqRb3Dfjs0uBZhjI4ms4+pLm1CdcE1yxbS0nbJ1j/wmLK+hLOSL/DLf9grQ473lzadOOBwXlIoOPDrnI7MQQze/KRfq8R9JChG+zQ985zkA2ht3KQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=G/Wx82xZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56GDVbhA024502
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:36:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Q7Y+AqcTKt1Ceta1AaX3XL0N
	rlaKK9iAw6+wkY7W8rE=; b=G/Wx82xZSe2Wc0oWbzWkzHTDG35xXiA2MkyjjaVH
	sqVYAileg22MC05qJnFNUV+8vjzDAtcjKYzTA5bI87UXmzNmt1hzYgc2x5Qgzah8
	vsbMNiFZXXohjuSFLiyC81WKdYYBnaYVn6bPkzKlPonuYiBArFFM85OhMCKS7Crn
	oRIMR0kz7XTJn4xr9S2UDAcVzebIPWlbVtNpd032NpzHuht1fCeFYPZp8vgMmLDK
	9fXDGNBTaFAH84h5EmC4uqSDyT+elVrP1izxx4pqylM0IGvnt9jIyBqtO3594eq/
	+3UC13+ffAndvuiU4vhXedqJGB0ju7FJsxLVthcJKUZsNg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47w5dpfg2w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:36:22 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7e1aeab456cso504532085a.3
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 08:36:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752680181; x=1753284981;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q7Y+AqcTKt1Ceta1AaX3XL0NrlaKK9iAw6+wkY7W8rE=;
        b=h8EpdfbOhF8K8Pkxi5msNrqaxpCxeKM2iKUypklgp1Onifeb+aoTpLRvlW6BYvm+qJ
         h1Ggv9kwAYewS7xVtfAPozWId4reAjeuN/9djiHlpIpF3zZ1+soWOF/rgcfV9fQK7eFs
         qkMoBGip+F3tQZZotKPf9Wfwf314f1kjHy/nht9NiKwgo/AHssC4nsDBzdK27MTyMhct
         ZUXWcP3PXifDfquXU9WPPcUpRbNgih4pKxBtlnjxYS6meaCJqZVLaNTy1XOfG35ekR2F
         C9s0MhKa8CwoYIMA5SR7Nkkn4LqfH5C8/6b6g93sSOCGIMtMYqOQZ30z+wHTXEIEiLye
         utkA==
X-Forwarded-Encrypted: i=1; AJvYcCXNymY2aOUbw2+KGH5aD7cL9Br3iYQ9w7QlJvvgrrb3oj/DfhUIV7h3C5g5HbbVutpi2H45SMMGJ1yG@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9QLDrl3+rgJfRQhK+wJL0wSUpEIIhoV50JKQvXB1LiIkUcViE
	edZqQv6uYToDaVDNu/pQrVdHYz/jBiq5feynJrOqffPyQnssvfzFDlLHF8/8ETYXltWOAXGiN0o
	GSdyl/9KNVehWmDcB0oEQipeEvpzJCiOX9B8N8sSht4122bKlMqCraDQJQl9RLo9v
X-Gm-Gg: ASbGncsD1w3GgH7/PCUkogJslStoWZ0p6oZHKt3Dn9vjLbIIMaWNqApWqhIojCoyp45
	4QMgue1Jn/V5eZ38TEH5HCJTCbxKBmhvKSwPCxD07e709I8gQwt0aFveHfkAYlSiRmRxYWezl5i
	OUy6S6QX+L8VunoapKY3YTlKCmigQy7aR2rhDNlT8wblL/d8ozGjBgdDhUUY1gElzrmgMfMwIZ2
	KHtZXsfZ/3IHb4nlHk+tUOJtYHJcWNEUP/XdvI8HT+V7yFBIL8Vw7XwNyNege95Gch74OVLFezR
	49wN+3XRoZh3jqquUFvNtHvavRE56u/XommpIOBpX61zyAx0kMrn+4lmlm3eprPDFsNQpPvaU4J
	f5xlAQt4DGKsW+US8j+u9kRNE4dsFDOeYr+EhOXRqOKJD+BBWu9DV
X-Received: by 2002:a05:620a:4546:b0:7d7:2647:da9d with SMTP id af79cd13be357-7e342b5d5d3mr506343285a.42.1752680181227;
        Wed, 16 Jul 2025 08:36:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFhZ0QjrGWwHaDPGp/F9PqlexGFcR5X+X3OWVCipgtBtA0DpbAzcIF8dPzibaOM7PevWMFHeQ==
X-Received: by 2002:a05:620a:4546:b0:7d7:2647:da9d with SMTP id af79cd13be357-7e342b5d5d3mr506335885a.42.1752680180581;
        Wed, 16 Jul 2025 08:36:20 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5593c7bbb5dsm2690071e87.18.2025.07.16.08.36.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jul 2025 08:36:19 -0700 (PDT)
Date: Wed, 16 Jul 2025 18:36:17 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Cc: sboyd@kernel.org, mturquette@baylibre.com, andersson@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        quic_rjendra@quicinc.com, taniya.das@oss.qualcomm.com,
        linux-clk@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 5/7] clk: qcom: clk-alpha-pll: Add support for Taycan
 EKO_T PLL
Message-ID: <3exm3tytxfyc2f3vwah5gkxftibf2xrbzowe56gbgtk5j7as4j@ocnobxe7dspl>
References: <20250716152017.4070029-1-pankaj.patil@oss.qualcomm.com>
 <20250716152017.4070029-6-pankaj.patil@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250716152017.4070029-6-pankaj.patil@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE2MDE0MCBTYWx0ZWRfXw7ipXVFJQ+Ad
 mb6/z5CWhUTxwRWKv6gMnk4lZDtgcDrl02WrAl9zeASB5mPILz4aC+ypBm6pGYu1SZNHO+evt+f
 PSYFGrce1xh4k9N2ZjALVYU7EKG3+SAOMYGfbxnMwDwSRgxEJrM/vxomBUVdO0fonR75ZOCxtRZ
 TZp9avoh1oGo+JI2pVftCrDZT7WiEHihf93OQ1AnYxNjfGor4eJO2yMKO/Q1+mwFYMr3BxLY+I+
 KxCd6cbxpxdyU7l/STuDICy4c1IyWJCiD0OzIh+vT9utZVMNEa3LSGPn9PY57/iry1qPzDdCY/m
 PiT4BefaLiojeD9CjitjsPhnSxA4PUz8YcNDi1vgfbkggPS9v4VxASnptcld2HU0uawbv2Fa87h
 pvT4ekvx48jltH3oLuFowrQ2PBbwpcag6jrNLO7GbFwEycxznNQhNAGz7D93aBSn6s0qnGpp
X-Proofpoint-GUID: aqafEy15Pd7MvhB0jMD5V8ZiVhjDEgWy
X-Proofpoint-ORIG-GUID: aqafEy15Pd7MvhB0jMD5V8ZiVhjDEgWy
X-Authority-Analysis: v=2.4 cv=Y+r4sgeN c=1 sm=1 tr=0 ts=6877c6f6 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=zIiPdt3-swY5NxfCfPQA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-16_02,2025-07-16_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxlogscore=925 phishscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 impostorscore=0 mlxscore=0 suspectscore=0 lowpriorityscore=0
 bulkscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507160140

On Wed, Jul 16, 2025 at 08:50:15PM +0530, Pankaj Patil wrote:
> From: Taniya Das <taniya.das@oss.qualcomm.com>
> 
> Add clock operations and register offsets to enable control of the Taycan
> EKO_T PLL, allowing for proper configuration and management of the PLL.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/clk-alpha-pll.h | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

