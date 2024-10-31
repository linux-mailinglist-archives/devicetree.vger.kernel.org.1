Return-Path: <devicetree+bounces-117915-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B33029B84D1
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 22:00:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D6FD21C22171
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 21:00:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B0161CCECE;
	Thu, 31 Oct 2024 21:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OqRzQIFa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B712D15821D
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 21:00:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730408433; cv=none; b=mfvdKZWAK/dZFWpGqj0KYm8j1kKWq565+kU7WIWOn0nT7pGFeCyXdStWswsrexugLVEj0mfQZeIgBj9/pEeCWp2KmsaLEHkrf2FmnnhS7F0MDNQ9LP29yE2EXkwIcchttcb4mxxZXKfPrMgV54v3iT76LsHZg2ZXRYjpoZZgQKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730408433; c=relaxed/simple;
	bh=9p2L/gsUOtDAw0oVvraU/aabiEdBTQXQnBMzEvVuzpA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Yxb4+OutAh72PMdtyjjgadSlvKreLlP44gfMI8ukuXZlckXM752xiAVUmpSo87jIzVv3kpsJZp7RfrRexSIfGUZo65yv9/y0g6lkYqwhOviSyFsOJXCt8Bzv9YAvHIOcno3P4Jvq0JywWjr3UNf3EeP+dEEUrmxU0LYkr4RPEiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OqRzQIFa; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49VIElKc003950
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 21:00:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cQXYDYwMp5w/UPDufraPkZVemoBNsCrL5WS+2fWGtzI=; b=OqRzQIFasekmk0bc
	Qr98VHXL1g4GLDFS12CKQ6aGI+NuaA6ZWBLeCvJw2yTr2S/gC/1a7twRR8NcCDDq
	68J9z3yNluVj1eEORquAkEqY3nEhCoYHiqLGNK156VGalNvF3qAtDwqrqKUBsGdM
	IH0SoGwZ0lAnz3PAyUbxZVlAYzV728VulNOXHbGN0ocp+NlelBsTkTc+ptXnrsL6
	E0EzDOevLfEGYJ/nPzwxvNjmgtsYP3S11673quQLB1MaMhg9bXkgewHJ/hg/bdug
	rf+vVhS39+qfJjoT3wF63z0MgY0k0+LuT5WjOaX0dGaSPgRzvqc2mQKVheF+VNsI
	vnvLsA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42m65pa2w5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 21:00:25 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7b14327832bso19945285a.1
        for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 14:00:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730408424; x=1731013224;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cQXYDYwMp5w/UPDufraPkZVemoBNsCrL5WS+2fWGtzI=;
        b=ZcvXlBFjkR1+E05NP2b+U2InOJjUF1OksEgNzuBijY0sXxyFMphLcG0TPSRLTMcgqt
         4KB1xR+pDybWqo6ofdR1XFBIHf5kToMT0E308plijh6HQlaLIDIV3W1VHXhlQVXqdxCh
         NPDh1L84VuR6vLHjotxuPWLbuodTsJi6blKk3ZuiVQ9LAVHzirp0szwMpMkI6Nw+LwJo
         p8spqZmb7ylVS3TIxtZKalktszwxFaTJ/CBC0pWR0LvJzQbsDCYNBFvL4ivo76X4Puwk
         oQPxwb3OzLdviuMz+8R4DiYbOlAp7pyjvC86It2brnPkhw6Of9/ddK6IuarmT1Qu2lkn
         Aliw==
X-Forwarded-Encrypted: i=1; AJvYcCU1+UR7SkDZMq59Ws+n+rTgDUoWO5A3SyeKqI+wzr/m7hT7LgWGcltJSzV20O/9rnydc/Qr+uf3l445@vger.kernel.org
X-Gm-Message-State: AOJu0YzXR7laTfDCh6W/pd42UFyxDa8SSVRCWXjYF7EUFQZ84WwbQDPT
	Al4tBHbDhECFxTkkvZEMNwEevY/X+lJ4L6J9uexNThe2NrYLi5gnHvPF8drvfpmlbo7eRH1XMTk
	w+371CHOsRK/e8P8ez62g4EoTqVO5pspIf4GKS8fY0uTcG0tIjQdN2KpsIJpN
X-Received: by 2002:a05:620a:4244:b0:7ac:bb36:599a with SMTP id af79cd13be357-7b193f68d9dmr1396483185a.13.1730408423701;
        Thu, 31 Oct 2024 14:00:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG7X3DXyUEHB5jUA7SsCpLG6ODedxFLxLwr5aSO7qvzGjyUq4xOk1NXhSiKUvlHHhYkltCg/g==
X-Received: by 2002:a05:620a:4244:b0:7ac:bb36:599a with SMTP id af79cd13be357-7b193f68d9dmr1396480785a.13.1730408423177;
        Thu, 31 Oct 2024 14:00:23 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9e564c4f2dsm103158466b.52.2024.10.31.14.00.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2024 14:00:22 -0700 (PDT)
Message-ID: <304b909d-bf2d-446c-acc9-e65b94627468@oss.qualcomm.com>
Date: Thu, 31 Oct 2024 22:00:20 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: x1e80100-crd: describe HID supplies
To: Johan Hovold <johan+linaro@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>,
        Stephan Gerhold <stephan.gerhold@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20241029075258.19642-1-johan+linaro@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241029075258.19642-1-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 0Uz-7cG06Da6RRqkF2XBJs9UWFIv65F6
X-Proofpoint-GUID: 0Uz-7cG06Da6RRqkF2XBJs9UWFIv65F6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 spamscore=0
 phishscore=0 malwarescore=0 clxscore=1015 priorityscore=1501
 mlxlogscore=798 suspectscore=0 lowpriorityscore=0 bulkscore=0 adultscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410310159

On 29.10.2024 8:52 AM, Johan Hovold wrote:
> Add the missing HID supplies to avoid relying on other consumers to keep
> them on.
> 
> This also avoids the following warnings on boot:
> 
> 	i2c_hid_of 0-0010: supply vdd not found, using dummy regulator
> 	i2c_hid_of 0-0010: supply vddl not found, using dummy regulator
> 	i2c_hid_of 1-0015: supply vdd not found, using dummy regulator
> 	i2c_hid_of 1-0015: supply vddl not found, using dummy regulator
> 	i2c_hid_of 1-003a: supply vdd not found, using dummy regulator
> 	i2c_hid_of 1-003a: supply vddl not found, using dummy regulator
> 
> Note that VREG_MISC_3P3 is also used for things like the fingerprint
> reader which are not yet fully described so mark the regulator as always
> on for now.
> 
> Fixes: d7e03cce0400 ("arm64: dts: qcom: x1e80100-crd: Enable more support")
> Reviewed-by: Abel Vesa <abel.vesa@linaro.org>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---

[...]

>  
> +	vreg_misc_3p3: regulator-misc-3p3 {
> +		compatible = "regulator-fixed";
> +
> +		regulator-name = "VREG_MISC_3P3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +
> +		gpio = <&pm8550ve_8_gpios 6 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&misc_3p3_reg_en>;

property-n
property-names

for consistency, please

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

