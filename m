Return-Path: <devicetree+bounces-194139-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 16579AFCD61
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 16:22:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 42DDF7B4D76
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 14:16:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E39FF2DFA3B;
	Tue,  8 Jul 2025 14:17:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aVDyXk3d"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EF3E1DBB2E
	for <devicetree@vger.kernel.org>; Tue,  8 Jul 2025 14:17:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751984251; cv=none; b=FWFBnnycrXpRwwny0rWu99uUbd6U/nQGZLD70THVJnhSOGYjUB1zwPXRnFXXDVd7pX5f3a/SDnrWe1WwhkWs5A4eYIXYj52VoVQAjuc7gXoB67W0ZnReif2STnuflkGWYW6GOFJ76csh90iufQ6/7rIAoLPyWeKC5IrB8teY0ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751984251; c=relaxed/simple;
	bh=EK3JQ72228TObN5zkuJ5CwU2D6RvYU19Tiz1TPq4xKk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mSDGLYdI7JQ5YKlnavilao73ck/VgijUtLsckJgCMT1Y9WDCO77yfrV16FzuYGxFUa69UbOt9j4Tvf3SpMPoOhh0EhqftU754zRGj4MTDmECewZcY6JWo8xLcXX1HzPOj/WSfnTWaKjzD9Kz6bNG9oNPAbBrjJsXs1yaC98nYG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aVDyXk3d; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 568AAbLk017144
	for <devicetree@vger.kernel.org>; Tue, 8 Jul 2025 14:17:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1jUymNgRTuJ2Et2D33iAba7wwkT0pE+8xLTY7OHijpI=; b=aVDyXk3dnCP8zUYu
	QhF7mFr8bvmdclv4MqkpaK2Djo/WvHo2YqMeXl0muFRnrKglwBB9H0luyo/aPchh
	vLvSxSzwMhAiloiR15MqoHdIo7EoW0ciMQk28DkzJkWkuUut+XY+aU7aIFz2UinA
	xMSclaJ5gGh+dPXktJtxZl0extOXGzX5yTwixSHrZkWbRgKq4iiLrl2XOR85oKSB
	BBbHigHHZtLzYwSBg0pDS1zUkgDXkGo6CfLVcXTo32/9AR3b/VuKH7eP8TC0OgoM
	CwecJw8drMG49gi0iwqAi16SHuleve2DNmQP1U/3LWMaMK+Ihi6UzUvwjKkY4HKu
	NM6/cQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47pvtknx4j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 14:17:29 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7d41d65f21eso31317985a.3
        for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 07:17:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751984248; x=1752589048;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1jUymNgRTuJ2Et2D33iAba7wwkT0pE+8xLTY7OHijpI=;
        b=ZV+DUsDImNFePh3f7YsVYrIPuz7uzHOhlW+NOFqOb0rMeavTYPjFqp5zaaJvvLYKhL
         f4pAMeyuUyZy8sntXCw81O0+4GMVrEcN5H64nX99llSI7Ppk+vDjhaCZuRYUYzG/xC2u
         gkqyEhoz0JS6GDgapvtn2+EOmzIRmCIUq/g8lFNUXY+jz0Kj6VZIK8TaVLiSIRz73uln
         i8uXXIv8iF+9nGSKzfNMOQJA2rjwW2Pldelrf4uCOTfvvnj5DE3A9SWQq8G316/bTtNU
         QKWBh3imPOxZDi1hv3UtX8hGRnw1qNO7QeJs0z1acAkclgibhzfHjUo/m8nUa+y0qV0F
         m6WQ==
X-Forwarded-Encrypted: i=1; AJvYcCVm3EW198yAQROASOOsuwbSpHHvZonp5E/FbHTLbB3E0Vfnqe2bfXLd6ij3/I1aiezzG2h7S3UUBja8@vger.kernel.org
X-Gm-Message-State: AOJu0Ywx0StAy33c6n4ZP4/tePo13rmlTGGMjGvOzb3HgSYxRcIVQZfX
	5LUQvQKNji29F3hiN7qdFFSxmJIO57MR1gnSamvLfD7jXuD4HT7xdduUPJi8uI8twrafHk4pb5W
	30iC/ELmGDdn5lH9k/XgD2kLF3TN3aZGIcE3xmbgPuacMw4KPcMSQQlXq/s7YTQ0O
X-Gm-Gg: ASbGncudTc7vXXYbGmWQzQUf94a5DTLy3GyqcTvEB66ZEVepMu+OFXxvF6B0cHHzxpQ
	AcP/lO7ITH9/Xk8liB9Y6TSUoXFFq/KI9ri8fH+bxbvDO4v+r6a/UTY6bZ3Ly0QPhYpj7UjtxXX
	mvvxICZyDvatvw2KmIBLmpJUzCrZfQ/0ZvsVveiZsvN7D8bgKtSfnxZkgVn0cMDQ1cEfi/Q2/LP
	z+ZgflNVP+oD0h0l2zqNONmXXpM8I2W/3HDdSnIVm30QSXD9BH6KmdfZA4pyLnFvZZXWf67mES6
	z76J8gvwz1i17PnRc/KWNZk6wOEoyMr8rpszRzS2E5+JFC0tw9CVAw3fvAmxdeMLXGnoPaaFJzr
	5Vgk=
