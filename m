Return-Path: <devicetree+bounces-137078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 85EEAA076D0
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 14:13:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E1EA7188B1C1
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 13:13:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CB7221883B;
	Thu,  9 Jan 2025 13:12:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YvIKrjkJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E38B319D087
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 13:12:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736428361; cv=none; b=VxILMmzNGC7+Gdynv/fEKpSybum5FKFgpvfa/6v1f0+eJtANk8zBg9LHE7g27quzREEJAHjbyQWYnKxacdBSoGnOHAmuJf/i+91Xqso0yeKf754SeSkcUMyWoqx62wcReBJGZ0Z7o6B4C+jMuHrozFDvGg7GmdAMh+iVmTIjqVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736428361; c=relaxed/simple;
	bh=jpwNmvkXoNR6B+tH8Sx83R+MPfKaIHFv2zRN1lJcpYU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Hrkdugzrdg+9GXsdTQwB12tOJVf4Fl+BziGK94EPKYc3e8Ffx27VtPsR2LY+RBB4o6wizqNuKvfdOrQ2Ea2WQTXRASWljsECzrHEwBqGOzV/B6c/FtIXncowMf7zXkFqjqNjZmCRXGd7isnN6GUpOHX9wGo/0QIItWauS9cMHGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YvIKrjkJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5099NWCT007923
	for <devicetree@vger.kernel.org>; Thu, 9 Jan 2025 13:12:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aVaJFDIFSQan13L04M0avNtyYD02w5zrm6M+LsFD+O4=; b=YvIKrjkJxoxcyDKD
	Wwq7jWSrdkyzrqBahfEJEIZD3W+Mt5F18dVqf+y4yksk0VzjsErY9/AKn++PcmDU
	4q4PENSVxb36XDj4O2MYS1psXJpWl1n+kyTIVMxhOypKgC5ym1tD/QwJwJYg1axy
	1m8ufri1XSTZckvJYt8h229KQ2EwUNAxGQsWHSPVQIh89QPWahH88O7LPppUZFBb
	oLoyYQzMZaVCVPG7lTUOgGehtItH4v6WnzajmQz8Icz7XQLFGvAVpgutPMZuRUFZ
	CCqDJGZeRnKfRiULALWmzI3S7iwzEYMEAvm3ved76setlAoogX0eFMKNQYPLwdxq
	KOyssA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 442bsm8h36-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 13:12:39 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-467922cf961so623991cf.0
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 05:12:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736428358; x=1737033158;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aVaJFDIFSQan13L04M0avNtyYD02w5zrm6M+LsFD+O4=;
        b=rau4iDiaSapUKJ68zB7XkG3N+xpgOLvUbAPfCD2YpIgpI8E98vxLhKk8jbs4/EaZGV
         2J/Vh4XDbvf8TDfpGNrUiaLMuu1dYTH5DTpORDxxLkSS+qJIsDXkQwB17otyCri70xPY
         ndD3IgLOLGN9gVBQeelM28JbQt0c9D3MyAYPswTyPO1DxwyXucJZ3IOG9Epg7cCrMLwx
         w444CVD09LCDhLcq8spL4AgqP+wjyRVkf+cJX8R5PlD7p2YqDkvhlrBcTN1nGBLVEo1z
         sgaRXAboFBi8vEBIdRULYZVutI2eW9r760k/s3pgiuVTG1da8WMu8qa60qPnFbX9w47M
         wkUQ==
X-Forwarded-Encrypted: i=1; AJvYcCXdn+psrB6C3ppyKO4BnU/tubv4owLPVO6TiwJkkWv8r3h7QeIx/lmJej3EoD3rPenIdu9lw/tQdr4I@vger.kernel.org
X-Gm-Message-State: AOJu0YwgRuhPIXgD2h5LTt4sAuYMF6wTOxtjm7GDNmb4wyZH8gNfOaR8
	vYhQ8PC3bVThZd5EPN2OEWtqgDMW5uPttVGzVbxX1q2jkJBvRFmTIHegYzdRWWiU2a1YwNWZXEs
	maeMGUJBMYD/jRhkNQov8Hi/nfpGRpg24I5sHIEj320OQCFcoBSuBdE6iaq0+
X-Gm-Gg: ASbGncufNZHFq+rtAvK0k1FMBUS95YjCK7aUWGBX78mFj+yOelaJUlyvM0NtjL2DgsY
	kHaItEJHiUiG6//qLw+ztmhtfY4Uh+gu1Lyp8IYi7m6Qhlio0HwxWvfI7oguRmz7WzJkKp63zJ6
	3N9d/Jq8DpRxTgxIl2SISEHdUB2RFptF0eS5USYL9aiecozZvTSxxUYpJQMXaEnvRG5/YGoxXmp
	mr2aPl4KtBQk3UIoRstIGFu88rHbDdhK6Ozg0WfmL/k405XweOofqcj+xvVrHBU2iKSuo3jfKmt
	bGquTWmjmlY9hD7Ea14nYAS/O9l+p5OxmOw=
X-Received: by 2002:ac8:5a16:0:b0:467:6b59:42e with SMTP id d75a77b69052e-46c7102b634mr38200151cf.7.1736428357820;
        Thu, 09 Jan 2025 05:12:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGkwHMLW9GjZHWcKUH2RSnFzZoO8UTVYRg9nJFkeAjeMJoOIke56jqRMFk/LL/dquo5VojYhw==
X-Received: by 2002:ac8:5a16:0:b0:467:6b59:42e with SMTP id d75a77b69052e-46c7102b634mr38200061cf.7.1736428357436;
        Thu, 09 Jan 2025 05:12:37 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d99008c37csm607503a12.6.2025.01.09.05.12.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jan 2025 05:12:37 -0800 (PST)
Message-ID: <20abe9a9-34dc-4712-8fde-b959eb3e22c6@oss.qualcomm.com>
Date: Thu, 9 Jan 2025 14:12:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 7/8] arm64: dts: qcom: ipq9574: add nodes to bring up
 q6
To: Gokul Sriram Palanisamy <quic_gokulsri@quicinc.com>,
        jassisinghbrar@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, mathieu.poirier@linaro.org,
        konradybcio@kernel.org, quic_mmanikan@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        dmitry.baryshkov@linaro.org
Cc: quic_viswanat@quicinc.com, quic_srichara@quicinc.com
References: <20250107101647.2087358-1-quic_gokulsri@quicinc.com>
 <20250107101647.2087358-8-quic_gokulsri@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250107101647.2087358-8-quic_gokulsri@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: t8RoIXgREtAY_5svXdVRba-Dp3yerXpR
X-Proofpoint-GUID: t8RoIXgREtAY_5svXdVRba-Dp3yerXpR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 malwarescore=0
 mlxlogscore=606 spamscore=0 impostorscore=0 priorityscore=1501
 clxscore=1015 adultscore=0 phishscore=0 bulkscore=0 lowpriorityscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501090105

On 7.01.2025 11:16 AM, Gokul Sriram Palanisamy wrote:
> From: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> 
> Enable nodes required for q6 remoteproc bring up.
> 
> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> Signed-off-by: Gokul Sriram Palanisamy <quic_gokulsri@quicinc.com>
> ---

The comments you got on patch 6 apply here and to patch 8 too

Konrad

