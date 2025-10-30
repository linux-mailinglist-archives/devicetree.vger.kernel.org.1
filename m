Return-Path: <devicetree+bounces-233149-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B6CC1F76E
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 11:10:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6D224401E09
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 10:10:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 233D734E74C;
	Thu, 30 Oct 2025 10:10:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gLnFPXdS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IYoZ1UPv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89C8C12CDBE
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 10:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761819037; cv=none; b=MqZaMKVCexNineglibKriKjC63abwJKdjBIGPcpGEw7Jlx5jnHZr3WspuyYTxLQWXMrtz0TZ1AYLgjlK8oVBlL76BlqbJUkGc4Hfp94u1i3uKcH87dO3qBT33/P+wkLUehtrEKaiFNCfR9d7LOtYLH0HYuJ2hwrmjZV/vqgCLUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761819037; c=relaxed/simple;
	bh=gjnSCp4ErGtgQj+kyj3ZUfn8tTM3HyOSMBbh/HFVyZA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZWZdEOQo7UtQPBFoE1EycrQGT80wa52Zn7tjNUhudoSiP5MA66g+68uaYMEXTe6iAuV4yE8pKXJrkPUdRX9XzmLNiD6uN3cJIs2+FgZIVNDRO9XVsJZO0Gas65rSqn8UHTesvIYgZ2nt4/ztH3u5+BWOKr2VJJStSWY2604pcMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gLnFPXdS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IYoZ1UPv; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59U91bkJ811844
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 10:10:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1Tk2wViz0AltOKov0bmJb8BdIdTqWdxh4mEaQnxEC6I=; b=gLnFPXdSWwkwwiQX
	ITzByOKkfCISwdeJRVCp3CqTB6wV7P0TZ/xFIVSjGCLktLBzEbyHaLzcDB7Scw69
	I8qck80SIUpsPYw27yfeVdq1Qvjajye/r9vOIT0OOoHlkAw4eqtlk6ZILBq6orW7
	ugHFPpdjKGS7bcKm0BL28Yj7A5sOcBsyrxFjrNQae+wQxXEZxJ4mKyfrRpIC93ZS
	+pm1FgDfXCVUSXH+z6iOeuM99Or9y2uHXZq5FiBsYl+OlIkS3FNOV0NghRAIWH2J
	XgjmE1MZD5EdcGh8EhYWQ35rbCSy+RP0K2ZWiQqzhVp0jXwFNThY2Dcf6nMidcBz
	NFAfWQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a3mvgb50r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 10:10:34 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ecee4fdb80so780751cf.2
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 03:10:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761819034; x=1762423834; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1Tk2wViz0AltOKov0bmJb8BdIdTqWdxh4mEaQnxEC6I=;
        b=IYoZ1UPvcPSIK0l5xFy1EldVvi3Cb+8CCr42sav769vB2aFegLRavEROCxfxOZymQL
         2c5YqX3THD+CSBtxqxfPWZCNnhQbLFzJ6O6csPDzPdpFIo1TfeQ/b0qeHAj4tnz3SWk9
         Umamto7RlheK/5NM1PfJMbX5p8/8Vn9LLxoLZNSfoIYg4MnoxHmRB7yIR3EQBsmOq0Rk
         g55uZ82tan6ynh4DpFR1NYjv+EHAhZtwab7fVqIMpguS2AaGOCmovIGVdHqYU2b+0U7g
         vfEGIiUGg94xV9+7p0ZMSqf63LQuRdhekgw/fCzYMTcvHYkQDwf+WxcQuw6X8pdcevr6
         XRyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761819034; x=1762423834;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1Tk2wViz0AltOKov0bmJb8BdIdTqWdxh4mEaQnxEC6I=;
        b=qU3J2hQwtuNlCbJxMoRvQiOkzP4YUJZlggaM/KUckziKuxTtWqoOYAnu6y+69eWGYK
         mVaK7evmZ5mURgMW7JPwFc0xxEi3jKJ7ja+siBubiALbJJBg7VpiLCLR/XOfA15wVDDH
         CRzjWL5AZo5uqPG94wqn+lg8K0LsB1eD5KkNFStIf60loX4voDAQ5WmocYfFNrsFOaww
         r3n7Ft7DXHDDLZgbYGPlNiiY+8H7soWbnnPxEd5SdvGV5KnGd+X3tqw4dfvf8zpc15D/
         f6u9bfl+iq0WHS3aqflwr4OGDZ9PNTo+7dCfdIjM8GhCFO/C4bxSABuFv+YaBOCeOFdN
         69KA==
