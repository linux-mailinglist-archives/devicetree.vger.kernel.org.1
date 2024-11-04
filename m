Return-Path: <devicetree+bounces-118747-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F229BB747
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 15:15:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 21AEA1C21E05
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 14:15:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2B812AEFE;
	Mon,  4 Nov 2024 14:15:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="U1HnT3jP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4CD1C695
	for <devicetree@vger.kernel.org>; Mon,  4 Nov 2024 14:15:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730729719; cv=none; b=ueocXzHpV5nG4HNIuqbfOF4qzKuCzPoXYO8Ocdum73hOIBIz2GddJGfxBV2LSgh9+9Mgmll9mnfcfTnScao18yiHpunwnBF9HgFnxRHkI8/YGrOloyV1riehtVOLBhVkADeeQqE9ItKL6ubeYmZhzItHQrEv7Jh/ERHsSQvhSFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730729719; c=relaxed/simple;
	bh=WmBXEupmtM8Q9AltIoqywvW+F90VNzrMzVzsJOELilY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=vAdQ6pRpTfVqAennHAqcc//WxRMmX2j6YpNjpT1AdveWhxjsyG72ADnXT9P4PN9JwHjS+1BeObqZMXeibKxA5woXWdQ7Di6KWwFjTMr7k6WFEX93Dl3G13gEhHrYNPYZUcJGMA7UXvcpMd8MzJQeDDN6YmQZe4x6iEpjlJDIHYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=U1HnT3jP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4A4BjXiu028115
	for <devicetree@vger.kernel.org>; Mon, 4 Nov 2024 14:15:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IqoIwtujkhfAAOgoHLEE0EEhIIqjSy1D+L10XQtFSJE=; b=U1HnT3jPJYbw5MKd
	xLgj6q6tl3OrWQMptHzUjv8goCH2O0MVPnrTEPnFQ2cBgp1p7ZdWDgUsdIreLBiw
	rXFoapPNKtbX45Bau3eTNT5lmVPfgZivkD8XsO6NH/G56xSn14Kf/UvwrDar2isF
	bPui32bxVYUkzt9eubMDyCqWzclUYnZoNuyV9nVxD1WM3hopTEwH+yk5V3nTGZlz
	+KHBPE6yZHteT5dDPYoSHQ7yr6vIYZQdFAiiJCukK2N5+5bpIjyaNmzuFgLF3t4N
	gE4BAuj6h2k7Rb1TsiX04bez5kx9SOPSEkcrMU/BokeY0g+cboO/POWGsDpmTP0s
	Yxdbrw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42ncyxverx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 14:15:17 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-46086de3a40so10534411cf.3
        for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 06:15:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730729716; x=1731334516;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IqoIwtujkhfAAOgoHLEE0EEhIIqjSy1D+L10XQtFSJE=;
        b=UPjwC0yOhKIvefK/EyAOwzJKImNVLeh4NkNziYJtBDszztL8nsIjivQ9Of4pEf31df
         EVSOeGEbfFW1F3erA8wMfJY18mL61wG/o/90C3X/1CMcliVwKT6eo0/ElR6bPv+2vsmN
         R/QpB+dDcIAToUvE5nBhR7r/SJ568zrv7VCcEm83lCBH1rE04NjJ2rsnPUPlBgiSd02r
         OjVPbu6DAXdrESulb/WlAdFu3jhn99jS7vLSyFjBfGPpD8nVQhtUoXkABoTkFA9EWzvF
         +CU/RD23RpR3FEad0o30SyQld1j6Y3AB1gMD+ESTFXt4sQlFf7wY4nGIlLbkopWQ4UtQ
         vz3g==
X-Forwarded-Encrypted: i=1; AJvYcCWrr2ESRu5RKXum4Wg1Fs/YVsirjVdeiEhWsTkK+4B6iWIRu7AdHUnUtCKqZIWyMAsl2+UpoJlsI0VE@vger.kernel.org
X-Gm-Message-State: AOJu0YzGjXQ8kZ2TSIELdeXEIySPw5Z4pw6g6GXRYNsEpd3nC9SQikcG
	kmBtJEjtnu/nU3IWf1IWvcjZYYnFbiE9VNHIMiLWfed/EEFard2Ri1CUu77d/I6KoZ2fJkCGaGy
	ba/jFZ4frK0EgjuqvMJcS20oinxkHX3OU+KUN5SmGWTMRYkMvutCWG8AkPiL9
X-Received: by 2002:a05:622a:156:b0:461:2416:13c3 with SMTP id d75a77b69052e-4613c1e51bfmr193820001cf.15.1730729716342;
        Mon, 04 Nov 2024 06:15:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEDOSOCG2LFj9NXKlT9QQjwge9d2l8AqzVkV1gSOkX9wHMuy75okXlhwq7d5WmBKF+L/3Olfg==
X-Received: by 2002:a05:622a:156:b0:461:2416:13c3 with SMTP id d75a77b69052e-4613c1e51bfmr193819681cf.15.1730729716047;
        Mon, 04 Nov 2024 06:15:16 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5ceac789bf2sm4244956a12.45.2024.11.04.06.15.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2024 06:15:14 -0800 (PST)
Message-ID: <ee668cbf-54e0-4c0a-b690-8606cb3785b7@oss.qualcomm.com>
Date: Mon, 4 Nov 2024 15:15:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 08/12] arm64: dts: qcom: sdm845-starqltechn: add
 display PMIC
To: Dzmitry Sankouski <dsankouski@gmail.com>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20241008-starqltechn_integration_upstream-v6-0-5445365d3052@gmail.com>
 <20241008-starqltechn_integration_upstream-v6-8-5445365d3052@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241008-starqltechn_integration_upstream-v6-8-5445365d3052@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: dhhw3SI2WqePpqidz0vR5VhqJ0Lma61b
X-Proofpoint-GUID: dhhw3SI2WqePpqidz0vR5VhqJ0Lma61b
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 suspectscore=0
 malwarescore=0 bulkscore=0 impostorscore=0 priorityscore=1501
 lowpriorityscore=0 mlxscore=0 phishscore=0 adultscore=0 mlxlogscore=843
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411040124

On 8.10.2024 6:51 PM, Dzmitry Sankouski wrote:
> Add support for s2dos05 display / touchscreen PMIC
> 
> Signed-off-by: Dzmitry Sankouski <dsankouski@gmail.com>
> ---
> Changes in v6:
> - refactor: s/starqltechn/sdm845-starqltechn in subject
> - refactor: 'i' < 'm', so put tlmm i2c node before motor*

Now you have 'i'2c21 before 'g'pio-regulator :/

> 
> Changes in v5:
> - simplify regulator names
> - remove single buck index
> ---

[...]

>  
> +	i2c21 {
> +		compatible = "i2c-gpio";

I'm not sure this has been asked before - is the GENI SE for I2C21
disabled? Or are there reasons to use i2c-gpio instead?

Konrad

