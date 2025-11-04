Return-Path: <devicetree+bounces-234603-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 61DA7C2F2D2
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 04:35:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B2BA2189CE4A
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 03:35:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C64B29A300;
	Tue,  4 Nov 2025 03:35:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XVIgJX9r";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="eox0Vjed"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98BBB289358
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 03:35:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762227312; cv=none; b=Qg9QrjxHJXEMWROETeE1QJF6F7p/0LsKJ8fvqYh+bNFKYTc8+Pb20c/s8Swi8cl1ADukQZ7yR5Suw3Yjxdfd3wL87kFzGPvkcMjoVblrsc1oS50/uiKMZlwrQVmb3FuKiCant36h5Jr3pCU03EqW3NXrq+75pAenv6maBACNpmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762227312; c=relaxed/simple;
	bh=t601eelFuhoshQ6UhK8FXumC5nM+7Pd1jlLamcO04w4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=k058DD8kfLX72b4DiEuuTa4YVVizLIDZmcnRcaceCZLcFrHR5/O3AnY8FzQsjxQm1NXKBrITahGVPkcYmYSLXuiN0lwm0qzyH3vKI9aDlGxH5inzy4U5GYuF4IHUPhJfoy+gXSdugGlAJRt8my1lbx++6f5BSm27XY9ju2kLhcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XVIgJX9r; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=eox0Vjed; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A43P6TE905295
	for <devicetree@vger.kernel.org>; Tue, 4 Nov 2025 03:35:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8t0XF1cncrMQz+L3qdd7BN2KhVFZQpN3RctAGGxSyNw=; b=XVIgJX9rvYhblKcN
	3zgiElpZZ3TIYZTbMXRXgyJ84sYf5LoF/Yvar579lS0fxJa/TNEzoSLyog0DWrsT
	y51f10Mn1qVkRJY50Qb9zJIzpQ9KVZ7FAYHMJuzQCHj+/ujTOp6N+EqBnS8oGVWb
	sMvdWJTAaN7ejy93LQz8IQ91f02ZBRAj7HXkNCTnO1lVZgEoSnD09nmEv4rHbc7s
	A9jHfoUz6mwpRI14CSUO5IIBV6gNSVvktreBG6XdpEZ8fGsMO7s6UgVq5cQn8EQx
	jWpcDMgXLH3zmsc+c+f/XEH7XzZQPRXtZVbtSEK07XsZZT88J7ch47epmJsWh6ML
	UI2QxQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a79jjr0vq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 03:35:09 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2950b8e12b8so13595185ad.0
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 19:35:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762227304; x=1762832104; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8t0XF1cncrMQz+L3qdd7BN2KhVFZQpN3RctAGGxSyNw=;
        b=eox0VjedCqvYXPB0FbjX3wOpW9Gl1SRASAkDaAOrTH9vLaTCrwLe24TTKh0/40vaJj
         ujUaRaDyNoS062NUTgyXa6YpIRjqDvSyYjPSaIu7UkwsDYn8bEQJqs0d0Sd5slzF1niO
         A9T39dSxcbhP5m+qB/SWoa4OHCj+Z3EIX9t+mpZaxRZ2ff0yLpI3bPdQaF+Rqde9athP
         lOZPhJ8FJKRtKBn90YOpV9rERBd114oLvtgxCmbL03+Z6Cs5lv1atSBDlfigl1uiw78K
         YRq71QNVTG/4u4X1eTWVtYdAzEcHiFevjWt1Yf6IMEKEDIDZSdcz/37iHtiBFiKjlfzd
         4srQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762227304; x=1762832104;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8t0XF1cncrMQz+L3qdd7BN2KhVFZQpN3RctAGGxSyNw=;
        b=iTPDIIcKQWUx3hulBajjCZ/44GFoOJLM0NrkWURjeKzrYN1hJ+w6Pa1YPeiRTa4Wey
         WGlEP89paOywceU8RN00Wbfg3QLkOavwz6OOWlq1g5AdMpfsJV8GBf0iOHK6wznx5ktM
         VMLq1uacvXjYip123Uo8XUiIua4R30F7hO+Ie0YRZm99vvBn2TW7JZPkx6GtZIyjRZIW
         Q1uBQy+IsbWSh4xdVbsH64Bbs9qIOrBYaM8uFbkhRHYDcXfKURg+Hpppgh5hmxINANZD
         qUdg2+Hq2/4Rwjo7E78vdeY97MvO02KttoWELjGOfIf958zwQEjC+t+UHn8M3iviqwql
         p4cw==
X-Forwarded-Encrypted: i=1; AJvYcCU6bIGty3dRgXHK3u8xhfOYmF6u/b5tCyYnRVrRlZRaeJOWTZUmmr7Kh9Eb8i+5c+ggxroouaLEHZ1H@vger.kernel.org
X-Gm-Message-State: AOJu0YwM7RsUVfMf9NsxbqTdue+bVq0AJtZwaNXe35XyBgiuKNkFjVrb
	il1j0q1WKcG3ayMoA68xD2in0G/EfZwBEjUMxzKJkMAf5Q3pNs966IiayrcfsAoFm4QUIV1QWm5
	rhahUvWnFecbGs5q2+cmQOVfL76X95HpDJKUVXkfhtuexSSg1RTimeZL/7eZkflNy
