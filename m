Return-Path: <devicetree+bounces-123786-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DFFD9D5F55
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 13:56:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CFEEAB23DF0
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 12:56:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20A5F1DDA32;
	Fri, 22 Nov 2024 12:56:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BJr8FhGu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BECB11D63FD
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 12:56:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732280177; cv=none; b=bEidnjLK/dL4MCBqt+o6Fbxe2/lxQJ47Lj9MkPyNm5g2bLixq3Vzv/nUxRGVvYciJ02I4+ZLhfEB3Iu/JDh7z4jyaWxQ3pU3BXqH/uNxTq0dFtws5x2E0CDKgvWDVFhEVdj3ZOMIlAHR/ejn3z3JaoUN40GIb4I4tYKfuTolu60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732280177; c=relaxed/simple;
	bh=OO5oVuYnc2B3ODhcqc01drbOppw1jE/67j9F715EyJs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=spOVHJiWt6iJU6OA4N84cadxLtEafh4AlE9Lfz5NvqlXjQ8HzYXellcAWCN7SFmuhkvv2G0Q/ZyNY2Gxk1wZx90BihqlR+1AFRA1RJ2xaRcgFPQaez9uxlAgHYARn5t08lbNlAfhDYU2qKliq7FBrLH0EY/63A9bAcF8ynXisAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BJr8FhGu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AM7Eur7015642
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 12:56:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tUW1JtHByRPvJW3av3yXvdSnDSeT0Wq/tBStqi3Mqhk=; b=BJr8FhGuZpvWhucl
	5S4DJ53D8opMhrDATMHKsaoJlru1mf5X6WoHhqRyA8oj91xbWY560QD0RJLSdBLq
	nGVvh/YTUdN5L8UdqrIzSBk9v25tLmIcqs7FaLp+Cmo6mcpO93XkYxx2QMwY+YnF
	TTFBTuQnRTJPlrMnTfaJa3+yDbvJCTqnYsvc6x0pWLmGHCBXZVD1kb/DscD6YQ4A
	Z1SR8nXTWDKQ1rxJxE4RQvqPdR/3cP41EVZRgNg3RGvebngcpfwzCBX0UKHbIPQD
	d1k9/zvVoA68/VBfLdR9zeJkhR+5s6IZG+xfTVPfo+HNuxo9A4QRauR/YTTEbXSZ
	ORQOmg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4320y9m6kx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 12:56:14 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-460903fc1a1so4954651cf.1
        for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 04:56:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732280173; x=1732884973;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tUW1JtHByRPvJW3av3yXvdSnDSeT0Wq/tBStqi3Mqhk=;
        b=oWLQpRw/rS6TGGAt7FTjM4AgH8AB4mayut33xajFfjPZrp9RTBVGzIAXv5qTYOXU1F
         NKPPo8WKpZbjkDaETw94ASmu2JMTFyWTMgQJ+xxFADjTlxNjCUuUQOoibyAeKUkJvR5z
         pxWMda+9pFkeEkba60hubQecXin/F3R7c/CglABM5bCxGWMqlBzWcztQzFgseFSDj8Rf
         Z5vV4R/t3NO/YpKtw49zP7P4LtP4lZULOsXh5mPSmtqIFUCvb6B9Bu1vAlp7mNnM53Fe
         r/hR+quYexKiHl6Wt+wPMWeaoTzplOO72HE5MDR29L7HUZMQuBjas0zKorCsTi0LM/Vq
         EWlw==
X-Forwarded-Encrypted: i=1; AJvYcCWEs/nt26TruvQ6s0bxjBsLhn+y7iQfRRSk1VoYhPXPDYdrOIqSyIA3Ul+nQkrplvIUPLAE4i4WHM52@vger.kernel.org
X-Gm-Message-State: AOJu0YyunYgY2f+4/ARW68p5uOHWB4a5EHrTPP1rO8g82Pq6cjoDMvT4
	zGlXVIG0l9n9RGrisMpwzRI1G5VIKpC2jwoQCvmjKUImLUEEs0aY1WIwLQwX9EzEIdYt6gpLksd
	8PLFYO3euyz8/U6Q/B4I+6I/3b281OQW3BBeACMNCnpPBPkjZBuwh9c9gUyeL
