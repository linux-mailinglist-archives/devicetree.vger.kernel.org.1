Return-Path: <devicetree+bounces-224847-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D5FBC8552
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 11:36:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 68DB819E2F42
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 09:36:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11DDF2D6E67;
	Thu,  9 Oct 2025 09:36:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="chGpUj2Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BFAC2C0F68
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 09:36:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760002586; cv=none; b=ZzxpNEkkpaKb+8YuTNYFpiaTa9hkgCHZweGEbANLE05wn9b5tu8hfyuGJXm/vNe7pqwC3YQGaXKEh1IHiadwIcY7voZHQspr/F6pKdbas2X/M3inW+k51sh7FXYlYqpIHPewWW2DVwkyaHoVkhhvONFQAvUZSm/d2L4Nj2+RcZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760002586; c=relaxed/simple;
	bh=gfxmdc0fvddAxG4b/OJJKinGY5tgGDXqj+bN4HMO/MU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ldQ1yx334qbt2AWQxBpXkFanxDEFZWe5LZQaaA0xcy3vJoMEtDQXKtSYII4/66KMRqMzgMCWiq+/0e5M66mBI0ftjqkfPlAdVTuBt/mPKEDl3FIxrcU4FzAXYBbX7K6p9w1LKVH9G4KVjZV2qk7HG/vOaIZ0+aRSTSw7Kbs21z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=chGpUj2Y; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5996EhfS022547
	for <devicetree@vger.kernel.org>; Thu, 9 Oct 2025 09:36:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZlENfdV3NK35Sf3xLY1YxG11Zkc9wWwP7JbbV+drP6A=; b=chGpUj2YCMy3ZVAn
	kDhkvrgRbb9lsz7nO5BGZLYpXfCmUn2Liu5uHm6Hjc85VZV+4eYGLKxwCMJJrF4j
	+znwDfsIXEMAg88geZDDAd7ZRSwQ8y5lD27g/XeVRdzkegxTnMHoPYrcQgWXGyhX
	AHTMD3Fbl3QH0jQAWGWzZg+xgBQ7elMU6w6BzMEfaMHLjAc4tkii5mUblEEfpW/0
	lPVZtT2SbM1LhxBLARTjGj6NNhIAywG4PKHmX4QvzrYicFUTCBJvU8+OCMvdtunD
	yfVo/AX6no8BIRCY5JbVv6XBc3g3rnQJX3rcHQU03ZAscjw/Gt2l1OBST1nVGx5y
	/r+/XQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4sj8ey-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 09:36:23 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4e015898547so2655621cf.3
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 02:36:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760002582; x=1760607382;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZlENfdV3NK35Sf3xLY1YxG11Zkc9wWwP7JbbV+drP6A=;
        b=B6KatOR6fkrq8Yd+mJa4bHl4TIepKgqeJVd2214jeiYkojWr9WuvfHa6dBR8IWjtPb
         DIsMYhxErS87OdjPvE5SQBRQ+pM/yoTf4IT7WfkzayOrMmmJXxqYX9iAqLmQXNC6da7E
         C1XF8weG7s4eJjtUHLnWR7m5EIdoddu6x/otIieYA1jVHUtzDIAEv1fs9aWbGlEOWuCk
         8b8FpmS6P+ZokMzfxSi22xbeZJi9J0lQIWeDoDv1xQAjShVkRIpgwa1u5U6UStZ0FuT5
         QqnfUce5W0TAOFNE/Pn5mwQ5UA+KW6fnaCcSXB1a7gnMqjeMqdCDv0Klgqac2Yq7BuuI
         S1Jw==
X-Forwarded-Encrypted: i=1; AJvYcCWqmoKZTbUYf5fXeL3mCNTwhUhg8RDUAouYgcYyoqyaF89irKG50wEgyPGukC3rVgYbs1iuzEovB9qg@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9zkdwYAJddpnJld5WW99ZhxLwRelpn90hMWTwD2honoZWb/ys
	kKkb9SKkEZrrRV0v4bASzWxqs+qH0/iT2b3rBzREGEETTwiccM8YOdjVX1TTMCvCb919KrECQOD
	EM+HtUnh4peozNNfylYXlca8nwOvls0+XtJVxrFAEhQ1ikFH57GnVpzZ7AG33KxRt
