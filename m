Return-Path: <devicetree+bounces-251770-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 246F6CF6BC4
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 06:09:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DF0A63002FF7
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 05:09:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06AF02F4A19;
	Tue,  6 Jan 2026 05:09:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oTYb+aAg";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RfVLCRuF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59BB52F1FE1
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 05:09:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767676176; cv=none; b=W5+UsB5fPrJSnU32oGXaV1wLxTlUODpezCkgsMUFfeb1NS6J9trSAecp9zuf0aov9ATpQsQNmwLso9Gzp0BIK3oeMkwCA/er3UP+NKyVn4lZmJIl8uQLfHWMHPmQtb3bdWh1yRyXDk27i22rsFVvqP6NPxVfXdHvBjyP/LiHYQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767676176; c=relaxed/simple;
	bh=yLylLMnfbComcKS5YxA9ESsOk9drHuwiQKJ8nVQQ6vo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=I2nZj3W/q7hkau9t0iALecOKNTLvXq+lcIYnkgKBMs9i+gY1xu2VpQRY14C6pVwOrwYuieHPSHcXvaCYAFssHB9cRQ4sdQsj5JXYBa/3v+/WjK6Alno+rA8A+s22fB9rkmAje6TTWAyr7Iy4h0UT/5PGQtdrcE5qLMRsPPf2zmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oTYb+aAg; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RfVLCRuF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6063QYw4529169
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 05:09:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2SOD3/kMNlfHRzbXU46DK5ZMa8EeIhEik++3HN8TI8M=; b=oTYb+aAgfp2A9v2J
	orEbkKgpTBwvRdFlaqhGnsrOvu11w6tIS0w2/5KJ0819eaGHV4lGAhjw4MBiYjSS
	r+UPeIyW4T5LZjLcvRasq/kcGBUQOpeolPhpqUmd2sNJ0DrA37bU4Q3nFmnTZpPi
	/oH4j+aiNqoWJzs62DiaqObqZ+tnbNvu9uK1mnVKcEv7MowI/ET32QqdgJt1mvT6
	QrUoPaJbpKkL2YKzC7oz6y3CbzVwkT/1k54es74bODoqLgz0v/q/J/hptgauJWNm
	gi6gCLwQfLebAwmMhOiwvI8VWpW0ycMt7NigMWgWFh2eTfjYd6b8uBiA6wPaoW9P
	e1qpng==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bggqu1ug0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 05:09:34 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b62da7602a0so599211a12.2
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 21:09:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767676174; x=1768280974; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2SOD3/kMNlfHRzbXU46DK5ZMa8EeIhEik++3HN8TI8M=;
        b=RfVLCRuFN1maUxJOeub3a1dy2uR+BVrB4jZk/k3CXzwgeH6lqdrR2GHHQYAm7bdRu2
         QCs00KmT6d3ctIOwgxUIS5BTQg1z2GtuPTTQJBDhBI+OLYKvCBSDL2WHe/QdhlxdF0Qz
         VkGUSGtkgnVAoqixFNriKF+Z8+iKvJJKQ+NB2f9MYiqoJVRInoxwr1VMoCL3zF/vX/0Y
         TMVWNTBDMSEbBuUg3cFQwdenETSNmF9P1PZQaL0YT37CzJBre8eAz+s3yjyuDgvOwPpG
         kvBg1yvVV5TlNf1to8ASLbiPTIfVjdBOVPozB/JEoCwlf1S21d/aDc5xi6uVV0mDUuEQ
         +EBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767676174; x=1768280974;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2SOD3/kMNlfHRzbXU46DK5ZMa8EeIhEik++3HN8TI8M=;
        b=YIHP9WO6+V5St28E7+/nfHnQebjVS+0Mtoj9h6hrxSumE+BqB1PWEuompS0lGrMSs9
         3QzIZ9GSK08yyWSTLfVf/jPaiRD8tIkTlLemTeCPhBpiQN7Lc0ZJixxuGxxnLa2f52qu
         fbla4Kjf1CJLqvyzVNmi4LBkZSyfr+7/OUzISYUjAspdQER09t2LMVxRfqMGvFZn4JWK
         7Xwi/STUAHpKzmbFasFU8KUdL+JMxNt1BJ0Pa4djSxg1Ta/Mu8EP6dfq43ejhC8zXo6q
         ZnIReEBYe5lB1FXeF53yqYOyKsX+CBwtoDdlLRAGElEvEnj5YrjxMVLy7RWXUdX7OUeL
         X1tQ==
X-Forwarded-Encrypted: i=1; AJvYcCWbyczlPbG/iBaUehIV56LT5Qt1I80UTqeuMzIBtc8t59ogiGiJxXLQyc2IG3rejWnhNnyjwf3m6+r2@vger.kernel.org
X-Gm-Message-State: AOJu0YxSIWJeRoE5dsJFkh1qbesjJUyoKNuIHwKy5PVv3nw1I5ZCYwFu
	ZaF8yEwwqt1lQw6xOrwliA9wEliwRI1Nps0qkmKp94bYif943IM/KcFZkqPkogykoXOAtAHpQs9
	XZPodrHl+E2deMkvCcrfJjfZyVNR9WE79alrgMQDHys1qUHwaPNbrvvQoiCUJI1z0
