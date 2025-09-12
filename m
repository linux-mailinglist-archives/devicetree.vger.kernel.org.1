Return-Path: <devicetree+bounces-216340-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A114B5467F
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 11:07:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0A79356624B
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 09:07:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 480272749F1;
	Fri, 12 Sep 2025 09:07:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oo25e5AD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B14DB221FA8
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 09:07:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757668033; cv=none; b=ESa4GG0gporKkA9rwqZqbM0UFkBbqjePyqGmuJGE6+L1x4x8Lht05IBwkKaXL8CsLdUaR/b2QvujW52R1LLSZvHiq/oTX9ulRLtONeMMgjVc3ATsFPCzENxCZA4JpC3e9nKfIA9rxGFWSQWkBGVINyi/nLOXmYw7Ejlfnt6NbyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757668033; c=relaxed/simple;
	bh=85yDsO8PhF20FmLqZR24JT8g+CrSKrf8uqrfaiGpSvM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HWd9X2aKuZC3u7ZQY11mBSsCRlst8rU4R6POXftTVW5N1BdLj18bLFoye+4yzjA3WkljIK4Of5mBNmMbr311wDvOLN/HPgVlAAqCAC/OPdTZgKWBuTyf6YJABzQFiUXJXikbBttXyTCHRilQEN9iXOe5GAl1Q5n4Eo+pAXTGyeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oo25e5AD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58BNx8k1019094
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 09:07:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MSIJ/GXsYbLk4enedNLeg4cq/kc6q5Jb3qPzapXhYfw=; b=oo25e5ADt1MTZrNZ
	Ulp4yctIfu3d8hesMpKqHrq4uBX/JihDQu8a+eDlFKzluC9NVuvCiy0Yd4Q2misi
	cT6lMuQKqN5Q6RtVzpdDPgdpSGmJVx8lDDWlWJIaNDIZqQ4DEztIz318qkmhdq1w
	fg01S3bJR8gkTeRVHNFCkrszgEYzOdcsEH89yvdU31tFd2hHJLlEYaLjNUaQxoA5
	SSrbx5D8ubFAht5RyQJk3xgT5pa4D+tiaBpNVVs+SKZmIR7vZfPxCM848R1GPJ4m
	G8t90H/CQ3BwbPLqOyYxbYxe0TyFAShJw8Q9N/XZ9a4W1ONclvEjxPhiySGSYip/
	iIZJrA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 493qphvndr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 09:07:10 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b4bcb1e32dso4973361cf.1
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 02:07:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757668030; x=1758272830;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MSIJ/GXsYbLk4enedNLeg4cq/kc6q5Jb3qPzapXhYfw=;
        b=CWzX1amBQjNWiYqECFCk4+QZLCa88ahklQ+EW/tFhWLB7iRB/xtj1vhXbt0WnbSLaf
         juGfmS6NDWKodJxBEEPe0g+FZtQwt/WycpK93+4o3atExO1dRiS8/tpX09CMt3ZE2H6Z
         UONbhKKOtBTSAiEGh1duVandRDuMq2fV2Adlcxl6WgzRLoPDDYFdQIIGXc8qsBXrx8qD
         zqvCa0mOKmPW2N6Rz6TRf2Y/38rKTN/RlRzyN8R4lAO2ELjtxdN4f9W0FZqL9EC1V8Pb
         PLTOpymndm3u+Vkm5HF6H60Po36t1BPLBVvZhvGb+SmwZGpBEklqyxxEIPZKW9iq3iSQ
         2IpQ==
X-Forwarded-Encrypted: i=1; AJvYcCUbDVTHvyjQIvoNqISAUTJz8zVfPhGCXe8RchDQ8DmODzTchGZLpRXFJSOTaqQuwPtVWteiSqDzfMMO@vger.kernel.org
X-Gm-Message-State: AOJu0YxLAHwPhX8eS8ZM9qkQrHeHld7ETKqURBy4rHrY5w82Cj9Uvnh5
	w7fK8dZrCL2KkjjLzQPpflB5YnVU4YxdwkDXbUDQO4V+t0uz+9IXgpFI3/Ry+CpzwRpmbqppg1y
	8eMoaA6QFztie+yMCWsp7Sg94OtkONgZAScZgA3Uo6teoNQYh4XhYgPE0jRRFikjP
