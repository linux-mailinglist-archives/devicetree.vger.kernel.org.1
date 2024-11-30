Return-Path: <devicetree+bounces-125727-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A49379DF099
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 14:43:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6540028188A
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 13:43:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDABE19AA72;
	Sat, 30 Nov 2024 13:43:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VK10XMiY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C9D522066
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 13:43:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732974193; cv=none; b=J/O5/pC2QRTWjQ5KkJCxAoZ4rtmKlbWgT7pl/BQJWz/E8pmq4KIrqXUVmm9BqdjFL8mtfq5CvGrmA1fjkI0lHyvVdocLVuvFBoSg6QaSMmN4Wt4RT8/NpqUQjI12ZBzJJ48WWcOnBzWTDqPUDbm45MYUKANamshxR47hCQ6jy4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732974193; c=relaxed/simple;
	bh=grBrgWFBcLUOaiRSE3/edYKfFqN2iEQy2qQlclkTI4Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ty8hOp79fLGULlPMBPr+RLDXazpl06BN9/WUo9tHCxYyX91YtTmnlT3zXfnUGs0Pf2hsS0Gar3oKIeRY03gt6EXCYRzqUlqY4kA9PTY191YbU7gXvxahJiuyz5JYdPYP6TxJox1YwVVlWN29lnjaVpgHQT/JcbY/V4F6tRLaBDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VK10XMiY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AUDNAse008048
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 13:43:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	v1hS0vcVSga+NYrQR8U/CivFXM7UEZxTji0ocr8yqOk=; b=VK10XMiYuCXFjxS/
	eAqZ3dfXq8qKyu/rrY43Y3ZJGwx78ZoIRWSvjMImoJBcRwDnYUHHdSnYmY3cxY1I
	m23ZYB7KjmMjCZd/tNlJV6noIHfJ+ye6BUaGXFzKwnJQLmAeYdch6ngUwrKjJXkl
	gjpoFyI2LXrm45kut4peL6cHb7E9U05B8db3gn5PpXn2PHedymU/4xDuSNfSdLx7
	podsbl+zhxffV5SFP15AmV23vqyXqeF0zJrFeX5mTDf2Z7FnsHsT+lxlERER3WYa
	mA8uL5Zw4o7XqBA0wAa2e3r5Sh9yfVpTzOvnnSh83qpHAyU35E8hOW6CArRa6PnX
	BtxL/Q==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 437rde903f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 13:43:11 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-46692fb862bso3542881cf.1
        for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 05:43:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732974190; x=1733578990;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=v1hS0vcVSga+NYrQR8U/CivFXM7UEZxTji0ocr8yqOk=;
        b=gqbIkDNj+PPImHV62zquGLobzvAZfCz6ps+J8cyofghQaMBF/m2zN6YDeAzUsn+wM2
         hflsgAWqAelq/kcTb3sWgtsZ9SnX2WavDa63jsFlmyj7fxB2mxFTiDeHfTEywsn3cBNc
         /u6L5f/kQtdJWQIyDnD85j2OxaiNkJxq2eQS9LX4JtTPPLwROeKImAa6VfITYJzgzC7X
         FmggNLPOWOTkTJXgQwqZ9RaeS5ik4nrkRA4HzHUKEEyOpaEX7fENUU6azBI1Aej7At1L
         bJWc8U57NzGs4u8nJ+AA99lc05PNMP5EcKK8U4cLCZ8zu5Uy5y+5VP7Q0utQsRWVMs6c
         MuuA==
X-Forwarded-Encrypted: i=1; AJvYcCVJ3+bj4FpiSrOSGOSuazBqZiq64ZjOHyrhgDzIgku+D5DagmCqPTcUCn2+7lUEsshhFbmfc25EMYaG@vger.kernel.org
X-Gm-Message-State: AOJu0YygS4ZZWWqaSykUGqIP1jv0hDPkSIwA6QIOK4mDWtP4gXEGlvqG
	4N/dXZI4Ij6whPID5OBXlQhXgpuO6BgKtzYjQ6vWGIYKfe5PPACly4hryuBLmBOyxzBwMN8TSXg
	MQ+rd6wSBAZf/4HQUeymjVKO7ZmGXvtQBHWN092w4TrVGUb6f1vh0rcffpMs7
X-Gm-Gg: ASbGncsnqx4M8p1LZnJxsWFJU6KTy1cM1+eTAr5ScRasuAeUgJ8WGNOG8+iXpfKAHzk
	KXvUoa81y/TBB8ClGMkYilkV8Ke3Ogu8nmbT1wxRVDo/crwLny2rN5sinOHFqZgTLi5jrJ54yMe
	dLe6XrwAHl7DohrsaHW10bSkwKoE03naivaWwGTwrxCUDzeh+HMWk5/ZKF1vpn/SWYjDQPr6mEq
	ZvoHTpjqnIwyKQdy2wt7I2zfpkWmg33u+J/aIOJxecGlCqXmkvxnOx0wuug7/VaKbOvaAJpLL8w
	huHkQGUp8QUv0QtOSMdXDxt8PLqEZZc=
X-Received: by 2002:a05:622a:19a2:b0:460:9acd:68be with SMTP id d75a77b69052e-466b34ed7b1mr95186531cf.5.1732974190127;
        Sat, 30 Nov 2024 05:43:10 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFdQkV3XDgMM42xOm0M80R9Lb5K62gj/42Xpq3XSJPAi+a1WhSXxCbcCgvSEKn5dX73E2jDew==
X-Received: by 2002:a05:622a:19a2:b0:460:9acd:68be with SMTP id d75a77b69052e-466b34ed7b1mr95186381cf.5.1732974189776;
        Sat, 30 Nov 2024 05:43:09 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa59994b837sm279071466b.176.2024.11.30.05.43.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Nov 2024 05:43:09 -0800 (PST)
Message-ID: <7dc72269-63f0-4370-9564-e329bf53ea66@oss.qualcomm.com>
Date: Sat, 30 Nov 2024 14:43:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] arm64: qcom: qcs8300: Add ADSP and CDSP0 fastrpc nodes
To: Ling Xu <quic_lxu5@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: quic_kuiw@quicinc.com, quic_ekangupt@quicinc.com, kernel@quicinc.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20241119120635.687936-1-quic_lxu5@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241119120635.687936-1-quic_lxu5@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: u1XmqOd6biB5BXlbBSjygYGUcr2GynFn
X-Proofpoint-GUID: u1XmqOd6biB5BXlbBSjygYGUcr2GynFn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 mlxscore=0
 adultscore=0 malwarescore=0 mlxlogscore=673 phishscore=0 suspectscore=0
 impostorscore=0 clxscore=1015 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2411300113

On 19.11.2024 1:06 PM, Ling Xu wrote:
> Add ADSP and CDSP0 fastrpc nodes for QCS8300 platform.
> 
> Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
> ---
> This patch depends on patch https://lore.kernel.org/all/20240904-qcs8300_initial_dtsi-v1-0-d0ea9afdc007@quicinc.com/#t
> Changes since v1:
>  - Remove duplicate cdsp fastrpc nodes
>  - Add adsp memory-region and vmids
> Changes since v2:
>  - Remove extra duplicate cdsp fastrpc nodes

You removed effectively- duplicate iommus entries, no nodes were
removed compared to v2.

Also, I hope you gave this a smoke test, as some platforms in the
past had very strict sid/mask matching policies that didn't really
evaluate the effective value.

But it looks good now

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

