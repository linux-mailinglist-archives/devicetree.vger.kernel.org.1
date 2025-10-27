Return-Path: <devicetree+bounces-231546-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B189C0E0F2
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 14:33:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4A869422D39
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 13:30:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D37D236435;
	Mon, 27 Oct 2025 13:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="b4cWG7sN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 884CB239086
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 13:30:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761571822; cv=none; b=K8UUbDVPSY/KXttmepx1WnuVzZ31Diq5JSOj+NuFgVmTnsR0eaUEWfQ7XtkJyJq6PB1rEeJibmGIXFXb+lVDgfN+/47lTVNyrpLOg1Sd1lrtO+/RQT87o8rARNwdzLe/g3f22dlSMsUR2lpNqSMZKUw/i0BdveN5f7Fdm6oGm6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761571822; c=relaxed/simple;
	bh=vW+3Cg96/GGdIsFW+xE14HRicHDveM3PCshKWTYWVyE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lJchDv3kQeqaY/4dafz9EsoecdN0F8PNwsc5orGl14ERfoNUTlO4lSx2pJeP1pZfuLSt7yST+9kG5wm4tpZloniJeN3BOn/yQPaHJdPycbRHcI+/OaDsuvSXK4Yp7XnqGIsN+0lzCs9XKqkeT/GuZ5asFKUNawypBF7sbaYFRQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=b4cWG7sN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59RCfHRg2779829
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 13:30:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	X6UaOTLMn7x9VTIqxGPsRSr4UE3ZlhhU7LhpxBk46+U=; b=b4cWG7sNCCP/3B2W
	2RANAwIlUcvvRc4wo+Yoc/eXn8YAgIB6XG7YgcDawaGdGZv+ia/jHCDDWajkAyu7
	NAMie3WA2BbHydpgUjrp8ZSLoPkUBGr7tdM0xcWGkLOsPjuLDX1sR3b9BzUsfvIR
	lBqYvdQeAUh6E6clDW0fUKQKIZRmVhbj1nyVn51loL673ksemeHqfz1vuFtnaHKa
	3fxE4cp+JXzc5xANnwpC3vrV1EEgyDjSIBpCGk/04jUka6nZ6KYFjLoRuGRl3PY0
	dcpir5LjdtMoB+HHaRmyAxw9mkspNPvkD6K7sS3KSWE2xfD2X+L2RP8n4v1Ac8eu
	9mBd7Q==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a28yar4jn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 13:30:19 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4eced2a52ceso6117651cf.0
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 06:30:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761571819; x=1762176619;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=X6UaOTLMn7x9VTIqxGPsRSr4UE3ZlhhU7LhpxBk46+U=;
        b=PdG1a4UnY2JM4f9M1xuMYKazdk5r+0c19djsouLk3uqN2jHmuOqgT8ZJgPK0lFaQof
         oNXiB1wMxTWD36WOHara0IylaVLWSxk5JPUAq+Vx4GA7oHdzeOHdV4m1cYjFyQWYDGKC
         DXAvDmMUAw5oWPrJih0ZaT1ZpfL0eQP8YZ0bD4d51iVgnSMAtdp8bt/4I7rQqJ7GMjT5
         LIZYJXypAx6BNTqYl1DSxRjiFOMQecK+5gpR/Qqy65dJr/KZuDH2KvB072tuCXgbcCYI
         QGlRdiN7hKPKut8mSF7ds2FkA7C1Hmg49eQ4N3CjIGtPVE6O2a5kV0Jx73PJzdUH78Ms
         ADsw==
X-Forwarded-Encrypted: i=1; AJvYcCUBS0bogtrYdujP0rzz6ZL892t+IV+oBQF1TIKk5mJaa7oa/jX/C0Aj5gX8pJ+HyGwzV8N90PVIXCtw@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0my1uzGi5m+L7Z2RWtcjfQUcn+PG+mt4AgjR9JwpmostSiFyI
	A/U7k8S9sonWmPjGLBH5GhB25obAspMfPrcqBDzb2XP8fDfJukq3ZoaitNZ3Lgi3dQWbDuRT6Bx
	3F4SmiRknee8Lso6C5la9NTeN3/EBFoYv4NOY1EQEY/T2pyjqhKgjGCxCBVsTF8Gm
