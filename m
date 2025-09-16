Return-Path: <devicetree+bounces-217780-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B9876B59342
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 12:19:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 429793BAB9B
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 10:19:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98BF2303C9A;
	Tue, 16 Sep 2025 10:19:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EtLbXwhP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB200302CD1
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:19:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758017967; cv=none; b=jhtLJWW69PR78ao4nbiYHSvQfLlPm3O2kQ4BN9hrVgX0PzfUv9/mki98XpTZ4KqdGczd+pICdpIwpBxn8DHpnwmr2jAdeO2a/CqHoJXTDMXCxeV0IkxMiUYigyENN7hvjWdl0qol0/IgISWkHCh70gWcEIUUfj1Ru1N+lLjGqx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758017967; c=relaxed/simple;
	bh=0FM9OkE2a0680o9LMFE/4uvss6jn9QpaCDiB+I50lPc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HLgI1SzxU6OQtXla01sD1G9j7JDqHa4z+Xvzsl8gxNmMhc/Pqe0G3VsZdyu85lkYCvvzFJoPHFJh9olpqW+I8ynodRKtSXWpkJk9u/wekzwfnVZE6Pw2+tUa6WS0wopHWNJUn4BxyNh5M06gWZrpNUZKQ6CEghJOotwssmHWguM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EtLbXwhP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58G9uBjM020047
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:19:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=sl2TOog3kB9QFbelgSf5eIFg
	UTi8GDmmk/d1oNtHYxc=; b=EtLbXwhPk6zfkjc8UtKVO/aB+5tuueVqBzcWHv/n
	ywQeLa/Pz9TBq8bpIjMlt9FItt2kfsEzIMDS0pXE8GkgJfeeE//5uZWeABCDzAGG
	blL5pJ7zTQf0GFenVwvXXVNmPSLeXxlTvmIkN0GlyUrcvZo2LYfCgmGpqAmfx0Nu
	9FZJhfo4DV0KuUB3Ywk/dPRsPUTWhz9yDTtBv6ui9JrZzIr1GhCSopEC8eDaxsQd
	snmSLLHSqP+2xAdIQUoByYSOjNgrGJvfTI8jO6d2VPtvrV44b8XXafnFYq2UIjQO
	6F1nwo34SrUK0SdhfWniNH4sIyQMunJ4S+jtXcHN+Cilgw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 496h1sm0fk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:19:23 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b5ecf597acso119866691cf.1
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 03:19:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758017963; x=1758622763;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sl2TOog3kB9QFbelgSf5eIFgUTi8GDmmk/d1oNtHYxc=;
        b=lOqUFqDl/7C6wuTGd4/FV3SwTAjPeCW0cOa9vHGwmpqB+Ihw9GPHWQTUTXOIIuGxZj
         cJyCn1CyoFNZk46p4o/xxBQXVMCLxYS8gvm0tbo+wpWb6/dBuSV4UvOBOLiQVZXT4FJi
         AnYbU8dx2MPVD+Ao3ZrrM8attUbUxDjEsMW+zMYHOsUCK8a7FyG1Hkf7WpCw2jNVDBi2
         2eKz5b9U34hR+T+fI8WQk/+0YTAI/3/B4uQzatSL+zw7u6n9Xbwzvz+57ifIRWuAeap8
         VTwB3T89+nBDKEg0YrOwhebvhlBYS9haDHvFwy36Gc238uau8f2khKWc26RbNemr9Uc3
         GO6Q==
X-Forwarded-Encrypted: i=1; AJvYcCX/xPsoyiNlGApdVry9ybrOY0K3O5PU1UQoRDIld2ohCWMQGET4/VXqQDSApdQDsqEJkgQSiD+dlSGy@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/Qsvm5pRRhT166qeFGWhCWSpIRlQsySLuW698KAHNTi5rk1KP
	IDO3F7K0axBNEOjYuhuKFHZgR/rFkCov92HzHgvtUXqNbFNTWra9pTlAQmon6FZEKo0oMMiIQKM
	6ZEm6w2hq8eIw8cK3NABiRflL1tPtQqX9jzRppznJIF/71NDKxbZsN1XBhq8eYppd
X-Gm-Gg: ASbGncv9GHTMde9tiGFSgNwpVpRxfKWNcw4qnQn6Dy/oMQTGWkNrI0Bl05Kval1Jeku
	p0PhfS9RCxKAZdkK4MC3/VWLwUvli/9CuWsEOGTvWDjGha/M/YPtikt7oF+lcBHTkRL6qTmVbtj
	nFwajPYemm5X87KBPTBUJ5qak7N3Jv+XnSnXwbo+aP18P4rxEzXrMDBhMmCNR1KauZfmmbsoINR
	jaQEZHYYMNzqBUp+PM5SHqirVHtWgd/1uDhhLsHlJTpuYGThG8//MAp8T+5Du7iFWiEGiTrGgac
	zvDhrpd57G+Szpt3YFv3rFn/x7ejKOez4ulu0tx/nErlJDdI7gMCbEtrKgehliBKbRkL/Ik47xr
	NcVCWHt+Wh3+DIBirLE4S6Ds30CtSrQMCbNY6zhXrNWe2srTLOKUI
