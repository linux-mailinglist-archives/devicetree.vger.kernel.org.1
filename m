Return-Path: <devicetree+bounces-190418-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 01A4CAEBB43
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 17:12:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0F74664130C
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 15:11:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F308D2E92D5;
	Fri, 27 Jun 2025 15:10:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IgeYq4NB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6987D2E8DE5
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 15:10:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751037031; cv=none; b=RziE8vbSI536GQCNoOOMKYO2kUEomJVub1b4xwXCV/z+yuMfZbhRDQHG9rUl33swof4PI83t4wGdBWPLOKUpifqOPMSU0WHMp/SmDvItAK2rg4bcaC5V+tyg6T3xmEiuawHLU8uInC2O+R5E/LlXe3kkhk3xQZx3mzU9ZJ3DPVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751037031; c=relaxed/simple;
	bh=MWOFAHHtN7/qggQnBgYoOfr8mbDkE0qE4SD4dw5rBus=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KciSotrWqPdJ2un/i5ab6/C684nelbpYMzDoRI5plEJi4mTcNYc+stQNkrwIFK/LezaTx+cmczsEHe/JlNSEWmyq86vcAo8uv11Z+ufecHBU6kYTpSwGQiGtgjkMN1CppwDC+bhRExlBA7mnFDpcBSr2xTrUpHL7eILUbjb+Qoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IgeYq4NB; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55RC2McJ017801
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 15:10:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZOLf37uyXC+Xhgnqp1gpIpFUGmLHpCI73UUQAx/mH9M=; b=IgeYq4NBC9HCybCt
	lQalD6M2OzUujYzgb9RKXdXzCvyAqcfOIoeMhk+lNX1Jy4fPkz17P9iB0Pb9sDcP
	XImdGcrY7CaEjVQDB/teqZGDPSoWqGYfxz/Y4Hy5YHzZbh559E1PIa6MYZ67TC3k
	t5JRGKkyfDSFLXDXcG0Sn/GGy97WALDbqSbk5kEmPcMWF3StxVBg9eNKVNzJvw2E
	9G/KPQkdR2jazPlGlxCfpABzws6mN1Hdiv0mqfqZVo4x8hS5Pabu3CRFJ4iddjpi
	r66fLXFOEtlXmqB+7GHg0tI/znt3mBT6NUfWuc7iFX+kFo3Eayt/DTnxd2hPC5Qs
	GOZLMg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47fdfx5jub-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 15:10:29 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d3ba561898so24718485a.3
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 08:10:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751037028; x=1751641828;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZOLf37uyXC+Xhgnqp1gpIpFUGmLHpCI73UUQAx/mH9M=;
        b=t9bok/T/TEh8ORdwBStbNj/dpEn5PrSUkZ9nUhaNOaANWi954Ruv4INtEG1W6PPwS8
         ZPpowSbyZIUgKtTA3GvZj0cXPPOj46epbSfBGyuYlcjKJ3eLSK6C7Zb9edlf5AAhH9RR
         X5m8VxnCTjIW3WbxyRIgPuh7I+M+SBAKHF6RlALEdPKGr3KI+Og5LN97NeAzjEwOtFwj
         7A1WFE1BVTKDS/4DMEF0NqTlauuF7WfvLxV7gGgzryHT7Mkk5p8FbuRu6Wn0C0Jeo34B
         kJtlZ75E/qarMKLaRXlFvriChYleroAU911i+DPRqnYKCa8NCCob9VbQBw918x5+8D0Z
         Ajfw==
X-Forwarded-Encrypted: i=1; AJvYcCXlzZS9Dn9Fyd4zykmUpRrJ2LpfIARqrTsKyHDfAbED1oguz/xPrONFYhctQUofSOLw4dN5+nK9YHth@vger.kernel.org
X-Gm-Message-State: AOJu0YypGYH6/Q8dOgWXctGiMNgeu8a4jD/hu3zfOR2AIJ1ki9hN419u
	YWTQ4/xWXnvDw1JLOgiJeLwBmTsAXEIBLGbvnqj+Y+Uawr87VPwEfXK+ZwqeU6zJ+ai4okTPEz1
	ldrX9X7uYf2vnC7DB+43HHX8eM4Afj5svmKlntwO65LDU+4TBBG675NpLcTQw+/2o
