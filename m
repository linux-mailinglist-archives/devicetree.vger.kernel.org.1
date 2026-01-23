Return-Path: <devicetree+bounces-259105-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aBi3NsvGc2lZygAAu9opvQ
	(envelope-from <devicetree+bounces-259105-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 20:06:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A8F479FF4
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 20:06:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2383C30062CD
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 19:06:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA66C254B03;
	Fri, 23 Jan 2026 19:06:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NfOUlXjS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QyQAbD3D"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75E09224AE8
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 19:06:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769195208; cv=none; b=cb5tg/NGVH0UAiUaTarbDATLL+pZEBfr1uEKCc0ZpT6zQq3mYCE8y832X6+v+ex9NeTZ96rI8RPaZ9i2bBWrFm5rXiFc0Oa1l7zPyH+rSk/SJ8AQ2zcHtm+FnFKA+Cmswc4bQuMzkpLHmU4XtfMQPvklGvJMEpM+r7alRDd7wQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769195208; c=relaxed/simple;
	bh=cXeKyQn1zrB0s/g/Zlf2fCZzGKuPI1EYK4pmTBNpp38=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ekwRnR2ZefXl88sq+LDkCZD6eKcXwQfpJfIsLzmCN/oGSTtdHB2sRyj59G2xFDQCfh/Loef/zlZ9icyWBDrFOtOaWewNbNTojdBkxwgc7/Gb4oqupuniU/oAvLReHFLC7AgoIcxHaUBeUJNQDAVArqfdoQ6bh2d+Y9bd0BFTuI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NfOUlXjS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QyQAbD3D; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60NGZQoe3649248
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 19:06:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=qKhvdckabX5eF5ZjxFIcU92u
	hukFwsWBMCWJkQDEYrU=; b=NfOUlXjS1b02dU7qA4Vd6KoPlmWdROeLrKf/AoBX
	anCE3dDq/U275V9JxV1ZPImmYe1Afub1vklQv3gjsEvuMR6XQ/2wrm25fholb/YA
	1cWRb815a9Ejj79yXkppaqYvALouRuHplp1MMw2INZqGecdvLYCvNTxIvuMZhgex
	MV27y6NOatoS8CfvYcmhA21DYkqcr+ainL6sHzNLEN8P9qeXa7HMT2bdz1WDOnqm
	t8tJCb9YM1cqoQwwdcWV2VrU6YmvlNIBXf6/9LqexUtxoLUYDH1txQ1jBR4y+Yf4
	zEid6jc/B4NLpcU9DH1hn1cAqqKPvZK78xWdXs/QUDa6Pw==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4buy4nufqm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 19:06:46 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-5ece01183ffso2232407137.2
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 11:06:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769195206; x=1769800006; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qKhvdckabX5eF5ZjxFIcU92uhukFwsWBMCWJkQDEYrU=;
        b=QyQAbD3D0EXb05wutDINEKwDkCyuBlIlKqe7k83zN6q1WaQVbpCCnsiIHsx6e88Wpa
         +eja8yXrTaAnCm7Sg3Jajuc3VQ0fzEPA6oRgkxDoo5SICZA92g0ALKOQ3JycwrLTBpN5
         PlSf2HQ8jxl420fOaAaNSk+72K1f1in+tsFbHVlq6VgQTU4tMQseLSoZmRf1th2eeY6E
         zw9aA/t1tt2pPRczoDBTARlhNAEJP1kolPS9uyvJawFxLyb2aT6UdvCqZGazZ+j10uNf
         9Pu32yAOvTz9ZWHVdKvmpWonaDDVo5css1KqpZOiMamhvhPCKT7VM4GF13t36wdyTvtZ
         wuEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769195206; x=1769800006;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qKhvdckabX5eF5ZjxFIcU92uhukFwsWBMCWJkQDEYrU=;
        b=cgS30b0eFOKnCUHQSxSO5tAkWtANESyLwSxHBx5pA62k8gjXrxiYM8QbndIyNsW+xq
         kzHU9lU5IAnv++UojeSzZgHNnh8gDuxG8h9wcxtqGRsU2SIR1QxKldLEmxbPShidjGDg
         Yv6c5dEF/0AsQphZnecy/2fIUO45fUE56eUv/9ytbrQPmLoBo97p/1DHJEove5VEwof3
         wh9tznD50IMdcy/nwmcBe14RfWJJ1OOyl4oaYpxvx82+0XlD8caAr6HhhGMUi278QI0J
         bi9XOQjE2R3RQfyCr4y//+Km2nbHqS/sAuTWqIiF4YZkwEx/exQlRGw0Ll2Aid69dGzs
         0zWQ==
X-Forwarded-Encrypted: i=1; AJvYcCWYRQiN/DpkLHcqF6ZRo4+zwWTu5VD1pyQJVHjleeiOIWWj/uwvnZkBLq581VbQonfv2TP+gDj3JpE1@vger.kernel.org
X-Gm-Message-State: AOJu0YwKTBkWEIzPEAINVV9iYpCKy5VClC01MY2b+UCya5trWB2QMfaw
	s1AE1rmtoXOuPkYUuhgOM3rhitC4UtB+wwSftshgRymdUZJA9NP+sXEy7dCjU1S3B6pElEj09jR
	25WSRfQH229btbOSKeY9JcVhj00EwCqMC5HzQbfI1/0rYmhqci5Tn9p/As1UxuTz4
X-Gm-Gg: AZuq6aKU/ChTzlGrWF3/5REYyWO8ZyrxI+nKUwLhAGMjvNTQx5zyRpEgxQ/4FF6qzeU
	7OZMjn+tbxeaBz4J8h/f9PqtsuMBKqLO47bSewqKQjwl6+39BCvdlrJmEt7ooSQpfwjoPoWZ4xn
	qUV1ThzFea/2ta7Tklfx/pj8w3wvCIlW0DaoWsQXxGybKWa+IvoNyFDI4Oqw5/mhY2tBIyz3oSw
	uM77HDX45SFOzawkN/avBYrPfmat//JG+9/+kg1XvicxHZBdMjtDtHJnm6ESlGI5vMQdd7K8BRV
	z3b38uBLGyA3simCHjGY8jN4t2hu9W2DPNvkZoulN5gOo3ewPSSTv6sEwrqindxYJ1HdWlMLlcd
	V1diKA0bYqMruaXXDGSbSnpsdxEjsTrjUWcPpeUKHUZ5h0rteo2mnbODyrNL+dh09UPevGDK+1W
	MId9FFsQjwREEQHDRrznelCjE=
X-Received: by 2002:a05:6102:950:b0:5f5:3d46:e5fb with SMTP id ada2fe7eead31-5f5584d5694mr572030137.5.1769195205738;
        Fri, 23 Jan 2026 11:06:45 -0800 (PST)
X-Received: by 2002:a05:6102:950:b0:5f5:3d46:e5fb with SMTP id ada2fe7eead31-5f5584d5694mr572025137.5.1769195205315;
        Fri, 23 Jan 2026 11:06:45 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59de48f0259sm836004e87.45.2026.01.23.11.06.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 11:06:44 -0800 (PST)
Date: Fri, 23 Jan 2026 21:06:43 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] interconnect: qcom: Add Eliza interconnect provider
 driver
