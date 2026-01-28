Return-Path: <devicetree+bounces-260365-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cBWIGq72eWkE1QEAu9opvQ
	(envelope-from <devicetree+bounces-260365-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 12:44:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 089F0A0BBA
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 12:44:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BCB27300DEF3
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 11:40:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E54E34575A;
	Wed, 28 Jan 2026 11:40:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BmBcqrmn";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="U175rbEY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C39F332ED24
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 11:40:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769600451; cv=none; b=UBQXyLz2hPx9MWa82c1U2QiqNdFZpafQQefacNsr4SzahjB6AQQWkx1ZAISv6BuKhG7j/sNBTKla+suyLVeZ/E/QkEZsiWpyR+UaftS19n7jXMSG5MyNA/z70XsQAxYXOqCdgD2XEfJvcv1Mi/FFUq2QQWP1VtRuyrpiyFrKm2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769600451; c=relaxed/simple;
	bh=j/ge1cYoVoKQtm8+vTtBK0i49s3h7i9Wjhl9szH5/vM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=D+21KIyYF84DFZJ8y/Gax1t/g/fDQvr68iAISo2neDZV17WrTpBEgSAKt/sxKbqUF00tIPGV3/Eny8BqK/E23dt7UW06Kpd+SlWeJ+jo1cZ/YdAR8I1CgReWuHOhKxfu9RKprMJa9V/yaPe6JnIgubsXvCRGaUoTewdf7xQYbSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BmBcqrmn; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=U175rbEY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60SBdwfm1750484
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 11:40:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BTab+FcV48Rmd0EeSo0ZDg94erNKh3uHN+XAR8aqhmE=; b=BmBcqrmnjPGFHZjY
	t/ocnHaHSeG34qPSigvvm/QrV/nO8EPd8yBXcANDDoyQURw7tUwYL2hre9WiDwmm
	aM17gDOogpVlST4FFzoB9xiiZJMZfoq4Z9fzjaWQbziWUXF72Cauu1WI+O6dg402
	ibZHDCGYDKrZNfvv0iBsaubrceIQddt7AKv7ZMyntz8OFs6KSIe6etjFkFs+pVm3
	SBoyBzHQ+FFQFPOkBdAFF8KPK5wxfGhBJfBIS1EMAtDsWdmgq2/4ArBNCEu9V01+
	scOxBFrRFw8pQP9n/V5UOk3Gl0Wztzl/2OGNhoy2Khegv2YnNYSYtkfjcLBi3Okh
	km3Wlg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4byhsj804q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 11:40:49 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c53892a195so12919085a.3
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 03:40:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769600448; x=1770205248; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BTab+FcV48Rmd0EeSo0ZDg94erNKh3uHN+XAR8aqhmE=;
        b=U175rbEYCubdXT72iNFoMAoOdgYlklGwAm1J7Oy2xnuTQRRssYNHgCytOAYNnQsXAu
         1jenypo6sFlqD/jTnmRHHh5DMOYXbYHexxsnd+NcAjqEdA9N1Da2kbfUxwsHXn9PiO6j
         87QkVogpn00NcN76d7AV56cLobLZ8xwu4u1hjv5zcSo6dnaVOI7V2wCbayJqvh00Z0Bt
         wYgGQDT9ur74UZjbaUUAfWzFFFtTBU1OPZCQ7kobI1OpvRnGeDYjtDvq3EHwTNFDIgeQ
         RsY4fO/9pFi7q//Sx85XfFlKjil3ZFxqS7GEyIWNlB5YotN2/At75GmoU+DoR8qWmhPo
         JMGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769600448; x=1770205248;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BTab+FcV48Rmd0EeSo0ZDg94erNKh3uHN+XAR8aqhmE=;
        b=CfaGIHiHz6wcSNQEVPh25uYFGA5IHxF1VbTK4t3AfoGU0GpKnVMlTX4UfV7JvAYzZ+
         ThIvwAhyHyx2oRfderHitLBb+j1+8Ue0HVV5mwW+VpeixgKmCudTHXeGL8jdMSYmPXhC
         rf4Wu7jr15nLu40/Q6cE2cVI2Sfh43LLbsq6ZhJccU6aJUp7D0tIimd0qCBtumwyPgtt
         d37FiNgKF58IrdZOSnUQl5Bdjc651RlGwP6YTv8Ta66RRA70Kxp2QddQsTaFOk8jsYt4
         XXXQRRZjua70RfhGHUbG8yiRsqZvrlwW9xDLc+OpM5MD0gW6kc6PFRH0ZaR8vXMZd3Mw
         55+w==
X-Forwarded-Encrypted: i=1; AJvYcCUujq3hQY8Aqgjf5HaaWY4kM0cad5hqvdk8Nn+/OqDtU4Nhym1gE/FcgWh7u3ZODJD+CTWDpb1Fgr29@vger.kernel.org
X-Gm-Message-State: AOJu0YyEdo1NUxzd3GYLIFfRq+InSSW+HrZMXrA5xWrf4ft+yExH9Whv
	Mu1w75RpzkiLM23eBiCAKbREHCc/enpbABV0j6+8d2B8jny7DAJhbVWaXH6HXCiM+fmI8p0+iIT
	kMMr4BuXFvN3dlkSWZgCpeCq7/nKCDm48j+ShOAKhaHvudekibD8wiVjZshnBnc9x
X-Gm-Gg: AZuq6aIoOrCo49j8DAYQWPjrPrzG+iyN9swiClYtYXfX5d/T6/OPAgyf0R2Ge8BhnYz
	FU9suJ+gcJiubid0FVjzdImmMLyv2+abK7ZJeIlZLtQr0GmPtfqFl+mJJOFYtabcpgLjqkIdLeP
	lAvAx0zQWw+aCZvNtUSM8eDIbDvD/r9KPzyhusKOIUSkrF8xHOBZNULdMx3UAkKWswqxkQkiaBP
	ldN9MpgfQasuJUdmFkVVRjPu2xmovzARgCzuEFzhDetLo7MNw8mda4Fnw3uQbTJeGL3F7/q+l9R
	MUppDWJe3Qrks4yiUe7vnarZFmqoNB4Bqrwv+zBqFdHDA67fSopiWOkja5HYlKvdv8AuWZvhP47
	+IHsLFW3i/r/nXO/lpUmp9eBseTDu8pwp9zIxMVrBZV7dze6YAVldNkDh7KrMhAbfbow=
X-Received: by 2002:a05:620a:4721:b0:8b2:e704:55fe with SMTP id af79cd13be357-8c714c2db75mr120509985a.10.1769600448026;
        Wed, 28 Jan 2026 03:40:48 -0800 (PST)
X-Received: by 2002:a05:620a:4721:b0:8b2:e704:55fe with SMTP id af79cd13be357-8c714c2db75mr120507685a.10.1769600447594;
        Wed, 28 Jan 2026 03:40:47 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbffb7263sm111387366b.28.2026.01.28.03.40.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jan 2026 03:40:46 -0800 (PST)
Message-ID: <747e0bee-9b7d-4389-9114-92882e91cf42@oss.qualcomm.com>
Date: Wed, 28 Jan 2026 12:40:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 03/10] arm64: dts: qcom: kaanapali: Add TSENS and
 thermal zones
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        20260114-knp-remoteproc-v4-0-fcf0b04d01af@oss.qualcomm.com,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
References: <20260127-knp-dts-misc-v4-0-02723207a450@oss.qualcomm.com>
 <20260127-knp-dts-misc-v4-3-02723207a450@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260127-knp-dts-misc-v4-3-02723207a450@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: gxwoyG92WmQbytNF4zjUrZLcCXtuaO2R
