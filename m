Return-Path: <devicetree+bounces-225903-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BE7CBD21E3
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 10:39:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 28DDB4ED1DF
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 08:39:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 515A62F9C2D;
	Mon, 13 Oct 2025 08:38:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Fnhd6Zvz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F2AB2F90CE
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 08:38:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760344737; cv=none; b=EwnrPir3Dlehgl2pEpSXAI+65HqWMdWG9LZyYTb9mUVi5psU+DAcLOC0rrmJ04NKBMRRn8bSd0jUr1XLcOA7uMzU4YrocRGJXa3DRfqLLKard/B6e0/b5IoEmxYNiLlmw1gIKhiWPm7ljB7W+USURgR/vscHAGKXqqEJNJMPK2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760344737; c=relaxed/simple;
	bh=aM9wpYz7D19h0818wM71Oi/TLVEQrjtN25oiHTy769Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZBkXHs5jdx2hHCnU19xqGGlZ1N/LUjgPOuU+gVXfTP16B+5MjuXhQvXX0skdtXFoFcFphgpn+9/nc1Q5+63DHoimsOaKcSIps8w/Wbo2W5nhSxHYCCP21sKBJAQeN622ZjLsMZ+wgbEJ4inH7Lgf1z0JygwePQVrr2BrVsVLpFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Fnhd6Zvz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59D2nAIt011022
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 08:38:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kBVT1f4LC7X+qF9EMdOlijngoSBVrKJPfb4IYgGz1Hk=; b=Fnhd6ZvzNmGrNqKr
	Ta2fhVD20s5qTfXx9lhoSl+Wt8fBhPijpEtd9jaETgbvk49+jcBOzd0r2Bmuzq3y
	q5kmT14AE6nRXQMn5+ccH9QDFph6/6HxlxjYg9A/bOfwZKd/2G1JhXrT5i9UYB9I
	DYrKyJeD5QE1+9U5peP40Cv5Tugu7YDSg2qZ9phCesD/KQ3xnIuGsZZq7yZ0C5Kd
	847H3V1GnXZZhPLHXfkDTxmhZ6E2fdcHy3bp7YCp4p6dUKmrdCoMgKdQMCwbKRK+
	8NktZxu6jgb8ANoeD+ZPqxU7ggt3zGJd6nEG3qaAURKGz6sVc/G1URbqdsJl2ZLn
	nspLIw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qg0buumf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 08:38:54 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-33428befb83so10987543a91.1
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 01:38:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760344733; x=1760949533;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kBVT1f4LC7X+qF9EMdOlijngoSBVrKJPfb4IYgGz1Hk=;
        b=sq1wPGo6hW/m43Ogemj0olsFuObnVACDSDyPtDjh580HV+hHxgg9PaTk795qqdRmq+
         0hvRNzHsAbeBCxDZ6J+X1n0Ulia3j5o3FZwlScQ4uj1u6LaD8eYUUjNh4rPbhVLCTLBQ
         v3AZRMwPxsQ0V2ORQ7ns7lZpGgWKGQuPg4A9wY4fCvM0mIYKCS32/f5bJ83BGQgkl+TP
         Fk4R+MK5KonSZohkfPv6vD8Gxco+N0RfNx3GwDb6hLO379276HST7tbjfAeT9XWk2bBN
         U/qL0TzA1BY7mZQ09F9Va3Ag82JRhIIcM4GNuSSfYGFGj7AGmESS4SumWObZL7GMaToq
         1yCg==
X-Forwarded-Encrypted: i=1; AJvYcCVNJNZTR5NUcnURFWigc7B47m8nbhYMqMizVFF4rf1B5ZFiKOIeuTrrzrP9QRQl1I0d0rAz1yAueFD5@vger.kernel.org
X-Gm-Message-State: AOJu0Yzwx34YVELKM+tAhc3FT8he/ZzpU82QXOIYafeNR94g5K8JxGEe
	KX+9n6tVUMDxhYw8H9SeF8yzasA0Do6ONRzxay+SoqKgeE5YMZr4PuYSS4ZQdsKlhKV7g69/BwJ
	L644Y+cA/znnOiroIco2CaxzD9yN87UpSWIvU1WLWb0LnrcR9oFpitxQ8A52o0NyhrYSp9Rq/sI
	U=
X-Gm-Gg: ASbGncswbeZIGVBfooix+vEpl/hQ6XTYDt8nNGnIPMCfkB50uYvc5xdP0H5pVpjI1ZO
	RPw855oMgiUkbn93LI+cV+BC9i6Z7gnlAAzBFr4Lov5MQVj6UYc6v113yXFHk5/sXX3tip6/zv/
	VXm+kvesjFaqvZHA06AfJEcRsChZU/ROjnFnX6OS8kQKT/+LCbvjINOVAlSaxsUrLEGvATb4Avv
	ENXLox2haoFKUkPTp0DWW6YZcidSXZTNIgDf1Cu3M4EQUrZkGjnY3aztbdUc8JdEvcu6jn3SNIL
	shLOkfD57I0KJ2F6zfwGHe1NJZF50fSHCTNl6GIkOZG2tPHhmKDYVAlxIXpwNleX5TT7PfkDWKS
	BqbyYNs9E9DiDSH/7s/UxX2OMm85ixQ==