X-Gm-Gg: ASbGncuuM3s3wCMeML+a0BdCwvusKRjzujR1lvaBvaRusLFZPd7bjT5gyjhFfa0PSL0
	HTIhw+vst2SQaPJYU7eGBb7pQe4x5374HVELrRJKC0aSM/s4pbveI9zZGaxkqZc5MZy9gjxmnIv
	WtywmU/Xu9ASZfJgLiWsVpaKbQ7bCPxj4FuPTknoB546Ou/U2DYpfTNbike0vBjYfrtRCMKrVuw
	JOSmg9h5FkqJD165fHq66rEoYQfvX/b6r1wru3YRpfjBXruko1EW64lALdZOmEEtUQdG11MhnOd
	vogxh1BkUCXRga65v3Hmk7TSHOujUuI=
X-Received: by 2002:ac8:7d49:0:b0:461:3cd2:390 with SMTP id d75a77b69052e-4653d6207ebmr18354421cf.12.1732280173677;
        Fri, 22 Nov 2024 04:56:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHXp5AlSiVdDRiJeviQopjOcYQO2cIs6n/WiIeQPHdV9fV3//vnc5hbPIVnUu+s0vmPw9sPYg==
X-Received: by 2002:ac8:7d49:0:b0:461:3cd2:390 with SMTP id d75a77b69052e-4653d6207ebmr18354171cf.12.1732280173259;
        Fri, 22 Nov 2024 04:56:13 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d01d3a3bfdsm897816a12.5.2024.11.22.04.56.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Nov 2024 04:56:12 -0800 (PST)
Message-ID: <e107da7e-cc12-405d-b5d8-589959df072c@oss.qualcomm.com>
Date: Fri, 22 Nov 2024 13:56:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] dt-bindings: PCI: qcom: Document the QCS615 PCIe
 Controller
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>,
        "Rob Herring (Arm)" <robh@kernel.org>
Cc: robh+dt@kernel.org, devicetree@vger.kernel.org, quic_shashim@quicinc.com,
        kernel@quicinc.com, quic_tdas@quicinc.com, quic_aiquny@quicinc.com,
        quic_qianyu@quicinc.com, quic_tingweiz@quicinc.com,
        neil.armstrong@linaro.org, andersson@kernel.org,
        linux-kernel@vger.kernel.org, kishon@kernel.org,
        manivannan.sadhasivam@linaro.org, kw@linux.com, lpieralisi@kernel.org,
        bhelgaas@google.com, linux-phy@lists.infradead.org,
        conor+dt@kernel.org, konradybcio@kernel.org,
        Krishna chaitanya chundru
 <quic_krichai@quicinc.com>,
        vkoul@kernel.org, linux-arm-msm@vger.kernel.org,
        quic_kaushalk@quicinc.com
References: <20241118082619.177201-1-quic_ziyuzhan@quicinc.com>
 <20241118082619.177201-4-quic_ziyuzhan@quicinc.com>
 <173192264707.1449621.6365585789543415603.robh@kernel.org>
 <4226d136-034f-4b7f-a82b-e370ef265958@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <4226d136-034f-4b7f-a82b-e370ef265958@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: Lgn14RaQ6jFI4xqax-xnExYLhXWaqPee
X-Proofpoint-ORIG-GUID: Lgn14RaQ6jFI4xqax-xnExYLhXWaqPee
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 phishscore=0 impostorscore=0 suspectscore=0 lowpriorityscore=0
 mlxlogscore=675 spamscore=0 mlxscore=0 malwarescore=0 clxscore=1015
 adultscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411220109

On 21.11.2024 8:22 AM, Ziyue Zhang wrote:
> The dependency is missing, I will update in coverletter
> 
> On 11/18/2024 5:37 PM, Rob Herring (Arm) wrote:
>> My bot found errors running 'make dt_binding_check' on your patch:


Please don't top-post

https://lore.kernel.org/lkml/YH%2FfM%2FTsbmcZzwnX@kroah.com/

Konrad

