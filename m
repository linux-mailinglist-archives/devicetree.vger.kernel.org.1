Return-Path: <devicetree+bounces-189574-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 48595AE85CF
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 16:11:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0023B1653A5
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 14:11:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC9922652AC;
	Wed, 25 Jun 2025 14:10:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="P8GDHhBK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B241264FBB
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 14:10:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750860658; cv=none; b=exUbAbppjjX9KY5IqT+URlVpF83FgW2L6Doc6l6J2b8xXXFSEmcQsN1FyzIKbnhoF1A/PC9eFsD+GfsweQUX+p9BuQkqJ9A7ny2reRulcLktWvWSv/FKnbvbNHcfU5qTaAzWvje/h9liLFXT5VK8pIvV7SC2CirezE/CFVVaq5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750860658; c=relaxed/simple;
	bh=+FdbxM4aj9mP1SbsToRhZ6+p2wunQxJNdpM0f3ThoF0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pJKlfozywHz/3En697GsPUJRzX/gm6aSPSwci6Z7+yds+ON1xjiE2iy3eLJgR7/TM6c/xp131q1wBsg7D1mv/PyUuOhAsAr8XnX42XJRYKD7JN3kmRqk9CYL5vXOvdPXhTfIoMaJPdhOW6f3HLGSjG/wb2gRwL76/P7L8A8ZX3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=P8GDHhBK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55PB4qrB023175
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 14:10:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GH3vwxnpiCDejx75av7WZvVu6YLOFj4inA7cuWsbOD0=; b=P8GDHhBKPII7EA/D
	1VVUtNIxN3Bk31LVm9XY1lByXYAke7TVpufloT/GyB0evkC6Q72Pa1iC160hVy2s
	HRBjgkygLoAVJSGaFwvmH2HJJX9EwSLv5HY4HysCkPalXcJ9yGkINJd9hQ0ITDrJ
	Rtel1EZw20v87D1qg1mfPrIc3F+ePV4BWNRlKDEAKNuDGeTScKAc+xAFVyLpq8xV
	N2a27ufS5ZjHX47UlH2D4wDB8qt7ISjG4NEd7iCerqlNION5tJ8DF7B2qOjMgWvX
	x2NVaqDkvJZKAGuPyask9A0pwqUVYY5isaMwySC06NjCExEzpnc0+IHjjcRCntIQ
	9BiaCA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47g88f9w7a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 14:10:55 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7d3eeb07a05so90709485a.2
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 07:10:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750860655; x=1751465455;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GH3vwxnpiCDejx75av7WZvVu6YLOFj4inA7cuWsbOD0=;
        b=QDCgUmWxoysNfmSNSasBu28NqDJXJwm2mFb90EpEbo8Ld0sPuLEouYPRdjXiOIbNqi
         KT0012fo1Mdc0qCHg/kGdrDFa4JOW/Gao+sVBD99eyl6sqgv4eLPwzEb2Yxoj5A3J33e
         FthiZMB2aAEUzy/vVgeEbqQssBKP87T9xAZCv3n2m6I0I2ubTlW2irb1mkWDwmL427jJ
         W6fgOQmzeLEaEpu4h4AgkVVA7ejb7GHY0Bc4X/2qX9ARMB9Eh5vzuwfP9/HfV2Mqk+sj
         CC6QnLqINc0pGwoKSuNbVJ9cJU/cVHyH8j7l8GTWz9WbNA87K0FPsdBAr5eIPJKjOxlL
         HaTg==
X-Forwarded-Encrypted: i=1; AJvYcCUy5b+38PBeqDwpDKHnT5nXN8ZeTzoVMVNs2Oftf7L8Rnc4OWRfuRY0q34yHKwZcJeC+yRPQy+Ta7Js@vger.kernel.org
X-Gm-Message-State: AOJu0YzQ5pABCoIMCAPeg+hyEP90DELyMWIg46hvQBg2oI44WwHk6w9f
	6qmMbWYtqfDig3FqV5LXEyh378dNSQBvKw2n/gOGYkUsx2nVmsGkJ7zYZP7/mWv2e3d9VSvsiu3
	dQRlio8Ezgyd5IZ2sclhG8hz8E17KReO/eUnLuBGc9XygvDtx21jSCIr9ZvASnfY/
