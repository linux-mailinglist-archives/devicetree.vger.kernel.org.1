Return-Path: <devicetree+bounces-266876-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aJ2YNPYpmGlqBwMAu9opvQ
	(envelope-from <devicetree+bounces-266876-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 10:31:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 79680166453
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 10:31:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3C0743094A69
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 09:28:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A6EF321426;
	Fri, 20 Feb 2026 09:28:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OSlr6yVA";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZI+fSqCR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1354C31ED8A
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 09:28:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771579691; cv=none; b=bJn+6+r5C6Eoe1HOHhvbH6zMu4fZN5hchoRvY9F4Bjh65DKNhHLo6pW80LxeNqXy1ogu2d7w5phlQIMs6Mm+HS/BRi1IlIPUi7F8LzLkrrDEwnzp8+e4pMQ7z8agqTda8IshtXJDUyxt5Xl2fPf1ADYz5sEo1GKz8F/gKJsMKwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771579691; c=relaxed/simple;
	bh=Mny7DvO3pjMJl9m4SnZNIDEgtp2kvk35DD6rw6sNch8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mBZVG3pB3+Fe4e9pbjlYFXg8vNTz9ak6o+mEX5eyH7viG3djRNvqN5Rcv73GnV+W/SK40PoJR8T+m1si3cJyTrPbS7oilQjrXUoaiMrksxsbdtMiF36xp8UsBklSKnvVZtx0Vw6TlSuBRklWMolew378phmkKaHyoTAzKjJDjjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OSlr6yVA; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZI+fSqCR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61K5RpGY3034308
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 09:28:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QXUd8ePgFxsCGMYbec6JSFZ54mAXJqBd7zxuxypo8Uk=; b=OSlr6yVA6CdA5oAU
	/ugX08Gs1pEPgyc6p9Ai/g8oXNV6c0aIpjlk+BgLVZMgU9INPr6wDVHRtrhDSTZ8
	HANd1VLDRFW/N8TcxIvE0L0M/Ax5swpQIQfsAxE7krhqUwnYX1yVtsnO7/SUB5t0
	R/g74U7r7mcOIGE3I6ddYcP4BUJDQDTmu4FHh4FrDQfI2iamdEkidnHB2JExB13s
	PxOnb5GYbV7hV/lJGGZeYH8ljbo2pn4FVG2sFrOWf3OiDZQJcjdeTAdFy9r1of5e
	yjtmp7B/WCXjnGJ4q63yzgeZhsGgblxh+7gj6PBDQ2BZVQVAMVuq579ZqbS4ue35
	GgsENA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ce6k02ch3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 09:28:09 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb38a5dc3cso184147085a.3
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 01:28:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771579688; x=1772184488; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QXUd8ePgFxsCGMYbec6JSFZ54mAXJqBd7zxuxypo8Uk=;
        b=ZI+fSqCRzrs/WpY4bBebbLhsFX5P9r4jSI7ecNuuI6kFhbf5fItJ1Zloklf2PcXjap
         6v09CUPr/hLkI8xmtTlzC9hiEQ2EfkZdjV6oJ40uucBsW+fJTHUC6AfY0s+TnqimY+AZ
         4/ZXpPdYYtD1bLg8L+vueZnG5oI3Nk4QdLSdZHoMm7AD67emtq6IoPaUr/nD0aZ6pny5
         TVcOMhABVZRp1hs+e2Ev7a6+XJ8EZ6nZAQmvpJpoJQ3LYQ2OpS8DTkdpXEqgRY9Cbo65
         K+CeelQQ25hBIzNF6+ltddBWqvc97Ohs6seSSCk56a5newIRL7sXnh7wmmggkJIXs1tv
         0cyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771579688; x=1772184488;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QXUd8ePgFxsCGMYbec6JSFZ54mAXJqBd7zxuxypo8Uk=;
        b=aRjM72V7RroSywJkhVAIvKiZCuKLxVqVQc5W8ghP7EC41WhbkWMe1cE5nKBN38Tvf6
         9NELKHTWoThgdkGigiZ0f5Hlxy2tg+jMPsvfoqoF0Te4BwQqi3VokgKEsqCJimQTEpLZ
         QRcbHaWmWvujTcw5Ajx2LK7PbZ05BGjaMhD1xI4G4MozBG+j34QhAVJaIme7SZyj+hzM
         OM71MCzwJidgeVRQOl/nRbm1oTUCAiU03vlWN9AWLPt7YzF7eZhvw9bQJXn8CDRn3yGj
         NuNkI/wYc5B8csQzQUimrphn8VecJQ6jNdPiKSdCwnk0gzDFoAHhxTPfRfn3cFypD1rJ
         xvjA==
X-Forwarded-Encrypted: i=1; AJvYcCWRR5MrTfcd2vTD6OKemadKa4tRa1XbJwE+ZWo9nIlsdkD5mVhNY4MjgpyjlgZOn1aTlKisJzcF8rcR@vger.kernel.org
X-Gm-Message-State: AOJu0YxZo/todWGlbvEgiX+1us50fktqga94kRXn4DZgFFmYLC2fGaP/
	ANLUXtG5Mrd+/ejEhVMFmUfv54wYN9G77Vhfib5LwZYVKAhW1L6H+jv9OohYcn8SPMbeGhzmfKF
	iaAoZ0Sg0QV5+qcPN5G+Pu7fWMYVKnlEw8r45XWexUcvwSv54nyR1KLlU1bxuwzyd
X-Gm-Gg: AZuq6aLmg8xTddS0HW+2lnILEiik2qkMjfoN65Ebfnb7jCSu7/273CzkKInaIMvGDGz
	ztCyZ2Ym5l6Cl7fVKQuSwrVAAVhnQhshrnWAqN+ExkUWtV7AS5TOcLagHOBOD15npQGKlTckzjO
	kKu0C3wg2shhcwa5okei8I0FrMicvPd9zQjWySbsxuEFie2jz5N9plCAq2XEht4kbIEVBKO+xKn
	fm5N9II0Y9L2dpG3Zz7mtpJR7kgHLHRn0fL87f5sHOk6v3QrevW56/aFMoDZkhG8HSprDrOAVGH
	Nt3NGz8fRMGXP+q6faVjwZqtMmlUcf+trinfjNcc6ZLK6HwW00wSXWo/qnXm04usf9IJudSeCEl
	Teda3OPXToLTyNg+LJrIl2zBcE0LYxtUw+Eqk67COtZn+bEqnWeqVFGKmPW84brDNoaWtoO85XI
	RzY0I=
X-Received: by 2002:a05:620a:4441:b0:8cb:1d7a:3f33 with SMTP id af79cd13be357-8cb4084bbe4mr2339871385a.4.1771579688472;
        Fri, 20 Feb 2026 01:28:08 -0800 (PST)
X-Received: by 2002:a05:620a:4441:b0:8cb:1d7a:3f33 with SMTP id af79cd13be357-8cb4084bbe4mr2339868285a.4.1771579688042;
        Fri, 20 Feb 2026 01:28:08 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65bad29d571sm4484618a12.11.2026.02.20.01.28.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Feb 2026 01:28:06 -0800 (PST)
Message-ID: <9cc8dee3-fc39-40ca-9d89-44cf6ace8f40@oss.qualcomm.com>
Date: Fri, 20 Feb 2026 10:28:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] arm64: dts: qcom: qcm6490-idp: Fix WCD9370 reset GPIO
 polarity
