Return-Path: <devicetree+bounces-217093-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 475F8B56D14
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 02:03:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 92848189925A
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 00:03:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BB7E4C85;
	Mon, 15 Sep 2025 00:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eTc5A99O"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D6A63FC2
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 00:03:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757894602; cv=none; b=mldH5ICWLHvdz0V49dGEyNKV9qDU9CY8ZcXYxVEjJrtX+a9sPW2NAmcDc9sDGk/G89AsmzfGQjVmt5wu8cqmjdUAd8RR7JW7SS/tubIiUNiWb1v7NKdmmIaOrOy7Q4meC7zAXSYnN9DYWXFwrWpQmuE74O5oW2/4lKTCVrnqyT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757894602; c=relaxed/simple;
	bh=5cPGlBNw63+VpKW5s86Gr33o/Tv1fj87vrOT5TI0L8s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=c5d4s5yuvqzxBgl7APyf1qZ6dX97OJt+KsTqHaEj1Rm5yDtY7uC42cOefbS2B+0RI9fCl9h9Pvi6AeeFdgks62tOvYLPKweV6LJ92gYC30kvzeezmbCKVLsReekX20DKtJptZzqTHW6J+mzb99Ii/hSTwM/DELi6AlQK2Y3h7UQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eTc5A99O; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58EMMd01024273
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 00:03:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=PFSNWYampAtvAdK6MUggEqyW
	s2m01cEwg7yA+2A8ixA=; b=eTc5A99OuHwfYaeehhllHhk8HQKDqQW3F7uWs5yd
	bpUmcIm5oFaPjNVIvuXiLftmqBg5aFcPs/vmW+GNtbO1xWAD3bSHEBkFmcT7ui+Q
	ROWRW2Kr1Qb0eA4jdqvjKpPk77RHHCc4ayHP8hISvvNZEtfeTJTcLrdMF8M1vUkU
	TLDH8SQHyc9/I24Du4v7iTrPmS8BwiwOY2rGTdSr8NC7fMHWLMifTbpXBwB2inNH
	y7oaFb+D7aNVIANDZuhLfFDhCy37m9MA/NmKxi+i5bkmK26g6Qnaiz0p3qkdAb1M
	3W0EXPJX39hpJWpnGkF6pNDrK8zNeJC0BBB9kEX2+W5cGQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 494yjv31eu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 00:03:14 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b5ecf597acso87329761cf.1
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 17:03:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757894593; x=1758499393;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PFSNWYampAtvAdK6MUggEqyWs2m01cEwg7yA+2A8ixA=;
        b=LytzvNGbIt77qhyIHAL+i+Vn5t14c6JA2qhe0wyzRtXrT8YsBVS4JR/AHBN5jP70MK
         kHtMDG+PtcFdHx9csknYpLeNrBE5LjHzVwlJg7kHSGj1pH7BE2LiO0Si0+fH42GhYjp9
         IKD2EOvTcFqkYtEeGWGHDBYJUi4ezW14TebABaSVCkTXCNrRxxqToQa71/CnRQvpOaCz
         fN7ptpIVTACpTqECzX6BGrHg6OhV1vW9Zd749coLOi0wAvOGV6tz36gdAsRbhhzlZ3SW
         TyM+cxuZrFc2d8x+YQKSlcHrhC8UzcVzq6ognlCXkDu607C0CuHZlCWJplXOJh+Q8wKo
         PPFA==
X-Forwarded-Encrypted: i=1; AJvYcCUAR2+BGfCTlDUBdYbAez8oulcbnFFQAkdcVI67N3XE9l11SBtnkMFJEUkiZuzb5d0mrIzy6zUAkBh/@vger.kernel.org
X-Gm-Message-State: AOJu0YzJFDaGjP6ZT9t8i4EEPf7ltLHZ7KtOufA6C4W9f34JOwpDXhyB
	CYrgYJHO1Q0rqFUxVPyr+l4oFrcf3md01d5bUsTI4RFV/nQgHnxMCPr5eBXWJXSTr2yA57xYNxi
	Vv9Z3CSfVPuIQV9ZttAiYNpAMmGdxCGNnPOz1Wrki0mMGvm54W+v7aoIrULoh/V0R
