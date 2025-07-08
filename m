Return-Path: <devicetree+bounces-194075-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E2385AFC998
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 13:30:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AE620425E8F
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 11:30:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9441C2D8397;
	Tue,  8 Jul 2025 11:30:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZGHS+AXF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAE401F8725
	for <devicetree@vger.kernel.org>; Tue,  8 Jul 2025 11:30:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751974224; cv=none; b=mKIg4DDu9vRuhkBpIdNZSoa9bQrfLrewhbBqFU+kOt0eyoZmS5p6WUrOCC6tDBGBPoda6fXpFvzWP7NCpBV5WW2k6yxx7VyZFMDKkXhLZM2H+nHZZPlLA459BkEZQhWuMwIawYZcSHhcMuni+TU4rj8+0ZS5ISbU16vqUn/V8mU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751974224; c=relaxed/simple;
	bh=klGJi5IRMEy+zJ/wOTbkEcbW04rsRXiKayvKLjZ5JwQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=twy5YGzoaOCAFEUoKVQWZfCcb8DsbCGP9XJzI9/OLnT4D/LFDV1Q/aNHReNN/dH1jnowtIQ64Mfpacv4rObaDdg0V4oC88ysiCtltfd0Bt7MUsMipv2ayBnnDZ1YCo3GIZFQzX/PsSzoukoBD/BINJW/OXu5Qia46gfPGEnokwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZGHS+AXF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 568AAaQg032658
	for <devicetree@vger.kernel.org>; Tue, 8 Jul 2025 11:30:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gtrnTCa72vdba6TcO72tSZeB/6DLMVbveL6Baz70m+4=; b=ZGHS+AXFU5y2JRxX
	vWjW1aWgVvntUtRgBBOMutrFJO4ENV2inHm147PVqUIvp3FmU4evvEyw/L9TmXSM
	Vngx9fdfYtGAY0/PfH5vCF3x1yrEjYWbuKBzvbdMRN8BuwzkVM1xnoQo+IVyCQp5
	/TaYB5NIYbsa0KdHAcARvWO150opKHmTg/pW0Fihu/WCbbvE8w2Bw47Ugjim8Za1
	d7Dn5D2lMOCSPFNTP1XPZK+4G5yyArqU2RUjEkVA1tWqwqY0Y2Yy0GkukAX+iyW6
	pFF+KTabdUGk7aGr7X+Ve7sLSGZZPeC6t4YRT9PM0yQiXbkijJrkD50k/mqohZWW
	w0iZYQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47rfq2y6bb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 11:30:20 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6facbe71504so18657766d6.2
        for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 04:30:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751974220; x=1752579020;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gtrnTCa72vdba6TcO72tSZeB/6DLMVbveL6Baz70m+4=;
        b=NUkCBPGnJzemDRjjG99tWQ3RoMa8PQEzN3gNp2Bo6jQBk26orQYvzJwh8OjQQwo3qa
         Knqy4DSw/E3fXYUBxxTfW3tBa990WFIOTJwJ/6eG3CMZauYxlBlJ9NgXpa85cPCAe9vn
         3AAaNxC6Y7CAWjSLKTU6V7jebU+fJAcmC9V/T/ejkRKl/DyVDQng+jZSIdXI4+VVqgPQ
         L38ah/D29QVKwscei6Ueci8qBhu55yP3G0AN0Ym2Qp8H9MtRkT7NfGt8G18Dbp7e8CkQ
         X17FWriMFW3mgA83GDZgp5KJPQ/Y+i+rH5Rv7se7ke1TCwK2tMkXB9k4iZvOt4QUv9Pr
         AItw==
X-Forwarded-Encrypted: i=1; AJvYcCUXclN1gXWnghM5BuBW2N1G92SumulJLUdRi+6l1Sl/HHLUwkLoiXs8EfvLjZFD3sbcdpI+FEz60nB7@vger.kernel.org
X-Gm-Message-State: AOJu0Ywth4HrAg8HxhTA6xt6MtKTW9bKwcedJw0xTUkrjHe4Hi1bSb1Y
	o9SbNEey3zfu+R/kv5jBYBwOZG/W3ly4I1+7iXiDjklNz1/WS4GfUc+xPc+HX0iT0Q2K4p+e/rg
	qQhQETaGIm1/x+A2lyEUuWOsyncjeXCT/xhoTi33KUolWpADCOPKP+Vals3j23gJI
X-Gm-Gg: ASbGncsq7jlLX8pSS2/gKfqIu87TXJ5wlJuCmj4ujRYCH1/qZ88mEjVE26y4Zmkqo6z
	jP18L3rpLF8NxdChRjHDorRzR0K8BDNI1uukYAIDc6QVOWDLuWMH2MMZj/ejIC2toy1q6l6cVhs
	NnLsHYqWRhKNAmRzZQoNXu2KkTLMEGlh6RMqm4s4lok4yewIl0e5CQof4wXbfe9wik66caWF9RY
	XqEroy3aiiZOE1MQpKQh6cVWhvSGsxD6D95m+pwwjT3pZSgSl0zZNFkVfGnTCOYV7JoO+omJ9Xe
	bX4ROawWmA0YH3DuzcQ0QY/A1ncvGZTmYJmW4bTuONQX8w6Rt5FotvEw9nDpU+mUz0gyg1X9ihb
	5s6E=
