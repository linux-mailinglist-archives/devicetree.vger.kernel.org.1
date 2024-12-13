Return-Path: <devicetree+bounces-130850-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 37E969F1083
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 16:12:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 584291881C9B
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 15:09:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2217F1E102E;
	Fri, 13 Dec 2024 15:09:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HLh6j38D"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DAA81DEFC1
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 15:09:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734102591; cv=none; b=G/Jvdk0oHhz1ayvLVXQ1Ks6Q2Lu+d8bHY6O0KaU0fT7xBueKfbR8gyFpl/F8yppB9ze3dFjxQxintOLUzzpn1XB/b+UbfZ5MNdrSDdY9qnVz525VOQMqtJSDLk2e/hKH2mN86ZOwozByTF9f3v9cKAn1ECF6IuDiuXjnGwH7TvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734102591; c=relaxed/simple;
	bh=mpFykbivlJtZ1anyQnIkiiJi7mV0Gsy5/+S8fgqj8kk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jDCHCbrSuQ37kj8IplifCyaEI35sCwKtZZ1vSM7EBLTnNSiQ2/zJRZK4ccbZOAxVJewygt/6NVChrA529aji5m/13VtPRwrOTQLrqD7OEBYbHH64LVUv5izT3FC3OGFDqVFahvloVn2MXTIv/j+YNLCTdw5+pB7mOLd+lToS178=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HLh6j38D; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BD9nYTS017413
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 15:09:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RUGCbElRfwnoPpxFnu1ETCSpv33WWX1zIEDuWigaaa8=; b=HLh6j38DcQ4ou29Z
	zg6t44nmuDnYNQxPMmaXJBMdzexH+BRyUCloz5+QbUZtcZzjva0PtLWusTMzBBQN
	eMN+rPhRJ8xcH7OhDpMmb7zgQARiGCG4LD+ZnKxer8L27lwrfFFpFqjJaZ9y8iR8
	Kt3IVUxKXrVmqLNvaQTxddrLCdz7n0CS/+4bjbd+3ui/lRYjYvEyTT66ozpNDc8m
	ZrCzSMT1+Ew/vCBPkkCUlV3h38gdNDaxrVRAnTHyfpTCdH/8JqR1IpXy1EeS/g6L
	pJEliXfJMHBl80edHXPefAxe5h6jYn6WlYnpmRtqwfhEGxs4zWXguN3rkDiwQNBu
	jc1fgw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43gjmt0w3c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 15:09:48 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6d880eea0a1so5151716d6.3
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 07:09:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734102588; x=1734707388;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RUGCbElRfwnoPpxFnu1ETCSpv33WWX1zIEDuWigaaa8=;
        b=c7H0N2LIOnTOIGNTNs/0FEvHpoaDPu/didu0J35CFfvKUuAxolHeVxaOViCoNH9Gx4
         tclOXChgDCPhHDVfG1eGJrBXYyzNvj74Kh95WMWpLF9e+GL89hLuFBjzu8nvJt/VQwSd
         MIKuSuySjgAPj3lPUMaBslQ1JITHs1tjM72wRTLrW1XhGBT/Rg6AVpqX2Ocr5QKKQ5zK
         TcNWQzeTgAtZGWFfwo/anCMCxMV5eD/vHF+IPIXwXBEQsaJh/RnOAWZdZc3bG9kKgD3h
         7JveY0B5J7mj1WR9Ym475xRZzwp9gBL5dD0c5CemTSBGRtKkCo+TX4UteKVrh+9XcgiT
         fJeA==
X-Forwarded-Encrypted: i=1; AJvYcCVRKlznbrw/4vnlSYEpSJsyw/ODV84pTw1JiA8mjwmuYgRO2IqoDVgzRP338PUCkIzEG2BHBfAYitLh@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6q6BTPLXBRZqIj4upYHkrKb9tRFM84jDDRqxaW5kMP9fHN0Em
	+N9PwVb3MUy9LUf5sJkZbAGCSPa9mIKN7gsuEWDM1KZYoO/0eZ84ijxg17SBxsyI9+07SZ+VxrK
	HhJQtQPZvFup0zdy9iW3Cyo4kw2+NPC7tBD6OAlXjVJ0cYQhgQiWgRNtUqSys
X-Gm-Gg: ASbGncv+X8bjyNsCgaJqokRYlkuOmzDLn7tO9Cm+WEmi8+0lojZDRStfNHsTp0u//fW
	ESo/qwvKq6T7tyltP0q4av4WDr6SJiSsWRj6atFRDeBY1W3JWFzSOCiZwzY9xICc6a/5Yg9omPE
	uSbGSAKANeDatjmgKQ3pohe7i9NHBJsy3JvGlJP+dPHmTV7jAN6zo3hIOeeNF8xgbHNS0f7cGE1
	p5c27q46OMRHtw/UIpqnInDuZ3osB8xfJrwECeIpInul5rGcuZlUovXrnUGxHkLHlvQTMMT2xPR
	P19OnJ00KW6zPzYs8NuT/U4owfyVCbrLm0Vu
X-Received: by 2002:a05:620a:2993:b0:7b6:c3ad:6cc4 with SMTP id af79cd13be357-7b6fbed9855mr159796585a.5.1734102587773;
        Fri, 13 Dec 2024 07:09:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHCNOTuH/JeSKj+950krsW+duBDTSos0kfQOVpuA6pb//nTscPC9RvF8gzspY+TD5ARI2Du8w==
X-Received: by 2002:a05:620a:2993:b0:7b6:c3ad:6cc4 with SMTP id af79cd13be357-7b6fbed9855mr159795485a.5.1734102587439;
        Fri, 13 Dec 2024 07:09:47 -0800 (PST)
Received: from [192.168.58.241] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa68770c481sm708781266b.110.2024.12.13.07.09.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2024 07:09:46 -0800 (PST)
Message-ID: <a41eb4ab-2045-49b3-b571-b49eb5a05057@oss.qualcomm.com>
Date: Fri, 13 Dec 2024 16:09:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND v2 3/4] arm64: dts: qcom: qcs615: Add gpu and gmu
 nodes
To: Akhil P Oommen <quic_akhilpo@quicinc.com>,
        Rob Clark
 <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Jie Zhang <quic_jiezh@quicinc.com>
References: <20241213-qcs615-gpu-dt-v2-0-47f3b312b178@quicinc.com>
 <20241213-qcs615-gpu-dt-v2-3-47f3b312b178@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241213-qcs615-gpu-dt-v2-3-47f3b312b178@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: M2uP025MGhppMVACQMBthS_s4I55V0Aq
X-Proofpoint-ORIG-GUID: M2uP025MGhppMVACQMBthS_s4I55V0Aq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0 mlxscore=0
 phishscore=0 suspectscore=0 priorityscore=1501 mlxlogscore=640 spamscore=0
 malwarescore=0 clxscore=1015 adultscore=0 bulkscore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2412130107

On 13.12.2024 12:31 PM, Akhil P Oommen wrote:
> From: Jie Zhang <quic_jiezh@quicinc.com>
> 
> Add gpu and gmu nodes for qcs615 chipset.
> 
> Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
> Signed-off-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

