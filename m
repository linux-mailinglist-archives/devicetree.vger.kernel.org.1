Return-Path: <devicetree+bounces-134923-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7413F9FEEBA
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 11:33:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2900216169C
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 10:32:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BACF51917CD;
	Tue, 31 Dec 2024 10:32:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eRV3D+PJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273DB18E368
	for <devicetree@vger.kernel.org>; Tue, 31 Dec 2024 10:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735641175; cv=none; b=Ru3EwCM2LWgrnHCUa3+DxHu8x9eWzNx7xpxwRyssmZe0RrswNFOrppvUsmgqk0iYCRMuahanExwLf6UHzMdNLNNrmvxTkjZhjtKGKPZv9faUQfghajJtRx8BUtGwniMW9J2mwXIcW73eU4PsGwUumIRpByzwMTKmMO9nlqa4dOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735641175; c=relaxed/simple;
	bh=unJrN9YG3TesRmJ6YNj5gaklJBK/gMnz7AsbP4vmibo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cD24kw+KuDXyyK0mgr/BmmQPpOKD7a9QQYMheShTd46kqB1Pdj+YF1stNA5drT1bbuEj5NdEvZ0IWd9WmpKUNPDYimGqqJe+jZnRNMymR7WubcuzTqjq++aIJXKPOPdeNh84/qQ+zzPKd0gYtdhuQ/avsqHSakI0gYJ0NEtx2Fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eRV3D+PJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BV5n5pL010213
	for <devicetree@vger.kernel.org>; Tue, 31 Dec 2024 10:32:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YSJC+oAIYFHch5VxryaXW7jbaxZD9NOaWfHg11T19a0=; b=eRV3D+PJpj8fjCSy
	4aNxjO6gdNimMFRQClI4GqQiDZDfLWbWRmh5OedZm1oLQq2O/n4iRq42KeKiwucL
	/j/igHgVdWOsb/VqNKSKmdHaWxip6OoXFhZDeLXb5n/MzCtYK9TXl+GVpqz+rC+e
	zKR4gD6LK833S65OyH6bqRI8xNiHzfLjoiUZAhCzy3+nfofk+5RkweAn/gbQwl6e
	vAmYnsEbkQA3enoc5ZGShgD/py/eto+2IQJMiEyMtzm65r6v77dNRD4D0gwIJvQn
	SUFoTaV8bBrGUY1Ce6WtkwyMXuxDIjy4cy/n8FLRrRy2fsVgBoLOp+qpGLIuA/FX
	ERzVXA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43vasy8m7b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 31 Dec 2024 10:32:52 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7b6ee03d7d9so62836785a.0
        for <devicetree@vger.kernel.org>; Tue, 31 Dec 2024 02:32:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735641172; x=1736245972;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YSJC+oAIYFHch5VxryaXW7jbaxZD9NOaWfHg11T19a0=;
        b=VqotpAf9OOllQXcoeuktv82SKxSJKkTS/Sxl6ER9EyVc3Zu07dhRN8ofjSwWpKecWW
         Y2YIu1LzbuIC1pJWSgxCuAfa3uxCCxyX1zrDlNY85I1M+pgPNd91N4Ds8jA0zoq4r6yj
         JCVPgnWiwF9hO1gBVBkQS/Cqv3nIkTBDe3pQdtKerEERSzLnclx4oTGeA2eGuVr7gZ48
         JK4tKH3UWyeGRdgcX91h2DdhA2heILLiSCiIy+Fu6JuNcVqqlBM8MoNOFmWBCvv7FJoD
         wtQ5Xftc85k+fNRPn8yuqFuAJcpIrz2f3wWFnotfL4L8sr/mzbWgxQESqpIMzNAJfGej
         hr2w==
X-Forwarded-Encrypted: i=1; AJvYcCWMva72e4r1xMiXyYH69LDcfHiUXOfSzniX7+Ep+tEc1frAEb1ap604vVdOvZG7JG+pT9fIx/ZBXFFQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzNS0vtbimyStCjF5JfQf9piOuzwMedfxaoocCX3na2fq5nKTfk
	hbDY0IJu20K8ww2ao6/HjVDNs2BnmaK6IS8Y8+lh7dYwzC7mkb++GLh0iqDpUM1Zv1X/ND4B2Or
	mJCgZs36ZV54VAImlGKv1J5RZcuKDGna00zMNVpjPkWuC5+ddfasEGvLO0/En
X-Gm-Gg: ASbGnctRQwz/NVXZFwPzGW43xdv1b7ONGAXtt+xgNfCprKGArlk37PSWU5Qr0TWZN7n
	oVSb9FYu1hrgIUYwtIiGw0aApLsWiVICJRjEwXhz2UzDjANKNtRzFlbLK78HACTXVSbO6eQi/6/
	dcFMvpHoY2Q1fIrtvKFMCjeVwe8pw/FaRCvaOxTzgGw6ghhvbrzIdF+Ie9JqFCKDgZDIqjB2MDc
	hY5QLXnSjWOiKND3smQmyWibq194nzQH90UQmqStoyJsOwxJHUdw0T6E3880r+lyFGG6KZ5rXDm
	QcZS9i2SuVCFeTdmABLWIDd/a4pvLZDnl60=
X-Received: by 2002:a05:622a:15d4:b0:467:6283:3c99 with SMTP id d75a77b69052e-46a4a8cdd7bmr241338431cf.4.1735641172123;
        Tue, 31 Dec 2024 02:32:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHev8rES9N0OrYAIAyswBL66viX51APNE3D7v2N9ryEeR9n7vvKglxjk0UBQxLmkedJMPFHTQ==
X-Received: by 2002:a05:622a:15d4:b0:467:6283:3c99 with SMTP id d75a77b69052e-46a4a8cdd7bmr241338221cf.4.1735641171775;
        Tue, 31 Dec 2024 02:32:51 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e830af1sm1560481466b.14.2024.12.31.02.32.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Dec 2024 02:32:50 -0800 (PST)
Message-ID: <3f33a94e-3fb2-4df2-91f5-59a92f5094f0@oss.qualcomm.com>
Date: Tue, 31 Dec 2024 11:32:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/6] drm/msm/adreno: Add module param to disable ACD
To: Akhil P Oommen <quic_akhilpo@quicinc.com>,
        Rob Clark
 <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org
References: <20241231-gpu-acd-v3-0-3ba73660e9ca@quicinc.com>
 <20241231-gpu-acd-v3-3-3ba73660e9ca@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241231-gpu-acd-v3-3-3ba73660e9ca@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: J4vpQM9cCP3DLY4yas4p2yxA-dvbH2H2
X-Proofpoint-GUID: J4vpQM9cCP3DLY4yas4p2yxA-dvbH2H2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 clxscore=1015
 phishscore=0 spamscore=0 malwarescore=0 priorityscore=1501 mlxlogscore=827
 impostorscore=0 lowpriorityscore=0 suspectscore=0 adultscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2412310088

On 30.12.2024 10:11 PM, Akhil P Oommen wrote:
> Add a module param to disable ACD which will help to quickly rule it
> out for any GPU issues.
> 
> Signed-off-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
> ---

Is that something useful during internal development, or do we
see ACD causing issues in the wild?

If the latter, would that be caused by e.g. outdated firmware?

Konrad

