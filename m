Return-Path: <devicetree+bounces-118667-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5C19BB308
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 12:22:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 652D11F220CC
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 11:22:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61B831D47AE;
	Mon,  4 Nov 2024 11:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nfRDemp9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C53AB1C6895
	for <devicetree@vger.kernel.org>; Mon,  4 Nov 2024 11:11:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730718713; cv=none; b=P6+f0VghidVe6tH4w9ZoIj2PHSxWnEac5tGagdF/xBLmMcY7TcUTlwgobJTNI2UuYzWT01xAskJeDtt6bnPwSSqsmkRAkwROvQDn5dnfqEm3isljKtGJuYV48PN0EiX9yhA0eslPwfo0+yZacDzhnn0XPyrN/iJL8zR7o9jLEv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730718713; c=relaxed/simple;
	bh=QF5qeqPKv1tyCvIMTbga0xwDQ0otiI62wU1788A6G4s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=E91W3vxnpxPOPhUooI1sZY/NG69IIn63I0hiRLnCbWBQH8bG/NDJX/uAc+sG1VFjObLs9gGEaPpC92RHyRc5XjVQSV8RmSadQVsOCLr1TouX0yAx4wFWbjb/lMdL9Fb1rzsl6xtYUcUh3v2a63nOQKubz9CML69wyDLkKJkY96o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nfRDemp9; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4A40N8Er014974
	for <devicetree@vger.kernel.org>; Mon, 4 Nov 2024 11:11:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FnLOBHCGGtHyCjziPaoUnh3eyHhBuYonYqV3aXjJRbw=; b=nfRDemp9yCbyjxxm
	sJEPwdHKuno8l4+TcI1JntZ/pZL78aWE+QPPhK6oUOyslqJWEeH3X3p8DHDgXkNp
	ZdUABjrVfAlfatS80imq4hmQNr3CgL6q63gi14eI1gR/TJtez7Jz8nL8AnJd/o3v
	J3wlB66R3sYf9EpOHCeCmqE4dtRjoOCPHbmPbDaSz0BsRRm6tI9pSOspQdbi+o0p
	DbnRmBMcEOdspcss16d83esFb2nrVZXREPAoEU8sAu+mlMQAdKPCaISoQibY6x4s
	Hm9431xz1Lrk2uZEpqBtLZRHCAzta/49lXaqhgfNP6JeqxHnpViuXRwYRcSib3Vd
	cBeekQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42nd11uxxy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 11:11:50 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6cbe149b1cfso14581126d6.0
        for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 03:11:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730718710; x=1731323510;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FnLOBHCGGtHyCjziPaoUnh3eyHhBuYonYqV3aXjJRbw=;
        b=IytB/tnK7AcC+C/RMqumheYpuJ8A4q7yBfX7uv8fxHURbKZmGXvB/JKn8kqQuT8rWf
         T6KaJkVhZY9cvzLJcuuVaVYfygKC92n0lmLPhUB4NSl99LozuDYTA4/0Qw7Y9kelzw1I
         u/kp1LzErjv6HFr9tgNDXD7SvHgESnWnz9jr0vUEmHeZustM+DwG0lGdcWgAZib8+Z0f
         Gk23izkFKEjb3fj/5snDzcpOwkkSGmRe+JZB1L7iwB9fnjh1MLgJiaFJupVsjE0He8qe
         C+wgXgRuYOnQ5PrQAHYjceHVNnRuyTuQ1bLMRMdMWKlHDrz5ll9cWFEpJqOIMOge9ox7
         SPbw==
X-Forwarded-Encrypted: i=1; AJvYcCU5LGTf+nAaPmyGbQ985JwiIfawMUgpdB8nM5VdstQyzoMhuavkTU1N34ca3a1VafM+xj308WQUaj54@vger.kernel.org
X-Gm-Message-State: AOJu0Yzt6xZDvZSkjW591VYOeblMNUCxLil732gLdwQD1JotgQTjMsyG
	21sUKqFm9gECc7t8gAHa4mGujFEK6iLQCZV7nuywV8m+Eh73cNoeWRIPaRBiauOJDWKSDoSVr9v
	Kkiqbe7kLhoezImxywUag2C7W1kHoz/JDYTagD6W2H69zac22dSyrBu+ZFuXAjj9KUG8c
X-Received: by 2002:a05:6214:234d:b0:6c5:3338:2503 with SMTP id 6a1803df08f44-6d1858886d8mr235370796d6.11.1730718709864;
        Mon, 04 Nov 2024 03:11:49 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEthW7hWd0uAwrn8o30FFKo+68/sUmkTx97LA8okPZrmjtw/NrlKbGtAzwGCR1uo9lHM4+CfQ==
X-Received: by 2002:a05:6214:234d:b0:6c5:3338:2503 with SMTP id 6a1803df08f44-6d1858886d8mr235370556d6.11.1730718709555;
        Mon, 04 Nov 2024 03:11:49 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9e565dfa8bsm541905066b.103.2024.11.04.03.11.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2024 03:11:49 -0800 (PST)
Message-ID: <350c6332-e6c3-4d8c-b147-36fba68b3190@oss.qualcomm.com>
Date: Mon, 4 Nov 2024 12:11:47 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: qcs8300: Add PMU support for QCS8300
To: Jingyi Wang <quic_jingyw@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: quic_tengfan@quicinc.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241101-qcs8300_pmu-v1-1-3f3d744a3482@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241101-qcs8300_pmu-v1-1-3f3d744a3482@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 6RvGxF8Pqx7a9OjGfyr70PlJ9y7f2qu6
X-Proofpoint-ORIG-GUID: 6RvGxF8Pqx7a9OjGfyr70PlJ9y7f2qu6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxlogscore=777
 mlxscore=0 clxscore=1015 lowpriorityscore=0 phishscore=0
 priorityscore=1501 impostorscore=0 spamscore=0 bulkscore=0 suspectscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411040098

On 1.11.2024 7:44 AM, Jingyi Wang wrote:
> Add Performance Monitoring Unit(PMU) nodes on the QCS8300 platform.
> 
> Signed-off-by: Jingyi Wang <quic_jingyw@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

