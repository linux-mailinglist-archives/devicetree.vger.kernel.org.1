Return-Path: <devicetree+bounces-214494-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BC4E3B494DE
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 18:15:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B5ECC7A5793
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 16:13:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1D5D30F55A;
	Mon,  8 Sep 2025 16:15:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JWP7pwRJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E0BF30BB86
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 16:15:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757348102; cv=none; b=RbDys9b8Bcku5uimKCrl6AZWyrZXwXgyb9L4yv1D7m/UDVB8OF6JPFCVeNbM+HE0AW0rzMQrrIsnqk+ZGxwNqIqV5P2V0Sk91ez+EnU1bxhA8QMl2l63C9EeBNAncojoJo8C+9uKp0zfQe8J7mW/kTOW46Aym8cGHL+Sp55Ixm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757348102; c=relaxed/simple;
	bh=my2J7ZSJKgwOGws1Hzn3zA5jTkV8FObsyOMISQJ3baM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ed5diWnr85u6/q1AgRhPNsqNQ7Q9EN4Bc0nz3pJVoPlacu/r3xt1Obtt6/KDJ+qDOs9yBWjo0++r2T3Fw7r28ulihNUMBzuSlFNgUtdVIUkHVhCBvukk/lbwP8qyl+XR0yhQWn3cRZ9/AiNrEdNWfuql8vETvOw4+EL+k9xCi08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JWP7pwRJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5889OSAt004353
	for <devicetree@vger.kernel.org>; Mon, 8 Sep 2025 16:14:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uNUg7SeCQHOb1a3Kr4zUTJOlns3BsZPwl8vdQ/gvp4U=; b=JWP7pwRJqb/4XlNK
	BSNvvQAQIwgdwBtdYDtuX4xfXMrzCZkoe4s3IuBXiYQ+9P/hGqp9akDdbZ6c9dAL
	iVyB3EjQJp1Y+Gsxs8Yopt0UTQzUfMlo3jfxNEmoqvgfFjgGScLVHoHMsWjp6Rrf
	+rs7Eo2/IQhagay0vlyaCMy4JwQTpZRUiHY1oqXq2glG+jG55s2zJ+QUPVpZQF4E
	NWcB7jKWAwGmcBH+u3gTsUazNdi2+nKGBcmgLxcNMppUfgsr7Gqj6dHX3yfEBQVf
	fwaCklWz40tP12XQt3qskJTB8hHCbHFnQU80gthIPNLsD7d751jx0ExxPhkIUX1w
	BM/eBQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e4kw2dh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 16:14:59 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b6027bf032so7633981cf.2
        for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 09:14:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757348098; x=1757952898;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uNUg7SeCQHOb1a3Kr4zUTJOlns3BsZPwl8vdQ/gvp4U=;
        b=f6vQnRYwBn6u9bMcPwnum2EpLKtqdcCdab/nPQzhEBKsL5lgNqna6WjbrXwPQtGBZq
         cljwEzlYubeT9iK/ctLgY99vQ9tC5RwuIxoia6mRJqJ5+XLO9L6CtkmM2A1oI055TC6t
         OesRJmE/zMM9igxMeQq4yjkn3C1oNkOzNevB+VBp1sl5J696XF6yCenM2BHJ1bVKUFan
         7tJRwLxWgp2UVMb3f2Fji8NzilMkxnanunPvfmtoiTxuZqCpaBGQJHiH6P2lVrR0TlFQ
         t/YIsapin5XjJUG+6jbKcUR7ST58o9fMtHy33PAQ6ofHvlfADlcX2DIX9jq4gJzF2ePV
         nJAg==
X-Forwarded-Encrypted: i=1; AJvYcCUiM+Rtkmj1z9tOjek+RbOJLhtf/eze80XfqD848XPJRlgkt+qHQJsDiLzB6YJjDZClLATt3kl25DN/@vger.kernel.org
X-Gm-Message-State: AOJu0YzckzCdSJVQoMr94Bmhifhe/ZmTbEEFLg667c2vZ+mI3fkqMeT/
	nnot9iwwen3gbdOapvaOh+yDbdL/IO2YzQQlI9VW8Q7DHAc38+7jAN8cVCn6M9SfcL7vVZpHlXf
	iaDRvvA4T95Y8udaYB6F0b6daNimSbTn4kSPCGkEUaUE/DstwOAXWJTjJhfyrxukg
