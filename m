Return-Path: <devicetree+bounces-145283-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 63DAEA30D14
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 14:35:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 163E53A4470
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 13:34:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAEB0220693;
	Tue, 11 Feb 2025 13:34:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CXNDTq8S"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13A0F1F03E2
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 13:34:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739280899; cv=none; b=o+l/e4d27DwJMybg7lyR6uPi9mFJO64U7mlMfiDw+cz/r8gg9SG8okwMnNQOEfOCy5eD/i1DSuoJq27SPyPp/xkXuRLtmLIPopV38YVugT+xDzGz7QHE+TW1j4/i+Om50JGGs+crX4GChBCJKBiTn/7hKD9ffaEulezgHbeUyZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739280899; c=relaxed/simple;
	bh=jDmOTyojiikoo0IfvxOxgpPziU5nD3zAgqiOBfyXwxg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AFC36KstnlhGoSiE4/c917od2IE2T4hw11mabbdnY9Y6vCYtgrkxolJHUp41nGqgv2NkmagMGNvqoQorSTJjFgVC75zCwqovuiz36mCIrFi5GsY5x4zHn9qq7PWZPUaG9nMpl3YPf5lltkEjeDjYTKB0E2ZJzTCGtqPVEvKxXQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CXNDTq8S; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51B4WqIt010521
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 13:34:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gdqMkX2dIK2G48mSPcv21J8TMTmaplncAXlkvHMiqFc=; b=CXNDTq8S4z/ICNkV
	9BhjoeNMBsN4hKDX4h7bjR92q3iXRA8J6SJ7MsjBgw2nG1/MR56x1GnEz8T3FUUu
	81ildL0d6sLAzdTqlsSSWHwMd+RzVMBwweqMc9hHzHxvaPqKMauJKtRDzN/pIawL
	jrj30mYUYlZeNFVh2UvQB7JELLL1V5F+pI63DqqQ/miv2za64mblpgRklYid8GRP
	I+HPWX+FfQ7BH4/Ydzsyzd8yvmOxSKG2qIuW9arnLWb+nktX4MVthDAjs293YETi
	vZhfjs6lPDGBnMXmjrPDQJuY6gzzneeFtF3V5PaDwRUQn/OaFm9ip/UPejZd8YcX
	guBTcw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44qcs5ckb3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 13:34:56 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4719ed0f8easo2443361cf.2
        for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 05:34:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739280896; x=1739885696;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gdqMkX2dIK2G48mSPcv21J8TMTmaplncAXlkvHMiqFc=;
        b=ujAalE44s/93hWAkKv92FiV7Bpol3FB8QsQhZaQU2wuHz+JLShuXOM8r/ZQYH4vNWL
         fmO3H7EzIH5lO4ee4YCq1dKyAvAbXI7eg5tL/2yqxCur4bQdq2ZWwXE+chriQ3zfSagh
         OFAqelp8WfHevqRza1Epch5weaBw10S+cMQPPbgJdXRaEmHGjZ6LM3N5IMnTZSsRIDZt
         XfrKjpM/nSNmmw2UgEj/gSz2wHpnCiuG1tlesyacVzemFRRermUaUSB6omVg2bLOaYkT
         SNgxKvKBct6HF4rzYlXnFa3B9WxlUaUEPsG7eH/g52bBP0qrgA+aZPUDdP2to6rdB8MR
         gjDw==
X-Forwarded-Encrypted: i=1; AJvYcCUgQDUQkqrxu7T4lnvBfn9OLHPyj9P5nMUcyvFIl4pcUXb/hS1NHXQHVnTPuoWCP/rGz9OcaVjsMLJk@vger.kernel.org
X-Gm-Message-State: AOJu0YyRIX0vHnch+abEwnOsR1Rhf/vz99sOfgfUKd9mM5BjpOqN/XbA
	J0e+lTGHS/xDFxVLHfWcm+DHfESeTiUHSXZiL8C+SHZEehmcVeiAuc9mt78CfZbozKWfVGv03yY
	koImyMbNhDITjXqxA5UvDeDoyPpjpEMunPXTuIGj9fdxhYgjuPCtC27bckbIU
X-Gm-Gg: ASbGncuzvkfIedIT/hbAIduMH5iPPW/BSUx4nnV1IJWWAWbDXYiF2yRy4/CWGAcaC5U
	RVuVQNXvD8Ecxt9vhJ3PCkJag+chuXd9FWUnPdTcc0MDULVxohue9FXhppYB5ikuKmOKFcDfS66
	JsYsPQfJi9rEn59AeOt4SA0CJNCmrZ+rKQvp1Sq8N/yGJcP7e54hOGC2FqL7e9lQDIgIPVNxmB6
	+7Lip70Q2Vp8oump0ovELLmOjX/UddxBBsWDdeCWq2vKQdVSbuJOCRqkTi4chPZKL02QsbkWu4Q
	kyn316W2U45q4ap7wkbfnSBDZ2bNazIDCF9JWoHT2Lt+lnMguDKOTd2KrJM=
X-Received: by 2002:a05:622a:1cc4:b0:471:9813:11da with SMTP id d75a77b69052e-47198131362mr34622081cf.2.1739280896125;
        Tue, 11 Feb 2025 05:34:56 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF4p3W/WqcNZ9kEltf2wq42jRqj2H0gTl/tRoIEU90x/Lb7PwVN+UzDtYa9Y78eR/nsuib4Bg==
X-Received: by 2002:a05:622a:1cc4:b0:471:9813:11da with SMTP id d75a77b69052e-47198131362mr34621961cf.2.1739280895804;
        Tue, 11 Feb 2025 05:34:55 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab7bca07294sm457847466b.68.2025.02.11.05.34.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Feb 2025 05:34:55 -0800 (PST)
Message-ID: <88e76385-c914-44a2-847b-09013cf4e752@oss.qualcomm.com>
Date: Tue, 11 Feb 2025 14:34:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/4] arm64: dts: qcom: sm8650: harmonize all
 unregulated thermal trip points
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250203-topic-sm8650-thermal-cpu-idle-v4-0-65e35f307301@linaro.org>
 <20250203-topic-sm8650-thermal-cpu-idle-v4-3-65e35f307301@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250203-topic-sm8650-thermal-cpu-idle-v4-3-65e35f307301@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: u3PgukyCMZTpYIcsWui2k7TLDq2SZhw5
X-Proofpoint-GUID: u3PgukyCMZTpYIcsWui2k7TLDq2SZhw5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-11_06,2025-02-11_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 impostorscore=0
 mlxlogscore=999 phishscore=0 lowpriorityscore=0 spamscore=0 malwarescore=0
 adultscore=0 clxscore=1015 mlxscore=0 priorityscore=1501 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2501170000
 definitions=main-2502110089

On 3.02.2025 2:23 PM, Neil Armstrong wrote:
> While the CPUs thermal is handled by the LMH, and GPU has a passive
> cooldowm via the HLOS DCVS, all the other thermal blocks only have
> hot and critical and no passive/active trip points.
> 
> Passive or active thermal management for those blocks should
> be either defined if somehow we can express those in DT or
> in the board definition if there's an active cooling device
> available.
> 
> The tsens MAX_THRESHOLD is set to 120C on those platforms, so set
> the hot to 110C to leave a chance to HLOS to react and critical to
> 115C to avoid the monitor thermal shutdown.
> 
> In the case a passive or active cooling device would be
> available, the downstream reference implementation uses
> the 95C "tj" trip point, as we already use for the
> gpuss thermal blocks.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

