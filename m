Return-Path: <devicetree+bounces-220686-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B118B995FD
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 12:11:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 37CE019C1A5F
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 10:11:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0A912DD5EB;
	Wed, 24 Sep 2025 10:10:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jFXLBCvg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55A3F2D97AC
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 10:10:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758708655; cv=none; b=piA7KDDNzDg8Wm4wlyeKK4yMZ5FtGPXogps3VF6vIMCdQmNTgj3CCoPj9EYO+gU+DyR+eNfC95UD0wQT49aCqWbc+I+Xun0yIiiNQpIWY3nwf4bd0WCokPj7lNd1wKjsSXYOV7H/cWFS4mh9VTT0K4li1u/0F1lYatswKbggvzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758708655; c=relaxed/simple;
	bh=hG9vXk3xqqS5sJKxJ+b3Algeez3MySj5qds+jtA+wyk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JMvFqyGLwUxlrririARq/04ZZFzQNcK4eNETBRZgYFwcwoHR+TJi6IPIrXQo0/6F5zAIgrfRzI53lYYxqE31ZvXrx9H8DBDc8VtSqT8spvvrdZaZFiBEKQ4uedoplepz8PRL0CtTHMc1180bHkckPfwld+tdXhkK15CXBixkHVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jFXLBCvg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58O4i9Ps001948
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 10:10:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	reaQCZEsqV9Ey3nQvVS9bb8F/IOH+ZGngthf5MS2fkc=; b=jFXLBCvgEXC5dOt1
	3HbjdXv6FWO2UjygCeTY/UbxVNPNQ+iXuRSuAFRHOloKsu9gaWC9PDc+yACPLBhA
	z6nJFzIQEUWNhjq1meI+slJiMwWU72zPd4y/xX3CcZGaigperMCUIjZXkUhT4jyp
	NUpc9Lvi5NHmdaicoNbjh4HqsPSqzI7Y3t5QAwK325BlO5N2LBYLmmqeoX8Sz/3Z
	5a80PhRXWbTzUImyzwtIDl/F2zfClIySUQM8NKs8VtUZenEGhETboyhxwji0Zi+n
	o+RaZdKSEwQq6asF3o5m1+rLchvZpueUYMmqqVfpqXezIg9Sz5bRxUjDDd5RS32O
	ebUnGQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499k98kwbu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 10:10:49 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-819d2492a75so148805485a.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 03:10:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758708648; x=1759313448;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=reaQCZEsqV9Ey3nQvVS9bb8F/IOH+ZGngthf5MS2fkc=;
        b=aVx+PX4oOsdOYH+4q4AYIme0kBF1QQInabHXRTL5plzPdb0r0eJ2Y8KVXF37kfDjwQ
         ol3t8JIKkTekXGYIc2aSeCdVIR2X3U3EKWrgKzk8+odmaPsflXRO0BQp6H+aEOe9Lnsl
         rZIofDEIOq/IrZVMc9GekQUONN6USDODRRjJGKbUgEXOKeS/YWn2Myayl4XKAFBBqGqW
         9WnEqNgLqnMNMG9xGyMtg4jmxULeJAa1yWj6Nc7dR2XKCVgNNt1HWMbVioMeVuhVpV9F
         NY9uWpVE467TZaBTLp9pp6QzjLD4NBTSIXj4Ufaaw3IGIejsC+xdKL0NpHGkK8iZ2Kdz
         VofQ==
X-Forwarded-Encrypted: i=1; AJvYcCWakGR4KdymCYLo2i+fCAFB7SyTV+1njVh4HcoJGQMD2LZIl4kEEkvBS50HZbqBGgu2mkJwjX37BOJV@vger.kernel.org
X-Gm-Message-State: AOJu0YyPHvePbPv/L1EYzxOKMAk7u1jhrwD6eusVJ5Czw+YC90kjhx95
	kDRgaW3ga8xjXXy4oVt843PMkfA7PaSepa0tis0v8yjDZeB06zv7evts89pB5s+urX/0xpQKLRe
	p10bMGqLxzEAlyDjEns2PpLk0DRmv+haS6O7Fto1/TVYc8pKjmolhB2JJ2sBPAYj5