X-Gm-Gg: ASbGncusdfNvVE1qX7zwnzWL8I3FzRzRP/LlK/la01sJuWJ69KWYa9D4J9DyW8XlCDU
	mShGn8QdvUd2Edl9zZ5fpOVyVx2EH8KuItwZcrWHuTj0hVsRVkk3ANKH/HAJnZSeBarPVjeY0ux
	rtxcQzrhe7wzBgTzNLTy5N5j9rt0kSo1nScVcGTVJxDaHA045htgC73YvCqiDvFyWTnQ4NC2xKf
	zasz3xZAkjLCO1TgLis4AFMPO8qkaeBGlwjm5JSlw4KTcbVlvZRvtpKFkD1MOIvt9tQgqR1/2Qw
	Dpr0T2yVsQoAfgvpmkgGhe0zVxhbQWlwow6j8FuQ0XuHj/+V1YtnmqTbrgaDEf61JnPWnc9TSXj
	hHR9ZxC3exypR3z0FZMG2CO/8sb40Tsmyi+Gj0zrdxbncIgP0TKBQKmFj7Ua7qyU+1A==
X-Received: by 2002:a17:902:e5d2:b0:277:c230:bfca with SMTP id d9443c01a7336-2951a3b6656mr105514115ad.4.1762227303954;
        Mon, 03 Nov 2025 19:35:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHPCTZexD+QXqfxpLAdQ9PN7TgGgbumgKenU9BA4EepJgR6Oo0ZpARKrQ1dKow8iyI3o7tD1A==
X-Received: by 2002:a17:902:e5d2:b0:277:c230:bfca with SMTP id d9443c01a7336-2951a3b6656mr105513895ad.4.1762227303459;
        Mon, 03 Nov 2025 19:35:03 -0800 (PST)
Received: from [10.133.33.149] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2960199c338sm8022115ad.46.2025.11.03.19.34.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Nov 2025 19:35:02 -0800 (PST)
Message-ID: <bb3fd5f0-9797-48e3-b54e-fb2ac2c3867a@oss.qualcomm.com>
Date: Tue, 4 Nov 2025 11:34:58 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: interconnect: qcom-bwmon: Document Kaanapali
 BWMONs
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, Amir Vajid <amir.vajid@oss.qualcomm.com>
References: <20250924-knp-bwmon-v1-1-56a9cdda7d72@oss.qualcomm.com>
Content-Language: en-US
From: "Aiqun(Maria) Yu" <aiqun.yu@oss.qualcomm.com>
In-Reply-To: <20250924-knp-bwmon-v1-1-56a9cdda7d72@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: TN1CksKxZTvKp2JPnKv29T9C3cqdttB8
X-Proofpoint-ORIG-GUID: TN1CksKxZTvKp2JPnKv29T9C3cqdttB8
X-Authority-Analysis: v=2.4 cv=TuPrRTXh c=1 sm=1 tr=0 ts=6909746d cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=k-oXDJut3rjzcoNMBmMA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDAyNyBTYWx0ZWRfX258iCyqpOQlG
 XghjAhm/ydKLP9bvzx5P/488M4xuTKhjr47ljP5bUbXTbyeeFAFgsjYBbuKyWTwSUmhyBzr6Y2x
 65I0hctHeGF1zDPhsCSmiUTS/VI1jfW2U27xW6pmrU9jx9pFEfLqUjVbPCSJAoBXBy+aDw4ds++
 tgYMIHnI0h2bMi+BLL4WIPrv8YzdlnSwM1xvhWhVW7hLvoWDRNAwmRboFLQ8hAd7xZvAMiPybyt
 QDR0NldtOJtNQMuk5Z7rlfTbRMYIsRsZVkZx2SsV49tJf9vDJqiaoCPnH5fF8RdXpQsjgiDx+9q
 cN9ul8tVLsJcAM4eCDOTILj5V4qp2fjDHh0j+V7ODPuXxHgZ+LzpsHhOMNjLUEAZDBkIePNdCTT
 BUGNmIlEM7fZ2jMxlvbLehkRjqKoEg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_06,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 priorityscore=1501 phishscore=0 spamscore=0
 clxscore=1015 malwarescore=0 impostorscore=0 lowpriorityscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511040027

On 9/25/2025 7:25 AM, Jingyi Wang wrote:
> From: Amir Vajid <amir.vajid@oss.qualcomm.com>
> 
> Document the Kaanapali BWMONs, which have one instance per
> cluster of BWMONv4.
> 
> Signed-off-by: Amir Vajid <amir.vajid@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/interconnect/qcom,msm8998-bwmon.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/interconnect/qcom,msm8998-bwmon.yaml b/Documentation/devicetree/bindings/interconnect/qcom,msm8998-bwmon.yaml
> index 256de140c03d..0d1a268db921 100644
> --- a/Documentation/devicetree/bindings/interconnect/qcom,msm8998-bwmon.yaml
> +++ b/Documentation/devicetree/bindings/interconnect/qcom,msm8998-bwmon.yaml
> @@ -25,6 +25,7 @@ properties:
>        - const: qcom,msm8998-bwmon       # BWMON v4
>        - items:
>            - enum:
> +              - qcom,kaanapali-cpu-bwmon

It looks good to me. Glymur didn't have this functionality verified yet.
Remind for review.

>                - qcom,qcm2290-cpu-bwmon
>                - qcom,qcs615-cpu-bwmon
>                - qcom,qcs8300-cpu-bwmon
> 
> ---
> base-commit: ae2d20002576d2893ecaff25db3d7ef9190ac0b6
> change-id: 20250917-knp-bwmon-d3e2020ca6b0
> 
> Best regards,


-- 
Thx and BRs,
Aiqun(Maria) Yu

