Return-Path: <devicetree+bounces-171077-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E90EA9D286
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 21:59:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2ED037B7D8C
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 19:57:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6768621D594;
	Fri, 25 Apr 2025 19:58:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VarSxdeA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE6451F6694
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 19:58:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745611126; cv=none; b=thXYsLzeyv5ziJvWyZrR0kftXa/LpuZ2xGuNhZBEt439ljLV0bLnAEHlcDyFY/krsgShf+gx7VKLYZfKYKtSL0Cv+EMLbHPaTFJb42o4o7LxdD/tX4Y/Vv25adzo70dxzBcUzyU/E8eQ39hi22S3VlFlQghytBziKwseldNwRAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745611126; c=relaxed/simple;
	bh=oPyH9jOZf7ysBTai60NB2hxPD5A8XrYTTrzsOaiHKBQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=J9Ck/kZsi3FRUlmr3B1FZra1XU2LVWwf6ReOx/H0hmy4rOAixi98KDNB8Kv7ELOWvaJYHcrlx3fmneMywUyk4xfTDZkcCo90zuqAdL1cFcK+2ky+SoIA4V3oO24sD2fmiyJ1zhI8PEJe7pGWZtvdhiKMt1MlNXirACVx/4ec3xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VarSxdeA; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53PGJvem011486
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 19:58:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yNtoPTL9iStSRPUJKcZJpTJAZ89LqGPt1UmcSw0fFnA=; b=VarSxdeA3/EhEQIw
	jeR246EZaDYV1+SI5QQprcRxUOoPJbc3Hc3/2oZ4xL+ZC8QPDuHTNgW9NE+304W5
	2HGA3F0RGdBa7iHP/2X0i7wz/usUxxr2MQ9rwx7PFl4pamFHqpdX6Zq82seQy2q2
	ie5nxyukvs/v0N0hubJ2+l4p1lmiY3zfvIUeA+UntZ8RISrNOmaXRNXt1oEAMLQ4
	vzHH+S3/LCszpRDz0FC75Ql0zNY69KY3QFBlz4UvIEQ0nDj6KB/4MTpRhSLn8dhW
	ofqjwAPrW1t/aLR4PBsWhv0ykGQn6eGxSq6QGq+GfU0RquOOFq8NwQra41zhns2L
	rGrM0A==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh3t3jq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 19:58:42 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c547ab8273so11720985a.3
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 12:58:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745611121; x=1746215921;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yNtoPTL9iStSRPUJKcZJpTJAZ89LqGPt1UmcSw0fFnA=;
        b=uv5JdGZXDii42d/5jrOoi3YmQIodODsErZQ3iOQP70qx78gGxdIsEmPmst04f513TG
         LUo9AZSobhLYU7885VUNkhlD0LrOWL0eYps7UIytA9x9hBOlqTsnQasS1seY26Y2Zrhn
         DxlSi/MEEFgbVm7A1W5NvrYvb11pyvf4SxXSZF5Fi9N3RP4Gl2R8O/Hr/f4W4QD3Y/oU
         OASVXK9WPsuHQCC2MonYjglldpz5gJQTXLy4hkIvHHQQeCJQpJLgW9twzvzAbWrSh9bB
         lSbIkc96pv6lJGi5rraQUkmkKhvw+FMue2LCOmE8YlnjY/QEbuOf99kLZ8IUUTeMN1Z5
         CXUw==
X-Forwarded-Encrypted: i=1; AJvYcCWS05HMsoEhS5jHBiBWDLjFVecsVQ3vSq6HzQOe/w+uq5Zem78giADZQ2/rrRr6QPIojCi1M6gIAaVu@vger.kernel.org
X-Gm-Message-State: AOJu0YzFmtVCJhwFsJ6t9RGTkagFDejLMqu4op3tFQKUobHz7fMe4Az4
	SV6UWu2KVi83/1CnN1t85iUvCWvCsoLVMwfvpjZ/LqD1LAVHrSWoMqz518YqzD+pQw56MKvDVJd
	DDLVecTn5xr4h5ao2WALuDawqX51JoUD0pRRidrVcbX1/DNpQG30Jd1j1AWCS
X-Gm-Gg: ASbGncuVGPgr9M3YbbVgVVvpzD5zfTs6W2hHr0ZsZBDxBz3L/AcIpaQs+j1BlEg7bwq
	3qgKca/8LEjRsxWRwtoodQ4YPj//DdCsUyCCgvNda+e6ZrhBQtZs3ec1cy6E7Qefep8PH6hCFOf
	rWLn+GRPRyTom57pz6K8UWmaJaHdkRBM1xEYkap6NACuFDLXk4R9IpVo+GXnYB75IteWBaLNIE2
	YpDNEMUQRhAj11U1CZD0Uawzz0f13hhkb+1CXl/FWmxdGIUfDNiXGXokj7n+le1at0JHJsdX0re
	NRI8uTsK962MA0IKslQQ/uebeeybNP1FO5115CdXe2sAX4XydsbcdmjRjiLNy9D9kOA=
X-Received: by 2002:a05:620a:25d4:b0:7c7:a574:94e8 with SMTP id af79cd13be357-7c960723dfamr190180185a.9.1745611121653;
        Fri, 25 Apr 2025 12:58:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEs6uTHSx+y7Mx579TQd+STHV6sBZGedNrCyPkLHZ+PRRQmhhsgzyIO4lYzckySewL4JVEITQ==
X-Received: by 2002:a05:620a:25d4:b0:7c7:a574:94e8 with SMTP id af79cd13be357-7c960723dfamr190178485a.9.1745611121304;
        Fri, 25 Apr 2025 12:58:41 -0700 (PDT)
