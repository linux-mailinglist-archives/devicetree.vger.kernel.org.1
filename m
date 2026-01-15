Return-Path: <devicetree+bounces-255792-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D3071D29067
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 23:30:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 087E33007F39
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 22:30:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DB85330330;
	Thu, 15 Jan 2026 22:30:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZGfrPDJC";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Zg4P78PB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE562E090B
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 22:30:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768516229; cv=none; b=XpkTRsT4i4OndzirJgDSBoTcR1AFO1jXejz514Okm+D6KB6oBaltBnHzzBMkv9kUlNB/1EBrfEjwFwepaTCMNwfNcrsr08sL/KeIpSWMMWFo7/jepcGNLTFVFi74+wJBa6hFlpCwy5zkNoxmsJu0i+EAng24YnEXyZDGRL8Mu9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768516229; c=relaxed/simple;
	bh=Q1ztBYZHbeuHfSYeh4P+EVbAsMT/PxPj5sxkIr1hX3A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gN9IrWYV1TENPoIDO0sKMwGjmealpC2+YuVjmC4MHtd84G3OLherwhLxQENTvaXTGcM/s6mAZd35tgyESsVfuQW0YH2jomh1YXPtguk1Q7KgVPwyfxP3l9G2SII3HQZ2EAT+wgBHqybLSHZOajWkuv+6hSQSar9p/cJ6nPZTRPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZGfrPDJC; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Zg4P78PB; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60FMImON3677275
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 22:30:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RLTv/1YWn/ElIxiYzdBl6a2RnzNYFUXfvjrstlyGkzI=; b=ZGfrPDJCgCWwJvNj
	hcP4KgxMFEL81528zd9FqBDLEDfbg8JiPI2gwhtJH+eONFYsck1FyJzBfo2laI00
	NjCEuBG5xIz2gne4zjurmMxzNMFEj+4hn193yEHjxi+E3BJqxcWhV37GYhgLZIgM
	T5YmTWjLzCDIefmbFNr/bS6ms8SO2esYb9BHlbabAoADlRpUwaWOFviFXDEfTm1X
	fl2SXfCNw6Hv7e7YAdLVIHH01FssSve4EtYDjJ37VLNJ8HAw+MeRwC56jFkvnCkM
	efbDRSL8YNBS7UOWpBnHbiglZRAvzWES3P2kx8tbkr4PK0U0G4DASYNHKlMv03u+
	331jAg==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bpwpxj8r1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 22:30:27 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-2adc3990fecso1004654eec.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 14:30:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768516227; x=1769121027; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RLTv/1YWn/ElIxiYzdBl6a2RnzNYFUXfvjrstlyGkzI=;
        b=Zg4P78PBN+QJD4kVz++/5xPkyVQl6lOAIKW5m0fqbAhE9Eq5JFRLjaADQWDvHDYVXU
         FLtD4cp14rI9DnLVAswjiNZfRFcgTrGREcP3IbNJXlJPJq6veYJQ9SpV01IzIWS+Pm7Z
         z6I03PZCPX0pa+dW9PCENdcvsZzgzb3QqLEMNPr7Exn5Jgl1AVCaFG8uyNnDqw2AL90T
         1w3jy+oxwJ9eIvP3FTIv0Ud/6nEAKhqg7+tBV3Sg4JpA31A8YvpodJCvbWgXe72YdjAE
         fbYsffM4DmH1RQh1DHwYWS/F8D2y8g3iBQYVH32LqlraK4WUB5SM09jLOoFRvxlaAX8K
         cPhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768516227; x=1769121027;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RLTv/1YWn/ElIxiYzdBl6a2RnzNYFUXfvjrstlyGkzI=;
        b=v1h32EuJzY9G/mlg6PRire9HpensObi/a6/Ti2fjyZZbZPQKBQO5QymjNoSbD8dOr8
         In+vrzgPOOu8kCAAAXyzICDxZY27x2u4sibpudlca25LBHi/yv2kZTCAGxmuWvnMA2I/
         Y8UhMcwWrwRpTQ8T/4tsTYqabrjY7MN8Cbfc4ztOJnDTlYiUnjOVHBtoUHtlL5FFORM6
         j8aKJQLOJzVxcAJ1zZa6BTpIdWvvbH8LaQs+MPpIUCS9+F1BJhwIfm8kkD2PjIHj85HY
         2yMJ4JxhtM/NyLI0lT/OiXXlYwTp2+MFRXiBu1wge0pIPazvGCQ9LYW0eK7uhpI0Z3Eq
         vn2w==
X-Forwarded-Encrypted: i=1; AJvYcCUjTRemYR6b+a9Shb0VpiWDGpryRxxqcDhriqZyoc7c5kvrLy/kqj/CABBpuRalDI48C+udzJd2hRMs@vger.kernel.org
X-Gm-Message-State: AOJu0YxSxt0gzqYNEv01eqRZl08W0l7VrPKCU5dA6nwh+7stN7GF7Vjr
	44IVwLX9oIzO0UBxx6b5Cj5vsjxI0qZoAPTwvbG0Ob7LM3AxMSmZ67P2LH6J4qW8EAlWimD1G9t
	b8h7BV++wdgTOVARDMravp55j3rH1hot6t4csfuloVvUMLDguyHMR4daqcukOzIdt
