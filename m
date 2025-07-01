Return-Path: <devicetree+bounces-191455-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EFE7AEF62F
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 13:11:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4F3F33A8E96
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 11:11:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CCFC271A9A;
	Tue,  1 Jul 2025 11:11:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TkDKsZ5G"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95CFD270EB2
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 11:11:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751368296; cv=none; b=erb08kQeaez082D6Yfoepw62Koti9IDiMirAOXtNt14W0gBzyxvIFtNZzcjB3kq0C+ckd43pIrgnkqQCmG3AaJ1KulHpJ9QD+NMmBu3gM7vt5KRh4Bn70Nh4PyeMVHg/WLrtg64ZimyXcOS1OKJvHHdWTl7/XSMJKw4fOT0YLzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751368296; c=relaxed/simple;
	bh=9WDZ1BqFOD3xKFamAF7RAiKGsLzFKTCGgUcxfHNHCNg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gwu/zHAjUX9S87+i/VVQV/FNAlUHd8ozNZt81+3Nk9O0+8VHVLnJGinXWD+qo+m49WelGjiNCiJWuw247dJtQLXJsLWBHnpWyVYZUgv+rfSNY7S5LD110GsY8/f9KgSVTlPvC+ou+G8KN1aaBih7HCDEIjX8mMfiaajiDu9lc0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TkDKsZ5G; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5619xin5002603
	for <devicetree@vger.kernel.org>; Tue, 1 Jul 2025 11:11:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TrlZZdJIO7yzkVy8vnZqCokz+DnJKjhGP7uK8AgE5nA=; b=TkDKsZ5GUyt1B7T5
	OkxgZeG+x5ohTlr9KIpnlY91Rn8FNGsduMA1IxqbdHGMhHWGRrADlo/AlluuILv+
	al/tPZi9aJo1Y10Ci7aHm6CurQwwhc9+FF7veETzgWDW7dBO33gtpJBrXIscUq7A
	0QgcW3C2CmffluQ1XI/1Rw2m/GIMn0nWgOnZia/IWpa/Oydj/BKHZLGY9St/79lu
	9fmpEAb50Yo10hKlpX+6vQMp/mLMOJ3m2PGxX8fhneMQzQ41vV223/o6UDcETKpi
	HAAKpptQC21BlXlEyfUocHhzlX0hnXgujVIqSKaTXjqkoNC88cCmdj0pKfXdmqx4
	QGNm2A==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47j9pcrgde-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 11:11:34 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7d097083cc3so145662885a.3
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 04:11:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751368293; x=1751973093;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TrlZZdJIO7yzkVy8vnZqCokz+DnJKjhGP7uK8AgE5nA=;
        b=tPwT5rZXlgsPlEgyKsMztvXOtGRz/GhJxlTwffglXpAtUz7cV69krTUz+pZhJ5HtDz
         ZYonLz7MGIGFiD2DQBjfy5dUR+V2h3ZVZleLjnDQCEFcdhsC3eRdq7mOMMvQnHsVuH9I
         dqVq+RZyfh46gUl39OOB+P24Y/44K7pT7COs5fUdebre08wfsj5gx9nyjC3iaCfMm++F
         //V5oz8JwERQuQhu3QaRL06S8ZF09d3/L9uufECt3/2yYiwFX2KP6Z2ctpXOyleu7Yl7
         mfVDxvmaiqEr4+r6haJjsUyaJDCEUBrkNQVkqmLTasOG79JpXjj1rLtXjsLfhpbv1VzR
         fGMw==
X-Forwarded-Encrypted: i=1; AJvYcCXu0W/XywMu1GfkRcJSmxeemXFXD8+TVAQsuKbEJ8vE0Wv58f8nK/sd5eIa6vwpUBdSmlZR1ZeiNSuT@vger.kernel.org
X-Gm-Message-State: AOJu0Yz043C2Ftnjf5pPaES2mi1et0g4vbldQkK4AaNn5BPy3p+2Eznb
	Yd+jONys8cRQEdlNCtCnj4CF+HPGkdEVZN3/8TNThz45uSzdy43MQhxT+M4CrltUQudlj5zqTOt
	2CHm3exANuXMvhalu2QPWfzb8j0DQ1hYFmDUsxA6RY5A9SLHj03ZskBDbd9fLOmC5
