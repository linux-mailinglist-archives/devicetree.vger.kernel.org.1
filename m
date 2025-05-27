Return-Path: <devicetree+bounces-180988-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 83B0FAC5CFE
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 00:25:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2DFBB1BC1F8E
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 22:25:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 910F121B91F;
	Tue, 27 May 2025 22:24:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PoezQ6Sv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE1C021ADC6
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 22:24:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748384649; cv=none; b=Y0XZ7G1msP9fe/9f+IEfO9Oj3Wh5DK4sAeIPfGo3ZzUhbB6VYigqHZYg9G29uPiI/a7b8c/6QsTaabysCmYEhgTeR+d0djb0yRvExAV56Zn4VNm0NA1G4568xquc1UOilHfy78ewtZO5IWM09pRTTAFioH6VdYY8gZ144jmKEps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748384649; c=relaxed/simple;
	bh=oLsQiSHYDSEXKOI/hWh0KWHkpifEgA9Hba6qMZ6sQdw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=U0loxhdxRLRBz5qDemkGzx+s7Lk1IrLt9KE9xFpW8n3jfBCGK2wbo0rTDGKyFuIXpPowsGwIxlO4zsTizJttVo+X2I1XYUEgyKxuFh5GQuPKvoUc/Uq624hmE2fjNiITn92Fknc4m/eYRlnfW6xwlsktjKrX2FlYa33ceTHTi9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PoezQ6Sv; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54RBYlkm021578
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 22:24:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mDtfEhpWbybo9BquJQGmwF8OkBC21Q1FwUr7PssREGs=; b=PoezQ6SvleqAFKe/
	HG7F91sEH4xC2sZz86nDkcEccw9E0W+/oi2ClhYl4f5hYNiY156Mv3fbyBOLHExl
	QbMxqLoRIuI0rDy1p4TpIolHI8dvUBN+uR9mJZRPBuacoJigEE0h6oNHuioGFo4w
	odB5w94OgSgB00Xu1wmNlGjYs38Glogd9cnJif1WOMNr6AYpeje2yQ4kFzOb5PPF
	LkTqY+1atrCuPttahzyF4H+GvncvGM4mh2A9MNe6N+V4StuVou92UABcAMj4N+fh
	mD3Z/DdE2qW2iyGvErwsOcKwT9IVFAVS5ar2HvKOLysidVD/jmQJ+69Jzn/0lFjo
	tuJM5w==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u6g90c0g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 22:24:06 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6faaa088820so5865106d6.1
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 15:24:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748384646; x=1748989446;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mDtfEhpWbybo9BquJQGmwF8OkBC21Q1FwUr7PssREGs=;
        b=vt/p2fAImCG9ASWPKj3cJORoGF1aH9oJly5+Kgqx8HftcQWcaAu7KEfSXFAA1hiUfX
         NnQQIkNZZyaZDm2RN1EhftfOaliTNPyVBhLrBu1rillseO6jNFBFkmZbLyP7ErZfO09p
         4yzub+VsktM2S2pFPSt2q1Csr5bVLtrL2p2MSdLd/EVbrNKx903axsFvPOMNSUE3j5+R
         DYfZdJJX5e5Q//63heONTSQTCMyYugoNeoRjmPeF7p7V3cUFWV3ikJpjcv60Zt3PaunL
         lPiLwxXN7DrDCjHyfOqJWVsbqYwjwa8Kny1CWPAesNQlTzcd3odeiJsXHMbZgxPYe3TZ
         g23g==
X-Forwarded-Encrypted: i=1; AJvYcCVQ1AJZ51w9gLHffcJtIh4T4MTlooLzo0nJK2QS3TouH23FLY4AsMGT5zjqni2Lv2nQLnVj3PJbcAgO@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7dXFIY2m4qKmtCmwxuS4iGf/oEKH/K2nZ2e5/fZjpd+adaahG
	4D8ZVc5qJW4EPrA5si2p9kNqRcRqtjmq6rLGAd+re9Vypya3GoK+LhzAMMUmP6avSUuGRmd78YA
	mWE0G7iYh+9uRlnGahTSWMq8TgoMncpLQ46pCp5FftsH8cuDUf1fHMpydgYGTNleJ
