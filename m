Return-Path: <devicetree+bounces-150920-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B42DCA43EBF
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 13:07:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6A9921888397
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 12:04:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95D6A267F6D;
	Tue, 25 Feb 2025 12:04:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="N9aruR45"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E61C1267738
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 12:03:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740485040; cv=none; b=J1mjbQwpwj6W9hQNr+5oICanRxtYNdhcjb9mF/a1PqvCkacf1OqQeqNX2zCfjtZxpgSSWXYUDl/x+o1Lv+JS7MlZjMlHV6me4BFhTkr2EYRabahqDpHIxtBqLbrnbLEpuoHIa29AsOqZ6d0sBCAkC0Fn65RJ6kjAx5jWJKm6p1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740485040; c=relaxed/simple;
	bh=PxLJGOEsujYyXLOA1LVdxbe3bKtuHrxa6NSwWd3npKI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=soyQZHg2IBvkbhqOOBW4yGldX+QYWmNWM2iGRclZNjKQupi6nPnz/FxLpGOiTaVavYLfZN1qFyfHLm8SGQJnfPsC2I7IutYHK7DTiROtCd93ZV7dAxMR20XfAd6Y87qjYKW3IvzQOPsrUeNyV2BXFw5+1G1hdFP+l3Ye42POPBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=N9aruR45; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51P8O42k017270
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 12:03:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ILy8Rs3qH0JOfr3SxVmZK4zquSUgVqlPsIwHGwC4KZ0=; b=N9aruR45cP/DOpvi
	loWHxaKn4ePOFa5gdIDZx2TwWjST524P0OwQOQ1kwsX6gOZm+n9FIWPdsVzTxz5M
	dFoUk83/bUN/Az1sTSJJQRpWIJcTJNZQBGR9IwOdQDAv7Rckv6ecfaTHjAXiQdqG
	huLvyzMT547cB+MAOwJGjkPBDD3NHFVkMUh+D1qzkPpnnsdPNJvYNJTwfEHv3Xmb
	WNG1rA1F3Hmf+rl43oYZipdbzgpXdDXp68i4AutlIgNWQiMz43AhF5Pc9a23Ke7W
	IZ50Hr3DW5Pq9XXedl+iswVQPD6OtJpm2oeb4ppULALnCAER3V30O++nRlQ+6onc
	I0lSSw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44y5k68vv9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 12:03:56 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6e19bfc2025so10630796d6.1
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 04:03:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740485036; x=1741089836;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ILy8Rs3qH0JOfr3SxVmZK4zquSUgVqlPsIwHGwC4KZ0=;
        b=c4/dfQoucH+Uygoiwg0prIHYgJzziG5LBaCKseQxUJ9TcuRiTa7vqKghKyJz/+tF06
         WGc37SFNu8g69MroecQrhLvnDVPbYQidGPfjLc2NOYdZsNyl2qYgFnU2d15sGqqgMQFG
         kw/aDIlJdmtBkyNZUHxWZwRt0AV4z0pJMosF9e3O2ikzfrIkuv6G6bV7TEFoa0a/geHE
         RmcrbrDuw62UWxo+o/mWMMgA27aEuLmoQTmPhgeEnnPDmO9RvPNRpXrwuf7AZ23Au425
         n8f5gB51o3y8IXqxoE6ouRbih5WC3C3Yzw4C+6ASrE7Jxum/XZf823/pknHP6T5TzOAK
         Q3tQ==
X-Forwarded-Encrypted: i=1; AJvYcCUXunfw6gVNSZFpx6J/Uq1fnex7xwvF7F4g9QQuXJ/8z0sUwcqI5SfOFjzr0I6lv26NIWlKi1Y533rN@vger.kernel.org
X-Gm-Message-State: AOJu0YxxeHgYDTTZ6b24isgO93cxNcBzBuNnJfdW4xmu49GF2OADhI09
	oOEXTjIMaEvBBm2Voo9lHp4XPUWCmZ5LJiNqTcPcQK69gRXl4XRQQP7FIjOLAXjPsEM4dMwOO4a
	EIxp/YI3ApQZjb9zMg2TjXtGTLInOz7D1gtGX12bYeep4dj60D57rO8EgVXqZ
X-Gm-Gg: ASbGncsysHcbNNYO7GsJyqkC8Jp8kxz4W0aVkWYxQRus25uCWp5L/5lvWogtyqJQ0H9
	RSsw81FYOLPzWs8QpM1kGjdYvDv+WhmMLblbLWl6OZgWPvsKW4UcR2pw7dSJD0PWlFqXT9qBWbh
	HywAsnSW5MCBF/LdV1iZMkDa4YnICf46WEJbM9XNkZqA0OMPOp1+u+SnTuPpfLOEuaa1iPOZdTp
	vV9b/2a5JbD5pjUnXhL5oyjFojvq0hvgBWa7I5T0lW5rXtdKYKv896vGVWWNjEkiwNo+c5uzD4Y
	EXOqI0cTX/92FY8dabK+PG8Qf0Vyw+Jig7EmcUDbOUxHzl9sPKmb7gMtunITAj9qguw3fw==
X-Received: by 2002:a05:6214:d69:b0:6d8:a723:6990 with SMTP id 6a1803df08f44-6e6ae98a192mr78485046d6.7.1740485035908;
        Tue, 25 Feb 2025 04:03:55 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEORbqQZ5sf+h6IgcIpi2Q5Xp1o/awXYkrpeSM8AjuI7e7HoyV8DchTL7Kt5TZdBaioRlIlXg==
X-Received: by 2002:a05:6214:d69:b0:6d8:a723:6990 with SMTP id 6a1803df08f44-6e6ae98a192mr78484826d6.7.1740485035581;
        Tue, 25 Feb 2025 04:03:55 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e45a8b8b48sm1123522a12.20.2025.02.25.04.03.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Feb 2025 04:03:55 -0800 (PST)
Message-ID: <afe5ba99-81fa-41c2-9ce5-0f8e2fec427b@oss.qualcomm.com>
Date: Tue, 25 Feb 2025 13:03:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 10/10] arm64: dts: qcom: sc7280: Add 'global' interrupt
 to the PCIe RC nodes
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        chaitanya chundru <quic_krichai@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Jingoo Han <jingoohan1@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>
Cc: quic_vbadigan@quicnic.com, amitk@kernel.org, dmitry.baryshkov@linaro.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        jorge.ramirez@oss.qualcomm.com
References: <20250225-qps615_v4_1-v4-0-e08633a7bdf8@oss.qualcomm.com>
 <20250225-qps615_v4_1-v4-10-e08633a7bdf8@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250225-qps615_v4_1-v4-10-e08633a7bdf8@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: enBFY_gPZluwFU61fGGViOCLsYimcrPj
X-Proofpoint-GUID: enBFY_gPZluwFU61fGGViOCLsYimcrPj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-25_04,2025-02-25_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 adultscore=0
 bulkscore=0 spamscore=0 phishscore=0 clxscore=1015 impostorscore=0
 mlxlogscore=534 suspectscore=0 priorityscore=1501 mlxscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502250084

On 25.02.2025 10:34 AM, Krishna Chaitanya Chundru wrote:
> Qcom PCIe RC controllers are capable of generating 'global' SPI interrupt
> to the host CPUs. This interrupt can be used by the device driver to
> identify events such as PCIe link specific events, safety events, etc...
> 
> Hence, add it to the PCIe RC node along with the existing MSI interrupts.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---

The computer tells me this one is wakeup-capable - is this something we
are interested in describing for link up?

Konrad

