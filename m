Return-Path: <devicetree+bounces-190415-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AF40FAEBB14
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 17:09:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A06BE562CB6
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 15:09:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 957CA2E8DE4;
	Fri, 27 Jun 2025 15:09:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kkIDuFUu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192D12E88BF
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 15:09:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751036949; cv=none; b=rzqSsv9rvn6b2WgdqCbjbG3zh9omkoUzm9CH548YAJXOmjHVesTS4f+9m50juOWkuW/NVTUz52ZtkUkLX+DbzGIpXOX9/SlkLEXHw96riLNNQFQ4KnujrmVgWChow6k3LeaHI5MXcpAK+1fmehC2YbIOGeMuXBwCPJ8M/XTHFoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751036949; c=relaxed/simple;
	bh=iMZn/aTdSGkvKkFlQS1GAGPqfZH8KYUWTWQbWhJrKso=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qf/srVeOsOiDSR1lewPxACUa0ZkRwJ2kDpGx5uD+cAVbutAqH1PFoCmhjXIy7y6nCjDZyqTM31p1F8QhgQ2gYnI0/XW2bZrE7ynJ00ETX1l4yzAoW4KzDKh7D35dK6GXj4neCcTmE7OxbnF+t03n+OBOCD2RaooYZp8dAqdefEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kkIDuFUu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55RCMR6D009550
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 15:09:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/fF5SH13vrMw8KXy51ozasVmBjXn9MBTWvPmrdC+UC4=; b=kkIDuFUuZQ5o1xkL
	G+WE+dgI2SllNQ5TJqfxVAZfrOi7ScVO07RCvFz0Jjd4QSzW4CQJqOC0j+Kqmaq8
	8iHWTiRcSJnJa68C0TqIkYa+A5JEto1OWb5iLyfIEogAJ8dq7fcbib5FnYM8i333
	MNrkiu+YSh9z+iv6iStYzYXR/XdiIqBU1P+JCnkkrrAuJJ6qxorta5nCO1N+3T3y
	ZM6eOHpyRmkNT4ayz1ZYE+CEjT724kcQtDP+xBD1rXKOg8Desu8mLbutOsSfS1lA
	QZxAP87BdTcZD96mOW7qSiDhR9o5btMQiqYqeoJuHK3A7vu5bvude+gYqaXVeYA6
	GSNy7w==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47f4b475p3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 15:09:07 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7d0979c176eso45746385a.1
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 08:09:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751036946; x=1751641746;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/fF5SH13vrMw8KXy51ozasVmBjXn9MBTWvPmrdC+UC4=;
        b=rur/GCtSeQX4YBiCKxYE8+fIw6+BZATTwjTnSFTBlvP3rRjZLjYLp0hnfYCNzUJ90l
         OP2t0xDCCLhqkC40JL+ZIzT6vfp28hJsSVviTqNERqT7e7qZM8zPCAiKy4XVvSfngquw
         eM7tdg2J+o6HF+BXUuvgYEMVgr6FK7SDD5cTLLvts8/Ir44ViYAaIL3xozpx+Z/wm+bK
         BZPL7kurD9aNLK/OmyNf0BzJupjZVX9cZhtHBSvKfa6odL1Sl5JmjJOHNPwH4sxkB1oq
         SBsbUhSfB3l8nEIhrSrvjQLo195A9c8eqPCRVLr8PUvLHtdbLb5p6tiOFEPPxMaXDOSo
         Diuw==
X-Forwarded-Encrypted: i=1; AJvYcCXBxSAxZ6Ir0KjcHWHQA2jZ6enLmR5wsUqC5r/Jb48t2ouTg/jdjPyj7p5DDPuy3tq5iNbwvqb7Q0Tz@vger.kernel.org
X-Gm-Message-State: AOJu0YxMO4BIuneE58Qxnl8ZRJ8wJWOD57GhwrLpYGiRtOa7WdUPZN7M
	Zxm64Pb9cW2YsWNlAACFpMetY5fV9MKzrkhrBJXzmfY9p8fhKPozl6eThRQ4WoGp47An1Gz/tqM
	HEkgqW3DzGJwOATMYyxz2+vNZ/+qpCuGO+nC/NdkXUYelKfQ8C2EytLL72a5Dd5WB