X-Received: by 2002:a05:620a:6284:b0:7d3:c688:a590 with SMTP id af79cd13be357-7d5ddb7222amr681900985a.4.1751984248386;
        Tue, 08 Jul 2025 07:17:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGat+j5WRhRm+vXxC+HtFHxmxDl6pmEScjJVFrSTRuySFhBrkKDrxmWK7sjjXVTwi5HDCjg+A==
X-Received: by 2002:a05:620a:6284:b0:7d3:c688:a590 with SMTP id af79cd13be357-7d5ddb7222amr681896585a.4.1751984247374;
        Tue, 08 Jul 2025 07:17:27 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60fcb6dbbe9sm7163457a12.69.2025.07.08.07.17.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Jul 2025 07:17:26 -0700 (PDT)
Message-ID: <a8d28a19-0730-48be-8e0b-21892a89aa7b@oss.qualcomm.com>
Date: Tue, 8 Jul 2025 16:17:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/3] arm64: dts: qcom: x1-hp-x14: Commonalize HP
 Omnibook X14 device tree
To: jens.glathe@oldschoolsolutions.biz,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250705-hp-x14-x1p-v4-0-1c351dbeaf18@oldschoolsolutions.biz>
 <20250705-hp-x14-x1p-v4-2-1c351dbeaf18@oldschoolsolutions.biz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250705-hp-x14-x1p-v4-2-1c351dbeaf18@oldschoolsolutions.biz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA4MDExOSBTYWx0ZWRfX5tC8PrAkTlDI
 loWzBcKr9on6J0VefVXw0JI4lWHMKpI7K/VpZepDUKtsm0HLUUTMcEVBr8JOqdt9R9AHR7bykoU
 la6jeORmmuU3ig1g2zXLmdJU6z53KZ+c53Lil/Ca8JyZZcU0OghYixYUDgUfCyH9WnX4jfkd3ap
 VLbcUsLmFwhuXAbjcKO0nXDq+Ghl8kBu6+dXRwWkMVXTODRZ+NddSXWfndCJjE6a6OflQvl2z7G
 +UucImKQKz/MJqGB8+pIgaXyokHKBa7yhYoJ3+zLtEbFKDHOS7vsfwFM/o8HFx+UVZjv+A/p/cQ
 u1HuR4gr3RSjf7xZQACg8iubaXv9b2tfXv5rtceu77uu1gLgjSYQxAJNGGlcgXagn4MjFo4bp9X
 ulozYuUMXJ8xyh6NL9Agxo5zSbRpS0o+0eHcr/llQ9Xq+sDWT5BD/RlZenkfQpW9owlSzhRb
X-Authority-Analysis: v=2.4 cv=Vq0jA/2n c=1 sm=1 tr=0 ts=686d2879 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=gxl3bz0cAAAA:8 a=cAM1RvHTojyOkAC3-G8A:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=kiRiLd-pWN9FGgpmzFdl:22
X-Proofpoint-ORIG-GUID: I8nACmOT5PzXDPZXMJrT7-J_VLKTK8HW
X-Proofpoint-GUID: I8nACmOT5PzXDPZXMJrT7-J_VLKTK8HW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-08_03,2025-07-07_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 bulkscore=0 phishscore=0 lowpriorityscore=0
 clxscore=1015 mlxscore=0 malwarescore=0 mlxlogscore=999 impostorscore=0
 suspectscore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507080119

On 7/5/25 10:31 PM, Jens Glathe via B4 Relay wrote:
> From: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> 
> Commonalize the HP Omnibook X14 device tree for derivation of Hamoa (x1e*/x1p6*)
> and Purwa (x1p4*/x1*) variants. Required because the device trees are not
> compatible.
> 
> Signed-off-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> ---


> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) 2023 Qualcomm Innovation Center, Inc. All rights reserved.
> + */
> +
> +/dts-v1/;
> +
> +#include "x1e80100.dtsi"
> +#include "x1e80100-pmics.dtsi"
> +#include "x1-hp-omnibook-x14.dtsi"
> +
> +/ {
> +	model = "HP Omnibook X 14-fe0";
> +	compatible = "hp,omnibook-x14", "qcom,x1e80100";
> +	chassis-type = "laptop";
> +};
> +
> +&gpu {
> +	status = "okay";
> +
> +	zap-shader {

Ideally you could switch to using &gpu_zap_shader {}

Konrad

