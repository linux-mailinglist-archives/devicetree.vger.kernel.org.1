Return-Path: <devicetree+bounces-132712-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 401719F7DCD
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 16:15:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D0D0316BC80
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 15:13:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58E57225A3B;
	Thu, 19 Dec 2024 15:13:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="beiL9eXT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6AEA22579E
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 15:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734621237; cv=none; b=onHycQiS2xPb1h75PQZ6TPX/Ere9qM/8xw+0w6d7poGDMetTGm0KkBMRh+0BJ//AUxnkkAQFCstJU10w7dPg+vWLlcUsKWTPG1jg64wiMzeAR7UEhhFTS1T6WDudtfM37VLrAbsxz2QyAvyfOxQQ89ZlvIAIwVKNRklCV5Vkh24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734621237; c=relaxed/simple;
	bh=Ibr8qPMjlg3GtzyOwjhDNzKtC83QC8l0CBEiz057yes=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Y5bE/JxX2DIQx3v4dipvL/25gw5RryAP5Et1//K4RfXvJ1BhblTVYysFZAWrwUVEepmrc/bktlXHis1zkRkC5TuuNcRiYmiIoh+pAtmSNXUTpY++ORSbitznNE5hmIw1WicwktIskoruSF7oLSIiqVMs0RLeDDQFDaknaWQ8Y/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=beiL9eXT; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BJBdl6p027907
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 15:13:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ibr8qPMjlg3GtzyOwjhDNzKtC83QC8l0CBEiz057yes=; b=beiL9eXTfw8HMcrQ
	eWhphKp0AtS+bFWfg8L5ZlHvyPfqUWUqLjl8sh6IlHH904MqGIZdVvr4nm1OTkPC
	FnyDvqagcR6M3OG/YwzsGbWk7Yepu35LM7af4TG2eOI+JrrB+RsdEzyKEGmXya3J
	5ciPHdVA2IVSwlBZxRE/MGCWCrg8coHDdnh7HHT0gut3Xgjv1KmqSJD2Ge0Nfx2B
	b96JXEys8RxSYAmCdi1w9Q9Ig8R7efyG90rLwELOK9bqw9ATseH+lKc7uaWtpzVF
	Srw8mHeSH37itiUqlktqC+ZrzdMnzGmv22/lg8J3VL4VOkMSsKSvzIE4NaCToJBC
	pF+mpg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43mjterhaf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 15:13:54 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6db1009a608so1853846d6.2
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 07:13:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734621234; x=1735226034;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ibr8qPMjlg3GtzyOwjhDNzKtC83QC8l0CBEiz057yes=;
        b=VnadJc/e5DTWg2+rocqFPuZADophOT7PYZBD9ZKUQrPtWfK3LbJNyI0amH6YyRTdte
         eYSd6jua0P8CBQ5eZdgQYEwSVOqpD/gxzJFT5/PYx/PdxApKJ/AYebI8ks8YH5B1EWtN
         7ICYK5kAC2O4+HQ5y1g4/BLZsc43Wk+xgYPoHM1R0k2v4uMpq3kNyTUlhc0uWik34zUI
         vqzlQQcRAtnqsLAaMM1+/lEXHUFSE68tEI38UHl5z+yCfOUfJoa6JixPQg1X4JYuWs58
         us7whr7v5wMeDEesjksnkWxUoP432nQMOXZhIFTg3Jo1fW7ygJKEbyn5d6YyX+WvVVQ+
         kDPA==
X-Forwarded-Encrypted: i=1; AJvYcCWWBVvBdzFL0KTuGzHnDajPtq3LQjknCbISqyHUfRDeKTpN/BwNSe+YVckvwkG7efIMYlDb5cdLNxbu@vger.kernel.org
X-Gm-Message-State: AOJu0YxEAZfxe7T/98wfdj9z/84I6ChUb1HW3p3VRlci2vef3egPUJq1
	+htBPYI2rU4GHYy2h5CmFvZdS46+i2Njwaspb6SYTHATn8c9EjT6UzOOVu1hzMdpLrxZ1z7FnxO
	FO5GI60BFGMunOljdS+FPl1n5hjF5daGbjudeKv++RvKFO1ZIeKQZjLFL0J6/
X-Gm-Gg: ASbGncuvh9I4LObYCgBp53DRsAvgOA4TaFBsk77CZ9/yYbnOdktvlvCljpa1eUaG84q
	lUUFE0z+iyqNEh/mRsUKCMSZb0ffkBYHt+boZIeZ52vUKJkyHtnEzQbCtpFzuuplwRV45TXGJ5Z
	Pin5DUEFRQDCWWgnueCm2bfBnEowGzC5heehvQ92ozXvrvDxnnBMpjluNrUMhW2C7rnBNI8qJ7F
	efTtmz6lsNquaw5kfWply4C1jb+XyDKL8E0paiwnioz09M2QvxIBUInx7c3hSXXH2KShcHoTmrH
	VAMBSQ4gCO6832BxGj2y01vfiuKD5dZoU4o=
X-Received: by 2002:a05:620a:4141:b0:7af:cac7:5017 with SMTP id af79cd13be357-7b86372323fmr383527585a.4.1734621233643;
        Thu, 19 Dec 2024 07:13:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEfu6esVWQ0ConGDER8nonSqLdGD0StFPOhuICpqOzvsERQj+euyE04T5hXTE0xGSRRS+HadA==
X-Received: by 2002:a05:620a:4141:b0:7af:cac7:5017 with SMTP id af79cd13be357-7b86372323fmr383525285a.4.1734621233276;
        Thu, 19 Dec 2024 07:13:53 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f080c1asm73554866b.205.2024.12.19.07.13.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Dec 2024 07:13:52 -0800 (PST)
Message-ID: <37e5ecd7-a1ed-4aca-9ad9-7d601a0f31c5@oss.qualcomm.com>
Date: Thu, 19 Dec 2024 16:13:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: x1e80100-lenovo-yoga-slim7x: Add lid
 switch
To: Anthony Ruhier <aruhier@mailbox.org>,
        Maya Matuszczyk <maccraft123mc@gmail.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <cae52ea6-e86a-4b86-af06-01a8a93d2ca0@mailbox.org>
 <CAO_MupKCUk-w4=-0yDWo4m9XC1-iEuF6YHYnYw4T0oF2aKFxvQ@mail.gmail.com>
 <1b163b6b-3c33-4361-94be-6b8a6d0febe8@mailbox.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <1b163b6b-3c33-4361-94be-6b8a6d0febe8@mailbox.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: bm1r9wtszzMrDexFepZYcxCLLCXzbtsU
X-Proofpoint-ORIG-GUID: bm1r9wtszzMrDexFepZYcxCLLCXzbtsU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 priorityscore=1501 mlxscore=0 suspectscore=0 bulkscore=0 adultscore=0
 impostorscore=0 spamscore=0 lowpriorityscore=0 clxscore=1015 phishscore=0
 mlxlogscore=871 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412190122

On 19.12.2024 11:34 AM, Anthony Ruhier wrote:
> Thank you Maya!
> I'm sorry, I realized that the patch format is wrong due to a misconfiguration of my mail client. Tell me if I should send a v2 of this patch fixing it.

Git throws an error here when applying, please resend

Konrad



