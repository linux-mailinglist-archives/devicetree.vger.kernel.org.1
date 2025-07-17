Return-Path: <devicetree+bounces-197459-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A317B095B8
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 22:30:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 478F7567515
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 20:30:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45B691EFFA6;
	Thu, 17 Jul 2025 20:30:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="F/SLgeZb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDD2F6EB79
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 20:30:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752784227; cv=none; b=DB5Q736kT8JEaWCBYH1xyEi/qUtUAuq7HKEWVNrxQrvfZ42mzTUXKCKJK7Fmsm87iCweaPgTeMa8nxwCiKlQufqcFibOD5eV9hteItqFKWdMeuGss2jdvFoGDFcdcCUt/YzyBmf6PaLUx+CCiG7hueiqh/G8TUGQ9TwLkDF4ohY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752784227; c=relaxed/simple;
	bh=yXaZJh1s97QoYyV0dVGHOmfFM5k9la8f3WzB5GWF94k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=a5RvpIAVwKiRO0Bz/7bkiUj0eXQzVG2kOtiDQywp/W9gc4K7KQ2H5bR8KRZvVshNmVlg3XCX47eOexeteO3RAN6rjxBe9e2EtwZmkXdFGbohOyPvOjf2J0vKRoh63YvL388BNpcn0d6dAN263zci435e8zflyUubS5PE+RZgoHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=F/SLgeZb; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56HFPsvh015953
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 20:30:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CApBvgecuTLwhooPFQ9wWb7BYDsOgt6qyTee0GMRDwY=; b=F/SLgeZb6J3acNlw
	fg3DMnKLtiYoPw1xQN1Dj2lUccY73AoQCaRtkjHlgN1g54GjeQp4O2FH1NbdM9JE
	T0pT5l8Qm4j7P1qFBbLAu+h3Hwlt5JsOaClIESX0V6FpwFmwGOdpeZZrYY737Ess
	UoLyNo8kAFVoikcl4Dt4qXKDRa0VY38UfHqggQ7Tq452aXCstjGyGKdY8MCADWAM
	vsSPswkPqdagEDbVQTXYkD86IkGo9s/9DBiNWLFjepYIwdwcBj7sE2eziYNYNERr
	SJLrs4IwZPrvatGqz02XKyrekimQ+IQwm51O50gkw+tHId+JTESk0yNIXY2Oz/44
	t/cbeg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47y3tc0x31-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 20:30:25 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6fd1dcf1c5bso3733136d6.3
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 13:30:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752784224; x=1753389024;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CApBvgecuTLwhooPFQ9wWb7BYDsOgt6qyTee0GMRDwY=;
        b=WtPr2em4jKwzb/c9OZNp1IpiGiGMVivWs3nqReb77An/OPCcgkv3tEe4OZWPOiOvqJ
         lDDgYNxYEYpxzOGxwdZnk/sVwydpFRkUZTJu73u7ToIynMFj7pn23AtmVa6ZQDg1T9lk
         9NEBARTXmep0KxeT9jJubF3n7uM3WvBvXcU9qSQOX4VU4OgE2Mod/whvYRDDkU4OsBor
         UsiUA/C20WNapbrc0mREUdOAa4+dHul+uSXPZJcc8VUkRFtP3SQxNRWAuyg9Ng79R9sQ
         acgXl+zZeHmQT89YqBv86lfL66jHj8fZP061FB2sPnd+C73NuZtsBaRhf174qH93UW7q
         H5BA==
X-Forwarded-Encrypted: i=1; AJvYcCU7GLs2LOnOvHc+6qz5yVKYqiGnB8hjZ5kXVNGi5TfWiHczSbmdziHzQgXXsNpmFnPaPjKt3XhWmuMA@vger.kernel.org
X-Gm-Message-State: AOJu0Yzzon2UcSJnAEzLAOHCNJ9OVHyNzZFoUW7l1zM9pePto/d5eOlK
	VjBvmpgh3UFu0yp0DrBE6+aphkqwU137RaIi7DFsRe98syacblPoLf1UDI9dl08JH0V5PBLQ0Wy
	RTuBCEI33YTh3+Gu9eUr2D1NC3MUBI7JAXXgii8FdC3RiyH2qki3Bg39AmgP/2llp
