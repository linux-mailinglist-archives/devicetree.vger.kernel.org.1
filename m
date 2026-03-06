Return-Path: <devicetree+bounces-272252-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KIB2Ccv3qmlxZAEAu9opvQ
	(envelope-from <devicetree+bounces-272252-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 16:50:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F4EB224386
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 16:50:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6B8C33056C28
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 15:49:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B7D836C9F8;
	Fri,  6 Mar 2026 15:49:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cEnu/OnA";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kSKvvwhe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27BEC286A4
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 15:49:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772812153; cv=none; b=ML+n0gAIqly6Lw04pvwTGFmcPUq6pScSFrDIonDPFEjxy6Pi5XqF+FekOhA4NWt/Ck/pMWSabPVIHHKORtFng/4/+/XolnTfbDrEAGHkdr3jnhLcsbMhqjIG0H3PXwSRSXcTFiVhBSOGAI6ewMB1oW81fvzOuJMmlk05LYlRSho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772812153; c=relaxed/simple;
	bh=HltvsgB/V32MMRgrH+wmQKGVLrI+i/tqgjQTY4Hm9Xk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eLaFKMT1AOMqmzvFR0I250451KO4auf10ePqcQPb0cP0JeF8fJOJs9Jt5UVcI6YH38dp5Z/BHVw7mgk3ozg2P2v9sPhRDM56V8tqFZkZTbTDYn82wRWBxK0IUsuRFQotx3HuqX4kPRYa+/jA8404IaOFicTCGdmG8vdI/ZKUZDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cEnu/OnA; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kSKvvwhe; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 626FT6TF2522583
	for <devicetree@vger.kernel.org>; Fri, 6 Mar 2026 15:49:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0/756cthtUIgOJKo1UJZNjKGTLA8f8YYmW1bpSBDIWY=; b=cEnu/OnAC1cBRLNl
	4oQ9YSwsZrvBAX9vdKjIs9IzdOxhYHFFQ0EAkTpagLjsb1DfxR5yMosUQ3mz5pDo
	S0lStsQEKOV0jFVu6gcYfnTboyaow+s2cJOaGYaQfpvaYF+RmDLZPh/Ec3Q4HHzL
	Z4ms2RHS4O9mHg1ZDJsSdiKGKAVEjPMiGp0rVjpjmHAvTmzI7XmKLHrZcEGy0R4O
	1Pn0H6H086qujpi/XmdmZdKzDTWEaQZJn0ctv0+8fOqWxpWuTHXaPT4sSIpbZi5c
	jEt096fLWsPp3uPV3vFuKCWSlMp0pyiUXcI3mQVepsO1b163WXom9joVA8/cXTl/
	cA1vHw==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cqfg6brsw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 15:49:11 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-2be21146933so6740580eec.1
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 07:49:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772812151; x=1773416951; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0/756cthtUIgOJKo1UJZNjKGTLA8f8YYmW1bpSBDIWY=;
        b=kSKvvwheaYCL5qs3+i5/BvfecewIjzCRavjPYMdGGQmXchcsbabCeuCIug4SFzfhPb
         Aud6seKfQKmfhB9N4mNo6/1aq3P+hcCJVOhXi9TROOZ1IWGxBL3c+bqzJwSajPlakodt
         qV5sQ1377h7TDQx8cAQrYQBLXnDPTM5D9Q5ObtQWH/XDgEmwz3xi7jjs+Q3p3pgf6xEF
         pQXAtlCgRc1fdac43qr1VFguXWsisLs7sw/XwowqDeXu3/i0O9ZQwgFNmCl8jEeqCdOr
         IETAKnCN19M6ZypPuQvOS9BI6laD1a52vU+VTcL2QPgZqd5yl8/vC5b1VMdPwe8Ev59/
         bU4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772812151; x=1773416951;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0/756cthtUIgOJKo1UJZNjKGTLA8f8YYmW1bpSBDIWY=;
        b=meQ9L2UNkOFkUrObEM/EYBoIEVL76ri4fRd8ZfTjJDuz4O51cL1e4bbhe+BpvvTNfG
         Jc7tTlf7AYz2rG/ufHue8L/4IgK+HoYPKc2xLAGwPLNW6KsiuFgr2gyCcsJdjWOnRr9o
         wdSOq8PAJQKbdLupfzS5XaKbT/Wv7Q7Ob1U7RSh+jsTOdAZ8jxafdjyyMlknk71FxOIf
         EjdlHO/bURIPrWH+kX0aBE81+zaJ6fgoi5vCmCEEs+m3BvPQ7OYrgW1Iq+E2hb1iHM03
         puW0OLVtFVuqwHYiWv8mHDHBi85m6RcF5W9MWMySjxi/EQ3sY0uVsFHJfWdILclCnQ/k
         0Bfg==
X-Forwarded-Encrypted: i=1; AJvYcCVn3od8JhgMYfjU25jA2kQZsUi6aIN8QKUKf6pshp8rKyFsAvSfKkpwdqOCGtvCBj9jPNvALkNEYLNo@vger.kernel.org
X-Gm-Message-State: AOJu0YxxCNNhvOWxY4hjuILRDOz8w5dceJ6SoJW20Wk1UjtziBtVxAXr
	Bt2fuwEe41zjzDk7nq3EwrofV81m/w3ZLtUq6dwSYWIzrxXY+VgrCdIL78rTAq7S739NjtrH8NV
	fLohALlnL2lbVoRi9JVkXk8NtWaOeBmGpSFk3xxcKRyckXAmPi1GMz3DK2k932e6d
X-Gm-Gg: ATEYQzyf+A3PQjbb3iYunOS1VeOGT5y9ZRM/io0olMWtrgMa5ChFSSZ9okBfClCyPUQ
	RshpBWWNqYf/jDFefIzmZvvvM+DPaKIGK7FNmcM8UhopLZ6SeuPyk9Uvd9avRcO9U7zCSZ52USn
	+0utQYNDNvxysbqXNH17VisaERbT1aCxxPzDJ5vordQLZVkkfrKHdSpAn/vYAw92HvDA6mW5iqf
	ql1ks/DP/91FstgNGUg7dO787ykBCYivgYOixCfU47SfOcEcrdGbruavbEN2KbjubpQwc/4tuxq
	rQl1rOTkh2BNbe2QvAZS3U060o+ah+hsqVjhwZ9XHsGSi62cAy6SwwYKW3QX5SEsrCLgB/sMMxk
	xOB087m0mc9qNzRmI/hbqqvT1D/gj50j7GgqbwGq4PW6aMx80bXXiSc2K/l568KVTb+HHkg6T/G
	zX3C1KZd1ariCb2A==
X-Received: by 2002:a05:7022:6898:b0:11b:e21e:5653 with SMTP id a92af1059eb24-128c2e0c967mr1056266c88.19.1772812150825;
        Fri, 06 Mar 2026 07:49:10 -0800 (PST)
X-Received: by 2002:a05:7022:6898:b0:11b:e21e:5653 with SMTP id a92af1059eb24-128c2e0c967mr1056220c88.19.1772812150163;
        Fri, 06 Mar 2026 07:49:10 -0800 (PST)
Received: from [192.168.1.41] (c-24-130-122-79.hsd1.ca.comcast.net. [24.130.122.79])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-128c3f58d24sm1497977c88.12.2026.03.06.07.49.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Mar 2026 07:49:09 -0800 (PST)
Message-ID: <00a7e65d-aad3-4029-af51-ff0870e65595@oss.qualcomm.com>
Date: Fri, 6 Mar 2026 07:49:07 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/14] firmware: qcom: Add a generic PAS service
To: Sumit Garg <sumit.garg@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-media@vger.kernel.org,
        netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
        ath12k@lists.infradead.org, linux-remoteproc@vger.kernel.org
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, robin.clark@oss.qualcomm.com,
        sean@poorly.run, akhilpo@oss.qualcomm.com, lumag@kernel.org,
        abhinav.kumar@linux.dev, jesszhan0024@gmail.com,
        marijn.suijten@somainline.org, airlied@gmail.com, simona@ffwll.ch,
        vikash.garodia@oss.qualcomm.com, dikshita.agarwal@oss.qualcomm.com,
        bod@kernel.org, mchehab@kernel.org, elder@kernel.org,
        andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
        kuba@kernel.org, pabeni@redhat.com, jjohnson@kernel.org,
        mathieu.poirier@linaro.org, trilokkumar.soni@oss.qualcomm.com,
        mukesh.ojha@oss.qualcomm.com, pavan.kondeti@oss.qualcomm.com,
        jorge.ramirez@oss.qualcomm.com, tonyh@qti.qualcomm.com,
        vignesh.viswanathan@oss.qualcomm.com,
        srinivas.kandagatla@oss.qualcomm.com,
        amirreza.zarrabi@oss.qualcomm.com, jens.wiklander@linaro.org,
        op-tee@lists.trustedfirmware.org, apurupa@qti.qualcomm.com,
        skare@qti.qualcomm.com, Sumit Garg <sumit.garg@oss.qualcomm.com>
