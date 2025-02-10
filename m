Return-Path: <devicetree+bounces-144867-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 690CDA2F863
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 20:16:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C75A8188A76F
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 19:16:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF5A32566C1;
	Mon, 10 Feb 2025 19:16:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LBt5QMC+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2313B25E46C
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 19:15:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739214960; cv=none; b=JLRnkH1pxBwQkK9HhDokjI70SbLxlGTwkysj7ycXUzay0C8QQoL2dAexacOG6VoHkk2srg3HdrYHWQrr4ovSmV0tgYiuj30yAVsOxw+h+JyDDJaIXbdRfErkBuhWrh1ES8tJoqkkJ/cbJYEJoPu3dNIZa/3uoE0Ms49gBj5xzRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739214960; c=relaxed/simple;
	bh=I7EP4dIn20KzI1lTsBZnqqe5AzeZJFYSxOlCRE6Fg+Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oXGhMGcIQ/Qword8ODcNpvcAr9kUFZ0VhzET20YDOdHxWwlp6fOSjGC0tweaxSWn2MOK+aufwqXIzCJJRvZHVbeyQkLvLCPfJoK3YrMAAP/D5mcwqJcuisEofrsIuBud0nDF59yeMUmgOO5jN59gOHJUO1Ak3U1D0lwPIG0AcpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LBt5QMC+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51AHsT1t015814
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 19:15:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qh0DdHsxr5WFfQNaNYUNbSlgkdYE838NMXB8RSVde18=; b=LBt5QMC+vpSoLesb
	wWYGC62ZNxVGmAlbUe3xin7wIlo4tSzN8uRiugDxfTyjMgMQlJXnzpH5fQshe/P8
	CuBrSL7jBXu9ME3xZzYtnNPBU6NtrsInE6nomwQ34WwImIofLUv7kOljfQ36PEcU
	xUupabKDT1zTbfKKkMhafwi5681Xg0u1jPQ8fuUGEj1USrdiLviMp5Tw5wYmuop2
	7sCGD4wbSm5ZAvgJLKXiN+7X1ZnPk8XFRjqA4cRvZUyToPsyTmY6vXtoZfyij4Ve
	ecZsyoO4SWYW1i2DzL/kGTQHSa9Cx/AgTILeexcWVZRnc9PJzKJpqskEV4LixyIY
	Z4bZzw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44qe6nsqkw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 19:15:58 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4718cb6689eso4010981cf.0
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 11:15:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739214957; x=1739819757;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qh0DdHsxr5WFfQNaNYUNbSlgkdYE838NMXB8RSVde18=;
        b=FaPAu/zgbIlyapEk3ccWOuRo6NF5vNCx2VeN1kyvMu/CUvAlVG/bdhUN7UyWY4DK5M
         mBNUXYH4gGOYIVveFN77hv4fDeTAK/Xl7lLaz0O1J9o7XqBWaGexx2s2aVvRy8gpNiiS
         VjXRIhQZwXR+gvVCmjPzpbTs3uGnyU5E5skZwEp9SdqDt7xSgMqMbdDBTZFT+TqB/pc9
         BETb/px/xXIaxl4/aOks6CItrqiaDg2/yxJ8dBPV6XfktAL8ANG//OZVm7DYtuHzJLno
         6YCF/JVzT9C74eTSsYb3C8Qgp31pPdSetXQZWgGQjEAJ+yEythv8BbJ7TM5R9gY6SeZT
         SPjQ==
X-Forwarded-Encrypted: i=1; AJvYcCXCRr9l4xaKfBzqu924Tx0gkA9Gh8bIRe1aneCb6gyz9vh903kxPiAMYkm3BnERXWO7isxB8YIHepiu@vger.kernel.org
X-Gm-Message-State: AOJu0YwTXxZKMk6G0NhytdvZtPK+F91HaGqI0SIjfQKrcksyuYiVxW6E
	v+KGocX6RspUS6KMoEyjeMIB6oQSMNcy4pFq8Bcicgl7VoKh0z8ZsGFEg+RVQGWxA3wMc0H5qvx
	koLjDQSYgLRl05XL7u+c37edLUoByPBdB1DEsUF7WWbYOzWCWEzRzdxDGlw+Q
X-Gm-Gg: ASbGnct97p2lCg/W2cypVjWRYBIHasxbf46yYpFPDQbiDgiHfa8wWEfOpJWMlyyJYJ/
	NedpS6eGHApu2h8rkQ01fmRoiWQvIHs0bhVvaRKXa6REDiSVlsJMZtKNlWwi8A6jXEMyrqIGpPb
	3EC4rP6qltWfhaaFDa9zBaEHg5UulJR6skHg4coB/t9ym8yiJhQi5bnHeOfwrtyhaRGXcwZvW6g
	Jm7LxuppXjJrczgo4LTFXjwWzdMOQ58A1Y1IhONt4qgMMzcs5TP4lPhzaM7inv/w2enfRD2k+46
	fZSweZ/k+kG8QiKKnxtp+hlmOKYZ4p8RpfrT/0dH3Rq8XFttuJrRp0J8Zpo=
X-Received: by 2002:ac8:5888:0:b0:467:825e:133b with SMTP id d75a77b69052e-47167b06100mr78390751cf.13.1739214956957;
        Mon, 10 Feb 2025 11:15:56 -0800 (PST)
X-Google-Smtp-Source: AGHT+IELcVkphzJI1Pe/Lq5r/H1/ISks8CXsMqcrAL+HMp1r0aVvEjTBcEfW3ZYEXqvqpR9D9NBzUQ==
X-Received: by 2002:ac8:5888:0:b0:467:825e:133b with SMTP id d75a77b69052e-47167b06100mr78390561cf.13.1739214956642;
        Mon, 10 Feb 2025 11:15:56 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5de4ae412a3sm6910039a12.41.2025.02.10.11.15.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Feb 2025 11:15:55 -0800 (PST)
Message-ID: <a3cd632f-7216-4b87-b383-3bf59f25301c@oss.qualcomm.com>
Date: Mon, 10 Feb 2025 20:15:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/1] arm64: dts: qcom: sa8775p-ride: Add firmware-name
 in BT node
To: Cheng Jiang <quic_chejiang@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_jiaymao@quicinc.com,
        quic_shuaz@quicinc.com, quic_zijuhu@quicinc.com,
        quic_mohamull@quicinc.com
References: <20250110063914.28001-1-quic_chejiang@quicinc.com>
 <20250110063914.28001-2-quic_chejiang@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250110063914.28001-2-quic_chejiang@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: WrRzt1UnO2VMB8UETpEOUxsD-vplQ8RG
X-Proofpoint-ORIG-GUID: WrRzt1UnO2VMB8UETpEOUxsD-vplQ8RG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-10_10,2025-02-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 adultscore=0 bulkscore=0 spamscore=0 malwarescore=0 mlxscore=0
 phishscore=0 mlxlogscore=999 impostorscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2501170000 definitions=main-2502100155

On 10.01.2025 7:39 AM, Cheng Jiang wrote:
> The sa8775p-ride platform uses the QCA6698 Bluetooth chip. While the
> QCA6698 shares the same IP core as the WCN6855, it has different RF
> components and RAM sizes, requiring new firmware files. Use the
> firmware-name property to specify the NVM and rampatch firmware to load.
> 
> Signed-off-by: Cheng Jiang <quic_chejiang@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

