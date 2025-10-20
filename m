Return-Path: <devicetree+bounces-228830-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C57BBF0FC2
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 14:04:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0C7383A7F6A
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 12:04:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D0382DECAA;
	Mon, 20 Oct 2025 12:04:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GcBW1Lig"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C866B208D0
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 12:04:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760961888; cv=none; b=bYOYT6wlwymvEkv0MP1WTY09xXGsvK0f/pBOo9GaBDt91k/A51SqcvlT/kmB7SUXRdwXu/ecaD7XDCUDJaBTFXESSRs3sIW6qlNAOBQmW8S6wzFROtXLyVdR9ENjbEQkCoAeIm7L3bZG+hWHHH22s826z9yieastEHFuXRQtZKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760961888; c=relaxed/simple;
	bh=Obg9lKALKTbQbNao4PC2sY+XqF0ys1vM9SQdy1ltbZc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hzeRdIMAklwPuYVTpb1WBP0hJFmqZmBXzz8HrIfISszyvk8fISip+f4o58c22FUK4kf144Bcdwe+Qlu1jcqT8qk2Px7vHIfAOzQUoiEadf0w5JKN+jqX7VPSey40l/oNxrfANOr9Q3iJfgnRhUFtuXIVH0ZjaEpK0mm3by9seh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GcBW1Lig; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59JNj3Zp016958
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 12:04:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	s4X1DztV6QvL7Pg4RXS7POemnqWPt44nKM/SFas9VSs=; b=GcBW1Ligqmux3bw+
	jr5ENDP9AKFkPxib+ibgVqzTFHqroWRv77IzUG2MrTkubR7dE6UlYwEoGKECWDSL
	T/3eYRTfW1b/1Kz0X0nXJYiiCQRuym4ve5TLhVnZcGudzrFmzdiTfX5IjNGklaHq
	PW/hW9K1OhrjWqoyo3vegHqGdzF+MZiOxKd98d4bGrRd/NExOh7vIQL3SHeWxqQB
	2ijt9VmXbfnIlz8tFdusAmmjVKTIP/yblV09pMBDxhcZ437NZcCAAFZ0VJAyUrXD
	5RKpj4g5dnosTsu3yRXC0AuBFjiTdX4pESufdeypg5IObEcTulaXxBq3uAyW1ZXD
	r7dANw==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v42k4jf0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 12:04:46 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-5d5e5b2df67so543815137.0
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 05:04:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760961885; x=1761566685;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=s4X1DztV6QvL7Pg4RXS7POemnqWPt44nKM/SFas9VSs=;
        b=khvYoPE1Xq+WrtD4DpNVeROCs4fXoSExPCrQeJ7M0o9976hxd1I4FyxV5tgofQ4QvJ
         q9BonfuhCImNjfx+sqLIMQgf9aOhZ3UX5P3HFwS0fR+3FpXgFZp03+JcXcfLUGs7S5D0
         c4YY8UywAJ7Eyznazr2uZKSN4Rqqb1aYEDg4bzq9GbfBlu5AnBXFdofuA4qLnwIYVpm4
         Jk3mRJiopx1Dk+ibPo17Bunh96NbbZSjkwITtYc9ot1ufw8sob8Wzlkknx2rNypTfU7f
         W9WIczNweSYHX/l3D+n26QHsbL5KMhrK+5YY4ND6nqja5HRP7oCrelzSeWYFE3gGuOVM
         jScA==
X-Forwarded-Encrypted: i=1; AJvYcCVoJobOisZ6j+qEtJKasR2nieztkF2e6RP5xTm2b3XWscZmjtdZnfOISHusJhk/++zZpZ/XN6DDigci@vger.kernel.org
X-Gm-Message-State: AOJu0YzerYBhJZLGjrfwb8GfjWgXetw8YoHspyBJroww4BXe5HA/xdck
	I/IqN5tRYwiZBj7NBcUEt/TwWkviBEBo83R4s/Kagq9N5bRmoKLx6BMhl9IFXZc/PVCud8SOiE1
	J5POC9gjjtCNgy8ZOUUOIMUPJ3miB+S8X6q6nOQDVMpTGhM+jcFXudTyl09VbkYXm
