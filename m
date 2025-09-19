Return-Path: <devicetree+bounces-219399-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C3694B8AAD9
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 19:01:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6CB9C1CC4970
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 17:02:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2E8A31FEE3;
	Fri, 19 Sep 2025 17:01:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="U7e06cpu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68CA6268688
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 17:01:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758301301; cv=none; b=a0ddML4OSqI5BI+uMxBK2MpLfQlZPY5pXMjTOKNDcxSis7NmywFSuHfJudGKMfDuhDOTlKXz+npy3kRJblB4NGcjIabNFA9xX47mfTIVUervqJbxphsC7r/Ywk42mya56icgs9P3On72VvGpJoYyd8SxOVUcBgmxRKJkxbT4SP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758301301; c=relaxed/simple;
	bh=trDFBwc1oiaJoVJrQfez6m7oAuetfw6BHTNzouIaVYo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OqhHGzn1G2MOyYbIpxHMqVtJhbcOFeWNF1iKLAefRlKn6Uuo9hOnGlBLkBlFExcge9jmRUctDtYNbdrCu2s3h6P3XJBUvBx/AQp3YQBA8B7t0DJ+ZQKiGzg2/mdLq4TCWY+2hs/sFmonGZ+EGjISIZY7ofjjPhIIrA3dA9vdupI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=U7e06cpu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58JDwohM029580
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 17:01:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=/GJuqjnHkULWUhGDoYaDaK5l
	06w+po27C73CLRMK/x8=; b=U7e06cpuONegCJPqkZYtg4UUJJ3u5dYyrZVSO9mv
	ELIRgnZlemXDNkiJem8hUC9qqsqQHeul2tSlOAixcWaZ9BEWp+D26kpmx6QJizvb
	3BASD7r2p8JrVEMo6ok508AyBmMoxc9ebaA+eYmR9xF5gHyNIIoRh/Pg0OgoJpsp
	GzNk50xwDnhk60IkNeQikoAQ6cLjMGVR25M1d9C1rwt7pl9NxOaPjLOHIyz/TWi8
	aAU0s/mipFfhHQ1LVDpwr0+8mz9fy/BJXezvcaBw3JaFfvE0Js61HH5buv6n8qHU
	I3ZxhjRpDWBsvZhyKTt88C6d93rSWE5BoRu65iXNd4D5rw==
