Return-Path: <devicetree+bounces-224141-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 05894BC100B
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 12:24:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 5A010348C3B
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 10:24:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C31A62D8789;
	Tue,  7 Oct 2025 10:24:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hU22RQAO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350022D7DCF
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 10:24:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759832665; cv=none; b=Dzm65rjsNUO7v5H6tgGiPBMPkKgLQ7ioIlLnmnSIf0T7Y7XIXIdALGEC+ogBVsICMj6iT73jasHWlUr+SnCTGD1q6aILhhhdN5Y+FJVB+WuSb7pYqXnc2XxDgIC9K6krSrU61YbHRU/G4gq4jlX402jeFtIioFC/8twl9dX5Axs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759832665; c=relaxed/simple;
	bh=Hz0Lw9XoJxxpUtx9lMNm5Vj6GKjcPnXjgaggtSuRo28=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FvhVpo287cK6u3VWawGL4j+MFrwPg71aMCIPQPXo77ROK1WNnB1x4V/u8p5eXdAFLgOex7T1DvSavJPZd7myC67P+oOJL1Ms/Odi0q/xLVme2kikpsMJPNZMJ/VWHHGa7LQuDOuRfZcL/WxFfRVgwU80QjpSTDexBfjDAOfchxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hU22RQAO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5971rtDM003547
	for <devicetree@vger.kernel.org>; Tue, 7 Oct 2025 10:24:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Hz0Lw9XoJxxpUtx9lMNm5Vj6GKjcPnXjgaggtSuRo28=; b=hU22RQAOLlj20ycM
	Lbxfz4cMeFzA0X2Ot+4wz3AcNfmsC5lxP+YqcYQqJRyjxRwBi1dUV4AgDGHT+4aB
	81hRCV0nIgmAhXehfYcBEL8gv2qDdblLL4a96ufjvUAfxTXzpe+pHwBNHye+NcSQ
	JsEVjKFN4oGDGQfzy1p20pESqAPrFYaQNt8xAUePTMRGhUeYtT/5MAmaSbHjaffC
	PiIThhhvXnaJAMmwGvsIGVZntwV/y9Ws++NNiGk93spi4n5lErcoqY7+oNG7OnCp
	89v5Qa+SV/5GCutVILDVsDQJvvwsXqnnd6sQUbwNWkT9jT1pcieHlQ/1uoIOsfxr
	Z4N8Tg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49junu6wf4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 10:24:23 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-873eac0465eso22847136d6.3
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 03:24:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759832662; x=1760437462;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Hz0Lw9XoJxxpUtx9lMNm5Vj6GKjcPnXjgaggtSuRo28=;
        b=vaoOx25NH4xB4I1MYjNrHaP/txFoMbm4Wj66WZM+wg/vjojEaTLuMn6PyafujbvDM2
         D5MVALPriVejlXXqVqUXZHAiywsW+tud2KfFfP/KL+tJn9P2fEka+Ch5b+IZ8tX2umjh
         BlPm8CCOhS9Xf9KWFTG2+J+PuPNHO4LAlCM4QSW8LEVYV3xBiKVo71lm+s0g62QvvcYb
         MvrI9wOA3v7rwzDKDHJjOoFEZKjuhj8qe10RCAbQuT5cp8wDnRIkLQ8FPopDsTR1ZikF
         AQRrtIQcRTYP8dZ2QnZT/BpEdDRWu0rZIs4k20usVIX8nCu4PEk8h5eYFYSfF6h762Yt
         06MA==
X-Forwarded-Encrypted: i=1; AJvYcCWlnV2R8iyuv4QGtNtBFWHbps5uXz5MsU9YwhMyv5KZZ/WH2g9YDI5onaDiDwW0V9AZ7ULXcD837Wu8@vger.kernel.org
X-Gm-Message-State: AOJu0YyvhzslO4RfK7z5ZE1oQbrJebfezfZnxHUntgvCZHXN8Ac1dDj2
	rV+8qIRmlab2LJL3AnRfnveRRQ82jlcFxhd7S/XWn95Mx2k4b8ArlR9xGjVBfaLs9YdHpPkay08
	R8r2/+6eUqIczrduxWBDUXgYI3fncjsQX4BOBKbgvcG8hhYcbc1+9AuXrW3cQIBe3
