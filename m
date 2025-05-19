Return-Path: <devicetree+bounces-178323-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DF63EABB659
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 09:42:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D3B2E189282A
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 07:42:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86003267F51;
	Mon, 19 May 2025 07:41:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="a0QrJhkd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3BA5267B95
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 07:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747640515; cv=none; b=po5WWENR8w+GRJcZfifgahHfJsWP77Sv+Y27W95tUOdtHEEfvIyzJ5AZSC25jhiczVWJR+eYA/dPoNGT3pc9mrDyPs5k8DtYJkMwKSk3oQrmaHJ+SoPJX1oUj1LX6ysWJA8eJyQfFpWj2jwHG6fM5eNGokGWFqJUa+/igaOEkB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747640515; c=relaxed/simple;
	bh=vk2JBAbC25ErFqWfBeuURkGjcQMndPvAFYVIsJCCaxc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sRA/ZrFkLGQhp9S2OsJC2xe7Cg/mH4/ESKWLp0qFuoIa6WY+NTohXRNHl6JaHHwc+jQHrZJnx9AwaLBuS2PxngWtY+bBQe7kWynSTderEioOB+d0IKbKrgF+XU/m3zvWTA1BLpC3C4+PzYQ/JiV+ID0Hr2KOK3m0VW/joHj26Uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=a0QrJhkd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54INjSMm008666
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 07:41:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=GDNjg9CVy+PvEX5/Lt+VfpCC
	TKTdj8ZZWuSFdP68hXA=; b=a0QrJhkduYTi6k9BXTJEPm90ATc0ZTixqaGxQD3F
	Fdcqu1naqbZw2meBivpOQ2JAJG3cV45EImKWO9SpuEXQ7qFInQRQ7Min6OtPVi/+
	qLdTvZvnN1qBhIQxIRFWXIK7kzGQATGkD9ebVHgIQnHyjRtMz3D7mzk0PkfBWwn8
	8FGgd1KycSemxKJZg5tTwVx+VjvA19nHzIzH+HBSqsj2SIiUpUMMuf90YTibe0+W
	s6zmKgD7EstmOJ+SyI8lqaNz4xu/GTBh7XYz0ntY19G1nqJSn/P5JEoI1JrMs6RF
	KJC7lyjPM7mOYR7ksoz2dFQfZeGpWLZsiylDp/Ala/kuGw==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46pjm4kg6r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 07:41:52 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-af8e645a1d1so2553317a12.3
        for <devicetree@vger.kernel.org>; Mon, 19 May 2025 00:41:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747640511; x=1748245311;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GDNjg9CVy+PvEX5/Lt+VfpCCTKTdj8ZZWuSFdP68hXA=;
        b=qHHVdX9kSbiXlh+4gqsNPGSWc94ZIfYyF26YgsEEuRZn3sRQ7G8fMc1Uv3S4tj4g4+
         ZxhLbnPRcoYwUy/L7/N/LD4j9p1cvlzNBtdXlskoxkWWRJjLxkWV0i5JfCRvIKIAOoNF
         uuTh54T5MZrkyXS2yiOz29UVM9eSZiVZeLswdQ1FdN3aLlAPG9AfvxdQGhcAF9CyDw5U
         3YFpImLVnr+00Bq0DkQ2vAuiClPSy5A11U18q29OtOsP/dZimyFcPT7kFzP1eCOf43Ss
         fmSTrvof4eVBHXgmIuzgUbYgZ9SOQv500TRsn+r9D1lfe6SypzawkMSmgc9vwiDFs2Fb
         oZZQ==
X-Forwarded-Encrypted: i=1; AJvYcCVVIsbn+VY+pTaA1RjGl+U0ZspkoLsTi741QyPpFC68v5oVt0//vLvOJ83vx5XxYF24Dg2S6tnaCo0x@vger.kernel.org
X-Gm-Message-State: AOJu0Yxho2CFLaAyWWrALYFrFyehDNWar/cfp/cf4ma8acW4g6Ox587p
	X7iGm3Evp1ifTjnsgsaTM7xQd7HLpQgAbxtBgIq2sVL3bim4uG+KeXlXlTjMUOV20vHSoF6xytr
	j6eCYzmhyHokZCh/y2CYBiHFbVdU+V0Md18cm/ea0Eqkygt/t9DOfJgcJ4k96R1mL
