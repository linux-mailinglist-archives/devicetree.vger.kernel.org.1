Return-Path: <devicetree+bounces-179341-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F765ABFBC2
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 18:57:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 925EF1BC5C32
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 16:57:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A259239E66;
	Wed, 21 May 2025 16:57:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iwHd88Bz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F2DA22A7F3
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 16:57:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747846632; cv=none; b=I0ub5E4SCFk3Ca2qZRHwvEgdoL0YEKgtRw5Ukj6WfndVaz3AeizqTLoUVNxECDuCP9fdcUTFt7jPtmSIJM91PsWZBfcSH80Oj3ZjjrlAmojN9y1e2LwBcCTD0xRqRurwA6ZLyDNsNKixIpgh9E8qjFYdZpU7BWHAt5z1w14FC3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747846632; c=relaxed/simple;
	bh=N+R43E/1GfThpPsMXWgpoPu8TipZoSa08sDYQEh3dXE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=n05lKlII29/LP/NYgGMqFYG+1OXQ6Y0lAsnNC1iP3tQws2Serl+ynCm2QjrmYsc0uQB0GDAH5OsmeepcACIfR9wQnoa2RsdenF857mI5U7rXLi7q0sCmE2VhrsYLOuhdciqaX4IyaX7ri1U8GGOFeT4rMzJEi+Nf8Ikxt507wNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iwHd88Bz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54L9XKV1020574
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 16:57:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RIq+1JAfS5ENiun1dMLKC83h/in6cMIXd2ivDAqCPHk=; b=iwHd88BzSUv0Ldw6
	N0ARTR496xyfzKwNSgf4I+P9ihsCDM5bjBXoANJZwzmdoCd5+cGl+pJ78cHXPmcX
	9nrgOJmpaFwrNbnBzyfWrWrqZscQUXvFu7UP1nV45VMpoMgTt/UZ1cTyxmkh2lqM
	sLP3HnWN/pOjuGXsm+TlLk0TQlqk5mU0eL+4oO2MiGjFgyVfgqwrWXeUI7o4qCvJ
	dCPP0koacHqJPwbK/x0x44QtrBh3bBNh3sov1SFBqnPCXvWoJgK8P/jDt/iuzHzA
	sqIMXQ5No9/St+dsSu2ye1al7sPwk1enEHT1WO3bzrDHmQ9gP76rc1sUz6VWUSkl
	4cTHBg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46s9pb1xnk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 16:57:09 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c76062c513so193216285a.3
        for <devicetree@vger.kernel.org>; Wed, 21 May 2025 09:57:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747846628; x=1748451428;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RIq+1JAfS5ENiun1dMLKC83h/in6cMIXd2ivDAqCPHk=;
        b=cfw3DcXPCqaqSRRtNgKrdfXNixUiG5gkH7oWNh3VqnZRbmV8e/6tB6z6XynLwWeSD+
         4TPL+eoeBbyWS7ga/0HIjZgUVBqeSmkcH4TBeOMIwKzIj/XikAz6xecpiFS+j3AuEer/
         RCBoOWq8tFwoekEkctCTTQvwdCuw8FOJiw2KMM5EUkb0OB+mmOJnwtO/OQZVGFNie+Gy
         COziK/+i144mEfw9F9F9+yIleye7E902+pCfGnshy64Jl5kCDirB8Y6LIFNXkW4l8cGO
         SfcdCaccZSM+XeI0E0SCWb4KUovSf0PoUytNGchXc4FQkMK1d6WZuAoo4DvKsa8tpN+p
         B0/Q==
X-Forwarded-Encrypted: i=1; AJvYcCXO068zVVvcQIxAwNOciAn4X6uwPwhUZSAlL81lo3XtY/phioDSBp6Y73eVEiwkdGj/IPUW+o62kM8K@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8SrJZznFPbQc7bFG0WVOMMOINBzlLHLWkotKiYtZJeLmBYKii
	FV55JXubdW+3t2vCla72jpQ5jfYrXsRp8MhsboGrHkinnevcc+5JrZlHdpSiZcuRzQmiATk1UEn
	dPy313in4pIIv+BABE0vzU1HU4dXcJA1IWC4gGsPh9AGxdVqAo3KCXzwgWMk7hYc5
