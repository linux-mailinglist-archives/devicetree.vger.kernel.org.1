Return-Path: <devicetree+bounces-261883-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WPRaJszJgGl3AgMAu9opvQ
	(envelope-from <devicetree+bounces-261883-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 16:59:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 33BE7CE897
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 16:59:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 347C93064649
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 15:51:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3626F266576;
	Mon,  2 Feb 2026 15:51:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="K+CCQgp8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="P3gmAVDv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A14631DDC28
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 15:51:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=205.220.168.131
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770047492; cv=pass; b=a9K8QNBwQp2wMeChmTPczawU/BKWyTuP527BcSC3DfhokBXD+V9UG+E9UGQv3Ca3T1S7o1jCUBQWBUAuOjaz5QM+jcd91Xo36FAtHrcjmjnEM4X7jJNFHJbpvYTklG3XvIcS7VeN6yilV5NwRQAbnED3RnQ01xm36PbAgTKCkD0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770047492; c=relaxed/simple;
	bh=T4gCvEK5pOrZp04yFKhri9JQ2qyg1XBt9hVS+X7ctlk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KmgGvw67h8LXIt6uC2R4kX75HUm2eRbTQl0G9wEZBe/lMj+hs3Z0CJ8n5TdmuAyBPS6k30FlCg+nBkS7AnkyyEIK5YaDgvvijTs5eczN3zxYtAYHUi4W3rM6rAzwgIXQU0ClK6vP6ewsZieU4+QHf1ExTg1q8EUgwRg9b840aj4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=K+CCQgp8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=P3gmAVDv; arc=pass smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 612B4Fiu2848626
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 15:51:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=7yDh+JC7Z+2RBqZUUP8nJKY2
	Ywl628bcHYB1vTz3mFc=; b=K+CCQgp8nA15ZURa5/1084YIeiGw3MpFG3485Jyz
	OEBNk8BOLECS0x7hNAtxhic3vtEv75iaR/KvhrMCkrYAK/GxLQ9gbCMmC6XROraX
	vFuuBIW4wO2ny5k/p4ZJsnT9fIwfIwEYYHaqkVwjcC0fR4fJyN7f1iaFIjqnbdxC
	a7u35IRUu0kaAIreKB/5vf6DLyb9bE2J6clBHYkPhVMd9hsdGlUq2uAS1dnhA6Q5
	qifjSpkvSqLg2C61Ir35GSXM3dBzTdAPQx+y9wmvQ3dzeMTV3ELuthvFpiSVpQC6
	qkqyGHce17ZBpqEzWgWZ29zoYHQ6FAUvPSQKyBhKM1i64Q==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2tqtguca-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 15:51:28 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-353c9d644b0so3644074a91.2
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 07:51:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770047488; cv=none;
        d=google.com; s=arc-20240605;
        b=Ukpg2/LmLHXbSKnN7T0bHZwA8XLu9PgPKdiMm4m6Z+XBZ/nD77xPR7hCFu8hphpjfI
         qN6vFmHi2s05KPSK4qk1+Pt5tms5NGP7UvZZTCjXiBS4rATHWloqGAb7El+CY65fjrSK
         lwV8ZA5XjuiyPgUfkSczzJcZ2a/BEFtDmE42DTvSLGrekphQpKSyjH8qrg52Fe/QqSK9
         4EeAT3i7BKY6YcH0zy1cvLUEWgKcJzgHD/3JBcpp2rGnZbPxMa8LJ6CRJEgOTULXMR2N
         Jy7nNyeSZ789tNmfN1rhdcS4R8q78ZMb+ojyYQzXMlhYz3TbclF7Yh825yGFTZOw77Mh
         V11w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7yDh+JC7Z+2RBqZUUP8nJKY2Ywl628bcHYB1vTz3mFc=;
        fh=3agkBIEHIORjrJ13zJSYwXfI6bKdvxgzLkPYLlavgDo=;
        b=VAlxQRvRrP0OP89Zww8UZLzgAvu0SMxKC/VmwO1W3Q06Yq/Q+Yqyo7UGClT58L8hfD
         wmpiaCOT8yCYGvKiqGmEZCcB3IBjWH7It9beS7TsX9HSWEPh528spu7SLlbfXeKxi8YD
         7JSDrbcBP1yaIruuYS3NYC70VCQS87ntiE1MZcorr7+0X+XC5uy/tMAKOT/wwOc+KChC
         7ZteuTNHZU5UpmNVu+obhPp8J9+ralZhOz2669LClRChT7gt9K+Yr1oEzxavf6aPCdaF
         FUG8Vkn6wGxidt7qCQHxRzgM1SVOcYz4EIAzIq4l5dy8U2jfoP7uDZ0ZG4wb/N9K/ljc
         FFng==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770047488; x=1770652288; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7yDh+JC7Z+2RBqZUUP8nJKY2Ywl628bcHYB1vTz3mFc=;
        b=P3gmAVDv4mm6U2080KcMNIt9HkiTYhxjF3rAWfCl0Bva5dn6SZD/1WRxTqm3DZWp7D
         xoZ70AnLX7TUVV7RiHB47i8MWrp0EG3MbNhwd2MtYOBO4zKW/5kH4Hsw4Oz4dHOR2B/s
         zgDLVdI1fsqWpa/SGsgTBwnHNHPsO0UBoZjJLDR7Ug+/PzLFTTz5vsMMVkv4tLFknTKS
         XAqV/wL+en1gYrRGmBznxJB760Wln4/ZiLgqz327tTxQBeVJShmvauaYC9DtnkdHfbiX
         BkIUSIZhexy7FXW12bpBDfcH7C5Td0dK5crGWtz2MdYM1PpJfCKrtaJ3Rbf5ASdcj0pN
         Npfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770047488; x=1770652288;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7yDh+JC7Z+2RBqZUUP8nJKY2Ywl628bcHYB1vTz3mFc=;
        b=BsMEkF2Oe9mF0STXMTYkARuw20mmLaj/mhzySGuLm3IheSCPmpr3yGXmPDv8vBsHFN
         Zy4PbJkT3NugL6gYyoseTkVgfCnAfW67/sSzl/m3uApnUhc7M29D3Ejz+N1KTJGidSNv
         DctiZrWbAD3iUusPZ+xLO8l6sQL6yOCSGl49HydueFhNt3OZlrZKN61H3guyL/5MNkN6
         4QZRq/r3tbxItA4AMRCfpZr1jXHnS3kcWJLYAYGp7UTY4ab71IZVki/2UhIO51H0sGqa
         TTWD+423ZOspxfHbBBIsJKSsdM+ydLPzjaQavY68jyoU9RFrD77Qj4DZnbmdTIUkUmIY
         TJBw==
X-Forwarded-Encrypted: i=1; AJvYcCU8sTyPsoDs+bOOXM3Wb8dlJn5s5qR/qLxIAaJ6R1BE5HuHLRhv/dar632HIRo9oq4fw0vJLURn+qVw@vger.kernel.org
X-Gm-Message-State: AOJu0YzOhzLgMe/cPAs6Qohc4y9nktCtlBKyglxD8r/sBlHn2piP3lcV
	dhgPqfTIqgdJGr+tXyWRoNvzQnE4OOq53QAqADltAf0IcyUZzo0lW9OcC5yYUOQK+NLk+hiSwG9
	mniTNP0ftmCJR5UWmgms6Mo6H1CyJQTRBVzoSodgFefOIjEmB0oljaN7sI3NzNh8JfrU5bnYzoe
	I6XCJAcyC5l9FcnkoibsI9h95NTjLA2+2eD0K8t+k=
X-Gm-Gg: AZuq6aLj/WCXLkGXndaLZyC2FmwjMYaz+qmzYRnrW+qnYzhgqt6jMWazJ17LO+2auQp
	GtW4VIKrBrNwCbpS6fnhpXTu8tvFrUnCZkieQzbVa6mXGV+7oVYCS4yEE0YLPMHltN6ejmUkHut
	4a63dd+8drzNQpy4vsd/SXLp/hXhj9IvORTtys17YqKCoeACP3Smi0SAla6dPZ1eV9JqZ8EW1Im
	2p8R7vKVPQO/r04TS3fBsD+D+s=
X-Received: by 2002:a17:90a:e708:b0:341:6164:c27d with SMTP id 98e67ed59e1d1-3543b2e008emr10839036a91.3.1770047488049;
        Mon, 02 Feb 2026 07:51:28 -0800 (PST)
X-Received: by 2002:a17:90a:e708:b0:341:6164:c27d with SMTP id
 98e67ed59e1d1-3543b2e008emr10839011a91.3.1770047487529; Mon, 02 Feb 2026
 07:51:27 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260201-iris-venus-fix-sm8250-v2-0-6f40d2605c89@oss.qualcomm.com>
 <CAPDyKFoNX087ZhLkQ_n8-42WNQcL06noSuPJPDG87y0andVdNg@mail.gmail.com>
In-Reply-To: <CAPDyKFoNX087ZhLkQ_n8-42WNQcL06noSuPJPDG87y0andVdNg@mail.gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 2 Feb 2026 17:51:16 +0200
X-Gm-Features: AZwV_Qi2e1xUlq06PRab_j4QBJgokhNft9ud38gaUZCSMyia8nonVRqW7NIgfHI
Message-ID: <CAO9ioeXkhxjghtGVGsOH=1hwC5FvS_4LEXt3hmAEuAbwVjct3g@mail.gmail.com>
Subject: Re: [PATCH v2 0/8] media: qcom: iris/venus: fix power domain handling
 on SM8250
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        "Bryan O'Donoghue" <bod@kernel.org>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Hans Verkuil <hverkuil@kernel.org>,
        Stefan Schmidt <stefan.schmidt@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
        Dikshita Agarwal <dikshita@qti.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-media@vger.kernel.org,
        Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
X-Authority-Analysis: v=2.4 cv=XP89iAhE c=1 sm=1 tr=0 ts=6980c800 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=KKAkSRfTAAAA:8 a=2dp1CtdQIJBwMkjZU4MA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: pyWnR5yG-mFdwqsGHvETmsV0jMPIAuFH
X-Proofpoint-ORIG-GUID: pyWnR5yG-mFdwqsGHvETmsV0jMPIAuFH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDEyNSBTYWx0ZWRfX4bmMasXSewRO
 IdZj7vV1u9v2MXfThh3qh6SZv9DoIlwTtf+x6WSZMbcuWeg99qXBk2dvQKDv+oepUiHLN35Vfw+
 bJvEqDu33Wofj04mdIKhwWak5XQXjUXrEu2rKvpeq1vetH+/SmOVvlOJiKpzkfryM7B0tnAdYA1
 N5tXfZTLGA+JgldZWhIwAsOoOdPgnFOFn4LCGh89iag2n4ak2ujOrCfRrz4Mz0QoddLw76Lig2e
 dt1Tn7b+1TYLLYy/ZHLxrJK/B1lOMe2Sk0FLhzKNa8Xl9N2c/yYCpWoabYPLGmcoqNDlo7gQJgK
 DN3mIKTiAEtl6SQE3LVdk6QnPZ0sfWMjWrOAnY2VJmega75lmKOo5aueVToALWZsFDm4IeaOi/0
 SPfxnejLu9GjeA/+y8wgJRxzSxKiq/oxOs97pebf4bqmPIkHnYV6P9D5QVIZQ79tUgqDG5nLh2M
 wUH9HiNFp0aevSxNXvA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_04,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 adultscore=0 impostorscore=0 malwarescore=0
 priorityscore=1501 spamscore=0 suspectscore=0 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602020125
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261883-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt,huawei];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 33BE7CE897
X-Rspamd-Action: no action