References: <20260306105027.290375-1-sumit.garg@kernel.org>
 <20260306105027.290375-3-sumit.garg@kernel.org>
From: Jeff Johnson <jeff.johnson@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <20260306105027.290375-3-sumit.garg@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 4HRxU-oWxJpwqjgAeQLIfaoIBKG4C-sL
X-Proofpoint-ORIG-GUID: 4HRxU-oWxJpwqjgAeQLIfaoIBKG4C-sL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA2MDE0NiBTYWx0ZWRfXy55NwFHxD1EN
 xJLWp8ERQVcuZoWXt06x0sTmm2CC+6+VI9yyXU9+0g456OSuH0o2uxMEQOhJjyUynQfrHcSH49u
 INKfvJxgNJ8JzxJvvl8sYOttZ8pQ8ezAsOrojk/J4AK12vs2R6HQa8s68g5JRgiOkXS1pzI3XJO
 TKK8YSYo2Tvn5rciV231fQoKaC/Cp7rpN/3kmWtVySO8JwHtSPC5nBiGCKxzKhLPLBYb55PheDN
 hxVVQTI7F6/IKoJx+MimMYERH0CNrl4gYTCzews3y1Nj4DiXkC+KKYdjrrL2rvd2RRIABMHC2O6
 pBqRgOVU3PGiNnnIjXtZ53NkUYbiv8zg/MoK6qIc9V6DPsekMlPxCGuxv3+DjMh6c9fM0KZm5Np
 ZokuH8140y1ShoLzlKGJI7JDVa6m2+IBgToBgTftgNlZmvko0YXAqCzreLD+F5oZhaUJJyu+R/E
 CHXqjR/xfTHXqPqwvCA==
