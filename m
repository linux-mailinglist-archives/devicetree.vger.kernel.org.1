Return-Path: <devicetree+bounces-133547-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 717979FAE24
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 13:09:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C204A1882310
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 12:09:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 841241A8F90;
	Mon, 23 Dec 2024 12:09:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RCZPUfWm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA229192B60
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 12:09:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734955784; cv=none; b=DfXLSOxxiEnUUq4+J0azmEALG1d8lS6hH/M5w1HfQTOyDXPAhMKecRl6ruC/pR/dfdJK/pWqEXXTCO1l0XwzkOX8exh+fo9IudrycWj9ES49zGqsVy6sa2DT3dKprTwmA+xRPgGpCacHXPMmpU0mN0QEHIAhprSAPdJi5j5cnRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734955784; c=relaxed/simple;
	bh=tcmvcK8tgvefKsps6FzdnOdxtsWbEvB3UCIW57E+5zs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ifArB49aipQuGbfKDLbCoPF8oLhj5l3rrpd9/Mwgs0Vx+RouovO5rQsi4qV67vuiaS54waKsBV+H6HtvJ8st5UzyZbnvrqP2UXp7nguFsGZuqHnYBhI59AVDv8YTp959KN6FBEXHX3g80ZarSExocuY3ZxxBsy2EcfYj/N3NItY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RCZPUfWm; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BN9mWGc030705
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 12:09:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	r929DbCHRihEB+OW5i57mR0uTG1mxigmUV2XT8SL+W8=; b=RCZPUfWmhnlBQQef
	IA7D0cUVFyHqdOM4eDS/ZdFikBqfe0Bea8qAnrSVzscy2C2MHFrL7zx8CW43tSCR
	qfhZBl+GIBZNfTXpFF7rv3vpQ5LrA4WYjr1zIo1JaGHfr0TAUNsAF6Nw1D8JkG/0
	nE/hAiC5wNO6P3dvJXfH8wkAzGNiULR0A1MwkZSwnNJup8rwTxcE6UY/IBZPRb9u
	CtdoRYrLWjFjkbst6JwT2Mc+rt+i6Ah0JmJJF86nWtA3g09LY8V/vIfnoN3PPba8
	gUGX94f/YGycL6A9AOawLSCsJ6GgQE9cvF8EkoO1aK6WaPNxC5mWfxklM2oiuMK2
	PNuhAg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43q5jb88wr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 12:09:41 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6d904ac0ea2so7497806d6.2
        for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 04:09:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734955780; x=1735560580;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=r929DbCHRihEB+OW5i57mR0uTG1mxigmUV2XT8SL+W8=;
        b=uFaA/FAEe+LywYaOtdMGhDIJN8cZ2XwpDsJRaPr4A1UlVgpMt62EjKHz0Efmg6JxzW
         w5Q49h/mZqTawNsCB1LCWZF8SPbcVWLgjAhQi5gRD2t6pz65QdDYt2X3FRMk9/LJnBhc
         ZbsURAtSJwzq89fOY6qWSZq+VQPQ/rMYjXb2/S6YfTpygGL2FyJG3TGHpCRM9MzDQt6T
         1Kr8PADJZkLjx0KPdUEm4cczmwK+Ei8cnGOysgeKCSqGkCpg0vuFq4QX9O1pK3N7kWek
         ThyZCkvGbUi1t54qZaLORV6kBqe+B/rtzjmobSMqea+YuM+W7BbR7XwT2ZBKy1V/SDB2
         cahg==
X-Forwarded-Encrypted: i=1; AJvYcCUV4VpMbeVtYHXvxmviP/bZztMkCB5XCCnv5NyCW7CfSJNbrP3t9PNTlQnRuOBjjtJBjBQRCAiE/r1t@vger.kernel.org
X-Gm-Message-State: AOJu0YxMa40OepA+wGk1K5fajGdkaCg0e0FRho2hqS71YFfgo7aH35LF
	qBYW0d5TKWnDAPjQJvHvnIIdZTGR9TXVdFFIOSqaet/IPCPxAgJJAmTDJUFkI2as5rsbfPm13ZE
	jq/H1MXmSErA5RnDrKrT26TLXwXfWZ05t21wYQRRX4QtWSYKuulh1kePLdFK2
X-Gm-Gg: ASbGncsJH9U42b2QtTJtkUhkL0HnqZTQ7PHowsMJMa5E6Q+Lt3oFmTXdI4UaOwlr8wv
	wIMpYZrz5uttMJIbhY2AFzQBbWlzpD2mCRzRjsUg9agkQ314dTzDgYfJg5xLUo4H6xPXuymgl2R
	qI4GL/2tJpQjdEGe9Fgnb8TnWm/lnPezgotu1wecb0+4I7jBwTaWxvCKUGb9kZypATjMnWoByFO
	XctJyiyZZmQNnP3HYA01trCHY1ZDwb7yue3rpWiFC4mYWfOSjm9DZV4wBWpdePQpKx+HPwBUBrw
	R3mGi2yT7Xa0QLo6pdNw0l6o7YXq0lUSZrk=
X-Received: by 2002:a05:620a:4108:b0:7b6:c3ad:6cc5 with SMTP id af79cd13be357-7b9ba7be550mr718506085a.8.1734955779919;
        Mon, 23 Dec 2024 04:09:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFhGMuPXNgl8KWNVqUOywwV6OUHhYbRzVm+R6ExhUqI+M0K+BDgx9nh/gjBxYSkaWBokx9iEQ==
X-Received: by 2002:a05:620a:4108:b0:7b6:c3ad:6cc5 with SMTP id af79cd13be357-7b9ba7be550mr718503585a.8.1734955779526;
        Mon, 23 Dec 2024 04:09:39 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e895366sm506493266b.73.2024.12.23.04.09.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Dec 2024 04:09:39 -0800 (PST)
Message-ID: <11a47f97-b1f3-4401-950e-5fbf6c5e1c50@oss.qualcomm.com>
Date: Mon, 23 Dec 2024 13:09:37 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 4/5] arm64: dts: qcom: sdm670: add camcc
To: Richard Acayan <mailingradian@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-media@vger.kernel.org
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
References: <20241218231729.270137-7-mailingradian@gmail.com>
 <20241218231729.270137-11-mailingradian@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241218231729.270137-11-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: Dkjd3acris72adLtTCR3OpJhZEd_qTJM
X-Proofpoint-ORIG-GUID: Dkjd3acris72adLtTCR3OpJhZEd_qTJM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=723
 priorityscore=1501 mlxscore=0 clxscore=1015 lowpriorityscore=0
 phishscore=0 malwarescore=0 spamscore=0 bulkscore=0 suspectscore=0
 impostorscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2412230108

On 19.12.2024 12:17 AM, Richard Acayan wrote:
> The camera clock controller on SDM670 controls the clocks that drive the
> camera subsystem. The clocks are the same as on SDM845. Add the camera
> clock controller for SDM670.
> 
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

