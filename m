Return-Path: <devicetree+bounces-204209-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6335BB246E0
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 12:15:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B29FE7BD7D6
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 10:13:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E5652F49E6;
	Wed, 13 Aug 2025 10:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RRVX5vJ+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411C92F3C35
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 10:14:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755080093; cv=none; b=cmiWUPE8mu5EjC1g82to+a0UoSmP0Va1q7yhZY0sg6o7iliaD1sBdQI1vdDB+uUkzQ/Q0fpWdldreWmWZXKjsXk7BmmkFWAYfUM4uW/gwVPepbHqQ5ci1flpruB/1tVqtquY9gtjRJ775zf/ocUurfUatK3UpZSzOkxm56LySOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755080093; c=relaxed/simple;
	bh=OsF67T9tg31dlx8H+a4WlbXvU1y++zX3+kn0nxjc1eg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MYYzLOHLR7iWDmhpqdPYcIWS3BaHSwOeiH3dbPDIp117c8pNa3sKcT/JHAw8P6FQLRcy9poobCKJq2ZcDL/p7kR979c9siJ75vgbgxT6MnfiSc6gHsEzGrzWhC3tPZ2ryfsKzWA2qhR95DOB1gAk5ilwjMB4+CuX0NVX5cMZHEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RRVX5vJ+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57D9f1bk022207
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 10:14:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	V3s0PLvJMpjYoDhySt4+zfWb5bPPDz2zI2u2zAPEgq4=; b=RRVX5vJ+V1YCOuMP
	oyruepRzotOCuhyBhgCQBRToHZmo5W699iTDOyS1lnQXX7Xe4I4hLmlDOUaqZsz+
	zXcK7y7XPN5YsQbIUbNJaoHVbWtUQ9eXoIyWHhO2n+tRihXPZeD7W+FAltXifDFo
	qDfk3RFxI3/1vehoqkz85Led4if+Scd+p155xFQO6hPrR8Klcy64p3M1V5gum97F
	S3Z6j/otaIRlR8zMwI7cR8hOlbggLmlrOCIN/XHKIx7G3JipgUH1dlGZrDL2aSRi
	QY7o3+uF8iFC1o0QqBauHXMvrlRFZaK+KrtGRy9QkDodea6vx+R49wA9Nl60yXHG
	Z8Edsw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48gr9rr381-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 10:14:50 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b0adca3d85so10787331cf.2
        for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 03:14:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755080089; x=1755684889;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V3s0PLvJMpjYoDhySt4+zfWb5bPPDz2zI2u2zAPEgq4=;
        b=YhjxOT0YRxDQ7eejaX74EN5li1Xv9+apYwEk/z18pkty+du055tqkbOzBcKG9tSJ/9
         cQFDJLXN1WarFrZapjTii4MTxaE8uJAyuRjXSg8OXvUZb9PmGOOPXpH7+4WiJRsMNzFk
         x9gFZuleUWYSclWzdctl3fR0MSB7yw76dIL/XNtFqw/9/OF/fgybukyolLclzhrQHRVu
         2d1eNkt1/mkJwv1rYKCIcPtoiwoxqlm8WZGHuS8jkErgRv4R/A1uWZ8J8TyPMd8/6MSu
         PyqcaAUQFHH1kh/o2BPdSSUuWdeqmmVRAHzU6Eh15VEzBfhzfBCoLGutZ04zx0Ic3xSy
         id/A==
X-Forwarded-Encrypted: i=1; AJvYcCV9ZCd9kyvsfwNpxwUyPwq9zSQ2neRxEBL84P/OgJOTvZc8PLkHgSkZLRLQmf9hzUEtQd1HtgpmloyT@vger.kernel.org
X-Gm-Message-State: AOJu0YyYwbTmBrHJ6UxjJBfKUrSYq/RRgxXgmXKQ5EtUXsyGE5M34TNO
	3eO9Zbn2PdwVz/Ytl66lAIpB7QZtEWTLg7K6C3mtQ5EhN7lrB5Rf7YSrtNNhO5eQexSywSj1Amj
	DWSSBX5FAPeLaqVKz31XqsbCvckjkZiNkUNlKR6ck7JQqcgIMdBbMgCj1Eo99NELv
