Return-Path: <devicetree+bounces-264395-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4B/OJ7ski2mTQQAAu9opvQ
	(envelope-from <devicetree+bounces-264395-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 13:29:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 048F711AD33
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 13:29:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 707D630480C4
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 12:27:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E5D8329385;
	Tue, 10 Feb 2026 12:27:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Tos0V+pK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FUTvyl+C"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29EBD329370
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 12:27:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770726464; cv=none; b=DrGISLziO16KveOWMtiVcCY9ZKf0tNENogkGpLIkNAKk70YurK/mGGlGyb47BzjnSDA7msPrcWKFzBjif+oIL52cMSizLweC3HaRUyciEihdOwiFF+iHJL6QbCOQG6EONcdFJCAlsrVifsnF/qjFCN//RbwYbn5MmeV+z4LwwyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770726464; c=relaxed/simple;
	bh=efhsIlUcgrxJHBgx9tFahFZW3O2XY8N52nafIZ7BREo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=k4np0rzMLsrJ/AhTOaSvCfGVqKcAHU+kmvwu7xB/oxj6fW6L3ttJ/LEr1IUllcy/zwV5EKhD7f2ZNX+AONLlhYJzyhzlUzwKwOpcuHgeI0NyVDU6qTKKylPcVfdkVBQ5Mj5Z4PT/eCmhiZOlNpCW9G6Ow3nfILO91UcxgpRq7gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Tos0V+pK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FUTvyl+C; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61A7IoHF441723
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 12:27:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=0MYFCYT/8/l+a8Upz+OX+GW9
	39DYsFckcT2Q51X/lXM=; b=Tos0V+pK+QqxYCJJ/XXhqh1NJx/89Dlp0BpLQ8Ni
	EBlOooAIaKNPikRXakPaLq69GB7Zk17z/P5iGDezAxmb99Wj0w9fB96VV/4HtDm3
	T5gFT8fI3/0tB19gIGg5meqVh0xSStFlNf4ZO9CscLdZkAMzcG1ehIALzb32AtA6
	ia+yF8EwgdPxPctpyMfplpEi1AT1i/2Fn+kGDiXjNpwNCP7lHaKPH26ijVeVo9qe
	Xwwofw82Yp7Heq1xq4Lk9g3InCUokhVx/PqfhvjYElfX59grIOnvlxyNhn0anDIv
	cf4aL+1thUBtbw2Ec6uaqg4iAbQ212Qqb+wrc575Kih12A==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c7qp9jjb3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 12:27:42 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c52f07fbd0so1715834885a.2
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 04:27:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770726459; x=1771331259; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0MYFCYT/8/l+a8Upz+OX+GW939DYsFckcT2Q51X/lXM=;
        b=FUTvyl+C/XMJbwU9l5bS1hQG4bETScic9RyEXpJYz1zpPpGg8nBQVFZ/pfmEIUNAK3
         0uW8VlV8sgCocFnKC1sCRf3gam1yhclkwp9mLnjRtyWuYvv1l1AODix8liNm+adjdWMR
         3/YFwXBCTDecgjvnAvf3zj7kgbrUzVQxD4uTdO+xvdH8G+hxDv6LORRPmDHEx9zUzNup
         DOwt9s+myCH5xIdGyIkYkCiODCkbcsAUMCYddF7lfbXNWYkJpHWbswydkawksUs8D6Lx
         uG7LmcT3BGCNsrvqMc/TwZpKL4S4qbAdOU37P6vLFS9LFi6+A+hAcEJd/fkyLqF2ijop
         csOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770726459; x=1771331259;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0MYFCYT/8/l+a8Upz+OX+GW939DYsFckcT2Q51X/lXM=;
        b=wtlC/Pih5T2uH4sf9tO1N1IcgokxOyb4uDAV2LPnd037DXMkIo+COIJe6OuUSu0OSx
         GrWa+R0RoioZ/gGVuuehwxaCe3+sGasUcxb9xLTihWzq/wsPySKRavksqFNfmkItZ3r1
         dpZ2mQ5+7etPm6lh3G61Trz7CWueMvZiwIcY7dy6G9wRWbd5hPhCyQDiRGwOAF0j1OtL
         UjWsy6lcxEToDCXkAXZUjPdQnANK5u0SEFrZ/a+22V1flixGeeTh1sDZx8Gn6qpAqz05
         OqwsyYe6F0mXltIuoB31pqaRQIRatF/y6Xpi7I5B9UF+d6UiPfHu0KLOMcduqzaVgdHG
         8NBQ==
X-Forwarded-Encrypted: i=1; AJvYcCXn7zFVr4VCnuXpl0ypYHWETi9ppVah9ZQqfNYZgfXEcsrIcu3/NUz7jgfYZnIRHR3dv/YhmwcxQdll@vger.kernel.org
X-Gm-Message-State: AOJu0YxEUmWk72k6FNGti/9bVL0Z9kjk4tyvknMxhClggtCZ4AhaFsY5
	bVaMZn/x6R1imzmfyYLhHmdLn1APrQRhbcIUHksVvCtS67gU+BstaKD1FNPjL2/+hvl7WBzQkxo
	4+NvaHHZKVzfOmf00fvYie147HaCCJNDsr9QLHTHdRJom+L6e9bq1UO3AuZ7Ds8OY
X-Gm-Gg: AZuq6aK0R2SB00Sg3+WPAbxM8AkyTlWQ+jwmdVXg8vlUUcmUN7CxTkzDxFm3QHYbO0R
	ALOY4Zd7KV9MdvXm5PNEDCZ4YGhs3vmpabBsHDhl1vrBne96xwvlYaBswUZO9znWCoONOZvbkoC
	nnG41jpPG44vlU8cQVGAUXkhr5+kYlAxfXnDEPN5qroi+vuYtygM2QJ5CiQmjoPvyZrm8lxLMVY
	XXCHHxVWjR4tJxjgGtfY1ZEjvAdyuprFCpuOK4O/VckxP94ha1u0im4ERP32os1f/8CVbe43Q4l
	x2ULJMTm0EmyTwS7oKth2b29ZPD9JVS6OcfLwv3kSUqPZ9V/fDm1LT7TVfUROoyMTGprP/FAw56
	E1UAPvoBULZ0DSd46ck5Qgiig+vQVFFG3KXKAJ4dJESb8TjaCfrChw4lrule0Qe3p3wRMtNPxEx
	PtiUTiNiD0q7+45HoRGtkzLWAfYiRLaGdQzII=
X-Received: by 2002:a05:620a:1a9d:b0:8c6:ffe3:49e4 with SMTP id af79cd13be357-8caf10244cfmr2024234885a.52.1770726459346;
        Tue, 10 Feb 2026 04:27:39 -0800 (PST)
X-Received: by 2002:a05:620a:1a9d:b0:8c6:ffe3:49e4 with SMTP id af79cd13be357-8caf10244cfmr2024231385a.52.1770726458913;
        Tue, 10 Feb 2026 04:27:38 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-386b6236383sm32602591fa.10.2026.02.10.04.27.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 04:27:38 -0800 (PST)
Date: Tue, 10 Feb 2026 14:27:36 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, sre@kernel.org,
        heikki.krogerus@linux.intel.com, gregkh@linuxfoundation.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        linux-usb@vger.kernel.org
Subject: Re: [PATCH v5 3/5] soc: qcom: pmic_glink: Add support for Glymur and
 Kaanapali
Message-ID: <hrlgydepwoh6jwrxi7if6awparre2vhehxywshtxv6s5km6jkq@2hkh7qhawkxe>
References: <20260209204915.1983997-1-anjelique.melendez@oss.qualcomm.com>
 <20260209204915.1983997-4-anjelique.melendez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260209204915.1983997-4-anjelique.melendez@oss.qualcomm.com>
X-Proofpoint-GUID: eecYra1ukyId0nyXTDJgXtvfO4cBFM21
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDEwNCBTYWx0ZWRfX2StTsUIQGOlR
 SabnhN8qQe0Ni/OHU9bIloTKo1RHvx8u8KMshe/xqbkVKBRBUQSsxdxKG8ZtMBId0vX2eKBefLX
 jcFBf4vPglvL3lZaBNpiRNLbNx4l9wMDTFxphUVcA5u4eav2pjt4DBa10D109Jq5pZ8TGSQmPKR
 iiHXsgeWTLytCN0MoMgbEf3+Dr1pXYPaZgN+3scTfADCGJ5pcWoDB8n4M1agl1hP1ZHMEeWzCiT
 AI5Aq4fbqGxSws9Qc00JI7T1G943U9csx7T40s+r3cpEVmjzs/vnGBNddei9sGmMVaW2Ityg22J
 AgLT+ZE+lwZgfF4BJFraP70YyCXF6GPvTYZjBTglHDfD2HMvW4UuAVHLiTG2TjgU6NAiGZGis3k
 ZQHoVLlHQJIOHvfIH7n404FCyAgJNZh6L/lW7jkUHuqBj9kB4PeuhI7KOlt5ain25IKnvy484Wc
 mcRhvgDVPq8cOvrDROg==
X-Authority-Analysis: v=2.4 cv=dP2rWeZb c=1 sm=1 tr=0 ts=698b243e cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=_MtkEuZf4ZNMOBkvimgA:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: eecYra1ukyId0nyXTDJgXtvfO4cBFM21
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_01,2026-02-10_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 impostorscore=0 phishscore=0 lowpriorityscore=0
 spamscore=0 priorityscore=1501 adultscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602100104
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264395-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 048F711AD33
X-Rspamd-Action: no action

On Mon, Feb 09, 2026 at 12:49:13PM -0800, Anjelique Melendez wrote:
> On Glymur, a compute platform, and Kaanapali, a mobile platform, charger
> FW runs on SOCCP (another subsystem). SOCCP does not have any specific
> charger PDs defined. So, add support for Glymur and Kaanapali compatible
> strings.

Ideally, this needs a brief explanation that they are not compatible,
because of foo bar baz.

> 
> Signed-off-by: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
> ---
>  drivers/soc/qcom/pmic_glink.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/soc/qcom/pmic_glink.c b/drivers/soc/qcom/pmic_glink.c
> index df2fd03d3b33..3042261578aa 100644
> --- a/drivers/soc/qcom/pmic_glink.c
> +++ b/drivers/soc/qcom/pmic_glink.c
> @@ -397,7 +397,15 @@ static const struct pmic_glink_data pmic_glink_adsp_data = {
>  	.charger_pdr_service_path = "msm/adsp/charger_pd",
>  };
>  
> +static const struct pmic_glink_data pmic_glink_soccp_data = {
> +	.client_mask = BIT(PMIC_GLINK_CLIENT_BATT) |
> +		       BIT(PMIC_GLINK_CLIENT_ALTMODE) |
> +		       BIT(PMIC_GLINK_CLIENT_UCSI),
> +};
> +
>  static const struct of_device_id pmic_glink_of_match[] = {
> +	{ .compatible = "qcom,glymur-pmic-glink", .data = &pmic_glink_soccp_data },
> +	{ .compatible = "qcom,kaanapali-pmic-glink", .data = &pmic_glink_soccp_data },
>  	{ .compatible = "qcom,pmic-glink", .data = &pmic_glink_adsp_data },
>  	{}
>  };
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

