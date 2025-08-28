Return-Path: <devicetree+bounces-209806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E718B392C2
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 06:51:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 98BB616CDE0
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 04:51:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4E631EBA14;
	Thu, 28 Aug 2025 04:51:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="k4bGtHj/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A9F4625
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 04:51:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756356679; cv=none; b=CZdBAoMKM5KFKN4B/eeJILN/cVPwqmW/hDtccK109CmHWD+8LneI54fJvcNjLB95jqWH4IEKe0QmVFTQYcks+293qF2jZKMxC/0PYOi5gZi8HZGPRhRYOhvABigGf2fRsTnoO07uEfZrqQrlEAtgbhISIGu9t+YFDA9tUOCB8d0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756356679; c=relaxed/simple;
	bh=sW+H8loYGF2a7tRB3sx4xlDEPinDir8bUKJY/rco5A4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Wtoo3/jiSCcXWAYwf/cHwgAH5rot3IoIKAyWbzrsIPb2tgbUYpNDeEdwjZOVH6PxdeU2n18U+9zQv5z5zuG3oJegnB36VmcBvuRtv9+AKpHf9OEx6vJuX1GVYxVhPiCC3xqPPvA7qQEmeEjlSmDJ69+kYMTWCtWYKcd7PVjqjCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=k4bGtHj/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57RGo2A5008283
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 04:51:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Jx+gQH4DjWBB2/iazSCQmloXHWcepkEB1b0fEXviJpw=; b=k4bGtHj/gKo8gjmQ
	A9eJvxG33infZlCbybUvdrkUHfTeucuGnhBKjiQxy7fRgFtO9KCY7utD1yQ+JdQ2
	a0Qi0JIaofhGapQPGrmZfhuRFSKuIh3cJKwOLgqpYhQaHU9VUpvmDaIkIMTLyVdW
	9RD28ON52PiubJqyM+RayTbLb9sbEdjHsBQspPQ0dTA18tI9tS2C6j4TV/LY9h/6
	heFCPQTDy6mWNg+udOCIy9Ft/5X/MIECfp3m64Eh6NOVStMiK5AYBLGuusENe/2p
	kQA7JXDo2AWC8YWA0x8nNKMUnqRVGShTJhyNHZ+MKYUDYnDvdP8tPmwpnorpubZc
	gwzNNw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48sh8an6kf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 04:51:15 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-325b2959349so149030a91.0
        for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 21:51:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756356674; x=1756961474;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Jx+gQH4DjWBB2/iazSCQmloXHWcepkEB1b0fEXviJpw=;
        b=Wz5KMokh1kGUcB+nBAwn6LWL/0HlVbwr9MNZ//OW817XF9u02IDTR0F77k/etrYw9B
         II2NpHqd2WxZS5UD0F8yz9LkaxelgCzl34zTmVNOVdFRQYzvFhSbr1Nd+go0cDw5P3Gv
         R2hPSLEo2KTihMiJc7tpeQkJoF1e9WFdnzbsxfT/OKrwPXsEtNcq182wsl10gj3sVWKh
         NgZZXPi2kaXFgka6132LU+yaOPX7gfwDgfv2oK2d4ITNGRxmELsT4i35eEGq9zUW9g+A
         8pT8n0BQqgV4NjfX08qNNGxXQaTXy3PISPIJmZmrgXVg1+9FfwbqP2TffJwGnRfAO32V
         /tqg==
X-Forwarded-Encrypted: i=1; AJvYcCXXTYKs9BDNRRhpa9RhQRwzynWPa6qFR3NXRsL6DwTdl5re1QONO58GjbfETrLMhzRzKQYgV1h4chA9@vger.kernel.org
X-Gm-Message-State: AOJu0YyJLq1blheEd1e2pwWtDhZIwb7gE8+bYcczfL9zm0fpOPTJWpMv
	YpqWxA/wDSwCJEgu/m1+QQ0m8r4mSFYpNNjOW8+AMzt5wileGIkqNAerWqfq+n57/V0IMYHa0og
	k2ZqoW3xyQW5U1XEsLLLh74l6nIuNtA3EPEM8W47yHf/UDT37nnp0Nk1sBnwoYIWg
X-Gm-Gg: ASbGnctPPWycOPsSFwnxVHUU4SMu/aH7K2KUKCobY8aKyb6swL5Ewzq2RLCg3cXr9AU
	q9zzkTAxgdGno7vm1IuVgOZxKS2ekDUuAmFARxZt4ay6bLn2WDNPo3jvbf1mIMBNoHuy1lU7d99
	YHDfJj2m4cW8RHoW03vh0hZdCLVekT40CVq7OdDCOl5Syr8JqRvYg5282dbOBVd4pGeCRR+TtLP
	1jBH0rF4SObiHjAEHoC3dla0I0Pjm9Laz3/9CxQMPphK8rvQIkYcz+Z04hK2EadixmzDEgMXkaI
	FiwkEeSzgb8Dhd+E9k9jtH3JN7Ub40Enp3UEJBcGt1BBxoKW1skyQMYy+KuvzAO0qD2gPHXTXvZ
	LtUc9nRAZRyVk2pPpse7BbUECXkYgyA==
