Return-Path: <devicetree+bounces-230358-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EA01BC01B3C
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 16:18:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A86653B9B0B
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 14:10:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F5D8320CA8;
	Thu, 23 Oct 2025 14:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WYt0E/IB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B9C31BCB8
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 14:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761228635; cv=none; b=Klr2V5eYEoTg2EVDN0b7nkPpigPeFqh49KGhHGfUU25pBDbLSozHqcziqT7XhMwDYjOyf2DRkyvhFSHy4kT1vzyaoqdVfEUQIHRebZsBrzKgiPwmoNDVLzBZAIGUJFRwbTkPDabQs95roaG2EhNQpgI6y6Q65mGzbmD4TUumrdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761228635; c=relaxed/simple;
	bh=E8DHiUHBc+Kx0BkbHinW3qjbtm95S9kjEJyXbNNuC9s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dq0flzD7ztAvxq1CUlS3TfjLUXuVPphT1QfDqDxwwH1H6fg8fxegrPM8ooLhKQXTn4EAe2iqFDFfjLevM1Mf3QZWbfQ864UHeZjIKWiXwHLYKdzCesJmWBdz9LdxhwAuB1Uxb1WI3CiyGOQWCiJQjKzuHcHQaHxZRoNS9YihlEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WYt0E/IB; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59N7YJSj011783
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 14:10:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=3qgygDtk8UlAl4nQQF1ZdnPG
	AZqeQV2IEszwXskS6lQ=; b=WYt0E/IBt9ppMUHlSsxRFF3CxRwo7LvEHOvGHxg4
	mn8uS4aB4CpJ6L+1eeDeK413LF/ZIRiyjmVF+jXhXVNxEb9yOCijgfBlhSMi+/cW
	eT1JmaajhcDJzZSo6DVJ5O40zTPR7D3VlKVYZxQObsNvJcfvfqhau/E1kQgq0FP/
	ntZHLrHxY3tQ4Bx4blGWdsW1qxoSOy25rE1fSNK281affFKboVAy0Mt/auEH47sk
	qY/wiLG1LuLSRLZL5VkfJIFai9jAHMf4iwIrBBFFC6Xyfw8/aPXKmy9SJfIQqptU
	AUjQbcNd9DxIqexSpVX/DeKT7flEJ/9Wlsl8WbBIi4q1nA==