X-Gm-Gg: ASbGncvR9TYYeYtUdcjjt8J1i1fLgkKQ0TtFFQhcVAubOHzhrwgaK3IiWbwQobhNg7r
	2lWysLljmwwm0yOYpncNRN7kgUkOMZMg04ZVIRRcat01EMDSbhfXz4jzDC6jLiMoDXhIPjIPmlU
	GsFyYkqewUpFnl772k5KcowWzNvC2gUHbNzWcdubzEzeqAEbGLzzEQU7DieocJFriGLxT+hCuXw
	/bIESMK+zXMB3ayDCVw1jLV3WOj6re+EJiAhf9zuEZ6epb54yDQGB/OmG1ITro+TnjHYY10a5ad
	qZ61t8KS5mVny4DSdIcKSHXBBJNhLlocHKBE7v8t7s7Pxu/aBxMrX5OyA679TQekTbntNmeeQ4J
	pK1sDmsLPFLFsHxSA0lbPHg==
X-Received: by 2002:a05:622a:64c:b0:4b5:e391:e3e0 with SMTP id d75a77b69052e-4b77ce6a03cmr18051681cf.0.1757668029710;
        Fri, 12 Sep 2025 02:07:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEUlEyLOQxs7qQFthKUmU6uZH1I619WfXQPTiZx9iYgqYQClCzdepqH2oOylA6OLbhb4mLEBA==
X-Received: by 2002:a05:622a:64c:b0:4b5:e391:e3e0 with SMTP id d75a77b69052e-4b77ce6a03cmr18051351cf.0.1757668029200;
        Fri, 12 Sep 2025 02:07:09 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b30da310sm324952366b.20.2025.09.12.02.07.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Sep 2025 02:07:08 -0700 (PDT)
Message-ID: <51131b61-99cf-467f-b7dd-ea04c0028006@oss.qualcomm.com>
Date: Fri, 12 Sep 2025 11:07:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 2/2] arm64: dts: qcom: qcs6490: Introduce Radxa Dragon
 Q6A
To: Krzysztof Kozlowski <krzk@kernel.org>, Xilin Wu <sophon@radxa.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
References: <20250912-radxa-dragon-q6a-v1-0-8ccdbf9cd19b@radxa.com>
 <20250912-radxa-dragon-q6a-v1-2-8ccdbf9cd19b@radxa.com>
 <156176d8-9b5c-49e4-9c17-c201255f50d4@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <156176d8-9b5c-49e4-9c17-c201255f50d4@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=aPDwqa9m c=1 sm=1 tr=0 ts=68c3e2be cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=KkcfRuYvw7IKyLBQNsQA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: SrcIDeaPIdEnFGlQmdhN_G4MIpSqQnXs
X-Proofpoint-ORIG-GUID: SrcIDeaPIdEnFGlQmdhN_G4MIpSqQnXs
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTExMDA0MCBTYWx0ZWRfX8m6x/9HYC2Ws
 vmJfeHATBrhbKqXqgbSFOs831OGJl8eoiblGAtSAkcCdewaGYGuFZo8Pd/aSpq+A1MR4+6+DQ28
 mY6U8Sj7IIuwZrlFp19S6shyFL4tUkAb77e5jEcU01hDTHjXR5FEVmpKg+XtPa3hgUGI5LaMatS
 ulQfCTXdkmW8/IW3D0nPng6nnjeIBEm1IqcTfhy/DPAkN2Id4jEr/wAXnwIKzQokZPe6P84vap8
 0p1tAVnz8q7jfY0udFB8FOsIhRVrrwlDjUVFvpumMgPp02LZAyC4gUTZ+o0/abia95w0sB0ieCw
 WIsJIUaSHzHeRDgT+7PiYSVuYsz23eOh8j8ND5F1cONOJKLpplpVeVv4iGUWB2YPSfC3aoWbKTi
 qRZQiT1J
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_03,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 spamscore=0 suspectscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509110040

On 9/12/25 10:15 AM, Krzysztof Kozlowski wrote:
> On 12/09/2025 10:03, Xilin Wu wrote:
>> Radxa Dragon Q6A is a single board computer, based on the Qualcomm
>> QCS6490 platform.
>>
>> This is currently posted as RFC. More details are in the cover letter.
> 
> Please drop this sentence. If this is applied, then commit would be just
> misleading.

(you can include this kinds of comments under the --- line, so that
they won't be part of git log)

Konrad


