Return-Path: <devicetree+bounces-259892-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ULI6HXy4eGlzsQEAu9opvQ
	(envelope-from <devicetree+bounces-259892-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 14:07:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2064494A6E
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 14:07:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 535C8301327C
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 13:06:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1F1B3563D9;
	Tue, 27 Jan 2026 13:06:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YDVdB0Y+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="auIvvF0J"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BDC33559F0
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 13:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769519187; cv=none; b=qXfkZgEgJ9dikG25g0nOSfLD1LDAOexFKk5sT2x0q01oLV+HI5nZ/jDOEnTTWDvyXuu8xC4Z+TDfHJJ6pmS33T58vXeScY6iE4LaxqOt2jrQcYt+3BInSz2d2gNkKGiOHfF42t7FUY7fGZbYI2MuumT8kgODI8ajnhhbmlZMvfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769519187; c=relaxed/simple;
	bh=jgA/Uujf10BhGbOSNIE1krgPvsTZ8w0jjl4lzAXYgUY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UDPludL49oymJsd6nwij4F/4jZ+09cPrDKoSEhYnAdPU8W3qfYONrmNg952QrGyk+loAi4jVJuvZV2FHxAKSDtFH8DwmKbO+i/GlNXvmy9mA80bavqoN4pdPC7PrPoV5oDZdkiLqCu2peDh6Bl0HMHG6fzhG8CIPDh82yhAXsQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YDVdB0Y+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=auIvvF0J; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RAY7lr184806
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 13:06:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EWLo9Ea+3GkWbisbwaIrDxm7iAQxoGZnDo5vW6pC4rM=; b=YDVdB0Y+tXBhgd7a
	VPs+WZnJhyirwInsxyHT7uC79jySmwLuVgDU5pD2HFTE/YnLwOYTrlqvywJ3y9dM
	nDVX+VnsF++5AR927VsHANK+o17lhrJ8C6cCLowMix4tKmGryfAEEhiQZVBDaut3
	VD84J2XJUujWy7+OhMKzmvoyBBQTgEMMcvxFahxUS3F5LRDzaeRKhWfvdkePb6GE
	sD7z/xUqIkq1JR+gStvuCJN1TB9EgUbmFqsE4C+d7dcIk91/z/sJqWEb3yhvoirw
	Lw5+ENRIpzDzSVEAkL/IoFFQaOJX+5J4iFGQg4QrKvzS0fiQHjiK2LyptKDVKEvv
	cttsRw==
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com [209.85.222.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxdv9k3ye-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 13:06:22 +0000 (GMT)
Received: by mail-ua1-f71.google.com with SMTP id a1e0cc1a2514c-94800e7e6b4so1319495241.2
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 05:06:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769519181; x=1770123981; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EWLo9Ea+3GkWbisbwaIrDxm7iAQxoGZnDo5vW6pC4rM=;
        b=auIvvF0JizUz3xx5qp5XXN8EmLsbrJOdkg7dnk0OEI9FDxUhGQBkGkwQEU0jqua4nt
         JP2GOL6lmXWe4kXRCFTYVS3YBzeAVuX3o6bpecpEWah/rY9EIVaT1LC0EQFeUEH3JOZ9
         6NYCGZz9ldwxhy8tFUddSbKFg5AgGbAhRSMbPl71ctgYJqJnMEaw/VUty7povi5zZXiF
         k6jfTyXcGa/mswn2VJcetUb/bfMKjAhUgImVxuAW2a/grCyIrSF9slYkOOly47zR1XZe
         2XBxF0ZMtsHMRe6jhe5ae3oWrHdkoWyz0JcO33OVKf0i0IqV2cPN57bQKebnWh7bje4B
         oHlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769519181; x=1770123981;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EWLo9Ea+3GkWbisbwaIrDxm7iAQxoGZnDo5vW6pC4rM=;
        b=p529CC7z3WNYeXuqh12Znr6qAMp9h7FE5ve3Ga+G6T4dNdFDJYYiUx02DZZVytaPqm
         OVEd9nmI37yZo+3NE79KCy1VQlqdOeisVqCeZ31+h3Ee/8tU5O5fB9t3Fk9yvzkKU/dF
         forHn9Zd8Tp5ujhJS/iyi1SrShWQO9y3a5CPYhi1M1Xp6YRpR5D/ZzB451mZJhkRdONw
         fmVLoMd9C44Uq3cL4aNSekgMrvYsN6xiqyXZOkGRG6aTyBVXxt8gPHXDYs4KCDFnW+sa
         9CuYyouHoHhwqGG44wO9LaiBepG1eslQAClun7WEwXhkhDhOgT8PHRxFEMPKPQU/xV93
         RxMA==
X-Forwarded-Encrypted: i=1; AJvYcCXdbgD6d1LzV6tpr5UIPPs0o2t21zaNeFHRO6nusJcvhRthlPitXRcy2ZeBgqFvLaqFUzmp+qIQwd92@vger.kernel.org
X-Gm-Message-State: AOJu0YxM0GkIZtGTxVq0E6IdmLWUIUUnSwre4e+VZ376NHadXXNTbiSh
	ja+UJrv9CW5W4fSqd8jnbEUmdoIt1yvIh34tOl1FslqLoXgfBAVzyDAAn+kmo36qvOszJFW/Zkt
	TjUURtXwuWNC85TdKJsh496pT+6J2B9QiukMT3M7fNJFAWiDTvb8HJ8VkomHhL32Q
X-Gm-Gg: AZuq6aKWN/l2YQ+MkfWTkFTH75JlIadf9A8qvKMf8Bi/Tpn7BlVgqp0wokjBtNq078f
	ZWBxvulZsfn1R9JNXX05MDIyoEoIoVixVlUUThdHYtyNY/kRQA+Ep5EhmOQJvchvBUB5cDCDK4V
	B2flTlb0lVTHtiPYzbQBqF6WmKiQF4SHeu+H3rHc0hGxINX0eai9VAeECUaEqMKNApoWITLQlnZ
	cIkQtKT2aB8vHtQGGE42Fc3QGad67GXyqrCGG4+52zaIk87r2dnMEJqtUODjydqrWvXBmAZZInp
	iEQAK+TNNsETylju0LbN5+sTDX0h96M+UnU4m5R/GsQzQefmvCEoXXIRYS/7b0xjipLOllqNWPZ
	2204lx4uPfeL7rweYb8EGXEFrbKKfxDE+yi09kNfDwP81DKpmKQ1GhuZzcnf1YVIPFCE=
X-Received: by 2002:a05:6122:91d:b0:559:9663:bfb1 with SMTP id 71dfb90a1353d-5667935b4cdmr288173e0c.0.1769519181386;
        Tue, 27 Jan 2026 05:06:21 -0800 (PST)
X-Received: by 2002:a05:6122:91d:b0:559:9663:bfb1 with SMTP id 71dfb90a1353d-5667935b4cdmr288151e0c.0.1769519180836;
        Tue, 27 Jan 2026 05:06:20 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6584b92b98asm6147030a12.19.2026.01.27.05.06.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jan 2026 05:06:19 -0800 (PST)
Message-ID: <6498dc50-c08a-4416-95ff-06a8ca7db6b0@oss.qualcomm.com>
Date: Tue, 27 Jan 2026 14:06:15 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] remoteproc: qcom_wcnss: Fix handling the lack of PD
 regulators in v3
To: Val Packett <val@packett.cool>, Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
        Bill Wendling <morbo@google.com>,
        Justin Stitt <justinstitt@google.com>,
        =?UTF-8?Q?Matti_Lehtim=C3=A4ki?= <matti.lehtimaki@gmail.com>,
        Luca Weiss <luca@lucaweiss.eu>
Cc: Vladimir Lypak <vladimir.lypak@gmail.com>,
        =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        ~postmarketos/upstreaming@lists.sr.ht, linux@mainlining.org,
        phone-devel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, llvm@lists.linux.dev
References: <20260126235018.969140-1-val@packett.cool>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260126235018.969140-1-val@packett.cool>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=OYOVzxTY c=1 sm=1 tr=0 ts=6978b84e cx=c_pps
 a=KB4UBwrhAZV1kjiGHFQexw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Q--SMSCEpvHRqS4MLmMA:9 a=QEXdDO2ut3YA:10
 a=o1xkdb1NAhiiM49bd1HK:22
X-Proofpoint-GUID: GCpkVjGxp1yJtW_PH64Cuua3_14aH10H
X-Proofpoint-ORIG-GUID: GCpkVjGxp1yJtW_PH64Cuua3_14aH10H
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDEwNyBTYWx0ZWRfXwhJEEbRhuCGG
 OP8LEmfYlWMz0BR5KR9irsa+RjUcwh3mnn5DZv92e4CHSC4cjbegN9InYzMUWLRbJLlN20BIZxU
 tUMp7jqZ77FV42sWAMAkYNlXyl8pDTkg8tyx6HSEWPEl4RmdgRCqCrnfZJ4En0fkgOJRhS3k8NK
 Pl0peRnNiozOaQktsXHcTplkNgMnP8UtRqJGrX78AyvWcsEu/3Yka0YxqpU1jQVJwHHHuy2Wn5w
 egAKkA3jrCddc3zzNnTmSXP3dmlzOjIZhn6XuwvFLqAzt3IgIpr/qbkInxiUoIMKHQL4TcwsYdy
 j5skyoYL2YkoM/7yvVBbpsmZyRXAIAQNXNrdhKGGtDpTJsTnxSiPO0w+Q8nvatQ8Mvp8OGSx9Iz
 KGdbgBtFawDdGbeP55Rg694DIv+lUwbopfCYXRc1nwC9XzeZ4BUvWtEwZ3u/rHwC3iK5aE+2oWS
 +mbQIAsyBBqZ1L12H/Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_02,2026-01-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 spamscore=0 impostorscore=0
 suspectscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270107
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259892-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[packett.cool,kernel.org,linaro.org,gmail.com,google.com,lucaweiss.eu];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,mainlining.org,oss.qualcomm.com,lists.sr.ht,vger.kernel.org,lists.linux.dev];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,packett.cool:email];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,lkml];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2064494A6E
X-Rspamd-Action: no action

