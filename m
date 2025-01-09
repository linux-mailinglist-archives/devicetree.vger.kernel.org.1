Return-Path: <devicetree+bounces-137128-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0027CA078BF
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 15:12:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E8BBB3A43D2
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 14:11:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E543221B8F7;
	Thu,  9 Jan 2025 14:10:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lIiF7u1V"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4C121B8E0
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 14:10:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736431840; cv=none; b=LF5NnMZ4obbxmPB30W2yCCyurIdxkvtGLDWkWq7pW8rCRAL8RwU6DhxX8F7dPioD5zAekpXaAaoSvsrl1Oyc4lMLlnL4XeJkFDD6sr00u0+YsstUK1cL6FgMvNXWqrjbSjpLajdoQ5hfnlQfoKs7WzUJERrYpm0NgDVQpH33v1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736431840; c=relaxed/simple;
	bh=tL4x+yYbNB+p3FgA43CyqfoD9sA+muhBq8RhGGyWNlA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dvp2nWcDvkio9CvOqyPM0yZq0olIWN8L/vvNv5RtvWB2it5vEwJvKNmpvq7E7Rb/fHNH/BGnTq9kE2Fmae/biYDwFA6Kyl1fN5/04CCVmGh5GTM+KnfHLHCTq3FC1ety/Ja9jDe8VHyQWVUiFk4uH8xVUkvyMzhI8xjTbc5gQOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lIiF7u1V; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 509E7gfh006739
	for <devicetree@vger.kernel.org>; Thu, 9 Jan 2025 14:10:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7vGWjZNCdFvL36McoU0W2QcK/hOkA5Ais5061RagWtE=; b=lIiF7u1V2FSvKkU0
	3fd8ghf3u1EJtjHeJN5QJQ6OPnuWPOcSj8Hc4ndmLwqUDKVoeweHUG1PmfiELfzE
	ahZZhoHXyb55xWqpKxdAvd479kT/eCs4NwsEMv2Nkc6WEqoX9OM5kxsibcIncOlt
	PRsAcXk5ps2wSjxGC9n0R1x0j44pLLS/wfLnqnNTT0s6ewjy/zxW84xNjun5HyB+
	Q+ryNu7Qfh9twdHKrFUA7exP8T8r/tKQbON0V2uiD30KATiX8mdvcc8M5IfEuae+
	T/HHhHMtqGkI2eXTBLy0i0G2DsiXTUPmOkBlF/SGxSXxe3wpI8nCwIc66KVUZeYQ
	0+8OHw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 442fxs007e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 14:10:38 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6d880eea0a1so2811266d6.3
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 06:10:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736431837; x=1737036637;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7vGWjZNCdFvL36McoU0W2QcK/hOkA5Ais5061RagWtE=;
        b=O7pHz7KrsZWHCnnxb40AP/Qasard1xpCoSq1Z594TUHCIDrcNgPeTuNQVEVJtJjlWP
         8b3OnQMVTWYC7/5Vuqppz7t1CHaJJmKVD66cz44O5sVWBsmU5plxMjyw/jkqLoB5vG4B
         hQKDDpRzulaRkVl3PoKwF47vHG5DFa7Dgoj6Cale5unEeJwQLg+rKTBPnCjts+oDbhcB
         Qk1472ti2d+6TgX3r1r6JRpxWvT1UpXAs6CA1S8rL690NLVdozBTf166zVntzEuEbG5X
         Hj0o7vsSZcLRWGZ6L4JJ2QJ2LioUCELtJscRDUV7xafCMyQDkOU8xZ1HC0qlpbygHRPi
         bGbA==
X-Forwarded-Encrypted: i=1; AJvYcCXqE47oOBRmI/SbrNzXDJpGMiJxzamzC3D/5UDNZCdEPKWaG8//SgzTqmGGu4VX5rECZ9xp9G/GtW0w@vger.kernel.org
X-Gm-Message-State: AOJu0YzSqBl2uV5XMLz4XJbkL2+qXj2jUUM4yFS9gnEwEad4Pv0mI8eG
	yin3033qv3bFFCexAh9jG2XJDDdiR6ydqWytDcG2QXdiOQopwhaRu7bjACNTX3Vs0bFXmlsfBpW
	0clge01xqJ+vYHg7iX4euQjAoUdZ445X3yh+Dg/IpLp+QLjzjP0v9DTgwffua
