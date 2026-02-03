Return-Path: <devicetree+bounces-262231-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MPApFTfqgWkFMAMAu9opvQ
	(envelope-from <devicetree+bounces-262231-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 13:29:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F2FB0D9051
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 13:29:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1951930B0B1F
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 12:24:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AECF33FE0C;
	Tue,  3 Feb 2026 12:23:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EEXxhyiR";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CMZ3oVZf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 470983128D2
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 12:23:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770121439; cv=none; b=CFuVAdFvf6fgGeHoE5HYuJAuxxLLiCy30fb1D9mHmWJBFot3hU79+1kx0HkvgzZyVs1T9G6E0eLTRa9NAxgx8yA0XWqctr6UYRTC1tBzwJPqbZDU1A84yp7sLhb+j3A9wPSzVIkKmhfQTqhBYq0OU6Y3k4cnaP0l1Ubz3W17NrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770121439; c=relaxed/simple;
	bh=1beno9bJ66kwAx9wlruDfw1G3tmXkab6b6hnYrIXZ0U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=djdSzzXhtotYm6lJRQbCvDGNaHmQRvFdRHx4PYZqMBufkax6KnQ9LFvcICXdQ1Ssu3/kQmR53k1qO9+4V5qI+1GXXxJnWlBqU5mnKi93xbqVH0kBnoh6EXOMHd0c4utMlOPoJ2i5bXzetAi7ayfDH6rRz2/ZvU0gDXjQc1sJCZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EEXxhyiR; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CMZ3oVZf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 613BlNIE2418360
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 12:23:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oYO3cR/k1KFc/9QYbB0PIjXcwT9hHSS+VNzE2GCCgfc=; b=EEXxhyiRJfZFSbZB
	ajzLxTCZss5ndJE2qW6VtPKK8g+B44amSCDEsbDTaikwDjlUsvnLQ6Zwq8fitPvO
	DZZPGjXUvxZpj4st/oQOfIp32RVOTXYrgJ/qb54ytx8ZPDfRC2ZqJdo2ta7n7TLn
	Jw5boOaealA3fgOPaNQdNbGTm9K2FkiOkwa9yCTGIXgHc5hbUCwQOSx5oVsGIK4B
	ckwnFuT4V/XElfYaHcT0z3TznEnciJQCsHn3PyOi4H0ds8oLx4IxmcCIF17wO4IL
	5V+hIZiSlNaWOLVbzgst7lYFDXkUekyp37hoRxSGwZW7uWjqSxS1eUphEx2QEJzX
	A55x/g==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c3gew838w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 12:23:57 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-890072346c2so12173136d6.3
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 04:23:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770121435; x=1770726235; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oYO3cR/k1KFc/9QYbB0PIjXcwT9hHSS+VNzE2GCCgfc=;
        b=CMZ3oVZfH5p4OTvp+N8orfIiyxcv30PJN7APWCIz+bbMRlsDVNvaT51MGPT4Ql5CFm
         k5K3mJUqxdVinvbNCkvcrn+90uI5YyP7AqySi3S+zkchHSYBKDA36QYEvWoO7hqW1mXP
         M3/hUrrP7KzkDTQCQmP2HB407yj1hablwwcVel7sVzpFU7GEfklnnSdo3y4MVYn1ARXi
         4CZjcbna135j48xM9eGIMsXSPzySAEH8/Jy63OnpSf+zIdHqW96dHwywHTyPE/5MFxhE
         0FsadUU5wYtbBSox38G3q9vYXZNvIGZ7CwEcOEledjAKzegwxID3+nEj6AfeiQa3Ovb9
         ZAzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770121435; x=1770726235;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oYO3cR/k1KFc/9QYbB0PIjXcwT9hHSS+VNzE2GCCgfc=;
        b=OJQToZXmezrWc+MwW+uBVQPxQhbou6SuZzbWqEn8k8tqlgtZGKnSqKo392AxbXOtka
         4urBgFXz3WLrhP0GCplPoyuGi0q2fYNPz8MePWSKw9YLAGZaUX8wvHEC2tfnlK0G43Ih
         fsev85ug219NKaZQBKjBGI5qRnv0Flhxtn8BbhTaP4lQKUjo9/aPHN0Q1jCC040yqjaK
         fbbC/MrIn7hdJoXTJK6+RG6J8p8MG/smJEtDIJ/81RQ+sph9Y5H7Qy3B7nBoWdOaqO3I
         6LZN5cei4fmOcCUme2PwR1txzEJMwDQ8XxIC/N7nHBz6slLWHIWT2StUbFcrYgDTPtv/
         5bow==
X-Forwarded-Encrypted: i=1; AJvYcCX/eC0NOaBYTcUstNH8uEIei5KLlRmkSvLhLq8AA4LAwpQnsgggBTW+IGcEUN7KffPls64CrrDN+tGF@vger.kernel.org
X-Gm-Message-State: AOJu0YzGN+akfFmK4PdIQvMc+Q0mPw8RAyrr/xgr9Ls2Dg95/QvHnXA3
	Y7yVzZt9jtnRqn5M5eJCwgTN8p9GEwClycbPSXoq9dOPgVAH/VZjpOAXEnaMAgA8IbR+bP2Yvvt
	WWe5NAo0LNVyOcXIS2aH+hw6FKGflYsIo1oGwI0Cixz0tTps1o/FseQAdlQAr8RWt
X-Gm-Gg: AZuq6aIyR8rE1VIJmkPIRFcFpybMPNCZAQNer2JtcS5dXyqkJeyHVfs/UexrkeobX/K
	lccf6UciGl6zpNW4f49dOWRMSL9Lr4At9Xb94utFXxzIk/wRmHeidWqVVejUwG1BzZLhrxjs2gc
	OD/XKlryahpmf/F5HVM1rFY8Ny1e//1gF2gfelOxysXziVXhyf1fjP2+J2XkH1gsBuZEFmVxHrJ
	MEzDTqhg0P3aS1sq3+rA/b5Psx+1jEK6jpQ8jSX2f4X0y9fGut1CU+uP1M43jcxvlhk1Z7V0KxS
	UkNXpEJPu8i/g52hGaU/wrKmH3BrsarR+metXs4WCZV8cSAeN5/ygvwkFsHRBUXf1o0hA2Wyz4z
	zyWv183f7lAO5ES1NDFJZqgpVQcnTFKgWsl4QbRgZMCw+HyV0N0qojtWKf5bo582wRIg=
X-Received: by 2002:a05:6214:4d03:b0:894:6c97:691b with SMTP id 6a1803df08f44-894ea075718mr154409096d6.6.1770121435510;
        Tue, 03 Feb 2026 04:23:55 -0800 (PST)
X-Received: by 2002:a05:6214:4d03:b0:894:6c97:691b with SMTP id 6a1803df08f44-894ea075718mr154408786d6.6.1770121435029;
        Tue, 03 Feb 2026 04:23:55 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-658b4691e53sm9060151a12.21.2026.02.03.04.23.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Feb 2026 04:23:53 -0800 (PST)
Message-ID: <2d2bc77b-715d-4484-86c4-4389ebb63856@oss.qualcomm.com>
Date: Tue, 3 Feb 2026 13:23:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 06/13] soc: qcom: geni-se: Introduce helper API for
 attaching power domains