X-Gm-Gg: ASbGncuIQFi2RzL7bIsbq+NicWWlBxdPPsfniR9NoiIk6uwpSKzNYkYjIIFE6bvvxsy
	QQ6vpyBOzW92VIFzGYf3WUl6cFBSyLK2+3EqBhL3mhJ4TybEbnZ5z+//vgdFJOnJ9FImhLP/Wqa
	iVovdG+fPh7wTPgMX7M/sO3EAMGWojNNBTwc1IQbtrl6t9Ojf1n3F2ZOp6hZP9gisEEKEOnR3w1
	3JXr5k9tPU+nxmcB0gfKC4sRkQi3XJqTuC+eMd0FDja3CAFgJjAdvikKgcqrIxkGUxJTXu7bVP6
	2iNK/wgzSZlUxqj9X3oHXRyMWDfg8mJWOXIf2YyFWk2E92Mfil0p0xnGzgf8o1TZWzu0MYo=
X-Received: by 2002:a05:6214:230b:b0:815:e14a:1f44 with SMTP id 6a1803df08f44-879dc6b708amr132820166d6.0.1759832662364;
        Tue, 07 Oct 2025 03:24:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF5Zrt9GJ0jEKgSzWhbAu8xtMsQTKHzxXFf3iuTYiuMvNb+I+Lvf727ImsmH4W3gKxk48yO2w==
X-Received: by 2002:a05:6214:230b:b0:815:e14a:1f44 with SMTP id 6a1803df08f44-879dc6b708amr132819936d6.0.1759832661751;
        Tue, 07 Oct 2025 03:24:21 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-637881011e9sm12024316a12.25.2025.10.07.03.24.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Oct 2025 03:24:21 -0700 (PDT)
Message-ID: <64719a5b-0747-4f3f-9bf9-c04900a5e0e5@oss.qualcomm.com>
Date: Tue, 7 Oct 2025 12:24:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 4/6] sm8650-hdk: Enable I2S for HDMI
To: Alexey Klimov <alexey.klimov@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20251006-topic-sm8x50-next-hdk-i2s-v1-0-184b15a87e0a@linaro.org>
 <20251006-topic-sm8x50-next-hdk-i2s-v1-4-184b15a87e0a@linaro.org>
 <DDBPGIDN8SKS.2GF6TZC6KGXVI@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <DDBPGIDN8SKS.2GF6TZC6KGXVI@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: xm8S7A0rZuddvGxIx2Qw4TmmD3ENjLOk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAyMyBTYWx0ZWRfX9VdHTP+tYAly
 Ql9xyywUoIELpi8lxBSAlqQizSXo79maxfFTuZ7jLdLLPtczoWHsRB/DeXZ1Jkg9xel8r8Gwrzp
 //vxh0NPplhtKZILWKsk6HPLHHfC0MZ0wlac/Z7ibSKE7gVYaalffucAKY8tuJDhEja/d4cFzE+
 3qRMDMmD9VCVSC5dOHnNqfJ44aAo9gGT3lBYapWm49zngRWBWI/AItaA4dLqlJxGIO8GRxQJSyh
 Wy08ZYKsBafM7pUdQKZ+BOZ4K5szRSPByGHRMcHWQgi/1ro/lVRSpgq5yJW3sBwP1u6m1SsfLD1
 /bnrxVxiK500PZG/nu9kjAJtRgF53MCDn8gvcKYcPp3N4ispQctbSCKGtGrUiSQG70sWaHJ6/Io
 I+FdYA0cLDq6vlNjSsxSSebpU69bSA==
X-Authority-Analysis: v=2.4 cv=CbIFJbrl c=1 sm=1 tr=0 ts=68e4ea57 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=KKAkSRfTAAAA:8 a=T-gaThBTW-us8SvG3JcA:9
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: xm8S7A0rZuddvGxIx2Qw4TmmD3ENjLOk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_07,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 clxscore=1015 adultscore=0 suspectscore=0
 spamscore=0 priorityscore=1501 phishscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040023

On 10/7/25 3:39 AM, Alexey Klimov wrote:
> On Mon Oct 6, 2025 at 7:37 PM BST, Neil Armstrong wrote:
>> Add the necessary nodes to configure the right I2S interface
>> to output audio via the DSI HDMI bridge.
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---

subject prefix (patches 4-6)

Konrad

