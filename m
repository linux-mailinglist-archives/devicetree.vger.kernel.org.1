Return-Path: <devicetree+bounces-130294-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE3F9EEA7B
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 16:14:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E53AC16A82F
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 15:09:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C30621C166;
	Thu, 12 Dec 2024 15:09:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="a1ewZy5D"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA17121660C
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 15:09:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734016154; cv=none; b=C1ipdk5Im6FXzLUJuJr+oSfg+S3TJs36SsoRl2BaQ+vLLMWNXxTMOgwaFKmgfW2sujZjB60VFeCc2it0MUSu0tcyteLVhgIyd8vh/kJfxfHL6fbXY8vyzVH2lEWfBbG6OSpQe3c8bqCLOtJRUuSdziQdvoZBkyrXUWFxN0Qt2XU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734016154; c=relaxed/simple;
	bh=kPKepROpxS43D+DUd0rMsLd1XyZAByT65j1DYkG+a58=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=T3vbyxSVP5iHGaaSh+uGmSXSmHxcaHJHM0lfE2uFw2zFp3ZenKTdqxsxELIbxFZVe9dgAIkfgCl3j65yP36F8BMxhMIORWZ78tfWYVMUpyftODnoxe2NPwdPsQUG88X9/2zwI6zULgDvZ2jMNswTCbZJHvqxb4WlY5hwlazeBmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=a1ewZy5D; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BC6o619001765
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 15:09:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WWoZhsKROhJsNL7oGlk/RfeOg6LjV5292KaV8g0SxpY=; b=a1ewZy5DVCJIjH9V
	uaijHdv4TIFF71k0DvPnL+w/59CidACoz5JzfHKFHvIvzZXpquil3ziITjjLrF+e
	xt1WsRH+ZGZmPFiVigSRozrlIo4gi9YBDr01tGkyBmqpAq8RJEX3bZ+LBUbatMZx
	HfzkcrF/ymczqRsuCoNmcV4rKvd34lWjhNXzXY0TyoI7EJquYhV6ApRH2PJK36cg
	P4fgMVBg+cAPfRgYz9nuno7P62PPvabaUPjiXCwGfAEFD6REjTHMhLdP13P5Mdue
	eRDs0H+MccrAYo90jvQfLTzPAyv60ddwsBrL4x4kbqbEkaa4co7mIdtJcCuZqYuf
	pixqbw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43eyg65w0g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 15:09:11 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6db1009a608so322716d6.2
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 07:09:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734016151; x=1734620951;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WWoZhsKROhJsNL7oGlk/RfeOg6LjV5292KaV8g0SxpY=;
        b=LOyql/Q8OftR0BSUi+U46j64YLsWU3YfIGrUzLmIvahz6/qZwkcBFNNEW3EqhsSk3k
         xD9ovIY/hoUOl78UaLMLqxo81ra7cVZWdTXwXoBQUocu+Bs82W3vcAvVGH836SwT5ZS2
         Db+l/R8GAjbOE81fff7TMTwTgQ95o/8u8A2y9vFwoZvNiI1cbUcgMUlosggkGtMtmG3Q
         rSdNGFdMDTpE2VQIArupWB6WsOobG3aeS1lWecAEIWxsJ8Gd6m02JdhIQlHLXVzg60Ov
         9UqpdATFXUJ4ZMjDJt4iktmNLM0iGuRCOSZoqunJiX1t8s0XsrNeiT4C8dTaWbYYGmFZ
         nFMw==
X-Forwarded-Encrypted: i=1; AJvYcCUvEzAvbDXfqKmOZ3gtk3G10198X6iiGaluggP9BIT48scenFjSVXQ7XQzfsVRoUXQghv2BtsB/UqDl@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/M18t7ZRZ1SkF1ebeUKTv1mu1EbH0stzEqkKm7GJ+lUJY3SgG
	Ska20hEFqQQaefSBwxFWT+pedT2Tg+9eAOJJGEJD384gxiFBLZqoJ5HPmN3vb9BnyZYC7ttPqsJ
	MHAKXcA5iEowC1CbnpPRgYtqMMfehSkDVeTA4TYqGIgy1xNDMN3VxKu9ejI46
X-Gm-Gg: ASbGncvM4ZrNRd8gB6oxdne+DpDJEm3+xnA9h84G44OaxbPh/bjDnuxa0DHbnQfMkM+
	JpoEphXEa6OaQwz1VgY9bPSNvQmK/HnwTbGRY/5yFmvhctE5sXO1nH2eC3OKGskuSfBr35yh4N3
	XOTMnzYy2qgZm6cDG5uz78rSSgsQxbAo+7cz1Ic8/wa+0PvVymn2nPj61vWm2EysXqWxnncO2ta
	eXvBXzAdZFywFght6xFmSfIyDsF3P2/1PqrnygChhrSqUqPcKYUJIbkLrbfj485SxXoGp0pn9Wi
	0LaJaxDe7ZLJ1jKuzlnmwhZWC3phVeSESqgrTQ==
X-Received: by 2002:a05:6214:3016:b0:6d8:cd76:a44d with SMTP id 6a1803df08f44-6db0f5cda60mr3223866d6.0.1734016150453;
        Thu, 12 Dec 2024 07:09:10 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFObVItKkexRSdtaJh76BpL6TAUzV1mdsNNZuTKmUGMDVCaT/aEhe37aNaCPzag8mlH8Apb+g==
X-Received: by 2002:a05:6214:3016:b0:6d8:cd76:a44d with SMTP id 6a1803df08f44-6db0f5cda60mr3223566d6.0.1734016149953;
        Thu, 12 Dec 2024 07:09:09 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa67cd1e82bsm667249866b.53.2024.12.12.07.09.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Dec 2024 07:09:08 -0800 (PST)
Message-ID: <8a684eb4-c824-42d6-8070-9c6b3d582b77@oss.qualcomm.com>
Date: Thu, 12 Dec 2024 16:09:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: x1e80100-qcp: Enable external DP
 support
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>,
        Johan Hovold <johan@kernel.org>
References: <20241212-x1e80100-qcp-dp-v1-0-37cb362a0dfe@linaro.org>
 <20241212-x1e80100-qcp-dp-v1-3-37cb362a0dfe@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241212-x1e80100-qcp-dp-v1-3-37cb362a0dfe@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: TRmFfwoA94j3B3lSwf8C0Is4rQ-I6JEZ
X-Proofpoint-ORIG-GUID: TRmFfwoA94j3B3lSwf8C0Is4rQ-I6JEZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 bulkscore=0
 lowpriorityscore=0 priorityscore=1501 adultscore=0 impostorscore=0
 mlxlogscore=713 phishscore=0 suspectscore=0 mlxscore=0 clxscore=1015
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412120108

On 12.12.2024 2:08 PM, Stephan Gerhold wrote:
> Now that the FSUSB42 USB switches are described, enable support for DP on
> the three USB-C ports of the X1E80100 QCP. It supports up to 4 lanes, but
> for now we need to limit this to 2 lanes due to limitations in the USB/DP
> combo PHY driver. The same limitation also exists on other boards upstream.
> 
> Co-developed-by: Abel Vesa <abel.vesa@linaro.org>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

