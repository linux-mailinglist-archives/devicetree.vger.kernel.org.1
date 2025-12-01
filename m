Return-Path: <devicetree+bounces-243331-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 40EA2C96D84
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 12:14:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EDB853A289D
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 11:13:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3910306B3B;
	Mon,  1 Dec 2025 11:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AqfLVYgV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="c2Kho0mA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D694306B24
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 11:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764587635; cv=none; b=pluW72P9osquvdd3Rpef9Abm0xIyY/IR+TL3Y25KxebJbiByp6KQ8oqZDXQVfBP7mJBCgWSWEjRcKUcsgXAZtn4l1Ba0RIfj2vEH34dd3pOyhvqgKF3Q/EG1SW6ZCB2i83aYSaepK74SxkonmXbsATa9MTWqH4zIYN+axPIcFhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764587635; c=relaxed/simple;
	bh=AMfPjmEM9c+LTOIgmySZa1BtZ2ViPzn5ACZ2iqVB6VM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WPWXiizGpBxwP5ogvd5LmZ8I+bZQ5Qg8Bnuvo8zfnE/TWkxkR8p+PybNMND1sxe95SQH4U/GMAwgQHegQZgnV60FwAWoynD5hd4vsP3e1n6/IkG2ABKUZUmAUqVQd1W/h+K1bX+rMt7WHgXYe9ayYc33Q0wpG9/mm1bs5gRCmpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AqfLVYgV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=c2Kho0mA; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B18OWGF4062387
	for <devicetree@vger.kernel.org>; Mon, 1 Dec 2025 11:13:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bzhSoqwHUWpcDroYtGd80qvArFZ6RjR/U0aJ4Jcx93U=; b=AqfLVYgVegh6nq6p
	8mD1thkGuK8qydG0G1hi74ec4vO4/hTZjizVY52UBwG5cXcJG0l+m8x3jL3mqUjI
	DL0rJXkBzobWUs7I+M4rPCYp7kef19frsTuUDPITGGQGBjqDxdkZ4wyphZdcMdKO
	rAMC+TBsxZ3eXdSr6JDZNVuZHJALrSSEUQefZ1/4pMtN4OHObCIbOzFbV9lFwJig
	J3/xQKU8vWDVo0Bey9TrGOyMnW9JCe34zdsw3hxZm8Kxp3xoysLgvuAFNgRN4T8j
	sPhsaX3Ec/gdV9b2Esv1aRFZ6qZcogynJmVRnt0ek0R5tRkaGu49DeKR8CqtQnW5
	vdVbeQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4as7fwrgw6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 11:13:53 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ed83a05863so15808851cf.2
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 03:13:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764587632; x=1765192432; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bzhSoqwHUWpcDroYtGd80qvArFZ6RjR/U0aJ4Jcx93U=;
        b=c2Kho0mAnx/64AR8oiaKYMR7tFjdrPk0W0Eb2/BgncewiaftVQ93fEPTwaNBfj0OKe
         dkzO3Xp8pTBZ1VyOjOeUng7coBMWgmaRHpQP6uglnVYmZ/0bUkuNT9zLE134vRJGNdu2
         7hAcJDy2Dub0rY/by04k+oEDhRAHA2qxOGuHFYWG1tFJuBt+K9R7PS2qW6bGC2v/u5m3
         SpCtdh3E8kZufb3SgEBC2YuGlCdH3XhAlLNYIrVqsoTCOM+846QwMDy82fr6S2pz0Wjz
         sPbzqFnlBFJ2z0yAPomk25LSwqsd0J6BcYVwTSX1Bw8/Bz0Nq1D7qhst0WAVbDaT/KMA
         e4+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764587632; x=1765192432;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bzhSoqwHUWpcDroYtGd80qvArFZ6RjR/U0aJ4Jcx93U=;
        b=uRH8YV39W8j+N28TNpYXHl4HUqAmAtpBwBe97dpbmiOAczYk+2B83nSwbreoMRaojA
         bWFY5gXzytX1OA7kChvjels2sLW0S1EBTdQsOsPKqdyu1/7hyAfVKsRZeTY5LkyvKHHo
         whCC2jZkb4+ekXG3gHJsEXeuFLzBE0gEXO6C1lqzoU8tbiAMLuIN72Dyu3HQ7Y/8TXzh
         tHGepENAV+mSub0bKHkwNCh/12adIcjZDNlMzQcamFj+p/Ehi2OWAa8aS9ULH/qaFblR
         Fmq3XLwxKYuRiAMCZ0p8DT7wHvaprVt0NYp70VvLiKEfNoQ/xykCiOTUtEAqtxjmVf5R
         quPw==