X-Gm-Gg: ASbGncvFEkSzBo+lI3r9XsDOpQpMSrA+wGbXTiSLhnK2EOIFwIUMxO7d2E5O3Z2vghX
	gGIuM25MKpqHuAztsfvxan7avRB/dYifIVNnPFABg8JStTolNeLHoWfQN5P6uc7B8FTyERa+Nz2
	HVuppPgQ09TUa8SfYVkcJjUopN3CP116zg9SOEAXd8MFhxUHW/1QlxqKD/7s4iQxR5hd+8cCLFo
	OII951SD7o8jPFyFYWRphIsMgX2B+hsb8jEmB9XTwHqOAJmphQ9eE+zjwCOoI8HaXPO1i9EyJ6k
	giHbPtFns6k32OTZ1VSbMNxp56bmNkfmFcAVW2IzuMEvfNE5BarcD+yWEtl3LeGb21Gytrulpec
	nCBY9nmdk
X-Received: by 2002:a05:620a:29cf:b0:7d4:4a59:6e8f with SMTP id af79cd13be357-7d4677a1ef6mr127722885a.15.1751368293300;
        Tue, 01 Jul 2025 04:11:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF0enYbn2hSOvbfPZgODz/DO0dsSgkRNbwZ7zhkY+8pN41BaLMoLizJRBjD4L/DazCQBLleTg==
X-Received: by 2002:a05:620a:29cf:b0:7d4:4a59:6e8f with SMTP id af79cd13be357-7d4677a1ef6mr127720585a.15.1751368292723;
        Tue, 01 Jul 2025 04:11:32 -0700 (PDT)
Received: from [192.168.1.114] (83.9.29.190.neoplus.adsl.tpnet.pl. [83.9.29.190])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae36327ce4asm772552166b.163.2025.07.01.04.11.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jul 2025 04:11:32 -0700 (PDT)
Message-ID: <242d353e-99a1-4ce8-9435-8b2addcf1276@oss.qualcomm.com>
Date: Tue, 1 Jul 2025 13:11:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] arm64: dts: qcom: fix GPIO lookup flags for i2c-gpio
 SDA and SCL pins
To: Bartosz Golaszewski <brgl@bgdev.pl>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
References: <20250701-qcom-gpio-lookup-open-drain-v1-0-9678c4352f11@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250701-qcom-gpio-lookup-open-drain-v1-0-9678c4352f11@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: rKcnHGASDfLrOuiCJwhPur8Zasyj0XkA
X-Proofpoint-ORIG-GUID: rKcnHGASDfLrOuiCJwhPur8Zasyj0XkA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzAxMDA2OCBTYWx0ZWRfX9tsbSge+s6VC
 iLdIX32jedLmZEcm1MNQ4YInAvyPzEwXkB1qPkz+rkrI0/YoZ42yDbpqAdYjTlKYdwolYjSaK+f
 MwIms6SShQT4aUu+8vzca5D4i0lBcAhQrZGIlIfu/NPHbV5KffRjutDdYNlaM+1h/aJ7p5W6o4K
 /wFKfH+dynw82Q3RsYvIZRDe0v4D7MrXqNpTdEdQgTJmxHcqucusa7Bv1SZtdVcP1ichEB3qIGi
 lmKQrf5q/W+vrGxqj8lWJr3bRPtcLYu5AGrtfCjHVryJITlA71N9ILnBDZ5CTRnrL06H4LVP4nH
 GTUMgk37bv/PohtfjUptlKYsr78iMOkcZfQB71nK2US3QKfnhE2aJ2YflWN3tLtpi86hjb5tSLc
 cz5i5Nb9Y9yvVN8U1fZAEyk4xxEmEo8BYhJsf7lAdQWfQkYVeyVxXN8+kZUZ0Pk75Ihqb921
X-Authority-Analysis: v=2.4 cv=QMFoRhLL c=1 sm=1 tr=0 ts=6863c266 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=fKQzr7EGRj+VoE0XNsDNvQ==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=OvpKPoiE28FR6mlLKbkA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-01_02,2025-06-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 bulkscore=0 spamscore=0 adultscore=0
 mlxlogscore=599 mlxscore=0 lowpriorityscore=0 suspectscore=0 impostorscore=0
 clxscore=1015 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507010068



On 01-Jul-25 11:01, Bartosz Golaszewski wrote:
> There are three platforms in the QCom DTS tree that are missing the
> open-drain lookup flag in their DT nodes associated with the i2c-gpio
> device whose driver enforces open-drain outputs. This causes the GPIO
> core to emit warnings such as:
> 
> [    5.153550] gpio-528 (sda): enforced open drain please flag it properly in DT/ACPI DSDT/board file
> [    5.166373] gpio-529 (scl): enforced open drain please flag it properly in DT/ACPI DSDT/board file
> 
> Silence the warnings by adding appriopriate flags.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---

For the series:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