X-Gm-Gg: ASbGnctJLZv9b8grKSoJu1sWS9yZixyqnQjdt1mfy/PvIGsFcYk/7RuHsg0RFdrRAEg
	AYGzp7KpX/e7LsCjfrmU5Xbwhye2aOv81ISbO5fCVP428RBJK29B5SD1Z0m5RyfMfi1bsdT7qSm
	juIYkUuUks+E8V/om3KAjRAiuKzhes4pexqo0oF6C4Em3P7rCLlfkc433fdJa9AqedCYSmw11IT
	sX0K7Eja/Qjn+lcdn8kLJpeLTKa4sBi8DHd7mDJsq8ajIMONRRm4E4+0At8VAc+eARSxzq2CItB
	VdBztPXggZHDSSom8vmTuWNIJRwjaAmK27u6zCxrAW6e9bDvD+ULDBmll9vFlyTAeHs1ayljaYo
	ABXa0mmgET8V/xZIxQOUzw51SKW4vIFcCUa8Fp0pJMch4LKvjdJMi
X-Received: by 2002:a05:622a:40cf:b0:4b5:e8f4:3f51 with SMTP id d75a77b69052e-4b77d1b2521mr145222821cf.70.1757894592991;
        Sun, 14 Sep 2025 17:03:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHxS85DBhcPW8a5P/kERkKJBG+yTL+Q0u+dsaPB3XQUhV8zdVWKP9WQ2Khdtq23wS5yD7iRcg==
X-Received: by 2002:a05:622a:40cf:b0:4b5:e8f4:3f51 with SMTP id d75a77b69052e-4b77d1b2521mr145222151cf.70.1757894592373;
        Sun, 14 Sep 2025 17:03:12 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-34f1b491f41sm24421221fa.57.2025.09.14.17.03.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 17:03:10 -0700 (PDT)
Date: Mon, 15 Sep 2025 03:03:07 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Antony Kurniawan Soemardi <linux@smankusors.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-gpio@vger.kernel.org, David Heidelberg <david@ixit.cz>,
        Max Shevchenko <wctrl@proton.me>, Rudraksha Gupta <guptarud@gmail.com>,
        Shinjo Park <peremen@gmail.com>
Subject: Re: [PATCH 1/6] ARM: dts: qcom: msm8960: reorder nodes and properties
Message-ID: <xoejzehjaa2vncsn67evkjevz4co57rzmcdkbscnddiepjdra3@cyimixblpyit>
References: <20250915-msm8960-reorder-v1-0-84cadcd7c6e3@smankusors.com>
 <20250915-msm8960-reorder-v1-1-84cadcd7c6e3@smankusors.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250915-msm8960-reorder-v1-1-84cadcd7c6e3@smankusors.com>
X-Authority-Analysis: v=2.4 cv=HcoUTjE8 c=1 sm=1 tr=0 ts=68c757c2 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=pGLkceISAAAA:8 a=wxLWbCv9AAAA:8 a=EUspDBNiAAAA:8
 a=kbTPNbk5bq0GMcXo2L8A:9 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=QJY96suAAestDpCc5Gi9:22
X-Proofpoint-ORIG-GUID: RezLZlqzUIICo_hT_sFn59jfNI6b7Mm1
X-Proofpoint-GUID: RezLZlqzUIICo_hT_sFn59jfNI6b7Mm1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAxNyBTYWx0ZWRfXyzPQxIeuwtTd
 iQ0SSuafroL8t+hC4dvB/+ZLHV/TIEV3ZIzzTfDgZyF7ZU2HCMh8OduGtt3IkcBQKCNnR0GC8uF
 dAX8D9qGeIg/vmf3gzJHrjNO05c8XVIswQfxVc7lGA5pxfbfMOCab5eTJW2m8jrMQSeJiyTjfT5
 +6txp/YhcDTFTJeqat8Yo1K+jb7lLK5DHUXqXXLCn4zAGtf4ltde3fUotyjNi8L0es7jPp2XU5X
 fbyiQAsYpm1sWRpdmf+FwW1I5P9B9tv+MjZlzrX9O0So9BkCJ6/AIVlDfcSnqVJAtLh3UAyT32t
 ZUpJGOMZN6u3yZw8UxmyC7CbIBdU6w1T0jnYGGLjoHrXY24GkJ4kvuNi/eu3yZX9sm+HNrzef3Q
 WU9R22Yu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-14_08,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 spamscore=0 malwarescore=0 suspectscore=0
 bulkscore=0 phishscore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509130017

On Sun, Sep 14, 2025 at 06:34:43PM +0000, Antony Kurniawan Soemardi wrote:
> Reorder the nodes in qcom-msm8960.dtsi by unit address and sort
> properties, as recommended in the Devicetree style guide. This is a
> cosmetic change only, with no functional impact.
> 
> Tested-by: Rudraksha Gupta <guptarud@gmail.com>
> Tested-by: Shinjo Park <peremen@gmail.com>
> Signed-off-by: Antony Kurniawan Soemardi <linux@smankusors.com>
> ---
>  arch/arm/boot/dts/qcom/qcom-msm8960.dtsi | 524 ++++++++++++++++---------------
>  1 file changed, 267 insertions(+), 257 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

