Return-Path: <devicetree+bounces-214234-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF27B4879E
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 10:54:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6AB6017FD48
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 08:54:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBEF92ECE89;
	Mon,  8 Sep 2025 08:54:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="T6usiIBP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 928DC2EC0AA
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 08:54:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757321679; cv=none; b=iz/2UL2EMwk9re0HWIgPa3iYKixj0rD/LDZS8mr2MKS1uZ7UC/m16sna2LCxxDniKqcZzke5SposXPsu9MP67SUHI0DkgGNCm+6xTsWmAP/iEF8NAMYibSdJj6zUMMTBCKVoKbQRtitTPkumHT+hLjjNvhqDJpiUagMekC8B9os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757321679; c=relaxed/simple;
	bh=U/BzMoUvt1p+lrlzfnWM130TYZNT0we5cA8Qr/q5vl8=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=FgK+cDgiwg/P//4fKnP3GY6Z6iJ++WjZxzH+6KtLfmp+gtS6QGoJ1PYzsYqkDUqzYdQekoqIJxiV7vMdCSY43bqj/YBcJ12C3CFF/CRv7eA5xpDW7uTVPFbCsrt+7Pq8SSibQ/4mMQ29tAuyy4E8YfqSLGInt41USxhCcrWx9d8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=T6usiIBP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5886edAj004031
	for <devicetree@vger.kernel.org>; Mon, 8 Sep 2025 08:54:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4hWa8Xzz78GSzXajFVYXPHM0TIhQ9mpklAO6KpkgFcw=; b=T6usiIBP7TwK4R4g
	Fz8v3EI1VV9Y0b7oLQum5vOwmpTctf0cuc4whkRkoQLhy64q1Skfvt3cKBwvRS+p
	RWy521tjysolVY7C+mYSMlAi7VMthHV72Y0XpWdupUJx1Gzbj5xAuCQrxTxrD3to
	baQGyk3dxUBSyWs3lBcgCgjUVND1INNrOIjNXzcOuiJbIkGv8QlRAI1VVTbEnVUo
	rX3t45heLjPRx9hMQgPFCQsAXbKXuIS3nj9TRFWs5U5q+wTG/ogMhAZPoMART6IA
	XZJNfRRW93ZaD8MvzMogGdIskkwO/vPYhIAM09L2BYfhVVLsvKl/0D9phHAvMV0+
	CynHmQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 491t37rcjt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 08:54:36 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-74910ab069bso1071836d6.1
        for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 01:54:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757321675; x=1757926475;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4hWa8Xzz78GSzXajFVYXPHM0TIhQ9mpklAO6KpkgFcw=;
        b=A+PuyGCdxG/8w7w9FsviaHascHDTNBC5tKj2w2N2ni4QL/zwXAm0EqrCwGi5g9bxTi
         YWVMfP5EpeD2JQC8M2hbBfCHVerEQrCd8LT7gq/3VnQhZp1AwxL7A31TiJv0t2IB2Y0R
         wTbVVDdJnek/lGqQtB59dy0BNbnAvxEqOU47tAX5fXGc4oSRoC0E364+SlBAqLmVqR88
         4AHqiPihISbqfNPrNBcz75gisM1acBHHgli7z96FC4XTtwJsPLYv1aIqCMXlcI0nTuJ7
         U/hEh1otf98UBLmPbfQlC6tBti8mgBPLfEueBFuGhV1uytH+cA8qvsQFFahlGeALpEiF
         KXIg==
X-Forwarded-Encrypted: i=1; AJvYcCVu/yrW7TV6lmiVkOm8bkIcQ6KjoQo84gqc4uRtwJraTSz4Q33Q2LCAz99ohWYUAjf6BgeClQ6hjGsM@vger.kernel.org
X-Gm-Message-State: AOJu0YzMRkt5u+hOz2wp6pqyzIqIKQmj9aiassyFRm9RXK/ep5qaphZr
	65KKefSN2uRHOBM5IZ1DyVcyrMNEP9PVFCkqK6ZGkTlie1RQB5qg+/+cZbZVIQFB0Vxtp9PYFq8
	F/IFnMvA+tUSNaN6DjN4KBOw+zyJ6Qltddo7RbAHyw/nwTpQ+sP6n47/vdKgD8XSw
