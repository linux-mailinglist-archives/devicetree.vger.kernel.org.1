Return-Path: <devicetree+bounces-135350-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 82126A009C6
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 14:14:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5F9A63A36CF
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 13:14:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF5FC1482E3;
	Fri,  3 Jan 2025 13:14:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ilRI2H2i"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75F5D28E8
	for <devicetree@vger.kernel.org>; Fri,  3 Jan 2025 13:14:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735910066; cv=none; b=EHZ2t2PBL/NREFW8jHore/MxKqBHEQV/3ZXWJb7DY/YT8aL7LQRE1NdDgS3ylvJ+XlvgmfcojlUuS7tsylxQGmf0UFouzr05+urTWpf9fuYhK3FUOAJpQ5WwHMDsK4alXuFZBAKAW/J39YEbHsZaOmFxQU94hfa3qpCQCQs/a0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735910066; c=relaxed/simple;
	bh=2skwZes6S2F4o/TX9dsIHLJ7QRN9SNxYlDV4H1y3bXM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GAll0eKxgT8dGJOog39niThXUCl2pYPh8uo1e/3e12H0Si5yHTuycFyMVbVxxOSewLk+BVKv7gBdYDIfCDJN2eEUKlKXS+1PIJTcjE/wXZCj/cUJiNFKuv7c6tOLIN21wudhz5+qy7GfWIfGirCPWvYKb/nz23DVyqbKFODxhLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ilRI2H2i; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 503C4JkW027362
	for <devicetree@vger.kernel.org>; Fri, 3 Jan 2025 13:14:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Zs4a2hB2iyjshiuXvUroL7xY8a8QZWPTWdCIATDXiu8=; b=ilRI2H2idECs2PmL
	PN7mxrqgB9zaEGXw6A5EdowL11CQOexJZdIRc74ryDWSPooNAycjSgO8VwSvtWQs
	VwliAx0UHvpejLOeW2Nld/J0xwWR1FLJvQulerfmGsf8u8wRz+W/NfnTFWuKwYRs
	u7l439GAHvM0PCaCivOYibmEyzBBSFLbNBEUSfzfLH7SdpxyrGaS01aLLyPH65El
	lWakqyLHICgRpJ0oV3+PiCLteuXV5ObWnbMu+2FB34hkpRzSqadASfPX3rutG+KZ
	3ur0RV788DNcKyLMn9LoD5oFxcFS6vSg3OXH6o7oV8/TSp1/chScOkDILFhziPsU
	XIQ4AA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43xfjk842q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 03 Jan 2025 13:14:24 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4679af4d6b7so29349491cf.0
        for <devicetree@vger.kernel.org>; Fri, 03 Jan 2025 05:14:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735910063; x=1736514863;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Zs4a2hB2iyjshiuXvUroL7xY8a8QZWPTWdCIATDXiu8=;
        b=bNVU3mSO9xLGoCbE0K4lD3K1qk2R3WeWafE7uv2Le0lliiJu22l1pJBMHl4xy74SUh
         8rVAwZmnTeq22+JSg7hIE4aTG1r8/KUB8Rp/kS3GQebXTrXiN25vCtOTc9cYJCJBREAG
         9cVl6rwOZyWCBJC6qvXb3kVeQxB5mNRc5Ip9KbREfEvnP9TAKae3PWVFbNUwHFXziJJk
         cUg69oJsKSwew4hddd7ckxvkzvPQsEkf3DmASDXJTz5WggXFRVHWuCgyFZXRVolzVZ7S
         dUoUntZQotQU6SlUiy41zLzTDr5OgQW4Qhl9CJi2n1XMW1jApM18tAwe+pY2ir8BYhii
         uYCA==
X-Forwarded-Encrypted: i=1; AJvYcCV0s+cIhkHv+urTcCI7S8t7n2fBmyitZthoudTejP4HB3usfTDWg89j0HPO+8q7f6fprvJfxoSqynpj@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2GLEAM7RuIgLSizhTTLdNYWTO6MHHtrqfYrMWkTISj8e3CJCI
	Vl9DyZU+eREdpnNVXqbcy4ZMOKvXGCNYuBsge8OgYRISAW2vCMrQSLTPgL+FRKdHAUemaYm0Fvq
	9L1kpbna89cs73ihbaNwjXeGjNCU8EsMyIDkfH7HKAimI9vSKpeCv+Lrari7s
X-Gm-Gg: ASbGnctZZT0oRS0mAcL8Imhjb8OSuwHqf1cLmM6tAYyZnU63LlGaMFXwmFV5zbZwC8r
	LAUlTZIV/+9YTb7JGIb3sHBUZ1624fBzLtuZspbodPuO7dFum2JbIPchnHInhgJoCCopHwWDK6e
	rUSe4GZ5orTE3kmCKyo53g7lImSIMnG4P6EyZ3mtcQKKPqUIqJxQwsBU50Pcu2EqCTGYunzy8AK
	7Rih7BMvQLUkZJkLaWSTtr/vhX/xcGdwDZpGXb0Sf6kI577H6C1H5rWF++Dlx14N6h8AK/CvRut
	hGBcDj8/yNtVzEtO2sFV4WkfE4XGecoDoNc=
X-Received: by 2002:a05:622a:2891:b0:464:9463:7475 with SMTP id d75a77b69052e-46a80758455mr163481161cf.2.1735910063448;
        Fri, 03 Jan 2025 05:14:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEtSCiX+k+KsO86q71/HLEx4LrYnqWiPisT04z7RdRIYvR9bGfBVgELyJkqShujMdRnUNYBOQ==
X-Received: by 2002:a05:622a:2891:b0:464:9463:7475 with SMTP id d75a77b69052e-46a80758455mr163481071cf.2.1735910063124;
        Fri, 03 Jan 2025 05:14:23 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0efe490asm1890162166b.98.2025.01.03.05.14.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Jan 2025 05:14:22 -0800 (PST)
Message-ID: <dca2e244-873f-4c3f-b7f5-86e6bec3d9fc@oss.qualcomm.com>
Date: Fri, 3 Jan 2025 14:14:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 7/8] arm64: dts: qcom: qcs8300: enable pcie1 for
 qcs8300 soc
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>, vkoul@kernel.org,
        kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, dmitry.baryshkov@linaro.org,
        neil.armstrong@linaro.org, abel.vesa@linaro.org,
        manivannan.sadhasivam@linaro.org, lpieralisi@kernel.org, kw@linux.com,
        bhelgaas@google.com, andersson@kernel.org, konradybcio@kernel.org
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, quic_qianyu@quicinc.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
References: <20241220055239.2744024-1-quic_ziyuzhan@quicinc.com>
 <20241220055239.2744024-8-quic_ziyuzhan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241220055239.2744024-8-quic_ziyuzhan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: D7WzcqUNjtasr_9LNWmSWc3BRKT43SdI
X-Proofpoint-GUID: D7WzcqUNjtasr_9LNWmSWc3BRKT43SdI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 lowpriorityscore=0
 malwarescore=0 priorityscore=1501 mlxlogscore=540 spamscore=0
 clxscore=1015 bulkscore=0 suspectscore=0 impostorscore=0 phishscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501030116

On 20.12.2024 6:52 AM, Ziyue Zhang wrote:
> Add configurations in devicetree for PCIe1, including registers, clocks,
> interrupts and phy setting sequence.
> 
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---

Acked-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