X-Gm-Gg: ASbGncvOwaMFncNzLLQtiyMOhQ+xI8ilJjE/PLS5CtovXkDFAiiyvc0rxXcaEwJ0DRP
	5POr3RS6GxvUPXL+X/DdK8CX2eKFHDsk0ampUNHFMXR2OmDKNkORpYtpLmPp1bYpYBNGDDrcOec
	IwecUCGtVEs3zwY11Az6JxxZdTExk+byF/H8LdDh4JfQKmYn/Y9FQ2osYkLauRa9tDeOIMjZNN7
	20EiU6305dfemtxM39gIeXsENvejgGqWwHd4sGqYqUZGr4I4TO7dW/hcb/wjfb3ue+PFd8ySBMg
	MepYCLIMwdFPY43Me6XFRS/IVWjgsWZWsic=
X-Received: by 2002:ac8:5a41:0:b0:461:6599:b9a with SMTP id d75a77b69052e-46c710f2d4bmr38848661cf.11.1736431836794;
        Thu, 09 Jan 2025 06:10:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEFtSSjy/k+utoRRUalpZi8LGiYgqSWxQBdYI15No64ZwJPcp37eUotTcMZvjExAoP66Eh9XQ==
X-Received: by 2002:ac8:5a41:0:b0:461:6599:b9a with SMTP id d75a77b69052e-46c710f2d4bmr38848421cf.11.1736431836376;
        Thu, 09 Jan 2025 06:10:36 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab2c9564873sm75035466b.111.2025.01.09.06.10.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jan 2025 06:10:35 -0800 (PST)
Message-ID: <0ab00013-0265-4336-bc30-f49492e96424@oss.qualcomm.com>
Date: Thu, 9 Jan 2025 15:10:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 6/6] arm64: dts: qcom: sc7180: Add SoC specific
 compatible to soc node
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-kernel@vger.kernel.org,
        patches@lists.linux.dev, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>,
        Conor Dooley <conor+dt@kernel.org>,
        Saravana Kannan <saravanak@google.com>,
        =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
References: <20250108012846.3275443-1-swboyd@chromium.org>
 <20250108012846.3275443-7-swboyd@chromium.org>
 <n3fn5mnrrinrgrvadqgymv3cx355qpx5kk27nlrz2emoxfmjyt@ymwpfxf7lv4r>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <n3fn5mnrrinrgrvadqgymv3cx355qpx5kk27nlrz2emoxfmjyt@ymwpfxf7lv4r>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: OsocivU9SlvtbUODGdjKWCIRbNnsVxmS
X-Proofpoint-ORIG-GUID: OsocivU9SlvtbUODGdjKWCIRbNnsVxmS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 bulkscore=0
 mlxlogscore=999 malwarescore=0 clxscore=1015 lowpriorityscore=0
 priorityscore=1501 phishscore=0 mlxscore=0 impostorscore=0 spamscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501090113

On 8.01.2025 2:02 PM, Dmitry Baryshkov wrote:
> On Tue, Jan 07, 2025 at 05:28:43PM -0800, Stephen Boyd wrote:
>> Allow an SoC driver to probe for these devices. Add the SoC specific
>> compatible to the soc node. Leave the original simple-bus compatible in
>> place so that everything keeps working.
>>
>> Cc: Rob Herring <robh@kernel.org>
>> Cc: Bjorn Andersson <andersson@kernel.org>
>> Cc: Konrad Dybcio <konradybcio@kernel.org>
>> Cc: <linux-arm-msm@vger.kernel.org>
>> Signed-off-by: Stephen Boyd <swboyd@chromium.org>
>> ---
>>  arch/arm64/boot/dts/qcom/sc7180.dtsi | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
>> index 76fe314d2ad5..257890a193e6 100644
>> --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
>> @@ -782,7 +782,7 @@ soc: soc@0 {
>>  		#size-cells = <2>;
>>  		ranges = <0 0 0 0 0x10 0>;
>>  		dma-ranges = <0 0 0 0 0x10 0>;
>> -		compatible = "simple-bus";
>> +		compatible = "qcom,soc-sc7180", "simple-bus";
> 
> If the new driver requires this compatible, it will break compatibility
> with older DT files (and it should be avoided).

IIUC the intent here is to provide backwards compatibility through checking
for sth like IS_SOCPM_MANAGED(), sorta like HAS_ACPI_COMPANION(). In that
case, power sequencing would be done by the socpm driver, whereas if it
doesn't hold, the resources would be toggled by the device driver

Konrad