X-Received: by 2002:a17:902:e5c7:b0:248:dfe0:2bac with SMTP id d9443c01a7336-248dfe02faamr4013885ad.8.1756356674466;
        Wed, 27 Aug 2025 21:51:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGmRbZMzQhw30/ipLkmYDVQtFMWzPa3KvkwGn6LZpn9/xGeveJfUognFXSqr0kP7nvEeevGgA==
X-Received: by 2002:a17:902:e5c7:b0:248:dfe0:2bac with SMTP id d9443c01a7336-248dfe02faamr4013685ad.8.1756356673983;
        Wed, 27 Aug 2025 21:51:13 -0700 (PDT)
Received: from [10.133.33.166] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-248e3e0b73csm2558005ad.132.2025.08.27.21.51.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Aug 2025 21:51:13 -0700 (PDT)
Message-ID: <8918feef-219e-4e69-8901-367189f5066d@oss.qualcomm.com>
Date: Thu, 28 Aug 2025 12:51:03 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 01/14] dt-bindings: display/msm: dp-controller: Add
 sm6150
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, fange.zhang@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, quic_lliu6@quicinc.com
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-1-a43bd25ec39c@oss.qualcomm.com>
 <75ra2ofecqu6tid6kr4hnyuztpl6jjaq2ksyquafyajhq2sa4d@4tkggrdqky7y>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <75ra2ofecqu6tid6kr4hnyuztpl6jjaq2ksyquafyajhq2sa4d@4tkggrdqky7y>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=cLDgskeN c=1 sm=1 tr=0 ts=68afe043 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=RRKZIDRkA7xEvhLoEfwA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI2MDE1MyBTYWx0ZWRfX3eJlPeq2oLA1
 trl4Ra6Dwd87G7RvyPcqUyPKd57OneTwgyOco9nXpUdm+Kchqb4LNVIyWdoHXkxE9yTKLDC4H9K
 rI8nt+GS5M0eopIMQ94CJHVE7PulJQ9Dzf3J1EcmRTmOi9aMP19VZOsTAAxZB0A9T91V2EPPvDt
 a/O5jddRqUCJJOkIb5u8tFUL04/kcIoPNEQLDhAHE7ndA4W2qsYEU/CA/xKYZesoVOd6OLMkpv9
 wI952s/npoorgERSpsxGRridOCFDe4QmvD9R9WHKXcKZeUlgYnOseaLhIugx3oGAgFct0HKDCeO
 YqEna9XZ4NsCi8mIH8WnEkgKT9VYwM9x6AOXqYhe1bfXF5LpYfff4lBoicqRh2w/vktKv2s8Ho6
 LEAn2y0I
X-Proofpoint-GUID: CEjVNdjXEkJ44m6m9hqGIVPivrxTRXJ7
X-Proofpoint-ORIG-GUID: CEjVNdjXEkJ44m6m9hqGIVPivrxTRXJ7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-28_01,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 malwarescore=0 spamscore=0 adultscore=0
 impostorscore=0 suspectscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508260153


On 8/20/2025 6:18 PM, Dmitry Baryshkov wrote:
> On Wed, Aug 20, 2025 at 05:34:43PM +0800, Xiangxu Yin wrote:
>> Add DisplayPort controller for Qualcomm SM6150 SoC.
>> While SM6150 currently shares the same configuration as SC7180,
>> its hardware capabilities differ. Explicitly listing it ensures clarity
>> and avoids potential issues if SC7180 support evolves in the future.
> I assume, it has no MST support. Am I right?


From sm6150 ipcat, I found MST-related registers and pixel1 clk definition.

According to the hardware spec, MST is supported, but due to limitations in clock and pipe resources, 

the maximum concurrency capability is restricted to 1920x1200@60 + 1280x720@60.


>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>> ---
>>  Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
>> index 9923b065323bbab99de5079b674a0317f3074373..996d0132e084d401db85014a1a4e445d00d62ed8 100644
>> --- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
>> +++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
>> @@ -27,6 +27,7 @@ properties:
>>            - qcom,sc8280xp-dp
>>            - qcom,sc8280xp-edp
>>            - qcom,sdm845-dp
>> +          - qcom,sm6150-dp
>>            - qcom,sm8350-dp
>>            - qcom,sm8650-dp
>>        - items:
>>
>> -- 
>> 2.34.1
>>

