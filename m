Return-Path: <devicetree+bounces-221076-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EFD84B9D1C1
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 04:14:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A59943A7FD4
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 02:14:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C757D2E1C7C;
	Thu, 25 Sep 2025 02:14:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kKhpgsH7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A78326E146
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:14:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758766487; cv=none; b=feK+W4wkTRi7/Fp//cYnLJQsveYH+eDajsdI94i0miFMnSrlpvClK5HpUT88TNN2Svpjf95XJyqKQXPB4WjsVyruSY09SArDtfEU9aD7y7IzV/I8hkZEyUaYwndTz7HTNtkuvUqy1vVICQ+W/tpl04E6E4MGy40hn0j5J4+X/64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758766487; c=relaxed/simple;
	bh=naJzm2+LZbO2Y4ZMy0R9T9gNZ+PyIaodhhZMYTmfbPI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=duv9DY/vJm5y/OzARNrziRjNz6T9qJI9yoyK183IEZmGpzlAlzgherUD5L0pVD+dbBUXe1rsIMcX6OYfidoRrDXgR1CvB5IF3FMXarQvO6R95+xTR0kB2OCXS3uBWHSGaXw1YjLjj5wTQnNB6PqYmGTT4wS3JoumMKbbWjrWKmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kKhpgsH7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P1kNCn017437
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:14:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qYb74ctst0DsXsUARWUIqV3xVpP3o9baTa7sSWce5hQ=; b=kKhpgsH75HlNeOxk
	JJu+Dp6XTSisBBn8B/4goRuEfU7cfMca3PCQCbxShW2KngxSRgOn1b8xjr/XRVeL
	DYS9pW9gt5fIuC33/ewU4hQ8RDGSL0QorY3dFngQDl7GAPtdrj3xq+xrOZf6x0BJ
	+g3iaggg9LQHiyF//c3vWCXNIyX29dOtykoQASiuKOgE8hwdKRYg+wZJeEZdLT5a
	1JUBIwlXZ1MmGhrfn/B/BKDW1/jS7cCpSPB332QXjxCw0m+dNIA9qTw2uEWkgSEw
	Tlis3v3S1c1spkGgUdJqD3tEZhhI1l/XBso6TIPdiLPZxGajhpF0Rx6iIGfZE0fB
	rbezBg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bhvjyqys-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:14:45 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3307af9b55eso408683a91.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 19:14:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758766484; x=1759371284;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qYb74ctst0DsXsUARWUIqV3xVpP3o9baTa7sSWce5hQ=;
        b=qSMTu46iBo7FQGui4+N/F/eXH8m5i5wxjlgWUd4n5SSxbyFOb2pNGDPbuf/XV5dXsC
         qNsv6O2CPfBfNDnTTaJUBN/Yb3HQ1/rLkku7IEwRcI9Ach6agx716S81IpP0tddByq5E
         5YrNfcOZwog453yxEDpCyAIvx2Usk8/x/DYYZPu9SbYSeqrNygRTV3Kq1GCSgMpMePWw
         9SfqKGyepHNRg5y8FBtZuiG5stdG4toboGLgag6tbBH2YerQXOYZ1SwMrGE12ygfnmS2
         zq9rUn7YHghaFdo7bBA7mADpxul5Dr14lSCpeuScHaH2r76i8mBjA1Ebexy/Li95A9kT
         r0wA==
X-Forwarded-Encrypted: i=1; AJvYcCX3hGDhR6uhD1iya5hqUS3m7e8LmcpS7dfZLNY46CS+6pjNk6FDJV0076mZ3H96jMeS1vr8k+FZKnC9@vger.kernel.org
X-Gm-Message-State: AOJu0YzOTsOkDhUDF9R6I6N6cmcE04S9sIWw6J6M3VBZeWplZYV+TLkR
	2hovUgRi1PlxKRfIes90c8a2B0Wb0XABp6whSFnKeb88D1ZAdghR6uX4xYjzO9jqAt/v7Ne5ktl
	XE9PF53wT4eUvqz1th2KE/Ar8REv7T5iiEQ/jWgLmAVL8b0T7Ds4fxzOV4qwjXe77
X-Gm-Gg: ASbGncvwvFmJqx6YO1K65It4v6p0OWPC72qhsaXRhrEaCmApKZ0IfC6piW+Q88ozZO7
	Zu+WYBy6SL8CLCNR4ExoQnytvMLleUcfzLSzDX537D5F0i23w/T31nhGF0jOguZeuFIFk2awzov
	JtPK/nUSQY3OONYJFbKkTScTMBN61VknJgo/CjHtfswk2pP1GkuZR44bevd1ZflicUPaOCdtZlR
	YTdpwZC1Dm/KTZtCwCUp6TQv113BKMnt3Fd38+YZYg7yNzZG2Xmu0XCWrSvB7Dd/p9SAX+SVSMh
	3+PhbF6Wf8Sa3XYVRX+YRur7tzTZIZIXXccI+xwtpt/xgsXPXVX3cjGiHgod9R/V11JvvLlFp77
	cpXm0gw==
