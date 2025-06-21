Return-Path: <devicetree+bounces-188058-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E4316AE2899
	for <lists+devicetree@lfdr.de>; Sat, 21 Jun 2025 12:24:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CB1A4188B196
	for <lists+devicetree@lfdr.de>; Sat, 21 Jun 2025 10:24:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B4FB1FF7D7;
	Sat, 21 Jun 2025 10:23:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lt7qSfxI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2E0B1E7C24
	for <devicetree@vger.kernel.org>; Sat, 21 Jun 2025 10:23:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750501431; cv=none; b=DQl7/jltb5iX8T96w8xIYSZiy7lPc7Akr4Qfbg5OgPr6wF21bwOppNijO3EuhUYjMd/FyhVWiiDfz+eQvL7bDBqeOwnM4PMZ105cqvwXxCJhXK0v55WFvF7cN9Uj8Y111U3WczC6y1V2yQ9q1OydX23eHstoJvmShiNKUiWBvuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750501431; c=relaxed/simple;
	bh=TpLdTFKcF/XRek+8L18J0nRWqX7kggdzEKxNv+QMNmw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YxM30ufaL1dvs3Wtt1WEv7afJmHE/gl+8mbXV6rTshrW3TMXHde+yVKoT2YLITvvxuaHtSLe9hfKp1E0dHWo0HeYagf3llGOjMqB6F62yV80mcGlYpt0tNmveGH6sfurG8cx1m0Ph4FssqB7kwT4P2GfqWWCEDAYXsLE4X/Sj4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lt7qSfxI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55L9nRRW002111
	for <devicetree@vger.kernel.org>; Sat, 21 Jun 2025 10:23:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TpLdTFKcF/XRek+8L18J0nRWqX7kggdzEKxNv+QMNmw=; b=lt7qSfxItJQcd4bj
	vkVgf/RGoSAPz8F41MaQl7WhZSQ67RRy7fVew8ndOkOj11gX/ZVjAySh05frYJUW
	UbNQryYQlCEBVDPfVl3pi3B88ck31hv9uX7TB1OA7Y+aY6X8Kz25HvZR4jii2OXz
	VB5da15mzbdIAnD1/050Pk5hD+L3KMWRVSQXaaEHq/uOLZDpaXnTm1cCDAJA/llc
	4pEy7QREE4P/lIutk0v66Zo+zCP/8L7Ja6np/i4JcmSvTkw/w704E9zOOfKlorXJ
	eqhXBJtySnILOmhSCQa8i4jlAfmH4YIIO9vv8xn5JKWGGG+49OXiXomgtbNoUo/y
	Hb9qyg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47dp1crdpc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 21 Jun 2025 10:23:48 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6fafb22f5daso5280466d6.0
        for <devicetree@vger.kernel.org>; Sat, 21 Jun 2025 03:23:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750501427; x=1751106227;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TpLdTFKcF/XRek+8L18J0nRWqX7kggdzEKxNv+QMNmw=;
        b=BO36bf8Xy1i7LZcnLuBLpiwCOruVJevyrx7KhWPnZrrwbg/aW40S8Wo2N1YD72lz7N
         OeUB4Go/99+ZWY7tsWx8bTU5g3wCgATKQCSFFDg1/wedVTw5K18F6S3sHeJiKroioPsl
         t7r2HgbgrVmY+iiwfZv5sP8oLfHVfAQmRe2GCkDbkam8md3xvWjxXWeysq+kbg8d248b
         m6Mp2ilOL60tZpsZgo9y3apXdvEpdrzJf7rz2/CXlFs/PCHYiM89U6glWP37DUwQRxoZ
         muTOtWUd1v3R/u3ljMg2TOdyd75Hh5sTlzeOIIOg5kgHk0gRBjO1kTq9VB8NV4gDRqzx
         cx+A==
X-Forwarded-Encrypted: i=1; AJvYcCUiBd0yIx2KkGg80YNDcWPxPhkEzgShL/Usw0vCow1AgkZkGhbBR2wUQVJZoVsm71dwCgY4haqX/thA@vger.kernel.org
X-Gm-Message-State: AOJu0YyJ9DOBLIa18jCTBoM/nmfoBNQjlRGi6mdjwi/qri2Aj5i5XIEE
	PUYAUu8ECYgt0c8tlNHLldux+5W3xuYr2ax8SH+rU2ZgIClbQPkrylHV6hJWA7tEDQi1SRl22ee
	jo8yhy+NvldzqhTypqIW3o4CWUpzUx0PtP9HCaalUVZX4mESqbJmsujB1WHRxFc/a
