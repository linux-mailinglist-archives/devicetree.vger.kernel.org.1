Return-Path: <devicetree+bounces-107779-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D29D1990044
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 11:52:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 123291C23A8C
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 09:52:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56B6814A0B3;
	Fri,  4 Oct 2024 09:52:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fJFCClJe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E146514659B
	for <devicetree@vger.kernel.org>; Fri,  4 Oct 2024 09:52:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728035528; cv=none; b=l7yUrHfIam7UYh9y2tKlLZs6MvAzUktR+99IAvhbxTT5a7mAWpX2dYxUZNvbXbDotMojkSvzzQRaN0Bhplyncw+saB2mIFoKI+MyT2mgJ1RWMeTdThgny35jByzBtXef0fgVrmNQvMIXxTy6Tr2oVfG+UAJU86agh+FP4PkujSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728035528; c=relaxed/simple;
	bh=hqUJ91/dhvaTc4L9GrU+AOxUB7dgu30xl767pVce000=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UFhwga1VQ2LYgNj+zOqvZiPJVieRIXLkNilvjfbqipzR4T3nVsRZiC8yG3kbnkwSofV6ol3nIJaC1A0uUNrIjHwkome0odHZQjK5MsQi3T4zHpBkGLzsKMpq+ZZF9ehuJJs3P/Zzaakijiib1EFwts/dInJ9bEsccyNHEnCyoeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fJFCClJe; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4940PeAM026484
	for <devicetree@vger.kernel.org>; Fri, 4 Oct 2024 09:52:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PHrhiS9aF4dVFJhryk1DEGh6FBVKspwWLWPFq79DGmU=; b=fJFCClJelAqnC0A3
	djpzNG1YM6ZwLU/UmLmnzrt+qxQWo90q356ymFqO9dLqbu5KDzYZ6UNXH23dlxhs
	QZPnC6tFN9KUiM/0Vv5UrSDD4yoMECmNwW4eJEAI8p5pijyu3VFHO8nG9+Mj1awL
	D2Hd+UGOv/2gmnqKRjfNMySL7ASEK4rQN/HtD3Qu7k4isBoHWagrrXUt6pqe1ZXa
	dndKSj9u931NVg50QUQgyAdIj+rcMoiXhfDhbggIsLkQYO2aav8+0wRA0aX8oWig
	ScIro45BiLGbHFnH0lMXuKYHJfW57obMX+oge2W+skAm0B2tN6K7S6D71hfBw+bY
	4WcRuA==
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com [209.85.218.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42205n1pvw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 04 Oct 2024 09:52:05 +0000 (GMT)
Received: by mail-ej1-f72.google.com with SMTP id a640c23a62f3a-a93d13df5c7so28484566b.1
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2024 02:52:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728035524; x=1728640324;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PHrhiS9aF4dVFJhryk1DEGh6FBVKspwWLWPFq79DGmU=;
        b=hLen5qkdzTtTbecSvfnh07Hsn/fJ/XrngVXVyESmDa90ywjMdmY9SqKAhXY8FONyPD
         CVg9B9jNSgqeyQBYbxRfcn5cNrQx107p/qNgK2TDuQCB520nasyGvQF9La5kfwWDrI4S
         EErtDYJPY6cLw+u8hc4PQQRP/kM1C4BWHt+LsDPq3v+hGRkjxIkNka8AB0i/8nLo4DMT
         OkMb7jOA8fcS3QFiHYaTDw4zelobK64vTL/7eP4MoCI4iIP4a78hjM876UVrFHF3fMSO
         fclViSfyQfU7BtxnGPw/ceTewXoM/m4yIFYAtktQfAOCslIdpA5xYRaFRxMopSk2R0O7
         0oyQ==
X-Forwarded-Encrypted: i=1; AJvYcCXkc+HNvHbp/j1QT9l4P8chlfA5UellABuj7IjHGlRXo4FeLnua/C23Tbsz7TlSAsS9aQ0gJ79LTpq5@vger.kernel.org
X-Gm-Message-State: AOJu0YyPzoJxOKExpv5S3Pw5cGRYO0hw1IAXvdwHFQWy5aPUJPvg9gKH
	cGS5kRDsdcXfOowkHkNTRXWlHgMWmN62ydLw+MJeppG7XgDAzqA//tbvM0I+ei+nOB9969p231G
	WLZxZOSv2G4Cyv+5MUOZRjqlrGEYZXi3oal+s5eM1VEbOJd3IDgQGUvCngikw
X-Received: by 2002:a17:906:c14b:b0:a8a:81ec:f731 with SMTP id a640c23a62f3a-a991bcea672mr88474066b.2.1728035524005;
        Fri, 04 Oct 2024 02:52:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFoXbDVzlLG/0eSgR46gskYvufRHmEySuWo1iM56NX4JvJZbxmUILm1TUVBFh/KnzlOyc/cPg==
X-Received: by 2002:a17:906:c14b:b0:a8a:81ec:f731 with SMTP id a640c23a62f3a-a991bcea672mr88467966b.2.1728035520470;
        Fri, 04 Oct 2024 02:52:00 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9910286fe7sm201901466b.48.2024.10.04.02.51.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Oct 2024 02:52:00 -0700 (PDT)
Message-ID: <0b169985-687d-4161-9130-44c69e0ef0ce@oss.qualcomm.com>
Date: Fri, 4 Oct 2024 11:51:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 1/2] arm64: dts: qcom: sm8650: extend the register
 range for UFS ICE
To: Bartosz Golaszewski <brgl@bgdev.pl>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Om Prakash Singh <quic_omprsing@quicinc.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Gaurav Kashyap <quic_gaurkash@quicinc.com>
References: <20241001-wrapped-keys-dts-v7-0-a668519b7ffe@linaro.org>
 <20241001-wrapped-keys-dts-v7-1-a668519b7ffe@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241001-wrapped-keys-dts-v7-1-a668519b7ffe@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: c_lGoGDnOGDlcraa2oSIRkLJ-kxpxhZa
X-Proofpoint-GUID: c_lGoGDnOGDlcraa2oSIRkLJ-kxpxhZa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=898 adultscore=0
 clxscore=1015 bulkscore=0 malwarescore=0 phishscore=0 spamscore=0
 suspectscore=0 lowpriorityscore=0 impostorscore=0 mlxscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410040071

On 1.10.2024 10:35 AM, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> The Inline Crypto Engine (ICE) for UFS/EMMC supports the Hardware Key
> Manager (HWKM) to securely manage storage keys. Enable using this
> hardware on sm8650.
> 
> This requires us to increase the register range: HWKM is an additional
> piece of hardware sitting alongside ICE, and extends the old ICE's
> register space.
> 
> Reviewed-by: Om Prakash Singh <quic_omprsing@quicinc.com>
> Tested-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Gaurav Kashyap <quic_gaurkash@quicinc.com>
> Co-developed-by: Gaurav Kashyap <quic_gaurkash@quicinc.com>
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