X-Gm-Gg: ASbGncuWMDBib6E5jTdQWTRF2E1BT0yyF1KnjsDDojAhBIOK8mW1zPWiJz5UGf/CUJM
	opuZDqEBT97sSGBesBT/KrXTNE5zjFN0rQpxCEAPOVAhqDqIlCCXCcOqKi46PvucmfT1bSuC5sK
	EFlqsyWxjX3u3/rtTrMTIr8o8VCsoBkLDRp90eIO/9z0Rh0N+1thve2Ou347Sh334xMa85KDCyI
	wFQPUlvULGnZB02wz6RDX5wx8Gvjypx1r4gP6OsVDRHJEentPP0ftcd6SRGVvsZWAD53pL+e4Hf
	GBV4TufJryZ9YWo6RKffpwNbWx6tK4Qi1a90BgM=
X-Received: by 2002:a17:90b:4c0d:b0:2f4:4500:bb4d with SMTP id 98e67ed59e1d1-30e8314bbd9mr16540681a91.20.1747640511260;
        Mon, 19 May 2025 00:41:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH3pyCMyr/gG5Or8VZNaN1zL5hwnJXCU4mQRJygJCN20gkdCDZOvJ0RyHYVIoqUvhRqTC9BbA==
X-Received: by 2002:a17:90b:4c0d:b0:2f4:4500:bb4d with SMTP id 98e67ed59e1d1-30e8314bbd9mr16540658a91.20.1747640510802;
        Mon, 19 May 2025 00:41:50 -0700 (PDT)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b26eb081aa2sm5659201a12.48.2025.05.19.00.41.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 May 2025 00:41:50 -0700 (PDT)
Date: Mon, 19 May 2025 13:11:46 +0530
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/2] soc: qcom: socinfo: add SM8750 SoC ID
Message-ID: <aCrgupYa6J5rRJYL@hu-mojha-hyd.qualcomm.com>
References: <20250508134635.1627031-1-mukesh.ojha@oss.qualcomm.com>
 <yv3ageskkr2mwtgnrldlpgmvgqbxfullp52w7yjg47lm34h5cb@n27gdmljehyc>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <yv3ageskkr2mwtgnrldlpgmvgqbxfullp52w7yjg47lm34h5cb@n27gdmljehyc>
X-Proofpoint-ORIG-GUID: ypSaPKTSAQnJ_AsWQj8e-a7X0bqBtqDx
X-Authority-Analysis: v=2.4 cv=C4bpyRP+ c=1 sm=1 tr=0 ts=682ae0c0 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=kj9zAlcOel0A:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=8TtkWFPNHdivomkhMlYA:9
 a=CjuIK1q_8ugA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-GUID: ypSaPKTSAQnJ_AsWQj8e-a7X0bqBtqDx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE5MDA3MSBTYWx0ZWRfX7nRywOhkVDmv
 DpUtJ4VRMMrcctaFpj4dldrTosA4t20dwZRVYC/Je5aH9WqPagR1lRP4zyuba8LDdx/YjXaq4vh
 8ofLS9pLEPVxDqwN1kB+lciwyuw46ekoB+qOoX5L06CYfWIsn/7SbzNqWZ5YhUrYbPLdZy3EEtO
 8ZFlrIahCqMZ4VVQ00njkZXYnIp5wR5aMwhghIcXgC03s0A+tsMNk8UukUcnlIJVCi27HZvh5+0
 RHO8zoja3DfqoOPFeotETlzQnFYtykmlO/+u3s/bBEjuQ0KDdNEvu0rX8ke7HDPElnCRIQo1qBE
 N/N4X2RirMv4Y/u3Qm03bjaD39l/PJlDyT3ryQQxGHvEyo2YzzWbyvORmY2YcjsP9jnDdBeaG5I
 l6MmJiAt3tdTclQEIMlsKDQA1ngp8jEfqWjhJc5pa/anNt22o+axEZSt0SoJIUQDWVarqids
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-19_03,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 suspectscore=0 impostorscore=0 adultscore=0
 mlxlogscore=793 spamscore=0 lowpriorityscore=0 phishscore=0 mlxscore=0
 bulkscore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505190071

On Sun, May 11, 2025 at 05:30:52PM -0500, Bjorn Andersson wrote:
> On Thu, May 08, 2025 at 07:16:34PM +0530, Mukesh Ojha wrote:
> > Update soc_id table for the Qualcomm SM8750 SoC to represent
> > SM8750 machine.
> > 
> > Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
> > ---
> > Changes in v2:
> >  - corrected the order. 
> 
> I believe the feedback given related to two different issues with
> "order", and you fixed the sort order of soc_id[] but not the other one.
> 
> Patch 1 can not be compiled without patch 2, so applying this series
> would break "git bisect" of the master branch.
> 
> 
> I'm applying the two patches in opposite order, but please do make sure
> that the kernel is buildable and functional after each patch in the
> future.

Sure, Noted.

-Mukesh

