Return-Path: <devicetree+bounces-145337-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F80A30F57
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 16:13:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2DB783A1EE5
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 15:13:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB1042512D5;
	Tue, 11 Feb 2025 15:13:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Pme/+Vj/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BAD326BD8C
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 15:13:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739286794; cv=none; b=lvxSrkEnIQk50DU75RS9noc2hAxZYyeyybEZlbquTVxZyH7IkvtKshRph02W/BclKWm+ibXhOWkYCN4IlMnRCwZXGbG2blqAH7zonQpTpK/RK0Z/QOEgdS+FMRxgTFJfs834/StCQPRO6QCcl7xsWMoGfZFEWRCuu8yeOiNcYps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739286794; c=relaxed/simple;
	bh=SzpZB68mJtafxjD6jMIYoJsLxP06RagzsBfoAx4Ek38=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GeW/E8Q7GpXpfcJq9u5HFcolgPMiLZBypsSzqU+xocq+4LESX8CYAtBm3Q0YaQyWSobOKaLHKoPTRHOst05uFH5YBOE7qInJF2fnZN9SZiM6nQ9feP6ZFgSUu4ldiZiVRt0EvJW0pktWnQ6KM8G5e3CCNWtPYWn3bniVEJ6NiPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Pme/+Vj/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51B8uYZe001435
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 15:13:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	o3ptLIxI2GDJlgvE4iDhhe0gDDPLD6Y0/FQeZw9uDu0=; b=Pme/+Vj/0UaMd7U2
	usnZBDBkw/EJROGERztqdr3mQV+DrIJAOs2Hqr2gfO7lemKwATF8/JewnmJkRVcj
	gvQ0RIZGcbguhZxec/KX1OievNMmkD0HQLmsSAivWQPF6lXAR5dHuj5xDx/kpxPG
	yMyQHcyx1e5k3sQx8Agdd5EYiFxzDvQ6uTlqkxO35w/2WrMzuad6FFrzwBWSnFVk
	PPRofxEI+JCy02mEy8UnSy0+2zcSb38A7iFAFNgDiva8v17jWsLuCztkKUUODGpL
	u/A6dOoMoQUVJ7y2YrF7jl8/OQgyMC3wBHaXNcMQhCdbUPGfVy1i9fyZf24Kz9y2
	+bqXbQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44qepxmep6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 15:13:12 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4718cb6689eso5467841cf.0
        for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 07:13:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739286791; x=1739891591;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=o3ptLIxI2GDJlgvE4iDhhe0gDDPLD6Y0/FQeZw9uDu0=;
        b=KYdaA0uWPXWKFv0JosrSehrXHzs9gGJfzlyHSSAxP1Mm8T7Sds/uhZ9NnTM2RgWACD
         GBBuvDkOt4hEmgnm1wLf6RIsZTldBKiX3OUcI1uXj5Ppy4rgknkdHmp6+wE4Dh8hOe/7
         RVjCjX95SeQWLEfpIYCm1lCTjI/KHXk+bWPoyJZwUqJf27omVg1eAbsJV4Okc1qTyb4H
         UWgI9AYCJQ/vV79t4ifvwT3nkk5eHc3CZXnE9lIGmPRxy7b1odlzNWn+5veItzY6Py5W
         BhFJF6q+DkYi2ofeEfWDoV3VyT0MZZVb3Cn2BVYwY29nW3ej6plFsWTA+ThIVGiCZmv7
         K7eQ==
X-Forwarded-Encrypted: i=1; AJvYcCVGPwWg2wOunEqd78LK8z9FZlpnhSvyYA8i14kAB4/HF2YzpROTmMHGums9Km03vu8L6zNpNDqMS91c@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/QOl2MCww7ZlCtOTgnEi++3+SfKI+/xPVolIOJlPboVPnL/Qs
	9pRUwmTaOMBe+E1dDSjvq6qsyCZfk5w1/jV5EEDUZzbP11jP3tl+f6IZ9C9hObVUzc0Rr+pcgg0
	Dr4JAN/5JbVL+WW2bGo1Mlr5XXwdpYZrnpqTigOKRzzPFOsjbXswDT1Q9Z82u
