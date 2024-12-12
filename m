Return-Path: <devicetree+bounces-130386-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 752B19EF58B
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 18:17:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A738B2867A4
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 17:17:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA678213E9F;
	Thu, 12 Dec 2024 17:17:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BG8+QpCp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7BD53365
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 17:17:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734023858; cv=none; b=LAgwJy0JzCsSBlhgsTdGWOvaSYZrTwXmwMU6SteDKUVm6955UcogmWYMKZiASHbVYi94oj/vBAm9AiBB6KduiH4h8odO5uyFouxqRecpvC2FsOC4L3tILur9SozVZmDr/BWrg0EnFFHEzP48k2BbIz/upIjznPEbb03agzTQAzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734023858; c=relaxed/simple;
	bh=y3MazrmsoNv51pshbat6GYWNQd4U99dkLcGpYfeI3i4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kSkDE26ohBqDgyGpK7luBXVLL6Sk5Jl6e0N6lfZ7JUajaFziAagtkyKFR3BMucuMXYMK0cOwfzmZnRRgKKqdiwdqgKs1sFKSz0TzmbadOxeEha1m0pXzO1oRlmJBhhxpDj+ROY71A/VZ8WpEMg4TAvarBRKDPvFaA3JAxCCEDf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BG8+QpCp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BC7gVcm029034
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 17:17:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	00ew4buxa109w+E1jmiDpwlb8UwdJqPlcJafnF2RHzI=; b=BG8+QpCpLeud7pxD
	9hrQ8mpiI5WlNQ8o1HpeROwURI19l6Ea1MFcNWWvLSIg8tQldOJntCG6y3k79QjX
	gdBveYmwGfEvVcqz7/vMD8lqIxm7u9ZqS7UgyJaBLkugpQbut9TPS92bnVYI4bbr
	aVJte7gma0n7VX2UGJ8ZnXqIjB3c8DvXoTAcy4g7f2wXahB40Vhf/qiQWDW1SjMY
	iCbx379JPGeNT+st2kbckB+bE+In7qvs0xOXvIa0ThrBfIEdhbUCYDyhL8i/Ks8w
	NMCuTHOTevClwhQE5+mqIIrT46SPhKyeN2JZwXFX6h06Phn5HyLFvs2ZrXgymyOR
	uMvJUQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43fd4xuqe6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 17:17:36 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7b6f134dac1so4168985a.3
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 09:17:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734023855; x=1734628655;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=00ew4buxa109w+E1jmiDpwlb8UwdJqPlcJafnF2RHzI=;
        b=DovRignCqYcDuMO7WCxydiVHZCmeQXpYOfNrcvZ8bM8WWpk0JYIIPu08UwxRuvKO+b
         GWEq9wpVGBxcWlbZN+kIXtcVcaDFL+Exvw2tGK2gFsBrZonhm8+/U9NP5P+CGiflh65Y
         pzRMYdsZmw7xXLAbuvexWrZNRJXnUUMoBNxh7JnJzVe6SvZunhSZLxWRRy3mLFa2+/wQ
         EYj0tB+zfSRODV2q0LIvCRAcmMeWNh3+RdFqs4wJtQuWow6OrcddlMgL1Te0/In9pHc3
         a7Bks9UE5ie1kMS+yIzyWKbJAYSOvHTAio5W/k4ZzJNzdKy/MwYmoLMl6EbYIneGeytp
         YoUw==
X-Forwarded-Encrypted: i=1; AJvYcCWkikv6wwhujPRwzU/kMVUtSVN3z4yOv27w2pdPtGP7ueHX4dX76OZ9XY9za1W6lDOmwTy4n8NIYn1+@vger.kernel.org
X-Gm-Message-State: AOJu0Yyw7oqMp8h6qNdsK9uqTKeDOY4linFMjnSgNRCHwNP3e4z4PEYt
	bX4RoqwIrgQ31KYB5sT4kFJpG/dCtxrAJq3OS2swyybt+XPkuY6FOgu8mYy+DoTqlBzhK3WixHv
	ImyshQzo9DmdfKBqWp9xbRLSzFX3Cg4wd0L+N85w0uT8KxbCAk9Hjg4prB4XX
X-Gm-Gg: ASbGncueohIVY3qvURHb2NQ5Z9ZKnh7MBUuVQFkjQUx9iua5T3X/VkXjWr2JBq5sjm/
	fHVqMBgrXYDN6suUReB2n0gxr9YbskV2ffZBK68lBopI4tCfSvuA78IN/QA5F/G4MRLG0f+pTho
	wAUupxii+qDMCoZMj6mtwHhwzByG4MXJpjqM7uhWqy1JpxPd0qwHZTzQpkqfFwL7djtOkMB+h80
	PJjr9Rf7WqK4pA+ak9I8hsdo9n8AkLFNmLu0T6ZMvlujFrEvdHXYqFkudkjsldkS3FES3cvc84u
	1HmVkuF+Ul0/qjprbdlk8dQZFlXPmdZ3tJuyXA==
X-Received: by 2002:a05:620a:454c:b0:7b6:e6a4:9668 with SMTP id af79cd13be357-7b6f89c172dmr54711085a.14.1734023855220;
        Thu, 12 Dec 2024 09:17:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHAUNA8AhhwDMLvTFvKGygWG0d+9M/OXk0CuQAdC7E9rAGjae73oDQl/bxGXM/hJDZHi1S76A==
X-Received: by 2002:a05:620a:454c:b0:7b6:e6a4:9668 with SMTP id af79cd13be357-7b6f89c172dmr54709485a.14.1734023854773;
        Thu, 12 Dec 2024 09:17:34 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d3db53b828sm8039038a12.74.2024.12.12.09.17.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Dec 2024 09:17:34 -0800 (PST)
Message-ID: <97736082-97a1-4a77-ad53-09d01089c302@oss.qualcomm.com>
Date: Thu, 12 Dec 2024 18:17:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 06/14] arm64: dts: qcom: qrb4210-rb2: add wcd937x codec
 support
To: Alexey Klimov <alexey.klimov@linaro.org>, broonie@kernel.org,
        konradybcio@kernel.org, konrad.dybcio@oss.qualcomm.com,
        andersson@kernel.org, srinivas.kandagatla@linaro.org
Cc: tiwai@suse.com, lgirdwood@gmail.com, perex@perex.cz, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, dmitry.baryshkov@linaro.org,
        linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241212004727.2903846-1-alexey.klimov@linaro.org>
 <20241212004727.2903846-7-alexey.klimov@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241212004727.2903846-7-alexey.klimov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: fq4IQknK0NwZcqjRvt-kX885s8hRUJql
X-Proofpoint-GUID: fq4IQknK0NwZcqjRvt-kX885s8hRUJql
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 priorityscore=1501 bulkscore=0 mlxlogscore=765 phishscore=0 adultscore=0
 suspectscore=0 spamscore=0 mlxscore=0 impostorscore=0 clxscore=1015
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412120124

On 12.12.2024 1:47 AM, Alexey Klimov wrote:
> wcd937x codec contains soundwire RX and TX slave devices
> and can convert digital audio to analog audio and vice versa.
> The codec node also requires description of reset pin/gpio.
> 
> Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

