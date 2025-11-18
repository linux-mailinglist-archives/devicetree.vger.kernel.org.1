Return-Path: <devicetree+bounces-239724-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 25419C68BC6
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 11:13:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 837254E88CF
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 10:13:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CD75335092;
	Tue, 18 Nov 2025 10:11:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LSqQmsbI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="W9dbAbGS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07302331A52
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 10:10:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763460662; cv=none; b=QMhQA0LfThYYKVFbDzYnWafBishqB/tUdjnCgX3EZfvTXI0hilY/5hOxS9XAUEo1CSJTZlV14EdVf9DqGFAbhwCSAfBJg+N/yA/nTKrpca6uW0V/9i1MOQDHLQZBu4eDp15FvP9WiiUMtrj4YAKlo+Zahcakl1cf6Da9L/HlsuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763460662; c=relaxed/simple;
	bh=164cUtNwQ/6MAlPBIz8BZE8izUZJcebmqVBJfuQrG0o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uY48ArLLGbuwPHttgYnQ7k7OCw0fuPcNS6XaIp67IeFfGr9pJSl5AM3lZQ5Ru2wmg3EtfAiHLqMiUQpTtekTEK2kZhRXQPtUxU0qUVv+63p1maTFdTRkc1ilvYz8ya3WDEvkV2L6lnCL1/cjNIw9FDg0XBnqpLKo9PGA/auGbTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LSqQmsbI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=W9dbAbGS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AI8VMBZ2249858
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 10:10:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	U02eh9bqJE1p9hqnUKH0dgcb2ZclOzx3BYb9xwfCu5g=; b=LSqQmsbILJ6n/45d
	G0PmH/9BOI69YrXMtodKs6YirqaoZ8Gg0l3TzZVzCW7VyWa9cwY9blv3gIih+Tpd
	daIM8z7QH2SlY9PJCt1Kl8GFtG5O5pLqGeAUiVAPLzYtKCW3v8kzgWsnIqc2bIED
	NYzMp/HVm1/uekJyJkPS1pNYPLG776nJpT+r1VUy5RzKUvV9/yuf9JrRqYtq6Fse
	5LhZmd1l6aox+BCReTwv5pDOKpRNiWl5kmfQQm07HbY9W81nWZ1ry1rAorUlGAsL
	BIN3oXSErPUb5nMlS6gLTiESr/eMSv1o6RoGFrd3wo8Gww25hRjum2wbT5VLslk2
	p8xjVA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4agnc5gatr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 10:10:59 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ee05927208so10198111cf.1
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 02:10:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763460658; x=1764065458; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=U02eh9bqJE1p9hqnUKH0dgcb2ZclOzx3BYb9xwfCu5g=;
        b=W9dbAbGSTyMMpBaSrSiwFGOilTisNqx5MB8bK9wsqrvJWfiv/YYtnhbZfLN5XnpzBn
         MRzhCxPyY2v0gI2MRGO/5tXJnrSbMATrKXqMUPMW9UQGda+LbqbgDRJBFyZ/9K9BgQHk
         JtJtywC0MYVmVnAZ7spqhlyJUxh0m5hU6B+U2MmuLbPYVviLs9ANsZBCFG2Hv1ak2tmr
         dtqOHSqMTgKrER+nkNIa9jTpw+TiotV+8WEqbRee1RVLEqNPRO45u5/NKPQmdFWG+hS2
         RdghgjhZqA/m2lhybP3OmJn1HYieTY9pT61FsYio4Hnq0n1k94Dtny+VSj34QyadCNV/
         QVdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763460658; x=1764065458;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=U02eh9bqJE1p9hqnUKH0dgcb2ZclOzx3BYb9xwfCu5g=;
        b=Uz763li4f3hcTdZVVkz0FWoetz5LvtX1RheYmFNOxI3x1fCQOf36+xFZdHA9gWYcE8
         ncsx/Hy2KMP/HtDIj+T5+3F7m8yMfElCpiNK1o3ZQo0N6FmLJJ3bT2xJOWXACgwbrx+p
         BwGvZYAaozelg1q1uD/BtdAVit49a9sgNGS9J6DgpQ+54wapQn9YLVpXQ8UG3HbyprtY
         wQfCW2q65szP1GIBR92/QqtWqfjwE4aa47irSN+BQ4cyQL4V4WsGPCYJzq0caszNYMIr
         6DMM6srWakmjxk1RmC1mPMA0plmY1jvBktVH/R7i6HT7z2yJgJ4+4R1rKAIf9ABkkeMy
         ZdUg==
X-Forwarded-Encrypted: i=1; AJvYcCUvFOtPqr63tBrSgWsM4am0nJVzBJIprus0E8eYspd3gp+kRaThYPhmh+dbwK+cF2HO1e3vsEvpQHcY@vger.kernel.org
X-Gm-Message-State: AOJu0YynFvaldWxFwBv87eoKLp6g4hbMp/+kX2/NL2OR9UKaKW/vEGob
	O+ndVH49KgHcCZ5yxVDjsd/O/q4Dr4d4DG10OUvY+JR/9aaDQesIRr75gcAuHUOiuBX+xd7Id3I
	nsg0+xVrYSadrPOGH/Ay3tdzljsNbZ0xXHrBXcq15zl38GvHGs39u0EY0+QDF10zE
