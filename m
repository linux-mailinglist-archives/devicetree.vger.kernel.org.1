Return-Path: <devicetree+bounces-240627-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 18C21C738CB
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 11:49:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id F17DA4E9867
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 10:48:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 291C832F772;
	Thu, 20 Nov 2025 10:46:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iq5C0V0g";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TquIOzLv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B89332F75D
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 10:46:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763635608; cv=none; b=RbCP3Srg8Ua0sruVgLmaz7Rlj4Vw80sDE5073AhDFgfFv17gm/zxiEEA/gKRgkDC9SA1gNoiwMNedCtmONbY7aQkd5yTiHlJ1ayoUfYGrnZZQJp7oe1ewlDgjugWSCMkyMaWNK+Sg3onPj5pQrL4BgdHCwPj6KNF9myqhvPwcg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763635608; c=relaxed/simple;
	bh=dtcj/fK28CMYkn7bqDE4olGhzJw3gr0b3X61BTO6DFg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tRvTyWBN131EZcAR3tuPTA+PGZERIaa/UQk6dN3wS6MNL2XBVYgw+d5Vc6T3JYn4CUwKSHsrp6U6tAWLVmzri+d2tTUh60gEoRVSW0M4IyzAwl8ETZRJm4nGxBTEsk71hgX/9TgQ79a4KZ4rIJGmkMhHokcp6r8OZ69utckQSts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iq5C0V0g; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TquIOzLv; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AK9hIYt473272
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 10:46:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Lp+724ZMakvM8pZxZghEF1kk
	SgglYIzK0fIyjyx/k9s=; b=iq5C0V0g/2B62wS9v/Jj0YFptw8v9Rt9JHdHocZg
	gMI7CjR/mupSijgCnGK1/HEPMQIvEas5Jl2mCICZzctFIp8+T+1M0hCtOE+lTEop
	YAQv6rXhCDbZ7KsIPeJfmDd3o/+ULrxYEmPimDlrTTYdvgXyOl3i2oDBb4StBz/Z
	hOuAJk+wJ5krwz9lKlWLQ6+tThD91Or+nlTAL/peTmqDxOrjYnvegBXuPxh2wBQm
	a+lQTcJlpDwLl5v9gy1g8OmzFRdi12Vd/eW0yiNw1Z68rDYmMDKFB1gIcM8gnkxU
	+wx4NxNHO3QWxVcjRpwioLjXeaKMTAZN6J242jLAq9qxjg==
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com [209.85.210.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aj0kw06e0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 10:46:44 +0000 (GMT)
Received: by mail-ot1-f70.google.com with SMTP id 46e09a7af769-7c75290862cso1927198a34.2
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 02:46:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763635604; x=1764240404; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Lp+724ZMakvM8pZxZghEF1kkSgglYIzK0fIyjyx/k9s=;
        b=TquIOzLvxBjm/ARwieP6dpTN1d3+dpIxG6Xd9nSXzhH2KCHqci/Bd/HGlTgNTDVP96
         FqB8bBca4UFNkB80FYzmlWNVVhFitf2Xc6HzWUHGU64AVw1JqU4X7nNLrOhpcfltI/DX
         fmnoJURknv61fPbs1pOeEn/LBdqQ+pKiGQeMrgQ3fFC2kI3LXK8qGsWS/cWQ6Xp002ea
         zff4tDO7TPsT0AwR5zbPuVPht8t0zugSDY7ICEIAZoy5G24ZvFdOJnoTj4fp7meMo3kP
         0E+60ku8zOVwUYCvlx9wqPdqV7qCHeBpVUtHHTVLid+iNh9MVN3uUxAKSHQfCd4QuvCp
         dx/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763635604; x=1764240404;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Lp+724ZMakvM8pZxZghEF1kkSgglYIzK0fIyjyx/k9s=;
        b=GkydcLu9i7Zd7ggaSp1fAIY06asYfMqdlKmJ6Yt+7tSL775unOkP+Pz/Cfzy5ePgAK
         xRcL6hlriGBWGtWLiAPxEPcvpPEf+NZ3bl+8DBsYyHge9HdogMv+bf0q//bXSfYIn0Tg
         zsgvsUMyfuCvfST5hzrXAKE28Jz84rTSYCL6mrjZ6czj8z+ZvLuid7Pncff5w8sHVSTY
         9vIyQKte8DzeAFKHxnetqZ6lpoh70tYjoZHkS6c86MD6UhoBsMKo6fkXg8SQkNCKOyO/
         cYa+Y3GSYMlRJU+Qp+MG+4am3FKCFjMNJ1D+at0NZyoVTxochl97jjeTStTo09Rg3cTa
         XCIw==
X-Forwarded-Encrypted: i=1; AJvYcCWog0TQqY+ayl43uwn2nbuleddbQHZwws2hM8hHGFdRLRW7zCTBinESNNL30/7aAXYQaztKy7OnkpVW@vger.kernel.org
X-Gm-Message-State: AOJu0YxxbnQeywSLhpVUkumezKe9laRX8NsIBDfP8yhCsyP9DOJ7e5Cf
	mZQPEFOTm0dG4+yJNPVz8p0aWRTMfcbFg/E45LqI/nrSYVc8eOEcGbEfP3xEBpUJTFYpV8kr5+Z
	Xf/jgci1hZUu4ctqdpFjfHmnHgtLqyCgmJLoP2NCLNGD9D/1rqR5wmLOEIWVhwkso
X-Gm-Gg: ASbGncvSNWaL8Yx7cxEBfr0yFS+OXSb37m+ML1AlgJvquCgxOHdFDBPaTNcUf66XO9D
	wO1CR0vhYlo5D1BYRN0cbdekemj4fGkYWKPcKb2VxnIMOOeKu296cbOTEB4DUbaDfARiZ1kbGes
	U+Q5AMgprQj1FUx/QtpdmDvfjGFcqw0YuEesqKWhzZbE4KG1H/nS0+hqcku7mcG9jY9BfIT/Art
	i2obvQhRaRFbBS1CBcqBauqeLsJFEvt/nsNydimJehYKxTpWGXj+PsQSYC3EnnQGqgfg9owdJhx
	MkJUanZk0bzlptF/7rBJgcX8vtS8wFpjLoEbO+EarEEejZQDeBktFR0FoQR/c+ktzfOX5NsjFkr
	r1flV9U7jWmQMLMXrFwJ/FakBNJU0e3CEMcPB01Y8vc9aXGL7k9DFMCRk
X-Received: by 2002:a05:6830:6112:b0:7c7:1f5:28a with SMTP id 46e09a7af769-7c78d275311mr1556721a34.12.1763635604432;
        Thu, 20 Nov 2025 02:46:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEY+qfL1NsEbK2LIjBLgVXMLq61CmQzatTIZHySSAokZ3KEahg1dA/+XpdJuLyDPLwT1FKw3g==
X-Received: by 2002:a05:6830:6112:b0:7c7:1f5:28a with SMTP id 46e09a7af769-7c78d275311mr1556706a34.12.1763635604092;
        Thu, 20 Nov 2025 02:46:44 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c78d346d84sm851828a34.13.2025.11.20.02.46.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Nov 2025 02:46:43 -0800 (PST)
Date: Thu, 20 Nov 2025 02:46:41 -0800
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>,
        Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Manivannan Sadhasivam <mani@kernel.org>
Subject: Re: [PATCH v6 0/3] Add support for Glymur PCIe Gen5 x4
Message-ID: <aR7xkSWWLoGX1HYn@hu-qianyu-lv.qualcomm.com>
References: <20251103-glymur-pcie-upstream-v6-0-18a5e0a538dc@oss.qualcomm.com>
 <aRyoo2Ve_hjgc84M@vaman>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aRyoo2Ve_hjgc84M@vaman>
X-Authority-Analysis: v=2.4 cv=WeUBqkhX c=1 sm=1 tr=0 ts=691ef195 cx=c_pps
 a=7uPEO8VhqeOX8vTJ3z8K6Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=HY-MMhiuUmRCiokpfk8A:9 a=CjuIK1q_8ugA:10 a=EXS-LbY8YePsIyqnH6vw:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: puUADcDa_rduSww7iDHKp2-XWGrvzfVX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIwMDA2NiBTYWx0ZWRfXwiz15BxrS2cw
 BI3llWLMBFAk8DciTiP1M6Ki4v6sbKilDyxDiX8AlrI4PQbwgASFz4DgVPcwSICPTe8q7a/R0Q0
 VkEWAjLGHFTFDrqYHCISezzg5mfWDDgehsjkRVHfGwmis6qi/kDqnWju7Dfz2A9lLiTVAVHmY8I
 BWKsI/3n1Kp1cPDvakSyDy5iXQj1PpteDDpYmw0uRUxFCwAzyzd5E5yIEs7NkoNz1c6QhxaYt6K
 Uey0ZS6jGLXq3/j1scMrbChyt+5fuCh1VElR6jMDFHVcmXNU5AOyJZD7+YWJrbWa4jXfWTxWgDj
 KkYukHw32NFu2Oy8StEYSPEOVGlixNBkUILPhgkGvYqnOTzjEa+bgkstJLhu7poFB1LWlM7y/Sm
 rIBKuigfrHt65yDmKSyQJqPvxiMBgA==
X-Proofpoint-ORIG-GUID: puUADcDa_rduSww7iDHKp2-XWGrvzfVX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-20_03,2025-11-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 clxscore=1015 suspectscore=0 spamscore=0
 lowpriorityscore=0 adultscore=0 malwarescore=0 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511200066

On Tue, Nov 18, 2025 at 10:40:59PM +0530, Vinod Koul wrote:
> On 03-11-25, 23:56, Qiang Yu wrote:
> > Glymur is the next generation compute SoC of Qualcomm. This patch series
> > aims to add support for the fourth, fifth and sixth PCIe instance on it.
> > The fifth PCIe instance on Glymur has a Gen5 4-lane PHY and fourth, fifth
> > and sixth PCIe instance have a Gen5 2-lane PHY.
> > 
> > The device tree changes and whatever driver patches that are not part of
> > this patch series will be posted separately after official announcement of
> > the SOC.
> 
> Please rebase on phy/next, this does not apply for me

Hi Vinod

This patch serie depends on
https://lore.kernel.org/all/20251017045919.34599-2-krzysztof.kozlowski@linaro.org/

Can you please review and apply above patch first.

- Qiang Yu
> 
> -- 
> ~Vinod

