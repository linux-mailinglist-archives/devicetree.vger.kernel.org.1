Return-Path: <devicetree+bounces-269203-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yA+WI3iCoWkUtgQAu9opvQ
	(envelope-from <devicetree+bounces-269203-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 12:39:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 32D671B6ADC
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 12:39:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7E4493104DF7
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 11:38:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CE8A3EDAD8;
	Fri, 27 Feb 2026 11:38:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="khVvwuOz";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VQOOGc05"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F683F0747
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 11:37:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772192280; cv=none; b=dbMVB4PXuJQWzpN+eAJys2p//EGvfORp7OdDLM9f7O94nRqJKLBaXndUqdswtne6Fwk9fLpTEJwrh4EHDcUsD9lqaknrWGEZisGZpu/l3w6AjWImJZB4OkEHD6l2QWUlcVQGatWfjzDZUCGLSz8Db1+rLw0Wm8xX1qQeGOvsu40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772192280; c=relaxed/simple;
	bh=TUwVrWaKkkLI8/hk3wfytchqImMKwKLMARswvm3p3DU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UH6/eJeW6GidsfhQWZj6ye2lLQNo7EYBQZtCijPWWNz2gIGdyD9Lxeqp2NeOlrsyYFmbOkGY7zx43C2EiwDKbkYCzYFP3SyazEyv2F/G/lzZ4fFxccbZSTydYGa4nXP8vUHuPUbl8W3BvF5BP/z2z1Y3l27jeT9E6nBfynOt/0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=khVvwuOz; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VQOOGc05; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61RA2WSo3747272
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 11:37:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GXVBy9XUdUrUuaUOkpG66hxlJn1+0xq2o0xfjx+AkqQ=; b=khVvwuOzSJxnuf27
	L2NV+HrQKziEKn5Rpu5PJ91RoMyCavQ/dGEVKzietctyQax+rSjl99B5uqu1aTjd
	kGJ0//uOVE735JxeS70igsCxeVkksrmGkdZb6/Gat2nNitwM1nfjw9T8ljfn8hdo
	7b3QmpAoYkdOr3HyU+LrBMk5/tMXdFMOGtlvxV6IPxJhlp7aoPiLCAjv1ocTRaM6
	pQfKspm6iXysVjmI2JVUbR9jVGeOyRx4pxFjvgS+6Hm9IlTgg5ploOM2ntollsnf
	DM+ASeMS5lwUqQVrQWQ1TVhMKI+aecsVEtwywolcc9uTwBzHXU/w/n90MwncbYoC
	cdYeeA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cjuur2tba-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 11:37:58 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-82717caafccso851641b3a.2
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 03:37:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772192277; x=1772797077; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GXVBy9XUdUrUuaUOkpG66hxlJn1+0xq2o0xfjx+AkqQ=;
        b=VQOOGc05wzXu3edwy7BTzFmrHs0k+dRXNjhaJM+d3kJzMhn6AIgrGZClqcJvkXRAXN
         Rt3FmdbkuMpkMlCTZk/UKBYV9C9meNFde0m70mCj+fPWdWofUld81bWqspaFv993A7jZ
         i97H9H43nTInGaOxaf3DaV3OMMVlsMocp+qumfjKAEHAvBEH+tuVqru08fUSw/psc/Nr
         Gzk0vfaQM5YqAqUKx8kIjDVlnf/MbFOX+5SAAmJAeiGB1WuUVulWKvSndkJ5aX/KYxLd
         bPAuc3jwbaGDeBCjKQ8LnxhkuKHc1xlWg3lCbyv1b1NRiu7OFbDfjizut703h+U68GIF
         G1Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772192277; x=1772797077;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GXVBy9XUdUrUuaUOkpG66hxlJn1+0xq2o0xfjx+AkqQ=;
        b=Gm7407GZ8mh2vnJf3cEEMimgsZvFlDW59Arwapojgas3Ll7ilZVqgsxhXxAOfeOhFE
         MlxUzdqyNctTEqAZIPWzRg/8xoE8CFbF8LizfHHmZCkBezBnUlyq9g9X622jE4tnMgtn
         kJd0V90gfFioTyaV77IXYP+Ap174g99HluijEhSZO2Rqxz3OlKyKUMTH/tKDzaLmai7w
         00lVMuCt49hFTihM4k6ZhLBtagF/XbtAhxr6qU9schCGUj+u5wisQwitrLDrmqIagxbj
         AMxgEIj+2BvlO25Areeb4MSnT3pRb9LTSQeYrWmihhLo/l+kpYMIXlfRW1O/Aa2HawOc
         3wqg==
X-Forwarded-Encrypted: i=1; AJvYcCWEg+BoADlSfuHwPvZeenG+vsNMkNyn9mHJOGh8DCs8r4cJiyh9MBzykBvIQh1+Qz2ztgdyz5f4qY4D@vger.kernel.org
X-Gm-Message-State: AOJu0YwtCGPsQ3jc4ZEIRL14Lmc921mujJ4BowwI4EIDeyWz4je3ppON
	SKUqZtPgJFR2qd94drBw+tZ/AjIsPC8TqKCtNas2Rcr9QOgdg7rO9Fw4i3JgjDBbUSXKmW6xDml
	wXivVbTigxtgpZ4tywChI/V9RaCeiFtwgRGWU+sXsHaZLClQ9wRg8VgukzrvGQTrg
X-Gm-Gg: ATEYQzz0ExESctKiIbqU06oe5xylhHLYD+ZTpKbVv3ImHbOdczFNF2o9ttFDYurhXLc
	f3gYgcNipbJjY8U2vxx3Kh/elyEBkQnIm846AvygdMbh32WeK7hDl9GZh7LDsprSpc4Zxck8o3v
	6XDmDYiOsy150WxO3rpeF2vM44HeyCkmpFoCHNBDY+64KA+KJkE6Mf7kSYI1nLkCyIJUA3LMyp7
	BxQepNxXURmjl8Mo8joP/PemYr+pIssiVNHnswvPk476Ce/78AkmQcnnzIFjx9ILKeAX8XGCJpB
	sExFAFDnDAm2wB3Q4JFbJolRKyFk44/Ysow26YCwkgN2stsyfY4VT/cK1RhzWlSPn8xeHeCHYM+
	hYp4JFhb64xRgK6/Jh5IE5MaZF4nzUA+Mn3bm3VcJaruy
X-Received: by 2002:a05:6a00:810:b0:827:36ed:c6be with SMTP id d2e1a72fcca58-8274da25538mr1925577b3a.7.1772192277211;
        Fri, 27 Feb 2026 03:37:57 -0800 (PST)
X-Received: by 2002:a05:6a00:810:b0:827:36ed:c6be with SMTP id d2e1a72fcca58-8274da25538mr1925563b3a.7.1772192276750;
        Fri, 27 Feb 2026 03:37:56 -0800 (PST)
Received: from [10.231.195.100] ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82739ff1a69sm4793030b3a.34.2026.02.27.03.37.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Feb 2026 03:37:56 -0800 (PST)
Message-ID: <a2b64ff0-38d6-4153-899a-b1e5a620eac2@oss.qualcomm.com>
Date: Fri, 27 Feb 2026 19:37:37 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: glymur-crd: Enable bluetooth
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Zijun Hu <zijun_hu@icloud.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260226-bt_glymur-v1-1-838fcbfaa767@oss.qualcomm.com>
 <65d15750-64f4-4abf-a62c-519510ab3968@kernel.org>
Content-Language: en-US
From: Zijun Hu <zijun.hu@oss.qualcomm.com>
In-Reply-To: <65d15750-64f4-4abf-a62c-519510ab3968@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: pYfVCyVII00GdJu36FKFjZGZYW7H6bYK
X-Authority-Analysis: v=2.4 cv=PN8COPqC c=1 sm=1 tr=0 ts=69a18216 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=qC_FGOx9AAAA:8 a=VwQbUJbxAAAA:8 a=Am-IchHnSq3TeyD-7eMA:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22 a=fsdK_YakeE02zTmptMdW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDEwMCBTYWx0ZWRfX/HXERMJ97uFW
 GxsZd7EfNLhJv2CSdgzL/Ee1XKMK4V4JP7hKmX0oX2t74rnYIwxU3J5+0aCHMz6qXJZsnGNymAr
 ugz/e3RUFOX9oydQr0pN4eduoGTPDtApzse+b0k20QnlmCWf4mee2W4xUWPTjC+tvUZd5+rjBi3
 PllsVKK+FTPDoNG3K/qe1ivextrXsTjAydPnrmX+9fIUCUM5y2LLC7vamWTFKxcIuR1sexO6waC
 Io+Dq36jWTMiPhwVKoNcGAbWt8w9PmTIM+a8hU5ooOnkdOpttZ61bVDiIgQdeEJzjci41bqu4rf
 BAu5a/KnfexMSQcWBwd5CFK3ODuiRX2SlTIk3L4gwuBZpcqmugtRGqcaUouycAMZuv3F23qVT6b
 2lyuNeZqFW78AyeYGN8wRASMqhU0/6Oj6XW9A5vseVLBEJd12/hw18DXduOTt1G3Qv6zqmJf5I4
 IMT6DW2W3TYensdPi9g==
X-Proofpoint-ORIG-GUID: pYfVCyVII00GdJu36FKFjZGZYW7H6bYK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-27_01,2026-02-27_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 clxscore=1015 lowpriorityscore=0
 adultscore=0 spamscore=0 phishscore=0 suspectscore=0 bulkscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602270100
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,codelinaro.org:url,qualcomm.com:dkim];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FREEMAIL_CC(0.00)[icloud.com,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269203-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zijun.hu@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 32D671B6ADC
X-Rspamd-Action: no action

On 2/27/2026 7:20 PM, Krzysztof Kozlowski wrote:
> Why are you making concurrent work and sending something which was
> prepared by Abel already?
> 
> https://git.codelinaro.org/clo/linux-kernel/kernel-qcom/-/commit/a0288828563bb1e2101ef8f1e782c8185c5757e6
> 
> This was ready 4 months ago, wasn't it?

yes.
the git repo is a private one, so nobody will notice and code review it if this change is not posted to https://lore.kernel.org.

