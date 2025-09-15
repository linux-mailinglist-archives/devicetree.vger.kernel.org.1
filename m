Return-Path: <devicetree+bounces-217218-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D06D5B570FE
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 09:14:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 608797A6E2A
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 07:12:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 880412D374F;
	Mon, 15 Sep 2025 07:14:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IlWe1GND"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B83C82D29D9
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 07:13:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757920442; cv=none; b=SFp42aLRNGBV04MlXMeVROlyFpWIfklrvcK+U/G6CQn4+0unRv5uCEpB5w6dru1nL/r8PbX9FWh7NphIy93pmo5TZyO8ZPlQJ0kBl3AYSvxdgqupid2RQjx2M5k3FSoh0x0rYYSZWHLUiB9FrAbpHeR6dX874sjFZ517ZYWzj6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757920442; c=relaxed/simple;
	bh=+qi+uECUZ98pigQwnsb5bPSO1UgdPNw9iBM2lA3ss8M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VxxcUs+l8ziE4PfuxArGX50C3Z06QbEJuEtAi7dcVwT8Ill1SRXB8BO/yjOBARjblTq6daavV1Z7oojAg10gsftinlJSecuK2zxhti643QrR4Y4yrkh+obxQQFRYY/lP85SEi6qmct6UcZPl0Ce/ho5tJ6773ONeea6Rz7oY/iQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IlWe1GND; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58EMO6T8020431
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 07:13:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	emyETxTvEXx2mZ3XPuIpV3lp2jjKDrPuyDEjXKQ/XZc=; b=IlWe1GNDLj9PHlzX
	0NoO/JtNnK4kMpIJb0b53/nibupAAFIrAKaTWRY0L+GuJ1J8oTAlCl5WHG8o8gbJ
	VoDc+jueQd2m542UD5v30+1lPd6oYEncJHffItnpxKxMdZaOwjHhWDPjWT0rBD5F
	7GImqbvQ/Er/cH5rK8cpcFG8vQ9oDW4NwHm+rr7y6biXLFCPT1CRzTRoOJY6/zgR
	5ll/hBZnFfAWaSVYWVQpU1S9YkVULmVbd9pe7BUqK4AnVnOu+mX+bJCRBpD8jws+
	ejotWcadj837X2Y1PiE3DggxSKkChPO2CxYd/LhRE58FIKv9blnz5OZGIKThnbTM
	SzTkBg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 494yma3v5k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 07:13:58 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b4bcb1e32dso14405061cf.1
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 00:13:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757920438; x=1758525238;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=emyETxTvEXx2mZ3XPuIpV3lp2jjKDrPuyDEjXKQ/XZc=;
        b=ep78Mx6jacVn5jcVsZFS2KUrayxBk24NsQYNubqhJWgBZbhN8DNZlsN5iHgiy8j28E
         x828R4Q6rLjowAzC0TUazE1Uqli/pcxc0TsfdSavu4Dcqcwa7uWz0tob61mRzDj/qlrY
         IzEQb1ApAuy7VqWQ9KBD1fFNc2dMaEv7BaLZd2HNid6UsL2s/3aAcfNW1LlypH0Sekm7
         bnD/YSy7TyT9un+xmEcIvniaN99dnGfCE2HnAaqldphtUUZmzLJjAB7vkuuSaquhikEs
         FOHXVdIoLPO53dY11Bcj9YmphY5uU6Oi7tL9mYQGnGWoH3znZM2kIlm7E0F5Egf2MNhN
         1z1g==
X-Forwarded-Encrypted: i=1; AJvYcCUydvNVB8KkF3ryDftiLtxTBGfGyffcPMbBRMbzne4EkJhmJ8XWwM3qqE/yT1yyKw/wR+64mQBndTQE@vger.kernel.org
X-Gm-Message-State: AOJu0YxEz5hXdaJudRmyALEzfQSc8y7vq0TR0HSB6Otv1gxPpZSQs93M
	4djwSBHEPoZeLSA7h10RfZkkmclnKcAw8/uLdwhlF6ZX0W3J9keEKjhjWZt/BukpgQkVZgVptzI
	H78iBnzCqPx3OK/OSXiBtg8eurBrrbHHC1ViCVZs5dGOMyH6T3AaOpesrls0DjAwq
