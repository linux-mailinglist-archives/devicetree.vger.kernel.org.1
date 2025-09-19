Return-Path: <devicetree+bounces-219398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E849B8AAC1
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 19:01:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D92E517DAEB
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 17:01:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E3CF268688;
	Fri, 19 Sep 2025 17:01:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LkwbJwgr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 975B62773DA
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 17:01:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758301268; cv=none; b=AyHsomAbsy//SoIdE60J43cQTB639k1kNIQ+xu5MQNSSbRpxkdRietBt5fysXs0JAWQ5JgF3yqzfflgb5LhHoEirpZXlox77NwZiM7gXAt8ukJHzNiXlXq7y6JGFW1S2Q0oJ5IJM/40opTy/rlrwr37X50q1gDNj/2unDTOXkMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758301268; c=relaxed/simple;
	bh=Y7DKAZiT2YZkSJp2XiHhkr0pQT76qG9tSnaVyBpEkpA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qdRjIPUH/7/GbC0D4Lo3RQ14FshX3cjWvL1ybb2Rd7S7/BOwKLjzTyogOydJ+hEN7yfNMr9XmNA6q0BwGPTX0zok4OjuWP7Y4KvMoOD/4mpGYxxsGTsVv3PwCui9QF05PDn8abnbp7SDMs69vF5p0k9COuzWjS600Vr9Dtx8YDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LkwbJwgr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58JED4B5032429
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 17:01:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=gfDFATVzLHxL3rjSBMcDlDZ8
	Gmp6IwIJVpR9vdm9I3I=; b=LkwbJwgr9Nasieem7nMvMqGZuqoKPJzLMKGtKtZi
	xoLeuGbUNfp9NSB6BFl63dMtv6IDP9XNObPSL7h2aqn25iKIsWammaMm6LkfCl3L
	mtenuHbSwyGmsvtkYAGIbjn5a70ogViaR7aGlTtTM9W1CXFce+n3Sj57X99FG3Y1
	A+S6AQCHpYkSxZIksL0VwX1LusPR+9ysUt2Xvbhw6z0p0UWVgpOiT7+3zHLshKDF
	+KlLiuOfEeVGX0dnfk5T/Me5FyWHnbVne25Y5SSjQfeAth6goPKf8lAxM0zpKL97
	uXy1G63RiY8WOwr3v8WaOR+Swn7kqBhGZhkOj09WCFV+6Q==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fxyu6d7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 17:01:05 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b3415ddb6aso74448291cf.0
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 10:01:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758301264; x=1758906064;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gfDFATVzLHxL3rjSBMcDlDZ8Gmp6IwIJVpR9vdm9I3I=;
        b=qcdWn3ATRJA/u+4dCtcYHRxaXZIVFFKxTKWmx6evz9/jhuxBBT4tNKdz8ZEflQjBRy
         iTwEZbe3pH8DOXVjeNOwV+tP4OqoK7Rdriga9f8vEgWk4baOfj5xEZ+0KozVXcvEkjQM
         d3wLAKG0MPJmIOOjdOF7owX2w9bkNY1gbePKGYpRe1DUyDJBWf5v3QIiOjqefkaW6Zoo
         phdvXKfCyz7uS+JGmRWtZabnfuI1VTbJss45u6boshf3TLA3sG21I6KhUM6DcJmSXSfO
         F6YPtnjAqAnpO57Fg+6tBq74umkhbxYwHQntWtfzoWLrI5tkXTNC9arJ+7u94XXcKsQz
         5Eaw==
X-Forwarded-Encrypted: i=1; AJvYcCX+qiCo1/ImqAAJgY8b8Y9wQRGQwOPm5g0Q7y+TdolkNGAoCQms5ORomE9R87/moOMYNq5smEdBWRA8@vger.kernel.org
X-Gm-Message-State: AOJu0YzfCD3aPi537dBDGXaEVdQSUiLyRh5BQOHiKha1tZoAQqd0DIPQ
	fgWPTGSrE4oicXJ7ilGGrVmRsNRJK7wy3jl7VtI5evuTmDggxI9Jym9I9LeJag6Hz9xkc/c+h8c
	ZQ1vaj8hzRqSYyBEoL495JNA+cORlTpQ11OSNZqOPhxiKGPgS7fU8VlbUGC/TgSR2
