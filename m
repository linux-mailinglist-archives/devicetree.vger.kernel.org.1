Return-Path: <devicetree+bounces-247469-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 69C47CC7E58
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 14:42:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 573803023EFF
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 13:41:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACCD236B065;
	Wed, 17 Dec 2025 13:38:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jjHTJBiF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NUR0qxxM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303FC36656B
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 13:38:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765978716; cv=none; b=aBTY6lTkAq9Nt4kF5H09RityHtRgxSD/phdfQrAb/+/y3Yk5IFNq2CQFiHRAn5xqBZLbUXrgRAiMsTcG5PyPbCFQ5KdYZi7NzXhbYQ7OgZuJoQq00daLzGEifs498ki0nFJ3sTclFL5M4AN4yuXQ3mAu8Lpq12cGTRwepqWJfTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765978716; c=relaxed/simple;
	bh=qBsmSMkB8mpTkKHGzzntWtXUsP9GejRmq/cM9Hh1lz8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=A1mPx1ii5pBOz4MnoETWVtBtj++gBEQWb47ulRwoK1q9vhJt3uq0NVbVoDVVkXAT5JxnMHdQAbWtIGj5WN22iXOUVA4//HvkYP+elzKNl++q7lWlIYbUqXXAoS75vZ8hou2Bu02T8n+6bgvKynEANjNnFMX0+2+nfPLoS4+Z2Qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jjHTJBiF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NUR0qxxM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHCL8t8331464
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 13:38:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RExCqmuiZb7XbXWVxX5TZJ7UJhWSvJ6F76hdyqz/mZg=; b=jjHTJBiFTVCV9VNg
	XzpaNuvuAumVLzhEahy4pZoAudQ+niDB300Rk6DrfNuLj/Vsbqu7vd2mj7TJVln+
	e3hsONgeKM2t1RNWlJuCFRYz68orhS360IjaCv1qsJ8FedQBOcv2ZOfx6a76pn0W
	iyYk2idB9qMrrTuh2aOW8FmRk3U6H/Gw9L4WIAodqAFW4JlpsgsAaYWITWUhJ7wt
	6asTiFXbXazoYsirpAbP69jCgBrT5HpQcU+A4n0ozcfrdBRMaDDigVylPpNT71gR
	vaDQqnXDiOJoEQQunElWxBbBIYrvTrm3ZkFLLxN3cV+MNCD4CvRvXD/gPUSxTO+W
	UnIv6g==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3t8e0kv4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 13:38:34 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ede0bd2154so19383341cf.1
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 05:38:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765978713; x=1766583513; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RExCqmuiZb7XbXWVxX5TZJ7UJhWSvJ6F76hdyqz/mZg=;
        b=NUR0qxxM8KpU0q3iH1ykAYylBE3YBVfZVogoQtSkDti9MCiBm0PuueoI4PY/DYhlzn
         2qmBw6iKsxGNxXhyPDUpNrNTUaRkGmFQfz/WG6WHD6k890Mj23kTIwFvMczwYy/aY1cn
         MeDbs93XnTlwKOGxSPIW+TdL9W8Ft6i6fIHz4HVP4SfsbDoff5VLim1ZfYQa+YjiGV/p
         uUaSMXi/ViBwNbjeJFisiZj3r2POEywvipv82+cp8Bs8sIn+12gQz7WmuVpSE8q8ZOYA
         Q3lnRPDmVuRvQj8gYBhu0oMmD/5CfNh/HgrN3it3AVxlKCmtGP5Mys9O8q7dWA5O/NjB
         /2OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765978713; x=1766583513;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RExCqmuiZb7XbXWVxX5TZJ7UJhWSvJ6F76hdyqz/mZg=;
        b=ulqNBmXDPRUw1F+IkgUyIUtQI/Dn5AJAJpz0jTSI1MU7LmRPw0DObm+fN9+1Jzx1AP
         gAkv8di7i4BbisZt3OuGOdN5g7ko8pcfuVVMN8V7c0+13+BymXCTFnH1O/2dLg1FXQ8O
         szxplm8Tpu5RXdf6/2fSav7Hs34hrX1qrTtd5zKaRf9lqqTSlQassTuluHStBwkQA3aU
         A9ofqfp0fCPCGqX3Fbrz3NlpBtDkmGEjv6AKQYOBv1zQT6ntlMbx3qZUFN4vgLkdg9lc
         oW8BG4OLGMJSsJZKOmLA2xhN5PuJbbBQPI2nc97FwllNBSV3h5TRrN59xQsdeXcHqydY
         6bWA==
X-Forwarded-Encrypted: i=1; AJvYcCVKYOsTOu+F23OHkMn3yjNc+HUihOq4BMKF3vnLYL1gf0i9wHer72I1OIExHMxUsQa8hFjaFZP90K5i@vger.kernel.org
X-Gm-Message-State: AOJu0YyzUi1IcTzrs0iYYx8YdApErCwDlYicK4i+J9avKEmFNh8sALOe
	h6lEmu4NScwu3baYB/YaK/bqmpGxuI365ju12tpQx3bGnHoflQlg9FvqHTZNvzdP8rtSLGxjIkA
	FtIWu/Ad+2c03BOpBokKtCJiholmBb5276GciacFmRCWp96mFR8uDfvM49Sz0/vQ2