On 1/27/26 12:44 AM, Val Packett wrote:
> The changes introduced to handle single power domain platforms have
> swapped the info pointer increment from num_pd_vregs to num_pds, which
> doesn't change anything for pronto-v1 and v2 where they match, but as
> pronto-v3 has 2 power domains with no PD regulators at all, this would
> shift the pointer past the end of the array.
> 
> This showed up as a difference between GCC- and LLVM-compiled kernels
> on MSM8953/SDM632 devices, where only with LLVM one would get the
> "regulator request with no identifier" error, because the out-of-bounds
> memory ended up being zeroed. Fix by reverting that single line.
> 
> Fixes: 65991ea8a6d1 ("remoteproc: qcom_wcnss: Handle platforms with only single power domain")
> Signed-off-by: Val Packett <val@packett.cool>
> ---
> 
> I'm like 99% sure that this (old) line is correct and the change in this one line
> in 65991ea8a6d1 might've been an unintentional/stray one.
> 
> Still, please retest on MSM8974/MSM8226!
> 
> Thanks,
> ~val
> ---
>  drivers/remoteproc/qcom_wcnss.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/remoteproc/qcom_wcnss.c b/drivers/remoteproc/qcom_wcnss.c
> index ee18bf2e8054..5884c5a52af6 100644
> --- a/drivers/remoteproc/qcom_wcnss.c
> +++ b/drivers/remoteproc/qcom_wcnss.c
> @@ -454,7 +454,7 @@ static int wcnss_init_regulators(struct qcom_wcnss *wcnss,
>  	 * reserve extra space to manage them through the regulator interface.
>  	 */
>  	if (wcnss->num_pds) {
> -		info += wcnss->num_pds;
> +		info += num_pd_vregs;

The existing code is correct in that it skips the wcnss->num_pds
(i.e. "the number of PDs Linux managed to successfully attach to"), out
of the vregs table (which on all-but-pronto_v3_data is a superset of the
PD list, since 15 years ago the regulator framework was used to represent
all power-related RPM resources)

I believe the correct diff would be to check if the length of .pd_names
is >= the length of .vregs and say that it's the backwards-compat case
(which again, pronto_v3 isn't concerned by)

Konrad

