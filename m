Return-Path: <devicetree+bounces-115932-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D9ECC9B16F5
	for <lists+devicetree@lfdr.de>; Sat, 26 Oct 2024 12:20:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 93084282FEE
	for <lists+devicetree@lfdr.de>; Sat, 26 Oct 2024 10:20:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 021FB1AB536;
	Sat, 26 Oct 2024 10:20:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RbqzqQbc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392F313B294
	for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 10:20:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729938051; cv=none; b=eQjmXsUHnPwxleWy/dZYvEC16Q3sCv1KF2YF7zDk69BPc/i3qYNJZR8gAR51GfMEkpclyvxgDnQQQQYWbZdfl7v7vRgRllBuxSWHingwsV/PtDYUHHed9Mao664Scqxl4stfQrJU1NKyW+QTLhg2GwU5MCkGQzKK042OGuwbqjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729938051; c=relaxed/simple;
	bh=Rgaq7ReqIAQTm40Lwr7SvibuzkW5wbR9WU+yEHhQ5gU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CFaDqP3coewhKdKc7vm9naCFoIZtx+8f//IQabnRx9Qf40MKlIpa+L8yv9EHmWHaHurQz3UAr6+kRyIlnfibcUMcWoWX1zZGKWgBM7Ta3aZTXvMj3DpIQ1P/6QV2jlBqD10u9iuXTUoSBnlfRy5G9VM32Ztz2txfX60j/h9pYuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RbqzqQbc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49Q5jB3h016371
	for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 10:20:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UdsYLf/p3CQkr1b4rIZAdrrJ1e3MWxNTEnsDId7lgG8=; b=RbqzqQbcLBbtqQTF
	iwlHy/k1/epo0FYSmFHRN+JzNUdLMqsZE+BsTRAD9phq4vzjMRWlMgwIcGv7uAk5
	AW0nNS34AALofTfEYcw/MowVI170NwoKnVjXzxFQxQAsa9Z7ceePB/ZvReffoXcJ
	Go7XAJ6kb8Dm6BP9RE7ciQrrRoD/HmQ6vJVlRB+QOqmMIWu3HECJocjBysumWadd
	PJ1wVtZ1w3kalTmNM29kgSpVFnu1pc0lUc/DWoaxkSdpQA/0kF0xohRo5SHwb++h
	wqQa8wgJN/ycsS807EdaOMu7Q5xLUkBQCVXjLyY5y8M29NyPR933utwkeXybkMKf
	XqTKOQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42gs6e0nsx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 10:20:49 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6cbe149b1cfso8541576d6.0
        for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 03:20:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729938048; x=1730542848;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UdsYLf/p3CQkr1b4rIZAdrrJ1e3MWxNTEnsDId7lgG8=;
        b=lB9saVBhogJT4psAj8irSx4lffpGmUI8CqcqIPuhilKobY3zG9zZbYOiiknxg7ADM5
         atET4ASOybTUBxluGA8PienwMHHAEqs6iB8/0kzshtJHSQWyu4BoyRtMG+SrFD+w5/ee
         Tc7lNJ2xeHR38FQVaPsnG3L1Y63QImycSPac872yEkP1t/GBK3fPU4R5srOr/SiFcrM0
         HHTQFK222gwqBdZDtii9eVjY7AGLHNYTPRlfTXMlwZZyVAo3++AiDo8qpymGNcfiu0CX
         BO99120rywGK7mmfB7xEneb/3Yhoyb8Qlh/hQRcfVb6Q6zE3alaSjqJWMRXjKbndRKez
         YnjA==
X-Forwarded-Encrypted: i=1; AJvYcCV3St4VCgSkN/o/+ufT1BMLUMBl+hM6Y2FFFKI9AWH8DxyCOKUo5OC2DNajybaVQ5EoFXTfFecafHPJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzpZpuyZae2tyFfOSwkcgoZwzNHr8456sPuZeP4UQtd13jUnR88
	cZW/D1UnH/y97HnmoMPyOxFrPFKZeR620dP7at6A5RFPUzqPajyyQ5vbKA9BdXsZ4LpCwr7tBuy
	f2gXKobF8dDM/HdRcFUujuw0P//l5g+/6HPMBjdpNBL3tFS4blwLGHYxPX6ox
X-Received: by 2002:ad4:4ee2:0:b0:6cb:31b8:43d4 with SMTP id 6a1803df08f44-6d18558d937mr17693066d6.0.1729938048106;
        Sat, 26 Oct 2024 03:20:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGvq6DKxhjnd3S8AuLNtEgeBFkxylZ29k9JSPOQ/x2U1+UIqTqjZ8WzJSCKHMD/gnZHKKfXaw==
X-Received: by 2002:ad4:4ee2:0:b0:6cb:31b8:43d4 with SMTP id 6a1803df08f44-6d18558d937mr17692956d6.0.1729938047700;
        Sat, 26 Oct 2024 03:20:47 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9b2f965d90sm160642666b.154.2024.10.26.03.20.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Oct 2024 03:20:47 -0700 (PDT)
Message-ID: <3bbbb028-83ab-4096-a67c-4d7f0bd73420@oss.qualcomm.com>
Date: Sat, 26 Oct 2024 12:20:45 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 01/12] arm64: dts: qcom: sdm845: enable gmu
To: Dzmitry Sankouski <dsankouski@gmail.com>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20241008-starqltechn_integration_upstream-v6-0-5445365d3052@gmail.com>
 <20241008-starqltechn_integration_upstream-v6-1-5445365d3052@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241008-starqltechn_integration_upstream-v6-1-5445365d3052@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: Q9kwfd7RAbDrG6rpuxtaas2qevlCQFWU
X-Proofpoint-GUID: Q9kwfd7RAbDrG6rpuxtaas2qevlCQFWU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 mlxscore=0
 priorityscore=1501 lowpriorityscore=0 mlxlogscore=596 phishscore=0
 malwarescore=0 impostorscore=0 adultscore=0 spamscore=0 suspectscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410260086

On 8.10.2024 6:51 PM, Dzmitry Sankouski wrote:
> Leave gmu enabled, because it's only probed when
> GPU is.
> 
> Signed-off-by: Dzmitry Sankouski <dsankouski@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

