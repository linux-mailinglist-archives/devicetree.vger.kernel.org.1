Return-Path: <devicetree+bounces-228053-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8807FBE70F5
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 10:09:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4A7303B44BB
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 08:09:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F08C626B0B3;
	Fri, 17 Oct 2025 08:09:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Qj/wHkov"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74E9A1DC9B1
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 08:09:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760688579; cv=none; b=SsfR92aEaCSe0YAtharmR4nqdS5cYIwanqFrYTWSULHMx7Eqt4NJqWWLeopDeCAOlc2N/JKovIlR/BihRP9H5Im8E6VzFbDgDkVxgUfvhcPpX/j3GEwEvMoqZ/divN0PMDHFt0q7HNub8H/jptAhOnBWeHOiuwPleIATxeCoB08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760688579; c=relaxed/simple;
	bh=LNWrns5YhKuMQe54rxHgfd2FWlF/9ht7hOYxgPyf8OY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MVQsMfg0VJ9dZJPCH8sMDdgE6tBKEGPSTgf/9S7pkF2uRQLXSSRmBapBIAZAMa6Saeyvi9oXV1mbNhCI+i8/MyV2K1d2q3Iw/FWbmAPrTS+4ip5OhGKMxGfcQzzZDn9H4GikRnHktWYsXC38mSiXJe7OK7kKcOTcBeAFjNL5y9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Qj/wHkov; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59GKLf9Y020545
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 08:09:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GPz2SW5yw+njOwx1gSPLkLuFrcs6TqRr7O65/b4k2Kk=; b=Qj/wHkovQgn0aqLs
	ER3PzqkN7inUYLnBdXm+t46oBUht4q1t/a8ssfezM1LoHadHe8xDPN2ac2vCXLOq
	W6pTc0XYGbGsueYpaIgEG9hwyp1yoz0R9WkLhFwql3HfvmeKDfmkuBCiQRkbFzdw
	x77v8z47xo/+Ts10bzhB//qz8em3OcVNg9WLft1bbg/QZibNGW0P7QAUHaWeqed9
	gPt27I3cr8FIdxyGdCQ4rCEsE5eqgG3NymQYXDtmyJ0VF/YJD9nZU9gl/OY+urD/
	3BxnA92ZIS0OugTs8tTn9UT+j2sC9/uf/ZRu/MsHfe/uyub0mdQbEmhMZjvVkQvK
	bkQ65Q==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49sua8t4ju-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 08:09:37 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-87c103b902dso6610356d6.1
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 01:09:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760688577; x=1761293377;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GPz2SW5yw+njOwx1gSPLkLuFrcs6TqRr7O65/b4k2Kk=;
        b=q2vbPhTuSHRgRUMsN1/HeiU1z3lfD/o8Ibmv714Jq1n8ioX7fpSXdXOoDkcDVvlLfH
         pkbYOPsg6aflYZIvdDwOPWp/8qwbxMrwkiAfAxsQ2F1WCEkO37enfj4YUmVviLbftZYX
         9AItzkX0DJLGLMe/6zfEFKwGxa8wao8HjhaKA3isNcE3kxNmvfHwvU14bt6I1RVqveiN
         0QbadjplBT4uUTUO6kxhCaKN9SiyGGTQlLR3g8tfPWNeoChZR5P6KSbWZaSlYrmxkMtn
         u/Zxjh7uxU8WfsDltmRUcQV3P2mWfz1Y6oVEq/QbOQI2Tex3rQW6BWDjtd/BmMMd4C+2
         3NTg==
X-Forwarded-Encrypted: i=1; AJvYcCVVtJ29rKwO7jBcZ+97f2i/PIDepvYEEWs8gCaaZ5GsF2J1xQq375faotXnx9dt91JpfkRUqJ1mKjBE@vger.kernel.org
X-Gm-Message-State: AOJu0Yyasa2RKpWzmT/pf+dwhD5mwC6r7y2xX9ovFQNahNXSIKGgdibx
	2Z8zlug0S2uzirbri6F/QdW2d0xg5pT/Ag+vYVTO2wpuhz9khTQzqPXoWki+lzeKBCAByj8Knk1
	6wQvNvilXC2dbkJu1850rcr2raVdxhY3jRSG/wCkoM3e9r8EmO9JbVYo5c43FMx+1
