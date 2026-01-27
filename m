Return-Path: <devicetree+bounces-259884-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SO1aM4+veGlasAEAu9opvQ
	(envelope-from <devicetree+bounces-259884-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 13:29:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DF9F9457E
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 13:29:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C6059302CD23
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:28:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7686334EEFA;
	Tue, 27 Jan 2026 12:28:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oigmcdOg";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="e4yrhrpI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 030DC34F252
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 12:28:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769516919; cv=none; b=eBU6Cy/v9K6KZVcSFJ3vwi16xZl9OHVlIGEXqYrHN3qiKnZSN7fUP/DamOUdgqCQrHx7/aOIYqcqzOTLF0GjrFji4cptmkZ3SLwdvattemVEVPwZ1C9EGOBaxYCanXXyKEvmiZXItVHWR937WL5f7jg9mqAf7Br7gMY0JiY6H+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769516919; c=relaxed/simple;
	bh=0TnhOHipXq5IeJyOW/ea8YZad9WsYXgYzXEoGIEyjLo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=V9UETPkk7+Ys1Uh7KeYEWbYTLRU9KcSPAgWzLIFAPI1iSYF1XpabYYmBEq8DE9iRhagFTvpbqmFomH3EbSztB0N6Q5YHqgAzwhdGIdxGwIaRbyo+navlplCQ4Gi1YupenMH16mS/hPZK47myI81CXLRCgPkkqDNUt0h3Cd8hgZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oigmcdOg; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=e4yrhrpI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RBxLhc1193469
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 12:28:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=r08M33JEjquttJJCuf2dkn9t
	t3ROqh3wPBfGPr9pLQM=; b=oigmcdOgqMacdpd8S/wlreL8YZQhRANHFufMxqmM
	uF/PTXEo3hVEMUE6YqmNpMXVuMURm2v9bznzdGLIwVxku4ihEszsAfMg8TrRWIWq
	tjIqZw5773FoCb4+lxbH/dWVS+QZAoAYjOn96hvkOLg13Grs4UFlYiiFbrO9hwN2
	gc+ltnHWhD+ch67GOrN5KhmMVFxe+wLO1te9mLNIyDr2+JJVZ/M8LRXxk+NL0C+2
	2lGGdk4rfiOCrh+4B/ZqCj0Zh6H3bcIftWZvvNjrcktXD/NnIzp2tcZx6Om6NO6Q
	WSl0FuTC3p9Kke/hr6cYTmRmTLC2hLPOij/TZlBgZMctsQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxdv9k0mp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 12:28:35 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c6cfd52556so1504146985a.0
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 04:28:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769516915; x=1770121715; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=r08M33JEjquttJJCuf2dkn9tt3ROqh3wPBfGPr9pLQM=;
        b=e4yrhrpIbP+gMKK4TBGUOjkPEb9M4thdjpMbMTANXmeg7aZ7NQmF4PF0aKfO0F73+P
         4ReVU9JZFrPhJAWo2ozs8vb5CmbAOK7rUDNPMgAkr7RjMO/m9SGsQeqU7LE+1LsImDk0
         z15c6HkiWW+Q7RPQATabCk+Z+89tJfBh0NlGJeLc9GXXEJAe2nMJQbTDhhzsMLUeGgm+
         umo3tv7NjQVabiRIEDHtEfhZc1+aIA5fY6EjJ6qhN2UFkV9j20sPZl74eBbgmbHKtll5
         a/QNRQNqYnYo3UHGz8/4lCTkaBGASdQpEmKEo7nu0Sx9IwPj5+4qNK0HbLUpSXszbjQI
         zL+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769516915; x=1770121715;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r08M33JEjquttJJCuf2dkn9tt3ROqh3wPBfGPr9pLQM=;
        b=C/fLLiqLNEgnTGq8ZU90KOD1dQ7TWUohMFOEZ7/Q0X92ixp/vEElPcYsiM6Jz/LKs2
         nUMAfS2sythn12I6+me5pZBulM2JMppvp+ar88ePWlEXlTcksOJBt9H6KIYrvqjN0ASC
         STZz/rEedkt+KpZV99p27eQbSxM/FmPVAp/UvC6zm6A4ZM8iFw0075e+MpsiJsivHxdn
         /tqbkxwgBZAmSQu6+KoOAjlAEPwmA1LMZJSrZsn72c9FWFfknRPLh47UYCMg2z+bAP4W
         YvAuRd8SQJ5/MmC84ZeOPg2IrIhreydUfrRiZoV5no0Wl5YrXQj1YYAiPoGtwhdw3joz
         slvA==
X-Forwarded-Encrypted: i=1; AJvYcCXJw+RmYmL3eyhRSLXzfIq1m5I+QZzFOa5OAkb9/38ZdqOAwaG1LQiVNDxOsNNAti41rcq6AOL72URS@vger.kernel.org
X-Gm-Message-State: AOJu0YxRg6XbYHtB7YXHnKMOySViwjYc6+QGUfelFRQOVFlV4FP23T1Z
	5xArRVo33oo/qIke80DDlhhHGPmNcy0EUNiC7kywfKcUMY2fDIqgChYHGg5rJu2G+5h9NbZu5bl
	n8aS4YziM+/cqaJG7+SipKdHCBRgvKrz7PxxmXw3K+Qziynlh8YAIE1ZA1lM3SftE
X-Gm-Gg: AZuq6aLlmonPgmGJfuXv2WdrF4ubTfKAdmYTN8ohkpDUrFSkj1HtQhpiMoBeekg3w89
	deXXd7AL6eulSglFrlm0TKyrmoa20ZiVE5TYb0TUcvFZLAPwbHuHrpoN2R+CA1Ok4xxAHkQByeq
	Hzh5MokN1DacC4CvnYV1uELzzanpTIvJ3elR+C/uzoSm6Lj3nT0w/0W8GhzN6OfK+Pgi5tN4E74
	+3Af2zRW5aq738ihKmfpCPHhI7Dqb4xCOscef9pRs/kXy86NEZXSDt2isy5Qww6WiBTQfiWQXSP
	fB+F5gkAOk2q8Q5eqnzu8rADZsOJfW6mfgL1CHMmxgvZjcSnkvgiC9T2g/aiGiYJI0V6vtCOt9O
	ZjTnM2PkHaw3NsZ2BqZcEBE2nqPYGX6dfBcdl2ycDH4xIt9TywFtR6OiC1D/UOzka0uRHjesPHM
	SiUaLx3LxZnRHtZQC9D9p+6+o=
X-Received: by 2002:a05:620a:178e:b0:8b3:19e:307d with SMTP id af79cd13be357-8c70c232baemr127000685a.40.1769516915251;
        Tue, 27 Jan 2026 04:28:35 -0800 (PST)
X-Received: by 2002:a05:620a:178e:b0:8b3:19e:307d with SMTP id af79cd13be357-8c70c232baemr126998385a.40.1769516914789;
        Tue, 27 Jan 2026 04:28:34 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-385d9faf287sm31093541fa.10.2026.01.27.04.28.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 04:28:34 -0800 (PST)
Date: Tue, 27 Jan 2026 14:28:32 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
Cc: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Mike Tipton <mike.tipton@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
Subject: Re: [PATCH v2 2/2] interconnect: qcom: glymur: Add Mahua SoC support
Message-ID: <yba2z3v7klftzhmd7bghgj4y7orun2yo2bxzlwop7xflsj7apq@nx7znegfkmhu>
References: <20260127-mahua_icc-v2-0-f0d8ddf7afca@oss.qualcomm.com>
 <20260127-mahua_icc-v2-2-f0d8ddf7afca@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260127-mahua_icc-v2-2-f0d8ddf7afca@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=OYOVzxTY c=1 sm=1 tr=0 ts=6978af73 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=GtF0_HNWVELJq49vNZ0A:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: wDz5A3CiOXhO6PrqlJYHMo9PgQmNAKOh
X-Proofpoint-ORIG-GUID: wDz5A3CiOXhO6PrqlJYHMo9PgQmNAKOh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDEwMSBTYWx0ZWRfX28XjRuURyJ0r
 AcvpjVcBMNBBjO6RTWYn4SWdXKgEi+/NYyuiCF15BdpeRkCwWVIsAvA5XoYOuwXEFP5k/Qo5Yn9
 EYsvSw1a60v/SI+1nWCLNaN93MCNQQ4ZSUUofNCGfYdDFV6DSQ4IJV1xl4qFxX9zhoMcVRun2gL
 Rr32CVEjLEB/g4ikGt85spw4LeivdBwLw3HrTQlPcaI59q8uEqpL0EaJ9BEO9tRIbJbSe5fOvsb
 00+ublRTVd3htiMT9f/IKE4uv9Ov52x766pkPwk3l7SnRPwwiOvhbGR1jwCsGnBV897poLOUlvy
 +URJjb6DmPetTms1FyquOpJkB2j1vmfTrjIeJ3ns1IWChbg0vU3keBca5/L0XiojqBGbnDDTgZU
 ky+KvKBONrDCfffhzMz3BZp8OUdWCRLsRw6/FPxqRRpBo0FcExmch++N6qLwME3JN36ElwnnPsW
 jIRDftUjQRbyzc3EpQQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_02,2026-01-27_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 spamscore=0 impostorscore=0
 suspectscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270101
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259884-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5DF9F9457E
X-Rspamd-Action: no action

On Tue, Jan 27, 2026 at 03:22:07AM +0000, Raviteja Laggyshetty wrote:
> Mahua is a derivative of the Glymur SoC. Extend the
> Glymur driver to support Mahua by:
> 
>   1. Adding new node definitions for interconnects that differ from Glymur
>      (Config NoC, High-Speed Coherent NoC, PCIe West ANOC/Slave NoC).
>   2. Reusing existing Glymur definitions for identical NoCs.
>   3. Overriding the channel and buswidth, with Mahua specific values for
>      the differing NoCs
> 
> Co-developed-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
> Signed-off-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
> Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
> ---
>  drivers/interconnect/qcom/glymur.c | 38 +++++++++++++++++++++++++++++++++-----
>  1 file changed, 33 insertions(+), 5 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

