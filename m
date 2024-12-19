Return-Path: <devicetree+bounces-132878-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CBD59F8652
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 21:52:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BD06916CB08
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 20:52:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D533F1B041E;
	Thu, 19 Dec 2024 20:52:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Lq/k1cLE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 745B9189BB5
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 20:52:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734641531; cv=none; b=e/1e8QqbbRx/uIGOu7umKLd/vEhUJwb6OdaXmQGI3FAiqn828NO1+GEnoESNIEabLQ7oM0nNsZVQOI7JHeyAw2eMesI+B/lPxmfgwmCS+ICo9YXl11n4BJ9EaEJg/qiwiUMJuGaJ++HITL7S+gcEgKam/fPYiavNOBDTt5R7YBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734641531; c=relaxed/simple;
	bh=3zL/XGIzKXCff+csXDFxTpovp+OFcsO7pqY0yPDKX1w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZZH7zMu9EpSoFn8A3PvRTKLKHLBtmj/T/BziM+cmEsafXbWb3zCoFR/CCo5iH4FAka65sPaThJiLTOpPC4580y8qU/4fdC6EjfCWiOyhJ6e1U+mNEAg8Tl7/nMBxQfA8c//dXnkOz0KGkOTl9tzlE0gYG3920dZz10zEaP2IQy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Lq/k1cLE; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BJHL2Ns015489
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 20:52:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QDOY4crGsVLPcT0+9a95bCil/8vxrgosDFEPLg10pYI=; b=Lq/k1cLEDsTRGzFY
	gjWDUnX6iK2xLX+dbISBbp0OoHnY0L7vYdK3cUVRBuN5zNTLZc+Uam0Qjx/RWo3P
	hJZ/WAhgid2v3vojqLGAOyJEm1suoZQpsD4/ZhKzDAQQb9fPCTaHIzmd/p6JVm4V
	zbHUOzaLgDkz1kncX3u5VqZ3PAtXykqNLQHIG6E6FQxMPVFbC5MBXno10vNNirm0
	kC5Za79rsmCBYEqah9OvXcv4hV/cMTGcsvCcHOdO26S3tDJKzacXg0ijlJ+2Ltan
	Grna7/w3jZsniJ7H61ETOwXHxAsV4gWB41ZkaAeroDLV4VGHwvHzAbyeLrTyf955
	9qF/eg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43mqt80ej5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 20:52:09 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6d8e8153104so2970286d6.0
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 12:52:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734641528; x=1735246328;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QDOY4crGsVLPcT0+9a95bCil/8vxrgosDFEPLg10pYI=;
        b=JCDfvMpHOJYaQSrcARLiN34L1NI7WG1gJJKbFSEhFsP3ogGrB7Xd6dPx8jouJ/wUrW
         iML6dAaND+NZjnbnok85Qeikt90r84ic8e5kMHBgF/3stwmoTZSzA2MXioG7RYutq1sP
         lQKYiTRXX21bVtwffD2qsKY71inxzKmET9GGCXODAQchHoXxPt+Dy4RqPtTw0DOVyxKE
         uK9v4z/+bwVbBgoFBCEzD1WmAKeVzvTB4rBM1QgomqwS2zjxqxqpIWB+d/kY6BM/+MTQ
         8lQ5SCS2cK/sIVIEqEA9oUDjUnnesaBk9eWCs+ylfvZgAYNcfm3BSeWdRyO9L7rQ/Jow
         l1vw==
X-Forwarded-Encrypted: i=1; AJvYcCWSUrhAjPjrnwZhCI80F2V9zzqw4/9mUxmA1UZoU4OfyV0x2tneLe7A2WpM81vU4fxJm688va5zNhU2@vger.kernel.org
X-Gm-Message-State: AOJu0YxhJrDhmdoDFhyG7NZmZguZyA9zhQ2FbSs93tmAAJ6v2hcngVHI
	bTU+BF7xNAAglVvEY5OxmpdKNSHjKVMUxLdBtG58WpfpWTyTeM9d9xdrPPJ9UlUe7kFzUcBrdog
	ZbC8Nd650Whlg88zCBYoWVApXZVHaj48kY55VGrf4AZuAfVNhiYjssR9hrCvKlNLIpff2
X-Gm-Gg: ASbGncumYG7wfP26ikDoNeoWwnd99Kf+vvxZ3/icjmwN2r/JBqeEzKhyMdzNNX64TZd
	6r3EaSc1ictQvEOrPiI6IYLi64URzfJD6eH5qE2rw4TkeMpY9vVvwQXIxh7f/qgjwfrk6qY0Nhg
	T0v23F2eVshZsSav1xr20IwOFRaMX/FUoZIOJkO9NPIgUvvkItIpvf+7S6/GecQRG+qENUsxWJ6
	KzTV0cqF8TqsMjirIrd2mB3KqOPc32BbZdGQBb7K4kXGPOgGPoJMrCzfHfSvV+I1am0Jr+If7qf
	eYs2aTTglThtnioxZwPJgFJi2kL6Lt4jcJc=
X-Received: by 2002:a05:620a:191b:b0:7b6:6bff:d141 with SMTP id af79cd13be357-7b9ba7f78b7mr19746685a.13.1734641528072;
        Thu, 19 Dec 2024 12:52:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFbPWNityfSPQey2DKDG/NfZELCU1gh/+dN2ktEbVKy/E66cxvlkGEYdkUjO2KDmHkudRidQg==
X-Received: by 2002:a05:620a:191b:b0:7b6:6bff:d141 with SMTP id af79cd13be357-7b9ba7f78b7mr19745085a.13.1734641527740;
        Thu, 19 Dec 2024 12:52:07 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f065391sm100798266b.178.2024.12.19.12.52.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Dec 2024 12:52:07 -0800 (PST)
Message-ID: <f6128290-ff08-4780-8dbd-851ce013582c@oss.qualcomm.com>
Date: Thu, 19 Dec 2024 21:52:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: qcs615-ride: Enable secondary
 USB controller on QCS615 Ride
To: Song Xue <quic_songxue@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@quicinc.com,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
References: <20241218-add_usb_host_mode_for_qcs615-v3-0-d9d29fe39a4b@quicinc.com>
 <20241218-add_usb_host_mode_for_qcs615-v3-2-d9d29fe39a4b@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241218-add_usb_host_mode_for_qcs615-v3-2-d9d29fe39a4b@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: bdXh8f-McJY1GTjoD9f7cIdKVUSKPtRi
X-Proofpoint-GUID: bdXh8f-McJY1GTjoD9f7cIdKVUSKPtRi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 bulkscore=0
 suspectscore=0 priorityscore=1501 spamscore=0 mlxlogscore=740
 malwarescore=0 impostorscore=0 phishscore=0 clxscore=1015
 lowpriorityscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2412190165

On 18.12.2024 1:12 PM, Song Xue wrote:
> From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> 
> Enable secondary USB controller on QCS615 Ride platform. The secondary
> USB controller is made "host", as it is a Type-A port.
> 
> Secondary USB controller of QCS615 Ride has Type-A port exposed for
> connecting peripheral. The VBUS to the peripheral is provided by
> TPS2549IRTERQ1 regulator connected to the port. The regulator has an
> enable pin controlled by PM8150. Model it as fixed regulator and keep it
> Always-On at boot, since the regulator is GPIO controlled regulator.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> Co-developed-by: Song Xue <quic_songxue@quicinc.com>
> Signed-off-by: Song Xue <quic_songxue@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

