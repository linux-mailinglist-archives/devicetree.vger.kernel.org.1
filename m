Return-Path: <devicetree+bounces-142560-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E50AA25B8E
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 14:57:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 473F51881517
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 13:57:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 996C5205AD8;
	Mon,  3 Feb 2025 13:56:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cobwUbxO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C881205AAF
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 13:56:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738591016; cv=none; b=eVOpYzdXf58XpdhMDOQsLz0Ouh/dPRXwE6hgOfBPkmIDgn/PJZRVsJNQ8aLv9nMloF0nnylFuarxuDUW+S0lMa+m74RKdqSbwjHPKajO0D2NvUaglmljtK1vQCQKZnWrj2hscPGok99rlbEro7vEA86+lQjOFvBK403X7VgpO48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738591016; c=relaxed/simple;
	bh=zz82p7hcneLrafwVsfA0STSZi0ieg+1/nWnNxjI3JCM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UOC3LTE1phCCIBQksWQ6STb6S14kv38wHlE0FjRcY0decGF4qK9TSadhhKsKnx9TjD+GUqwk6X52m31R3wv5jA3Ouu+LjvNcjTpgmxVe5eQ21QT6eLsEGjT2cdNJdwJDmURodvnHXkOSA7HITT2uHJQ+dKh2ImtJaRVGJi8vmUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cobwUbxO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5132cSHQ019825
	for <devicetree@vger.kernel.org>; Mon, 3 Feb 2025 13:56:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	N09aEg4/UjLzB5RTR47KifPhflhm9MeBFZX2WuYWw8I=; b=cobwUbxOXAsBqcnw
	Afsp4K2iN0tc31AOuklNlCpwBhZn1lPVKBCklKB2jmMLjvPvcasZCR3u5Qt1URcu
	aInGWPfl7p4hWiLeSzyO2ev0VpVSc80Pe7b3pC3lql2xsQMw29Vs7fHPwBQPg6Kj
	wlPU1mqL/3I3iwgDGi2iGXyrLrwkwG3rweKpxPYzOEnx9uU06QOANwUeloX7GeX/
	tGewfOdAsVwnC8gr6+nEs6odMVHKxGmWb6daVieGUodPJsjnrxEZqJjDEeDoWetf
	8YpL/I1cb6B2Sy2k4Z428U61IoEpJlqCxxx2hpS4djOK+LtHYAEZnGpUR/DzV+E2
	w4AmiA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44jn5vhfsb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 13:56:53 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6d880eea0a1so9756166d6.3
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 05:56:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738591013; x=1739195813;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=N09aEg4/UjLzB5RTR47KifPhflhm9MeBFZX2WuYWw8I=;
        b=WzVaMv7wEjS+gCyTZLJw+lAv0QjtBPwWdl2p6ZgXB/MIkl5bgaDGn8nByEiXKfGAcu
         C4KWcLfG6iK/lUA2iz0aAIUKNUPDzy5KBAbQW2VIFAgAJI9K2L7N3Xs17DBWaS8K3T9n
         3w/t53fcQLxGoCgFakl2ihY/1w44uBkK9o1A3BQzqOWUB2A6Z6A8oOhcrYdzrpuMVVVk
         qnrxoE46XrX4vNl+7oo9GX7tCx5SvtPtIhTApk02BMf+xZ4ZxTkjeDYwfQ1al37rF+G8
         lMAanahi5V0WJbxSLIIYJ2xLbJXw3CQ1QF6O/Pi8qeVDLlmFX5lYh39HIrxhEJxH4XsE
         Tr+A==
X-Forwarded-Encrypted: i=1; AJvYcCX+1IapDhi6O2Myvht4+DAGC1p+aYMUDY22hVqoqcmc5LYt21XRSFADsc7i3BGzH4+3JFG4g6BJoY6P@vger.kernel.org
X-Gm-Message-State: AOJu0YxscH4ya/jT4Cc/KULmG9WDTcxqNXtxZgMGj9+uLkUzdGZWOZC5
	+EdZvjZcFWt8hqzqGuUlMyzR/w4HSbHI5OlVdfXSt+RWdEupmVYTPCS3CcX0skPifC+wewFucsr
	uqv0KoyYjfpzO9cJyEuRn8HrFjLKQ9ZxATFSMwAsjaACjK7KoGDfawTbvvGLi
X-Gm-Gg: ASbGncvvjTm3ENGGPlVlIukm6pr8d1H1OFIy2Qp3LDJ6gZ6x9LaUTad/+PI1ZYyBlc8
	WNX/cYK/1gtRkpqfU5tkrCpPmfz1kSsEjT2IcRFGAxJMGLs0P8j0Cj0OSG/ybPsorYHU1b/wxGg
	j/4RDjMeH/rhrNw7geBvFpSqQN3J+jJsq2ZrXR3+PUiWlGm7GgRmVpvY8WZOpo5VzOYYECQ1wRq
	7LKyGjoqOSit3aUC3Mv/KOYATdI4Jf1DfVqRUSjXmwO2lEJ71twIx5LJ0O9Bi4ExVE2w/CcHukF
	Sy9ib0Zpbd6ktaU4pJW4yMqJ0if0EndB59oRrR2Py6YckMubzozS/YFzaw4=
X-Received: by 2002:a05:620a:410e:b0:7b6:dc0f:406c with SMTP id af79cd13be357-7bffccc503cmr1279660885a.2.1738591013156;
        Mon, 03 Feb 2025 05:56:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE62P5OcOODF9zaK87BlabKbKuPd8Li0k9f2+3Xiecc6zvEmDG9TbpzHHpkVZFYZoCSltuIgg==
X-Received: by 2002:a05:620a:410e:b0:7b6:dc0f:406c with SMTP id af79cd13be357-7bffccc503cmr1279658385a.2.1738591012780;
        Mon, 03 Feb 2025 05:56:52 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab6e49ff3d4sm756840066b.112.2025.02.03.05.56.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Feb 2025 05:56:52 -0800 (PST)
Message-ID: <f63c0fd0-e94d-418f-b921-4e7af9d43c31@oss.qualcomm.com>
Date: Mon, 3 Feb 2025 14:56:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: qcm6490-fairphone-fp5: Enable
 display
To: Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250202-fp5-display-v1-0-f52bf546e38f@fairphone.com>
 <20250202-fp5-display-v1-1-f52bf546e38f@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250202-fp5-display-v1-1-f52bf546e38f@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 3okX9bjIDoJw542IEYgho0hXjxXesPO8
X-Proofpoint-GUID: 3okX9bjIDoJw542IEYgho0hXjxXesPO8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-03_06,2025-01-31_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501 mlxscore=0
 malwarescore=0 phishscore=0 spamscore=0 bulkscore=0 suspectscore=0
 lowpriorityscore=0 impostorscore=0 adultscore=0 clxscore=1015
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502030103

On 2.02.2025 11:45 PM, Luca Weiss wrote:
> Configure the MDSS nodes for the phone and add the panel node.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