X-Gm-Gg: ASbGncsIJQkoIi4AYdq+jBQ+mMw60krUt2c9kWbKX3d2C44DpsHRvgqtjMUMduUZs/X
	8WXvAY52Ib7lFPtbJDsbyTC/Cr1+rfFnZSh0Fwqo3saOzGwr/1ay0t3Px7hEzE3oabOzARr9tRj
	w8ita99LsAVCIZ1UaL13N7wKbFTyz46D4KxX0AGM/V5WAxhZf/S4/tqJlo4YDQmnA1iZjJbeOTw
	Bj6U13NV8ll0JdItnyXDbkwlJv8ul/k+EwklUOdoJs0aesUHQEhj8Fx8YBMw9iJQgOYBBSRvsIc
	XtNkK5itm0L58d3ewwAggsVdfWstn/78Fr+K5gNrQJ6lfwXjYU/b81Q6lOiI4NubUgCMBn1sDlM
	TVmIV5WbNMILyv67/RvXI/A==
X-Received: by 2002:a05:622a:1649:b0:4b7:a71f:582e with SMTP id d75a77b69052e-4b7a71f5c59mr16755131cf.9.1757920437761;
        Mon, 15 Sep 2025 00:13:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFXY+2EbGQYmMpg3d61biZVOZwP82Fg9wIo5OW+2n2MKk9HCpqgiBtHZ7vUG59dorC3yHP2LA==
X-Received: by 2002:a05:622a:1649:b0:4b7:a71f:582e with SMTP id d75a77b69052e-4b7a71f5c59mr16754901cf.9.1757920437037;
        Mon, 15 Sep 2025 00:13:57 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b0bf0334ab0sm349700166b.31.2025.09.15.00.13.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Sep 2025 00:13:56 -0700 (PDT)
Message-ID: <9557fba3-ad11-49f1-beb3-d23bcb87fa18@oss.qualcomm.com>
Date: Mon, 15 Sep 2025 09:13:54 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH DNM v2 3/5] arm64: dts: qcom: qcs6490-radxa-dragon-q6a:
 Enable all available QUP SEs
To: Krzysztof Kozlowski <krzk@kernel.org>, Xilin Wu <sophon@radxa.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
References: <20250914-radxa-dragon-q6a-v2-0-045f7e92b3bb@radxa.com>
 <20250914-radxa-dragon-q6a-v2-3-045f7e92b3bb@radxa.com>
 <0a766f8d-657d-42bc-b3b4-33997b919d7f@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <0a766f8d-657d-42bc-b3b4-33997b919d7f@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAxOSBTYWx0ZWRfX2nRnvBB75Wav
 7F6+mv+1kNEJS4Z4c6zy73pcFk7UeA+BIzjc46GDWsr4o8JA0V80YSAtU/60X4PRSIVt1xUGDYw
 Gc/bYUF38XBj67EXe7X/fShWJbp/nBmWMV2qlr+g3ElulmzIvJHniirUS1ZFxM6sOIQGNgUIrGQ
 K4O8eqJEC39lmeQxCHaP6GK98lrNtjiiN2rcsIPA+eTrgTSneLlo/OLzyesh/clQlnGub7nl28P
 5baX11EKf6zI0bi3UIqM7bA0onsMj8RJ8BpYJyWbHbfa7Bn+VC4NBvgUvapNH2bg5/Iht+Ov0EQ
 uXSop8Ta7ET0XhZccufovxedwYBjhTBl75j6EXGJYb41tAXo2U5XkWbjDVzBwT2P/wXySvk5IvJ
 zqa5jtkZ
X-Authority-Analysis: v=2.4 cv=cdTSrmDM c=1 sm=1 tr=0 ts=68c7bcb6 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=ksxQWNrZAAAA:8 a=6z9ov410QEpJGwptJD4A:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=l7WU34MJF0Z5EO9KEJC3:22
X-Proofpoint-ORIG-GUID: O_jJP8vRoD-Iz8PSbCq39AicefaDONbO
X-Proofpoint-GUID: O_jJP8vRoD-Iz8PSbCq39AicefaDONbO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-15_03,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 priorityscore=1501 adultscore=0 suspectscore=0
 bulkscore=0 impostorscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509130019

On 9/14/25 7:36 PM, Krzysztof Kozlowski wrote:
> On 14/09/2025 17:57, Xilin Wu wrote:
>> Add and enable all available QUP SEs on this board, allowing I2C, SPI and
>> UART functions from the 40-Pin GPIO header to work.
>>
>> Signed-off-by: Xilin Wu <sophon@radxa.com>
>>
>> ---
>>
>> This change depends on the following patch series:
>> https://lore.kernel.org/all/20250911043256.3523057-1-viken.dadhaniya@oss.qualcomm.com/
> 
> 
> No, why? It does not. If your DTS depends on drivers it's a mistake to fix.
> 
> Fix dependency or squash the patches.

That series also includes bindings changes

Konrad