X-Gm-Gg: AY/fxX7OnMerakqOf7E9Brlu5uSRNUaBHc8BztaVSavO0gsPJfvISwkGBnvHZjCANG7
	XhPlU6PkjEl6HmbjGMIr+wV7PIPJPaI4uQhFb/v4I/Jo7kqqu3WNuelBKvEZcxXfiTTthVUjwm+
	yHdkRGAZ5ywk3c5GLNdu74jItWv2Y5h02R0hzEeIoO6OqZeKfMYni3R4V0/4siDS3RvSMkyst/P
	kSpxQWqa9gAGWrswXHT8YZRang/8bpVtKbATq0EWAMJAVddS4wcy3wNumfTAl4D3TgmbX02cvYk
	5DGWv0EMf7prRX8jFqTEJp2BpTD6fygH2rGy36Q2o1+GfmV9ChS/7FWqahIF06dOBuY350SixSn
	QRQAp8syeam0xsagEa6O+YZDmROmOXr+LMNRwtt3WxPMdTrhl3D+S+OsX4/nf3eLqmJmTpWzYil
	+/
X-Received: by 2002:a05:7300:640d:b0:2b0:487c:7aba with SMTP id 5a478bee46e88-2b66434e796mr6726492eec.21.1768516225258;
        Thu, 15 Jan 2026 14:30:25 -0800 (PST)
X-Received: by 2002:a05:7300:640d:b0:2b0:487c:7aba with SMTP id 5a478bee46e88-2b66434e796mr6726379eec.21.1768516223209;
        Thu, 15 Jan 2026 14:30:23 -0800 (PST)
Received: from [192.168.1.3] (c-24-130-122-79.hsd1.ca.comcast.net. [24.130.122.79])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b6b36564ffsm635436eec.28.2026.01.15.14.30.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jan 2026 14:30:22 -0800 (PST)
Message-ID: <52b2b799-09e6-40a4-bea8-c7e8bf21cf51@oss.qualcomm.com>
Date: Thu, 15 Jan 2026 14:30:21 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 04/14] wifi: ath10k: snoc: support powering on the
 device via pwrseq
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Jeff Johnson <jjohnson@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Matthias Kaehlcke <mka@chromium.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-bluetooth@vger.kernel.org,
        linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
        linux-pm@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
References: <20260106-wcn3990-pwrctl-v2-0-0386204328be@oss.qualcomm.com>
 <20260106-wcn3990-pwrctl-v2-4-0386204328be@oss.qualcomm.com>
From: Jeff Johnson <jeff.johnson@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <20260106-wcn3990-pwrctl-v2-4-0386204328be@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=ZtPg6t7G c=1 sm=1 tr=0 ts=69696a83 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=Tg7Z00WN3eLgNEO9NLUKUQ==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=L2C35plnZqJTIQ-6vfsA:9
 a=QEXdDO2ut3YA:10 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-GUID: IA63uocqISOFjk4A5luMmmddq8vgYwon
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDE3NyBTYWx0ZWRfX6FLFPmAS+qWL
 6GP0LpRwIoqdvlGyQXdM2gfpjXr8T3vLG3T+XVDOPckjXPPt2zCp6x0Te3cZ9zWUEMGJ1zIkUnc
 OUIZkSbea24llqHQFyHgf29pDTmmWJC9hWTEhh/LCs8SXdTStlVUzhJqmJQTAOidu9Vv2Xr5FGx
 v7jMWnYomn9DXnngo284W9TOzR5xngVIGcQemFJyDeitJcF+ZR4zqUE3+n0Q22e8kC4mgkcpZxV
 mIBxj6amjDb+K+fk+N6JPgRK2r8lKhbLa91oG5CwW81Svi6mLclDKla4S8W00BhRkD2RYE+nYsb
 nDsY9qXwbc2EHMejUor6hcyD+qBW7o40CRYaGwAuAAtkmtFEtFRkcHSJ68iyN9hR09lzVc5vFCU
 AXxHdGIm2+CP2auWD6sTZ9pnRfuzDrg2HAQgwKtUFOllGBYBbbarjHE/8ETTAeOLf5rejibdAqF
 +lXIBjHdh55qkk2JLWw==
X-Proofpoint-ORIG-GUID: IA63uocqISOFjk4A5luMmmddq8vgYwon
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_07,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 phishscore=0 clxscore=1015 priorityscore=1501
 lowpriorityscore=0 impostorscore=0 malwarescore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601150177

On 1/5/2026 5:01 PM, Dmitry Baryshkov wrote:
> The WCN39xx family of WiFi/BT chips incorporates a simple PMU, spreading
> voltages over internal rails. Implement support for using powersequencer
> for this family of ATH10k devices in addition to using regulators.
> 
> Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>  drivers/net/wireless/ath/ath10k/snoc.c | 54 ++++++++++++++++++++++++++++++++--
>  drivers/net/wireless/ath/ath10k/snoc.h |  2 ++

My automation flagged:
* drivers/net/wireless/ath/ath10k/snoc.c has no QTI copyright
* drivers/net/wireless/ath/ath10k/snoc.h has no QTI copyright
* 2 copyright issues

I'll add these manually in my 'pending' branch

/jeff