X-Gm-Gg: ASbGncu5Z0lfWHKWtObWhzD64MJ/ZTaF5vdYJETUKHxUh1tImKORo2y4wfF7vNgNLuP
	HVAUTf7cPV9KEphUN1xvpsOAsc41UDbqftCVHhjwVq1L7jJ+BPgqnTK1vOb9PgVh4ecRogDNfbP
	rcZtVQajgxtR0zyzO8S+gxHPICUgdsuhPXl24SUc8BX47LUb5LY+/CIVzlXGHunG/3clW3/bgdo
	NKgeDBI/9Btxe2L3Ku8bCSsP8+/Tc0Yl5zYHF5DKVFRlzBAD0M/yoFDUi2Du7Bf5aPusNr90oW9
	KdjZ7TUkt2CRnQgXmSQdBifWRf/jaBjXBCWO4HEF87zrXU0IcESKmFNXlndQORgEPKWTVpGA8Xl
	qLzp4ifS/pT3+qo/W+p8MPg==
X-Received: by 2002:ac8:5ac4:0:b0:4b5:f7fe:4e25 with SMTP id d75a77b69052e-4b5f856938fmr48023121cf.12.1757321675084;
        Mon, 08 Sep 2025 01:54:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHK5LFVgwRRvjtMNlYZC6Trbu+B1dQjaVDsf1H2EzED22a4qBEYHJG2Wl2zUnnaD9f3yOvJ0A==
X-Received: by 2002:ac8:5ac4:0:b0:4b5:f7fe:4e25 with SMTP id d75a77b69052e-4b5f856938fmr48022971cf.12.1757321674518;
        Mon, 08 Sep 2025 01:54:34 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b041770913fsm2018216666b.107.2025.09.08.01.54.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Sep 2025 01:54:34 -0700 (PDT)
Message-ID: <0b3a6bd7-74a8-4a43-b1de-775efcf3d6c8@oss.qualcomm.com>
Date: Mon, 8 Sep 2025 10:54:32 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sm8650: Drop redundant status from
 PMK8550 RTC
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250908085331.56478-2-krzysztof.kozlowski@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250908085331.56478-2-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 1Yb0pBEGNdO5NeFQJFSjAYT96pQ1kN3H
X-Proofpoint-GUID: 1Yb0pBEGNdO5NeFQJFSjAYT96pQ1kN3H
X-Authority-Analysis: v=2.4 cv=NdLm13D4 c=1 sm=1 tr=0 ts=68be99cc cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=v-xH-oZzectvFPV3Ef4A:9 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA4MDA2NiBTYWx0ZWRfX6ThKJse93I8s
 58DwdiqQHMLW6moFgyedLqaiGQ9TxRmK4BkKcnkCB4mRZSOjLpGMT0Pf9JNs2r7cdehuq2uIEHi
 iO7SIAPG921o/XgzLHDIwwIDxYCf80qfzg/s2IgK/IYfFU9WrS7COEZ5xg4kBcpw2L0+ymCxhF8
 as+RKZEuuRYLn/isXVB82ySaraYmzsoeyvJ2FkRnOq7wkC810GFkgphw1K9+rAVK/krv4UF56cu
 lBXheciuD6MlOwjUdk9bw8qeKNCcv1YPom13yGAz9Ipfs1CJhKkqNG0cLKstYm5kyClbz37jNWR
 DaGLRraCJadJdnTVKKuRoFVWBn9Uj9TPKmEQGWXCmtIvN9h/m4z6RDXcWJF/K25uyKyRct1bjCr
 4j+f1gvN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_03,2025-09-08_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 adultscore=0 suspectscore=0 phishscore=0
 clxscore=1015 impostorscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509080066

On 9/8/25 10:53 AM, Krzysztof Kozlowski wrote:
> The PMK8550 RTC is always enabled in its DTSI file since
> commit a791fc19965e ("arm64: dts: qcom: pmk8550: always enable RTC PMIC
> device"), so drop redundant status=okay in SM8650 boards.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