X-Gm-Gg: ASbGncvSglED4ZlNrHquoBUT3S2qoRs2/zPaW6QoXCvFtF8MhGWEg5o2BC8Po3RyKzB
	O2s0F2/IlLb4WoBvyLR0tdkkL+yulrolA6QbCm6uTDNVfLP6ZeGAEk8NHhwUnk7g+eXL+7ZanXG
	+SoXsKheHwoUXsrwZYaUtqf24STFr9ijyNdD4FWBtvJ4SmPDsESHulPiffSTvM1MrmrA2Nu8lP5
	Q7ROrF6YZN2oFv9Zp+CfwrA1wRLpfEm0ZFcDcvSdlBFf6IjOgGL2+BlAnR0DL6PuVKr8fPFMHzn
	etzeldU28P9pijIqJrT1ODIv4CHj52wng9xnretK7A8GzwIxr9qbFIuteAnW5UvDIkQqEj9YQb4
	EV1Y=
X-Received: by 2002:a05:620a:4447:b0:7cd:4bd2:6d5a with SMTP id af79cd13be357-7d44391f092mr209041185a.5.1751036945711;
        Fri, 27 Jun 2025 08:09:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IETw4nn0kGPIiE1WYULEdxyyAO8SokIluvUEsVpj6pE8PQWACUktsCLwBYUcxwsaoA4Q1MI0w==
X-Received: by 2002:a05:620a:4447:b0:7cd:4bd2:6d5a with SMTP id af79cd13be357-7d44391f092mr209039385a.5.1751036945328;
        Fri, 27 Jun 2025 08:09:05 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae35365a021sm142492566b.54.2025.06.27.08.09.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jun 2025 08:09:04 -0700 (PDT)
Message-ID: <42dd44ef-cd6f-4dce-bd40-6f5cb32c5fbb@oss.qualcomm.com>
Date: Fri, 27 Jun 2025 17:09:02 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sm6115: add debug UART pins
To: Bartosz Golaszewski <brgl@bgdev.pl>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
References: <20250625152839.193672-1-brgl@bgdev.pl>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250625152839.193672-1-brgl@bgdev.pl>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI3MDEyMyBTYWx0ZWRfXx2YNS/zRy9G3
 P/eDotTH6OZKMXcbuM066BDGLMA4nOZKYo/xNe6NhvEWGOy2V7zCaO+WjCY0tNMjUkGp2mhUWsR
 kIsHXrDLA1nvLMveWhsdfhA4JOxekzWBleMF0SKY4sYXcXrvjCBeE1XGtyyoxWTQfs2mr2FEV9T
 uurOc7674hqtFVlUHfVKYqfuMhuSRFFOM7kxhvVu5DVyRnhvBJqm4gaZRUQ7oVyJs1eeoY9dgmg
 dzKzEC6+ahSMT8AmvzWzHsuWPxvQJzVshAzxDCyp2gCTaJDBWJSLeDpYv0IvIIkt2u+xMUKCFXR
 wf253LmiemCsTe/hrbKWKK0SDYFoz9QNy9pOsAj2/vIjRky01JLepbYR301Fe1PKziTBsKnLNSq
 0x+9Q6WaWCPrKapEQIC2UKc+ycfJCWRvIuS82uY+D+DF2KWfiUGXB0AjOKZbjzatdqfUz0Vk
X-Proofpoint-ORIG-GUID: SwtkLwQZdM1Yv5cF3zbPQnB7qK-xlUXg
X-Proofpoint-GUID: SwtkLwQZdM1Yv5cF3zbPQnB7qK-xlUXg
X-Authority-Analysis: v=2.4 cv=A8BsP7WG c=1 sm=1 tr=0 ts=685eb413 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=Wqh5l9TQGOq_QAyi0ksA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-27_04,2025-06-26_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 mlxlogscore=890 malwarescore=0 spamscore=0 bulkscore=0
 phishscore=0 adultscore=0 impostorscore=0 suspectscore=0 mlxscore=0
 clxscore=1015 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506270123

On 6/25/25 5:28 PM, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> We should not rely on the bootloader to set up the pinmux of the debug
> UART port. Let's add pin definitions for uart4 to tlmm and bind them to
> the relevant device node.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

