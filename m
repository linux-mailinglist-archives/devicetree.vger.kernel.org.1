Return-Path: <devicetree+bounces-266205-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UAaTDBGWlGneFgIAu9opvQ
	(envelope-from <devicetree+bounces-266205-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 17:23:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E1C414E1CF
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 17:23:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 37BAA303CE9D
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 16:23:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6304936EA84;
	Tue, 17 Feb 2026 16:23:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZCNW1L6Z";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="b98GKMQ2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B46036E46C
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 16:23:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771345396; cv=none; b=oBfRNhVebI0qTAo15hxJOqHcPkK8iY++3tQPQqVk/tGATYsoOmnPk/nofHqhEOrNqryivVP5kpwjntfTl1nL9RtpEVXNlgCvc/cba8mETcH9Updgmh1IdZa4Ql1ekDEfl7NTA96gsTUV9KHJR6hNQaYD+DhhmTwX/DGUlNCOeko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771345396; c=relaxed/simple;
	bh=huPv1Rq82ylXN0CnKmdOpk+HRnSzxJ99NW1Era5l7sQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EYotgXUCohBzd2+Ln1YPSg9h9M6VoGBn4CJgUWqs/XswP1Az0lIfTa+1cd0Asv7O5fif68PdFsBisHTDGsOBmg1spsE50rqPeGAHCmgOFq3VYnZ+9mGveq2L1WZlXs+GmMtz53SGY/ytZR3IIQIP3AVsDbZw9LkmueiaxB43oU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZCNW1L6Z; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=b98GKMQ2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61HFexko048739
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 16:23:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=M+8icpgoWecUC2cZa/Z4FLKT
	WEtQIY9I7RrykM8WNkc=; b=ZCNW1L6ZwI+JqjXAx9yq8205HD/tBwWorsrrKWJy
	8tw9/HKp1dqwufsf0zjCnOJ5nqXom2blR1+n2rKG1NMPjk6KQ33f7qxJhztaNVh9
	63PZ7DGT+Z15JpqSQm7fKVceA19Cd0mtjXdFShJ6BbIHQeahvpkI9y1TDmuZUfox
	LSzLe1iJbu2KVhaCKkydqF5//g6Iaf3mpr4h4PrK4KTqjHLM77st+Cmj65H9Dkp/
	KG50JYVEXwSV5B7SDpLAlX6K7BgHwk1S9sCYERLHIhQFdRrsg3ebNSjbin7P4hBO
	jTqVjoTwS9Xk/oB5i0cHbiQAPSrnlsDsrbInqShSYiU0ZA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc6d83358-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 16:23:13 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c70ab7f67fso4334549785a.3
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 08:23:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771345393; x=1771950193; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=M+8icpgoWecUC2cZa/Z4FLKTWEtQIY9I7RrykM8WNkc=;
        b=b98GKMQ2iJ4O7fz691rKSqOdLMIedlbyLL161SC2yZWeEgzJntbUBboEdBxWIVt4lN
         DJzToKBHJ8XwLUGsHwxV0YR2NCjsNB9gcgg27oxKRegqci9JHsQSgnH9Rpq4BlxGjE+c
         MUkLU0efW674PFW29nkAVPuKaSfZYG+gbMrxnvvQi3k9R+fmuubQBpuBMwfBthrF0mCl
         GEWsgsmwnCHBytQY6bQz4X5WdfztcA2sI4J2TRdTn8Ddr4+3CQ3CfLA2fouTYQiBtpkX
         GA5XIZ9jxENQGpYVxA3GyHQ8FfRENwJq4oGeKI7InrhSJzMWTEC4CpgggwIUPFw6GkgD
         LjsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771345393; x=1771950193;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M+8icpgoWecUC2cZa/Z4FLKTWEtQIY9I7RrykM8WNkc=;
        b=ku9niZk8Pen0nYAgyZqx19++yWzWxLhYUj3zYcEetSJ6cRY47RtiTb8mFAJVaq6WNU
         kGfc8tmV4QsixVGyMvJmOXQJOu0s3monCItT0fdaqkTQocGG9pXSOSSRhAtKOA4AafTz
         BYBis/NF9/kGCLnbNUcYPxbECGWS0U1fdcikDI6ED2sxezXvsnM2I6QODfefoShkVwps
         SCm5e56ctFTHHBDIO4D2oNxVNzG0lSfPwx5cXOJfcLfzwVmVep+zGxNAYUpO2NZKrvhI
         Pd2XS/Hr0LrNOZvIZHneK+6KZu83fZu7lB79G7SpivExfzAt+HjAMTA5DfRHcNa8ZAvU
         1p2Q==
X-Forwarded-Encrypted: i=1; AJvYcCUNBw4utHsbqS1q1fkf2ektyZoPGg5H4L1SPmP/ClWlA+Wc0dDeRRIn3wuv9ohJW0PS2QoG43ULPmpe@vger.kernel.org
X-Gm-Message-State: AOJu0Yxaq9YzcBEDOeEAtv2KJF5jhVO6ceojHIdjHQLtVCo2RECS41+B
	cc99cFK598/0WiU9x/uwk73oJmVqxR+dz+9azwVRr2iirhD5Y5sIZXu6jer3X/1Zktbr0z9C7pk
	dmsO1Gldg4kChf+CuFrHxR7v0Erqf7LlPYqiL1DMz/7dB6JEtCoFnBTzMuKu7sq4w
X-Gm-Gg: AZuq6aIXDnnCV11Z1eDPRhcVD4PDNFPixX15SbmQukYYuub0PCW5BWbm7sDnnTikaZG
	KxeB7MZI+kzwyaQDewW4mPtC/SubUIx6enx6buQSIq7Afry/v6lEsakaW6GcY1iikAP0bViL3pP
	GN7nIxlqge6aWkwpw5Ogwj9L/HuamGBJO2pJRmDgF1x5WR2o1evXotJKKCwzFgrD5xwPQX8pHKN
	BpcbGkuKnGRPPb/pSmZmlc/QRzSTriwfna0nnvpIgxX+llOqWPQBWQjLVdMz7vmHJL0x2wz79OX
	5d0wuUtRav0yn/yoGVXtCUNNcwarTHVZ76J1qb16kekHfJdYCG2bq7UFDOdK0zrJ2wNIHUobh/0
	yhpsMRETi+hSj7YQv9UX3PuWrZ+5yAt5srgdbRQv7tZAlQ9KRva77/s3p5/BvkIOFUgfTj47nX9
	kaQZLjdWfiXBSGNnQK79UlzQaK+SByFQHMv5E=
X-Received: by 2002:a05:620a:1a04:b0:8ca:1240:4990 with SMTP id af79cd13be357-8cb4c041a5amr1410690985a.86.1771345392824;
        Tue, 17 Feb 2026 08:23:12 -0800 (PST)
X-Received: by 2002:a05:620a:1a04:b0:8ca:1240:4990 with SMTP id af79cd13be357-8cb4c041a5amr1410686585a.86.1771345392251;
        Tue, 17 Feb 2026 08:23:12 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e5f5636b3sm3847209e87.14.2026.02.17.08.23.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 08:23:11 -0800 (PST)
Date: Tue, 17 Feb 2026 18:23:10 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] clk: qcom: De-acronymize Glymur SoC name
Message-ID: <jfzhybhuh5doxxiymznhizrsqft2ywrtfcpuilmsz7gumsh7h3@o5ocoxq2qkpd>
References: <20260217130047.281813-3-krzysztof.kozlowski@oss.qualcomm.com>
 <20260217130047.281813-4-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260217130047.281813-4-krzysztof.kozlowski@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=bqVBxUai c=1 sm=1 tr=0 ts=699495f1 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=Rh8BIR2qzSpX2dRZ-WwA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDEzMyBTYWx0ZWRfX4jGcSFxAy0BD
 SGkkLrauwmADJff9LzT8zvDVAjGORmov+ZCyuBMgeGDpczPKFUiPzgJx8CHpiPgYdTrfyBLQguf
 1vLFXqX9b3U5XAUCBgQQDZPMPj5AH/WzjpI+QdAPve1HWXNxN+LLlFcw05mlZ7l4XUZQnz7Ye8I
 jf3Xp21dXojGneo/I2YVQUUZl+NF+ijcWkl/xpytLUUSHIt5VDsp22pRWy1JklMzg9PKEcH2U/h
 18pot7EODNHmOVWCUi84nw0kEYLGov+O8OqhkF/XQ+qzebDTEq3ZqqsjFkoCfMdFEI0PDMnPvqu
 NgpF04Ft2USspSUA1Fa0PDPhP7UM/3BSSenGJzb42p6ogGLuDUcW4VsTDIHIMlSaNEiQcGGxxnT
 +2co98Zvkv3I92GZyf0vWxwJcowM2gfxaRNRYHqWNIKJdQAWRMYv27BiYyuWxN208zzZ04qK60u
 w7NU1mWLdLeByvGr/zg==
X-Proofpoint-GUID: pSkaf_chP-15gek2dg4AQjGhH5Quh_9r
X-Proofpoint-ORIG-GUID: pSkaf_chP-15gek2dg4AQjGhH5Quh_9r
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_02,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 spamscore=0 adultscore=0 phishscore=0 clxscore=1015
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602170133
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266205-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7E1C414E1CF
X-Rspamd-Action: no action

On Tue, Feb 17, 2026 at 02:00:49PM +0100, Krzysztof Kozlowski wrote:
> Glymur is a codename of Qualcomm SoC, not an acronym.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/Kconfig         | 12 ++++++------
>  drivers/clk/qcom/dispcc-glymur.c |  2 +-
>  drivers/clk/qcom/gcc-glymur.c    |  2 +-
>  drivers/clk/qcom/tcsrcc-glymur.c |  2 +-
>  4 files changed, 9 insertions(+), 9 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