X-Received: by 2002:a05:622a:5e18:b0:4b7:8cf8:21a1 with SMTP id d75a77b69052e-4b78cf8257dmr87539341cf.82.1758017962614;
        Tue, 16 Sep 2025 03:19:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHRX7VgG6Mvq4kDoTzOqcrX9aymRenqpozVFQTu+puYSIYn8Xg/8lhSfWflWu0YJbAs1S+Zjg==
X-Received: by 2002:a05:622a:5e18:b0:4b7:8cf8:21a1 with SMTP id d75a77b69052e-4b78cf8257dmr87539111cf.82.1758017962162;
        Tue, 16 Sep 2025 03:19:22 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e65754ab0sm4211645e87.132.2025.09.16.03.19.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 03:19:21 -0700 (PDT)
Date: Tue, 16 Sep 2025 13:19:19 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 3/4] regulator: rpmh-regulator: Add support for new
 resource name format
Message-ID: <yjal62st6dx3x7jv7lz42xfkw6xyzc6b4sfcvdzigcf6ivkyp7@xmwy647h3ohm>
References: <20250916-glymur-rpmh-regulator-driver-v1-0-bb9b00e93a61@oss.qualcomm.com>
 <20250916-glymur-rpmh-regulator-driver-v1-3-bb9b00e93a61@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250916-glymur-rpmh-regulator-driver-v1-3-bb9b00e93a61@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: PHmlRuZvyI8jsd9jriLp6e9l2LFfELOz
X-Authority-Analysis: v=2.4 cv=A/1sP7WG c=1 sm=1 tr=0 ts=68c939ab cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=9nMCXy-jIdBvRpzB-YEA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: PHmlRuZvyI8jsd9jriLp6e9l2LFfELOz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE1MDA5OCBTYWx0ZWRfXzeeLeE47ihVh
 nhdWMtxgEwEHi7VHIaTF7HclQ13R6lxYHjy2TfliRazXfnobZjXddyLF2NuMQpVusnEa9IJm/P6
 Sq3iUDUChzz9AMBSPYJWIlOxBDc6NAi+krsyZFpBhDWJ/TjShF2wCMAzuMELTZzvv2zVY5Zbhtp
 Wg/sn1s2C5R2z7qQyiG3P9zwe4V7MvXM73D4E6Jgf0SZEMUBFTSFAKzVAbA/pO2cBWvI9DIvVp3
 ztc2HZdvHnQc3LAOYJ+ooMcyVN81sUmDI9NZjvsjcB79cWM2CaTe6V82hGyzxiIyQ6JtTo96hjU
 wvFujUJVmeK1yJ2G3Sp+y6VoT+RQREZIT0Rvo5zUrLw3h3mD1TwniyoyofcFh7O1+0+K/6WXdbl
 PQh159nw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 spamscore=0 suspectscore=0 bulkscore=0
 impostorscore=0 clxscore=1015 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509150098

On Tue, Sep 16, 2025 at 01:28:17PM +0530, Kamal Wadhwa wrote:
> Currently rpmh-regulator resource name follows this format:

Mention that it's a resource name inside cmd-db.

With that fixed


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



> `^(ldo|smp|bob|vs)[a-n][1-9][0-9]?$`
> 
> (eg - ldob11, smpa2, bobc1 etc)
> 
> Here `[a-n]` in the resource name signifies the `pmic-id`.
> However, newer firmware follows a different format that also
> includes the `bus_id` as well in the resource name.
> 
> New format:
> `^(L|S|B)[1-9][0-9]?[A-N]_E[0-3]$`
> 
> (eg - L11B_E1, S2A_E0, B1C_E0 etc)
> 
> Here `_E[0-3]` at the end is the `bus_id`, and upper case `[A-N]`
> is used to denote `pmic-id`, while the regulator `(ldo|smp|bob)`
> is replaced with their initials in upper case `(L|S|B|VA)`.
> 
> To handle this properly, do the following:
> 
> - Remove the `resource_name` member from vreg init data
> 
> - Add `index` and `regulator_hw_type` new members, which will
> contain the index number and the regulator hardware type
> (SMPS/LDO/BOB/VS) which can be combined with the pmic-id read
> from the devicetree to generate the resource_name.
> 
> - Choose new resource name format if `pmic-id` contains `_E`
> in it, else fallback to old format.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> ---
>  drivers/regulator/qcom-rpmh-regulator.c | 1134 ++++++++++++++++---------------
>  1 file changed, 586 insertions(+), 548 deletions(-)
> 

-- 
With best wishes
Dmitry

