Return-Path: <devicetree+bounces-249501-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8588BCDC31C
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 13:23:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BB5D0301218F
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 12:23:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDE7E330327;
	Wed, 24 Dec 2025 12:23:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="auxYJsiR";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ObJWw9y2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44CAB313277
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 12:23:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766579023; cv=none; b=tvMrlFM1r+HUHzOK6rJyTDPLluv3rDZUuOaBzEFzHB3ETsc5NCBX7R9rTtHJ5PSyhttP2dxGis03bZPL+wQn0pI3xNc/qWygG6j6foQgRHPswsH0uTKB7YBKrIrydsSNAtuWvvSPRpXt1xPhnGqOHB0Oq2Ao3o2DG5mDL5PcVik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766579023; c=relaxed/simple;
	bh=upAEC0z9eOTtdXbTQXxcwJheFZpgb3MgDZB4XXR5iKo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uoiyhN4mVuQtnmngRA44v5tbfOgRIbKYo9C1sh4Be3nioyGFi0w9CwMmVqhlFalHiErEmRrY3smKV8KHZsUcWVDTRbt2lu6ag3x9I9NTZsQzIJxI3JolF0wxtk18ezSLIZIdw6UrrSHyb1UzKIgAF8jkJcwld0KUjho5Ax5hEDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=auxYJsiR; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ObJWw9y2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO43QR04134150
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 12:23:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Q3XBoaOzyi2mpwpKKObIZOpC
	k16mU1PQ4Fx/B1pjtdc=; b=auxYJsiRSvFTiaBlY+PY151cWUSsZAIbg4LWwaQ8
	ngeqrqshksq+30ZkmMOY4Hoa2PL/mhudBfTN/aN2wf3gtnFlVkPYkqd3QWUjDhUw
	WtS9Dg8fY31fo8Npt9KKc71lYaMjVbz+5/FXhBcqnOXkBYo1YHyRtYKJ1erSA3ft
	e3oYIvymUVl2xoGGDcmzl83j8EOlhGfn0x2EdfjKYfSU4Ai207EWhmor26jy/W2G
	5f2n1BC054l+WeCf+vvEMdvnvV4GLRG2WW1Pw14GXSvZgKPk07Blut8Bw7jaPrDa
	xB7xszbm6Hu2XOvg5yAae7mPIfYftFO8HEGw77zVhpXLzw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7x46u0sf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 12:23:41 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-88a2f8e7d8dso154706156d6.1
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 04:23:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766579020; x=1767183820; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Q3XBoaOzyi2mpwpKKObIZOpCk16mU1PQ4Fx/B1pjtdc=;
        b=ObJWw9y2mBFpAxo+CCQAe1homJLLR7ced3cukS7QIyoHA6Gefkegj73qwykWtalTQt
         dipApCfobUN+5tnHFU1HnT5Lpu8qIcf2OY+kRVWP0BZsy4SZz7hMUUXVH7EucfFXOnBk
         UelsfvPTFE9Zf3DbLJbaz0TJTonMHHiV0z25kU9jIKxPACRuYq/WvicqK1c9QgcE+CBI
         qDG+4VEITHhbltxYg7J2gsNt3E8Dqo3BsctKYon1I2e5FcrAZP35gPAORN29m4gINsE2
         wtI6SOtTfTb6uzOyCz708BFaBJ8bXsKLAlU22D7zK397TLnF9dp3q12Aqj/Eiu3AUzk6
         YwIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766579020; x=1767183820;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q3XBoaOzyi2mpwpKKObIZOpCk16mU1PQ4Fx/B1pjtdc=;
        b=u4Di75bRvh+bH13BMEUwoRAgeHThHh8728mP3k4PoEZnVKQYzJ1nQ+mrtrELkRmYaN
         zpm0r9JmP2ArIJ5HogB96X8k8Y7oC0wqvEkjjPV2B/beCL7aZSfxGQgXMHO0DrKuB9/G
         rIFTd0mRz8lw1ARp+7mjWSIN9z2Up+fViV34UpAEtnRVVRdbjULZKN5j9AvrSdg7C3xs
         effUk1PJNoJHZa6iMULBGmVKINw/QJ25Dd1j8dlcrniBunTu50rMcMaNmvxLbCxqrKUd
         D/I5wqVMMeCnZQ0amppigTbVPKv2DddPn5FXx/OnO8siYSg3bLGW/2Xq5Qq4D0aiqHlg
         CRyQ==
X-Forwarded-Encrypted: i=1; AJvYcCWbhzzi72/RTzM1FhJX54cX1Aw1yhIQ2MsQxFyh9KVh/TBhGVAAqazb2AAcn5a5uAmiXZtjNAFytjGI@vger.kernel.org
X-Gm-Message-State: AOJu0YwM8+/7Ff9Ix/TZW2y2ynTAd21KyTb8JnlvZ/9xENzcyDq4zTCq
	fFHD/okOT28UrIFh690FdxUd5TE1BWsW6+hoRue2peY1W1Vv+3B1nFi3jfxYUXJVED8HV5aH50p
	RcF818f+B9RRDiuUGnBXZMsUC6/SFKwspnemqPf3x1OVO9mpGnPnnjQQGHWjZj0op
