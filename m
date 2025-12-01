Return-Path: <devicetree+bounces-243389-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 920C8C975EA
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 13:51:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 515383457CD
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 12:50:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D78DF2550AF;
	Mon,  1 Dec 2025 12:48:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Wt1D9rQf";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VGCEeRA5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D102230BBBB
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 12:48:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764593320; cv=none; b=JhRF3WI18aQ01K0Jde5yrGausyURYCJQhQCVQbGp65LMr/IINyFloSJJvzvW931ZTbRceho/A256kaHjhlbsSBD2n9t+lljkXsBtrzzcXPX+lLfepQCb/+MfiHJyRCt3/fPpdq0tBnwdIncAvH7zOB0IhBgudVZUYJRwxnbmytQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764593320; c=relaxed/simple;
	bh=qAHaFUAElk7/jopPzD+/mdf1FarzhhYUTTKZK/63yN4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XcwMCXxVq33TbobSsU8J0/wj/FZMPgdaNNO2co4kQ4cYGzgg59sKHd1jKxhSJzAsRk6IHW3SDnV5kkzk237ZZcw4aebUXEOgO2h7J6S4FXYGrJLnMoYwSUOKSx/7thzUKwKIWllyvcOE4JNG3iNVjIMLbbTlQJ+W+zJyLS9Y4hE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Wt1D9rQf; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VGCEeRA5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B1A7iN0435733
	for <devicetree@vger.kernel.org>; Mon, 1 Dec 2025 12:48:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	31Lr3ce7GGqaTRhfeak+RVWxiplPSWjZJKKcGxNvE7A=; b=Wt1D9rQfQsZTKjyW
	xsVtXzItW2zWdLhVKwk27nRz4SmxXN1yuAomNZdLopvEQUibMspO17XKMFJurOWb
	Byh4hlsw+Z0XHXDyiCy23uFTMoMOVnhPBihGfSM7kHUDexpw+sY4JSabR9qrvXIX
	YYanXrN+KsiCeW05QkTbmML7ydBklszAE7mO6VBslxCrNO+nnGM4nvfyvkXcWzu5
	RQ1v89lKH6XXCt+j5E5jcBKZPsEePhKV8gJ83aRorcRDkR8qtnY9eXhQfguBb1D9
	WVJgt52f8bAgYHG2zntkkfRBDWqc8MgrpRojFv+YWnMlrDypYbeIbfMhvmBfuaCI
	x/dMHQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4as909rdan-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 12:48:36 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ee409f1880so7112551cf.1
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 04:48:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764593316; x=1765198116; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=31Lr3ce7GGqaTRhfeak+RVWxiplPSWjZJKKcGxNvE7A=;
        b=VGCEeRA5dOwuHsjOOV4RA/0E5Yl0e/r32PpZbVfyBhhckEajWWH1Lb0jh1gp/4bV2Q
         YOtLBMtjkjEB/iEpFmbdn4MwyZioxPxMLJipfZ90jzKbtasFCcEBs5dCUxBmZSfFhTmh
         UFtvLhIoqk2vl3OmUSKRQpyx4766weRvEYGX+P1JXFl22p4kfCqOJ5QRTbqntF0W0Bnj
         OrgP5XWfQIrwyEfKRnTNGHq5nOkiwNH+pjXlz2YDYN8y+1NHIwya0PQAcv3nN20+XXzq
         VhinkCPo1//SRK2hFOmU/EMwfKuOY/7kQ0mpkrKj5FJN2R9lN3z1OYPdUcl4iiqfUPcM
         H9Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764593316; x=1765198116;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=31Lr3ce7GGqaTRhfeak+RVWxiplPSWjZJKKcGxNvE7A=;
        b=aXf5pmFjz3apUEyA5OBJD8D++SwIpoIBmC7M1XzhyWxnr4dmw+JUplGK8mYt6Smece
         pKugvHnnhC6mycKYR+js0DWlqS2uyUOqID2tVgShTKLfYnBfZ6z7Jqc4O8t9tlnvHXAC
         8Lo1gizX6VzmfnhQxqpRHzDHe6US49CqYrI9H+Hi9LQ8026JpRe18tQfoZ5/NNbTCBqd
         kpvNIE1/C6T0UpgmehAWy/kj5N9mvfyo7RF1+0E4GlzHdM65VEmliBxk5fQg55LU/TGk
         I0YN2tHTrZ9jzsGmQcfX0OR4uVLKHvt84NPaJc25VqReQv5igB5p1rl3EQmENoHOpSUT
         emTw==
X-Forwarded-Encrypted: i=1; AJvYcCWk9wy2jlmj1EspZ+J39p4LN6shidOnnwvhT17llx3S50mtwXfIb50AXrmuwI8o/OZt24ijSYM/N5RX@vger.kernel.org
X-Gm-Message-State: AOJu0YyvJS/EgpClous2uyfYXRjWOhSrl8vGh0EDlNSfVDyh5pkbqDnH
	PDrHZ9r93pIdgAmwhiEL3xuZKuTYArSLGbVlfXZL7R/x/D3r6O507Li9BwRitAMCX9F4xUQOebr
	BWUYbXrbyayblYHfuBC4bmtKGRpmiAixpX6xOKEY2KmPCLx/HKeUfIS2uShXbwe9C
