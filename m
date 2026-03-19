Return-Path: <devicetree+bounces-277704-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UHPiIiDTu2k4owIAu9opvQ
	(envelope-from <devicetree+bounces-277704-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 11:42:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 255C12C9A82
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 11:42:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E77813031F05
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 10:42:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 381233C3BEC;
	Thu, 19 Mar 2026 10:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MVYmaXqE";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gLXyOfW4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4CA83C2781
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 10:42:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773916954; cv=none; b=nt5kSlNtFqGh5UEGdMK8UOupdjtuDp9ssF81gFkUyBL73u79JJl9fOFSvCqSnVa7LIKnUdJ93ECFmh7/TRY59S6NK01gxE3CPY1awFPAW4pU6i4G8o0lJRRsHLDtd+xc87q5KaSpr2lJugnyhn7Ll21If7y8YoKJsAD44xQzq70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773916954; c=relaxed/simple;
	bh=9jBSf/uNRdw+jksEzFlUk/pU9SX+4YEraC7iWV0w5xQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gxMX6rgZuQO1OVJA4lBLBcwfLWZnrCypBFZ016Q8ExDmSUc2KohqO888gdMEuBxYWAFUnEgEbCLkk1eCmAJfPM/5nxLgyCG44ieuR0N+FmcVBkGjESgwqbk4nuwXdHaehCDIp2WX0PVj4jpE9VAD39WQiqYcP4ZuY2y50KZ5+FE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MVYmaXqE; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gLXyOfW4; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62J741Vw2883747
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 10:42:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	j6Ckq6EbrjkZQ8EXCi0UoQh+NfXwqejA2If5XX47JQQ=; b=MVYmaXqE+tZSlfgC
	/oQnNfAAdrsYvw04K0yLF4TxdGsBz5jlVwG6ZMIs+OxBBlqoBSKVhMwW/bwAHMfm
	dlmfogtfu8/B2E0rXiLd35RsyvjYJnif0KXuHvwwxKP9C4Keo/L6h98SiNkxc16U
	UgG/wdU5AsHjKO+uvHvh05+CXEAXKbjR96fCn5OyzL99Mut52CEv6a42xH8bUxc+
	wAAdQhLYp22Myv0LU7InAkanwHsH2gSPoSnBJOkAUBZlxwyTSRPM3k97LZRp9J6p
	BzmhjMXcBJyPVqYjed5tULZlfE8JQKaxHXmkVQMvy4qwjICT/zb9+gDGMKysAJbt
	I/vt2Q==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cytxyv516-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 10:42:31 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-89c471045c9so6181856d6.2
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 03:42:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773916950; x=1774521750; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=j6Ckq6EbrjkZQ8EXCi0UoQh+NfXwqejA2If5XX47JQQ=;
        b=gLXyOfW41LYQ9C+jSF5ffTeEFleCTaWKK32UhNQ9JLLsFtphJHgm4TdaqyKMAZUO1U
         91W+kKY/KwW3Jx93urrExEn4UCk5Q4bVY8sE4IfIyb8ygfKZ+EXAf4ae0+9H4BglRE9A
         BDfVyYRedI9UT7ow2ICCau6Gh4NUVPjMp0bFSOA5nx02Ie2nrTHyOutEUYq7mjTpOmil
         pP9UTbRQMZXL/KvTc+iRSXKSF+78/qJQr+P095uGthJAFb8sXi8m6xAepgbOlntQNNFN
         CqwXL/ffEQGi5ggvcY4ZdP0+GS8C7FdCxVCAr4GepEsS2kjzMBojzo2DMelvJbNlQZBz
         8TCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773916950; x=1774521750;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j6Ckq6EbrjkZQ8EXCi0UoQh+NfXwqejA2If5XX47JQQ=;
        b=KYPHAIHqqWoNLjYuOY8NJ2AnkfrOXjhUc4aUCbHBUCNLnRTo0Tk+KVmt8MePmLS88c
         Ucaiz1MgtjYw9Df6z53JUu8R7zwKerijoODQh0CSBuylCMTaX5SvAI+q+MolJosmNI05
         GwuUHRIBNwHlOR+mwAkjPRuOOlphJclWrBaNaj0T+WP4zNdYqCc5IybkLkFOkDzdCR/v
         FfjlKCgeyeYC24k0CEPw21XqbZeL2+gyuvp5ifB9fcMOxZKcGNI//hB+KXS3QGUV9RjC
         DSM2tdyLbwgKOdLrRVM5DaF0ToG9HsfMfG6giAssGm3ACR/BwHXV0vvwjfuvQ/lms3yo
         /gkg==
X-Forwarded-Encrypted: i=1; AJvYcCWDG32cCBs1Wj2L0ohyEg9J8zxsuic9YknICAxSG7Ja5mWdRcnFU+aWfjc2Gs60cosmF98zRwzDgZBV@vger.kernel.org
X-Gm-Message-State: AOJu0Ywibqs50qDwYltDszDCzZ8iz/MLhbYiXW1TKpB0px6TrZawOvQH
	EoI/wCr8vZDccIwz8MVRPAC8et3t/P58HiCKZZmy2m5G8mjPcd/6wsdv6vQWrnKRx8twn8b8Cog
	kYsy9r0Tj9Yf+tTOYrmAC7P7I8dXOGEuqjNdjvBCxDsb+RQVmXtaIjjSl+csuaw33
X-Gm-Gg: ATEYQzzLUnwn0pNAH5Q6svdq6E2ji5N/4SAlscqgSGxXh5c7N59POehelDXe9u4qobp
	u+Fg52uFYi0a6ERam6Vps34Eo1b3vIPuWfszGIt0mncgffWodAQG+xkYkh8nTOCA2J6wKHFhydA
	D10PxPinD/oXSNaTs2X/ASbLRA9sPoya9mFQz8SQGB0WfYBfe+oZDucnejhbtuWsXbwy1v6l8he
	d5e67fAi4zPjsobcO5GXtn/tJ38nXttaksXmaZsXpZoPLXpSHOTE5M+Qs+buBqShew2HTmKybO1
	vrBcHyLh6arDWSDAmaP5K6I6w5tIZOHibXf1Nf2KfJBiSi3wE3hT7d0+3YACf33WHqWrLQS/H9I
	sbAPBmD0rrfjNSljcGCRkUS2+lkly58l2ExX+HAsBLY0B9ornHrU+beeVbD7TUoflSRvMs+4Wwp
	FmwmE=
X-Received: by 2002:ad4:5bea:0:b0:89c:534b:735b with SMTP id 6a1803df08f44-89c6b4beb0emr79650446d6.2.1773916950063;
        Thu, 19 Mar 2026 03:42:30 -0700 (PDT)
X-Received: by 2002:ad4:5bea:0:b0:89c:534b:735b with SMTP id 6a1803df08f44-89c6b4beb0emr79650046d6.2.1773916949616;
        Thu, 19 Mar 2026 03:42:29 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f1686b7csm427117866b.31.2026.03.19.03.42.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2026 03:42:28 -0700 (PDT)
Message-ID: <c9056612-8944-4bd7-863d-7632be0ed79d@oss.qualcomm.com>
Date: Thu, 19 Mar 2026 11:42:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/6] arm64: dts: qcom: msm8953-flipkart-rimob: Enable
 touchscreen
