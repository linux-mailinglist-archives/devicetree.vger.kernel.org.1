Return-Path: <devicetree+bounces-196017-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F531B03E71
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 14:16:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 73B4117D853
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 12:16:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC60B1FAC34;
	Mon, 14 Jul 2025 12:16:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KfbNB7i9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 646811805E
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 12:16:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752495372; cv=none; b=JdggbwvdN7lt6nCYBv3MKqXulcJXUHnR+8axt3T2IYaFKhJtkYBw98EUOhGp7ZKVwE5y/VAh9vNYMwtApc0CyoOFY43CEKVpVkovbl9hCl2ufZARowVNCFdpyspcf9bTS0bq+n5ktOIq/NRDXKYtKvfO2HNDeD4DR6u9tvSqIzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752495372; c=relaxed/simple;
	bh=Vyeu+QiMbOwu86RKcH8fkphcLeAnnuEM9Fw6UpjuzrY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pl2lvIqVwXoyEe5EljqTem4xOjbTFHBcbc/0FBIDPwqYRA+f1QjWSPDY5gKBV2PScAwDHGv6RTz+xZUw8pm3DJEpCTFR3YoWjl7mQdC3k/xuH86vLAfECWqfNQN1gGQncCMu9ftG8Cmkrz9UQvl25/heNEZi+PD8zhhuF6hTKAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KfbNB7i9; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56EA63TS002934
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 12:16:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EdRSmpVGBOQnwqugOp0k7YiXL90KQtzCPk+rW9r7tLA=; b=KfbNB7i92g6NJVhk
	DwC2UKjJSwnQnDOMTnDM2yXjXmWcY4hTWJPdpAZEuDVVz1mT9BtyvFkqBgh8BqvI
	uX3rQhQhy2WU0BkwcDrrm2L6HGUW1KbC4ZmpkFNKkYVdArwymUOD5fBPgzZPLf/G
	nzzYSqib0jkA6sqMg2jqHv+SRY3GIF2wN4ZedhSgB4gDPLr0EgiYTSntSIUP4v43
	6637o5qF8mYRxM9hsD3Letj8A82ffEF33pjwF0mv972pou7B7kejqT9edMVUKwei
	f9wcWkntVnGEvz84ntmCPJupYleEa/iWiQ67sKi5D5T1ffA1OJnY+bKRn6syKTkf
	oKJMqw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ufut4js4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 12:16:10 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ab65611676so967041cf.0
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 05:16:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752495369; x=1753100169;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EdRSmpVGBOQnwqugOp0k7YiXL90KQtzCPk+rW9r7tLA=;
        b=He/JihPrWxhVgzfA+T0lf9Yo3fxlnDYWMHq1ryLRq4K2MqhGpRXAJAT/XWEhCbwunz
         Pz+IdHn+kDAmiVCrktV/0+UcVPLEUQq4TCWh7zUFFXg4dmj1vyErl1c6v20LO+tmlXJG
         XdYhfq6+YFk+ZBKGxXSVHyVDp3sx3vZlsCy4Z9lPmGQEhDDlof83lcFMm2V5EIpqgSg4
         ZBHdX4tjDCcXzbIgZplg9cywZyGBujJv9LVGyD5kIih7GWxX7GRZdWG4bdigvBv3bM1U
         Pkd8vthNH5A42+Yq08l2maxk5KhDQyYoLaQ35i/MkDP65NIjCJLjo2kxBImioQSuywyJ
         bQhA==
X-Forwarded-Encrypted: i=1; AJvYcCWed/eH9QGurL+BzVcyLNsv8karDuwJFgfuayJ0I1iPMTdqZd2S3LjQqzkBQLtk0yk7lbIY1mas4QHC@vger.kernel.org
X-Gm-Message-State: AOJu0YwRp9zfT7kNzV3fQXQrC5zKq4B2Z3cWTnv76oRAxEEHvvVM6NMK
	SL9xsIEPkj9TqbGNfHZrMX/QYXOP1g+UiuoUq9gf0RsLhofkO/MiYgvCuxGq5M8nDUenas+Mb9F
	6NxNlh24AeV+gBOkYKNgabzYdxvU/z69sUDMDcBWUQcZV0FZ9i1e8+yqF8mmLhpBL
