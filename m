Return-Path: <devicetree+bounces-126124-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D0B9E0554
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 15:44:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8A5BE16CB9D
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 14:36:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8425520B20B;
	Mon,  2 Dec 2024 14:32:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Q+ptKS+K"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F302F20B208
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 14:32:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733149936; cv=none; b=QT3M13ebswD/auSGfWVihyN1m2zr73pLVcZ9x+73H+Y+r0601Z9/DaOcTgh3pU07gVk4H6hhpvwRiSd21KlA6dItp6N2j4WoC84pfjsq0wZz2zbZnJVdJI7yQYTMEDJ4kaP+in1xwlRnlDhcbE7Y4GKMismxHJXGCavpNFfS0KE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733149936; c=relaxed/simple;
	bh=kyHyGkq2nIbI1shfR+jeId84Q2d1KomTPYY5XTrnovI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hUmIeBmcHD8MlnPVwPjW0wIsrmtzjWvbKnyiSKtR24B/MWDkoAf4LM/nKbjzrkSEna21OmjoxILvy+jhZZyocJeWWaJ+opWarmDD9znObu5qqBalmvsOOzKR/XEKoJlfQYgmFcQw+hTTyTxNRtViI8uUlNGMVdwf7AAARoWB3+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Q+ptKS+K; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B29XNen026469
	for <devicetree@vger.kernel.org>; Mon, 2 Dec 2024 14:32:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4jbIOMJhwzZujSBJo3/F7e/CHOV5fOnXM/PrRzCOyTU=; b=Q+ptKS+KNn69T76+
	UTx7JyZYQsLwwtc/Y86rh0ScKOXyyFXvPlZnep4FtAQxnkFrKrnTppAawPIbUdHD
	rR2LSV8QG0rtGrOVvsyXJkgEE1q3hNNbNR8rhXejcQ+nHQf7dUbWVqugNmqsc3Fj
	tBpGB8K57UxUNZkTBr3grUSl9+dGdgFQAkgHIKx7b5AA7wIdUn8Z3RWz3TQKYsod
	793vWz74ooHLnRYmDs4jmrNDQTmks7TYyGBTk6VOjNehRk9BICZESrfLPtdoJDdT
	BkfTr0GJZJjk9sf7uDuY/WHvzTLcllopmaLL8gdLUcYQwSVs/EI8ptgA5cpfEVeX
	TWRDlg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 437ufe4yf3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 14:32:14 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-46699075dd4so9593161cf.3
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 06:32:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733149933; x=1733754733;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4jbIOMJhwzZujSBJo3/F7e/CHOV5fOnXM/PrRzCOyTU=;
        b=STiOHg5DcPHHpc0loHSdtUhd0O9Of9FH9CpDl0XjdTg2PJ/YDz5FP970CeNTQa9+Kp
         57KSAlip7GexGvpM3CPLpL1Lo2PlUW3Z6QUdPwqEhBh4CptDoeVaUeejX1o7ZGotuOYz
         mOeZ3V89Ssxepn50+5+5lMXooQNjetozvKiez6/bLlZ/J+5G8I56GXwKq5mcAz9ZMB++
         1KfLzYhoLda3XxC9LXRyPRlFXDPAJ9AnnltbBnb6kTX1bj8B6gF9I9mDVUVdssDiMd4C
         xMTn4pW1pGVybWdZewwF3lnF475B7McwzpHNgzanWua637lDSoM9KZ7CGzFPcd9czpKi
         V5mg==
X-Forwarded-Encrypted: i=1; AJvYcCXIjh45rqeQQqu6v4ZW6R/x3Cn9MILEG2Bg77/cQTdDjzzLKmivJ6617GnUd4hNVW6Vli4xJu/YFSDJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzhVfDSWcfX03G3dQR5KOuSPJefxIsDTlzXg83OBRMZ+wbAiYfv
	I2IyfM3/0AstqHtg2TuYGcyWb8cU7Bceq1xpKdX8+POCdakpEs2+Y6Jg6PtGjSweIrV4ue37bBR
	ydbk0G6mnwtETej3iXGlu5m3UlRLKSxeQGNLeQWA5Q2Ra8dYx2Vuozmqso/tq
X-Gm-Gg: ASbGncsNPNrhWaiAvj65jt5iSgmj01t5Teqo02CCRCA9bV79cMTjRzBo3001MQkk14k
	m6G5hfY9EXhlVxgz3BX45kktpDNxS3+8xVoPegbiyANSeuiRo8rnmXi7d9/BKRgG/Kdkj5AOwlD
	M4xi9sCpsq7IimCgkRfG/FlSS/5wF0rvr+Fon2iCCearyQp+BOeyWcWcGoZw6eP9/sJzrAvWN9P
	UTbf62/02xI8GvIOhs77a7qRVVe7LZQGQ7r9l5lbFGdRx1rfgTxU0w7T4KXeoHm/2sMe5wC1nX0
	Vej9bIL5XuVy0s23rje38JIuWqo34YQ=
X-Received: by 2002:ac8:5ac5:0:b0:460:9026:6861 with SMTP id d75a77b69052e-466b35709cfmr140702201cf.9.1733149932663;
        Mon, 02 Dec 2024 06:32:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGf1cpJzrtskSGjo4fG1SF33+hbIJADVXKdZwRVrExj/yH5XpQNftzyNj1gO9ADrRCLD3i4rA==
X-Received: by 2002:ac8:5ac5:0:b0:460:9026:6861 with SMTP id d75a77b69052e-466b35709cfmr140702001cf.9.1733149932112;
        Mon, 02 Dec 2024 06:32:12 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa5996d8b7asm514983366b.48.2024.12.02.06.32.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Dec 2024 06:32:11 -0800 (PST)
Message-ID: <30985d44-a460-437d-8423-615c198e02a2@oss.qualcomm.com>
Date: Mon, 2 Dec 2024 15:32:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: x1e80100-crd: Add USB multiport
 fingerprint reader
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Catalin Marinas
 <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, Abel Vesa <abel.vesa@linaro.org>,
        Johan Hovold <johan@kernel.org>
References: <20241118-x1e80100-crd-fp-v1-0-ec6b553a2e53@linaro.org>
 <20241118-x1e80100-crd-fp-v1-1-ec6b553a2e53@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241118-x1e80100-crd-fp-v1-1-ec6b553a2e53@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: sVtgVAD6x1u81DcMxs2U_K4iNXcZn1ab
X-Proofpoint-GUID: sVtgVAD6x1u81DcMxs2U_K4iNXcZn1ab
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 suspectscore=0
 spamscore=0 impostorscore=0 lowpriorityscore=0 priorityscore=1501
 mlxlogscore=529 clxscore=1015 adultscore=0 bulkscore=0 mlxscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412020125

On 18.11.2024 11:34 AM, Stephan Gerhold wrote:
> The X1E80100 CRD has a Goodix fingerprint reader connected to the USB
> multiport controller on eUSB6. All other ports (including USB super-speed
> pins) are unused.
> 
> Set it up in the device tree together with the NXP PTN3222 repeater.
> 
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

