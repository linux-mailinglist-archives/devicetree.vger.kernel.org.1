Return-Path: <devicetree+bounces-144795-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ED639A2F40E
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 17:48:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DE291164A73
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 16:48:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBB1F2586F3;
	Mon, 10 Feb 2025 16:46:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JWbBk9pb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2A62586C4
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 16:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739205996; cv=none; b=oW9qIA3Co+2gYJKnhYCghAUtml+sFw7G69LXXBqzaJ8bHvFJmInlPT2ah/OoWjkSDmzCUQi6xq2pcMmoMWdiVDdUaMHPTic85HBidv5WewMQrwYbSdXqk4R8JYSwtzBvKK4zTbvRy2KX8byb+6rzfFzocDVmzjOvpSZBbGwRNjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739205996; c=relaxed/simple;
	bh=rKZw9/AKjfdQiq23x4NLYpX5kYPR93R2a5K51O1yLjg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ld3BzXpusQvTCeKrshZR4PyGDcPR1IcKK2MpnzYQcv9R8krviX8vkipJKHsa34xL7UpXWERUpDzhikgZxT1liYtbYlqH++YGGLBF34h1VvlMawydx5NDVl5rV+XAc/QivTOIuOrJD8NE7EpaPt79Sqhc+EOJJyP4rUfVBpTRfcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JWbBk9pb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51AAEKsT014440
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 16:46:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Y02jPbtLlP48pca9Ds9PgtZCslYqg667QI/2JrWgP0M=; b=JWbBk9pbvszFDg0U
	UJ82sgOtdmTdFLPJpoAyCry5hPN3ORtxq0IagFpOuZCxPiwKKrN/9IopwiZGPQ48
	oxY85SmdYEbtlNq1ajb7ZoGq1Z9kRq2RYghxPXny/dyGITibFm3tyPsk4uGG5vbA
	yzLP540xJCB4vXBvrzM2t6BktakjG+Reo6dhOufBDvTr4ZCpFVvh54Z7Qj6rKDR4
	ymdNMxnc5523e+uLQio8ssmAizTJzBPbUFTYK/0SEPtkVaSErURwym9IfbcOmIRW
	vKHf8mYDwrUgjEDCKy33HMFsn/WmA1x9oanKXSUlJoe1qdKMgz9D110owJ20Uo6X
	Hua5oA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44p0guvxq9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 16:46:33 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-47195dd8af0so2382421cf.1
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 08:46:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739205993; x=1739810793;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Y02jPbtLlP48pca9Ds9PgtZCslYqg667QI/2JrWgP0M=;
        b=eKzT5GYSE7jgxumq+gDqmkTmXnvUhLRIqsM7ywcAsIGdHxcOTV1D+oVBXnLOoVmkIE
         AhmVs/SnzDhnWHFpAzBh8uffVP0of8lZo2MP4Tn4KugaVmeFtKu/ZGhwohrhDx8yOHfP
         cP/+fRrg5mzTObrOvfUiPDJlXt2/hxwaw9D61FsafcsKg/i5RRqu+6p3VKoSCa/3ewFP
         rl38PWoyH4LHNlrENWsK1Pvx2wBpYuhmBHXx9Z+KTsjbF//6QW2Pqp/kNmSgPbpRdGb3
         v9FB6nDQUyscgferFLS/jKEU/BbCAyAuF/aUnDMJTMziLw8iaFaiAzh4NDE8xj3tdBkn
         7Awg==
X-Forwarded-Encrypted: i=1; AJvYcCXR7htW83x2EcFfJR7KD6l/+t0VoT/Lt1nvjU6by7iVlTqx1PrEU9Nw3AcfLQXThZIIvUVeXxTC9H9p@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/cQDUAfDXlS6WOuUdqhQkN3ZMlsq8ADugfMNMc0D3sky87Nyk
	OFZ8HoZI9NaFKQT+9rh1dHr2XSoN8TF1uF30j0tImjubC9XKXVHsZau4/cVGP46JCCeHtZ53+Q4
	L21SjZtjqk5kA4S3/nJeYbQ2g0a5KPU/0uNU1Wrh1RckCtOmvHpk7L8UTeGIy
X-Gm-Gg: ASbGncvma17BaMpMSk4IUfewSYDSniSka20fkfltia+8LFmsHIX9+CXcLC8HZuNG7R6
	zly3ykmGFbdSpeWRBfYcrceDB4dLfmp2GZ62lcElMcyyn3nlWDS09VU4YkfPp7GjxXaxSDQl9Vg
	npoJCkWYrJjJcEb8o5ZO+tOBSrJ7nk30DxQgKG6HUJjvK6Jo3f7EwPh2ajjREeec9Y/FEdeU4PE
	sQzVV2Cg5A9eKf2mqLykeAfdzjjFOeR/12aWYE/U3sR798vPUFMGopl0yZxSwgLkhA99K+siMoO
	TXHk1dNutksOgg5pQ2Nv2ixJl5yRz5Cu+7Up/ak0dPXEcGCJ0uT/9gnbO9M=
X-Received: by 2002:a05:622a:60d:b0:471:98d7:6f47 with SMTP id d75a77b69052e-47198d77128mr15699791cf.13.1739205993245;
        Mon, 10 Feb 2025 08:46:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGQv3ndFWNiqtnFsxi5Czn9IPWmkOJNsq8JxW9IbnF/jsyhP6VDiNCnxRnuxRJAlSvYtv5woQ==
X-Received: by 2002:a05:622a:60d:b0:471:98d7:6f47 with SMTP id d75a77b69052e-47198d77128mr15699571cf.13.1739205992922;
        Mon, 10 Feb 2025 08:46:32 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab7809a2ec4sm829406966b.116.2025.02.10.08.46.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Feb 2025 08:46:32 -0800 (PST)
Message-ID: <45a83048-24cd-4895-93b7-7f8b22841ccc@oss.qualcomm.com>
Date: Mon, 10 Feb 2025 17:46:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 1/4] arm64: dts: qcom: x1e80100: Add PCIe lane
 equalization preset properties
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        quic_mrana@quicinc.com, quic_vbadigan@quicinc.com
References: <20250210-preset_v6-v6-0-cbd837d0028d@oss.qualcomm.com>
 <20250210-preset_v6-v6-1-cbd837d0028d@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250210-preset_v6-v6-1-cbd837d0028d@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 3_Z1oAHvGe9Q2ZQeYbbVa0ADPfmALuX4
X-Proofpoint-GUID: 3_Z1oAHvGe9Q2ZQeYbbVa0ADPfmALuX4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-10_09,2025-02-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 impostorscore=0 malwarescore=0 lowpriorityscore=0 phishscore=0
 clxscore=1015 adultscore=0 bulkscore=0 mlxscore=0 spamscore=0
 mlxlogscore=719 priorityscore=1501 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2501170000 definitions=main-2502100138

On 10.02.2025 8:30 AM, Krishna Chaitanya Chundru wrote:
> Add PCIe lane equalization preset properties for 8 GT/s and 16 GT/s data
> rates used in lane equalization procedure.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---
> This patch depends on the this dt binding pull request which got recently
> merged: https://github.com/devicetree-org/dt-schema/pull/146
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