X-Gm-Gg: ASbGncv1dSQ7JejTkH7grdUA+rAgDtX22aaAAWvYHRIrv0JRFNVTkiA4sciP9gy09vz
	InZADe0EYr+t7J+Hji9U1JmkojqJPewah3R64HRBZPPe8YtfnEnacEg98J7hclFXjXqRvSnqX43
	p0wPCkCPXymmFIgIKIsCQUSziCQhcF9B9+vDVt/Gad50i1vP99d865P1JdhanKnYgVYSet1h65V
	0iSELsZ5pDGL8DiZysfDd83w2GI5q8GEdQUfr4IfA5KXAcK1Sz2VvaqGZumCBTgsq+/OCLVQpC7
	5ehA7mv3Sh13Kx8y2mZvJDwl2u2pZI2RAKBsoyilzbRIjiopran+GBxt85/GFFVKPbR7iKxxOAk
	oRBNWTLKEhMtrOw2O005ONaGGjDhvWs1AUwvys57u63P7DzKFrue5m1VF
X-Received: by 2002:a05:6122:2b4c:b0:554:e620:8bac with SMTP id 71dfb90a1353d-5564ed9918cmr1267932e0c.1.1760961884769;
        Mon, 20 Oct 2025 05:04:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFmRXOmvT7ihS8WpjzHcUqCEKdLb08ZusiFzD7vbt9CaBBWJjy3CB5Tc0tJkowRzMpAB8eBZA==
X-Received: by 2002:a05:6122:2b4c:b0:554:e620:8bac with SMTP id 71dfb90a1353d-5564ed9918cmr1267929e0c.1.1760961884301;
        Mon, 20 Oct 2025 05:04:44 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63c494301aasm6708328a12.24.2025.10.20.05.04.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Oct 2025 05:04:43 -0700 (PDT)
Message-ID: <0605aa45-f134-4298-b6d2-a64067d860de@oss.qualcomm.com>
Date: Mon, 20 Oct 2025 14:04:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: hamoa-iot-evk: Fix 4-speaker
 playback support
To: Le Qi <le.qi@oss.qualcomm.com>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@oss.qualcomm.com
References: <20251010033728.1808133-1-le.qi@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251010033728.1808133-1-le.qi@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 1AYbeFU2XEgBYu76o8Y-0oVp6lrLIJ7r
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAzMSBTYWx0ZWRfXyStkARi0p3uT
 dyUB4NhihzsCWFS1a/ZNZhIWlITYkb7eLRllQaoRaf/eaNxzdkuO/dAizWrZaBxFR/dClRICpBQ
 13qdeBVY1qWbRYgw0iOtx9J7MRxWtcq9UyB4u5AxogoFMfxjE2Wtt6kRooRntornSCmEvntv7tP
 wwvFGaapwlX3rUqs9OsHpvQ56jWAAq9JB4QfzO4HxZ6Vp8U4132Gx5dwNTUv55qGeIKO6SnPumj
 FBGYzRqL7NPbJYv2/y0rxMweOVZYxaT7Hjt/mzj+GFk102HRq9Qf8noK9eTEONcdSqKqLp/UYuR
 Gl6+XJbQZUFhG3qi8m77wkH3T/TPoECytM9airJEdmf66SlrMRum4uP5BWn5pkDq8Cuhl/v+GpN
 9av0k7FF9az722Vc0Y/Zw7YhZl54YA==
X-Authority-Analysis: v=2.4 cv=QYNrf8bv c=1 sm=1 tr=0 ts=68f6255e cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=rzvUMi74TO_jfAOr2FEA:9 a=QEXdDO2ut3YA:10
 a=-aSRE8QhW-JAV6biHavz:22
X-Proofpoint-ORIG-GUID: 1AYbeFU2XEgBYu76o8Y-0oVp6lrLIJ7r
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-20_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 malwarescore=0 clxscore=1015 impostorscore=0
 spamscore=0 bulkscore=0 suspectscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180031

On 10/10/25 5:37 AM, Le Qi wrote:
> On the HAMOA-IOT-EVK board only 2 out of 4 speakers were functional.
> Unlike the CRD, which shares a single GPIO reset line for WSA1/2,
> this board provides a dedicated GPIO reset for each WSA, resulting
> in 4 separate reset lines.
> 
> Update the device tree accordingly so that all 4 speakers can
> playback audio as expected.
> 
> Signed-off-by: Le Qi <le.qi@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

