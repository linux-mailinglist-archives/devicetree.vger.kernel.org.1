Return-Path: <devicetree+bounces-127976-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 167469E6DEC
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 13:17:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CC90D28247D
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 12:17:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAEDE200113;
	Fri,  6 Dec 2024 12:17:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SlRJ2MvL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F981D63CB
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 12:17:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733487467; cv=none; b=R3rgoLwHz8c4wZQl+4ZXDOgRMDGQggBV0X+rhU0dqk/xkRjzL7TELAcDdYE93oytg3CKY/2tDblBE9A+kgMUZETmIwKgWyhdGnI7qsjuj8hhz2StevzaqCaxR/z9baE6yC/FnY1M9kH2j7EFbv8IXPrrAKevbtvLtanvItn/5gM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733487467; c=relaxed/simple;
	bh=5wkWfO+hWZHxAXWoCicEQ/+F+PuZSVuy3eYlYUHtBzA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SOxzTwHvxewXJzeqvKfNM0CG4N344mfhC9Syd3ZnG5Ng38BS7fBBIvZeS6va/WSS9zDznVM7q7GbFUrlmga/6Kz54Hc5tEuydfVrbdeq4NW7qPNKhzq6mEu/ksvOmVrwElBzIcpZNJIcD3N6EyrVw0iqC2gbcQJdzJu+3Ut8i3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SlRJ2MvL; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B67goNd031107
	for <devicetree@vger.kernel.org>; Fri, 6 Dec 2024 12:17:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kIc1Z7YLPTzeUFAcgBGUiX8WBgeyaJlURl7cKhkV0Mk=; b=SlRJ2MvL4q1Ukucx
	79NnJZPYf3AwwiUZtxBtsKv4R79lDrO+981RLsN0/EeDxchjMAkki99q/m9NUTKu
	7DkGHBiWamEjP7g9rGGQTZi0nawZ6Ysyih5WQYRC6YBZoxiHvxiYQyYiL87O9l09
	WzQFlZ125EctI7FuHeLfqT8kuQ668ubQ2oM49CKXnCJxO6SHMWMnLUVRgjsYjW35
	GfjtxMBWXzRtcSl1Ee3PvDy1boJ56zwwwwOv3RXPfXREieE9BhJbDx6KdTHPzi0f
	caHK9N/ZpCSLgwnfj0tsCFUba8Sk8wXLsbOKlDQdLKwqRBGYatXxQMt2/VlrAlwG
	qngQuQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43be1734d8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 12:17:45 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7b667e652c4so14054485a.0
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 04:17:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733487464; x=1734092264;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kIc1Z7YLPTzeUFAcgBGUiX8WBgeyaJlURl7cKhkV0Mk=;
        b=ZwGCV+QzuHvAzhQaTA7FJM+QprNRLXePUbS33xMQ1ESgWcFzmEgo0wEWT1mjjLwjF+
         ng1rTatmm5zVwf3rvoI9vRxVYfYGCXSTiyoA6xQd69yUCCvVh7taZo6+z8u01JR/0qJw
         nEMWumDEs4odyReINHC1IHJi+7cCD4e1IZMICB+9Bue9LduHpMBqGboiexE3YoY4Hnj7
         kW5lZAWad4J4qKAh3u44R8k22qs2inepYp6zA2euIoFb1PTBRHckMaxmRQbyn3beLS5S
         OleMI438gUW2rtzbdI7L1JuOGyMT4nXMpp4gJKIA6SLdjf9gGVgqM7FPxMu0RMYoOrDu
         Yqjg==
X-Forwarded-Encrypted: i=1; AJvYcCXkdoc842hbuF8K7GuFHfyA1TAthNuE3+yqal/mAQb48T10u1k+7VkaBU7gQnZqAJV4I+fvRXmdO70s@vger.kernel.org
X-Gm-Message-State: AOJu0YwdFO1AUzCnxgzku+8Ig+GBFYgb7aElA0v9oGjgKpKwqg8/VtYG
	Yx74QpE+UmXmRdkChjRJ2dMxI4cOxO9HyPYQ54zJINry6lnhI1ecza2KEeorYw1OuarbXwfqO7j
	7zRGVB8g2/d4C15ljtkFCWZozBXxPIqC39CtH+X5Hvd3QvT1dKyw3bsi5pzsM
X-Gm-Gg: ASbGncs2YPyQGEUa8TZ0WXYmcpJtZTS0xmD/Qp6/Xig+ZllRq8UmjP0LZ1s368qi76d
	Emg1zUb1xxJjeuZO18twhim9D6PV9XOV6Rz1LH58C87LxxSpLiA9hw977kFIQzEKXzql2z0jRir
	LzUpUOuzFAjKNKYEdnX5NXmX6v9Vr96VpuXU6h9JIovRkYfGxXdDrs9GqAODprlyhCgMR/G+n7r
	2zGxxMAESU7OzhJWA952jwlo+Dz3FWCoWl6RNYN/6GJEIXyvzwR0eHKSRHpE5Vzm4ZRimS41cs4
	Gl/W4xiSux5pgBcbLB3JWZAY7Y3KmgE=
X-Received: by 2002:a05:620a:190d:b0:7b1:1313:cf42 with SMTP id af79cd13be357-7b6bcb5c27cmr209648785a.14.1733487464060;
        Fri, 06 Dec 2024 04:17:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHfEbyz/to2eX0ORRsVQ69uE30/rqBFU89xE7K3MXKBCOC+9NJDlOjylc2i3dLlYap3aPAV7Q==
X-Received: by 2002:a05:620a:190d:b0:7b1:1313:cf42 with SMTP id af79cd13be357-7b6bcb5c27cmr209647185a.14.1733487463721;
        Fri, 06 Dec 2024 04:17:43 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa625e96b0csm231761666b.58.2024.12.06.04.17.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Dec 2024 04:17:43 -0800 (PST)
Message-ID: <da297f8a-a925-4ae0-9cd0-c4b7f8556c49@oss.qualcomm.com>
Date: Fri, 6 Dec 2024 13:17:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/2] arm64: dts: qcom: qcs8300-ride: enable ethernet0
To: Yijie Yang <quic_yijiyang@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, netdev@vger.kernel.org
References: <20241206-dts_qcs8300-v5-0-422e4fda292d@quicinc.com>
 <20241206-dts_qcs8300-v5-2-422e4fda292d@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241206-dts_qcs8300-v5-2-422e4fda292d@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 4RZMP9y5zBnIV9xyxD1sF7lRqUz8m3dD
X-Proofpoint-ORIG-GUID: 4RZMP9y5zBnIV9xyxD1sF7lRqUz8m3dD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 phishscore=0 spamscore=0 bulkscore=0 priorityscore=1501 mlxscore=0
 impostorscore=0 suspectscore=0 adultscore=0 malwarescore=0 clxscore=1015
 mlxlogscore=726 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412060092

On 6.12.2024 2:35 AM, Yijie Yang wrote:
> Enable the SerDes PHY on qcs8300-ride. Add the MDC and MDIO pin functions
> for ethernet0 on qcs8300-ride. Enable the ethernet port on qcs8300-ride.
> 
> Signed-off-by: Yijie Yang <quic_yijiyang@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