X-Gm-Gg: AY/fxX7p0Tw2YZLhlEYZ2ZDIJa6rdJaSpf1RepP6WhokWaSSvtfZagQfhTCQS2aVcfP
	ThWu/pTUrm0tTKRXwxR2QVmk/pBbd+lpeDcwlQJqfY2d/kV5KuGbZ9HsWYluiZTJAh0xIi9FLrW
	3cl6MNEQaYBksoZQPWkIcB5v5tlaTfGap9TxalOjo3Z4WcxGi5KM0qrcrvCxTdvc7CPsTgXMUNh
	Fs4ZWX41aj99hv11XRSNZeQg+dtPPJK7asc5Ibbw2S+DDjiY45uQUQCuxNTXOXaM8TRep8qculp
	Z+MYZWRXGZS61DnX7qlOoPbpjKYRvTYysZnk+5SBmhK5/MGSbsvNDYtzM80tz1sbfAkVwKv3gYa
	4i+XYem4Ra6vyEGYUClB+PTCYzNzQuA9plGcDwWepQLi8z3wb0MKydyLLFtA6STEDuw==
X-Received: by 2002:a05:622a:65c5:b0:4f1:d267:dd2b with SMTP id d75a77b69052e-4f1d66ef677mr132396661cf.1.1765978713347;
        Wed, 17 Dec 2025 05:38:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFeiF9tt3v1dbsXhSel/fFCb954NV3N4bJ8os04zl+9fTBlU5Gk5YaHVVpUzZ00cqHVe63bTQ==
X-Received: by 2002:a05:622a:65c5:b0:4f1:d267:dd2b with SMTP id d75a77b69052e-4f1d66ef677mr132396381cf.1.1765978712865;
        Wed, 17 Dec 2025 05:38:32 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b3f5633a6sm2540499a12.18.2025.12.17.05.38.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Dec 2025 05:38:32 -0800 (PST)
Message-ID: <692ed5c5-1773-4511-9d4d-7a6fb6ea8bbb@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 14:38:30 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6] arm64: dts: qcom: x1e80100: Add crypto engine
To: Harshal Dev <harshal.dev@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Val Packett <val@packett.cool>,
        Stephan Gerhold <stephan.gerhold@linaro.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Udit Tiwari <quic_utiwari@quicinc.com>,
        Neeraj Soni <quic_neersoni@quicinc.com>,
        Wenjia Zhang <wenjia.zhang@oss.qualcomm.com>
References: <20251211-crypto_dt_node_x1e80100-v6-1-03830ed53352@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251211-crypto_dt_node_x1e80100-v6-1-03830ed53352@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDEwNiBTYWx0ZWRfX4azOybyiFUJX
 gv1pElJnZDuMlAZorObjbThsrriH7VfjtwjfvbgDICYHFsooQY1LP7/Xi1F/4uWXpqaUURNoEyy
 t4o5CS+xoN0CwtURqkq7FoUm7vQ+JZwQFvmY9zZqQWqV3+TEq30ttk2AjZhEHCtkUgwiQek5sws
 iblHDDo4qgvWRQmsWN7LEnARzj6PnhsObNyoi/K33X0NrH4ZSNM/gN2Uy/51jaSOi31tXShKWUZ
 jhWqn7UxmcnHlEdaZvt+B4XmyigjBiy2zgMyCJsLEYAtqp1OUr29QvHbFcAO6TuJ4j28w422eI3
 +RoLZdaai1XAh423Tr4HvVi9qbzcNjtLlTGi3WqbMgABN0nVSNLL+6Qhj2Twhr+wAiX56N3NOyj
 z2j616EW2WxIKnzbF3FkWlPhEg0emg==
X-Proofpoint-GUID: 2KPgNTfGwKCq3q5-cPYMnbkgrhfJFqc1
X-Proofpoint-ORIG-GUID: 2KPgNTfGwKCq3q5-cPYMnbkgrhfJFqc1
X-Authority-Analysis: v=2.4 cv=EsHfbCcA c=1 sm=1 tr=0 ts=6942b25a cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=fLcEx35aZHfAyDpaXisA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_01,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 priorityscore=1501 suspectscore=0 impostorscore=0
 clxscore=1015 lowpriorityscore=0 phishscore=0 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512170106

On 12/11/25 9:49 AM, Harshal Dev wrote:
> On X Elite, there is a crypto engine IP block similar to ones found on
> SM8x50 platforms.
> 
> Describe the crypto engine and its BAM.
> 
> Tested-by: Wenjia Zhang <wenjia.zhang@oss.qualcomm.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> Signed-off-by: Harshal Dev <harshal.dev@oss.qualcomm.com>
> ---
> The dt-binding schema update for the x1e80100 compatible is here
> (already merged):
>     
> https://lore.kernel.org/all/20250213-dt-bindings-qcom-qce-x1e80100-v1-1-d17ef73a1c12@linaro.org/
> ---
> Changes in v6:
> - Added Reviewed-by tag from Abel.
> - Link to v5: https://lore.kernel.org/r/20251210-crypto_dt_node_x1e80100-v5-1-5ad22a869a56@oss.qualcomm.com

Please don't resend just to collect tags, the maintainer tooling
takes care of this already

Konrad

