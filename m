Return-Path: <devicetree+bounces-141065-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 33FF9A1D4D1
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 11:51:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6693C18816B3
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 10:52:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D95911FE45E;
	Mon, 27 Jan 2025 10:51:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Xdg1V7eu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D5281FDE20
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 10:51:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737975109; cv=none; b=JiTIWi6NP1GBl3JMHZ6GX6SFx2cX3XouLachdCoAxBwI7l7mikKmfJRZLcL93rXWhwe5L8KLkQZvB+hAxKekd64tPjfwmMOY4wPQB2Xys2AsURtYK8wCPiP1HBOohMsfaXP9a5n1xVNn/FZh1SNKfNwR85Byo9n/mBn6vK9ww2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737975109; c=relaxed/simple;
	bh=mWS+9+694GSsQoByy20+8LEEtkIWdin+mmWpimRNntI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qaEQ57SeCYH8ixRIO6SupOPrIeR2aMnEvt9KSgV8xBjA+7r3tIiwo6cknBgwODjVmjlujnNXPVm+kCKq1+VJcv8m7DLZehDp0EHQzLSqGThxN8o8BEhVCANaEnuwU49r1lBNxaFHOeo4qD9ARZtTlKTPW4MONhIWjvA5c4j7cEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Xdg1V7eu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50R2h8WG007605
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 10:51:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5TAo3NLH3Ad8L2mbH6/7KB9BjVRiKtULeosoRVXBiIE=; b=Xdg1V7eu3kjoDsZ2
	v8jTYEEVt/L1SFFHuWUTtLm+s+zSgCMCaoqjzUs3xsh5y/39fK7ph7BPFC1y/br5
	IKf904vgSs7WtG4HZPvf1F1n+yL/r17jYNfFCU53mZ+wt9umSpPxsB5ofWsIVoxN
	/nzm9Zzb4qprA5Iy/cbAIJky/sioCdBlIKB7p5Q4v/konZ+hzbQunUa/uTi9DB9/
	q8tuVzkZWJbFHqpGW/RqJ49pzuXoKNbFfPl22vdWPm3bg59HiK6iJd0czKG3l2IX
	M51MGi0Q9P2yx4In3OfrY8pNg4gggTZtyRk0ORLZFlhIHWpJHa80x4BPqv6X7AzG
	pCdz6w==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44dsav1bk8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 10:51:47 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4679d6f9587so6563391cf.1
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 02:51:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737975106; x=1738579906;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5TAo3NLH3Ad8L2mbH6/7KB9BjVRiKtULeosoRVXBiIE=;
        b=G66YyJ99p6URSQaY0N5oZZk7cKxobW/t00surTrQZyXUJy8aZaukaeY169qIqeGuuU
         fGOcJsu9EllUutT7AgjpWdgULM8XTEtS9wmF7CsYnH5yWsFixhCikSrRp8XwAPRyYrjg
         /HK6s8VsruTFIhWDxxCfwNTykVVj4lPYwQzDV1OFdnIMuzSoDzMPfB+lF6pqKOFQOFTG
         f2/MnOHdF4slVeLjb2D59Z0KcwQH2uXUYat3Z2WD5+1OPfSVXIbTCJ5QmoUxUdnNjBAl
         83QT+ZM1pWxvM2Jlu8axhp0SnUwlUp0LMEWuDw8UWVsXqE0Jnzpig6zOF8XSzsmjKcoF
         p9Iw==
X-Gm-Message-State: AOJu0YwhNBhDzqY1fC8B7rSIUM4+zPzf4BzC83Mpg69AM4gsmvcp+tVO
	D7dufOYaZWPbBG9HZmA8zP4raVkx7iZqX7+3jOEF3Nfk6aX4EPU97fP1Ddsq4OpygY01IqgfY4X
	8tv92pStZFmDbrGxOG9kaSX3TBBEeOqVdbV7TEep/rm6bcgn0xdWcf4eIdahe
X-Gm-Gg: ASbGncvQnPVZCVsrF5rwkkS03Uo57X+lr2XNXwiOuuMgMxpUJnAqe7JoURN0ZFdR65u
	auwxYG4JvI/sg2PM43gTV98LL/mFy5CwiwSywdC9i2X0+n2woKMkV99x90TsDNfkwjsgtAzOyUp
	kKGRnOISV7Rbveku10pkqK6x9Qzja2cZzSEXV4KRK2rcppkND8FFKOtPAdFEMhCbIWmz7dv4cXR
	NmuqSyppZHhI6Jze+Wjy5sHpqY3dE+WpXLrbD6nkANyOIEhlitRdnSmIADvZXvh47kmJs9k5ZOt
	b/BcE5maAPTlkS8WQCR09hq5iJBOus9iUfKNUuhN7efBfvWAXx4xZsQyhgE=
X-Received: by 2002:a05:620a:2710:b0:7b6:c6f8:1d28 with SMTP id af79cd13be357-7be8b1ce456mr1339610085a.0.1737975106233;
        Mon, 27 Jan 2025 02:51:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGmipgG8GM4vQcl4ErqneekUMA+TqdfGQ/TRnU6ORUmcoAw+5fZFYtsSEdXIZ+Fkyyih/giyA==
X-Received: by 2002:a05:620a:2710:b0:7b6:c6f8:1d28 with SMTP id af79cd13be357-7be8b1ce456mr1339608585a.0.1737975105928;
        Mon, 27 Jan 2025 02:51:45 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab6760ab31dsm558813966b.89.2025.01.27.02.51.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jan 2025 02:51:45 -0800 (PST)
Message-ID: <89351850-b7ec-40b8-ba6e-a69e682f245d@oss.qualcomm.com>
Date: Mon, 27 Jan 2025 11:51:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND v5 3/3] arm64: dts: qcom: gaokun3: Add Embedded
 Controller node
To: Pengyu Luo <mitltlatltl@gmail.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Hans de Goede <hdegoede@redhat.com>,
        =?UTF-8?Q?Ilpo_J=C3=83=C2=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, platform-driver-x86@vger.kernel.org,
        linux-hwmon@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20250120164701.7918-1-mitltlatltl@gmail.com>
 <20250120164701.7918-4-mitltlatltl@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250120164701.7918-4-mitltlatltl@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: lrw8wGYPoGQcez0dPuDbdSOtfNSQjK26
X-Proofpoint-ORIG-GUID: lrw8wGYPoGQcez0dPuDbdSOtfNSQjK26
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-27_04,2025-01-27_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 impostorscore=0
 priorityscore=1501 bulkscore=0 phishscore=0 clxscore=1015 mlxscore=0
 lowpriorityscore=0 suspectscore=0 malwarescore=0 spamscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501270087

On 20.01.2025 5:47 PM, Pengyu Luo wrote:
> The Embedded Controller in the Huawei Matebook E Go is accessible on &i2c15
> and provides battery and adapter status, port orientation status, as well
> as HPD event notifications for two USB Type-C port, etc.
> 
> Add the EC to the device tree and describe the relationship among
> the type-c connectors, role switches, orientation switches and the QMP
> combo PHY.
> 
> Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

