Return-Path: <devicetree+bounces-204172-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 45CEDB244B5
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 10:53:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C9B083AF370
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 08:53:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44E0A2F0C42;
	Wed, 13 Aug 2025 08:53:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XvmcbCWw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAECF2EFDB6
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 08:53:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755075184; cv=none; b=Ttb2D32skkUjrwrLy/ZqdkKqlz3l/92nhqDlnyMVDY49Qm3CBSezYhT9r3Es/lvY5mEyi6fCTCr6GSvUjXVSmotewATMcyVnsX5sE0PkYrfb65kcO5OIzyVhX7ero7Q1ZqAKW10Sg01C0yuTQPO5pseL6b2K+ryLUC8Vo7e3Lb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755075184; c=relaxed/simple;
	bh=/nWGnuLz8bSTiV54QYHa4YnVrXXOf49FUZEV9LWvDuw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OelAbkNhSwN6Ionwb6dVkgcBjNHJGEk0ucBS8HUuIVr9Yckfl0iVtHFzS9xdk2hmEe/D+3NNlCL7LWEBp22hsIX8sPE1FEco52sw9GCna3ylaxNAIdbqoWIg80ZnZDA/t561ufatDOF05tqlcL2J00lXzPZmgFb+4dqFO1u7bk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XvmcbCWw; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57D6mSlm030152
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 08:53:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9I9QSWKO9WKgP+L4OBxwHd20RgzZG4/nTzLn+kT15Y0=; b=XvmcbCWwrg/kT9k8
	wGSGOmLnofHeBoIqxwpqa+iJsi/PDWBjNa1cPgF54g+lfCeDM+Kok2R34Tj2b1uG
	8edMTMdy2N4LIGpzcBQl+/2PFZpMd6nSGOQ72kk6VDCZVNzRCeY0TrycjaXkS4Dy
	wM5mli3YbxhvaFjp/F3I0wCQVMto5lz8rX+NHOrZzX5nAb1a4TOEKwZ+44H2EVdx
	oTbKI0swDmhRqKKxT7stU4Nd9u2Qbixt0WpKzA8aIqpvgkccGJj9Z8EU1IIZq7w2
	zRmd71+j05KdI86uHMj1pk6U7y0fUcBIOAUfsBeSojh7/hfdHdUiuIU5w7v9/6nw
	bUT9vQ==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dy3gb4js-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 08:53:02 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b46e381d458so5461140a12.2
        for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 01:53:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755075181; x=1755679981;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9I9QSWKO9WKgP+L4OBxwHd20RgzZG4/nTzLn+kT15Y0=;
        b=qD9fg+NOGgwoySwfG/y7JvXjvctmfN9LPVdTUMOrCR1MkdlBg0my+FeJlTLmPGqL5I
         6BjQkSrAJiZtXEZrLUpoOmC4BqBt0qlCES45QavkMq99dYZuzjh75KAEmD/mKHiaPUCo
         Yqycwg50LVhyITVRotH3k90mNCpWG6v4GNWMkXlXKgjvJmEP1q9pPTtyM1N0Co0TllJU
         lvjqzFUZr5j1Fy8JzvCzamnnCiJwzS2WAcl5FO84iAxw0YkyrfaGAjo3s8StkycgzXIH
         52P0UF2aPFU6IxT9nz6fqg9T4PxWH0F5cNq4UaUxqswahHGTVG9hzAmbQEgSODxl9ySA
         OBtg==
X-Forwarded-Encrypted: i=1; AJvYcCXiJjvrR62skdKWCG1bRF6nDw7DQ3dXvz4513zKsptg2PoBZAkaJzoApvNXXAeLLTynEl3ddjn3jCKn@vger.kernel.org
X-Gm-Message-State: AOJu0Yxb3E3jLXoAT/ItzpEUJP6TvxNtcHDGXpxukakWc6jeA6se+MKz
	JBLDKQXPFg/z0uDqAuZ15TCQHzgryWteRHvpQWoJuqTWbh+y8LF+qzCbfGq/FiluIQv5JzTzAYM
	rutGWi9HlzkQTVj8cPL+nWm2FM2uu9M68td3h0VfeQ6rEZ/NAMUe6nzuAI06INiLU
