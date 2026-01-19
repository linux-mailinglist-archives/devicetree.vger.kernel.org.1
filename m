Return-Path: <devicetree+bounces-256955-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id EF9E8D3AF72
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 16:46:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7428230051AE
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 15:46:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9289F329C79;
	Mon, 19 Jan 2026 15:46:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WK9LjOIX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OdX4Fmyn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01A8335A955
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 15:46:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768837592; cv=none; b=qFGamH+BVi07eANXbcxbbfNzWAB7eupsbimJmsNukvoajsXlq+xy6lMXeB4DC5HDG4QAqlcdiOqzpf2BYED9OZy1ry3Mg4kAjHz0dTjT+CQzAZodIKTb0laOaI7tuv4ZoGtZUdzNMAW6mlB6c5o1owS/8Bgcw5wqk1AfEj0hWJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768837592; c=relaxed/simple;
	bh=c3OkFEDhYwEGKJ+O2vYlOCrKcjrQs/Ezo6uhDNr8XkI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EQV1PVY9Z46+XH7PT1jJFVf/U0BBWD1BLxnAfRzaUpejFWm35SL59vwRhgG9+F0FR3h2XGtyPNaq5ma4SVslh9Jqmc5cHtNsxcLr60LnK9Ao5OzIUYbz4ivVjvMQxGg6o9LOUAqJN19W4kmT29Wd1TFNip21aMtrWZmntKKctrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WK9LjOIX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OdX4Fmyn; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60J90jrI227888
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 15:46:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nc6Roa8HZO9BqKRVmPd2jMlSmAns4PxUyNcbgGlx+5k=; b=WK9LjOIX6T972Yht
	Mv+rsfk+JVkRSBfuFcMz3e1su1IxUKYWyuZ0cNkJA018RGtr30ono/n0bZOQNy39
	4t/PWv5SbQ4Hps//mgKvAfucD3pFLUl0nV6ypXStiSs5Nba795DuqZhhLSdsf2sj
	2HkfjxlxHwpG2n6yp/ooAt4HchpnNI1n++8HdyvlQeX5vHsC6FSoOy3Jdxc72FrI
	BhgawSNhz/N6agjX9M77rbV8wC2y5QYtoMq+2Lh7PxcwPZOWCcZ5n/i0TxUIrMAH
	S0wKQOjZKB6QEK2oKtlP4lJMnSKdXZnPXT9zkVpu2nY1KFFMEHjYpHstfi5xZtiT
	Ch/zUw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bsgfr9fr8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 15:46:28 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c6a182d4e1so109997185a.0
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 07:46:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768837588; x=1769442388; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nc6Roa8HZO9BqKRVmPd2jMlSmAns4PxUyNcbgGlx+5k=;
        b=OdX4FmynBwg+tlKMYFAtMn82V5x0/A+ZqkMgLLoCA3W1F1XY9cuivHpwqurRxon0TX
         B41SR6qJ4M0mEs88KuhC2BeMq81Cpwlcqacf1pDQPIZmhGdwdQODIuPKVHGqkA8n3SGt
         Q7eseMC8scGafKsoewFQsBhP6J5lw3WtQdAnjBFeQdU+ruD4wBWtkB2OpqzzDBJmqejR
         XULRP8PaCUX3m7nGW2yu/RzWcnhDTbilviytoMDAgMuP10ByMmnWu5oKE+Q1NiLLQPZY
         T1+RpxH7z895GOSHEMb8r527w7Uem/kdxJiyC4YV6t8wF0cSd0YNbLY/F9+HAWqsDHAt
         9D9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768837588; x=1769442388;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nc6Roa8HZO9BqKRVmPd2jMlSmAns4PxUyNcbgGlx+5k=;
        b=EsJ8J2ryBQGILYlYVD9srh7WnMvRh1p0RVuZkBdbh0CO8psZV76/7OS0pr9SCOAnlV
         CQgT2nd1nZOGsd4oFWHkCtKn5ZBAXnUeu6e8NIA4egNO8R6htAv4u2Sk0l5LYazgBSon
         x6d1APCTUuLxAlokhMQqKj6b8x9jrmdSxEdjzsSkIAdHcBdEyYKW3z3bTb0BMdu3HTnV
         7GKK3pr4bNKdo9iFzXRKluOMYFkgE9evr/1M63W9Bkads8bsiyMrgAIrZnEHMqiatRjX
         EkltiH4dpLDyttDtQ25bj/hlEqxFf88gpdUFe6vufsp/WNzKao6N4TX4gAHxqHtG2OA+
         U4sA==