X-Gm-Gg: ASbGncuFUTpuUGz+p6kjWHTsjT83avcFKZI3aSP9SxTtmG4n18LuH2+/hLVXgA4IEa3
	JES1kHjgGzaQA898kVueVAru5BHAGzhiqnnPrdeoGiTb4nRlaPVZYHfLzgxq6wvYnirWm9OCFNL
	8kRT9BVZ8ky2euXCGYVUWWNtGH/v2hEeLJWz6Tz5i5TxaiDzWPOg2pRZ1X2N7m6xspJ5M3D7cRJ
	hxj6yxkXngH5bZGw4DQW3TW/BPloF3vaj3xk3jXE5riDux/nl3qR0wf0qkKpxOWvq2cwQyRLON0
	+1bE+WgM/HYzO2jebKijN8r8qXBdOrA4e5A3FdBc6haxqKXXMdzRoCkz/97Ig2mjd7QwsU8oTsv
	v6Jhnmzsc0zPTT9MwZU14PQZCEcFJM9EbQU4AxMaYjjXjjfhY84de
X-Received: by 2002:a05:622a:1994:b0:4b7:9b0d:11ac with SMTP id d75a77b69052e-4bda971d81amr84082121cf.8.1758301264008;
        Fri, 19 Sep 2025 10:01:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHGvIhD0JxWZnIagFrRbczAgFfT70uY1KVYP/SGm+8WArapSfq67kdLR7qEtf5eIC6XHqkQLg==
X-Received: by 2002:a05:622a:1994:b0:4b7:9b0d:11ac with SMTP id d75a77b69052e-4bda971d81amr84080841cf.8.1758301263027;
        Fri, 19 Sep 2025 10:01:03 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-578a5f44a3dsm1523174e87.29.2025.09.19.10.01.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 10:01:02 -0700 (PDT)
Date: Fri, 19 Sep 2025 20:01:00 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jens Reidel <adrian@mainlining.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Danila Tikhonov <danila@jiaxyga.com>,
        David Wronek <david@mainlining.org>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        linux@mainlining.org, ~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH 3/3] clk: qcom: dispcc-sm7150: Fix
 dispcc_mdss_pclk0_clk_src
Message-ID: <z6v7vi5kiudvfc7es5whzkfhn6c7ozhxw5u7onp66u7qd7utnx@cwit27ppu4c5>
References: <20250919-sm7150-dispcc-fixes-v1-0-308ad47c5fce@mainlining.org>
 <20250919-sm7150-dispcc-fixes-v1-3-308ad47c5fce@mainlining.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250919-sm7150-dispcc-fixes-v1-3-308ad47c5fce@mainlining.org>
X-Authority-Analysis: v=2.4 cv=e50GSbp/ c=1 sm=1 tr=0 ts=68cd8c51 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=OuZLqq7tAAAA:8 a=EUspDBNiAAAA:8 a=vcgiYtMqkSy1wNhQ1XQA:9
 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-GUID: Vg2HCjIbdubR0XwUKFuCC3gHr_8rCKvt
X-Proofpoint-ORIG-GUID: Vg2HCjIbdubR0XwUKFuCC3gHr_8rCKvt
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX9wpWOoaTxrxn
 3jgOGQRzvdqYB6TWEZDIXvfvsgSNMpjWBIZMRO2+UAV/JbETcAkxl/fohbkE9EzPMIF36ve5XPn
 ptagJ5XSKPlvfmtR9PBcShj49FxgfS3kCY37Vyybjr7ywNdaf/lVeVDKO85WmzlqDTtvZV3hcwT
 1SDyE6W8Lqx+hM1br+uJMIj2b3R51qFNRBrrQdLFRMhekuRZ8NdOVipPUppvP7Tk7CIKYMjXd0P
 TfurkPDq3iDshcGn3Xn+zecTqoDvf3Neoms1LOL7GYYCAOuK+G8aAcod5Zy/YuUarNFqUOPbtbj
 0zbqszsoLRO+0zap8V0otFshWLHlY0pykc3OpYqUHfz/YsZmmBpvpBp0Nlp3k69qUYYJ0XFE789
 CK+3rDXp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-19_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 clxscore=1015 spamscore=0 priorityscore=1501
 phishscore=0 malwarescore=0 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509160202

On Fri, Sep 19, 2025 at 02:34:32PM +0200, Jens Reidel wrote:
> Set CLK_OPS_PARENT_ENABLE to ensure the parent gets prepared and enabled
> when switching to it, fixing an "rcg didn't update its configuration"
> warning.
> 
> Signed-off-by: Jens Reidel <adrian@mainlining.org>
> ---
>  drivers/clk/qcom/dispcc-sm7150.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