Received: from [192.168.65.156] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6e4e6efcsm183552366b.44.2025.04.25.12.58.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Apr 2025 12:58:40 -0700 (PDT)
Message-ID: <86bc707d-72d7-44f2-b77f-3fa89e25789a@oss.qualcomm.com>
Date: Fri, 25 Apr 2025 21:58:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/5] coresight: Add coresight QMI driver
To: Mao Jinlong <quic_jinlmao@quicinc.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach
 <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250424115854.2328190-1-quic_jinlmao@quicinc.com>
 <20250424115854.2328190-3-quic_jinlmao@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250424115854.2328190-3-quic_jinlmao@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: U7IRyq5BDGgxN53bX6Xn5LKg15VL8Dut
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDE0MiBTYWx0ZWRfXwvS7ydrX2DH9 2gvKyMMNfeeCRGV7V8AilsQz6uk7mvyN90pxa77FSo7KqE2YEqSvDGYDurTt45MEM88d+u1cy5/ T/dFEdIzV1eSekqcS4Rn5GSgOgVjfUaav9fJGUMPCQ24Y8BGV+XP1IdPKvzvWNCwIxACj2n6DKO
 L13kpr6dzWw0rNFYR4lQPWVfMS8tmVkSNJ2AuYNlomUVDGOYZkd90JIwiiSEopgDc7mOqqaOxEo p2w01JJIRvAGQPYl8FiizTS7Cj0HdTYufg4+JJ8WXpwzZ2+5bvSl17eaYRQTAywpepvBGqSte8m YAvA8LYW9KDg2SUVszfUnGdHdLV7tW/SzmN1ommn3hxvaPuTYUiJcNEqi+8iWNBXUvspeVkYMnc
 zM3kEm6QSZWR4fvsL2tCr8WxOqFEALPDFODd4rI0vRFP/0xup1uC84AJXQeI8o+MZBawtKx2
X-Authority-Analysis: v=2.4 cv=ELgG00ZC c=1 sm=1 tr=0 ts=680be972 cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=iMEcykrR2jlrdE440VwA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: U7IRyq5BDGgxN53bX6Xn5LKg15VL8Dut
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_06,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 adultscore=0
 malwarescore=0 clxscore=1015 bulkscore=0 phishscore=0 spamscore=0
 mlxscore=0 lowpriorityscore=0 priorityscore=1501 suspectscore=0
 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250142

On 4/24/25 1:58 PM, Mao Jinlong wrote:
> Coresight QMI driver uses QMI(Qualcomm Messaging Interface) interfaces
> to communicate with remote subsystems. Driver gets the instance id and
> service id from device tree node and init the QMI connections to remote
> subsystems. Send request function is for other coresight drivers to
> communicate with remote subsystems.
> 
> Signed-off-by: Mao Jinlong <quic_jinlmao@quicinc.com>
> ---

[...]

> +static int coresight_qmi_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct device_node *node = pdev->dev.of_node;
> +	struct device_node *child_node;
> +	int ret;
> +
> +	/**

Two starts means kerneldoc, please use one for a normal multiline comment

> +	 * Get the instance id and service id of the QMI service connection
> +	 * from DT node. Creates QMI handle and register new lookup for each

The first sentence is a bit redundant.

In the second, Creates -> Create for imperative mood

[...]

> +static const struct of_device_id coresight_qmi_match[] = {
> +	{.compatible = "qcom,coresight-qmi"},

Nit: please add a space after { and before }

> +	{}
> +};
> +
> +static struct platform_driver coresight_qmi_driver = {
> +	.probe          = coresight_qmi_probe,
> +	.remove         = coresight_qmi_remove,
> +	.driver         = {
> +		.name   = "coresight-qmi",
> +		.of_match_table = coresight_qmi_match,
> +	},
> +};
> +
> +static int __init coresight_qmi_init(void)
> +{
> +	return platform_driver_register(&coresight_qmi_driver);
> +}
> +module_init(coresight_qmi_init);
> +
> +static void __exit coresight_qmi_exit(void)
> +{
> +	platform_driver_unregister(&coresight_qmi_driver);
> +}
> +module_exit(coresight_qmi_exit);

You can drop the __init and __exit funcs and substitute them
with module_platform_driver()

> +
> +MODULE_LICENSE("GPL");
> +MODULE_DESCRIPTION("CoreSight QMI driver");
> diff --git a/drivers/hwtracing/coresight/coresight-qmi.h b/drivers/hwtracing/coresight/coresight-qmi.h
> new file mode 100644
> index 000000000000..1d57e46177b8
> --- /dev/null
> +++ b/drivers/hwtracing/coresight/coresight-qmi.h
> @@ -0,0 +1,107 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (c) 2025 Qualcomm Innovation Center, Inc. All rights reserved.
> + */
> +#ifndef _CORESIGHT_QMI_H
> +#define _CORESIGHT_QMI_H
> +
> +#include <linux/soc/qcom/qmi.h>
> +
> +#define CORESIGHT_QMI_VERSION			(1)
> +
> +#define CORESIGHT_QMI_SET_ETM_REQ_V01		(0x002C)
> +#define CORESIGHT_QMI_SET_ETM_RESP_V01		(0x002C)
> +
> +#define CORESIGHT_QMI_MAX_MSG_LEN (50)
> +
> +#define TIMEOUT_MS				(10000)

Parentheses around constants are unnecesary

> +
> +/* Qmi data for the QMI connection */
> +struct qmi_data {
> +	u32			qmi_id;
> +	u32			service_id;
> +	struct list_head	node;
> +	struct qmi_handle	handle;
> +	bool			service_connected;
> +	struct sockaddr_qrtr	s_addr;
> +};
> +
> +/**
> + * QMI service IDs

This is not valid kerneldoc, try make W=1

Konrad