X-Gm-Gg: ASbGnctpNiPs2JoDjWzYkgDl+sQYALK+jHQQOPrs1ukFpHvGjn36qtz9YG5rcMqIVYQ
	+45qxvS90PVxR9f+c4DyEvzwwoHnMi4plN6tzrR0pvTdujcjORjY9+Oi2m3nGTt1Ti5wy+ZBxzU
	9VY6qLpiGU5z5rmVgG6UHkLN0lPFxVLWBSzZIhZBQQCVQSb5lfQrVN2Y6voRPeHBE4wL9rgd6VI
	nWOmhs7XWZjJrb/oBE6nIqSET6npKhfod0BoFUFcPyuZMEBntdMxMXfGHtvlcEOFMY/QAZaq4Fc
	V9HcqsWKCnGiNEJKmRYmzdX08iYJy8hNpfiHajPuwABy+xWKCYFs75a4TQq8dgbPtTQpzw4=
X-Received: by 2002:a17:902:ce8c:b0:242:e38c:89db with SMTP id d9443c01a7336-2430d1a1147mr33332625ad.35.1755075181344;
        Wed, 13 Aug 2025 01:53:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGGLSOP/FvFnYj/RP7XAOC5Mu8yzgYaPF1YVSYkxCnWRayhD2gjF9Jt89SDe8nILhRAk4g0Vg==
X-Received: by 2002:a17:902:ce8c:b0:242:e38c:89db with SMTP id d9443c01a7336-2430d1a1147mr33332375ad.35.1755075180941;
        Wed, 13 Aug 2025 01:53:00 -0700 (PDT)
Received: from [10.92.180.108] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-241e8aa9055sm321924635ad.150.2025.08.13.01.52.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Aug 2025 01:53:00 -0700 (PDT)
Message-ID: <8f85dbfa-59ad-4501-9dce-57f607d6b8dd@oss.qualcomm.com>
Date: Wed, 13 Aug 2025 14:22:56 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] arm64: dts: qcom: sc7280: Flatten usb controller nodes
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski
 <krzk+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, Konrad Dybcio <konradybcio@kernel.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250728035812.2762957-1-krishna.kurapati@oss.qualcomm.com>
 <175496788918.165980.17430518825409421820.b4-ty@kernel.org>
 <dcd42e01-d14c-4e52-97f7-c1aedc81653b@kernel.org>
Content-Language: en-US
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <dcd42e01-d14c-4e52-97f7-c1aedc81653b@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=X4lSKHTe c=1 sm=1 tr=0 ts=689c526e cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=bQzb5bde77GAewmGxgwA:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAzMSBTYWx0ZWRfX7g3O/HzOFp2n
 xv40BXF2KFyeb2yyYjISiu8ArU4al7BJ5fUlHfmU11A+GoRCMBc98gaICnhgnL7MVQoXO5KUa+t
 gU45Hwaak4NyAIKLWodeIn5J/V7YLx50r7WY7xcdzsu1lEJlFQJ+ZvBZJ4BbF1KzcaWQpVGaHxt
 6/7bibyMVRYy5WKTu1H2SQGsSizkxAifvxrSphKmRwBRT7HN9F+xs28JA+ECpibDhW3rIMqpwY+
 +gmZBtrxPOIdOesn+IPoMtCCKzVwRCd7Q0+3+kb6V4LDKcO7WSOSiCHZ4dunvp+iE915bs6iK36
 gcXU2CF+aXCXO07ls1HB9HPzS+k2XFUG83uV0Ctwoc5AkpE+0N3x1AO3TEFXzQQYL6gDt2Lc0Tj
 Opa7xb6/
X-Proofpoint-GUID: N2_K-j-2opPHJjTJXGMxeh8Vmw2QaMGf
X-Proofpoint-ORIG-GUID: N2_K-j-2opPHJjTJXGMxeh8Vmw2QaMGf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_08,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 clxscore=1015 malwarescore=0 adultscore=0
 spamscore=0 bulkscore=0 suspectscore=0 impostorscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090031



On 8/13/2025 12:59 PM, Krzysztof Kozlowski wrote:
> On 12/08/2025 05:04, Bjorn Andersson wrote:
>>
>> On Mon, 28 Jul 2025 09:28:12 +0530, Krishna Kurapati wrote:
>>> Flatten usb controller nodes and update to using latest bindings
>>> and flattened driver approach.
>>>
>>>
>>
>> Applied, thanks!
>>
>> [1/1] arm64: dts: qcom: sc7280: Flatten usb controller nodes
>>        commit: d72cb0551d113a0a42e12dcdfdad78ade2c63f50
> 
> Was this patch ever checked against bindings?
> 

Hi Krzysztof,

  Yes, I did a DTBS check before sending the patch out.

Regards,
Krishna,

