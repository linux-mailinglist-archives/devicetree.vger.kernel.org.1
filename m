Return-Path: <devicetree+bounces-158409-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE03A667F8
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 05:01:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 91ACE3B053E
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 04:01:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D1EC1A5BB4;
	Tue, 18 Mar 2025 04:01:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MQSK13NH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 458E74C80
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 04:01:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742270501; cv=none; b=Lmyg98I71o2ZaYoflSfrYoKABMGKn0qpqA2tppcSteXkMm5Em6yWDyA1HLdXs2zjkjtPQ7L96/FQW2PzHbz55MPPr4pM5RtAe7lOWPWdbXzHiQHVmyx76tUcaqB4+NAIKbmtMEQGF4YRF7pmEVX1YZ8Nq48sraMZ3ErfjOWGAfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742270501; c=relaxed/simple;
	bh=K6Q/gfJ/2Dkf+Q/weRCzrm/EdWn87ibUtjKdSrBLUMc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UMHHuuTY0eGmNWIk6duElQZxpTB5ZRCQGagPwAiozJ4Y2+IIPLiMkBFfDDDFJ1vrGLnlT7/9Sx0FMYARsDqT76vYkmHicvqNBJzho6ldgIuYkpOrPAxQKiupf+7DGqQliGJ1vAUkEbPtgMg9i2h6LwXpjIgDQD2Tcr+LEX8HQ90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MQSK13NH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52HL89X5008664
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 04:01:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	g1ZqIRlo/bjZwLlSypjNHtK2fYpTyQL7/nn4I11gbjo=; b=MQSK13NHPEK8SDpE
	xAKEdG4uPGbskufICjioOU0KUOOfBLo6CT29Iv84drktTJsv6TUBFxubRdBveUCG
	PBr2Fg3Pq2tlkrSMhppVgWFfDYj+qdezRDRTQPMNX2POsKFq67+Yk2z9p31OqEwR
	bM9Ul/Xu8n+cmk4BVCCV9vqbV7UFjDdjJSyUEx8cfOyJbuMviym11TWzNyTYn1l3
	p5NhQ4Nr1g4FR8x32TsLw+duu/AZtGE7X/N+70OxvQTmtnF+P/lpBC6PgiFoIdTw
	rU9qHDhPYXxpHrAWdESUntodTnXz6odjya7gpEU/W3zqQJprhYzKamB9pglRayw6
	9aCBQA==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45d1tx6r53-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 04:01:38 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-2ff799be8f5so4368793a91.1
        for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 21:01:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742270496; x=1742875296;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g1ZqIRlo/bjZwLlSypjNHtK2fYpTyQL7/nn4I11gbjo=;
        b=tt+Cx5D5v78/FMX328uL2dnjA4x9y06Jihykhfqa/2YF7HI3nAVW4mg00dSA2zjaOo
         r7sw1Pre3Ssi0w5xndu+c+BDFASFtyxJbhH2Mo7ci3jCz6w7jNena/hIZgWt2mAsltxI
         /Q3Z35Wd+ikgYCqx+rmW1F9l5MsRMpqdAXJt3eIPFHC4gE8/lVzTM/wj8XJ1IB7fD6D7
         CSrUvnjQhI2vss7h803v8+SwQC7/LbFi1lgFyXol8jle70PvLX+IFABvGnpkR6DaaRr9
         s1p9NzLynATNLwsOOW8hP4shTETZUJCZFg3MnCrslqTOfjFLl88we0qTRtam339J0Bsk
         EDHg==
X-Forwarded-Encrypted: i=1; AJvYcCXCOjNNm0YAlcIAsj0OnAbjXYMEViFbh5rt2rl0LBBpvHe7yANpetq3/qG4HEerxCLbuQA7nr1vchPH@vger.kernel.org
X-Gm-Message-State: AOJu0YzG8sftsR1C7bTZmnG7UY7VtefS6Ec3jPPs/wNur6aAztRFpQdU
	YW+5+QDPc7Qxkmu31Gn/chzwBXwMzvzIDTxN0o4w19QLgfk6ug3Byd6O6Lhwdf5n3IU1dC3pcEe
	MgSKdGoXNjKUCTaXqSY7JYEwWPRNYuwasbUNJWieaDxNqIF4rK6sUDTGh3z3WbrvyZFYi