X-Forwarded-Encrypted: i=1; AJvYcCVDibVdCPdxXnsrc971HllWA/o4cqhTaPgBDcQg7t1T3ltd2yF5viw0gYRA/8tHrp3a6kbjTBnykMnE@vger.kernel.org
X-Gm-Message-State: AOJu0YzfA5bA52A5tF+vGrvcb3H+viVxwfuakt3lxkxhsu+DMr6kmxZ8
	0aiT7840tpBxsWCn/0hRlAOwUApyHjfKUKQyo7YSjTquq696V0le2s/4B/OHUIkyZf422kt8M0I
	mtXknPfmtNhqsAqDH4d2FAAMzK4mDYAPslMIF3HurkHduPghnY3DCTa3l9mh7F/t0
X-Gm-Gg: ASbGncv0G7u/9zd5iei0UqzE5jv49mlxmuLg0HhZmBD9aFtyz2t8Zr4k+D4FlpUcuAI
	3xxfPt8VurNCm+pZQm1RxTBHSic0/Z/Es/woPTEre/xSqRSo2iejTs5pCOVieqboJqSOOWq9PJr
	DFHQTmyTTMxdxAxmWtK/iyI8+u+/tL6huw700oY5YbvYo7GrZcuRZikpF0avBJXfMb8NIEA+ccH
	koZE0Mmv4rudmyKU8suIacG05jLa44AZo71shT5cXL1N5U/BkTDi3Y/aJrfM/hVjBgz3bb0oewm
	JLjF8mqrc1i4dl0E/32beJ+veuDxtQhpIEcQz5ZW39D2GprRztNEPnjbIkpJOEd8/6+Gcp+cyWe
	e9DG7RpUL/LiZH5YqmbMjKX/OvbVKLH+JqcmbrUSI7iB55Nn51/bPyRwh
X-Received: by 2002:a05:622a:155:b0:4ec:f7e4:8a0e with SMTP id d75a77b69052e-4ed15c06266mr55893351cf.9.1761819033575;
        Thu, 30 Oct 2025 03:10:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IELF81IfIckZ963pva8kKMpBiIb1HN/EuzgABEmtwD7DsEXTHRgYJQc5q52Dl9jk2M9977eNw==
X-Received: by 2002:a05:622a:155:b0:4ec:f7e4:8a0e with SMTP id d75a77b69052e-4ed15c06266mr55893041cf.9.1761819033073;
        Thu, 30 Oct 2025 03:10:33 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64061a5b7b5sm1874821a12.1.2025.10.30.03.10.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Oct 2025 03:10:32 -0700 (PDT)
Message-ID: <6d6f3981-af6b-4fb6-a379-dc72d08363d7@oss.qualcomm.com>
Date: Thu, 30 Oct 2025 11:10:30 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: hamoa-iot-evk: enable pwm rg leds
To: Tingguo Cheng <tingguoc@hu-tingguoc-lv.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Tingguo Cheng <tingguo.cheng@oss.qualcomm.com>, kernel@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>,
        Fenglin Wu <fenglin.wu@oss.qualcomm.com>
References: <y>
 <20251030-add-rgb-led-for-hamoa-iot-evk-v2-1-3b3326784d7b@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251030-add-rgb-led-for-hamoa-iot-evk-v2-1-3b3326784d7b@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMwMDA4MiBTYWx0ZWRfXzWux+EJ7ZLiA
 J8bVpPUOQ3CWgjNo1j4FBvtbCKRw0qHN1GH+NxpHQxTeR5bn9HrvBjdIDS1HsOnYotmk7T22Ub0
 c+Jgmcava0Nzwa+b09HPKVay+FPQ0Yq0E/+40ecxmrHuoHRb88Yx2S81H6rX+FfW0xr5EsB9hJj
 4T6owlVhUwwm5FnhNXBL6r204m3Lfjqh96YfQ/s7T2YQlh/zunJrxmEX69K+8XqutXKtgMLc2V7
 acM+pXfJvoGKDmJsvYEKA5DMwtMpuY6Qk3POezbXDOPKP6Jgc8dRy+LynlJ8jzTYIjrpeO++n33
 mLhdUhkWo2nLom+7n5MTn2ik7idaZ5zp54vNCOMbZz0bGDTdPRoEgErBK086UFNe9xpEG01+qnq
 fK8SsVsPUyAVD/pLskr7TiWwKeOtIA==