X-Gm-Gg: AY/fxX4NPaJ93PJf/BB9e5TaAhBUkEiFTlO/j7jMIHhFAUqn3BrjhhrokFp7oeaELNT
	vmBz1siEVZbVI3s6wXddu92CFKdEkaknJVwZYbe4CUTZWV+rGRPRGTKVw7TFzVaJ+ehCnPTbLVx
	gxXfJxZR3oq0KV1B836RlZ0Jf9KzB8Pd3MQO9FcaF6fqtdUQD0vYFb+eyA6YbLUHkAuTDrhQzh7
	Eu+ZJPx8JAhlppAYPasKNCaUFrp/R80SaHlut+uoB2f0s0lnsnGp9/AnkmrrSJQinHn95qRSR62
	wx0i13zFPH5OJCEIMhNwc3yhfVrjE9PdUH12hIetYGJHE0/hEfRM1/Hq+8N7H8E4e8uKfY44om4
	Fx5MYdTG7Nu4jtH3+eiAhw/d5xsVOqzKNBlUDXIIp8CKCGQ==
X-Received: by 2002:a05:7022:61a6:b0:11b:baa5:f4d1 with SMTP id a92af1059eb24-121f188c67fmr1608377c88.6.1767676173666;
        Mon, 05 Jan 2026 21:09:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFThhMjB++4/K7Cfub+aD0s+vY0i2Zl9hrVvNzgeOKOfo4k5ujmMqUBKzWI1psutADRpneDZw==
X-Received: by 2002:a05:7022:61a6:b0:11b:baa5:f4d1 with SMTP id a92af1059eb24-121f188c67fmr1608336c88.6.1767676173072;
        Mon, 05 Jan 2026 21:09:33 -0800 (PST)
Received: from [10.217.219.121] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-121f248c239sm2032747c88.9.2026.01.05.21.09.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Jan 2026 21:09:32 -0800 (PST)
Message-ID: <bdf65a65-baee-4afa-a4ed-4dc51298c304@oss.qualcomm.com>
Date: Tue, 6 Jan 2026 10:39:23 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] dt-bindings: phy: qcom,m31-eusb2-phy: Document M31
 eUSB2 PHY for Kaanapali
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20251021-knp-usb-v2-0-a2809fffcfab@oss.qualcomm.com>
 <20251021-knp-usb-v2-2-a2809fffcfab@oss.qualcomm.com>
 <41f71be9-595f-4a81-b089-27bdcc778c8a@kernel.org>
Content-Language: en-US
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <41f71be9-595f-4a81-b089-27bdcc778c8a@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDA0MSBTYWx0ZWRfX3ZJkkVzlgajs
 67ppJiVVCXkZcc4xPz7JczPeOCHzlXTjjXr/d4rJy/pXznwjYo6bOI4SbWbf2dUnnsMEbinPTYl
 lGfhKZZf5i9pB4AkfUn+rJn8IBXY8+feWHhXb2+cy4C/KiVklXfPjezS3/w5aMAlKvvBqr+Ryyk
 tD1+yYwHu+BIxRR4h01/MlLz5/KCcG//5MH8qXdjCBQnE8ar1s1Ab46ccbDSjAnnxsEilCllIiN
 xIe1Ir/VilLV1vc5eGaXjal8INYVDuF6sVKM80fqVjUHeX6V87q3FtBnJ2y29sBq5doJVj4pjer
 Itu2smn76SFHJEDlQBHuL6pEmPXYcrr4v20Sd27msLXdYTH9lEzv8Xj5XAX3bnxEJ2ArNH88wcK
 EXAnKy9AQCMllX2b3zmLQ07jySDXGesRjMRzcnMql0c0iQyEYp2KrAlMvJB0YUEN68QUfuMGY3X
 CqBA5+AkFlgXPJ9FlIA==
X-Proofpoint-ORIG-GUID: RZxlZZDsteipPW_tGaNwM6BPQF8WF38N
X-Authority-Analysis: v=2.4 cv=fr/RpV4f c=1 sm=1 tr=0 ts=695c990e cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=ocyYg2yDLqSr0WdFaBIA:9 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: RZxlZZDsteipPW_tGaNwM6BPQF8WF38N
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_02,2026-01-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 adultscore=0 spamscore=0 priorityscore=1501
 impostorscore=0 bulkscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060041



On 10/23/2025 9:09 PM, Krzysztof Kozlowski wrote:
> On 22/10/2025 08:50, Jingyi Wang wrote:
>> From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
>>
>> Document M31 eUSB2 PHY for Kaanapali which handles the USB2 path. Use
>> fallback to indicate the compatibility of the M31 eUSB2 PHY on the
>> Kaanapali with that on the SM8750.
>>
>> Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
>> Co-developed-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> ---
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 

Hi Krzysztof,

  Thanks for the RB.

  I was about to rebase this series (phy binding patches).

  And wanted to send the following after fixing conflicts (as glymur got 
merged):

diff --git 
a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml 
b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
index 409803874c97..cd6b84213a7c 100644
--- a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
@@ -19,6 +19,7 @@ properties:
        - items:
            - enum:
                - qcom,glymur-m31-eusb2-phy
+              - qcom,kaanapali-m31-eusb2-phy
            - const: qcom,sm8750-m31-eusb2-phy
        - const: qcom,sm8750-m31-eusb2-phy


Can I still retain your RB tag ?

Regards,
Krishna,