X-Authority-Analysis: v=2.4 cv=XKg9iAhE c=1 sm=1 tr=0 ts=69aaf777 cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=Tg7Z00WN3eLgNEO9NLUKUQ==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=PJDN-9afRshu8rMoDvAA:9 a=QEXdDO2ut3YA:10 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-06_04,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 clxscore=1015 priorityscore=1501 phishscore=0
 malwarescore=0 spamscore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603060146
X-Rspamd-Queue-Id: 6F4EB224386
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,oss.qualcomm.com,poorly.run,linux.dev,gmail.com,somainline.org,ffwll.ch,lunn.ch,davemloft.net,google.com,redhat.com,linaro.org,qti.qualcomm.com,lists.trustedfirmware.org];
	TAGGED_FROM(0.00)[bounces-272252-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[49];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jeff.johnson@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.988];
	TAGGED_RCPT(0.00)[devicetree,dt,netdev];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/6/2026 2:50 AM, Sumit Garg wrote:

I missed one k-doc warning...

> +/**
> + * qcom_scm_pas_auth_and_reset() - Authenticate the given peripheral firmware

s/scm_//

Warning: drivers/firmware/qcom/qcom_pas.c:173 expecting prototype for
qcom_scm_pas_auth_and_reset(). Prototype was for qcom_pas_auth_and_reset() instead

> + *				   and reset the remote processor
> + * @pas_id:	peripheral authentication service id
> + *
> + * Return 0 on success.
> + */
> +int qcom_pas_auth_and_reset(u32 pas_id)
> +{
> +	if (ops_ptr)
> +		return ops_ptr->auth_and_reset(ops_ptr->dev, pas_id);
> +
> +	return -ENODEV;
> +}

