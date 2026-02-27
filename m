Return-Path: <devicetree+bounces-269412-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aPVOMFn5oWknyAQAu9opvQ
	(envelope-from <devicetree+bounces-269412-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 21:06:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 30E141BD349
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 21:06:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2F399308109F
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 20:06:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6DFA45349F;
	Fri, 27 Feb 2026 20:06:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SpgcyeDs";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZYXGG5SG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF24642EEC1
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 20:06:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772222764; cv=none; b=f7VJoX5FNdojvejFQMmC5CpZktu+STFcZdJwFFHcpfDIioO31FC/1AVimPjA3L/VOoKObCPTwl4UTNcjQE45kbKdvVmZUizm6Sh1cHASnDN8fXFedU8PLHmezGP2+752yvo9uxNGd7RMV0/A4jrPWbIcOxDsR6pTiMtIB4uQ608=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772222764; c=relaxed/simple;
	bh=5aAaE8gA2wGIKuGiNBgpXyCDhi4Gc1+RIiVU5ZNikJE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=b4YmCzYydlxQlbejmpIuozRBJyA7lkFiFNliU4QUDDE8ZGxVCWV7J+zTJWDyRs0Un5hkhB99JO4WeOD2Wv2PLYP5Fqy1zsOB67ImT9g50Yr6MTIeFDdvT66fCrJNYvXIXtO1WHdzXANf2C3GTowrNARPFlIKjwT/fOGPHxG9g0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SpgcyeDs; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZYXGG5SG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61RIlqas3732995
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 20:06:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=qmrycw3jNTQMcvCiBGbpSf9e
	aMmJAlY7g5duJVBGMwk=; b=SpgcyeDsoyy9dUTRmhmEUYntWqWFD7adVwKE2uLi
	dZ9eMHs1hwhJbOGeo4rMXQhmjvCzFselFCOiUjw8nQSjqO7ZkG3sbSWTXWBlF/Kv
	rgMjV+pS08d2QlY8wnH1F+j4MqqqqSmY7f1n/uLB1RHGzkm2LZlOi4P6jMypQqeu
	EWE4WF8GHHJJOdLe8in8sfIY9KafnOtsxv7l51BWs9FhpwuP1G2lQy3AdYx61aeR
	4A0wL2BFq8tuCCBm0ifWbOvNtfPRYtQ8Os/P7wRwJNW9qEWzP09AMT5kh9cmxt5A
	UvAA2WzhkU68yWMMglJgIjAHKY1JqCTSLHI8wraVh/bBCw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ckgv507h1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 20:06:02 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-899b6cc76a2so196854316d6.0
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 12:06:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772222762; x=1772827562; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qmrycw3jNTQMcvCiBGbpSf9eaMmJAlY7g5duJVBGMwk=;
        b=ZYXGG5SGHX746YchVjCE9MVvx06gvX5YrajKZpzoNEWqRjgMRevmLenDjKxwOrjRcu
         xdnfFnpGLYkwgWXFLG98tLGrWdwhjLPjGs0aC1G1JceLUIZf0MzBB3Td7LYgmOJ7gmwp
         40b8UMePW8e1+08f2duoZFUDssNkkE7wa9JPOklrgHGNM5qWF5GUg/TtKXv5Gx9F2gXc
         HryqUmC8frMNfj9/ytfXC3vM84fL1CJg1/N8IwFvZz0MnqorZc9Qea5qFTZUtyTRjJyJ
         Au/220xELMF+CAe1tY4zbA80DHthRhe0SnsJTVTO4pMo6sVitIzEUSUTOwUqU44GSu4B
         oSsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772222762; x=1772827562;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qmrycw3jNTQMcvCiBGbpSf9eaMmJAlY7g5duJVBGMwk=;
        b=dNCeO1iP5Qe8g5881XlTVl1mOVZNmXQ06K1xepLVtsEiBzwP48gCxv3zHd4M/D8oSo
         L0reNewIqWu52sLv5INhWXvXXQOJrl2ckPT1r7mMUe92vFlL09gkS9JDYkbQj31XbuY1
         ArR2HHdd5CxjjyCSmv6iT8F3wb4ATMGY/5Y+Axb8gK6Dm9Ua4MZocxq/DP/j6/dUh83k
         hnhKma5SvRBWY5+/4iOOkMahRdCVtOZ9DYq8mpkDcOqQ6VjT1BtN67++ZddOo4L1AYYe
         dLZ7gSXiNVo/KNmz699BjFLEf+wi6hmGELVpooGvpXdCgC/BlHkSKNBfb5cubMqEYwgo
         n2NQ==
X-Forwarded-Encrypted: i=1; AJvYcCXX+YUFWVVwQGgAPOEDybrBsMdf/COhjWVOjs7UyNgZFbhJq4ie1bT8L3NCj7NCi9tVj/C8z3m2fx8J@vger.kernel.org
X-Gm-Message-State: AOJu0YwBlATinDuFPipJCXSad7+cZeISsYX9SRZBsGkYHIs8gTSJZRHd
	tHef/eaQtV7GLuki54D56XIORiQHyB2ItKs+UJ2+9V4W4h+fbwlKyjJsIerYA8Jv4i1bb0wPyg/
	3ZoJxnurAyM/6NmwQbckQYKdZe6lKL92vULPhiQTTJUdeB5VFKHsbFbfmVeN5VhBM
X-Gm-Gg: ATEYQzxUzxI50pRKsZ1v3ev+CYuoc8EYv12X0xmzKEuRI2epy2OpOmkyU7Dg8GcDzM4
	RAsU9/BrlgBNyADTYu1B/maZ5bUR7mSnTp5tr98/lVaVdzEZo3bTYsQAGNWTQdcqWJLkIhldslw
	rKQJUlOEjh9gut0O+f4l0cNKJ5KueKqBigP9RtcGG7DeV+UyzA5sgmw4AQCSU5S0J5ai/63rMK1
	U52Q7GL4FPpmOjUB+Qi7qWgtjlJX5uw0jSdN/LDUEGdo1KmpryWdLmRiZNjW1CKWQEuSFbfzB2B
	Hq6rQYr+3+tniqimrh5GTzX9LPzNa7P/taZ9Ro9SUCQkZQ+Xs+lyjuVF9xXAKxrvD2nfDMGKb/B
	rZzWwNIB7TvMRXFFXFp6I5Te3wfn2OV4JPHftX4x+gsgtjk6PqAEUiTthopV59rbUfAHSuqPDW0
	JkmO4JnKZ6PX4DbZfFn/jM/dQkCH0ps61cwGY=
X-Received: by 2002:a05:6214:4116:b0:88a:2444:36e1 with SMTP id 6a1803df08f44-899d1f4aacemr62994366d6.62.1772222761762;
        Fri, 27 Feb 2026 12:06:01 -0800 (PST)
X-Received: by 2002:a05:6214:4116:b0:88a:2444:36e1 with SMTP id 6a1803df08f44-899d1f4aacemr62993776d6.62.1772222761247;
        Fri, 27 Feb 2026 12:06:01 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a115bc9fd6sm155281e87.35.2026.02.27.12.05.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 12:05:59 -0800 (PST)
Date: Fri, 27 Feb 2026 22:05:57 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Monish Chunara <monish.chunara@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, mani@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, sarthak.garg@oss.qualcomm.com,
        pradeep.pragallapati@oss.qualcomm.com, nitin.rawat@oss.qualcomm.com
Subject: Re: [PATCH 1/3] arm64: dts: qcom: monaco: Move eMMC CQE support from
 SoC to board DT
Message-ID: <nj2h4tp2w47xle45ouzvvn2mbfpqbdii27stp5wn3cv5vlv5ab@4iq3qn5ukn5p>
References: <20260227105055.2364348-1-monish.chunara@oss.qualcomm.com>
 <20260227105055.2364348-2-monish.chunara@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260227105055.2364348-2-monish.chunara@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDE3NSBTYWx0ZWRfXwGneVftU6q3n
 lE7Ccj0Y+euENWSA3a6dCRSpobFRcgZIzExvJe+NKBa9RcPRur9/jwysyy2W0WjUN5DS4gsQ4yD
 MvK4vs0KEigDAxUfD+QYxdhMqDSTEj5gUcOtS71SpWPSoWz02XzvjnHEHYtcUbWc6EKB4CTw2rB
 ZJ9QVho9d5D/zz6FVrh7wmhmpaxJcI+g28tA0sl3FhsGA2zclEs7FDyfDiX15JMUvhbExBh5W1Q
 gfGtfMR+dac9NX0alRHzK4tfgO1fMTJtzwYFKKFN0T3N/zDuuBbH6yKZqTcrTazlZXSapE5YayM
 iEOAb1ngJdG90emnNIJqLhcgTg+v1TDe9zaHw+J6vG7osKrObionM9NLYQrDOgotUxBW/+SQK3w
 LzMAPaX1brOhollCL12AK/8Sv8XeTpns1ypDeQwznD6Q8QzVlYZK/7fWSkFCe+WvklJiaW1KQxw
 lSjltcuR1aOYoAUZVDg==
X-Proofpoint-GUID: S-F37IdsE-mW86HKLvypa0qj1qVMFxl2
X-Proofpoint-ORIG-GUID: S-F37IdsE-mW86HKLvypa0qj1qVMFxl2
X-Authority-Analysis: v=2.4 cv=Z8Hh3XRA c=1 sm=1 tr=0 ts=69a1f92a cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=EUspDBNiAAAA:8
 a=foJT35fSmds2pDCHF_0A:9 a=CjuIK1q_8ugA:10 a=zgiPjhLxNE0A:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-27_04,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 phishscore=0 adultscore=0 impostorscore=0
 suspectscore=0 priorityscore=1501 lowpriorityscore=0 bulkscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602270175
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269412-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 30E141BD349
X-Rspamd-Action: no action

On Fri, Feb 27, 2026 at 04:20:53PM +0530, Monish Chunara wrote:
> The Monaco SoC SDHC controller supports both eMMC and SD cards. However,
> the 'supports-cqe' property (Command Queue Engine) is specific to eMMC
> and conflicts with SD card operation.
> 
> Remove 'supports-cqe' from the SoC device tree to ensure compatibility
> with SD cards. Simultaneously, add the property explicitly to the
> qcs8300-ride board device tree, as this board uses the controller in
> eMMC mode.
> 
> This ensures the SoC definition remains generic while enabling features
> correctly at the board level.
> 
> Signed-off-by: Monish Chunara <monish.chunara@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/monaco.dtsi      | 1 -
>  arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 1 +
>  2 files changed, 1 insertion(+), 1 deletion(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

