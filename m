Return-Path: <devicetree+bounces-241940-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A097C848EE
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 11:48:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A4AE43A6C5F
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 10:48:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 216E430499B;
	Tue, 25 Nov 2025 10:48:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XV8jDWAa";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LB5HQHYB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8698426E702
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 10:48:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764067712; cv=none; b=LFSq4wNIs9nYWTUqEQLX204as5WMU6N7hSU/9DD9PE/m3fKdnKX7sieb/NnttnQ4uQ6kZ9zaTEnzAYuPlhIbDOyIkjNoFwZXSb2xOakqJVJRQsJfDm7AsF8WyfWaFAdh1ffia6JtjP/ImAHOPgCJlCFzB1WFTAO4i3eq8qz6XX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764067712; c=relaxed/simple;
	bh=KBwisWxu5b1xQLx7ZTjJzZZ+rFMgEvm6wryyl8IfwbQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uOsJq8PyMk0AeIgtpAX4SWY1F5vpTTm21PmbZ59raxiBnwT+bz9I9lmOY2/LRW58wbUX+veX8bkRZQF/CmgLKBfguuVpQHPpSAcxCInh67bMpN+v7EmTTDocvErnDWwjrm9l3xfZIaLocxxo15sINoeX3oUClOPhaOM/zF0LKz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XV8jDWAa; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LB5HQHYB; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AP9jqI81939548
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 10:48:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KBwisWxu5b1xQLx7ZTjJzZZ+rFMgEvm6wryyl8IfwbQ=; b=XV8jDWAaOKe+0aB+
	rrOAY+9Hzv4XTL944flIn79oyg02UFHhs180T0NFxUtv9t/SRO86jbhFE1TBWYkH
	bvMpXYsSbgJ1ce+Z7Av/0xGU+LZbXiNkLNGGKy+OW8f1bYmVDkkRSMk7AbR8Nfn9
	JaotmYRxNdlrVXQvv+OhrQKuNmxuusgYFKjKH+Kqu0PhMQ+yInF1jWbK1fZ50Xkh
	R4u1Bz3/9OW+iJMULxKghOG8JC+Ib5dr6v8xN+Ywwo1veox3r69k35fUZZPS2T0E
	Ipno2jHQ+4PAqTI/sLkKCr2jSSvLaoXyMXnws1xVVFH/HwLvdmXqMfgrwHxBpSFM
	yuqDRw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4amsst3453-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 10:48:29 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ed5ff5e770so12468001cf.3
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 02:48:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764067709; x=1764672509; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KBwisWxu5b1xQLx7ZTjJzZZ+rFMgEvm6wryyl8IfwbQ=;
        b=LB5HQHYBzadlukK6xLqidTiTrS5lfQwL5lhyXFSvtIRrBc8ca0fFH9gAorAmds5Qba
         KHP7faiTeLziAujztZvE6qkgozf0EOMYEWvaGjoE/yQ5wTCn2bPil5nhqsvP7mP2+WYy
         EtIR9Wbc0i0EUfWFXwODHpXg0MCth7h8XEOfLxX3ugMHy84bDemfl4p9AEamq8t7hJIS
         bfv4vsKiW1KAyK1VsZ5AFub2CRIOEYSQHF+Q/f9yAeZU62UYTHAN3leu7CuNTiDepOgn
         Uc16LrQfkUPNQUc9+pIh+HrWnM0W2NL0vUICld8eB4mZHFp6tk3FIBcGOJ9UOev6gZPS
         OgEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764067709; x=1764672509;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KBwisWxu5b1xQLx7ZTjJzZZ+rFMgEvm6wryyl8IfwbQ=;
        b=wEED4h1sifENT+QyC5VLLRvQKKrvUBVre/+WG3Uk18fg+FrAcgexYVktJ3vlScR2UK
         wWarc0zIFO0NmbTcvGx9rExlKw83wqHlXGGtcIey57tQFb9IA2INTfXC8oB1uBkWsAYb
         uNX4i2c5JGShtMAqejQq4PUxGblDMnwo//XD3czq74zXPsFMNnJ/gOH8dRqDnNlP3Lmq
         0ME6RZsZySLiDEd5VB+Ok94OBKM9aZdUc8/zbtMQdXKFPmaiC6RZYeBLAsaEIKWIuQoV
         pvvCxSImTddWQEyrJW6bDJn9jUWuX705drNip8pBZPYtYqqIV3pTaqEeTC+iS1nfJu1J
         5Vsw==
X-Forwarded-Encrypted: i=1; AJvYcCU2eV+bAv3MkET5pR5HwFDxMX6ZhtbJTXKyh7hbdwYAKPFyy+gLSkzhZNfOGeoy3m+CSSBeXlV/EP/M@vger.kernel.org
X-Gm-Message-State: AOJu0YyMqPTHnRrXVX5fTG6Epn+pXO6QPS17vX7UxWcXKilhzm/KWlSf
	0lSy3GuWsMEC2rcA5R4k06w08tJVA2ITpIdNJcOfDZFTL8bi+K01ZbPn4N2B+AKqRPgVAo8sn0O
	QqbktLhXm+Yo4Rbaa8rzWXYCPk1JYPzYxd2NH8bzSpw4hCCDCAuGTVZgOQyzUOh0t