X-Gm-Gg: ASbGncvJW0jIc3tHsaB+0Rp/raQyOQCI42OMo22W7CPmTFopaTDfETkqJmADSDsdPIN
	wJPMnxuJM8dikVxoG4jyUtJqxy8nzu5v+CoJT9tZiNmyRjM5PFD7T1+dgytpXw7W49DauAXao2z
	SQ2/UFB0UOdJM9oOh+jQBQhGlpN6mNV8LQIc+GxYEHHHSsrN24RwX+LiQymDxINCLK/wtnts+6u
	pSSPVh3DHz4lADr9HOYFYhXSaqIA8Lbqfwz9+RtoUKeIUkMhUlL6D3bDho2KrEPm3rIieiBq6LV
	R9pT2NgPAWG5UWW8Fm9LOhop9rDjQ+XuAloKh2MCu/wk6sQTCDhTUTrVjs5XVrJi52cHfJ1JYsc
	crW8=
X-Received: by 2002:a05:6214:d0f:b0:6fd:cfe:eb69 with SMTP id 6a1803df08f44-6fd0cfeefd6mr33144116d6.0.1750501427580;
        Sat, 21 Jun 2025 03:23:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGL7MibXEyP9F8lz/Y2lKLYp1eoWNqfrsGdvD1Pks6XZih0R0EqMtTrZY6/uhIV2aRLfbEu9w==
X-Received: by 2002:a05:6214:d0f:b0:6fd:cfe:eb69 with SMTP id 6a1803df08f44-6fd0cfeefd6mr33143996d6.0.1750501427186;
        Sat, 21 Jun 2025 03:23:47 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae05392172dsm338550766b.0.2025.06.21.03.23.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Jun 2025 03:23:46 -0700 (PDT)
Message-ID: <5af406b6-cc31-46ef-aded-7c0de3115e52@oss.qualcomm.com>
Date: Sat, 21 Jun 2025 12:23:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 4/4] arm64: dts: qcom: sm8550: Remove SDR104/SDR50
 broken capabilities
To: Sarthak Garg <quic_sartgarg@quicinc.com>,
        Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Adrian Hunter <adrian.hunter@intel.com>
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        quic_cang@quicinc.com, quic_nguyenb@quicinc.com,
        quic_rampraka@quicinc.com, quic_pragalla@quicinc.com,
        quic_sayalil@quicinc.com, quic_nitirawa@quicinc.com,
        quic_bhaskarv@quicinc.com, kernel@oss.qualcomm.com
References: <20250618072818.1667097-1-quic_sartgarg@quicinc.com>
 <20250618072818.1667097-5-quic_sartgarg@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250618072818.1667097-5-quic_sartgarg@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: dkBpPYRa1qVkeTFW76emKOs3vR1VO-m7
X-Proofpoint-ORIG-GUID: dkBpPYRa1qVkeTFW76emKOs3vR1VO-m7
X-Authority-Analysis: v=2.4 cv=NKDV+16g c=1 sm=1 tr=0 ts=68568834 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=5CWsPqat_0j5EhUDu1AA:9
 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIxMDA2MCBTYWx0ZWRfXx6y3FKAA5EHx
 JIxnoc4eLXCcgnxEoWA7gyy1qLF/SbnsjEc+n6CMIPIMl7f+L1nnMcboT21lIE/I/zZEYytXzkz
 Yfs7CZXXmtH6NMsNuXEelh+w8S0ToRy20AoAt8fHsBOqXo+lrWY4a814dwXF3OfgNXUhwM8oOup
 5QOR1+0gdY/9lePwsgVChvyny86OQUpBXG0iKaybOVV4WwA7H9rvP5qpWSuj95heUTRJv67CqMU
 Lu+OOU49uMc93elXQ+zkJp7Ngzchj1kFmetBsVFOE31L63zDLVAcAXyrXMAeICf6vEeUiFl3DjL
 NnTxlmEFyfayNcM5mK3plqRKTDWvdN58WT51e6VOHz0ClNPVcBobLCPf89G2Nmqn4xZAM3xUim3
 MeCYKtQta8NJsqHSBW3cakWW3YbJRY8ugr8p2iQ3sYvvk1+cb9SIawh826b/1uwhn6stBZ1x
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-21_02,2025-06-20_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 phishscore=0 bulkscore=0 mlxscore=0
 adultscore=0 clxscore=1015 suspectscore=0 impostorscore=0 priorityscore=1501
 spamscore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506210060

On 6/18/25 9:28 AM, Sarthak Garg wrote:
> Kernel now handles all level shifter limitations related to SD card
> modes.
> As a result, the broken hardware capabilities for SDR104 and SDR50 modes
> can be removed from the device tree.
> Additionally, due to level shifter constraints, set the maximum
> frequency for High Speed (HS) mode to 37.5 MHz using the
> max-sd-hs-frequency property for sm8550.

It's a little bit
hard to read text that is formatted
like that, please stick to ~72 chars per line instead

Konrad