To: Ravi Hothi <ravi.hothi@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Prasad Kumpatla <quic_pkumpatl@quicinc.com>,
        Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ajay.nandam@oss.qualcomm.com
References: <20260220090220.2992193-1-ravi.hothi@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260220090220.2992193-1-ravi.hothi@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIwMDA4MCBTYWx0ZWRfX1EqTe6cay1cK
 FmaN/Eye4zpk7cJ3xONN8UIHRubwOUXS7KImHOHgGjNaImzdltByl7TDtltTn0FsIWaIZrlSDg5
 vDPGaDNh9pQaTfP+LcuOqBUsxb5AqMrLMc9Ez6k08HsLlG5Ya/GFXT/cLbIzDNubvlmk+vDYJpo
 z1Goae98vctfDf+UHXlMJRAgL0Cnp0ut/zl5Q2Enkj5+j2mpJiKRm9klyNrYX9LPTKsY8MrEjSl
 yxITYhpKRLvWUTec6AzcFO4VTOK9HaJvAbFMCHzr3JLjfdIN6N3H4HwS3uLb+3pGPLVsdmVMELq
 Ca0kKA8TAqinyl46NQZHG2TSgQsWVG6R6FKD0e1MjzERxF4bNp7O3Qs9VgLX3zzqVEvWyuOR/Zm
 1/cBYDjgjV/DTlJGBfaG9rMJCg5O61gf8ZE2fXL0kcYBT0tt4hzjQLzzWX4hT1GfAZUIRSbNwrS
 0UlIjjXtKuuWBf5u7pQ==
X-Proofpoint-ORIG-GUID: 0uO5vCdj3qA04Ji2JDG6_bVdlL3HVDgV
X-Authority-Analysis: v=2.4 cv=K6Ev3iWI c=1 sm=1 tr=0 ts=69982929 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=gcfP45G4B4qNUzTtpgkA:9 a=NqO74GWdXPXpGKcKHaDJD/ajO6k=:19
 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: 0uO5vCdj3qA04Ji2JDG6_bVdlL3HVDgV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-20_01,2026-02-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 phishscore=0 lowpriorityscore=0
 suspectscore=0 adultscore=0 spamscore=0 malwarescore=0 clxscore=1015
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602200080
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-266876-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 79680166453
X-Rspamd-Action: no action

On 2/20/26 10:02 AM, Ravi Hothi wrote:
> The WCD9370 audio codec reset line on QCM6490 IDP should be active-low, but
> the device tree described it as active-high. As a result, the codec is
> kept in reset and fails to reset the SoundWire, leading to timeouts
> and ASoC card probe failure (-ETIMEDOUT).
> 
> Fix the reset GPIO polarity to GPIO_ACTIVE_LOW so the codec can properly
> initialize.
> 
> Fixes: aa04c298619f ("arm64: dts: qcom: qcm6490-idp: Add WSA8830 speakers and WCD9370 headset codec")
> Signed-off-by: Ravi Hothi <ravi.hothi@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