X-Gm-Gg: ASbGncsrGw0UcqP5K6BLvbC/5EdskhvOvO0z9DN+iSQlm45gWa8lAje4pYTuSQzT7ly
	Ei3nlmqcxaFpeb4QuqBa4wr6hV6WCU5n4ca35ICYSR2ZezGeZnplOJ0S5LMvvVrsm1ZkvKtce95
	geehat/WdaS2rZ8Zc3oYvNI6cqKILRYpCrsegMvKtHyHX6tB4wwsU74FhcSM3jPNAMY/JXEt5+r
	odpA/DPRUqZJ9hxHtTFQLDsIfT8QbaVUDqA4WWNR3BMGMkIKsij62nr2nb4p01/A1CMNoZwpArs
	CCxO8DkryeEjprlA+BhhxSKj/U9sxuVNqSN2kOQebGzgrr0NZOLIvgJpzo5YJcQVJgya7NcFEJN
	1RCsY9PL20Hfv3BuYkw==
X-Received: by 2002:ac8:5981:0:b0:4ab:6d02:c061 with SMTP id d75a77b69052e-4b0fc6ee4d9mr12739291cf.6.1755080088852;
        Wed, 13 Aug 2025 03:14:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFSQ3fe3ZlGQb36R1gfEPkHT1EiLBXa9LUWcbhpTmHxS0wWwUshYGIF3TJUMp3lqGbEvv9K/A==
X-Received: by 2002:ac8:5981:0:b0:4ab:6d02:c061 with SMTP id d75a77b69052e-4b0fc6ee4d9mr12739011cf.6.1755080088085;
        Wed, 13 Aug 2025 03:14:48 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-615a8ffbdb4sm21449584a12.52.2025.08.13.03.14.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Aug 2025 03:14:47 -0700 (PDT)
Message-ID: <04b1a85f-ded8-4e0e-9e6b-c415ce2bd67f@oss.qualcomm.com>
Date: Wed, 13 Aug 2025 12:14:45 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/2] pinctrl: qcom: Add glymur pinctrl driver
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>, andersson@kernel.org,
        linus.walleij@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, rajendra.nayak@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250813065533.3959018-1-pankaj.patil@oss.qualcomm.com>
 <20250813065533.3959018-3-pankaj.patil@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250813065533.3959018-3-pankaj.patil@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODEzMDA5NCBTYWx0ZWRfX13ykvyJWdqaE
 Zf6fANZqSkAzOl12sGbV9Zy/iP2ycWDRoYpeqYbN7KSeRt24Q6V08y3s/JCfRQQbv6dGtkoa3Ar
 oIv5pnqK8cBWUssAZQnyV847VVV1l4xol6+IqZRDG+0Rr8tMU4dePNyZV1SiJkyr6KCDMPnvDuL
 Syq/TL1QHAkulcAT0j4IJWywUtH9vad6VmQkq8S+kqMO/BDNSVcXijp95KaJ6+9GcJHcMgSGPrO
 E3Rdr85p0iA64FWQ07Z7y34dxdcO/lgiZAZQ1+U1Hk7AMkS+CJC2Aoe9FmSrGc0FcL3vO3Z8S43
 vhagyzqar5mXUEkLkomi9oFWbOHtvvVjUrhlCrF2JsDAPp/73h9nbm+AyCNOWXIKD0abia5PHx1
 qZ3pnJ+0
X-Authority-Analysis: v=2.4 cv=NIrV+16g c=1 sm=1 tr=0 ts=689c659a cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=dckrMdBEC3L-f0dnXJIA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: Eoon6CGeiivBr-1h5P-D33vr4z98lVGv
X-Proofpoint-GUID: Eoon6CGeiivBr-1h5P-D33vr4z98lVGv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_08,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 impostorscore=0 adultscore=0 suspectscore=0
 spamscore=0 malwarescore=0 phishscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508130094

On 8/13/25 8:55 AM, Pankaj Patil wrote:
> Add TLMM pinctrl driver to support pin configuration with pinctrl
> framework for Glymur SoC.
> 
> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