X-Gm-Gg: ASbGncvnZtN4lagypS3CNKTNq4eVVeqk1wg6E36E6Ff9y3WJCLpjaeUml4TDJ3+wXb8
	ut7wsvSAhCOwyE2njmUg/sdpE0zyjbgs/ZMPXXCVE/AJt8YwboPFVL/NUpZ2w46/hX16TPZuz0z
	nfd3Alhp7MxoLGbML7xsromIINPuC8ctL0DyXnofbjGnaGVTulwAVA6b0ZF44R8JexSqHNdpCiH
	mkWaRaJ94WIQoy90Zw7fwnilzWUzrO8EuM6nRI+Fs6TWONw18WjboZI1KtDA/xHSfsOyfEvDegT
	jeKQ39Gu+8Q1iRQBF0T+I9UcJ49JDLgdOB9okZAX1y6+2Rl108FfyDaxpcp4ljFO9GyE9Y25BHj
	FuygbscuRglG1tunCZwJR
X-Received: by 2002:a05:620a:a003:b0:7d5:d01f:602 with SMTP id af79cd13be357-7ddebf7dab9mr655448685a.14.1752495369206;
        Mon, 14 Jul 2025 05:16:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFqDFY2LUDJWJKJDllYLF4aFMaNOU6OwD93goYemebkVnOeOPXbah23nYaZ32vbmOeya/kHoA==
X-Received: by 2002:a05:620a:a003:b0:7d5:d01f:602 with SMTP id af79cd13be357-7ddebf7dab9mr655446585a.14.1752495368724;
        Mon, 14 Jul 2025 05:16:08 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e8313036sm799472766b.180.2025.07.14.05.16.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jul 2025 05:16:08 -0700 (PDT)
Message-ID: <0d60632e-ad2d-4dbd-bf48-7daca73b6347@oss.qualcomm.com>
Date: Mon, 14 Jul 2025 14:16:05 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: x1e80100-crd: Add USB multiport
 fingerprint reader
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@linaro.org>, Johan Hovold <johan@kernel.org>
References: <20250714-x1e80100-crd-fp-v2-1-3246eb02b679@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250714-x1e80100-crd-fp-v2-1-3246eb02b679@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=e7gGSbp/ c=1 sm=1 tr=0 ts=6874f50a cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=ZM3GxCyrS3NlQnMyuMUA:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: eO0WqTechARZoWqlVK9blLYapIpDYG5A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE0MDA3MSBTYWx0ZWRfX2C/zWrqYrt5K
 XhVwFXaRWAjJ5QnrAwm37W36N19zID3DBbnEKlg3wrVL3DMhhs++hR/uddTgtQdxhPwEbRh2UNY
 wAZ0JjqQ8dWpAkITOK/pBU3ALxgqxVB+glxD487YfrVq3tzzWrmnhLdZcc0wNj1XnfRqLx6bVhU
 3wzPijA8bPGG1crY5oiiw9JM9JLSpL6Z8340wvSMavG4huPGTjjRiirhtJ48GDnfvVeXMtU9VQp
 GmOrvBicwmtm31MLubXOivmB3Mse0tbOtZ9aB5Czef2Wu0cPaTOasGh6io5cVGcOhXUcv8UTbzO
 uuiSa4ylnIhyoKmJ+7J8sTaU2GRSUfmTcXhW7hlObPLn/XFsxa6N7sBMt3U7kFaIJgAeZHyiESx
 yB+p2urBgnZbczcjnPKWymOzUX/Kf1k7JMR82oWJlD1eUPz7qpGDEGw0b0b9fEZBzzSwtBv3
X-Proofpoint-ORIG-GUID: eO0WqTechARZoWqlVK9blLYapIpDYG5A
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-14_01,2025-07-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 mlxscore=0 spamscore=0 suspectscore=0
 phishscore=0 bulkscore=0 impostorscore=0 clxscore=1015 adultscore=0
 malwarescore=0 mlxlogscore=502 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507140071

On 7/14/25 1:48 PM, Stephan Gerhold wrote:
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

