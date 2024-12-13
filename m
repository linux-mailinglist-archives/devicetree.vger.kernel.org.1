Return-Path: <devicetree+bounces-131012-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 29CA29F1B30
	for <lists+devicetree@lfdr.de>; Sat, 14 Dec 2024 01:09:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8E5AA16B31F
	for <lists+devicetree@lfdr.de>; Sat, 14 Dec 2024 00:09:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B89DD1F2C55;
	Fri, 13 Dec 2024 23:58:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PFR9NtIE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F19E1F2C49
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 23:58:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734134283; cv=none; b=Y7IwbS6fGIUflRDIDybt2vbONEs2rf80X2EPqMCSaXs1ph9toLAbOlfwjVL5s1vMMsNYv/mnzyxI2sucsl9ldg8ZBgAU8CmQB0pHsIkeSc2tqu+EuIZxY9SMtzKKM3e+q6DRQ5zzaIXUE1tm6ltcJKwAvXdcQS85CAKQF5anfwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734134283; c=relaxed/simple;
	bh=pDRIr3V4Ke+1ZHSEkU0Oe5jdjCVIe9x38Ah/rOfZMZ0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nzsEfQBPT6kBmPtdE4SN9sckM2w3hBz9fFbGlhPOFUgCcOxG9A40zw1SkFN2YY34aP3aiZtSmNst4UfGP/tJv0wSYeB3jVpdnM+Q05JFENxtlY3FKOqtHwPS7xAQdY6IcR6/3wmFehUjmb5YHv5NyamtWaeMjtAiMSlKrFrtQ8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PFR9NtIE; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BDLgZ0C006166
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 23:58:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EgJEpjhUpjinZzXlipmWXNty3sU1HuvMHZaSJG8B6Fw=; b=PFR9NtIEoxfANhHk
	tfYO6r/pVLkvkT73l8ANCIrlgBFzY2R/A21ZXmsP/LXk4rF5Bo3qnJXwkL1kthpf
	DOlUQ9WWquEHIfdFJMwnCjTWOqOgfhRSXT7ZS/bd6HDxOB1KXlHo2E7fzSqqcpTk
	TerEjNrU865ISQ63rPxAdSRPLwyLOSHxZcVtQAb7y1yRvFr+LEv7lW0boFMUDt7t
	GivRtqnRRo7GfEGj+ytpfYlC+dorZGC8XFZw43PBC5mT10GsL4G4l2it5c5x2pf9
	UH6rLSv3y8Iz6H87tih0UwfGSJEr4oy28iC3w8yW02oLh7AydJFhs+fdOejTPO6D
	ITq0pw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43gw2kg6bw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 23:58:01 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4679fb949e8so3773601cf.1
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 15:58:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734134280; x=1734739080;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EgJEpjhUpjinZzXlipmWXNty3sU1HuvMHZaSJG8B6Fw=;
        b=YqMj2kAAr7CppZHkK/s2nPu7n6jr+MA4UuZ1sDt9FrWSOHfxtm1enZjwX5/RYDLDCc
         MPDma6NwIuiB1P+/jt89NC/c0wgUb89qCS9oclm+R+gpfcosmKkoPIUJl+vYjX1pb2ON
         nrAsNr1WOWN5/t5GcPLELBkPWVAMLgUh0q1E8SS09oj5QgbktMm5nhlL+wyy4bE4VlaH
         vBoDwIMnIy+yoOZ4JJnnTdElDqvxQFwpll+711QeilJH/21Bt0x7hp2UhyT8bRxhH9K/
         VnKOEHIePHdznGVm8IVcfFBxb3gblAe7B1DrPGcTDMZkOUzcLZz4S8d2eBFaAwXOCMq/
         RpYQ==
X-Forwarded-Encrypted: i=1; AJvYcCXdDBuiBOgrOgQR0K+VwtsZrcttS+3q2IkjqundBwRvEFCwH5JgDnb+DxfdKJbG7hF79vTUs3REfHg8@vger.kernel.org
X-Gm-Message-State: AOJu0YyhuG78scEMAqN4jX2GB61n8lYa/VOiVXOlJcDZAOJ0LhsLOgSG
	phUKf/VpQoVl6b2W24/GpTm6vPTYBSK8ZzIjYbJgPa0vkV/W/RvZwKdzfETUOrrIlTjHz7HYDr6
	TU1YFySe4b5oR+EjDWA4tx9wd8H4MD15OrIIJmJHNwE1WaHYTmpvLXTJEd24i
X-Gm-Gg: ASbGncsaXCvFwpgiDUSp6kBNRqfpIO6j1dCdLIuKm7ta3+OxWU9CNmrhcJmwxIuPGgm
	C2Mws2vCnuewxnUVGSn9DgF3ONBcmjrCXZgp2EswYYiT6/Wkmz4wMlG28lSq9CodrQCPykwPsU4
	rDGz74tAm7EMmh9DKb03XRH5qnZeO3QOW4JxO91mzfATyjNvVgrkyPBDVObj5avaIjzq2/JVcx6
	vhZaoCmBFoVXLUZNwuXEawnSMOBhM5uEXXhPF633RaiRofs07KKpvk9vfoCcLiKuT3CvYxQc8ie
	XNSeb/+RGt1phgmI6pZ3VfTu0akdluorVvo=
X-Received: by 2002:a05:622a:48f:b0:467:95c2:d8a3 with SMTP id d75a77b69052e-467a575541bmr33495451cf.6.1734134279941;
        Fri, 13 Dec 2024 15:57:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFcInsrM80zY2XXRjWCmn/lWTNWUgTvmx+vLeVynOrPi+3UZMdf494lm9kqjgSOZLAPl8XB7w==
X-Received: by 2002:a05:622a:48f:b0:467:95c2:d8a3 with SMTP id d75a77b69052e-467a575541bmr33495301cf.6.1734134279626;
        Fri, 13 Dec 2024 15:57:59 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aab96005f17sm26656566b.17.2024.12.13.15.57.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2024 15:57:58 -0800 (PST)
Message-ID: <abda0d4c-9094-43ee-a6f3-7eb4659d734f@oss.qualcomm.com>
Date: Sat, 14 Dec 2024 00:57:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 13/14] arm64: dts: qcom: sdm845-starqltechn: add
 graphics support
To: Dzmitry Sankouski <dsankouski@gmail.com>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org
References: <20241209-starqltechn_integration_upstream-v8-0-ec604481d691@gmail.com>
 <20241209-starqltechn_integration_upstream-v8-13-ec604481d691@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241209-starqltechn_integration_upstream-v8-13-ec604481d691@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: XKi2_E91zJewTdXaL3P4ir2zGK0JO_44
X-Proofpoint-ORIG-GUID: XKi2_E91zJewTdXaL3P4ir2zGK0JO_44
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 phishscore=0 clxscore=1015 mlxlogscore=800 bulkscore=0 malwarescore=0
 spamscore=0 priorityscore=1501 mlxscore=0 suspectscore=0 adultscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412130171

On 9.12.2024 1:09 PM, Dzmitry Sankouski wrote:
> Add support for gpu and panel.
> 
> Signed-off-by: Dzmitry Sankouski <dsankouski@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