X-Authority-Analysis: v=2.4 cv=GbMaXAXL c=1 sm=1 tr=0 ts=6979f5c1 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=1E0oVItFzmgg-7_I620A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: gxwoyG92WmQbytNF4zjUrZLcCXtuaO2R
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDA5NSBTYWx0ZWRfXwl62lPneeKnX
 Qvo7b431UEltdAIUfyIReC9FNQEQNJlOYZvPO+3/DLJyNDfWIN9iX1npZw/YzQ3udgrcMgB33lS
 1mCsA1DQXYKhW0yxEdZSRulnE9bDULba0B3QpaEa7n018M22pKjIHsgAC2EsPFrg+5NtwS8rDQc
 wNzl0vUxr34Y+XCSk/v1hiO/oi8vRs529KxNd8EHJ5+o5n0sB6OuXsxHboYYFEYlQmTVhCQqjSR
 Ti8RLbmNPNygSZLdOd8ZsucJvjnQn1kcnsup/a0pcRQmBiOmdZddBlIiZu5YV8ItDBi8KqcAyH+
 +0t/ZZJj6zSXLS1kHPf0pZFHAMC42F5TWSco0Mhq6XSiJs/NOt6CaAU8mvIXlisIUJuDYaoR1sh
 wdj5vZo89qjp7UGp49m8l4wiaT7ww6YZLtevGKz4fIlq/OQwPXNP0olt3o2Rtixsjhbl4qE7Y35
 w2pgtnEvbUsXnD9EYbg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_02,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 bulkscore=0 phishscore=0 clxscore=1015
 priorityscore=1501 impostorscore=0 suspectscore=0 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601280095
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260365-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 089F0A0BBA
X-Rspamd-Action: no action

On 1/27/26 9:34 AM, Jingyi Wang wrote:
> From: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
> 
> The Kaanapali includes seven TSENS instances, with a total of 55 thermal
> sensors distributed across various locations on the SoC.
> 
> The TSENS max/reset threshold is configured to 130°C in the hardware.
> Enable all TSENS instances, and define the thermal zones with a hot trip
> at 120°C and critical trip at 125°C.
> 
> Signed-off-by: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

