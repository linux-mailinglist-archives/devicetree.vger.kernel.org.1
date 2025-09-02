Return-Path: <devicetree+bounces-211685-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 11AD8B400C7
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 14:36:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 381323BAD78
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 12:33:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDC6E225A35;
	Tue,  2 Sep 2025 12:33:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FiCg9BPE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EFFB22172D
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 12:33:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756816427; cv=none; b=PknDfkGslNyQi7xRTW9vCl2KpcB6F5D1cTuAxQTXxAJCQ9zfmaXllzMVZr1k9WjLmbOMZI+PKV0kD5KkY/l79ECUTGROOSHdrPTosoj+ztPxiu5i5YKOeLZRitBebXBjO/3/KFIVmWn7QQzE1UiST17dgOyu/0X+OYX3Uyve/ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756816427; c=relaxed/simple;
	bh=kvqOVMR4o0pU7F93TYucrMso0qNifJEbmyq3RetMaR0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Iz4mpeq8Y6XCci5BOFF7/8fHhX/ZQuHgy7TFJWaL0QRoZdXNPRL3YzZfJcFPIIa9XRvsCkXSpINvhTDjWMYli4GQfO2Y6QCM1PCuBgsCMoNZNLcy4FDbvVNX3ZCdS3zMFg8/atBkkG4qg7nllIOl+kTzTHHR11PEWcxM0m06Yhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FiCg9BPE; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5829xLql030613
	for <devicetree@vger.kernel.org>; Tue, 2 Sep 2025 12:33:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ePZTdmUf6KFfxyF2pqsIlm3pu0OeNHUO0L61l+SXJy0=; b=FiCg9BPEpK6x7I64
	7RRmIzepKSW/QHojczkj664kePHY5HOIvzZcEhp0VvJmYYpKFV1Xclh0BYfNH6zE
	1D3DyHLkHD/Ublrmy+LSVnoe+lNv0eBa39xBzrm88qQVKFz6XRivu/DeMg7xvsiW
	KQ3MRPDTn+kq+zTg1WmCEXBobGmCLN08gZdQWvpPRa4GGZmoLHrknQqMTQRbSriZ
	VAOw/LXH4NHLKD2+D0zSLWsRRBUHvLfPz7n1W4Xb9xtPV2AMlrwJcNzjt0gRX3aK
	WHIqh+o1hV1cOyXyGy+YFnNKd/gyC0/92DF/rKEemmICLN5Ln1uBaDHvCFgSVlvM
	/LjrlQ==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ura8qr7e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 12:33:44 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b47174c9654so1094645a12.2
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 05:33:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756816423; x=1757421223;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ePZTdmUf6KFfxyF2pqsIlm3pu0OeNHUO0L61l+SXJy0=;
        b=cy+NsBdnF+p5Qq5zGDM/bTZvm3K7NeSOYsvDkNywwxK0efvxNxF8Bg1Bx9NJIPytvc
         dVHgD8JPwp4O23uqXjfB+1TsMRpb0ZX4QNDNMIVA+rV9A9WojHEx7bkQKD/IRW3jItoL
         1E02nVKuYEOGJDqIawBfaYgAilQc0qRRxsd1ghmAF58Z1T3tOQqtvI1ko5QCbNuHxjRi
         3iz7N+jH3b52KYdidwztDKGKvEtfmtMAztA0pXOyVLh/nIFVmEEqX1wrCrXhKsWpK1IJ
         c/GAw+nNUMn44kWBMZtgTBGaK+H2cqEXgvuRPaJujU/gjkqvAq9q7Rsu0fO+yahOV+Hx
         /BIw==
X-Forwarded-Encrypted: i=1; AJvYcCXF8H46o9Wn1i/OdiLkpXExDs2IzBE/elqlRhNJehqzt0NQpuqec9xr/BOxmXy2Q8Zcej7fRYtqynB0@vger.kernel.org
X-Gm-Message-State: AOJu0YwNnkp38uti4lqLquTVyZNY/UWMC2xhFCXST7J1RncrHz2jRaCS
	WjvnNK5u0d3iDWzyeVAhcMLVS05vfnKMzLVl4zBn3ERWEH8CdEasUrA8aMBv6bBPA4k9kOSBIux
	oYxnvsvzH2NEXGBiVTrbr/RX8III3/RKs15SW+edI59gaXAeREqTzUclVAo+9bcsr
X-Gm-Gg: ASbGnctDGJhHhSiNt5YwcZbfBsHyZvOF+49fu8idf1DEoUKMJcNa79ri78iK0kWqVj3
	cyImSNmySfVLMNDMb8uAx3qBYKrz9enTI01uE3SpcOY5v54Q/La4CS8qcaJsPnIBGmznYfr/jXw
	ae7VonGk9mtDSk74ftQtic++VaVb0ZlqjrHyAdX6/QEo3IBmqgMRwIhGJybFh19qsl6B1dZcTh8
	MqtLOIWTUApAs4VnMu9bGZ4vS33UXViXf0J5iLhpuZrfU8Ame0/7uGmytyTeu0qE6wv8TxM/kp+
	4D1mTwsLVbkFhMnUjN3szqSVjjfWOdDOq3MZALna2uzSlPS4rLi0LAwzKpFVh9vNbWuS
