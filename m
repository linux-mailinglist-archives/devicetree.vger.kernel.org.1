Return-Path: <devicetree+bounces-275386-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mkB9F10xtGn4igAAu9opvQ
	(envelope-from <devicetree+bounces-275386-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:46:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B51352864BE
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:46:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 85EFB32AE761
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:41:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2DB13C3431;
	Fri, 13 Mar 2026 15:41:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Wyq2R13q";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jWMcsWqW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3739B3C1976
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:41:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773416507; cv=none; b=brKl3FM/vosJp2W2YWnFNrk8VpubCNCLDzpWiP9EgG1ufS1qyx8R0321hi8QFf4I61VAjO6+QfgQNk6yxyFCioniTyH2mxjCEyAKXdTdKWLmKgfuZ7dQ2/AaVCHiCoOxVQthHzsgi6E/HsJxfxVPope1BuNL7hquImrik8VIO+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773416507; c=relaxed/simple;
	bh=MaiIry6g1HGAhKzGVifNyMsE7l9EPQrOe+s3ZJ/XqnY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MCVWpIzPnyYqiaDySWDZFdJOPckKz3MZjkIY30wEKF/dErOb8/VXHzp8ynO7BxNnq2TibcCgB7WQmdU+s1yzv3ALRW026aq0h760dVfxmFdelL4cSA1tPUEJM/8Nf8H/SSGbzCTGATwOoJfPvQicsu5Kw6K0lzhMG5zp2f53bEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Wyq2R13q; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jWMcsWqW; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62DBtw0O3229811
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:41:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=3huDFL/uMHzUyF/m5Jbypl50
	A1EHb0E/+PjkLmvRWTo=; b=Wyq2R13q9o/OD7KN1zwANuwq3sI3bpjvBs5kTnpz
	szKqQYaGWr6fRxkPO4H5OsyUuJ5OzJPHpKH5jip8P5aInYOBF0iijWdALEO6Y/cR
	grEralZ51vN/COja16IW+SEBJqOSNoSYDUNsabRyYaURSVLLGaR0Bw49DgFw9DhM
	a+L/3D2QRCGdyGhiA969NEWYNzcNsHmyc0GFIUB8cH/LjKsF4okWqDYnGglz/fQl
	uX2ELVnCGDS217qoVTuI8gig7SNb7RxPV5Vw6/kWSNhhBvFWpXvINJRdKcZEvoiR
	EWg4d9l+mD/Kci4iEXUIgkPZ9jxo2GAjFjCY5tHPBp/llA==
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com [209.85.222.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cv8n7jsuc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:41:44 +0000 (GMT)
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-94e9ed32d5bso23231818241.0
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 08:41:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773416503; x=1774021303; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3huDFL/uMHzUyF/m5Jbypl50A1EHb0E/+PjkLmvRWTo=;
        b=jWMcsWqWs+6Sme/WL2/PeQGV4fnEYKDBOyz2HiapoDysO1VpIwG8clofBMy3ujkC7v
         UNabBhxseKtInmtlsyNBkI20uspKlBAjTGre3U4sC8MOiU8sL1kQKS4e4IpX33P9BwHA
         KgtNneYhRzV9CzV/oaOduTGHFF97lLhc7UrVstNmUeUjMvANkT9uwh1aENqIv8exeGHc
         NuLGZTTB6EpscJtUuAjOPB9iMi6bwwc+mGm163TSzooVcas3O5wHST8LuuKLITmHCvT0
         AGqyeSXxnHq0ITIMIusFbOeDAfL7ePRBKL/LMHR/XJ2vsjN0G1pfMITc3q5mxjLyZeAo
         o6SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773416503; x=1774021303;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3huDFL/uMHzUyF/m5Jbypl50A1EHb0E/+PjkLmvRWTo=;
        b=fM9a3vz74xwsXU+iIZD21FlqYcboNvLbYyg+otTIlzA/pG3vBY2CMlxQx0TfrGq9jM
         PO9kuaixiXNvBt+FEIDCW/8erLI9VuNYP/ll68yspOPk9Sf2OaI7yExByoHAx4YIHpKS
         to5yBfQH6uYSsDSonf+HBwWrG0Hj8ahYW4VInRj32wMbV7F49z2sg22xAZ4RRQltWB9s
         dQ1cS5cBP4PqSkbBxdU2i9ucPcriA29IXFUEgvqzsSNyFrMKCEKE2+Q8+mQ5PGE1sSyu
         1sm6eqRrPcZV5HWA7VIbnxegpzlti/IkElFWPygqfLJLDC0uVec7JEWQEoBk3s07wjtD
         jABQ==
X-Forwarded-Encrypted: i=1; AJvYcCVIxjM6Xssz9f7qTVAFOSML7ROFDjirNDOElUZJhUkwXDM+6WnW+6Y83Luox/D4O4fnbYD0Qgpyi7ww@vger.kernel.org
X-Gm-Message-State: AOJu0Ywi0dG9SxBrGcRhdrBAIszHHRmmH/8y3VDs1tN7+iXaTUFop0ie
	ZyMVeBYYrSXerHJdzs8dpPGKQerS3M/OduXijBvtQkQktyD5sPRc6xDLcHkwuiNJDo3YbHrDdSH
	y0qXbEdhNA/VOBzOYNy3+RsXoUsmLPBa8dkUwSN37EmTJv4Ej08ir0ewguyYX+paA
X-Gm-Gg: ATEYQzyLE1EzU5jPfExZ2zQoYh944gC2CitMTyePK5lGKI2CmGjJ/q2+XDfC79Gah92
	L2Ei4sowOTcqB4Xe4A9mKMQcd/dYBOggrB1SOwV0FJb9D8WqWvA6ScU9/qJBbQ11Ncm3KjzmtAQ
	4PD27ulzj+VChhyf9f5LPIeHQDf/6RXi8Y3LpFxKbDszQa7GAcVDIzbd1wxCzYsZJJpXB/UZROx
	7CHA455ROylOpZtfPdSfPANBrUakVS24SJDOaaW8znQzgXHVZtqwgJgLMW1zleSB0Cetgsi4oab
	6D0UVugZeRaJL08+SKjHeB44r47NmRxKNuoVIiMZz/Rg2ozS971rjaDvWZ7Z6qGG6QZLb1BqfE6
	uNPe5gQT7jHvrMQthx/PpT9RMjWONebOGIPgkgNC+8N7eiBIr4GGrADxzy4ErvF8CK9WjuIYM4q
	1fEBI+BDPR+w8o2QakYII+Rxfo/ZUlghQy+g8=
X-Received: by 2002:a05:6102:508c:b0:600:a2:1397 with SMTP id ada2fe7eead31-6020e5345d4mr1755128137.25.1773416503383;
        Fri, 13 Mar 2026 08:41:43 -0700 (PDT)
X-Received: by 2002:a05:6102:508c:b0:600:a2:1397 with SMTP id ada2fe7eead31-6020e5345d4mr1755102137.25.1773416502957;
        Fri, 13 Mar 2026 08:41:42 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38a67e5ed6esm14182221fa.23.2026.03.13.08.41.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 08:41:41 -0700 (PDT)
Date: Fri, 13 Mar 2026 17:41:40 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
Cc: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Saravana Kannan <saravanak@kernel.org>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Stefan Schmidt <stefan.schmidt@linaro.org>,
        Hans Verkuil <hverkuil@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Vishnu Reddy <busanna.reddy@oss.qualcomm.com>,
        Hans Verkuil <hverkuil+cisco@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        iommu@lists.linux.dev, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: Re: [PATCH v3 5/7] media: iris: add helper to select context bank
 device
Message-ID: <5a33eitlctupl5b65zr33kukfgru22qldkmfiyzlq6buczttmk@5nayj7qea3fq>
References: <20260313-kaanapali-iris-v3-0-9c0d1a67af4b@oss.qualcomm.com>
 <20260313-kaanapali-iris-v3-5-9c0d1a67af4b@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260313-kaanapali-iris-v3-5-9c0d1a67af4b@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: aGLoJuao5KmzSfcgBFHefS45oBZvAWUY
X-Proofpoint-GUID: aGLoJuao5KmzSfcgBFHefS45oBZvAWUY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDEyNSBTYWx0ZWRfX3Xn47Rw1IM9k
 81IjDHEwvnhOTfCcQoZ3ch2M4F+uIcMpoMI1wcdJ7cInKfBOYyLKWywJu5ycPgyMMz8cmT1IeZh
 cto78pStX+RtLe8PqmFOX/uFGG6SdwzbroEZu8rhbJ4l6lvSzhscWncNesTRdHQdGQhlLYbThFO
 q5L8RGWXVfrZj9VUROt0s67kKljWIWhrXsRHcsmF76ZEyg94OVtSCE1hSv2PErvBo0tqhZOQ0Xx
 zA5ZuHjBZ1OuDLkcm/2Giiho/WymVil/6C+/eX+v7FppvjPt7LJGiU66qOvjeamBml41ff8mN4H
 tuc7nik8c0r5R+fmZRfHtkh7AFt2AhQU3ujl2S5Cei1WanK1lZeFFss5oXhZTk/bnBFrUx2hsGs
 TKXJfofPqRD8W+m2gwH8Gnq6VrY+hg0pz6hOGsXTu1QEhlc53g6uEtRuqKp28Smb9m0iejJ1RJQ
 H/Cw0V+eGYGj1+ve5XA==
X-Authority-Analysis: v=2.4 cv=CpCys34D c=1 sm=1 tr=0 ts=69b43038 cx=c_pps
 a=ULNsgckmlI/WJG3HAyAuOQ==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=EUspDBNiAAAA:8
 a=m0VDa53i6esOPautn7AA:9 a=CjuIK1q_8ugA:10 a=1WsBpfsz9X-RYQiigVTh:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015 spamscore=0
 priorityscore=1501 adultscore=0 suspectscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130125
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275386-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,cisco];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B51352864BE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 06:49:39PM +0530, Vikash Garodia wrote:
> Depending on the buffer type (input, output, internal and interface
> queues), associated context bank is selected, if available. Fallback to
> parent device for backward compatibility.
> 
> Co-developed-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
> Signed-off-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
> Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
> ---
>  drivers/media/platform/qcom/iris/iris_buffer.c    |  7 ++--
>  drivers/media/platform/qcom/iris/iris_hfi_queue.c | 16 +++++----
>  drivers/media/platform/qcom/iris/iris_resources.c | 41 +++++++++++++++++++++++
>  drivers/media/platform/qcom/iris/iris_resources.h |  2 ++
>  drivers/media/platform/qcom/iris/iris_vidc.c      |  4 +--
>  5 files changed, 58 insertions(+), 12 deletions(-)
> 
> @@ -187,3 +188,43 @@ int iris_create_child_device_and_map(struct iris_core *core, const struct iris_c
>  
>  	return 0;
>  }
> +
> +enum iris_buffer_region iris_get_region(struct iris_inst *inst, enum iris_buffer_type buffer_type)
> +{
> +	switch (buffer_type) {
> +	case BUF_INPUT:
> +		if (inst->domain == ENCODER)
> +			return IRIS_PIXEL_REGION;
> +		else
> +			return IRIS_BITSTREAM_REGION;
> +	case BUF_OUTPUT:
> +		if (inst->domain == ENCODER)
> +			return IRIS_BITSTREAM_REGION;
> +		else
> +			return IRIS_PIXEL_REGION;
> +	case BUF_BIN:
> +		return IRIS_BITSTREAM_REGION;
> +	case BUF_DPB:
> +	case BUF_PARTIAL:
> +	case BUF_SCRATCH_2:
> +	case BUF_VPSS:
> +		return IRIS_PIXEL_REGION;
> +	case BUF_ARP:
> +	case BUF_COMV:
> +	case BUF_LINE:
> +	case BUF_NON_COMV:
> +	case BUF_PERSIST:
> +		return IRIS_NON_PIXEL_REGION;
> +	default:
> +		dev_err(inst->core->dev, "unknown buffer type: %d\n", buffer_type);
> +		return IRIS_UNKNOWN_REGION;
> +	}
> +}
> +
> +struct device *iris_get_cb_dev(struct iris_core *core, enum iris_buffer_region region)

Are you going to call these two functions separately? If not, it's
easier to squash them.

> +{
> +	if (core->cb_devs[region])
> +		return core->cb_devs[region];
> +
> +	return core->dev;
> +}

-- 
With best wishes
Dmitry