X-Forwarded-Encrypted: i=1; AJvYcCUa2XZCnWLrUhdxfJDhYqXLFBzySKyItBIIDyUn9EfzQoZ7CMsIKM1WQUh2eWqbfA4T8bbgiRhBDaMW@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6WleftgL7j3ntddtcDuYy/H+PkAJr/cD2znOgLxGKiVihrbol
	IEIhIXidYpVttp6LjzelkaKx+5i0qEAIBMIYTknzIAwfonmhIcyA4JtU0EAobCppakOLhtTbEj4
	8qKLCOU6Jzjt1CuZ3mzvNBUhXcxhOfAb/HfAHicrVXnFtvkjdJwIIuNUVw1ipkuYK
X-Gm-Gg: AY/fxX69iZVpXkmxsH4RnL6Zay7amXrB4vfLbEFvA+eiEPLQUo39xBXhxntJ6qYiATu
	WHUIM+/aGeLTgdC4PSnor+EUaBRHlaTIsnHSgkmm4au+iRe50bkQxZZKejI3C822LL/8LD/j6ek
	tcBT1mT3JFIE0F7jgCztdVXeR4YKYj9F0WfW1QTfpm+GqfTKjYQhkULofem+unSbScN00GWbr58
	FoelZ2zb7RzTnpA9JQ7towp2jWwIekIb+40IlI/Tr9xXTiav+uip3BJkeyeS+aUQ6YcDBCWraJt
	4uDQpKLxHCx9MxKpR1LMuqTX7FBc+oxVurfYnUXPkXYMU1F1PqIQbqAJht13sDc+ukyZsM9LNzb
	SQeZ6mQi73vIWvpvGPJ+JQgZ0+ngQ6ILagVGUMfoi+T+jeZ+rI/46+K1NThRMEvFRTFc=
X-Received: by 2002:a05:620a:690e:b0:8c0:c999:df5a with SMTP id af79cd13be357-8c6ca431652mr6136185a.6.1768837587800;
        Mon, 19 Jan 2026 07:46:27 -0800 (PST)
X-Received: by 2002:a05:620a:690e:b0:8c0:c999:df5a with SMTP id af79cd13be357-8c6ca431652mr6134385a.6.1768837587351;
        Mon, 19 Jan 2026 07:46:27 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b87959fbd23sm1131712566b.51.2026.01.19.07.46.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jan 2026 07:46:26 -0800 (PST)
Message-ID: <fa77a048-d553-4345-b61d-0ad488574443@oss.qualcomm.com>
Date: Mon, 19 Jan 2026 16:46:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] arm64: dts: qcom: sm6125: Add debug UART node
To: nathbappai@gmail.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260119-xiaomi-ginkgo-features-v1-0-3c8fae984bda@gmail.com>
 <20260119-xiaomi-ginkgo-features-v1-4-3c8fae984bda@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260119-xiaomi-ginkgo-features-v1-4-3c8fae984bda@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: jvyiQTQxs_q_QaDMyg6gd2X3hzxeZ9fC
X-Proofpoint-GUID: jvyiQTQxs_q_QaDMyg6gd2X3hzxeZ9fC
X-Authority-Analysis: v=2.4 cv=c4OmgB9l c=1 sm=1 tr=0 ts=696e51d4 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8
 a=PxOV3p0B5uiKmcZMyNsA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDEzMSBTYWx0ZWRfX7nfdY5dhRkdK
 MLMd6JP8US/tNObBnmwZKU+eRxWPdQeIrmnKh6tHyopSmLKWc5KNSS4o0O8GT17P2HZmETInb+G
 YVQjK3XO2qnRy6/tXeu2CMI8D5K5EWEVl0Q2EMP+MOZVvs/0ujJdKCs54CyGWTPcE3wQEw6aze8
 7/6ieGv3FKwveB3vqtssoG1JQg6mydYM/tb8ox5Q4Fss+D3r1oaSQT1RIjBMIgqhWBQy508aqWB
 gN6efWgD66z4u/GD22PbzqQ/bDdDCvy5+iS4zx4dLAiMAJfn2VYsxsO0J4QEruQEtaXowPhP7oP
 T0/AqDwjXrUViGvWG82AnAQepDEmAkv+SyEEY95wSz5tfZopOLRKQfXTjsVudBQVCDxFhSG5ig7
 XJmwGQa5SvHKck7wU/YxzNxsIuBfLByHYCsWGz5R8kzoALhtlBJxbjWKzsguda7T97wWo7FIHor
 V3jO9JgFnMaUgrZuJ0Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_03,2026-01-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 impostorscore=0 clxscore=1015 priorityscore=1501
 suspectscore=0 spamscore=0 bulkscore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601190131

On 1/19/26 4:13 PM, Biswapriyo Nath via B4 Relay wrote:
> From: Biswapriyo Nath <nathbappai@gmail.com>
> 
> qup0 on sm6125 has 6 SEs and SE4 is used as debug uart. The uart node
> and the associated pinctrl are added here.
> 
> Signed-off-by: Biswapriyo Nath <nathbappai@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