X-Gm-Gg: ASbGnct/C3QsSSBfF1aCHY0wgpI8JA3rxOKT1R4CBQGV4H1+S0rimp264T7z66lVM9M
	on85TJsCArYPMKQXYY5OYUnzim55te2e20MjxElVJnRJTG+e0oTnVPSq6A4oS+PRDRC6vodYod4
	h7QJPOI9JUPRH6YG0fgOIBQ3xvrQnyhhqlZSGPRRxJj62Harh+voO5/l7E0XvO92DuPX6VAXqC+
	fmGwOD5t7H7B93OkC3gDiG9MwgHzHtHbO5D9fQpxUiJB4cD7JHpqqI8GcQh0KtNkZBOKoFW/iWN
	dbptuokqmzblFV/YNcA/n4zyP0AqFDWsdy74dGjm9yMg80Ea4hgXe76UuE0lMiEWZDwasRAZi9z
	FJmcZrhvRWfzZng82sqX+
X-Received: by 2002:a05:620a:2b49:b0:7e3:3419:90d with SMTP id af79cd13be357-7e342adfc02mr464597385a.7.1752784223662;
        Thu, 17 Jul 2025 13:30:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFh7efxMPiaABCqMznB8bM0sGwzfCMhBakRHFLmRQQii5O7L2SQZ/AT4w5DU1nWhvzljOpuBg==
X-Received: by 2002:a05:620a:2b49:b0:7e3:3419:90d with SMTP id af79cd13be357-7e342adfc02mr464595485a.7.1752784223247;
        Thu, 17 Jul 2025 13:30:23 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e8294013sm1420624566b.118.2025.07.17.13.30.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Jul 2025 13:30:12 -0700 (PDT)
Message-ID: <5e3dcc7b-c929-4f2c-86d7-dd57b08eb939@oss.qualcomm.com>
Date: Thu, 17 Jul 2025 22:30:09 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: sm8250-xiaomi-pipa: Drop unused
 bq27z561
To: Arseniy Velikanov <me@adomerle.pw>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Luka Panio <lukapanio@gmail.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
References: <ffc3b329-6d46-41f3-9780-05369d29f9c3@adomerle.pw>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <ffc3b329-6d46-41f3-9780-05369d29f9c3@adomerle.pw>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Z5PsHGRA c=1 sm=1 tr=0 ts=68795d61 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=NEAV23lmAAAA:8 a=Fl1iwlySYO9TATX8aXYA:9
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-ORIG-GUID: HEgK1rUKtev2Yr9rEnO_MM-GKCZ9xpUS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE3MDE4MSBTYWx0ZWRfX8Zu+q1MhPQ79
 Ov1FV1L5PQl3k7gN2OrojF93NrZ9XaQI7DmuWqYS3XbBULLdeaQ8evqvMm5tWm+SO+2/X3CRrjO
 xbGOanlTsIkEg+dVvll5+Rg/hTvOD0s5bSodJQYsLKFX+zQDF4oTtA5B9VmzVB2hDOK6CSQg/ip
 ufagLGeyYTu+ZV5VcKXZ1tpMnJhHyFmywJgQTSeSbkUXgXg6cR2eKNoTTPCYGhIBjCUwKfszw7t
 NV31NK/BZT6JzkNlrHgkYzs210KvBiLC4Nry/q/19ZBT14E3ACZuMLFy1ir+rIlgxXB/Na/5yia
 bOm4fBLZ2LM7M+E/a8fqIlO0oiIK8+07xtTRPh3QjGsnN5NsyoKClZlBepD010aOCGO9Vrybs9d
 wpFNHEKkr7e5TGXKeeSu4BFsevniExyTbXHR+1RFfQaCc+7YuiYj6gLj9k86Umn17d88nSFK
X-Proofpoint-GUID: HEgK1rUKtev2Yr9rEnO_MM-GKCZ9xpUS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-17_03,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxlogscore=999 suspectscore=0 spamscore=0 clxscore=1015
 mlxscore=0 malwarescore=0 phishscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507170181

On 7/16/25 8:18 PM, Arseniy Velikanov wrote:
> On 16.07.2025 20:00, Konrad Dybcio wrote:
>> Since it's actually onboard, it would be fair to assume it's there
>> for a reason.. Does it also report nonsense when running a
>> downstream build?
> Well, as I said before (looks like i sent reply wrongly), it's disabled
> in the vendor's kernel config:
> https://github.com/MiCode/Xiaomi_Kernel_OpenSource/blob/pipa-t-oss/arch/arm64/configs/vendor/pipa_user_defconfig#L413
> 
> Also, pmic fuel gauge, which works with the WIP driver in our
> close-to-mainline fork reports mixed information for a dual-cell
> battery, instead of each cell individually, and I think
> this is a more right way.

OK this is a more convincing answer, thanks for confirming

Konrad