X-Received: by 2002:a05:6a00:807:b0:737:6589:81e5 with SMTP id d2e1a72fcca58-77232745936mr10198808b3a.2.1756816423270;
        Tue, 02 Sep 2025 05:33:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG0JLLCl24/XxHtW1P90wzr3zdEuQgG78e3OMvXqmWWovPD7etmcGpFWIC0dv3MhgBiZkmg1A==
X-Received: by 2002:a05:6a00:807:b0:737:6589:81e5 with SMTP id d2e1a72fcca58-77232745936mr10198784b3a.2.1756816422782;
        Tue, 02 Sep 2025 05:33:42 -0700 (PDT)
Received: from [10.218.41.33] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7725f0c4008sm5258376b3a.35.2025.09.02.05.33.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Sep 2025 05:33:42 -0700 (PDT)
Message-ID: <31fdcbd6-2cb1-4117-8201-f49c749dd357@oss.qualcomm.com>
Date: Tue, 2 Sep 2025 18:03:36 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: Add Monaco EVK initial board
 support
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>,
        Nirmesh Kumar Singh <quic_nkumarsi@quicinc.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com>,
        Arun Khannna <quic_arkhanna@quicinc.com>,
        Monish Chunara <quic_mchunara@quicinc.com>,
        Vikash Garodia <quic_vgarodia@quicinc.com>,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>
References: <20250826181506.3698370-1-umang.chheda@oss.qualcomm.com>
 <20250826181506.3698370-3-umang.chheda@oss.qualcomm.com>
 <20250829-clever-analytic-pudu-96cda0@kuoka>
Content-Language: en-US
From: Umang Chheda <umang.chheda@oss.qualcomm.com>
In-Reply-To: <20250829-clever-analytic-pudu-96cda0@kuoka>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: qGeb6mW0X4TuK2X-RplOALvxqYZnag6h
X-Proofpoint-GUID: qGeb6mW0X4TuK2X-RplOALvxqYZnag6h
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyMCBTYWx0ZWRfX52a6Jea1KpVx
 GgzcCEIllV8LttO0XAF+1fCdOOgJO/ifggCsKDFiSq5fu3tNb9b0pjZMmMcoyKLRrj3AK8q+eN/
 GP2BjMmUVwMekSen/68YTz7SwIKIhWPsQV+bocHr7UkxTr2JO7lmMALBAki8XrJjjCcC/xOtO8r
 W6k455e/aovv9euMC7uSk8QRTH3AfLzg4psL39/40fDVoqhcRBfuv45UARjlQjMcENmxj406BKD
 5CbUrlSusp3pVSTtg9GgOyM+t5WuFY5rcnw4RpBTozl2n5/e2FTUsUrW869flo6NJlpkcJcpuwt
 5EvJXfK667kJTTql398pH66Kq1Wi8LKIctOycsCY3E2jl2JWK/HUM2/SJtHOsjqu8XjeuG87YU5
 bdplE5sW
X-Authority-Analysis: v=2.4 cv=VNndn8PX c=1 sm=1 tr=0 ts=68b6e428 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=UXIAUNObAAAA:8 a=Xc56VXtM65tYru8N8fYA:9
 a=QEXdDO2ut3YA:10 a=bFq2RbqkfqsA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
 a=a1s67YnXd6TbAZZNj1wK:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 adultscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300020



On 8/29/2025 1:29 PM, Krzysztof Kozlowski wrote:
> On Tue, Aug 26, 2025 at 11:45:06PM +0530, Umang Chheda wrote:
>> +&i2c1 {
>> +	pinctrl-0 = <&qup_i2c1_default>;
>> +	pinctrl-names = "default";
>> +
>> +	status = "okay";
>> +
>> +	eeprom0: eeprom@50 {
>> +		compatible = "atmel,24c256";
>> +		reg = <0x50>;
>> +		pagesize = <64>;
>> +
>> +		nvmem-layout {
>> +			compatible = "fixed-layout";
>> +			#address-cells = <1>;
>> +			#size-cells = <1>;
>> +
>> +			mac_addr0: mac-addr@0 {
>> +				reg = <0x0 0x6>;
>> +			};
>> +		};
>> +	};
>> +};
>> +
>> +&i2c15 {
>> +	pinctrl-0 = <&qup_i2c15_default>;
>> +	pinctrl-names = "default";
>> +
>> +	status = "okay";
>> +
>> +	expander0: pca953x@38 {
> 
> Same problem as in all other recent qcom boards.
> 
> I heard that some teams in qcom have weekly meetings and discuss what
> did they learn from upstream review.
> 
> Please organize/join such meetings.
> 
> Node names should be generic. See also an explanation and list of
> examples (not exhaustive) in DT specification:
> https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation
> If you cannot find a name matching your device, please check in kernel
> sources for similar cases or you can grow the spec (via pull request to
> DT spec repo).
> 

Ack, will take care of this in subsequent patches.

> Best regards,
> Krzysztof
> 