X-Received: by 2002:a17:90b:4a8e:b0:32b:dfdb:b27f with SMTP id 98e67ed59e1d1-33b5138e27emr30306514a91.17.1760344733567;
        Mon, 13 Oct 2025 01:38:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGs7ZzJjXcOdRj1a6iEgitTMaufzAdrFWCf6u6RbYV0u2V2fa3XRScqidAK8Ls4TD09WlYnzw==
X-Received: by 2002:a17:90b:4a8e:b0:32b:dfdb:b27f with SMTP id 98e67ed59e1d1-33b5138e27emr30306487a91.17.1760344733107;
        Mon, 13 Oct 2025 01:38:53 -0700 (PDT)
Received: from [10.133.33.133] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33b626bb72dsm11172324a91.14.2025.10.13.01.38.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Oct 2025 01:38:52 -0700 (PDT)
Message-ID: <4d6a74e6-53fd-4749-8839-907a9d0d11d3@oss.qualcomm.com>
Date: Mon, 13 Oct 2025 16:38:45 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] dt-binding: Update oss email address for Coresight
 documents
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        "Rob Herring (Arm)" <robh@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>,
        James Clark <james.clark@linaro.org>,
        Tao Zhang
 <tao.zhang@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Mike Leach <mike.leach@linaro.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        coresight@lists.linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20250902042143.1010-1-jie.gan@oss.qualcomm.com>
 <175684936304.1217220.3167248149687349464.robh@kernel.org>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <175684936304.1217220.3167248149687349464.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: cxs6AKWJdUeTxCt4cCUrQmj83OafNTSN
X-Proofpoint-ORIG-GUID: cxs6AKWJdUeTxCt4cCUrQmj83OafNTSN
X-Authority-Analysis: v=2.4 cv=eaIwvrEH c=1 sm=1 tr=0 ts=68ecba9e cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=TojU4j7_S79YkeO3qSUA:9 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyMiBTYWx0ZWRfX2bWmiqWdjTwv
 YzRhtIvhwUq+oNZ2jlEy/MCIMP83fx51soR5+qFIDquxrJcTWLPNXNNwnK4vaxlMcsFnPf8yMLK
 +5oCOa2IMjQNZ+J/0HP4LnSv9OPDEMWAYcGY2AM0AFL1LJa9T8Xm6pG9VP8ba5NX/bDicRXmqKh
 yL6aF4edXilbmFC77+ycqM51TbXhBI2kZJ+x6Xl2cWuoiAoHDaPgYHj3aYI8gn8dIK5ejBfBfwp
 3M1EAGoVvs7pe0QJL9cE1Ecui51VEDvIozfPlz3MLPn4vU2WEioOvZ7utLk/mq0xpXa2DN3fbct
 6lnuiDpz+H68Hyrn+eOYoXSxM3wmLvnV7aBAJel0B6t6Wzddg4JGGF3BWyLpthAXuyx7pC0Woc7
 E6kBno8Ao07m2W0/xBUs378C7WuZdw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 spamscore=0 impostorscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110022



On 9/3/2025 5:42 AM, Rob Herring (Arm) wrote:
> 
> On Tue, 02 Sep 2025 12:21:43 +0800, Jie Gan wrote:
>> Update the OSS email addresses across all Coresight documents, as the
>> previous addresses have been deprecated.
>>
>> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
>> ---
>>   .../sysfs-bus-coresight-devices-dummy-source  |  4 +-
>>   .../testing/sysfs-bus-coresight-devices-tpdm  | 56 +++++++++----------
>>   .../arm/arm,coresight-dummy-sink.yaml         |  2 +-
>>   .../arm/arm,coresight-dummy-source.yaml       |  2 +-
>>   .../bindings/arm/qcom,coresight-ctcu.yaml     |  6 +-
>>   .../arm/qcom,coresight-remote-etm.yaml        |  4 +-
>>   .../bindings/arm/qcom,coresight-tnoc.yaml     |  2 +-
>>   .../bindings/arm/qcom,coresight-tpda.yaml     |  4 +-
>>   .../bindings/arm/qcom,coresight-tpdm.yaml     |  4 +-
>>   9 files changed, 42 insertions(+), 42 deletions(-)
>>
> 
> Acked-by: Rob Herring (Arm) <robh@kernel.org>

Gentle ping. Is that possible to get this patch applied?

Thanks,
Jie

> 


