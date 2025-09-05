Return-Path: <devicetree+bounces-213479-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9466BB457D3
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 14:28:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 449471C26E57
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 12:28:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B35634DCEA;
	Fri,  5 Sep 2025 12:28:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dkhVojmV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED99634DCD2
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 12:28:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757075295; cv=none; b=f8RcrBCpJ/tucWm6oQ6xWflf/t0d0S2aJUdb6vnHqg+5n63Icc/Xgyrhby5+/830iMXtcVq47MPNRaa4ILR4Xo+gmqQBJwGMC93jNcCxVCPnKAQpKNHf+OUi7ZenbZw0sPEQhqWJcvdD5KNNpO9OENnktN6e+xM9boBJaGKdGvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757075295; c=relaxed/simple;
	bh=uDpudofOkYBdbeH6V9Y+kTFhVPT5jO4rSOKc/EyVu/c=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=NlkxapeBiVkjNMOPlMFzY4o+y2yw696eOeVBBgmDEFeceXloJEFH4ZHkkui5SB5IPlfLx7cSVsO78uLMtUcZX5AaADbBvOPWN9idVu9YNE3HYOPZBmqw/A+U27RO8GlXm3WWmorvabe7I2g6xI/f6giJvfhVoqvTAwxs1+ERBxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dkhVojmV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5859wQBn004158
	for <devicetree@vger.kernel.org>; Fri, 5 Sep 2025 12:28:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eajFPWn1xdqMoWwy/ddDT0Q7ux3XoVox+4G1phz/d6g=; b=dkhVojmVX4VHTs4G
	OryMgMrveKpyHaaD1gHSf1OsDuVwfd5Q3FYNga+eRnhpR7iKI6FtQCT3gD3Lbavj
	K6rDQbf+bk14Y1Bw+R/azPFYH/jNDMQFo8HGYMoyo0zS+/StU2qgGVhiJIDFvXTz
	yW2SPXi3NQRn3J0+83tmP9Kug94w8vRMoz7Jt8jMiXoO0Iab48qGPIysJptyi1A9
	JzUioUnBLQyboraA/sS+gr2ls6IkdWCVwnJ4bcptDQY1Hgr0R8radtWdmPJJc/lJ
	kLWXGxp3lZ7cmTL2viOk0tIuWVHWr0vSiwCwpGSnVw73kEDQ8a7Ov+1sS+xhOc08
	EELPYA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48uq0eu9d9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 12:28:13 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b5eb710c8eso1950011cf.3
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 05:28:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757075292; x=1757680092;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eajFPWn1xdqMoWwy/ddDT0Q7ux3XoVox+4G1phz/d6g=;
        b=eZvj9a/4Z4LM8585NE4LXBgr9NFCYmi0szt64Cp3+4XKBLmzFYGG/qNS00Nnqn+nLm
         Ycxw7eeRV0+syxV+XhIZ4Im8NvI9BTov2pY1oCuqch7skKk9nb3GfvMsKVFnAUCw2ZTy
         9NyzkKyJdkbk5JVZ/d+Habtr/mJkS6HJ/A6uy/ukTeeIuS8rzY4RuPIe++msA+1A9ReO
         5EdPHbagtpKQiVCFVZ5D/8sn7q8LuynauBLhiGy3B+jzFdvMzwIbl6Ee7Hq988Jro8dx
         rjubnnY/4WW4j9tms1Re3P07WqiyrwtIH3QVSOSO1KByR06dHJK2YTU+/blmv0avgVcp
         COQw==
X-Forwarded-Encrypted: i=1; AJvYcCUQZTqhLdaKpboQPGKwzONrYZULBkKJyfEEVD+BC5z2i6vxJKpLzekdxikM+YsFYmhMBrioiLUpNXkw@vger.kernel.org
X-Gm-Message-State: AOJu0YxpY0dPS5+Y5wPUXOCKSBtMi6n+Chvp74fE5u1T3aMBfQZt5c5k
	1NV9scGCpHP3fyPTSbZlyuDRD4B91Ln6qazk2OQDZtR7b1ZW5OCF7rqnbBvnKlhteuFkLEb0BEI
	ONBo4yKB5SUb0/ctU0Q9Fh0Ib3oXcQp9bRxYG2Z2dlxJIgEZE6e4jRlCPH32tHp3e