To: Praveen Talari <praveen.talari@oss.qualcomm.com>,
        Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, bjorn.andersson@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, quic_vtanuku@quicinc.com,
        aniket.randive@oss.qualcomm.com, chandana.chiluveru@oss.qualcomm.com,
        jyothi.seerapu@oss.qualcomm.com
References: <20260202180922.1692428-1-praveen.talari@oss.qualcomm.com>
 <20260202180922.1692428-7-praveen.talari@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260202180922.1692428-7-praveen.talari@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 0Dj6zaAleFqxwV0OYRrhA5zYEGdV5h9x
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDA5OCBTYWx0ZWRfX0Mefl7ZYGXqr
 18iQ2jkz1X69+jaO3FVG6wQCrHZdKmtgRrMxJEQ5mkOXyc6wXazUWfOiZElocP3YspltCOx9EHU
 DuxOBHNrNy8ZZK2easMWMD4Vp/E3RPFwOBdpLE9Hmg4AWqVNBWPT2I5qhwlysYKexwPQA4LSYku
 p3wU9QMm7jSnKdtk/ipitfHmlJ+nPYWnI02CVHn7Q43nGo6NWLeqeD1O/XsmzuQkTVbGFfYKRC6
 TwiYo9HR+XslKP4CxYUfJf+bNbdL1cWaKA+BbIx9UaSY6WUTNoCSCpkI8kdsPTgHYtR+Mtts/Wq
 P/MrkqEFv8JhGsoekgg57kjI2neBZYW0GoIDW+PlwQvRhqf6/nWhXKg+JGpqgU877v1KSVRnO70
 3CITuaTPUV3kDjd0AvfT6+O/Vc9vYuFziqhtnolNBL+Sjjj/N6DEVm+OXCiH31brJ78Nq7dErZd
 gJL20thrQKHQyceWwOA==
X-Authority-Analysis: v=2.4 cv=XI89iAhE c=1 sm=1 tr=0 ts=6981e8dd cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=9pTQncvtRyGiLAFmc8cA:9
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: 0Dj6zaAleFqxwV0OYRrhA5zYEGdV5h9x
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_04,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 suspectscore=0 phishscore=0
 lowpriorityscore=0 malwarescore=0 adultscore=0 clxscore=1015 spamscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602030098
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	TAGGED_FROM(0.00)[bounces-262231-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: F2FB0D9051
X-Rspamd-Action: no action

On 2/2/26 7:09 PM, Praveen Talari wrote:
> The GENI Serial Engine drivers (I2C, SPI, and SERIAL) currently handle
> the attachment of power domains. This often leads to duplicated code
> logic across different driver probe functions.
> 
> Introduce a new helper API, geni_se_domain_attach(), to centralize
> the logic for attaching "power" and "perf" domains to the GENI SE
> device.
> 
> Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
> ---

[...]

> +int geni_se_domain_attach(struct geni_se *se)
> +{
> +	struct dev_pm_domain_attach_data pd_data = {
> +		.pd_flags = PD_FLAG_DEV_LINK_ON,
> +		.pd_names = (const char*[]) { "power", "perf" },
> +		.num_pd_names = 2,
> +	};
> +	int ret;
> +
> +	ret = dev_pm_domain_attach_list(se->dev,
> +					&pd_data, &se->pd_list);

Let's use devm_pm_domain_attach_list() (notice the 'm'), as the list
is never detached from at the moment

otherwise lgtm

Konrad

