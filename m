Return-Path: <devicetree+bounces-156109-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DBD6A5934F
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 13:01:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4BCB316D3DF
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 12:01:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CCDD226CE7;
	Mon, 10 Mar 2025 11:59:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XxFhFW0v"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD3EE22171B
	for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 11:59:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741607954; cv=none; b=WdJqAXFUS3rM+VX4XJUYta7brnC0EPjc0TAmYT/rQej5BYfU5p7Tt0TYhY4IirTY9H56+RRADOJotXre/4fwa128U4nv165pyiCHWoWERCNKU2kmCTKRZo8aCLdpJ/RmQjhqZPRbUGru7bq5lW2lO+Uh19NLGjtJ2HC+UIvS6b0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741607954; c=relaxed/simple;
	bh=vZZ4vyDwh4ny5i1Bv0bpfWfGLBspHIiStvxiORTJRRU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GvSqVffNbQ39/Z6YPqcqm5lOp5Ow8jag4OQquRbvTL3npiGAYm3KQ/jYU3u6LkP4WMw6vZj5SSDZvWqZ8W1Kwp+5UDWFt1HsZ1ALUFCyZqcqt251gxHpn08mAXL+R4xCfFX5yBe998Ajq0/HLBwXcc32InWXJabRQU1qYbQ8XqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XxFhFW0v; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52A9ppKZ005321
	for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 11:59:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wZYqEqO7y6IEW6xhayczjh6S+v5v683/p7g1JEP0aCU=; b=XxFhFW0vNsnc/ir3
	2av0KwyB+HzN5+TOhSuWWH0c4sCfHHVTTbNtuoLAFrlrooTb2nD1D6BXYR+wajGT
	vueamw10zipsEvogC1ZWzUKFPS6fZGHBEirxWukSVUGCrPGyiVKGDFCjyZrnu2sl
	IxzzI9lJ1PhPtYabKHYIrGcyKESr6DsBujkLefRsK3gUD+5XbVUYAtrnfXW9IX3W
	Qakjs8FolphfmnYS1iqVRqbFkgcHhWWzOzfY5wwa7rGmEA2n/dPW+VUk18k2I7Th
	CgMMk8g6/6Pb8P4mqr2LDKWsrZTYJwuC0iQ1Akh47ba4oO6jlF79JhzZDhERMxAg
	aYfW9Q==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 458f6acsgv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 11:59:11 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6e8fd4ef023so11870866d6.2
        for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 04:59:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741607950; x=1742212750;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wZYqEqO7y6IEW6xhayczjh6S+v5v683/p7g1JEP0aCU=;
        b=WIYFafec+v5779MOWeSoQTzWiJYTNI1/LvwmKI8SfCIOgCvUK4xYN+AKcaBnwcPPXv
         p0fpiR2q1TqsPa9jKqezWkmEzE3x6h2PiL4OLZ9tJFrifXZhC158+4Yg9CHBQGXQ4KvP
         ROPlXgLIG10Xva9V2FiLUxmLz5HAQAKgIWOaAa5uRDHuPOx3fKmikTFFFSz3yhnJ0Aav
         AJxyY0Qae8vOEvWOUqHX2jLwnCfKgTijVueeMSif7RSygH5mgjUfuzSU1ZIG3PUypYX4
         wnIEuq1m6kWfLcybIv58JZQl0bfcb3k5imkB+Fb0gaZT74d9mX9Elm+ZF4V1Kl/HABBU
         hbXA==
X-Forwarded-Encrypted: i=1; AJvYcCV2449wlLDbHkr3HyD2EQn3A82dEd5ruI8prbqMYtDAfKKyjZkuj7IfhTrgMTmIkFVu60ciXxTSAvH8@vger.kernel.org
X-Gm-Message-State: AOJu0YyAobEhh5SrM9OkuOAybAFZfX4Tvv2LfNmqhh7B2F7Iv6ymaeBt
	0RruVD+G8Qvgp6q+xyRtzJThp/r2QkZ6id8RxjQRsLy6A4uAjG0lx+QcjyQwZoMaW4MjHOyvtP7
	AvCxIJ3t93FUZBTqaa/V8m5rAn9PvgbtvpU9Yqoj3loIR0OX0T7cEljeQAlLv
X-Gm-Gg: ASbGnctIUZ3+WXNKpypzeGNfsjfs8yReSAaidz3p++WFIlXfFf1FcJxw8GM3o82xH7e
	7SzSf3U2K1p+wezZFlgwm8axkWfijUl9WIvFIIhYoQSCgU2sSUJkRqowEeW8q4J1EJ4pP3T1tB3
	D5DvR82ozXJaPE1LMw2vkhWZSXzsm3S7BpgZL85R4sdYLM8JXp3o+BaTRWuuHSNNWjMds/Q8M2I
	OCYsIyrxQ+Ooq38e1CWOZ0mErVBwyDKdp6g+TPCqKVxzBpNCpJSVFFvvA3tLI/QTeIMNmosNopj
	YmGKeQS+9L+TLL7TlylbtRV1SHOBU/aI79D3m3Z08jHHhSk60dpRHSf2yUZIDnRqspuCvw==
X-Received: by 2002:a05:6214:cca:b0:6e4:449c:ab1d with SMTP id 6a1803df08f44-6e908c7af1dmr53814396d6.2.1741607950504;
        Mon, 10 Mar 2025 04:59:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH+dc62Lb7cFI5B+K44MJO8WyhCF9aelMEmIDlnu0VNMly7eoQPTcUOinmH7PMZ6O8UBsYDSw==
X-Received: by 2002:a05:6214:cca:b0:6e4:449c:ab1d with SMTP id 6a1803df08f44-6e908c7af1dmr53814226d6.2.1741607950102;
        Mon, 10 Mar 2025 04:59:10 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac27e11c457sm378242766b.126.2025.03.10.04.59.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Mar 2025 04:59:09 -0700 (PDT)
Message-ID: <9c64c23f-7e0f-4795-9747-a48f857e8947@oss.qualcomm.com>
Date: Mon, 10 Mar 2025 12:59:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: qcs8300-ride: Enable second USB
 controller on QCS8300 Ride
To: Manish Nagar <quic_mnagar@quicinc.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
References: <20250310104743.976265-1-quic_mnagar@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250310104743.976265-1-quic_mnagar@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=WsDRMcfv c=1 sm=1 tr=0 ts=67ced40f cx=c_pps a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=T_qEUXwVCjydKuttoeoA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: rxzfoZewLQUkSL3iYuZ0qvSltYv1MFLN
X-Proofpoint-ORIG-GUID: rxzfoZewLQUkSL3iYuZ0qvSltYv1MFLN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-10_05,2025-03-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 priorityscore=1501 bulkscore=0 adultscore=0
 impostorscore=0 phishscore=0 mlxscore=0 mlxlogscore=824 clxscore=1015
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503100094

On 10.03.2025 11:47 AM, Manish Nagar wrote:
> Enable secondary USB controller on QCS8300 Ride platform. Since it is a
> Type-A port, the dr_mode has been set to "host". The VBUS to connected
> peripherals is provided by TPS2559QWDRCTQ1 regulator connected to the
> port. The regulator has an enable pin controlled by PMM8650. Model it as
> fixed regulator and keep it Always-On at boot, since the regulator is
> GPIO controlled regulator.
> 
> Co-developed-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> Signed-off-by: Manish Nagar <quic_mnagar@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