Received: from mail-vk1-f200.google.com (mail-vk1-f200.google.com [209.85.221.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fy135n6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 17:01:38 +0000 (GMT)
Received: by mail-vk1-f200.google.com with SMTP id 71dfb90a1353d-544cb3e19b8so2365930e0c.2
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 10:01:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758301297; x=1758906097;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/GJuqjnHkULWUhGDoYaDaK5l06w+po27C73CLRMK/x8=;
        b=WfOJOiplgIs1Zlme/8vNJKP0MRGvxzo6JqAb9xAjOX5OYYLu4tq1Rs6TN72s5gb0c9
         zdbpTFyt6sFa7sppwLnQvYeLgcMdsqFZjb0brVIPOusBu2qJdZQK+UtpUJ+24hMPNESm
         t9P28jqL288D/xBxBb6Yl8GnzCkcCI1NfRtAzkgG0pHO5asIZHzmZs/6LYWboms9zgB4
         pvohE13hwWX8MeJC419lGwBqfOVNZa7LEzeUS2JdnM1DVz6ayQuU2nHBkQuMG8QOb0dW
         IOLkXkb0NYPiTqaRnAe03sXMZKneRnR5iCL+XBtBv8NGeBlVHzVkYB5w69M1DyOkIWb5
         JORA==
X-Forwarded-Encrypted: i=1; AJvYcCU1ykdy4yXuM4Nw+qsrYz5Qz78O9pmhkVN6lt8CLskd/w+tzZzDbNLvFZ9QhHl9AmBntAg3sDp7lmHd@vger.kernel.org
X-Gm-Message-State: AOJu0YyUhqd+IixXaoaq9DqEvalW0z1fYQuQzXUrFv8Qs8gmk5QBlSo7
	78NQfTXiO2/9jwLsUHjwToDADLVfaHAtJhe9C5bxCC/KOyPmB0TPY5GjZkyN74qi+JugnbOgwYn
	e0oSVfeSjHzuf/YPAE2z5ESDCXieseEvsHJbXXL4WsX4bqNU2T5X9BIlWyEzHRj1q
X-Gm-Gg: ASbGncsRsXCY+zP9sQUxtR0tuI0SUSsuWYNeo9HGQBzihzOHbrFs0aJ9nnrYLva029y
	gajeTpaRcyH1X7hFjWDR+IXlkmmKNsxzXMJloa2P1umcum6yH1uEqrRN6rkOhDuADSnDLv1/br6
	0VFQJENVLYMUtRN10ydi35eX2Rda0S2+QZ984to68k6tu+kyKePAOQn3Mojn9V5casPFdyH3UB7
	ehXD+teXf9IbFzAv5wwu9j4YIlpr2oklj/AUqELpzX3Gg17UZmOyPzgHeMmTx07701x1vid9o07
	qx519codrj6gPeHsKYtaHWuYHW9gVjvuZ/7Hg1sGB+dQ3iov9K8AnDohndbZ/Tqwx3/Tj4PGlIi
	g6DytA/wcbCCV7SI1v8aWSIegKVOHUVtqXvrNoGvjLyjbIu9nfY+L
X-Received: by 2002:a05:6122:8c02:b0:544:a84d:d3ac with SMTP id 71dfb90a1353d-54a837797c7mr1542745e0c.5.1758301296862;
        Fri, 19 Sep 2025 10:01:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHRMwUFcNmD6+H4WWbQh7maNAmSeRlq1FmZoBVrzLMBe9fiOHdTW1rugEpaVEScuqRpuuBjoQ==
X-Received: by 2002:a05:6122:8c02:b0:544:a84d:d3ac with SMTP id 71dfb90a1353d-54a837797c7mr1542622e0c.5.1758301296167;
        Fri, 19 Sep 2025 10:01:36 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-578a5f44823sm1510808e87.6.2025.09.19.10.01.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 10:01:35 -0700 (PDT)
Date: Fri, 19 Sep 2025 20:01:33 +0300
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
Subject: Re: [PATCH 2/3] clk: qcom: dispcc-sm7150: Add MDSS_CORE reset
Message-ID: <rxjhl4t22x4472x7qjxe5nq4uwoogkuyqzqz4imdtnmeibucp4@yesphve6yat4>
References: <20250919-sm7150-dispcc-fixes-v1-0-308ad47c5fce@mainlining.org>
 <20250919-sm7150-dispcc-fixes-v1-2-308ad47c5fce@mainlining.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250919-sm7150-dispcc-fixes-v1-2-308ad47c5fce@mainlining.org>
X-Proofpoint-ORIG-GUID: FulY9TYs2O31USncwz9CQE0rtPAPwDQI
X-Authority-Analysis: v=2.4 cv=btZMBFai c=1 sm=1 tr=0 ts=68cd8c72 cx=c_pps
 a=wuOIiItHwq1biOnFUQQHKA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=OuZLqq7tAAAA:8 a=EUspDBNiAAAA:8 a=1MwS7L9duvxXQ3yU_sEA:9
 a=CjuIK1q_8ugA:10 a=XD7yVLdPMpWraOa8Un9W:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-GUID: FulY9TYs2O31USncwz9CQE0rtPAPwDQI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX44BCUk9nubkx
 lwSL1QzER4pmVokgxLeep0FZcWT0lwvd/mWfub/lIbUA0NDRgL5ExnqqIUI/weSDIcSv+RW3yYC
 mJJZDeqO4qPIQNW8f3Sg8wjyrNPI4pYyqF9BsnmrEVYAtkWR0CZfPlzhoLS+9ZPl/g1F9GM4zlG
 sghsfa5kbK16Meisf53cG2CCmxv9JqH1rz+442irbJ0d0eneX4p6w1kApcae7scQi/1yWgUxvQT
 04vIXP9redi2TG6sX53C7AaSz8fubJG72OpQF+ASKSIbK12z5zkckVhdhjRjYfkIXfQjqFMC0Ft
 wgZP7i6GQprZN7iNs/86KcnV8vr5ZMTNu931zud5OJYqo7SdZ4/D+MGGcpLvAOT91JTi4J+yyBg
 ijUUk+fJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-19_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 impostorscore=0 clxscore=1015 malwarescore=0
 spamscore=0 adultscore=0 phishscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509160202

On Fri, Sep 19, 2025 at 02:34:31PM +0200, Jens Reidel wrote:
> Add the offsets for a reset inside the dispcc on SM7150 SoC.
> 
> Signed-off-by: Jens Reidel <adrian@mainlining.org>
> ---
>  drivers/clk/qcom/dispcc-sm7150.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