X-Gm-Gg: ASbGncuBsfsYbB79Im+YEhty4Htk6R4SybKH7iX+yMuFwYSk+mVUIgiyUzNDsaUNKsX
	RJmKxOJnfsWWr64d25nH5t9fBerm33qrwX19Hg65TO3TG75BQocgEoDMSoavfNzKDhw9u8usuhU
	NoOZ+Bs2yLUSygydpMsQcjfiCBXq8wOH4BWIMRnkcEj8nDW5KrDglJ6WeP7eDRaQGazJTM2o7Vt
	lDz0x71+mgGL6ilhKO4D3E98tK6G1jxa2eAJSL4QtYm2O3r079JFw9dlaLd8fqE165ehAH0LeQT
	cUMotf7okCmaonnliJI+9FJH7YeVD1PUJo1xgI1OvbHXUYAuLh5y6GfLWbRZXPiX9Q==
X-Received: by 2002:a05:622a:1444:b0:471:ea1a:d9e with SMTP id d75a77b69052e-494ae3f24abmr123174431cf.12.1747846628106;
        Wed, 21 May 2025 09:57:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFKquZCYn79dWnu6RrKESmOaAIB/1rycWKzBH9n0bP2dka2gnc6zuL4fmyd5kx3cDGfaLk9HA==
X-Received: by 2002:a05:622a:1444:b0:471:ea1a:d9e with SMTP id d75a77b69052e-494ae3f24abmr123174241cf.12.1747846627791;
        Wed, 21 May 2025 09:57:07 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d4e8afdsm933402766b.176.2025.05.21.09.57.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 May 2025 09:57:07 -0700 (PDT)
Message-ID: <3f3d8c46-e7f3-42d1-a186-29a034d509be@oss.qualcomm.com>
Date: Wed, 21 May 2025 18:57:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 4/6] arm64: dts: qcom: Add support for qcs9075
 IQ-9075-EVK
To: Wasim Nazir <quic_wasimn@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@quicinc.com,
        kernel@oss.qualcomm.com
References: <20250521140807.3837019-1-quic_wasimn@quicinc.com>
 <20250521140807.3837019-5-quic_wasimn@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250521140807.3837019-5-quic_wasimn@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=WJl/XmsR c=1 sm=1 tr=0 ts=682e05e5 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=B19ug8NEUztSQfbU-jQA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: piGtVEk041KGykJWBCGll58zlHLP8llS
X-Proofpoint-GUID: piGtVEk041KGykJWBCGll58zlHLP8llS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIxMDE2NiBTYWx0ZWRfX1BrSs9p5J2R8
 y4aEJE+Pt4KGC77fhNIdCrEQf+vn9grIemfI49PwKEwsleYqmZhcc1p7KwLREc2hTPJ4ik9r6Uj
 zNWgWONclgUCdQto8+MUAq60oD+/lyzjjFWWFI1soQ78EgTOTAQTw0T+dESipj24FxRHxJVxPQg
 CKsiiBkompdZ/vTgz65IWoQXN5ZLt2oPS9lQpCYyfXWSfCZitke5BBNz9FJvF2Su1C+ARMcaBN/
 CK7XsNJPzKlOCX53s8zuV6w6w80Qmb9mWhJCQEYSpAjN6CGBRpyRhicobBAlweXsLdHeGu/ALBS
 GK93rbeb9b4d64tkTs7yLoWP5gawQJ3L0CdFH0yT/pLHegeptmU+lvMr/jACgwzdgr66T/Rf4ZV
 24N3Mqtp9l76KF0gjrKeIwaztJEo5MsSdLlf2D6yg0QuIE1jh57BDVmQO1S2KgrYB4B5PIqS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-21_05,2025-05-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 bulkscore=0
 malwarescore=0 impostorscore=0 mlxscore=0 adultscore=0 phishscore=0
 mlxlogscore=999 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505210166

On 5/21/25 4:08 PM, Wasim Nazir wrote:
> Add initial device tree support for IQ-9075-EVK board,
> based on Qualcomm's QCS9075 SOC.
> 
> Implement basic changes to enable boot to shell.
> 
> Signed-off-by: Wasim Nazir <quic_wasimn@quicinc.com>
> ---

[...]

two nits:

> +&tlmm {
> +	qup_uart10_default: qup-uart10-state {
> +		pins = "gpio46", "gpio47";
> +		function = "qup1_se3";
> +	};

Feel free to move it over to sa8775p.dtsi

> +};
> +
> +&uart10 {
> +	compatible = "qcom,geni-debug-uart";
> +	pinctrl-0 = <&qup_uart10_default>;
> +	pinctrl-names = "default";
> +	status = "okay";

Please keep a newline before 'status'

Konrad