X-Gm-Gg: AY/fxX7s5KNVRr7QzKt9HCU4H05qNKQsuq1C7RUoL3oaREXPBbH1NFoLiq4IieGBiCs
	M7ghaLMlcjJW+LjHhMENPyOMJFpr0fiTRY/ZBAt57B6I0GR8fdYp/Yq7JDStV/SccZyi5jTVEx6
	VTNOyva+GxiMEA/PQ9EgfdWv+5zKGxEvO/ozUEHkB11v0BaX1yqzKacUGmX0X1nZoNWOm4sMwMU
	F6gKWsXE5tHGSM9zYiUID9IEFLUpwH7WH9X4pLHwEUG3gDxsXAl7LjfJrQVYICosj1+2z2uhvvg
	jamLJGSFVERElc80k05Q7bDcsGbgTjIWY0qVdtXG80zWXYwo+h2S5tqhhLImWZKlMTvb3YEUKOS
	76YHQZ57ZCn2uuOk9S/OkKmy+tjLZLKHEEo9YgfpZZuyA8quZbkedEgtapDfdaj/dC10tRTHwmT
	yKErurZSdpGGPpMI7OyqznBHk=
X-Received: by 2002:a05:6214:f0c:b0:882:762c:6b84 with SMTP id 6a1803df08f44-88d833b5f7bmr320279686d6.35.1766579020354;
        Wed, 24 Dec 2025 04:23:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEGh0XS144YHN0KqGLh6kbJ62tw+ca4eNND0XVbMUMIkHFtTbkRRfwuu32QAZyuHdcnFOuCog==
X-Received: by 2002:a05:6214:f0c:b0:882:762c:6b84 with SMTP id 6a1803df08f44-88d833b5f7bmr320279326d6.35.1766579019913;
        Wed, 24 Dec 2025 04:23:39 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a185ddd39sm4857503e87.42.2025.12.24.04.23.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 04:23:39 -0800 (PST)
Date: Wed, 24 Dec 2025 14:23:36 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Stephan Gerhold <stephan.gerhold@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-watchdog@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/3] arm64: dts: qcom: hamoa: Add the APSS watchdog
Message-ID: <doohnt42hdq6oxw527b23ycnbb42l4srbkhuejhvnhnspu4vde@qoqqalagso5x>
References: <20251224-arm64-dts-qcom-x1e80100-el2-add-apss-wdt-v3-0-1801c55d2883@oss.qualcomm.com>
 <20251224-arm64-dts-qcom-x1e80100-el2-add-apss-wdt-v3-2-1801c55d2883@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251224-arm64-dts-qcom-x1e80100-el2-add-apss-wdt-v3-2-1801c55d2883@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 3Xb9ZPk8fUiRfCuuOFUV9pXGEZtcV7c3
X-Proofpoint-GUID: 3Xb9ZPk8fUiRfCuuOFUV9pXGEZtcV7c3
X-Authority-Analysis: v=2.4 cv=aOf9aL9m c=1 sm=1 tr=0 ts=694bdb4d cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=jtJCHLo7aIGmxyxyT8UA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDEwNyBTYWx0ZWRfX5DADec1CDSrQ
 kc3NdfZbW9cYJBpiM+6zsFiR/Z+HESN3NFIs7vGxjjc8Jg/9dd1i9WWkgAoTg7L9arLEUjYpKiI
 A+bzG+bjT+wNtOLJC7qHKLwmY7a9ruTBoO0hkbaiJQqR8IVXn66yFUaGE++7brz9jLjovZTFST6
 Yl84u37n3LoM93vfgUplWB7nX0i4Fx+Qg14RoMAFHYOnRn1nsOStS2wvvICyjtsNKVP6ZmMupyM
 PF8ApJHFY7awO5qrocWNyEhIcSBh4lBe6TBCCVqkGTTByKJFfyY1pXR0WW+VqYPNA0/VEbci06G
 15DNw3tRn4uJ/mkrojHdpo1cZPTCqUpML3k3IJMk8q1oOF2okSKw/tkyZOCN8aqdgGIKzLSQOAt
 1J0ucQTw8tE7XAKZPTjI19QB9tc0gNWF2w5AcoGECWQIXhZWZPIkUJQwE1sSPDicy0ErimcCZ1E
 HiZH+QXxgSaaYMNQWsA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 suspectscore=0 spamscore=0 bulkscore=0
 lowpriorityscore=0 malwarescore=0 priorityscore=1501 impostorscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512240107

On Wed, Dec 24, 2025 at 12:45:21PM +0200, Abel Vesa wrote:
> The watchdog support in EL1 is SBSA compliant, handled by Gunyah
> hypervisor, but in EL2. the watchdog is an instance of the APSS WDT HW
> block, same as older platforms. So describe the APSS WDT node and mark
> it as reserved, as it will only be enabled in EL2 overlay.
> 
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/hamoa.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

