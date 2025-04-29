Return-Path: <devicetree+bounces-171942-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A3061AA0915
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 13:02:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9DE0F5A3354
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 11:01:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E122F2BEC27;
	Tue, 29 Apr 2025 11:02:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iAttqvhc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7574021ABC9
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 11:02:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745924526; cv=none; b=R3oV1ZNqYnjg3ssSaWfdHZtMqO2GsFJq5s0Atp1N4Qm+RBjA8DaJXA+e1N/Mi9nzGRTYIHiBcOnaa6RIR5PEP8YLquks1w1ToHRDE+rpywoZsHLXu/rYjjA7sOX/bnbVKMtn2Yi9CIBPFsgZI1fIvWC5N4f5yYVGESTT1RYJ4Ws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745924526; c=relaxed/simple;
	bh=Ig0Xc32fMWeHmMI27tiLeWyS+nuXMNJpZg8MfYTWrU8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Zo1v7iQ0nET5GZQxmZwK1kw4Q/Bow2Y7SvGmRgfxHUF4xjzm6rRk12MeGEEbKABPUnYz70KtOIS+0oTapUK3bILr7WSIfYHC1hKCjNQpdK41kvyvbURTnTV3WleWBftkBR3kLMuNUPcvXyK/p5S39hE2YVtHn4N7QOm2CDNBOtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iAttqvhc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53TA0oqu030420
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 11:02:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MIW1j8QbMOdaLKZ0HyR+IOgl13akEDxSg+hC6p8cVEY=; b=iAttqvhce3McJBiy
	J3SLMJw/pw3GQ2H/yceb9b5H6Wg0StZmhkzTO/EWEHawPHxUX2AdsBsnSOgq1GFZ
	GXORjrYJFXfFCfvLY/ZsWtulokYyUc0vztXtMrawkcpGfLrUjG4NWCzk3pnvje1/
	2vZpxsbAAL1Dc6yeit9DQ1rZdcn9AsjMvIYHCtpHfd6tbts1zSqQ7qPxnPnM/0z2
	OOxLnreFd/DrX4NhJAnlLQtpnvjK0uwzH4LZvZhQi8i7OkwWFS8nLBYQzJPijq5s
	z5eTHQcphHCVyHpg66enorlJ2BdSbsri1/7ENo7NUEx4iEB+5NvSR5u/C9z67flw
	/0Hb6g==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 468pevkcs1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 11:02:04 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-47b1b282797so10892711cf.0
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 04:02:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745924523; x=1746529323;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MIW1j8QbMOdaLKZ0HyR+IOgl13akEDxSg+hC6p8cVEY=;
        b=fl4q84SIm5WF49odfqMSMUMMbeobdfAj+x3JsxbXte3CaUoa218xZV4bIDd6WPcrvx
         YpgHupUFL3mtQpc3On1S4WmpSAmOEo+EwuTovzleq1cR6be2yNAlHQ6LgnMd+qVojEOC
         Odj5zgRaG2g1IpOQ0A9018wBfaZYP8cAWA9eSYD9Vd6XoVY/P8YN2llVVIfBzQCVohGC
         80dC3jlKsnS6iG6N7mYUgpeb/mqqAwCIRpZV39WN3XkKpXy+/VtgCVBXm58jpe+QT6sX
         U4l7dxQxXLcs71nkLDid137o8EtochxQdcErV1Q7+g73X6chkicqHTVmkCu+Ph3q7OOX
         UZLA==
X-Forwarded-Encrypted: i=1; AJvYcCVt8eYUR+XTxcvYUvU6nDUlV8gUqn6/SFsgcratnKR0XKNmhtumvPQvbFeb6Lyb82FZi/X5qieiaW3I@vger.kernel.org
X-Gm-Message-State: AOJu0YxhbgL5nbUZKvIvGXuiOwET9f6r14cjmlZlFaqs+3qHEdajuZX3
	/PTOEvoWeBKVxDznfNMfbyUrR9ZSeyjXDbJyeFXVXqfLOCm0K9d9GajSK7RGFLY8MBjtCJo0QRd
	KA50UbCfKZE7sZqfaG2jRpIraooCnH62c3OsYIuPGX1Qnf5iuXQcjKqvbTdgb