X-Gm-Gg: ASbGnctNYq5SoLXbasRpVu6hMMQIkZywOCuhXC/tb39S9N1TA5BEMrNiUs80msMuEg+
	XKSBVKVkY03YjRGCOD5GAV9Z4LizANcsMjdIRk5R05EcOaO0R16P6G8UlnFJClGGc34R5BI1lN6
	lm98rPvBG7UVjh4H/4h6RyQKV193HByMhjczmAKFSusqMSVTEpUZnGQ1sbFK8fAJ4oC1L1nfnjX
	t0jZlZaqT3JN607hVoWmrva7SF1wG3EKTl17DMLtcr5VRMVoyZ1JZnw5kC0u56/MqrQgKyE25BY
	S9tZBu49FhDFtt4gQ6zi3Fum3a4xKtbCXq6LdX+yuHpfdyzPqxnpDTpyEFxlmlc5KPuOoytyCW6
	oY/k=
X-Received: by 2002:a05:620a:c4a:b0:7d3:ed4d:ac1c with SMTP id af79cd13be357-7d4439de410mr197141685a.14.1751037028307;
        Fri, 27 Jun 2025 08:10:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGpSklDN1x+K68aLym6g//jIbf5D14idxyGAGdjsMuKKGvm0HIepobTHT7v/W2zzlZN6PsD/A==
X-Received: by 2002:a05:620a:c4a:b0:7d3:ed4d:ac1c with SMTP id af79cd13be357-7d4439de410mr197139085a.14.1751037027727;
        Fri, 27 Jun 2025 08:10:27 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae353c6beb8sm139311466b.132.2025.06.27.08.10.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jun 2025 08:10:26 -0700 (PDT)
Message-ID: <68056b4a-b1c3-401f-8720-8e0c3cda6249@oss.qualcomm.com>
Date: Fri, 27 Jun 2025 17:10:23 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/10] Add clock drivers for SM7635
To: Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250625-sm7635-clocks-v1-0-ca3120e3a80e@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250625-sm7635-clocks-v1-0-ca3120e3a80e@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: P4c7t11iuV13x-cHBybA0j7UPf1mOubI
X-Proofpoint-ORIG-GUID: P4c7t11iuV13x-cHBybA0j7UPf1mOubI
X-Authority-Analysis: v=2.4 cv=MtZS63ae c=1 sm=1 tr=0 ts=685eb465 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=6H0WHjuAAAAA:8 a=Z-jg4G-D8Sok9OT7mQQA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI3MDEyNCBTYWx0ZWRfXygriF3ZofvC8
 bhdXupL6id1UmL31YqrAMlF+svbJU1fLIT2nrPZ7ay1Fxbxxbb86f4dDvyMUXb/H2wLHW8oxVlf
 DNfLniTRB2yskpxPeXH1lgghPcL6OlZHQ4AAdiwWn7YNxBciqXtTkg/Zqa7oIWtLDRhOOxkB3Ff
 BGFiQED/UXB0LeHxfGpI5ijZ0MBzSIUY7aD9UH2kn6nhRKk310YDTrrTtAnXcqnBZdL8dDvppP6
 5jrkQVH9RSA8bX9vvyuoUPsW49NX3KWGUldnmR4QLPY2PPr7jOsT/wIuj7yFlaDhKTtB4nxDSG+
 8oy+g74YURCS+z6wjSxpp0NNuujee8InCmSsDVVtr32x5JvxmPdL/3YuPMCp5p0w68TZqN2YqT2
 2WIuaxI99cKTYbyMu8J5mogsWPRKty1IlOCHcrZ82JCHur4EQwW2apzz3HUwPWUlZyza8Hcy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-27_04,2025-06-26_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 suspectscore=0 adultscore=0 phishscore=0
 mlxlogscore=883 spamscore=0 malwarescore=0 priorityscore=1501
 lowpriorityscore=0 clxscore=1015 mlxscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506270124

On 6/25/25 11:12 AM, Luca Weiss wrote:
> Document and add the clock drivers for GCC, CAMCC, DISPCC, GPUCC and
> VIDEOCC on the SM7635 SoC.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
> Luca Weiss (10):
>       dt-bindings: clock: qcom: document the SM7635 Global Clock Controller
>       clk: qcom: Add Global Clock controller (GCC) driver for SM7635
>       dt-bindings: clock: qcom: document the SM7635 Camera Clock Controller
>       clk: qcom: Add Camera Clock controller (CAMCC) driver for SM7635
>       dt-bindings: clock: qcom: document the SM7635 Display Clock Controller
>       clk: qcom: Add Display Clock controller (DISPCC) driver for SM7635
>       dt-bindings: clock: qcom: document the SM7635 GPU Clock Controller
>       clk: qcom: Add Graphics Clock controller (GPUCC) driver for SM7635
>       dt-bindings: clock: qcom: document the SM7635 Video Clock Controller
>       clk: qcom: Add Video Clock controller (VIDEOCC) driver for SM7635

We had a massive yak shaving patchset go in this season, please move
the magic settings in .probe to qcom_cc_driver_data {}

Konrad

