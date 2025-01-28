Return-Path: <devicetree+bounces-141428-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7003DA20AE8
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 14:03:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B9A801886493
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 13:03:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0E3519F104;
	Tue, 28 Jan 2025 13:03:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ci7hjrtu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B16B29CE7
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 13:03:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738069426; cv=none; b=tRCGhy1iJNmuH0mEEXuY5/MeUd8XJfD1TUkDD2+n9gLMlkZV9f//Xo/UqVeJto5MHP9/eX3TtlUaqdPjGAJHugY/lTpDcTTr9/Xr6gdwaENEqtfL9yMgHjaJPySGlRK/qHc6PMVTJbcRadf2YdtqDvyNrHthISld/qNJ4ADj76o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738069426; c=relaxed/simple;
	bh=cA1+dYNSIRoR/3QiC+V9qev2k8km+8t8DiBhTgjUZtI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ikCbgYXSsqXEOauWRPIldBibRTcgAncLQa6FUYJdtl2ChpF+IYFoNs1NJbbRiTudkr3z9uZSFMzingtFhkvBzKzH21nzvd7r8PRjBhcdmrn/YxgkeQ9QvfO4YtGhXXXBCa4ov6wrx30/3jZr/oEkjrCDuZdJgePPO0QDa0XdgqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ci7hjrtu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50S1nn2a011398
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 13:03:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FzdUKbySnxWd951/O20ySCsyqCJzH/i5GjXAoiNmERA=; b=ci7hjrtuYXIU+LBy
	FYt0E3nnh4hAeqaPLVJoSvoVn4TtJnmLwTigby3oWStkmKmYZXBsQMmggpnofc5T
	v1yyfqbQQrN4FgnkuNY8P0Ps+ZDtvnvBap/PqeZImYzm5b5Sv7CYid8h+E8wVH7J
	obGw3O7n+E2Rof4/a2YOnpZb/MBejckgBwoJqjVrrNd9YsCLoAPypOkx9NWmII6J
	ZaM9vIP0+VvBLQ/d0cY2Oe92X3MlJ7U63/L3H1bzF6uPEKQsKU+C2lj9iybCNSeG
	mkyErxKkicZ7WEFf3i9n7a+g5HpU0MISK8hqIXnFM/otE836UvhVUzvYtEow3KRl
	cysbhA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44ekb89h9c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 13:03:44 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7be6f20f0a4so83112585a.0
        for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 05:03:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738069423; x=1738674223;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FzdUKbySnxWd951/O20ySCsyqCJzH/i5GjXAoiNmERA=;
        b=a2ca7ZrvWcj8QDhCmXRYXgW1qOA9E2KQhJaXUSGOdkv9KhJnyVrW5aAdUPMisaEgSQ
         QsEkRdfXC3NFxQJjVEG4Wmn9mJsTfXW0/4yi7G+8umSM6kTZjFpRTM93MBPDYH9PYEAM
         Lym/i1ivRsvFslRaBqOyey8NvZ5P6f3JQWef/SN0jSjdWmq+vKl71G5aN0tnF6+Om48y
         DmODGU0GpHs4yFoBpC1wF/PH5D0GXdim+z8AwTtdcFfLPmLMCtEpTC8enChRYD8as8oV
         2/qhCgGclmozai4RsaAUugZjyWQJ7NlFsGXSOG/njdRjP3cVG/DKiVHHvzAbxESrq3BG
         y0rQ==
X-Forwarded-Encrypted: i=1; AJvYcCXTUBqjJ+D34+qJUgUgsLAUSOakgZSe+HO4LlPgmMcx3tYICD5G7pCUkNqPEHYrerOUNA24qgeustjq@vger.kernel.org
X-Gm-Message-State: AOJu0Yyk2IubfRrSi9DlELWYJDX6JzZbCgaGc9CovMe/2vMBUGLTXynu
	Lj59zyrXflANFRW4LSd09BdkGG05NxxX8rbNUaDq4W2GbM7hfYocLnrmQJGKAq7pRf0Y0RLdCBB
	abGd6H3AyhVgsg694gtnih6sbqZOeOisChsbLjlT+OfN65F7VdXv/3jP1ja/y
X-Gm-Gg: ASbGncu3BCxeNQx435mWM61MPX32++GBrhgyyRFbl+Uvwcka0rX+KSsJe788PROkWSr
	5w7QS8s2SyNHCj6znyqJqLupxCY9pAKuX/17Q7I0yHRoBt6VgYNFOi/6fGaTnHE+hZ4wWlprdFt
	1FHFUU8LqvJYHAcl+XHNXUrizrvtn878fINvwAyDkWD58WpRfkKuJvCe2uwkA1yz2pQBvkH9sBS
	GiBPS28WVNj/shaihVbLiMlZeKnEqkbiN7odExW2qE3RbOwH15snYVRsmtRWIMR07IYsb7mSP6d
	+LKa906daiCe59XSLCLVQ98zYxVmpLDioX0jjK+JJ2zg++qspXdbL5UMPCc=
X-Received: by 2002:a05:620a:6284:b0:7b6:e6a4:9668 with SMTP id af79cd13be357-7be8b36c63dmr1702350085a.14.1738069423188;
        Tue, 28 Jan 2025 05:03:43 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFv3l4gWWarMYY79Vvpxt0xJsS3TGtrxRQf3vlfAdEtde+7sNjjx1N+O8q8Bhc9W6WwwBW16A==
X-Received: by 2002:a05:620a:6284:b0:7b6:e6a4:9668 with SMTP id af79cd13be357-7be8b36c63dmr1702348385a.14.1738069422824;
        Tue, 28 Jan 2025 05:03:42 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab6760fbabdsm793202266b.136.2025.01.28.05.03.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jan 2025 05:03:42 -0800 (PST)
Message-ID: <a98bf5de-632d-4c41-bff3-d1b4ea36c318@oss.qualcomm.com>
Date: Tue, 28 Jan 2025 14:03:40 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/10] arm64: dts: qcom: sm8650: use ICC tag for IPA
 interconnect phandles
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250115-topic-sm8x50-upstream-dt-icc-update-v1-0-eaa8b10e2af7@linaro.org>
 <20250115-topic-sm8x50-upstream-dt-icc-update-v1-5-eaa8b10e2af7@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250115-topic-sm8x50-upstream-dt-icc-update-v1-5-eaa8b10e2af7@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 84dCjjaGDVXQcH05q6r0YqGdUB9Cau2o
X-Proofpoint-ORIG-GUID: 84dCjjaGDVXQcH05q6r0YqGdUB9Cau2o
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-28_04,2025-01-27_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 lowpriorityscore=0
 clxscore=1015 priorityscore=1501 spamscore=0 adultscore=0 phishscore=0
 bulkscore=0 malwarescore=0 mlxlogscore=627 suspectscore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2501280099

On 15.01.2025 2:43 PM, Neil Armstrong wrote:
> Use the proper QCOM_ICC_TAG_ define instead of passing 0 in the IPA
> interconnect paths phandle third argument

second argument to the phandle

> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