X-Gm-Gg: ASbGncvDfJYiGu0Wrc1tS4ROkYKLBjcDk3+LQjgR1rSfBnUHn1N0fvalw4cFOlqQtt0
	khzCEXH0ocSxJSJGjXv2eobqu3YQz/XIg9jhX9nOrQ0UcrPKrB/GpUwUTswvAR+Mgpw7Pm3e2dA
	uvD+02INVDhdSH/7xGamgZqH/ORa1bY/TU4slToCuW6Zn3PLy/WEqLBLszsGPHbzYItdKY8X2Mt
	FVaiU4tfu44SO0YX7DXQ0KeTcZrraTsfDoPnec9ARG6U4VLLlrQthRpJXciRcz1+K8TPnyKAisW
	fxf2VhX8aDVDHHzQCEYC4+trVyHaVO9RU337Dh4DMr9eaGj1fklnwKVFuBE8+C3vUIU6fTq1wlx
	hm0LbHDk6nvT5zTTOO1Dvuw5GJbW+ZawPBAVvChC5TNAlwzyhyDiRDztTsWINldK/eMM=
X-Received: by 2002:ac8:5882:0:b0:4ee:4214:3226 with SMTP id d75a77b69052e-4ee5890a538mr152147051cf.6.1764067708882;
        Tue, 25 Nov 2025 02:48:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEaE/2xDivjUROHs/vng/L0w1vcKavA7ZW8H2vqW37Q2JJwt0CCgOierfE91mDUQCOyGo5R/w==
X-Received: by 2002:ac8:5882:0:b0:4ee:4214:3226 with SMTP id d75a77b69052e-4ee5890a538mr152146831cf.6.1764067708493;
        Tue, 25 Nov 2025 02:48:28 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7654ff4096sm1578837166b.49.2025.11.25.02.48.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Nov 2025 02:48:27 -0800 (PST)
Message-ID: <1465f4d2-efe1-44f7-a4f9-ef4a7c271b2c@oss.qualcomm.com>
Date: Tue, 25 Nov 2025 11:48:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/6] ARM: dts: qcom: msm8960: expressatt: Add more
 peripherals
To: guptarud@gmail.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Jonathan Cameron <jic23@kernel.org>,
        David Lechner <dlechner@baylibre.com>,
        =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>,
        Andy Shevchenko <andy@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org
References: <20251124-expressatt_nfc_accel_magn_light-v4-0-9c5686ad67e2@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251124-expressatt_nfc_accel_magn_light-v4-0-9c5686ad67e2@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=bM0b4f+Z c=1 sm=1 tr=0 ts=6925897d cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=RgDOqd9ecMa8Qgy2nsYA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: k7Rbr7FKphgVNMuLzOjbLVqY6CjIOGb7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI1MDA4OCBTYWx0ZWRfXxPKFoykXT3R5
 MaaQ3MB6JHpSNZDw6Ml00kbfUbUqGASfyuk8qLyuEfoLoAoV9bwqGeX6E7VZWkqUWws6mNayzeF
 PHEFCtEorP17vh8ONwoCJky7t5m2JumlbmbfInbCKgYzSI9kcPkFK/Z2xbMjbDGaXetzppURQSo
 UBqKSsuU+UGbQoqXVoeg6/laBEnOd2xxgKAPdvimxAGif17D87856HLwEo80NUqFvPsxDUA6kEP
 gi6fR8uWdbidFDbCbCTgJ8NaGbJuetjWstxznJfo6YTSgrTi3f/+WP5VDMD6PXnsHs6ILXFkci0
 YfGaNqkiYT8ZsmIbLLJEEP6EU8lRzQPhclqxabsRxJ5u8perTEpqAihI9aequKSThcl7u5NCYje
 MHkqzpiKj7Y7ZjdTSNuyoeXRlZfryw==
X-Proofpoint-ORIG-GUID: k7Rbr7FKphgVNMuLzOjbLVqY6CjIOGb7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-24_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0 impostorscore=0
 bulkscore=0 priorityscore=1501 phishscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511250088

On 11/25/25 12:35 AM, Rudraksha Gupta via B4 Relay wrote:
> Intro:

[...]

> Changes in v4:
> - corrected accelerometer's mount matrix
> - fix a nullptr issue in the accelerometer's driver code

The patches are now:

1 dt
2 dt
3 dt
4 dt
5 iio (different tree/maintainer)
6 dt

Which makes it non-obvious how to merge them, especially given 5 seems
like a pre-requisite for 6 if you don't like nullptrs

If that's the case (although I would like to think 5 isn't really
necessary because board designers generally don't randomly omit
connecting interrupt pins), it would be best if you first sent 1-4 and
then 5-6 as a follow-up in a new series.

For now, let's try to settle whether you really need 5

Konrad