X-Authority-Analysis: v=2.4 cv=S8XUAYsP c=1 sm=1 tr=0 ts=6903399a cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=2cCYZ7mipiWG3OMYrP4A:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: IbcIssR7EBDB-HtOU7LL8TTw79yqNGXl
X-Proofpoint-ORIG-GUID: IbcIssR7EBDB-HtOU7LL8TTw79yqNGXl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_02,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 spamscore=0 bulkscore=0 clxscore=1015
 phishscore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2510300082

On 10/30/25 8:42 AM, 'Tingguo Cheng' via kernel wrote:
> From: Tingguo Cheng <tingguo.cheng@oss.qualcomm.com>
> 
> Add RED and GREEN LED channels for the RGB device connected to PMC8380C
> PWM-LED pins. Omit BLUE channel to match default hardware setup where
> it's tied to EDL indicator.
> 
> Signed-off-by: Tingguo Cheng <tingguo.cheng@oss.qualcomm.com>
> ---
> Changes in v2:
> - Rebased on next-20251030.
> - Remove BLUE led channel to align with the default hardware configuration.
> - Link to v1: https://lore.kernel.org/r/20251017-add-rgb-led-for-hamoa-iot-evk-v1-1-6df8c109da57@oss.qualcomm.com
> ---
>  arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
> index 36dd6599402b4650b7f8ad2c0cd22212116a25fe..ef59e5ff59f2cbe0ee60a020a5d2929c67ad511b 100644
> --- a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
> +++ b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
> @@ -5,6 +5,7 @@
>  
>  /dts-v1/;
>  
> +#include <dt-bindings/leds/common.h>
>  #include "hamoa-iot-som.dtsi"
>  
>  / {
> @@ -879,6 +880,28 @@ usb0_1p8_reg_en: usb0-1p8-reg-en-state {
>  	};
>  };
>  
> +&pm8550_pwm {
> +	status = "okay";
> +
> +	multi-led {
> +		color = <LED_COLOR_ID_RGB>;

This should be LED_COLOR_ID_MULTI (RGB suggests all three R/G/B
channels are accessible)

Please try the attached patch.

Konrad

From a13436fc3ee649b40efa8d0f21467b8534d7ebe2 Mon Sep 17 00:00:00 2001
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Date: Thu, 30 Oct 2025 11:08:44 +0100
Subject: [PATCH] leds: rgb: leds-qcom-lpg: Allow LED_COLOR_ID_MULTI

There's nothing special about RGB multi-led instances. Allow any color
combinations by simply extending the "if _RGB" checks.

Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 drivers/leds/rgb/leds-qcom-lpg.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/leds/rgb/leds-qcom-lpg.c b/drivers/leds/rgb/leds-qcom-lpg.c
index 4f2a178e3d26..c8afc68e442f 100644
--- a/drivers/leds/rgb/leds-qcom-lpg.c
+++ b/drivers/leds/rgb/leds-qcom-lpg.c
@@ -1382,7 +1382,7 @@ static int lpg_add_led(struct lpg *lpg, struct device_node *np)
 		return dev_err_probe(lpg->dev, ret,
 			      "failed to parse \"color\" of %pOF\n", np);
 
-	if (color == LED_COLOR_ID_RGB)
+	if (color == LED_COLOR_ID_RGB || color == LED_COLOR_ID_MULTI)
 		num_channels = of_get_available_child_count(np);
 	else
 		num_channels = 1;
@@ -1394,7 +1394,7 @@ static int lpg_add_led(struct lpg *lpg, struct device_node *np)
 	led->lpg = lpg;
 	led->num_channels = num_channels;
 
-	if (color == LED_COLOR_ID_RGB) {
+	if (color == LED_COLOR_ID_RGB || color == LED_COLOR_ID_MULTI) {
 		info = devm_kcalloc(lpg->dev, num_channels, sizeof(*info), GFP_KERNEL);
 		if (!info)
 			return -ENOMEM;
@@ -1454,7 +1454,7 @@ static int lpg_add_led(struct lpg *lpg, struct device_node *np)
 
 	init_data.fwnode = of_fwnode_handle(np);
 
-	if (color == LED_COLOR_ID_RGB)
+	if (color == LED_COLOR_ID_RGB || color == LED_COLOR_ID_MULTI)
 		ret = devm_led_classdev_multicolor_register_ext(lpg->dev, &led->mcdev, &init_data);
 	else
 		ret = devm_led_classdev_register_ext(lpg->dev, &led->cdev, &init_data);
-- 
2.51.2