X-Received: by 2002:a05:622a:4acd:b0:47a:ecd7:6714 with SMTP id d75a77b69052e-4a9975d0949mr94377691cf.9.1751974219835;
        Tue, 08 Jul 2025 04:30:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE1F23966ZtLAdemkWX6cjqDae6AFYWaUPA2/p/PB3EepYmlXUPOU0//eXUxa+wOGcNN/hbKA==
X-Received: by 2002:a05:622a:4acd:b0:47a:ecd7:6714 with SMTP id d75a77b69052e-4a9975d0949mr94377161cf.9.1751974219165;
        Tue, 08 Jul 2025 04:30:19 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f6ac67bbsm884840166b.96.2025.07.08.04.30.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Jul 2025 04:30:18 -0700 (PDT)
Message-ID: <0a09fbc8-8835-4e94-862b-0baaea5ee251@oss.qualcomm.com>
Date: Tue, 8 Jul 2025 13:30:16 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] interconnect: qcom: Add Milos interconnect
 provider driver
To: Luca Weiss <luca.weiss@fairphone.com>, Georgi Djakov <djakov@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250708-sm7635-icc-v2-0-e158dbadb29c@fairphone.com>
 <20250708-sm7635-icc-v2-2-e158dbadb29c@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250708-sm7635-icc-v2-2-e158dbadb29c@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA4MDA5NSBTYWx0ZWRfX0ygH6cn6T0uO
 Na5NxNzJfvo73kDUXu9lacv1mgKTMmK4fCAxIOjYck+sYV1beb1hVTyYwxX85+5PDM1pmyk05p/
 BCRadBbvZ233rQwBQcA6twXASuvb992H3FU0uQIpRW+watUAve2NyQpZFA8oNY7CC5nNJGkqron
 aU3w6SNFLM4C8kgB4oVnU3pJKwf0ETeDPwcYyNQr4CcEgM3Py05barrcWvaJ/S3F+C7zCoVqr1K
 koSyKfKbLWFIdudJo1InSUC9CAPUNK00gGl79iROTL2m/RuqKJJpjLf383J4tkzcD2ri3jtPY5E
 oI2N3w8BzjuVtyglVvFHnok2SpPrJIMBgq8+YBM/hP0NUWkbhH98OBS5jH5GrxbfOoy12UbfsYy
 JXA26zXFejk1tGchazG6fjPiysk8AfJQhbKyPFzmbWgGfbb5LEsekECdC/cEGLekfl3l7tdJ
X-Proofpoint-ORIG-GUID: tL79FGi8ocybp7wcqKzuaqolhy3iDSyN
X-Proofpoint-GUID: tL79FGi8ocybp7wcqKzuaqolhy3iDSyN
X-Authority-Analysis: v=2.4 cv=SOBCVPvH c=1 sm=1 tr=0 ts=686d014c cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=6H0WHjuAAAAA:8 a=0e8QCNbYJG8j8A-s5v0A:9
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-08_03,2025-07-07_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 malwarescore=0 bulkscore=0 priorityscore=1501
 adultscore=0 mlxlogscore=999 spamscore=0 impostorscore=0 phishscore=0
 mlxscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507080095

On 7/8/25 12:20 PM, Luca Weiss wrote:
> Add driver for the Qualcomm interconnect buses found in Milos based
> platforms. The topology consists of several NoCs that are controlled by
> a remote processor that collects the aggregated bandwidth for each
> master-slave pairs.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

[...]

> +static struct qcom_icc_bcm * const aggre1_noc_bcms[] = {
> +};

You can remove the empty bcm arrays and .(num_)bcms assignments
for them

[...]

> +static const struct of_device_id qnoc_of_match[] = {
> +	{ .compatible = "qcom,milos-aggre1-noc", .data = &milos_aggre1_noc},
> +	{ .compatible = "qcom,milos-aggre2-noc", .data = &milos_aggre2_noc},
> +	{ .compatible = "qcom,milos-clk-virt", .data = &milos_clk_virt},
> +	{ .compatible = "qcom,milos-cnoc-cfg", .data = &milos_cnoc_cfg},
> +	{ .compatible = "qcom,milos-cnoc-main", .data = &milos_cnoc_main},
> +	{ .compatible = "qcom,milos-gem-noc", .data = &milos_gem_noc},
> +	{ .compatible = "qcom,milos-lpass-ag-noc", .data = &milos_lpass_ag_noc},
> +	{ .compatible = "qcom,milos-mc-virt", .data = &milos_mc_virt},
> +	{ .compatible = "qcom,milos-mmss-noc", .data = &milos_mmss_noc},
> +	{ .compatible = "qcom,milos-nsp-noc", .data = &milos_nsp_noc},
> +	{ .compatible = "qcom,milos-pcie-anoc", .data = &milos_pcie_anoc},
> +	{ .compatible = "qcom,milos-system-noc", .data = &milos_system_noc},
> +	{ }

a space before '}' would be neat

Konrad

> +};
> +MODULE_DEVICE_TABLE(of, qnoc_of_match);
> +
> +static struct platform_driver qnoc_driver = {
> +	.probe = qcom_icc_rpmh_probe,
> +	.remove = qcom_icc_rpmh_remove,
> +	.driver = {
> +		.name = "qnoc-milos",
> +		.of_match_table = qnoc_of_match,
> +		.sync_state = icc_sync_state,

Are there any issues with sync_state? (hopefully not)

Konrad