Message-ID: <mj2yai65bpxgky7svixb4hgtbekrmbym7fzc4rw6t77bot52iu@h3lxsrfy5zaw>
References: <20260123-eliza-interconnect-v1-0-010ff0d100c9@oss.qualcomm.com>
 <20260123-eliza-interconnect-v1-2-010ff0d100c9@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260123-eliza-interconnect-v1-2-010ff0d100c9@oss.qualcomm.com>
X-Proofpoint-GUID: AIKmmXLR7rq0FdxRn1rd3Khw22a-Ythj
X-Authority-Analysis: v=2.4 cv=I5lohdgg c=1 sm=1 tr=0 ts=6973c6c6 cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=IdhJIH7UHSwZyGBE1u8A:9 a=CjuIK1q_8ugA:10
 a=-aSRE8QhW-JAV6biHavz:22
X-Proofpoint-ORIG-GUID: AIKmmXLR7rq0FdxRn1rd3Khw22a-Ythj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIzMDE0NiBTYWx0ZWRfX0DDd0bzStmC2
 6tw/PWHXOR5CMCkfre1lxEbF1kV/VHigGcYnAEXNkJthybRLxdPQjIoFjBWjDNoOVvlbPCYtCvK
 G3c3dNppNaIPcHMHjvFx64QtpUkyLstKpHJ8jccOuK9ZV2aKcBhWRml0eEcAjLz91vUKUOqsVw5
 c8y3MNEG+OUU4KRDNHThfNmuR6BZFcjUTrgZx3WImgCX0g+tCt2ajawcSdppuXLJgVvdohJSDBe
 iVzw/F/jszG4/2CWZthBb0xkoATPJyqB+hI2skJYjoyZnRDdMdDOp0jy1aUCZLpU3y/ibBVAQ9A
 yFGmE8Tjdl900/cpe68JNrPkrJN9ExfbQsO0H0eV8CTyV3aeCHMptAZjEf3TA5tio6FfbGanOk3
 MMlHi6dSAInNIgdASFFhuAWLujghwptJdw3kwPh0w/iXNSd+Ct3e9SVb2qYsnliuJ7W8fbKRVQl
 MR/06D54bl8qt9rLBzg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-23_03,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 malwarescore=0 lowpriorityscore=0 phishscore=0
 spamscore=0 bulkscore=0 suspectscore=0 adultscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601230146
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259105-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2A8F479FF4
X-Rspamd-Action: no action

On Fri, Jan 23, 2026 at 02:43:21PM +0200, Abel Vesa wrote:
> From: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
> 
> Add driver for the Qualcomm interconnect buses found in Eliza
> based platforms. The topology consists of several NoCs that are
> controlled by a remote processor that collects the aggregated
> bandwidth for each master-slave pairs.
> 
> Signed-off-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
>  drivers/interconnect/qcom/Kconfig  |    9 +
>  drivers/interconnect/qcom/Makefile |    2 +
>  drivers/interconnect/qcom/eliza.c  | 1586 ++++++++++++++++++++++++++++++++++++
>  3 files changed, 1597 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