To: cristian_ci@protonmail.com, Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
References: <20260318-rimob-new-features-v2-0-c1bf8917449e@protonmail.com>
 <20260318-rimob-new-features-v2-5-c1bf8917449e@protonmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260318-rimob-new-features-v2-5-c1bf8917449e@protonmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: o08OccY--U-A5EuOmDG24ftcIWy6LdAv
X-Authority-Analysis: v=2.4 cv=FKAWBuos c=1 sm=1 tr=0 ts=69bbd317 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=sfOm8-O8AAAA:8 a=EUspDBNiAAAA:8 a=FcDylz7_6oNKbyFHn_0A:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=TvTJqdcANYtsRzA46cdi:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE5MDA4NSBTYWx0ZWRfX1GpI+eGTUKpE
 gmcUWxQTTSiqx7e0PUdpx1AG2GmHN0CkcCHEOj8Ihj/LEfItkyuRo0iM/ei0CP6fEoLbsBkgXHk
 pPy/KlhXYWmM/+p6uH7lK+3O8c+o72WorWLYtsl71NjR265kAjMUamMDM5hNN1Hz4+9E80FCh3z
 ABygjbIqWJ13x2kT0gimqKEx7n5LaljV9KkDrU1Ow/JhK8UpcfrRgTSEGPe/tbKrwyDjZRvKYWx
 QmyaT3Hla4jVz2qfutC4lH1SIYhQrAcxbv57qMGs1qxKKHYe97EQ0dgPEcIX7rTN0TrOHu4bAdG
 aN9CS4f/wdqSYrWFEBttK4lcy82SyZbYIgbnYHLFtyqPrHWjPNvs57fExii9UQrtY72OPsnY9CF
 rc4HZrGuL8pCe/N2UwusbtsokhCJNMuUNt6F4o+6PtoSF75zI+299P814300CnHggvsSppATS7R
 FUAVRK7s8Hx3gB/iOVA==
X-Proofpoint-ORIG-GUID: o08OccY--U-A5EuOmDG24ftcIWy6LdAv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-19_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 suspectscore=0 adultscore=0 bulkscore=0
 clxscore=1015 spamscore=0 lowpriorityscore=0 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603190085
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277704-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	FREEMAIL_TO(0.00)[protonmail.com,linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 255C12C9A82
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/18/26 11:28 PM, Cristian Cozzolino via B4 Relay wrote:
> From: Cristian Cozzolino <cristian_ci@protonmail.com>
> 
> This device uses a Goodix GT5688 touch controller, connected to i2c_3.
> Add it to the device tree.
> 
> Signed-off-by: Cristian Cozzolino <cristian_ci@protonmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

