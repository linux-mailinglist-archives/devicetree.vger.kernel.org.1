Return-Path: <devicetree+bounces-320379-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8jDfNh1HSGrToQAAu9opvQ
	(envelope-from <devicetree+bounces-320379-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 04 Jul 2026 01:34:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 61C477061DE
	for <lists+devicetree@lfdr.de>; Sat, 04 Jul 2026 01:34:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=o8GwrdaX;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b="b/jbr81m";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320379-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320379-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CFB2E30305FB
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 23:34:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 630DD3446C5;
	Fri,  3 Jul 2026 23:34:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2114A2DCBEC
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 23:34:35 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783121677; cv=none; b=J1ZM5a19veYqDy8CcunmAewb40xT/azXSNU+jBW949AzLsnlQTEzlu/i2PPyGTpH5ca6SYVWbQ5h/Eu989t2AmMpmhOvPY1lJrbkFdKiGx+g532Xh8KD1M6trBMME03o+w3mJKnyYexhsq4qZUr4mS2qlECAcpC0fTll0BVdMSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783121677; c=relaxed/simple;
	bh=nazfFnHvjjbt8KBJZZtfugY+QOWghPItE/9y9KgBmUc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nSUEdh5R2/LgVdEnnrubf3zpXyEa4ZZby6lq0QPTkwQNxFXuhZM2cnjy70f13OPrxY2Jc6WGs17VOthc4z3nXgkWlbpWRTBWI8miAXQMPrRe1H7aepktGGKj50xguNPxOPvPtFWkAmLk35sHsutOAjwgjwWSoVCMgudADfYOI0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=o8GwrdaX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=b/jbr81m; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 663KPc5D890381
	for <devicetree@vger.kernel.org>; Fri, 3 Jul 2026 23:34:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=prcMmke1zFQfB/qFnU+ojBqY
	3z/+3aFN+aeWXEDa/JI=; b=o8GwrdaXroxpP8fDqcYUhFyfbjbZCvHQ7bNPfRBI
	ty3TkeFOuXlSfdPhc+BzGUG7Yh8j2DKFZ9J32M4j3wk6lRud52Q6B5c1nVhCaKae
	vNdoCVrvXhe5EpA4UZxIDNRWx/ZwrwSX8QpfPhlDN0S2ym+605AfKwlf4JEvhrBB
	nZXMXKBLG+tl8NVr/fDsp5ePwpr/ZzPnQBYyRwiIHyaiezzxiR4CTdWxFWwJvIgr
	QK7qMOK6CR+fS1gUEauyrAo9z5VrXPs3jKG75FQ8HBKi3guckXPl2kmIWIMiY7fU
	6fisp9crFiuSFPzZH1ioOwffuP6diED0nadxkT3PoE+whg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f67j03brn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 03 Jul 2026 23:34:34 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-92e82060977so107251985a.1
        for <devicetree@vger.kernel.org>; Fri, 03 Jul 2026 16:34:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783121673; x=1783726473; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=prcMmke1zFQfB/qFnU+ojBqY3z/+3aFN+aeWXEDa/JI=;
        b=b/jbr81mdpWd/yBkIyV/wKadYRBl0ZJ8obpRscmdiI2aaAg2Vbddw/M1nAL2KV+Kzz
         UfxkOVQDyuPNnjsUgXbjVh6svhLpGXYWw7Awy7ggXBdUqR7wALPf2AuGxegRDqhMmy/b
         DtjSSiQsPxk2S+NkFitm0OV0lTioFRQEpEbSb5GHHQCfTq0zNZbhJqM+iKLJoBJ7N5X0
         f/1KT6uHdi6p1oMai5jTnJseKC7kRlqkDIfxHFadfcp/pGKBnzxh9w6rQcl6GvNRLs2h
         yZcVgXl5WGog7in+A2MlPiu4wt1lli55jUsJXrZUfvNhMfIGLtIWRra4EQH3DvGu0PrS
         CJEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783121673; x=1783726473;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=prcMmke1zFQfB/qFnU+ojBqY3z/+3aFN+aeWXEDa/JI=;
        b=miLFPylisAEh8lAvo3fP0bMBjUpbRUvM8hvWCRoittouyTGQhWGZcf6DQMCYC3ZCFQ
         FCQI5+cu5sFH6zTE9VpR7NT28KLUH38xU1MWAS5/LeOO7Og8C/tR6ohW/EZ35bjVRlOF
         keKWy0jgOxdEI3VCaxZeUfEXkkQ+/ILghRTfOSrZiThsNpSLeKHzuO+62IUfnq2foosz
         KXXTyQZGBShCa3OJxzklnztkGoZ5UnIgD1ehJvMFO4J7PoaPXpCl4HjlpnZUU1NbqS/n
         I2qPOF6TbX6D+KdQkEYv9utAZz/sEhClYciQlKqFffsmCqISs58K20KyuJGaxXkiBCYk
         gEXg==
X-Forwarded-Encrypted: i=1; AFNElJ+/y1EaeqxDJXfFOy6Dd3ui/BfEt3fWp4BQq1gyNtHEgzTAubvaUGjccpFxnFm2CIIkNX24cm1c19SY@vger.kernel.org
X-Gm-Message-State: AOJu0Yyyyh1Y8QybJ16Uv6NLhoXwaXTPR788ZujWNUpYS4czFTTTBch9
	1RRRdKFrSrY//McLLGmWcycHyrkBmfuai5RVO5/TmP6dJbRC3gBCvH16YyqmIzOHsLj8SgP5srq
	KZY2HDfQV1m651pG/FM6pEWyZIiZrioFpv2TBYOOGoOQuewsN6dTwE5QoqGkTEbkZbk02Ikc7
X-Gm-Gg: AfdE7ckNIeN8/cuKUtfLnn4f82W9lAlsB5yxDw1eM7QP3L0y9LKbrUcs74ZKjbhKO7C
	H2f4x2m3OkisqyUajgkyaHqQILTL8G5KQzmyGNFRaB0+9NzB2G3f2wBbOLynBPA10JahR3ZHcLN
	o9Lc5thm2HsCRR1iXD9G0LGEEMSVY6ZEnvQOrVOnRIWUsvtXORItm/AxT1enUrDycnpl0657LRo
	5i1s8Q+gcwR1pEytGO4VxmfiBOIWqjMzka3fR+921md87sHWu4tc4Qc7puogiM1Zk+pHzj65dyA
	qxhTI8+qvdp2zUA1JEg/XmlhfkNGatOv/Im8IM/CD0vhBgiXN0LPW4qXIb2pYfqGRgOYD1GdULr
	s5grabm4CxK6wZ3GW8M95M6O/83NZTEKMKfw5TihXF7J5B15rb/qGSrC+m0dmnag1XUQJk15Cye
	VPsfpYf7ZLCkpjZiP+cSpLjimS
X-Received: by 2002:a05:620a:288f:b0:92b:f1ba:5fad with SMTP id af79cd13be357-92e8b58da9amr730707185a.37.1783121673469;
        Fri, 03 Jul 2026 16:34:33 -0700 (PDT)
X-Received: by 2002:a05:620a:288f:b0:92b:f1ba:5fad with SMTP id af79cd13be357-92e8b58da9amr730703485a.37.1783121672979;
        Fri, 03 Jul 2026 16:34:32 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aed13c4acdsm836984e87.76.2026.07.03.16.34.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jul 2026 16:34:30 -0700 (PDT)
Date: Sat, 4 Jul 2026 02:34:28 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: george.moussalem@outlook.com
Cc: Bartosz Golaszewski <brgl@kernel.org>,
        Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Subject: Re: [PATCH v3 3/6] firmware: qcom: scm: Add support for setting
 Bluetooth power modes
Message-ID: <twncu55nou3r4ediipddc5unpnkhvllaj5ac2ayrryk75orucq@vtt7bremuqzv>
References: <20260703-ipq5018-bluetooth-v3-0-62da72818ab3@outlook.com>
 <20260703-ipq5018-bluetooth-v3-3-62da72818ab3@outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260703-ipq5018-bluetooth-v3-3-62da72818ab3@outlook.com>
X-Proofpoint-GUID: A0Y7Ig1xBQMOS0P6N92HjY2ydKak_1YE
X-Proofpoint-ORIG-GUID: A0Y7Ig1xBQMOS0P6N92HjY2ydKak_1YE
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAzMDIzOCBTYWx0ZWRfX3i7Z7wRonyp/
 B4juR474EGKxmsh7u9CN3LXTJ2yKyRXIxjDJRyemcR2Ql9+7b+MXJJxJxsIxftxP/S/QOeB9OUz
 PDBC3zT8Rb/qYVOE+uShldnTN1hrfwQ=
X-Authority-Analysis: v=2.4 cv=Yuc/gYYX c=1 sm=1 tr=0 ts=6a48470a cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=UqCG9HQmAAAA:8
 a=EUspDBNiAAAA:8 a=z01RItMgd9csqulRoWYA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAzMDIzOCBTYWx0ZWRfX4pO63yrKhH/4
 wmkKEPIiTmRFb6NFRds4enZW9RiBLNYw5RY6EcDIqa3WotU5Wpal5maNluMB+kS1tfHRAgvt+n9
 9UHim6iPNJuwLUPU366950e62ml9uDd+lV1iGLGlt73KmBlKRTvnTn7Rbs9l8dnx7Y0oXjPmm2G
 7vaRy3yYAji2EXLRkVIsZ7OBpZ2KdjLJGNy9+M9kTMdkynqklUw8edzlOK65zGWQ68AcZNglHeF
 zzjR6y/x1/ozVa3yRPhaJR9ZNtv7zNMNfzzi48mXzKcjeX06XfWigT/sLi6tFrq8FmHtaby65oM
 1bgMe4MFwnOEKYtrJ8FfrXIhzyJ9IkAVCxZ0d1pwYmAUUmW4PYDWE2ifWd/KxcIOLNbQ5vb39IV
 ucWjhRV0eGvfzqXUKW8K4y3o5TbgBkQV0OQ8mD0Ql3aV0jpl53iQKElRCsn7vCr5j8uC+ywGOIR
 g1dD4x/naK96AjdWCzQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-03_04,2026-07-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 impostorscore=0 suspectscore=0 phishscore=0
 bulkscore=0 clxscore=1015 adultscore=0 priorityscore=1501 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607030238
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-320379-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,outlook.com:email,oss.qualcomm.com:from_mime,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,vger.kernel.org:from_smtp,vtt7bremuqzv:mid];
	FREEMAIL_TO(0.00)[outlook.com];
	FORGED_SENDER(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_RECIPIENTS(0.00)[m:george.moussalem@outlook.com,m:brgl@kernel.org,m:marcel@holtmann.org,m:luiz.dentz@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andersson@kernel.org,m:konradybcio@kernel.org,m:p.zabel@pengutronix.de,m:linux-arm-msm@vger.kernel.org,m:linux-bluetooth@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:bartosz.golaszewski@oss.qualcomm.com,m:luizdentz@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,holtmann.org,gmail.com,pengutronix.de,vger.kernel.org,oss.qualcomm.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 61C477061DE

On Fri, Jul 03, 2026 at 09:01:51AM +0400, George Moussalem via B4 Relay wrote:
> From: George Moussalem <george.moussalem@outlook.com>
> 
> The Bluetooth subsystem (BTSS) on the IPQ5018 SoC supports setting power
> modes which are required to be configured through a Secure Channel
> Manager (SCM) call to TrustZone. However, not all Trusted Execution
> Environment (QSEE) images support this call, so first check if the call
> is available.
> 
> Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---
>  drivers/firmware/qcom/qcom_scm.c       | 44 ++++++++++++++++++++++++++++++++++
>  drivers/firmware/qcom/qcom_scm.h       |  1 +
>  include/linux/firmware/qcom/qcom_scm.h |  1 +
>  3 files changed, 46 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

