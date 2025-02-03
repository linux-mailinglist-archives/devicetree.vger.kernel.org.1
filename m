Return-Path: <devicetree+bounces-142539-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D689A25AE8
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 14:31:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D11753A2CF1
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 13:31:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87D872054EE;
	Mon,  3 Feb 2025 13:31:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="O7wVcHe3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD9820459A
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 13:31:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738589500; cv=none; b=JU90SmbiV9cMQyBKVv2ekWlsbt3RhAAZBMJJF2RIRQt9YWPMdi+wv09IZ9VfDTM5QVi+hA9uPXu2b7xRgyX69YVGbKYUeDeRiB6YAUop0moaH/iSyyyqnrSW4Yv3NCaOZOdh+TvWcgQSD18nELUqIQjxfCtGeDAWjEUtpxFeu6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738589500; c=relaxed/simple;
	bh=Eund3jyuYpLBfbJJeLLP1e2poBQTo0E2uMapFZwaFzc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Wv3KWmm8nmCwsY+8uQ4cx+peajasTPmYkAYSZA7ENN6u0I1cZwFLHQdeNy1XDH6amJggbtQLIkukOBQTtK/CJJn0LHluBeNlFagQttpMH9B9w05sY607Tpvqo+T7NSjs+BFtXnkteHB7togZhtY+gbS8/ufzdLyRVdm19LGx2dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=O7wVcHe3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 513BEUlK002263
	for <devicetree@vger.kernel.org>; Mon, 3 Feb 2025 13:31:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vrASFeD/RX4xjdEkuTjuGfeyLiwa5UYBF/k0/MGX+wA=; b=O7wVcHe33uKMHIdB
	WsoiU0cihmV9AEnr+jhall6c4D0pX22Wqm9WGGWczeZV32GWHINPm0EQ5PJmHdQk
	hkpdymHTAvZffi9B5+/tLTfvQTjqjolLRECssI7b45cGSC6FWFVd2rD8Gd/3Tfxq
	f0ohtR6kXZyCvIjH6ffi7Jyo9CWlVFAaSqoVFPwJCUVENRIo1vDy7Mzqww8ohJ2Z
	9mfsZunWU7l8Y605lRqUVQ6SFlZsEZh/aYRc90upTOiyi2NJhPUYw5uMCrM+LV1s
	NkybT3WC3/BB0WYaXqZK4lthx1I1wfy15Omfw3P3eh1i0zDMxT6qRGROrEjcnySj
	CgM7oQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44jvrkgf12-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 13:31:38 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7b6ea8fc9acso42803785a.2
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 05:31:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738589497; x=1739194297;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vrASFeD/RX4xjdEkuTjuGfeyLiwa5UYBF/k0/MGX+wA=;
        b=QdK3yiGrp6Jj+9BD5rLGmSrZAEFsfLQIiJ9MsHMf3IdZiRFF7N7/kdh1kVpJxKqenn
         KU/8RYu1zJw8kqfjUCR0ALagaXzrxMaK9ViDParnsE+PnuJINgECcbbUPzonkHZiFmj6
         J2mL5437zGRAsTU092+A3+BkVH3LZ2R2LCYszpaewO6plSrs44ME149jfVTgX8WfyfTU
         zicjvBqKGO5G2oGTYwcwvT3RuVfrqlsRe3NikE/reR0T+u+NInaBgIAwMFSF5G5Xeml0
         M/a4HNlAyV2RBvmtcNXYIwmALsPaqS1sJHzWmRyffGbAsbVG8HE4doDFlhARAoJlmH9l
         WeKg==