X-Gm-Gg: ASbGnctOP29ZMljJO/xL8zjOcyBpTJ9qQH3+kgVDaoQRTz6p+qOih12adOofCDrp+Jw
	RjyQuG38vHLMDzz9qpIee+65BhxSTRw8gtEdsv8rJoj1ZHViR87GFh71OBhY69WXGZw3LqoizG8
	nddZ5fpHooyFE1oOJDjaQYSyStssczeEiv2CaGiTb6JtEjiMoV4Vhrp8KDS1vC4E9qjZV+Nzykm
	RGCJZUfPJ09z7VmJelOFJd2CC6rLnb8OOtbIhtoK5OUCOguicYvUMD/JyVtCPWNAanbT7lZi0Qk
	dJKbSMKw2DV/30fiTcT1ESgs8th7AHZ2PCv7XvFMS8VBl7FsitATNsWSmXLhewI4mwdx+v99IP8
	YM9NoEobSg62xiFHeTNzHug==
X-Received: by 2002:a05:620a:2983:b0:827:a484:6358 with SMTP id af79cd13be357-8516f7bc329mr421192185a.7.1758708648307;
        Wed, 24 Sep 2025 03:10:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFSYug89XWA3Y36eawctaVvIFnPh8zbCfGbX3tsUavuH8pOUbnlgm6o1GsVRTRymVWoNhu+7w==
X-Received: by 2002:a05:620a:2983:b0:827:a484:6358 with SMTP id af79cd13be357-8516f7bc329mr421189685a.7.1758708647682;
        Wed, 24 Sep 2025 03:10:47 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b29c776391fsm893244066b.81.2025.09.24.03.10.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Sep 2025 03:10:47 -0700 (PDT)
Message-ID: <b0984781-dcf7-42ea-9974-ac8967d56fad@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 12:10:45 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: rename sm6150 to talos
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250923-rename-dts-v1-0-21888b68c781@oss.qualcomm.com>
 <20250923-rename-dts-v1-3-21888b68c781@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250923-rename-dts-v1-3-21888b68c781@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: WKbxfBf9eMfCERB6i6VwyPc8Fki6g-jp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAxOCBTYWx0ZWRfX11J6SLF/JdNg
 HIbKYuyqn5K5Gb44rqH5/uyMKs9KLNOxdfHFHxTHXVuOApno33DjiAHQY19urHxLzY1R5hivjF9
 iTbIpU/7Rmkg7Xp+oMNbB4lgN6nfDb3IWbjmBIl4S5dp0lvrZPmGXCpnP14j2zzlaRBoMYNXlA5
 Y1Sl5gE/E6L2gc33DYJhQzwtV4XSsDGivhOkpva9CX8x8MFxBZdZATUTliryjnWrZ96rgzHAuMJ
 Wdg2XrcPsvumdIzuJCGDS0WPMpKqU8KwNh1Rjv8lLp3CH080QJWPBElW4i4G2JdbRmbQXj6yHhm
 dGwQg9YqiA3QT9lcwotOjr6/qEsJZpQ8uyjBo7JSR1/oNtTwv3loYhovGQfubh7eZckv9X0yzcw
 0dxmliCN
X-Proofpoint-ORIG-GUID: WKbxfBf9eMfCERB6i6VwyPc8Fki6g-jp
X-Authority-Analysis: v=2.4 cv=Dp1W+H/+ c=1 sm=1 tr=0 ts=68d3c3a9 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=Mrsn0bZosBzyF9UykkoA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_02,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 adultscore=0 bulkscore=0 impostorscore=0
 phishscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200018

On 9/23/25 1:01 PM, Dmitry Baryshkov wrote:
> SM6150 and QCS615 are two names for the same die, collectively known as
> 'talos'. Follow the example of other platforms and rename SM6150 to
> talos.dtsi.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