X-Gm-Gg: ASbGncu/4riy17q43k1saRl7pesLW6XVJ5lMdzcQe/xq0kLyJRWN1WaCsnFDep6vAS+
	s9xyWyT9hBScOS7hCUBa3XQYSS2+0pweoiNXyT38Phb8CbvmKLObfFlo3zPuecev7rjvFgOAGHm
	wcwe1rONqIyEJGa3LuZSZdLN5HJ7Xj0KmY3oK3+X6Z4YdHCYsFnN171qnJa/jQHy36hsKRVtycQ
	On93KpdJ5lQPClxGJxo7lgeevQNGwcStxCZ7RSufDQXtReo1MPX4TrazXZAen7Kql2Nl0/Wgzpi
	GmX1HE8kgJFAsNYI15wm/r+VBiEVr6FNlD1EsXIPWadap04/VUSPYme9DNSnAsi+hxhejWwCR2O
	4lDh+H69244YGl/36RE7ROw==
X-Received: by 2002:a05:622a:295:b0:4b5:a0fb:599e with SMTP id d75a77b69052e-4b5a0fb5d27mr60552211cf.2.1757075291621;
        Fri, 05 Sep 2025 05:28:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGWg77L4QqQOKdAgOxGg9M+otrPnQYWNj7jNcsX5+drgBYt19UXWJz+PIWIgaNs5LHPYJywFA==
X-Received: by 2002:a05:622a:295:b0:4b5:a0fb:599e with SMTP id d75a77b69052e-4b5a0fb5d27mr60551941cf.2.1757075290926;
        Fri, 05 Sep 2025 05:28:10 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aff0cb2cb07sm1724345966b.16.2025.09.05.05.28.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Sep 2025 05:28:10 -0700 (PDT)
Message-ID: <a54442d0-a22e-42f9-889c-4bec128b3b58@oss.qualcomm.com>
Date: Fri, 5 Sep 2025 14:28:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sm8750-mtp: Enable PMIC RTC
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250905095353.150100-2-krzysztof.kozlowski@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250905095353.150100-2-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: cQdAeaBjj8ArhnAsdocbggjCd59Z5XFp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAwNCBTYWx0ZWRfXxxlqcvYQHAd/
 KTPt2SFm+HvM7tPmRbj2xgaSGrzYk8skxZAPxIcKzMBUqgTEhdZG8cxD9waKaeiPfkTbdXI6qkq
 IB52bG/5/8euq803hyfehf6s0EwcA9q6dZakbJhleRCa+IlZwowkRpVToo11imw5jR6OkZ4NS63
 uG9hIMFuJfjhgYFPpCeMkOP5ZFj8T9uZ+6YLi4RtymILX/WVsx1snBzFxYdHflG+TI9xbN8//WM
 Gz3xG8vWUHgu6zL02oVknrfCN3ea/hnXvw3AxFB0Rf0TMYqqrkCnSvFTL2zTM/q5/zlmOLeOIys
 1RmLYh5mOwwZMPVK9wZQYLlA7xk+7NBlGQPrTa/bnOPyg4CCK4zQqpxtZrLrU9egE6x9B51/Y7K
 y8CpksEI
X-Proofpoint-ORIG-GUID: cQdAeaBjj8ArhnAsdocbggjCd59Z5XFp
X-Authority-Analysis: v=2.4 cv=ea09f6EH c=1 sm=1 tr=0 ts=68bad75d cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=HTN6E6hfFVIKqq8n5ioA:9
 a=QEXdDO2ut3YA:10 a=AdHoc0ENqhcA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-05_04,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 clxscore=1015 malwarescore=0 phishscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300004

On 9/5/25 11:53 AM, Krzysztof Kozlowski wrote:
> Enable the Real Time Clock on PMK8550 RTC.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

I think it makes more sense to enable it by default instead

Konrad