X-Gm-Gg: ASbGncvVK3NEvyEoxw9hzMUV3LnG4VPw+r1i9cqovdCiXcNHURL+AtG7kFnaVUDSxrQ
	iP7prXmqKSqOUnyD2NmhyLGHeREMJdcH3VNd7NunkjQdJYc4sD1DFr8PVAVAkF8n9FBFwcyw+52
	qdEJzIzsVw+EPwP241WTNFG9aZgTfHEmoy7lcL+YShRzWmVUEckuKybjowmysbe2cN/9h8CaZVf
	gu69pE1CDwKkhc3UfNquiQctwfhhzO0yQblFBiRsP9C62dsFIu0Eksh9mUKp+2/XTM7n0DI8A2W
	Wzq18g8BRXdbYX83j/wNFmwWJIJk7ECDVsAqYTTG8AGrimbTXFrU3b3AdQ==
X-Received: by 2002:a17:90b:3dc3:b0:2ee:db8a:2a01 with SMTP id 98e67ed59e1d1-301a5bc0dbamr1228604a91.30.1742270496508;
        Mon, 17 Mar 2025 21:01:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE9Edi3sDHHeZNXLncEXae5cC0YitCoPLeBGh6ElwofYcdSRsUatQjnw3qn2xTmbSGT+0Iy0Q==
X-Received: by 2002:a17:90b:3dc3:b0:2ee:db8a:2a01 with SMTP id 98e67ed59e1d1-301a5bc0dbamr1228565a91.30.1742270496046;
        Mon, 17 Mar 2025 21:01:36 -0700 (PDT)
Received: from [10.152.204.0] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3015364ec9csm7864720a91.45.2025.03.17.21.01.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Mar 2025 21:01:35 -0700 (PDT)
Message-ID: <37a33341-a83f-6349-6bff-23b082aa46ad@oss.qualcomm.com>
Date: Tue, 18 Mar 2025 09:31:30 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH ath-next v11 11/13] wifi: ath12k: Power up userPD
Content-Language: en-US
To: Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>, ath12k@lists.infradead.org
Cc: Johannes Berg <johannes@sipsolutions.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Jeff Johnson <jjohnson@kernel.org>, linux-wireless@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Sowmiya Sree Elavalagan <quic_ssreeela@quicinc.com>
References: <20250317204639.1864742-1-quic_rajkbhag@quicinc.com>
 <20250317204639.1864742-12-quic_rajkbhag@quicinc.com>
From: Vasanthakumar Thiagarajan <vasanthakumar.thiagarajan@oss.qualcomm.com>
In-Reply-To: <20250317204639.1864742-12-quic_rajkbhag@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=W/I4VQWk c=1 sm=1 tr=0 ts=67d8f022 cx=c_pps a=vVfyC5vLCtgYJKYeQD43oA==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=WCMLO9bd9HEky8F4BQ4A:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: AeMSuwRg20AiGrVGqHEM5Kb38xZ80Ro2
X-Proofpoint-ORIG-GUID: AeMSuwRg20AiGrVGqHEM5Kb38xZ80Ro2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-18_02,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 phishscore=0
 impostorscore=0 adultscore=0 spamscore=0 mlxlogscore=690 mlxscore=0
 priorityscore=1501 suspectscore=0 malwarescore=0 lowpriorityscore=0
 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503180025



On 3/18/2025 2:16 AM, Raj Kumar Bhagat wrote:
> From: Sowmiya Sree Elavalagan <quic_ssreeela@quicinc.com>
> 
> UserPD firmware image is loaded and booted by ath12k driver. Get the userPD
> memory region from DTS and load the firmware for userPD from pre-defined
> path into io-remapped address of this region. Authenticate this image
> using pasid which is a peripheral ID. Set the spawn bit to instruct Q6
> to spawn userPD thread. Wait for userPD to spawn which is indicated by
> spawn interrupt. Ready interrupt is triggered once the userPD is powered
> up completely.
> 
> Tested-on: IPQ5332 hw1.0 AHB WLAN.WBE.1.3.1-00130-QCAHKSWPL_SILICONZ-1
> 
> Signed-off-by: Sowmiya Sree Elavalagan <quic_ssreeela@quicinc.com>
> Signed-off-by: Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>

Reviewed-by: Vasanthakumar Thiagarajan <vasanthakumar.thiagarajan@oss.qualcomm.com>

