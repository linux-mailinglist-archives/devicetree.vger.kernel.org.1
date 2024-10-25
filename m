Return-Path: <devicetree+bounces-115885-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 479BF9B1200
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 23:53:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0BEA02830ED
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 21:53:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C37A1D26EA;
	Fri, 25 Oct 2024 21:53:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LBJrvLIP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE9E18C021
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 21:53:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729893192; cv=none; b=dfxzMtdM//HrYvZc1yuI+rQkrqCFWcJB34iIWiKoT2p7uxVyHoy3l9zPeRlLf1rkNhi9uMyYfMPwzDNR+EE0FUJtliwWicEGG8xIq8F9vvYjJ+MTDgsqFl8VoAmJQNb8zZix6/exCk8E6igeueJjV9GSEphRKHbp6R+MqSj/LRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729893192; c=relaxed/simple;
	bh=6GeOWhrjGYCL982yNJxHpDEKNaEsIOQVVRx6HDGXoy8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bFZX+RNdYKwsY4rjFB1RUnRb/5/LKzAQWOTZEkZyxz/sGJeDFE+qrE2bmekrqIFp3/P2T+/iQQbnNtZFUXFC2Tns/xQ64EE9rGiLFLzzWVobpvzSQbESPEV/tlh78qckprHZrJWcDxg9wRdjpFcBvTwruT4ZTTP2R1nQKTwjT+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LBJrvLIP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49PFLYAK022315
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 21:53:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6GeOWhrjGYCL982yNJxHpDEKNaEsIOQVVRx6HDGXoy8=; b=LBJrvLIPQTOZFtHh
	4hNeIqNAHQljwDqMckAz+j9xzXbFhzs6+Ak+hcga1GzDYihTW6GgQZVwkywHM7M+
	nDn/cPRGIxm5/yWo1T3AmOwPxiGeChnR40h94NiVlRIjqPyD/icXniRsRCuaJXQO
	a4nwrOIqHJYH/DQyK8U4km7EEkqfYwC6A8x9F1ZH5U8cK34waeduC1Q5wAxR126E
	vtZ+r4vTsVnf0c+V09jyS68THiCzNyr3GCSbE32509KGdbTltxuL9iwleH3IlZkX
	NjRsSuiP1zeKt0wmSCsjiGcq1uDn07RsJoid/pejxkNaL7RkS+6HXwPuEiQd+Q3X
	/UWiIA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42g6y928fe-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 21:53:09 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6cb9afcecb9so7388326d6.1
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 14:53:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729893188; x=1730497988;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6GeOWhrjGYCL982yNJxHpDEKNaEsIOQVVRx6HDGXoy8=;
        b=Q1Y7Q4Sjdne9N8qCbYCG/4TSq2zMR/YF3VYoPpy1LytX/kHXzg+t+nFEEjbM6oCyia
         iK+Dvr0fmzUdt9LFWkReU5OT08PeabyCSptfOFcB+SSor8lFwHunpnQu4conw88VGiUu
         d+qZ60Qw8BxQW+fuFkHgFJti2DyQd2hz4Wby0qiBFzjG5u13Rxyz/ovzqxoB07D3sVqO
         BeyWXiwQNIHPiW6ViNCPnWG43Zy/AX/7v9iJo8V4QOueC62//BwX2WDJjRjGgQ0B8qUl
         r9vRcWmBMzi9YaetHcmMCI7wPGQXYciFxKGp09EUbjSYstBt03VNWQLBhlDgr7wckjjs
         EoKQ==
X-Forwarded-Encrypted: i=1; AJvYcCUkCkJE3Jjve5fl/Fh9mESvxDP/Xk2mMy18QzBMPEsZfEtCefWKg4WvodQSv9f690TLTKp/NBE1VQzI@vger.kernel.org
X-Gm-Message-State: AOJu0Ywc4C3PHpgwW22Zrcp/6DzmvOhfsQi/mzK0S/sEwTMmBgfLhXiR
	VNuprD1SHNlRXUJYSPQUjKG3iK4R+AcECQQWnPierDcdaPYOBTqfHWags7N/B4W1R3nYeW+6tkk
	4C/xJVyV+nPRYrfo4HDyB6CIjeOBYaHkw0u+AkwU+OpdamVaQMM1yQNHGedlb
X-Received: by 2002:a05:6214:19c1:b0:6cb:e7e8:9e88 with SMTP id 6a1803df08f44-6d185885e9fmr6384166d6.10.1729893188121;
        Fri, 25 Oct 2024 14:53:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEslwHHx6dighOzv1/9OBtgqY0Tn3FagIVg8QIn1ToYUExPrzN5qxZ9a8b/HkXDPpIXqYsBHA==
X-Received: by 2002:a05:6214:19c1:b0:6cb:e7e8:9e88 with SMTP id 6a1803df08f44-6d185885e9fmr6384016d6.10.1729893187795;
        Fri, 25 Oct 2024 14:53:07 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9b1f29744esm110069366b.130.2024.10.25.14.53.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2024 14:53:07 -0700 (PDT)
Message-ID: <2cf6ca44-3a7c-4561-91db-5493414d61ec@oss.qualcomm.com>
Date: Fri, 25 Oct 2024 23:53:04 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sm8550: correct MDSS interconnects
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Clark
 <robdclark@gmail.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, freedreno@lists.freedesktop.org,
        stable@kernel.org
References: <20241008-fix-sm8x50-mdp-icc-v1-0-77ffd361b8de@linaro.org>
 <20241008-fix-sm8x50-mdp-icc-v1-1-77ffd361b8de@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241008-fix-sm8x50-mdp-icc-v1-1-77ffd361b8de@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: FChNLKslv7ZCEjzhx51aQSE-pQyqA1-G
X-Proofpoint-ORIG-GUID: FChNLKslv7ZCEjzhx51aQSE-pQyqA1-G
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 phishscore=0
 spamscore=0 adultscore=0 suspectscore=0 mlxlogscore=726 clxscore=1015
 lowpriorityscore=0 priorityscore=1501 mlxscore=0 malwarescore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410250169

On 8.10.2024 1:36 AM, Dmitry Baryshkov wrote:
> SM8550 lists two interconnects for the display subsystem, mdp0-mem
> (between MDP and LLCC) and mdp1-mem (between LLCC and EBI, memory).
> The second interconnect is a misuse. mdpN-mem paths should be used for
> several outboud MDP interconnects rather than the path between LLCC and
> memory. This kind of misuse can result in bandwidth underflows, possibly
> degradating picture quality as the required memory bandwidth is divided

degrading

> between all mdpN-mem paths (and LLCC-EBI should not be a part of such
> division).

I think it's just for power savings, but maybe Abhinav would know
better

Konrad