X-Gm-Gg: ASbGnctmqzVaDUzSvNI6VfZc/5DxNbk8Z1Gu+AiZ4Yr3P6VMLvX+aXA+MTGtYPMZida
	mjlmDP+N1dQ2HxM7XgYJHV8IGysI0g2M90FLHmkUkFYmof4vr/JA4DI6aDPePpHNiaxfiibbghf
	DqEhKgYZkQ7a+ctQvdJNCYVVR4XloQykq5IcxwkH2yBN3vtb8k/1hwCCGgZRdGh/9VaiE98N/Tl
	PpvO+LVync6QP42U3P9/kipG4gnBkhnDq+UgX+vJhjDWlg+eehcCb9FM+tKxElqwYGMGHbGfhfj
	hyxs4ycRfOC3pGV3SvgES4Kin2dtyenkweZ2Jl7Wu7zAnphEV6YcxnxFcSs=
X-Received: by 2002:a05:622a:138f:b0:471:962e:2302 with SMTP id d75a77b69052e-471a3d77ae6mr15268111cf.2.1739286791289;
        Tue, 11 Feb 2025 07:13:11 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEbaYhtVsfvrRBBMgTO+TLZoVbUvzKTD9jlKqJcBMoq8LTiiKXgnQ7YVQgUGvGJJ5VzVmrldQ==
X-Received: by 2002:a05:622a:138f:b0:471:962e:2302 with SMTP id d75a77b69052e-471a3d77ae6mr15267751cf.2.1739286790711;
        Tue, 11 Feb 2025 07:13:10 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5de483407efsm8239642a12.75.2025.02.11.07.13.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Feb 2025 07:13:09 -0800 (PST)
Message-ID: <3f77d118-ae98-41a3-8a15-c8b5cada0e96@oss.qualcomm.com>
Date: Tue, 11 Feb 2025 16:13:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: x1e80100-qcp: Add WiFi/BT pwrseq
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@linaro.org>, Johan Hovold <johan@kernel.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
References: <20250211-x1e80100-pwrseq-qcp-v2-1-c4349ca974ab@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250211-x1e80100-pwrseq-qcp-v2-1-c4349ca974ab@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: OZWTdYxXKSarAMg1l-dH6kWBlfNi4woQ
X-Proofpoint-ORIG-GUID: OZWTdYxXKSarAMg1l-dH6kWBlfNi4woQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-11_06,2025-02-11_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 adultscore=0
 phishscore=0 priorityscore=1501 mlxscore=0 suspectscore=0 impostorscore=0
 mlxlogscore=999 clxscore=1015 lowpriorityscore=0 malwarescore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502110101

On 11.02.2025 4:01 PM, Stephan Gerhold wrote:
> Add the WiFi/BT nodes for QCP and describe the regulators for the WCN7850
> combo chip using the new power sequencing bindings. All voltages are
> derived from chained fixed regulators controlled using a single GPIO.
> 
> The same setup also works for CRD (and likely most of the other X1E80100
> laptops). However, unlike the QCP they use soldered or removable M.2 cards
> supplied by a single 3.3V fixed regulator. The other necessary voltages are
> then derived inside the M.2 card. Describing this properly requires
> new bindings, so this commit only adds QCP for now.
> 
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---
> Changes in v2:
> - Rebase on qcom for-next, patch 1-2 were applied already
> - Mention dummy regulator warning
> - Link to v1: https://lore.kernel.org/r/20241007-x1e80100-pwrseq-qcp-v1-0-f7166510ab17@linaro.org
> ---
> The Linux driver currently warns about a missing regulator supply:
> 
>   pwrseq-qcom_wcn wcn7850-pmu: supply vddio1p2 not found, using dummy regulator
> 
> This supply exists on the WCN7850 chip, but nothing is connected there on
> the QCP. Discussion is still open how to hide this warning in the driver,
> but since the DT is correct and the same setup is already used on SM8550
> upstream, this shouldn't block this patch.
> ---

Even with this warning:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