X-Received: by 2002:a17:902:c94d:b0:272:dee1:c137 with SMTP id d9443c01a7336-27ed49d2c42mr16317045ad.13.1758766484483;
        Wed, 24 Sep 2025 19:14:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEyxJuLNtLq/o0cb418AiMSRh+W0XoH4JxAaKBFGhkZ92bPDHbrLdzEVGWl23fcg0V3B8oWOQ==
X-Received: by 2002:a17:902:c94d:b0:272:dee1:c137 with SMTP id d9443c01a7336-27ed49d2c42mr16316785ad.13.1758766484006;
        Wed, 24 Sep 2025 19:14:44 -0700 (PDT)
Received: from [10.73.52.96] (pat_11.qualcomm.com. [192.35.156.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed688226asm6880855ad.65.2025.09.24.19.14.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Sep 2025 19:14:42 -0700 (PDT)
Message-ID: <5a6b3a3e-c6f6-ba39-9edf-eab3e1815862@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 19:14:41 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v2 07/10] phy: qualcomm: qmp-combo: Update QMP PHY with
 Glymur settings
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250925005228.4035927-1-wesley.cheng@oss.qualcomm.com>
 <20250925005228.4035927-8-wesley.cheng@oss.qualcomm.com>
 <un3pulyn7tv3qihdnqmktsctped32am2eglxzfpwyz3u3tqspf@fnieck3i67j2>
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
In-Reply-To: <un3pulyn7tv3qihdnqmktsctped32am2eglxzfpwyz3u3tqspf@fnieck3i67j2>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: V0ciJvn4cHWNn6ECdfJPFq47jhMbfr-B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAxMSBTYWx0ZWRfX/TC9cpYMKvDX
 cfdVCCi9rTZnKsck2jY4YO+eeYFJ1HuuWmLFXByjm2Ny9/aPgbjHGOvRVqwuclP9TyImA8HZESO
 FTOPBjcw2U8XLXKU8pfG03UxsDly0aXHh/yv4otNxaoW3eHnitRfpCYt1gKRnOFS2+bVNRc6sf1
 QiWXUYO/qkwFT1334i9y02YNgJdNXcJ2rYIPHf4eMc7WBJR4g+Rr6hCuCVNvoWz8GX1lW562slK
 R5eaIEOXz24RgQqM7jPmLz/zZ74azc2yDWI+2OF/jYQqUn14dKUBs2wZo1izIW6PrB2ILIbfO5N
 s5AScByfHXzOX8GJvdsf1vRLFGwOO+Cgd/r0WvIWJc2aDpbZWzNNeBLbyDZY1I3hOwKTqOhDjmp
 moxOhx5H
X-Proofpoint-GUID: V0ciJvn4cHWNn6ECdfJPFq47jhMbfr-B
X-Authority-Analysis: v=2.4 cv=Csq/cm4D c=1 sm=1 tr=0 ts=68d4a595 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZdW6uxA9NKXbfdqeeS2OGA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=GfICSpz_d4rxbVQ3OkEA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 adultscore=0 impostorscore=0 phishscore=0
 clxscore=1015 spamscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230011



On 9/24/2025 6:30 PM, Dmitry Baryshkov wrote:
> On Wed, Sep 24, 2025 at 05:52:25PM -0700, Wesley Cheng wrote:
>> For SuperSpeed USB to work properly, there is a set of HW settings that
>> need to be programmed into the USB blocks within the QMP PHY.  Ensure that
>> these settings follow the latest settings mentioned in the HW programming
>> guide.  The QMP USB PHY on Glymur is a USB43 based PHY that will have some
>> new ways to define certain registers, such as the replacement of TXA/RXA
>> and TXB/RXB register sets.  This was replaced with the LALB register set.
>>
>> There are also some PHY init updates to modify the PCS MISC register space.
>> Without these, the QMP PHY PLL locking fails.
>>
>> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 311 ++++++++-
>>   .../phy/qualcomm/phy-qcom-qmp-pcs-aon-v6.h    |  12 +
>>   .../phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h    |  17 +
>>   .../phy/qualcomm/phy-qcom-qmp-pcs-misc-v5.h   |  12 +
>>   .../qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h   | 639 ++++++++++++++++++
>>   .../phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h  |  33 +
>>   .../phy-qcom-qmp-usb43-qserdes-com-v8.h       | 224 ++++++
>>   drivers/phy/qualcomm/phy-qcom-qmp.h           |   4 +
> 
> I think yo've squashed too many changes here. V5 and V6 headers should
> be a part of the previous patch.
> 

Hmm, not sure what went wrong there, but I will fix it shortly and 
submit as v3.

>>   8 files changed, 1251 insertions(+), 1 deletion(-)
>>   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v6.h
>>   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h
>>   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v5.h
>>   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h
>>   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h
>>   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-usb43-qserdes-com-v8.h
>>