X-Gm-Gg: ASbGncvogNPK/CAFI1l1SC0Z2z3GMhALyQpuXZH1hGEeaGawO4q+Ot8NqZ4is46HQEu
	DwjEdHKqOPxJgAMTBbJcoNVWGsb4nyTNA4a1PlM3xvToSJ4wcvUIQl1GQC3eF2CebCfRFOqG0oR
	ZDGDquoG8KsDihN9vWtISgbQZjPRBS/0HhBRmaaVVMn8d6TnEE69nZgIG7y1tYqqk7dcQwdHUvO
	ACuda+W5h6zE5E/+kXM2DYTyNB9P5139zmx17TK+Roz7KapCGDc+WG1nnfjYy/V63djOuzkEyru
	SRW//+3N43tnXZvrZ4amAE43IK4P80sFxWg60ysl5tLchES2MKRruaHic0AHxidyQPS9HUu1326
	t9294b8uOcQEdUgrjAt9C0qnxmyOtPqKB6OiUl9ruXC5sA18KoTS/bo2I
X-Received: by 2002:ad4:5c4b:0:b0:87c:cec:70c8 with SMTP id 6a1803df08f44-87c2068e2f2mr26023716d6.7.1760688576575;
        Fri, 17 Oct 2025 01:09:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHRldwlmoIjqUWs+B70gDTcINWBj5aJRWNo73VY7mhDe+mTNIb2HTahu2VSMQY0UuncTX+YHQ==
X-Received: by 2002:ad4:5c4b:0:b0:87c:cec:70c8 with SMTP id 6a1803df08f44-87c2068e2f2mr26023486d6.7.1760688576165;
        Fri, 17 Oct 2025 01:09:36 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63c0c6cc6bdsm3188044a12.8.2025.10.17.01.09.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Oct 2025 01:09:35 -0700 (PDT)
Message-ID: <cb973808-005e-4920-a35b-3f02a402a78b@oss.qualcomm.com>
Date: Fri, 17 Oct 2025 10:09:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: hamoa-iot-evk: enable pwm rgb leds
To: Tingguo Cheng <tingguo.cheng@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: kernel@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>,
        Fenglin Wu <fenglin.wu@oss.qualcomm.com>
References: <20251017-add-rgb-led-for-hamoa-iot-evk-v1-1-6df8c109da57@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251017-add-rgb-led-for-hamoa-iot-evk-v1-1-6df8c109da57@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: wWBMVF4PQ4Fx81aoH2Scv5uLWsoJJ-V3
X-Authority-Analysis: v=2.4 cv=e5MLiKp/ c=1 sm=1 tr=0 ts=68f1f9c1 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=faPRZvVwotbPnOTzeFAA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE0MDEzNCBTYWx0ZWRfX27jBL0y2Untv
 ybljGbSpOW712PTY90+k21n6E5xkYxxOwOzRogHTbqJDeIoW0FS5FwDYi6aEEe+pT46xK9UqnAG
 60R+1jy1J8ZmUvWuN+SZ/Ys6b4wofaa1MWoIoz2F3aCPIQ2I+hXNp1a4LRaqV+GE+I6PzWOBzeN
 JQHIwOLBuet4FIx4ayhm4r/dhB5iDV/jwY07Wop6OptFEVbYi9WAhmx1Psu4x+Vv70eNmFie1G4
 YtmIcYOO+8dDJR9b6g2FWqQqNUJtNP/zYOLSO8I1wApZzMVIq7m6nkAIJ3yaBAVNln0mZdoQ7Zh
 ciLOepqblvvaJJunCQHvc+WYgwSvC9ob3GVFttZ3yFl9yIwxFg+S6aOqX1k6tPCaHafasdL4Pac
 l1MPikt1S5CAsAO6RU0NYha6X/kfNQ==
X-Proofpoint-ORIG-GUID: wWBMVF4PQ4Fx81aoH2Scv5uLWsoJJ-V3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-17_03,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 spamscore=0 adultscore=0 clxscore=1015
 priorityscore=1501 impostorscore=0 malwarescore=0 bulkscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510140134

On 10/17/25 10:06 AM, Tingguo Cheng wrote:
> Add red, green and blue LED channels for the RGB device connected to
> PMC8380C PWM-LED pins.
> 
> Signed-off-by: Tingguo Cheng <tingguo.cheng@oss.qualcomm.com>
> ---

Just to make sure, is this a "multicolor LED" consisting of 3 ones,
and *not* three LEDs that are supposed to communicate different
functions (i.e. network, power, disk i/o)?

Konrad