X-Gm-Gg: ASbGncttZt2mVq3eIApkndGOyjyOrjsY3RuA6Ct7HXFPXnb91aHzlEYCdI93HVMBqZV
	6l3SYA1rYrap+deTC/YzNfMolBMrPF2+eGpMS2+b0bkkK74weSOcwXeb/lJraszwHIMb5wL7wga
	E/A07ivt/SJgKbR+k2/mICDUhhIO4FdNynqTN9nC+asCDDiG+SDve9JCqkWcCSLGD+wJBXXBVDy
	7O7nofcvYeueukRDPv4ug5uVLAC85l8O0x/io3rPK1gZUf9+vs1hA6Ui6WSyCztLuGuz5I8t+eX
	thIQPum96E5ICSjuzhOBNy1zlot7t8nM5z/3QGpWo+hD3OQwq4MDNHAcxUdR9yczB+P67HbC61m
	38JMB07CY4W4EM4BudhA2OaVag0w=
X-Received: by 2002:a05:622a:587:b0:4d9:c572:f9b3 with SMTP id d75a77b69052e-4e6ead21584mr61468371cf.9.1760002582454;
        Thu, 09 Oct 2025 02:36:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFswHdiOJUwRiwcv4uyVPagNLLBplb9cULvTlYReU61ImKDfBFX8j1A++FhoIl/DoaD+NWcOQ==
X-Received: by 2002:a05:622a:587:b0:4d9:c572:f9b3 with SMTP id d75a77b69052e-4e6ead21584mr61468221cf.9.1760002582059;
        Thu, 09 Oct 2025 02:36:22 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4f3c7e057dsm707731266b.88.2025.10.09.02.36.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Oct 2025 02:36:21 -0700 (PDT)
Message-ID: <d9d4171f-98cd-4e5b-862c-5711da8abf63@oss.qualcomm.com>
Date: Thu, 9 Oct 2025 11:36:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/6] arm64: dts: qcom: qcm6490-shift-otter: Remove
 thermal zone polling delays
To: Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Casey Connolly <casey.connolly@linaro.org>,
        Alexander Martinz <amartinz@shiftphones.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251009-otter-further-bringup-v2-0-5bb2f4a02cea@fairphone.com>
 <20251009-otter-further-bringup-v2-2-5bb2f4a02cea@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251009-otter-further-bringup-v2-2-5bb2f4a02cea@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: VJ6WrkDttSZ1kKA0HshWtXQoVbULAzyL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX2E3p3317C22S
 RaOGw3UytDjuzjaXjM/MBSz7OTSWLCbImWmNTyuyTSbjWDOZjlJhEi1GT6D+tATexNAXZytiJUW
 qWed34eaEoo39b8puRa/qkzjduZLl6WuIaGvtLTcRFthiUMyAH3rs2nvoYxKu8sKVD5180tPrFP
 zWWTXOyVb+Dm0uoFhcbfSLmD58fL1LsnTze1Fmv0XYmNivZXz/vc6aOrifSOsZyeK41tP01zF6w
 L47+8q3GHw0U00qFdS9DmMFWIxtERo/e9I/qWF3WpvMY9OxI47HQ/bzH/ecud6woG7R+mbhQRuI
 yk/HZkqwg6YuHS0LsKohZsXbR74w4iMqzYqzZJ1Gsk5tjCQk3zBPAGD/FvbWFYJubWexi8M+TAI
 EGaF5WcQqOvNSeqVTwE3aEqfZLNbRg==
X-Authority-Analysis: v=2.4 cv=SfL6t/Ru c=1 sm=1 tr=0 ts=68e78217 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=7Ovdx5uLAAAA:8 a=6H0WHjuAAAAA:8
 a=EUspDBNiAAAA:8 a=8Sbc7aUHQeoA2S8VE70A:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22 a=TQZWkJv5rNK5-PaLMsrg:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: VJ6WrkDttSZ1kKA0HshWtXQoVbULAzyL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 malwarescore=0 bulkscore=0 priorityscore=1501
 suspectscore=0 impostorscore=0 lowpriorityscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

On 10/9/25 11:06 AM, Luca Weiss wrote:
> From: Alexander Martinz <amartinz@shiftphones.com>
> 
> As with all other devices in commit 7747a49db7e5 ("arm64: dts: qcom:
> sc7280-*: Remove thermal zone polling delays"), apply the same change to
> this device as the delays are assumed to be equal to "0" if not set.
> 
> Signed-off-by: Alexander Martinz <amartinz@shiftphones.com>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

