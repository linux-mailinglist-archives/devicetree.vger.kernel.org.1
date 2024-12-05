Return-Path: <devicetree+bounces-127543-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 41DD99E5B1A
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 17:15:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B1401188288F
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 16:14:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAB3521C9F8;
	Thu,  5 Dec 2024 16:14:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hTrWLkPg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6461CD2B
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 16:14:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733415257; cv=none; b=IbMRzreaBgVHEKRe/7NhlRXyxiiG6uGXTWvBxKxWlCLS3MI9Kx8MdaN5PpqqctGMEZIlXCZMNLfmINQ1EpQsFVaonXcSd/UtutxLpfrlKpYo7ze+Ab2hOYM8K4IUF0ATVVGRRXOJ+kVPTck3n5rgSKeiZ8juYdRgBqj97IupCjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733415257; c=relaxed/simple;
	bh=ZKhJq1G1m3Gl7Z0eYkGg5228J41LE41NQmhmVxlYvs8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=T48fDolak0yIb9pJGEMI6CjiU8CzbAgV2QrVvHizkk+BZTu6FoyyJX6mqVLq/cXY1vQTQ8cUX6Vr6cIRONyWZjGa2WliZPBEX2eaAvLRNGkpIx3iTqZ401a3MGx0MeASA9alLY1AyjOeUyvIyUJmXAz/jMe1Os/CR0bKYd1xnqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hTrWLkPg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B59whlA030449
	for <devicetree@vger.kernel.org>; Thu, 5 Dec 2024 16:14:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Q4bHhpGj4Iq/Q6Yy51YAdnpy2vhl7koPdty55UVbqnk=; b=hTrWLkPgl7Q7Kyhn
	nS2PioFKEwr8lscowNnp0SRIo6MpV4D8Oq2YeCTTMYx9AU26ShlXxfUyk+lO9zR3
	TI0TY+3E270sXnlEmJEB5dgBRtYjBQMNba9xSHg5ma3lYambwtmxmY6e1TzLIRcw
	5GzXGeqWrodsvWJCCukd4NnZf0LqhBrWxo7HQhBKewepqQ4MY2hbUPRreRoHqba9
	3Wfz1eyEO2rzaD6nzZbl5RFOxn6PlcN1WUTClH0QWM9CnmUMtdZS70+VYscbPS4H
	M4l2N2tfE6nOw3fcdlUO+9CrV+U+Jld+3gLOiB/XrLCgVSvElqTAupLXrK8+S34N
	UpNmEw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43ba14116a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 16:14:15 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7b66a7bf483so4760485a.1
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 08:14:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733415254; x=1734020054;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Q4bHhpGj4Iq/Q6Yy51YAdnpy2vhl7koPdty55UVbqnk=;
        b=PFMr0GFZ0IaU/NE31ZSlX1hmWpPP4X3fCrx7wau4UCJqHy4E+uHT5NPrSSKIoqYmK8
         D3bhDpJ+997GL/I+I1cunssjgqr5CgHgMPpmrIKT+2kP4ZRvwHnB8JMLPhSr7thIOxi2
         6nzuGmE10nCRA+/7DU5lJgx3amP2rmF/1Ry0hJh3e22tCiGq52FYuPJwfoUlx428F3i/
         r+Ek7iayaLtZehTZe5PkFiRXd8ZTf6AaoF//aADlAOdeLq5hCN2eGgPP8ovYzZjXscJT
         zj4acQr3mIm8m/7/qbzJm4mIM5NTuUKfFheMoVYQGQG6FJBWGqg0e2cgsNBg5DyOVhj+
         csXQ==
X-Forwarded-Encrypted: i=1; AJvYcCWgarGmavz2kN/0QJOW/mF2SDiMx6L6e3WwqnAzY8iTswbjGHG66uVq1W+b4nN2fCjhSXsn7Dy6TU5I@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6n2EhTxcjHfWX97HzuLCZtSw72Nse2AniV12OsfFJ9Pi/2U0T
	ddi1t1JT3OweFfFwWN2rxUMCDIyVZcD1tN+uQIM+9PMTqkfWFhHNWFn5tpzaa1GjZWPKBUXmjei
	XeacWOllh/UyTN8d7Mvu5r9LqRl8239kn9Lvo0JWCU7HJs/n0EvxNtCUIEU79
X-Gm-Gg: ASbGncsIWvbqgKc/F0oLCMnUWPpo3ZpWOot8FA6C9/Xj5WpVYpLUwO62wcBXqIQwfC3
	RIpbZQ7dj5+dVIrdcax1z+8zb80odrdQZRTsrwE0RDNmYjP5haefXVzcZxyHAYhS+stxrbCFQxD
	lp0YCy6Twsc0p/QgqAbO0TSlcEREWQOVLXUNFDVA2MCII3r6wD+qTss3m+RMfFaITBncj3bEfea
	doCu0cBwlRGKeDZK0iwJvt+22er8i+g5hWlSnOp1tsgPXS9rWUvg9y8I4wLSjrZM+NKzODkLe2D
	jAYkNbEdaeY/c0lFzRC4GewIYxoIkaE=
X-Received: by 2002:a05:620a:190e:b0:7b6:7133:b8a4 with SMTP id af79cd13be357-7b6a5da87c1mr511872585a.6.1733415253846;
        Thu, 05 Dec 2024 08:14:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEeo8EnFlUDSRNwZoxgA8xXU7dReO+EiMtdKYMbSBAGgB52JxGgHU4GzGQnWeFhnhZ4jTPfpg==
X-Received: by 2002:a05:620a:190e:b0:7b6:7133:b8a4 with SMTP id af79cd13be357-7b6a5da87c1mr511870685a.6.1733415253525;
        Thu, 05 Dec 2024 08:14:13 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6260a3660sm110733466b.167.2024.12.05.08.14.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2024 08:14:13 -0800 (PST)
Message-ID: <6d7204a5-a007-4637-8d42-0fad6ede6d4d@oss.qualcomm.com>
Date: Thu, 5 Dec 2024 17:14:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/7] arm64: dts: qcom: sm8750: Add pmic dtsi
To: Melody Olvera <quic_molvera@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
        Trilok Soni <quic_tsoni@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20241204-sm8750_master_dt-v3-0-4d5a8269950b@quicinc.com>
 <20241204-sm8750_master_dt-v3-5-4d5a8269950b@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241204-sm8750_master_dt-v3-5-4d5a8269950b@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 9s-yWo5Ucpi3wWYgQ0Zpd1tJsSzwzBFc
X-Proofpoint-ORIG-GUID: 9s-yWo5Ucpi3wWYgQ0Zpd1tJsSzwzBFc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 bulkscore=0
 phishscore=0 clxscore=1015 mlxscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 suspectscore=0 mlxlogscore=758 malwarescore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412050117

On 5.12.2024 12:18 AM, Melody Olvera wrote:
> Add pmic dtsi file for SM8750 SoC describing the pmics and
> their thermal zones.
> 
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