On Mon, 2 Feb 2026 at 16:46, Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> On Sun, 1 Feb 2026 at 11:49, Dmitry Baryshkov
> <dmitry.baryshkov@oss.qualcomm.com> wrote:
> >
> > As pointed out by Konrad during the review of SM8350 / SC8280XP
> > patchset, Iris aka Venus description has several flows. It doesn't scale
> > MMCX, the frequencies in the OPP table are wrong, etc.
> >
> > Let's correct the Iris/Venus enablement for SM8250 (unfortunately also
> > stopping it from being overclocked).
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>
> Do you want me to pick up patch2 for v7.0 - or what do you suggest at
> this point?

I'd prefer it if it is picked through the immutable tag/branch.

>
> Kind regards
> Uffe
>
>
> > ---
> > Changes in v2:
> > - Fixed example in the new sm8250-videocc schema
> > - Link to v1: https://lore.kernel.org/r/20260131-iris-venus-fix-sm8250-v1-0-b635ee66284c@oss.qualcomm.com
> >
> > ---
> > Dmitry Baryshkov (8):
> >       dt-bindings: clock: qcom,sm8250-videocc: account for the MX domain
> >       pmdomain: de-constify fields struct dev_pm_domain_attach_data
> >       media: dt-bindings: qcom,sm8250-venus: sort out power domains
> >       media: iris: scale MMCX power domain on SM8250
> >       media: venus: scale MMCX power domain on SM8250
> >       arm64: dts: qcom: sm8250: add MX power domain to the video CC
> >       arm64: dts: qcom: sort out Iris power domains
> >       arm64: dts: qcom: sm8250: correct frequencies in the Iris OPP table
> >
> >  .../bindings/clock/qcom,sm8250-videocc.yaml        | 85 ++++++++++++++++++++++
> >  .../devicetree/bindings/clock/qcom,videocc.yaml    | 20 -----
> >  .../bindings/media/qcom,sm8250-venus.yaml          | 10 +--
> >  arch/arm64/boot/dts/qcom/sm8250.dtsi               | 42 +++++++----
> >  .../media/platform/qcom/iris/iris_platform_gen1.c  |  2 +-
> >  drivers/media/platform/qcom/iris/iris_probe.c      |  7 ++
> >  drivers/media/platform/qcom/venus/core.c           |  7 +-
> >  drivers/media/platform/qcom/venus/core.h           |  1 +
> >  drivers/media/platform/qcom/venus/pm_helpers.c     |  8 +-
> >  include/linux/pm_domain.h                          |  4 +-
> >  10 files changed, 140 insertions(+), 46 deletions(-)
> > ---
> > base-commit: 44ef70faf71468e0ae4bdb782a6d43f0614b8ffa
> > change-id: 20260131-iris-venus-fix-sm8250-f938e29e7497
> >
> > Best regards,
> > --
> > With best wishes
> > Dmitry
> >



-- 
With best wishes
Dmitry