X-Gm-Gg: ASbGnctBVQRLdAb/7JjzogNws+TFCB8oU73ktwgJY961gZ0YxJyz/iZgJFKAd6YYMFJ
	d2VQc1pZPAdym3o3sXzQ513ifY4+YsAOgeLcy2PVFo17hQ3xW+pcRug6ifchn3YpDvU0a+GPrx0
	s3L3EXGtVaoieVraINqQvVrX6KCApyzctS75Z1kDwznNo5RsYrtCCOsAr+kkvlsWgYH9Vig0VLP
	zJajK5jmfzPNRVo5ufmowIx41artHNT3s+TsdOyrsuiJ4QwZMz5LeHVBLiufIVjQXyp+/g1iCT+
	lWZM6zBVMQeqb+3bYwyP4uj3Fa6zPIlZahS1nUUXzQTS2iVHbzRdF+H9KwChRzm8KQ==
X-Received: by 2002:a05:6214:21a3:b0:6f2:c10b:db11 with SMTP id 6a1803df08f44-6fa9d170021mr102554336d6.6.1748384645764;
        Tue, 27 May 2025 15:24:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHMlSQWfVn9UPC7s8D4zNhThUYbhMw2ulqS9fDQYheouJp2WdybF0aq560e5JWTH8TcYt0i7Q==
X-Received: by 2002:a05:6214:21a3:b0:6f2:c10b:db11 with SMTP id 6a1803df08f44-6fa9d170021mr102554186d6.6.1748384645429;
        Tue, 27 May 2025 15:24:05 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad89f288ee5sm19250366b.172.2025.05.27.15.24.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 May 2025 15:24:04 -0700 (PDT)
Message-ID: <447c3b13-8d6d-4bcb-83c1-9456b915a77e@oss.qualcomm.com>
Date: Wed, 28 May 2025 00:24:02 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/6] arm64: qcom: allow up to 4 lanes for the Type-C
 DisplayPort Altmode
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Krzysztof Kozlowski <krzk@kernel.org>
References: <20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com>
 <styd5gjksbsqt7efylpfn6bgwgyvt6zexxiooihjsnmp25yigp@unq7dor6gso2>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <styd5gjksbsqt7efylpfn6bgwgyvt6zexxiooihjsnmp25yigp@unq7dor6gso2>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=d4b1yQjE c=1 sm=1 tr=0 ts=68363b86 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=BdTzBBq6q7eIxeKzuLcA:9
 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-ORIG-GUID: QiXX5tHOKXxo9U-YlBKv9J9Wb3gLBkOZ
X-Proofpoint-GUID: QiXX5tHOKXxo9U-YlBKv9J9Wb3gLBkOZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDE4OSBTYWx0ZWRfXy9mxEUeYVBGD
 5gQRPMCPkrIS9uZLt6dLsqjNd62rBx/VbEJtG3Lj8jNU2Uul+q39t5bSIMxMJ26WjE9ds2V33p5
 n91c7+VtwxuQmX+6us4TNjtPcObZ+KDcvesCO4X7isrNgDQnmMDH/XfvNsCSh+XsBxGmVidupbO
 J6sQY8C7+rO/1X3FyYk0AIxXU76DFzvgegvVvJ2oUxsiK29f6567qjeeTo4dYoBWqrcjGZ2ntMw
 6NItw1MdWiImLrX+MZgCw3fwgl0Wve2G0R0OvIr5Y4pQ0rmW/0QVaypcuXN3UQP23F6mTREbTja
 2/On+wcMTH0AyjgtnCrDdmt0mhOJbJc1BjM6Zl8KOtDBov1gYvKSXKETrdgwNbEZj0+nKsxi1Sw
 G1jEvuwyVgkuTXdx5xHUlba6E+HamM52h6IXUVWPd9u0cYfTQzd/6xs/ld+GRmtMe3wOmLHO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_11,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 malwarescore=0 phishscore=0 mlxlogscore=532
 lowpriorityscore=0 priorityscore=1501 bulkscore=0 spamscore=0 clxscore=1015
 impostorscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505270189

On 5/27/25 11:10 PM, Dmitry Baryshkov wrote:
> On Tue, May 27, 2025 at 10:40:02PM +0200, Konrad Dybcio wrote:
>> Register a typec mux in order to change the PHY mode on the Type-C
>> mux events depending on the mode and the svid when in Altmode setup.
>>
>> The DisplayPort phy should be left enabled if is still powered on
>> by the DRM DisplayPort controller, so bail out until the DisplayPort
>> PHY is not powered off.
> 
> This series doesn't seem to solve the USB side of a problem. When the
> PHY is being switch to the 4-lane mode, USB controller looses PIPE
> clock, so it needs to be switched to the USB-2 mode.

I didn't find issues with that on X13s.. Not sure if it's related, but
on the SL7, after plugging in a 4ln DP connection, I need to plug in
the USB thumb drive twice for the first time (only in that sequence)

But there's nothing interesting in dmesg and the phy seems to be
programmed with the same values on both the initial and the subsequent
working plug-in

Konrad