Received: from mail-vk1-f200.google.com (mail-vk1-f200.google.com [209.85.221.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49y524av29-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 14:10:33 +0000 (GMT)
Received: by mail-vk1-f200.google.com with SMTP id 71dfb90a1353d-556cd166749so1939181e0c.2
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 07:10:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761228632; x=1761833432;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3qgygDtk8UlAl4nQQF1ZdnPGAZqeQV2IEszwXskS6lQ=;
        b=KcKJ2OPnDY7owuRiKS+rqJEGo5jBcV2DRhUG8XXbMcvvZT539Vy9VAuZEa+Uxxjq/P
         U33EvLzPmlz/JAfYueudTXYeEFr4dlSWWZ+aB+QjNY4VUgOrmzZip5JfZEd83lkcQ0vD
         2wDnLgWtm4VD9gvS0P19U7mav6VkAIE3aVqUy+s+/pp/4aaDf+HCnASEtQL4e5EDeqo8
         WU4t4XPomoPKCJ9Mio1vSczu54soarS0tvFr4hwp717cyVgkmCDHVAcEgiG4cj+dKhn0
         HiPUS0mId4ZeyBmjF3NOYtOfKcyZ9shScvlfjj/o1DLK3GeowxWew9brmfU3QfFfqgCN
         /ACA==
X-Forwarded-Encrypted: i=1; AJvYcCVd9TR9fCGo1I4qTAtiglY6pfuUmtnCadL9MXKEfxXoWn/WT2UNMoQPHFxPNj6rd1OrNVJV8uYiqOnI@vger.kernel.org
X-Gm-Message-State: AOJu0YziIAlGi0WVO27/+PmocsO/Q3ich1qxsj0vNySAM2oO8BeIsu8l
	NNUZvU1zihiVk25xy6QAoNoDin5xLFE6h8ykvkaNlPgSgSrPMv2gEf9uvi0ANXuEQhaoqyJ3/zD
	4EKEx3OMneZMnmenYMPEm4vdF1uFlP8sk2W0bY50I3nJB9tgQWs9SwA5C5g7Y1TmM
X-Gm-Gg: ASbGncu0o686mQO4t6Er8/VO6m5hswcZGQ7RIURdYt0Dv6YO+Ph9NzPxn+ljiRACJNg
	xspkxN307vCQlMHP3fmaZ/wXJxV4S3NgffSsPbpwCj3goZoT1DfqoQ2SGBHb1IDk4D077bDQPHF
	BBt1zFx8XCmyYBl/RTgfKNN68pf1FteoChMHZEPrFJEsg2gBDD2QDGDORUjPQUMoAt3LH1sHfOi
	Zm6fJ8DvLScRIfVhvJQ4EjKV0UzZnOp7Q+DsKvJMaq/u5xizFoXmXs9B2rVwaFUcq7ORgTLc10Y
	bqy6jXBQnMNm3GclHmrlcfs/uDoCX5ednibEjgAutKrsydLphC/E3ELlm5/zrb+OYZbdWtCAOUf
	JWBY+c71XCwNbVbJVcGOYe2+hwUpKRdVOt0gUIiyxUbpnYxrLJHimV1/TBIlXKRcy7OsQbvkwvT
	oHIOtTOqXomia+
X-Received: by 2002:a05:6122:3183:b0:54b:bc2a:f58d with SMTP id 71dfb90a1353d-5564ee320c0mr8061748e0c.3.1761228631737;
        Thu, 23 Oct 2025 07:10:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG9z2egEYQC6wwFdktlSuOrxdZPE4UHlcQ1aU42vJECIx4nLyzy1YbsX5qcp845m7FqT76pbg==
X-Received: by 2002:a05:6122:3183:b0:54b:bc2a:f58d with SMTP id 71dfb90a1353d-5564ee320c0mr8061712e0c.3.1761228631186;
        Thu, 23 Oct 2025 07:10:31 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-592f4aded7esm778459e87.6.2025.10.23.07.10.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 07:10:28 -0700 (PDT)
Date: Thu, 23 Oct 2025 17:10:26 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
Cc: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>,
        Mike Tipton <mike.tipton@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] interconnect: qcom: add Kaanapali interconnect
 provider driver
Message-ID: <2dbbwcrfqvnd5efrmqku4x3rtsjalk2mjezdufef3hdnjclqpj@bcauquyryh7v>
References: <20251023-knp-interconnect-v1-0-df13182aceac@oss.qualcomm.com>
 <20251023-knp-interconnect-v1-2-df13182aceac@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251023-knp-interconnect-v1-2-df13182aceac@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIyMDE1NSBTYWx0ZWRfX/dPC+S2LT3hn
 kQ2tpuMW3fh+5QTPI127xFcjvdU8E04bA786Q1fuEzWMExI9SmhfPAn6fEe2vOZ33iLkRzlkwuE
 hhyH/VTp6g5xivQBW8PECsDoFYZ0TrMAPk19a5c54IEYV+Bw/3RdYWNMXxr4oV9nM8EuzyqNHQp
 yEkBpNGO6X/DK6yzrr6qYBogLGeXcwUjDNVYmVAV00v3FBvLGXJAuTl4IVztvVBNcn8dI8V2U60
 k/AKo8tTQ46s1dKDOl10AUX5bL7UcD+0qZnYZljLQtZ7I/JEruxu9Tp+HQTjPEMR88DxX4hIt8j
 Qiuky/SSGn9a2J7kFRsDBiBF3Mg5/GoxeSFDe9KDAKEfNnGe6B1IaV7djx8KLOvUrU9UVTLjRWp
 VUdhxCJy4jf4DLb0rvfMM54YZNAwyw==
X-Authority-Analysis: v=2.4 cv=Uotu9uwB c=1 sm=1 tr=0 ts=68fa3759 cx=c_pps
 a=wuOIiItHwq1biOnFUQQHKA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=9fVyOH5KxkoKYaOAqNYA:9 a=CjuIK1q_8ugA:10 a=XD7yVLdPMpWraOa8Un9W:22
X-Proofpoint-GUID: 4MBtmz061MEI-oLtSGW2R18Ax7Jrvtw7
X-Proofpoint-ORIG-GUID: 4MBtmz061MEI-oLtSGW2R18Ax7Jrvtw7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-23_01,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 priorityscore=1501 clxscore=1015 spamscore=0
 adultscore=0 suspectscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510220155

On Thu, Oct 23, 2025 at 04:39:33AM +0000, Raviteja Laggyshetty wrote:
> Add driver for the Qualcomm interconnect buses found in Kaanapali
> based platforms. The topology consists of several NoCs that are
> controlled by a remote processor that collects the aggregated
> bandwidth for each master-slave pairs.
> 
> Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
> ---
>  drivers/interconnect/qcom/Kconfig     |    9 +
>  drivers/interconnect/qcom/Makefile    |    2 +
>  drivers/interconnect/qcom/kaanapali.c | 1868 +++++++++++++++++++++++++++++++++
>  3 files changed, 1879 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