X-Gm-Gg: ASbGncvJ87dzTYhZ4kozC7aMq+w4J8wsWL4r5/At6/hfzRgfsYdcpRFmSi+Rjh43Ser
	o1cHl2Z7l/GGbzMzo2RCLkMbrSZB3fC8xXuaCjCTXKOdoS/A0NbteMG9APUWY/t3Q9+9oH3Bpv5
	cEmfSwprZzc3MIhuakc8/y0+6s+pCFm3Y0N/0bOH8cIAEWVnXOBQMXeHk2BFlk+LuMB1nXrZkwG
	hOVB8wAcDDibZdEwq5jC3wlwi1GFWKmoxQ4sOrrIN2KZpsln3iCBKeLENzLhxCB5BgoXPuZ72MP
	r8bKtP0BEVHh1O9abCvcZnvKUPS9fZENy150CcmlVL/JHQdNjmvCsEYBOvru682MLyBh2AK0M0S
	e2Nt56qovSc26Bdw7KpwFmp/qf5n1BADl9XoD+z5lhyNnq4PCloGcogON
X-Received: by 2002:a05:622a:181b:b0:4ec:9b98:7dca with SMTP id d75a77b69052e-4ec9b9882d9mr55835681cf.12.1761571818740;
        Mon, 27 Oct 2025 06:30:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEpdkvmRd09hAKf//qW8MThGcOtbL81DhQ9tcmGKDrBH0K8LdeGrKn/Nd1TvHS42fdq6Bvb2Q==
X-Received: by 2002:a05:622a:181b:b0:4ec:9b98:7dca with SMTP id d75a77b69052e-4ec9b9882d9mr55835301cf.12.1761571818053;
        Mon, 27 Oct 2025 06:30:18 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d85413b88sm747980366b.55.2025.10.27.06.30.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Oct 2025 06:30:17 -0700 (PDT)
Message-ID: <76f2c0ca-8b5d-476a-aaa6-bc1be87c62ee@oss.qualcomm.com>
Date: Mon, 27 Oct 2025 14:30:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] arm64: dts: qcom: sm8550: Add description of MCLK
 pins
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20251013235500.1883847-1-vladimir.zapolskiy@linaro.org>
 <20251013235500.1883847-2-vladimir.zapolskiy@linaro.org>
 <7f86be1d-3ab1-4936-856a-3f4e87a0063a@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <7f86be1d-3ab1-4936-856a-3f4e87a0063a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=OPsqHCaB c=1 sm=1 tr=0 ts=68ff73eb cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=DGYIJzoI2ldAB-cFmJMA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: MBWlXJpTIufkohojs0NGWo2Zv0WduNF8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI3MDEyNSBTYWx0ZWRfXx0ToxpOAaTuK
 4dT//3b2Bf7cGtlI52BlB1QbijJQFrtLeuAqNdlAwrFiXO4H6flqIv049MBMlCYIcIOThp+YVg/
 ImUZb6VGraPp0btfi6cnoTdsrHsdo29X3+0cD/6AquDbZN9XU6KY8KlPN1WYsoR3sUoWr50KsmT
 ou3Z6Xopquu4Wr3o7C5t18uBESyYVRW2zIKiNqyYk9bNUdomaw/PIfWvt5+W3ICrZ4kzwDBw5Pz
 sGkt1JGr/5CJGREoGku81WN4y2aQUq33hE3a6e2ILac0riQc8UtUdcTu1Kd3Oq/NKklH2Gsna4h
 wIoz6QADT2WxZKelN+csR+U8yV3pFEYb89v2lrNCZI/Y/65Z9WNHZ3bSuVod2Gnc3SXICF9jrPe
 dObLWAZsjXaxylGEU52NgdwXitJZYQ==
X-Proofpoint-ORIG-GUID: MBWlXJpTIufkohojs0NGWo2Zv0WduNF8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-27_05,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 phishscore=0 clxscore=1015 spamscore=0
 lowpriorityscore=0 priorityscore=1501 malwarescore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510270125

On 10/14/25 12:14 PM, Konrad Dybcio wrote:
> On 10/14/25 1:54 AM, Vladimir Zapolskiy wrote:
>> Add MCLK pin descriptions for all pins with such supported function
>> on SM8550 SoC.
>>
>> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
>> ---
> 
> That's a lot of cameras!
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Could you resend this with the additional -pins level dropped (i.e.
pinmux properties being direct children of the outer -state node)?

Konrad