X-Gm-Gg: ASbGncufhnTbuoouqpFx89ktXDgnWUAOltwISCIcdlUAx4XC+MV5+uWWvVw5rkU16Jr
	gpy+S8E6lg1BR09RiXmwi8Mxpa5AP/bM958Z0LzPiQ9HwwZy0R1NSi70eeZZDRrngeDrdpmjJr3
	miaiykSbggwzj2y12IPS3SwpL8stvX2T/LfF2etoOLSfxqu8Maar+l2/e2cn8V6U2OPv60iGEtT
	jkX0vQwb6Gfzs6L5Qaxf4mH1BPUSBqs6I0yYFO/XG6NdZMlOA3K7AcxiRqAqBm+i995zO3aPVP1
	olr8M8DP4OZeJJY/qDB1FCX1flH0lY8N6ixpcv8lSyTImwL/QltTY7hQ/lVi317i9g==
X-Received: by 2002:a05:622a:589:b0:472:e32:3fa7 with SMTP id d75a77b69052e-48868e89468mr16948961cf.15.1745924523612;
        Tue, 29 Apr 2025 04:02:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IELgzmytp6tkZWR1VWcXfwGrdoOVAOm2or1fI5fqeuu7cvwQUXJdZdT0bJDtNsoYSceRjpNdg==
X-Received: by 2002:a05:622a:589:b0:472:e32:3fa7 with SMTP id d75a77b69052e-48868e89468mr16948761cf.15.1745924523296;
        Tue, 29 Apr 2025 04:02:03 -0700 (PDT)
Received: from [192.168.65.43] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6e58623fsm760382466b.78.2025.04.29.04.02.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Apr 2025 04:02:02 -0700 (PDT)
Message-ID: <24d2ade3-ce3c-49a3-ab68-e782bee37096@oss.qualcomm.com>
Date: Tue, 29 Apr 2025 13:02:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 7/7] arm64: dts: qcom: qcm6490-idp: Add sound card
To: Prasad Kumpatla <quic_pkumpatl@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@oss.qualcomm.com, Mohammad Rafi Shaik <quic_mohs@quicinc.com>
References: <20250429092430.21477-1-quic_pkumpatl@quicinc.com>
 <20250429092430.21477-8-quic_pkumpatl@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250429092430.21477-8-quic_pkumpatl@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: IdRCbx7aWj2T41YUBW6iPJ81dP0t8oDH
X-Authority-Analysis: v=2.4 cv=aeBhnQot c=1 sm=1 tr=0 ts=6810b1ac cx=c_pps a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=m2XL-mgSGVCMsbPKemYA:9 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10
 a=kacYvNCVWA4VmyqE58fU:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: IdRCbx7aWj2T41YUBW6iPJ81dP0t8oDH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI5MDA4MSBTYWx0ZWRfX8/RVE9YsAil+ if2oRyT6XWFpTodsDbhMY2EmrM/6n4fhGpQnrIp1ySGr7TI8IVYL5f6H775tItbheSZOAQ209ba R6T8d8V/iP1iZB6hEfNwHRhCCWECn0yn6GrYkq1mYtS7o5hTi8MZMMQOLAWasj+yYAg66UintKK
 KJFmDazS3NllHxVDHDhdpVzMPl62IsjikIqsMBJPHHcmedeNxAgjCm5jqOiof1y86J0cDw9le35 KFPL0UOw8IPTAKlQDg0QlmewbflzSGPBqU55a1v4TuJ14nIqGs7lnYEoawMTD045YnNqddVZdpp W8oMzctCTCySBEYDpEUXwryxahfGr9MXRAdSCG0g9AEaDFSUHQZIaYU4h9IiwL6HVuhTtcOcMuC
 8YKGKNoWeES0jMZAvVEesNQpFv0dHqqX3tR3xRy9V3qrViNgWvyXxYdBb5ZMsZcmPnzGcKOL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-29_04,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 clxscore=1015
 impostorscore=0 bulkscore=0 malwarescore=0 priorityscore=1501 spamscore=0
 mlxlogscore=799 phishscore=0 suspectscore=0 lowpriorityscore=0 mlxscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504290081

On 4/29/25 11:24 AM, Prasad Kumpatla wrote:
> From: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
> 
> Add the sound card node with tested playback over WSA8835 speakers,
> digital on-board mics along with wcd9370 headset playabck and record.
> 
> Signed-off-by: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
> Co-developed-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
> Signed-off-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
> ---

similar comments to patch 5

Konrad