X-Gm-Gg: ASbGncu9ZmIWso1Y9WFbFJc19h5sSI0n8aUU0m7Ms4vN8JX+xK7M2iWGr87h6OKFUJS
	RMqQa1aTjXbqVtOBkWBd6+QBRFVX8uxPKpfBqIKqvOX5Bmde7YXbNWyHNaAB9r7V7PfQZ69iPFM
	ZLS4llc5RLo8rEM8ID/89o3kSb7nXzC2feweMsX7kTILUku8CABYaTZEBIn/lDdXMkOvpJkYJAP
	ZlbBICZzFOgtUaSkvJB//Dk7hMbroXRKkVYO3LKa2zqoTHk4D0PtoWqIlK5JYO5tjhoKDHds/S6
	7hMcwD1r3o9mwdn7q2F/83Xe1xj7VZTrtgq6JBRgDjmt4uPZ1n2c73rM00v63jklEvMtu9AWwHZ
	Uy+O2WBPKnepIMwP/52TObPQ+7vg4aUwUSvyM2mDQmlsEKImfq/esrZcwyjNFde7q3z0=
X-Received: by 2002:a05:622a:20c:b0:4ed:b409:ca27 with SMTP id d75a77b69052e-4ee3182237fmr20160171cf.10.1763460658040;
        Tue, 18 Nov 2025 02:10:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHz4Ftkem+yYtF3nOBOFFpkdhV6ZE7GbZunxdHTdiyocnrRN9QBCgvxmaVDrzMTewaoOz9MgQ==
X-Received: by 2002:a05:622a:20c:b0:4ed:b409:ca27 with SMTP id d75a77b69052e-4ee3182237fmr20159971cf.10.1763460657671;
        Tue, 18 Nov 2025 02:10:57 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-644f13ff4d4sm2997956a12.12.2025.11.18.02.10.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 02:10:57 -0800 (PST)
Message-ID: <1c438a94-fc9d-4322-918c-b6ec1a4cc5a0@oss.qualcomm.com>
Date: Tue, 18 Nov 2025 11:10:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 15/22] drm/msm/adreno: Support AQE engine
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Sean Paul <sean@poorly.run>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Jonathan Marek <jonathan@marek.ca>,
        Jordan Crouse
 <jordan@cosmicpenguin.net>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Connor Abbott <cwabbott0@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org
References: <20251118-kaana-gpu-support-v4-0-86eeb8e93fb6@oss.qualcomm.com>
 <20251118-kaana-gpu-support-v4-15-86eeb8e93fb6@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251118-kaana-gpu-support-v4-15-86eeb8e93fb6@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: vXxp4YiN9IfaFyadwYoFC-bSJCCJUpqq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDA4MSBTYWx0ZWRfX810hmdYWS3nm
 BNkOCizj4/C7WNolH0or0EH/IcN01R6mHpgxPjBu236V+UUhOklbi5+R4KMnAaiVfMwJ+YcnUOG
 ge2pb0dHHALr5eslCtdVOvycIDHfCpGX4RI5nuJBOn84a7ECL/Gfr36w9zw3XaKaQEqEnXJfYlr
 WYnh/BRP7fvHe3cmAfVGUVsJqTGJapqV7oEvjScQVZPJtHrlQ/avC3BtBrRtwgrJb9xlO14zeDW
 vok2ZLI9qYDlN/uBpqjMe2PHJGAK2pAnHWC7/hVnTSxOE6uUjatT6Yk9Bd/h43ys38RkFrsDz8F
 M5X+0ssGHHW2+nyGKgUzMcCtyeiRt0dZP1r4eklbzBw1swjFOcnyHHBjQtYR4TFrbasv54aC0Qz
 8e/rCBVwjZRHcJ5rfo4JsYweRi+Djg==
X-Authority-Analysis: v=2.4 cv=BYTVE7t2 c=1 sm=1 tr=0 ts=691c4633 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=GtNZTxoBlHEkV55hDasA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: vXxp4YiN9IfaFyadwYoFC-bSJCCJUpqq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 bulkscore=0 clxscore=1015 priorityscore=1501
 lowpriorityscore=0 suspectscore=0 phishscore=0 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511180081

On 11/18/25 9:50 AM, Akhil P Oommen wrote:
> AQE (Applicaton Qrisc Engine) is a dedicated core inside CP which aides
> in Raytracing related workloads. Add support for loading the AQE firmware
> and initialize the necessary registers.
> 
> Since AQE engine has dependency on preemption context records, expose
> Raytracing support to userspace only when preemption is enabled.
> 
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

