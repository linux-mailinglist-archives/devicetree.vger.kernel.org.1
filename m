Return-Path: <devicetree+bounces-167211-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C88FFA89A87
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 12:42:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 15A0E1891B0C
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 10:43:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7625B28B505;
	Tue, 15 Apr 2025 10:42:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BMOm5lev"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99EE728A1DE
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:42:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744713766; cv=none; b=U5YMQzotgbfQEISDQ7rn4aBsb5wyovMKMRpq1hO97na6HU4DhF5yYljoAD4fJR+4N/RhHo7ipsD7WjFuUx7tLSHP135Hv27dSNzpE8uXUf9c8dWhu521wxa7t9f3RRyffS/JnC9tFThezJwzwrElE8W1xPSDoSpgmaI5N1/UTg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744713766; c=relaxed/simple;
	bh=PqtFIuf2PaqgdiInwLbpBw6+hS8F+gVD8HwKtn8pZqA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tUxFTJEVtwoWPcd0yKBdEX9YaDz4PamCKeQdrn+zxy1PLuaYQuaJl90mv3GP4NqE1BInMvC8OuxSXIvfHF8lbts35ExIC5BRsiXsWcna6qpXsB5PgeajrEoAjWI/5mbXwdgULr7G9DZuT4fE7jNydET4dash9Dttf2ge8k5dnRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BMOm5lev; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53F8tHHW002235
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:42:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	i+0K8i6mH8nJR7NC8EwJps6/hl4dOeR4gugtJgCdwYo=; b=BMOm5lev92e+MOln
	PXaWU86xoGC7Cgz0ERiAzFTiAciUYsEeK9lC7qr7drPpoqtuZBWpE1oRsc9/K3xL
	a8j38OgEu4OCBosfDZ3cbZQ8p42hcqMNE4IYlqqkwO9UTW9RFuwpDMVRkFTIVgyB
	MRaZdyw5YmCuepIyLm64283W1h6/RHp93zngU7BIYGkMOrXJoOtVPSBj1l100ZpE
	AI9ZBdxj7kdjUq7G1/XVrj4RfESr4FFxi64R6tqSmfH9l43tAhufLN1f2XLMy6oM
	nSJLbqIVJwMttoKQfYzHBPtmJOQLsQg9M00WlhkgoavxIvoa9y3hJGDVGqdPQAHm
	nN7lhQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yf4vfts5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:42:42 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c54734292aso149129585a.2
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 03:42:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744713761; x=1745318561;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i+0K8i6mH8nJR7NC8EwJps6/hl4dOeR4gugtJgCdwYo=;
        b=gF5xcu2LJ8J5zxr1Id/rkcc83KsVFaHjF+zdzAAol2Oa7BX+OgHrcvIn9fD2pFUs+7
         Kr7VD+Ue7yjphX0OcejLvJhgtOkiBWWZGsb+bfop6gOwcpOMfUnwAAmmUwCcpXLcNan0
         ffBpgGQX9StnpQh3HQVkzJYmRWbkJS4VHPCVvKUAyWD3SdINd4mRx5iGfddl4BV1yiyM
         fFBpBNLdL0SEfEYwxoB4mKClUHwHFePtI3EIkj7OhuxhHU5H0MeKLRc2viLqN9Jo6z/O
         0BmL4jtubo9llA/wN581vajYaTtYMcYARDIseun3dsT+U201+e03XVvUI1IQQewCPVcY
         wXZA==
X-Forwarded-Encrypted: i=1; AJvYcCUVciP5bBsWIoHsXkvUrGE2g72Aat0v1r11qOQt69GyBe/Ww2WRHp1g4G48S4ILNViiwoNrH+5l9L6C@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6SoGgLj3lJlrAAblr0e5nYLeAJ09xw4ZzkMEjQoCOYwQxoO87
	B9oM59Zx9HFK2zMG+HGTrMPvvagb0WUQVYseP/Xlgr/32giM1vGzsor8ciVGs4j31T0ZvwJ9PMU
	XkRuJ5m6GqgoWbP2iDjBKfEE5fn9SGg+Jum4aoPocA9hqhJb+HJHn9QkGdbYe
X-Gm-Gg: ASbGncumPmyFaBziGfa5jT/SWDmjgrEH4I7j20sMatUeLVOAZUwRuS6W9JbKYN7v8OJ
	iJ0EsFci3SS9Ff84djqEMiv0hsvAQtTF5jIfFYBLaZ0ZxbxCzycVE6WO6AYLWgRJ3P4uzIn7sz0
	x8rM2OsAfOPDGooBYK2uiVPHWUYcM3cWirHpTNdhMRmnw6EVHiD6M6sO2nedsGpIg9woRzFeOQU
	/bgpmnWadKm6iPK+VY2Zw2SEKJ4OlD6zUtIsa01XzFPIJCrFNrcePfBiJKJ428Ix/veaZQmVxBN
	aeXJH0RFREmrirzF6w1ExxE+kAGHp0E4KK0JKbrBlev8PJbJc22frUqk5aEC8at8ZG4=
X-Received: by 2002:a05:6214:5190:b0:6e8:fef8:8b06 with SMTP id 6a1803df08f44-6f230cb4dc8mr83966056d6.2.1744713761423;
        Tue, 15 Apr 2025 03:42:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHn2tx5QvoayzQ/616+pRht7ahmegqTYF8GDn0LbYDa/m8suDClYxNgbiYcKpGQF/QiJ/G7Mg==
X-Received: by 2002:a05:6214:5190:b0:6e8:fef8:8b06 with SMTP id 6a1803df08f44-6f230cb4dc8mr83965946d6.2.1744713761165;
        Tue, 15 Apr 2025 03:42:41 -0700 (PDT)
Received: from [192.168.65.246] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1bb351esm1059502766b.4.2025.04.15.03.42.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Apr 2025 03:42:40 -0700 (PDT)
Message-ID: <cabda8fe-e96e-45e5-bde0-01ce7dcd85d2@oss.qualcomm.com>
Date: Tue, 15 Apr 2025 12:42:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/20] arm64: dts: qcom: sc7280: use correct size for VBIF
 regions
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250415-drm-msm-dts-fixes-v1-0-90cd91bdd138@oss.qualcomm.com>
 <20250415-drm-msm-dts-fixes-v1-7-90cd91bdd138@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250415-drm-msm-dts-fixes-v1-7-90cd91bdd138@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: UmszjX-XpV4iQhfQ7MTiEBSJt_K7O5G0
X-Authority-Analysis: v=2.4 cv=IZ6HWXqa c=1 sm=1 tr=0 ts=67fe3822 cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=da4WsfccAxvekxWPt1gA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: UmszjX-XpV4iQhfQ7MTiEBSJt_K7O5G0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-15_05,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 priorityscore=1501 clxscore=1015 malwarescore=0 spamscore=0 adultscore=0
 mlxlogscore=607 mlxscore=0 bulkscore=0 impostorscore=0 suspectscore=0
 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504150075

On 4/15/25 12:26 PM, Dmitry Baryshkov wrote:
> Use allocated region size for VBIF regions as defined by the docs
> (0x3000) instead of just using the last register address.
> 
> Suggested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