X-Forwarded-Encrypted: i=1; AJvYcCUKsjcSWZ6yZYWwO6Uaqi5MUTYlVMTRUShzETJMVjAgZDE8kRZXRTkFUKNUxwDV6xGfCy0PsEc03Ydd@vger.kernel.org
X-Gm-Message-State: AOJu0YzLsmadvqlPg1sU7SMUuaIW8KdfSD4lkmPLaub4TdibCdif8NVW
	L4Rr+SrEZ5K27QmVXei566B/LwRsp0yj3Z6rgkEHP/p7CHYLlqdxMZRVVG2GHCF/uPKg3H/0xpm
	qeIvN5TbY1dafvJxxi2XbbAw5I/w1oWB/TCkwJaoopHh3B+l/jD90mvVh3RMdjHfhYQ/s/FNG
X-Gm-Gg: ASbGncsiBpNxz6ywOV1G/oyxuh8Da3GPtTzW+nA3kTHlLHnm1hhWI1lL2EMGX6cj3pO
	JwjQvszzT1Ag+QT/41u+nye5z8A0/WX9UkzQE/cTSSpi3L3HGniJQ+1czZhCRDmDAoG1pO8RPWg
	aQ7Er2dbDJBdjrYbveFTDY3fyDbhfC8ueI1xfAYNqmhS++Oi6tVOYciT/aKz3PtgZgmVoLyy6y8
	YrejZNdISX699B+7PTj/l1ZKH0VbMuqtxKUwseGS3kEKZFbC2UVlZk4GFEVK5lEyb2GGsV5bjmd
	5tV2OnBv7pbZhMCqPquopTVrDXzxcreOLXFwXuivMRmYbG8YoBN204xxCkgIQPKro+F8gtu9LXp
	Q6eY9Ma72v4XKQILkNnpxyXwnHlfHz5dhCa8QGBKY+kMatZPPdJm/eu0L1M0iP1qh9Lo=
X-Received: by 2002:ac8:7d0a:0:b0:4ee:87e:dedf with SMTP id d75a77b69052e-4ee5892610bmr395259771cf.8.1764587632584;
        Mon, 01 Dec 2025 03:13:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHXCa5OQhC6mrFXDfpgsHMTvLzSwTJ0reT82Tm5ST7WP0CXQ2UtnA9siHZRFmqSaU+ebrfhJw==
X-Received: by 2002:ac8:7d0a:0:b0:4ee:87e:dedf with SMTP id d75a77b69052e-4ee5892610bmr395259361cf.8.1764587632128;
        Mon, 01 Dec 2025 03:13:52 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64751035d4csm11986116a12.21.2025.12.01.03.13.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Dec 2025 03:13:51 -0800 (PST)
Message-ID: <c80db42f-518f-4682-8e43-3fa56fe569f6@oss.qualcomm.com>
Date: Mon, 1 Dec 2025 12:13:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: oneplus-enchilada: Specify i2c4 clock
 frequency
To: david@ixit.cz, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251130-enchilada-i2c-freq-v1-1-2932480a0261@ixit.cz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251130-enchilada-i2c-freq-v1-1-2932480a0261@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAxMDA5MCBTYWx0ZWRfX8MJxvdW+qbX8
 OkyC/4biH0la9+Zzsj+SyRu8iwnIo/hBzLO51ZhmYew5F91z1CQWZb3SgM5a0r659r8TL99YqA1
 2CGwgHcgCVNQ2dv8rEE5m8dwuhd3tP4yGbEzuWt48fh/yVss7FxFSt0NRFZVNI7upPB/eZAg7t6
 g76+zKBzmFAZjlrzQfIEhPqzixVnnXEcXvmP0s6w9nvpoH5dDOXd9B2fvq84o+M5tYzycpRvNgu
 izDBFOksxB64cYTA/Frl3Bs/jKr+FoHBva885FC5fIBjCQvhbEQ8eCSXIVQpZrpMSWqi8+pXYoi
 olZXx0+x2A1597qB0JfTbdK8tmbdGNfqK8SRyIEwrN7t24GSI0n7oUcKLztw+U38JmXRyLf+fgr
 psINsAezq5kmpuOWo/nq/0WWHnxbcQ==
X-Authority-Analysis: v=2.4 cv=TbabdBQh c=1 sm=1 tr=0 ts=692d7871 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=NEAV23lmAAAA:8 a=aJ-x5TLSXszB8K4iyzMA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: LB-6aIvQkHw81Ren-8ogOhsgGJ1RbpYL
X-Proofpoint-GUID: LB-6aIvQkHw81Ren-8ogOhsgGJ1RbpYL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_08,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 lowpriorityscore=0 suspectscore=0 adultscore=0
 bulkscore=0 priorityscore=1501 impostorscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512010090

On 11/30/25 12:22 AM, David Heidelberg via B4 Relay wrote:
> From: David Heidelberg <david@ixit.cz>
> 
> Per the binding, omitting the clock frequency from a Geni I2C controller
> node defaults the bus to 100 kHz. But at least in Linux, a friendly info
> print highlights the lack of explicitly defined frequency in the
> DeviceTree.
> 
> Specify the frequency, to give it an explicit value, and to silence the
> log print in Linux.
> 
> Downstream doesn't define any frequency, thus also using 100 kHz.

Could you e.g. run debugcc to check out the frequency of the related
clock to make sure?

https://github.com/linux-msm/debugcc

Konrad