X-Gm-Gg: ASbGncuots5l9vb2Kz5A/O/+U7shKijgXVEjLjyZJgD6Wsrt+3VET5LqR1qfQyQFVUu
	ZAdChgjdoJfgw957yBu/xLt1KTYEv33g+FuWeliwKfYovmbvyDMP0JLSyO94NQvMaM3e2lA5k0Z
	FtaN37FiQwvn6jg7bTydEe6thIH4NrJWL2UZHqxA+SnuckQ1gQH9hd0Tn1EJGWTWjtxV3Qqgc/c
	sJsA7b/jO+7iW/TGqCjnlNJVtavJryeTtwB3jdiv6nHVhyBwhxyGa8brcJp4fHgeV+xpQ4pbFPG
	oTzt76eBAvCyQytOsM7ZAp/ED/OV7sI5P7j6cTpOJUO9CWy0Ax326Rl6MIZq+u22cbKNVU9KnDG
	a0+3kYDWYAm+C1onk9bFTCA==
X-Received: by 2002:a05:622a:1803:b0:4b5:eeb8:9dbd with SMTP id d75a77b69052e-4b5f8389c08mr70178141cf.5.1757348098031;
        Mon, 08 Sep 2025 09:14:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEco+Q/q3RTA++gNO5I3yZ9Bu9pgiKTfiyr/MiXQ9nF5ACsplPzOWYy4LyCZQCEZJJixvAMtA==
X-Received: by 2002:a05:622a:1803:b0:4b5:eeb8:9dbd with SMTP id d75a77b69052e-4b5f8389c08mr70177621cf.5.1757348097446;
        Mon, 08 Sep 2025 09:14:57 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b0307435422sm2283685766b.78.2025.09.08.09.14.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Sep 2025 09:14:56 -0700 (PDT)
Message-ID: <0583a79e-d87a-457c-8416-f3a0b240d63b@oss.qualcomm.com>
Date: Mon, 8 Sep 2025 18:14:54 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: lemans-evk-camera: Add DT
 overlay
To: Wenmeng Liu <quic_wenmliu@quicinc.com>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, bryan.odonoghue@linaro.org,
        vladimir.zapolskiy@linaro.org, todor.too@gmail.com
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org
References: <20250815-rb8_camera-v2-0-6806242913ed@quicinc.com>
 <20250815-rb8_camera-v2-3-6806242913ed@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250815-rb8_camera-v2-3-6806242913ed@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOCBTYWx0ZWRfX8wZq+1eW+V1M
 q7YRuU+0/wSjLwoGorPEqObwNRSUB0emBCNs/SyHNvVgrCGZmKpT3qfE5SncFOyS8PQcOHsd5L0
 uC3lJrCK4e/g/89pdJhKTB/eAHaf6uW99h6+v0yO1EP1PqFgDRSQFcY0X/idXsjMDs6Ma+RWMl2
 75Fov7N7FCASgy5UdQ5LhDegpJW1NpCC8DuZRok3DJ6AttYZfXV5qkZVh4pNjwQ2OfJ3ojB94k2
 o6qyx640OLnelczVElSA/KWEFXepnVyHKovmd3WAXS29lh5c3I90D7d33Fs0xquNA/wpimyQ9Dg
 8SNEoRbkDc3jL96JVWX8zUU3PgGdLwppGlawp5vGoAugnR2Ti1nriFWoakyoWW0MswPKG8yEYVa
 rXNtrmW/
X-Authority-Analysis: v=2.4 cv=J66q7BnS c=1 sm=1 tr=0 ts=68bf0103 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=gJbItJof4LNU2qWXpP8A:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: ecpdpM8pWwziF3A765KXkfGDrbpvdVDl
X-Proofpoint-ORIG-GUID: ecpdpM8pWwziF3A765KXkfGDrbpvdVDl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_06,2025-09-08_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 clxscore=1015 spamscore=0 phishscore=0
 adultscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060038

On 8/15/25 9:07 AM, Wenmeng Liu wrote:
> Enable IMX577 via CCI1 on Lemans EVK.
> 
> Signed-off-by: Wenmeng Liu <quic_wenmliu@quicinc.com>
> ---

[...]

> +/*
> + * Camera Sensor overlay on top of leman evk core kit.

"LeMans EVK Core Kit", this will also fit in a /* single-line comment */

[...]

> +&camcc {
> +	status = "okay";
> +};

It's enabled by default and there's never a good reason to disable it

Konrad