X-Gm-Gg: ASbGnctCjDVc8lNxdb9XV1gs5BfDa165iOLwVtmvpjaBEelGb7/bOfQaWhPepIrx9od
	EID8HD0ToLuv4+omp+vLbA4uM5JPCCUSBVWyQodQ8pg6tbi9bhRfUin38vUBqtyMFBl0zteImHH
	l9GDc4BlDRde/Wo7EdIDKLnZulYSgPHh+EoAF5t8/2CyJL+2NyL3/u+maAJUFMD9wao5ksmNWtQ
	cwqLP0B3Is9DdFfFoSSpowvD/L8FJDZGMzEAC8Vyi9SUAKJus4vx7XeObMedpn4A+x8+UASWVGF
	bcwc0fPV8rLW9KzAsXZNBh212HiMF1h089OmbQnFLPlsMcZtnbLyOT9M5z6H6XIwFS4hH+AE+oS
	g1dD3VOfoA1ytEB3QGP5R5xLUpY60GXdBBU/myqYHL/WxSoC29F+q5XWnsxEva/DlDlI=
X-Received: by 2002:a05:622a:1184:b0:4ed:afb4:5e30 with SMTP id d75a77b69052e-4ee5895624cmr419914351cf.11.1764593316154;
        Mon, 01 Dec 2025 04:48:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEm7ZEX2gV3I745dgmxGg4UIToSiI/z143Wd93/fuoI9uQxffD0Ca16doOxKPxwTjvkLFo0ag==
X-Received: by 2002:a05:622a:1184:b0:4ed:afb4:5e30 with SMTP id d75a77b69052e-4ee5895624cmr419914051cf.11.1764593315786;
        Mon, 01 Dec 2025 04:48:35 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b76f59a695esm1190842866b.33.2025.12.01.04.48.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Dec 2025 04:48:35 -0800 (PST)
Message-ID: <3fcfc5b8-7509-4e4c-a1cd-e973d7e1d091@oss.qualcomm.com>
Date: Mon, 1 Dec 2025 13:48:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sdm845-oneplus: labibb is not used on
 OnePlus 6/6T
To: david@ixit.cz, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Casey Connolly <casey.connolly@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org
References: <20251130-oneplus-labibb-v1-1-bb3653e43120@ixit.cz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251130-oneplus-labibb-v1-1-bb3653e43120@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAxMDEwNCBTYWx0ZWRfX1VZ2Vx42C27r
 Exx8DO2SaBgh9zAcgEPt9FXK274qp7EWRkQPWTWQfqEZs/yTA7i9KRvWEAyDvabqNv+wBHQL4qy
 Lmpg6/Amb8IKnQNIapu7q/A3izhlZYXiDkSdKiQ3aENcrdEWs6dYxJgT3wWYzb/FSivhBeneRIv
 fZvouNy1aZIqtYEluSk/wXeuOKvdhXopVWNAdTthQwsdwd3cnFktgkyTlGQxMJ4aBUNpmLIb+TT
 rqe0SXNwOCxnbwQJ0cy72953eDoJaRoxf8z1Wff2utul2z0+S83sV8TECAYcfdHRCJskXRtAAcE
 SCVI0M52nHZTiM7+nqbcP41pl1pCcoa1yTzEluzp5sRH4WWu/OigeNnKeL52A9aUg3x0W5hQx8M
 46XCijS1XhbVOC8yleEil4Hskp4dWw==
X-Authority-Analysis: v=2.4 cv=XJQ9iAhE c=1 sm=1 tr=0 ts=692d8ea4 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=e__-_AqODaZNEJG0dXkA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: d2BK3L_kUvHEfCCSsP2jECaeLXUVsPaP
X-Proofpoint-GUID: d2BK3L_kUvHEfCCSsP2jECaeLXUVsPaP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_08,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 priorityscore=1501 spamscore=0 clxscore=1015
 phishscore=0 suspectscore=0 adultscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512010104

On 11/30/25 1:08 AM, David Heidelberg via B4 Relay wrote:
> From: David Heidelberg <david@ixit.cz>
> 
> The lab and ibb regulators aren't used here. Disable them.
> 
> Removes following warnings:
> qcom-lab-ibb-regulator c440000.spmi:pmic@3:labibb: Failed to create device link (0x180) with supplier c440000.spmi for /soc@0/spmi@c440000/pmic@3/labibb/lab
> qcom-lab-ibb-regulator c440000.spmi:pmic@3:labibb: Failed to create device link (0x180) with supplier c440000.spmi for /soc@0/spmi@c440000/pmic@3/labibb/ibb

These are only vaguely related, as there's nothing to be wary about that's
specific to these devices - it's just devlink being grumpy

> Fixes: 288ef8a42612 ("arm64: dts: sdm845: add oneplus6/6t devices")
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
> I assume this is right approach, as OLEDs on both devices are driven by
> different regulators.
> 
> Question is, if should be labibb nodes enabled by default?

They're onboard. I'd rather keep them predictably parked than left in
whatever (potentially ON) state the bootloader may leave them at

Konrad