X-Gm-Gg: ASbGncviUDIzb2Qnq/H8MehS+AUyRGbk7OMXqJEgDxL4/pIHbv1Ubfd8vvB2x1+xqfz
	9vIo1hmYivnQ5PHKCltzITl5jDg95lAHZ6YqncAPrl4kEMbQ+sAIfETENs2wq4Vxc7FTRe07RFt
	Yu7iVsjYJH5O+Ev8Z6Z0A8U+4bmwlyoFymw0GGRr2LOtZ4BY/HB5ttue0D9jDDizOFRVBhfiRHt
	gCY7cZgEqq8lIz9MM4snpAG5V2osmE0fRtFV8MzmNEg1lH1bT5byQ+9BpI5gMztJ9wEZEEbaAqk
	SmbtIs2JGxPT+b0n8loMaK8emGwFZyV5ZULpubQlFn5k2E4mDmPMRdErzPswvyCFUssVq2bS8cy
	6a1Q=
X-Received: by 2002:a05:620a:262a:b0:7c5:8ece:8b56 with SMTP id af79cd13be357-7d4296f1b05mr137899185a.4.1750860654929;
        Wed, 25 Jun 2025 07:10:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHuHZPwG3CWK1H8PipoRERIswBPtl9pbQ0/GnK3KT0ahCWSysQdAWxntYw7bkWiIkZnC0WdcQ==
X-Received: by 2002:a05:620a:262a:b0:7c5:8ece:8b56 with SMTP id af79cd13be357-7d4296f1b05mr137896785a.4.1750860654390;
        Wed, 25 Jun 2025 07:10:54 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60c2f197574sm2568630a12.7.2025.06.25.07.10.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Jun 2025 07:10:53 -0700 (PDT)
Message-ID: <bc27209a-e0f8-40bf-979f-3d747c501ae8@oss.qualcomm.com>
Date: Wed, 25 Jun 2025 16:10:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] regulator: qcom-rpmh: add support for pm7550
 regulators
To: Luca Weiss <luca.weiss@fairphone.com>,
        Liam Girdwood
 <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20250625-pm7550-pmr735b-rpmh-regs-v1-0-cab8ef2e5c92@fairphone.com>
 <20250625-pm7550-pmr735b-rpmh-regs-v1-4-cab8ef2e5c92@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250625-pm7550-pmr735b-rpmh-regs-v1-4-cab8ef2e5c92@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI1MDEwMyBTYWx0ZWRfX96l/UajvCfFn
 Yk2bRc1Qo3WRrG4LeurkGJx5qwWZznVpvOVsygKZpuYuzdQlBZscmjhQhW3FQhu3buFQ0iNIZ/l
 DpQ0IBZJZx1dKUWwd+neWRFTOXZX9dzC9nTOLm+3kXGWe8bxh50crDX07yy3U1C37kv/Pal8bRc
 MfokMORRxYz8ovE5VMJ7bm6tfpaVvTEL/R6BPzQ8Sh4zYJhnLSzBdofgf+sJKQlwy90DWKjr2M2
 tk+sJxCYPPDxaD8so0E91YC6XZzewCP+nyZ2kg+I3lG1fQ0D4KVNycr4VZP2MHWMdiScbuN0hM6
 aoMHTlk8dp2avrzOJslLkgI0c02Il/PVwXDiRZnhbQ4lypA8wEsxUlpoJb+Xo69V09ZQ5oBEC4x
 5zBmFXbBDo9mGfWvomyyT2hAzw5PELrAOJyNTBIH9VMOLMZeSyb/d9Ekv/n0ywBxlcVA/nzy
X-Proofpoint-ORIG-GUID: Sn0xZdD1y28qTWOGQ9-5q1FKjpmOQBcf
X-Proofpoint-GUID: Sn0xZdD1y28qTWOGQ9-5q1FKjpmOQBcf
X-Authority-Analysis: v=2.4 cv=LNNmQIW9 c=1 sm=1 tr=0 ts=685c036f cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=6H0WHjuAAAAA:8 a=DRLuFLMEli8muENjmjUA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-25_04,2025-06-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 bulkscore=0 mlxlogscore=883
 impostorscore=0 mlxscore=0 clxscore=1015 adultscore=0 priorityscore=1501
 lowpriorityscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506250103

On 6/25/25 11:18 AM, Luca Weiss wrote:
> Add RPMH regulators exposed by Qualcomm Technologies, Inc. PM7550 PMIC.
> It has 6 FTS525 (FT-SMPS) and 23 LDOs with 3 different types.
> L1-L11 are LDO515 LV NMOS, L12-L13 are LDO515 MV PMOS, L14-L23 are
> LDO512 MV PMOS.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

FWIW everything you said in the commit message is correct, but I'm not
100% sure how to map these LDO types to the existing definitions

Konrad