X-Forwarded-Encrypted: i=1; AJvYcCWEbpk0LxvO+etEGNi51EQ+1hA/BvF5DotAcQDGZaD9TRLe4Sdb0RHIRlCM7s88RtDSQFSE0cF1JvEU@vger.kernel.org
X-Gm-Message-State: AOJu0Yzm+CPURQOSZQiMYtRP78BrpOUfySqnfyay9KBD0Aub7aLmpYg4
	8EJsb9c7PQ8YcG1OuSMtKe0VFsaeiHGgOyZVoTChJsTY3/NT0u8rqnz/PCZqXG++MxRcQdPSDGC
	LR/i/LArZQ1LNLg5WCsNKt9SIOmTN5OwZOI/EBqIG2RWimhTPRMRz7ZhWMOyT
X-Gm-Gg: ASbGncsohMoyi4np2oNeUFT9T0tBk8vuoTpZGlDXMe1EoTa244KLZyXlQ21TWmli/q/
	59Po+WFc03/akWAVynMexwWV0KrVCGMwfM/toYrLOH/zAFtlbM9KaRPuBPB+fp+gMFmZsqQVTBN
	alT+5C17SoMRc1KLSqwwGe48fOfmvWtO5XZkHyDua4qjOj30/AEnE+YkFoRt8m+/n4WpzdcztAJ
	7dlc+3Man2m/8YNaqmj1uiR5GJIVBzRcj0Ncj3STtqoVhm019JIF5Q48JXsmw2/0ouKMHC2g6Al
	naDNLiBZQyYwx2CoJuyJ3S/kn4rv9Rf/F7SUxuP8s/vTH9XH64YFEsWK/3k=
X-Received: by 2002:a05:620a:2893:b0:7bf:f916:fb04 with SMTP id af79cd13be357-7bffccc3ab8mr1241595385a.3.1738589496888;
        Mon, 03 Feb 2025 05:31:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEs68EfozOwNdu+DSV1z08SRJZ9lyVINlog+cHHktp74/5Pcqzu8Q9zG+4nimud0zJg8y7AmA==
X-Received: by 2002:a05:620a:2893:b0:7bf:f916:fb04 with SMTP id af79cd13be357-7bffccc3ab8mr1241593685a.3.1738589496538;
        Mon, 03 Feb 2025 05:31:36 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab6e4a54fdbsm750176966b.162.2025.02.03.05.31.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Feb 2025 05:31:36 -0800 (PST)
Message-ID: <e1f066f2-d8ff-457d-8d10-c08b525013c1@oss.qualcomm.com>
Date: Mon, 3 Feb 2025 14:31:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/4] arm64: dts: qcom: sm8650: setup gpu thermal with
 higher temperatures
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250203-topic-sm8650-thermal-cpu-idle-v4-0-65e35f307301@linaro.org>
 <20250203-topic-sm8650-thermal-cpu-idle-v4-2-65e35f307301@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250203-topic-sm8650-thermal-cpu-idle-v4-2-65e35f307301@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 59Wyt7n6JCcAtnGxtFmrEPYE9WYUWY90
X-Proofpoint-GUID: 59Wyt7n6JCcAtnGxtFmrEPYE9WYUWY90
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-03_05,2025-01-31_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 spamscore=0 malwarescore=0 bulkscore=0 clxscore=1015 mlxscore=0
 adultscore=0 impostorscore=0 suspectscore=0 mlxlogscore=977
 priorityscore=1501 phishscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2501170000 definitions=main-2502030100

On 3.02.2025 2:23 PM, Neil Armstrong wrote:
> On the SM8650, the dynamic clock and voltage scaling (DCVS) for the GPU
> is done from the HLOS, but the GPU can achieve a much higher temperature
> before failing according the reference downstream implementation.
> 
> Set higher temperatures in the GPU trip points corresponding to
> the temperatures provided by Qualcomm in the dowstream source, much
> closer to the junction temperature and with a higher critical
> temperature trip in the case the HLOS DCVS cannot handle the
> temperature surge.
> 
> The tsens MAX_THRESHOLD is set to 120C on those platforms, so set
> the hot to 110C to leave a chance to HLOS to react and critical to
> 115C to avoid the monitor thermal shutdown.
> 
> Fixes: 497624ed5506 ("arm64: dts: qcom: sm8650: Throttle the GPU when overheating")
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

