Return-Path: <devicetree+bounces-132872-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 844E49F860C
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 21:38:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D72921892E82
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 20:38:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C82001BD9E5;
	Thu, 19 Dec 2024 20:37:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Jyvo7OAr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52A791B6CEC
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 20:37:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734640668; cv=none; b=RprFUKO9TkoUqUt4IFoCIJrqx/ciNyb9QSpQprQ55MACOpJxKwWIpJucbKDXTk2l4f1xuxh+c6+y4/Eqc+JHmmyHrW6XV2u7vtaKmawuDeBUQdLMw2z8ylji8HMNcuzvP1Tsnv1/1NpWWUy1j2L3qV7+4DWXoB4hXbt9iXaezHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734640668; c=relaxed/simple;
	bh=hHd9PbPfS3ni7tGULC2ouoqqu6qX1CfaGkpYQHYA5+4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tGmSxqPDg3TZEAHiILdaU1XwDbfSaruLCWTmhMMRoZVRF9bgUocb08LBWWN9WAgp4ZtcZ7ooHgFvmSQBTVT2YuqoR6tuvxn6q3Swxmts0pJCgJ8Am0lTLNw+Q7Adswuj/+6/BwJh9yi0YILoaAqs9XdI/5Fv+pF1PABNOGR+j3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Jyvo7OAr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BJF4aQH028900
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 20:37:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ezdn7/t2mAMCrk94+KdhwAqMUM9TyhNKtYrJbo04zGo=; b=Jyvo7OArCf9R55OW
	VAbtzNrn9fFGVbaN8ywtQRcyNG8box+z+LzEk/J0nvJK3eQuB+YoNQ2GJkTMdUQ7
	UN9dMJsl9ou+tltiJVfNpS87HfRiHVJ7vaffITfdigrBkoHZCzX37Xx1nqN9QeUt
	ikZxIoM86Z5PPYnV0JY/g0BWQ2+/dnHyzm4I6/7Psy3PLESQUslSkZs04EjZ6wU7
	ZLZZJDNQuVZLk9cO7Yth/m66ZrnJcqxXmqwM2JySk5HrtIjVXNZ7Epa4cnQqvYw3
	wnNxwr/pGWYzFeuVCpdzxRBPQpsog/DHUwyEOAHypkXNgi49zpdkHYOhHJZoVpT+
	2DCeIw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43mntf0tb5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 20:37:46 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7b6f28dc247so18468085a.3
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 12:37:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734640665; x=1735245465;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ezdn7/t2mAMCrk94+KdhwAqMUM9TyhNKtYrJbo04zGo=;
        b=ca/TAhxD2WbiDLKaNLlZtr/Hm3I/s6YlQ6GHzXMBLhY3xyUucGWxqNqkQvfdmZpWFX
         n9qHqJMVWNH9xMg5zVT+5MxuWWQCxptV8UzML/zs4igl5Vmoj2dF91s/GjTz/rNudhnm
         qn9sJUpQYPv6lWp5hfEI/WJ9tskFOEbKHXfQmXhMYOMgPnOx8sUCNoU1ERbkfmcALABC
         oUpmYmIuwQQJcNgtBarD5U7NLh6QcZkXQwHAdCTbH8wx+HeLuP8iiVY/1M3dYOSlK4k3
         sQEbsiCeFD9DIlg1txydwYq1u3yf7aalyTFYPHu262fCtafk1KFevKFINP7Ad0wSMyHR
         rqWQ==
X-Forwarded-Encrypted: i=1; AJvYcCXf/ODXcTdwDfU/iyHY17xka3pa8DHC9AGQsjUUrOFnhW3Ur3L5qPZnAPaMZGLM9TZBhy2IVq3oa+mO@vger.kernel.org
X-Gm-Message-State: AOJu0YzL4CH82GR6+MEGqPD/mA1O7bKCyK70nyZK9bt4KRAmny46I1C0
	vn+BfoVgeWZAEPIRvTLR2v+UkdRhm55c4XOZUAYutUrut1/D7G3Zzau9pQp1wd8i0as3o4F3PcU
	OQyUg1wvbAeINItRT9l0TIjLnYD72kC0bvTc9n3XG6qsrSBNu1ZmY6xhiAr38
X-Gm-Gg: ASbGnctljG3HH75Z9ibD0zxP6R6TKfjf27O5by2ra3iN4Pww5n6nVeh41EK3gM3Lf9K
	7ZnBsD/bXfZrDlJ8twEA02MXJMZ7R3kNpQVFoH4A/IvEq7hnBn1hFPmk7rhtTKgWV+vi6CqINOM
	twQioyr6jkyXOB8KDlH4SO66XdQeqmZWBrpAa3ggxC0hZiZAh05oz8Y+IWlJSsYXIAkCxXEEqPc
	ZQhaAegIxfcydU5MVsHNeBL/jHPxKPpUToyrWR0Ym8/9D3PZLYWbE8DQhTg0AeQIdB2JwlNxEm/
	O9UH8rguZnHZt1rnhDx5ogRfdgKtgT4xXls=
X-Received: by 2002:a05:620a:880a:b0:7b6:c3ad:6cc4 with SMTP id af79cd13be357-7b9ba735bb1mr17229485a.5.1734640665389;
        Thu, 19 Dec 2024 12:37:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGkNMrnNtwUsPN1pZdefExuscBv5TH9Ehpsom+xgPadLLae8lTb3T5vdPsX99u/Q62WI8YYpg==
X-Received: by 2002:a05:620a:880a:b0:7b6:c3ad:6cc4 with SMTP id af79cd13be357-7b9ba735bb1mr17227985a.5.1734640665059;
        Thu, 19 Dec 2024 12:37:45 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f06f942sm100571166b.200.2024.12.19.12.37.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Dec 2024 12:37:44 -0800 (PST)
Message-ID: <9d41e986-9b6f-4858-9051-ec1d23317b04@oss.qualcomm.com>
Date: Thu, 19 Dec 2024 21:37:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 3/3] arm64: dts: qcom: x1e80100-vivobook-s15: Add
 bluetooth
To: maud_spierings@hotmail.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Johan Hovold <johan@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
References: <20241204-asus_qcom_display-v6-0-91079cd8234e@hotmail.com>
 <20241204-asus_qcom_display-v6-3-91079cd8234e@hotmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241204-asus_qcom_display-v6-3-91079cd8234e@hotmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: shgjdvkZBB5MKhkKPPXVspJsxaBusFVG
X-Proofpoint-ORIG-GUID: shgjdvkZBB5MKhkKPPXVspJsxaBusFVG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 suspectscore=0
 impostorscore=0 adultscore=0 priorityscore=1501 bulkscore=0
 lowpriorityscore=0 clxscore=1015 mlxscore=0 malwarescore=0 mlxlogscore=889
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412190163

On 4.12.2024 1:26 PM, Maud Spierings via B4 Relay wrote:
> From: Maud Spierings <maud_spierings@hotmail.com>
> 
> Add bluetooth for the asus vivobook s15
> Describe wlan configuration
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Maud Spierings <maud_spierings@hotmail.com>
> ---

Acked-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

