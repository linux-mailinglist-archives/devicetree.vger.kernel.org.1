Return-Path: <devicetree+bounces-239872-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 4010EC6A372
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 16:07:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id F3B492D93F
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 15:02:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 220B9361DDE;
	Tue, 18 Nov 2025 15:02:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KKE829W1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="J8R+OVJf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F083363C5C
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 15:02:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763478148; cv=none; b=lBzL3tZvtEzmBbdaqnnmInqlJki8/piIyylyQuf0lU7hZR2fNuCkhI7rsjBAkFLfDmjzxx2Ue9UUih4BQVw+OyFhGLxDLfEtXl6AaeYbNaWTXZnwnAv9Eqfd8rDTFUxRiv7Nq74wcRE0DMnfqMIEAakNJnAP4GIsLv+Ejsjn1F4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763478148; c=relaxed/simple;
	bh=F2EcUzzrDBVg2CoYfVhrewmpZHJ4gD8b2jnpX9KGKDY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mOhA+s3CV9oDEVBUNR0Wy1RYbU+DrXYtvgLwhbj2xmuDRNCUfaftACt87hb3brhTVn2zXhlmk1TSBbGevO1lONhFnAWH4U8TaG90FrTRCg/bWbBNoC3HTE9sArZ34xec3EBzDJqiCQJp+fXEHftAqS774ZDEG7tvJFbI6nrNnnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KKE829W1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=J8R+OVJf; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AI8Dw0e2194357
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 15:02:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	O39BO97h+YAW1CZjvfTaDx7JV63porAO60M0mUkmq8w=; b=KKE829W1Y6JeQ1hE
	6xAvwFZ1iTDMnDmxzrDOIR6oDAbDyqPaKGkfzXiYlkNR7lCWC4h+MuS2Ibk8zt4q
	zTws5iyM8zOkcRzVeTvPlgmjUrcZYchoX95OG7OjpITyVQ51Mea8JZABSgg6GMdG
	ZL5g4Pkls/S+6uj51TYqtfHttuxjfKv6mAC6hrj7gCpqO3iIqt7CxpO4ANGKDj9h
	b+K0Wff6uGUTvbb4nVq5TPZvNMKNDa1WpNMtyDY3e2lAy+uyIMXsKefgz0i0m2PZ
	rTNNNwfB4Ykjl9RVyggEc8kronyjF6r6lEat94ozyysMEZTL2MlY9kiAH9vCJ7RX
	tKQ3pg==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4agn3y94y2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 15:02:20 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-5dfb8e7d182so915666137.1
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 07:02:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763478140; x=1764082940; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=O39BO97h+YAW1CZjvfTaDx7JV63porAO60M0mUkmq8w=;
        b=J8R+OVJfs9EMG8EOFBECQ1bfq380pFEb6l9dp/neV9s0eI9mwln1s4FrrAgVACff6b
         ywo22Td4RWjlWpEyJM4k+jQ0qapTVvvs5RJJ3p5XVAlVnzwejDLwxYUGjw30NObPA1P+
         NAQdzOtAyVCwdSyOvxqm7gBixPeI6oUxoRpbkSGKmWjsOUbLvcUvgpsFf34NzL53/nQP
         ad7BgUb5/2QeIeVdLJ/o/zI3Cie3saO6iqEFy/IRP8uaPK0TTPiClfMCq36B/kmw81FB
         20Sq6sPKxlPbvcxN1+p8ThuBJ63GFFVksT6/NAc8N5zghikG+a7AktfaH73rBKvSOFdo
         KiXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763478140; x=1764082940;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O39BO97h+YAW1CZjvfTaDx7JV63porAO60M0mUkmq8w=;
        b=WZivIc4ONtaCGtl+PkkQWcMxBleF2QDFt4fJ+yI0qaZ+hHfxQ5WlkYGutxW8wn+MUK
         c+F4neiWL5IBNQyFwz8zxrkk/AqgbAL4G+SRTNJ8Q/W9sJqhK5svIISWhDsVdz+RabzX
         rrpnJsorT5NUOcQU/xvANpqyDTwqEO03fDZ5qE6gnfgsaFvkbBQCirJkujTXzZmXRRqt
         Om8ensgxr9ppjUylzX+hcSQqcr0IesDNhi67bwPkVSV9Zr753nLdrXiByixm8ayu31nE
         /Wn0wa1rrbOaLy7Sh+MsVRjPNnSL7sawhKhIxeNa5viwbQdf/ASaAz0XHYH+jiG7K/S6
         d2lg==
X-Forwarded-Encrypted: i=1; AJvYcCWE23eejmlYRb0CVXJrz3C8DqAacuVgysoa/4hI4/S15x2SmfOGvM15+N/C4BJS5qajYpvi3PYkt6BJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yyq5JjSG3RFT9B1GcHq2ZlGKTJrAIwovZT4JNODrDaTsGI/C9E1
	CWiOUsuI0uVE2TP1nHKGBOqxYsUH2HmPRRjHyeXWRXuRTgYitPE5a9Nv47eeIh57Yo8Bngd70NJ
	G1isS4G2cRpwiA+jYlI48kCgxaAcWAoHyJvcRZKYZFyvUO9XdE2Pt/Y99wV+WG2fB
X-Gm-Gg: ASbGncv4aN+A4V9HMGoyKsQGyoDdpYFB1TWjzvg7Xq1zN+ge0+EnByG3BOC/a2e8vC2
	g9dOwtcWgRYujfwsGV70QT1fdsdR+fmeL3IY6KoMGSe3betjyg+7qKZJ0bHIAXYkbfNZVBM2ihN
	OYCxBYZn2EErklZLLDzUkCQDj6kVfLrgl7jGBjOj3W3ekYvTIUxZekrINDctGttXiU6yOD3lhSv
	YIEK3qoyz8PpD3y4aEIFHBalZeu3eceZ98q2bju1EYlAXFXw3zrBxaaGHMNESghhLAs4BkEX0sv
	t9DNoh1jZP3Zn9tZ2AjW3JE40l+QVgjKHsX8Eo4F865A2T+dX/4aQBi8lHJYHMdnUAEne+P8swL
	/La1/G10kXoAOA6GpmxHvA0NyldzhvwUKX3jrtnu5NZXAQdsrTwwpwmBY7B602kXxsYM=
X-Received: by 2002:a05:6102:5e93:b0:5df:c33d:6e58 with SMTP id ada2fe7eead31-5e19376ffefmr480518137.0.1763478139464;
        Tue, 18 Nov 2025 07:02:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFahTTAn3km/Fv5c/lUYnZ8T99gA+8u4/AuP+6hbWLY3U4FqYlr7wW98wKjJPM+2+UvB5MCkw==
X-Received: by 2002:a05:6102:5e93:b0:5df:c33d:6e58 with SMTP id ada2fe7eead31-5e19376ffefmr480419137.0.1763478138628;
        Tue, 18 Nov 2025 07:02:18 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fa81296sm1392855466b.6.2025.11.18.07.02.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 07:02:17 -0800 (PST)
Message-ID: <9611094b-dd2e-4f4b-b1a1-4ba8817d0524@oss.qualcomm.com>
Date: Tue, 18 Nov 2025 16:02:15 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] arm64: dts: qcom: sdm845-oneplus: Don't mark ts
 supply boot-on
To: david@ixit.cz, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Casey Connolly <casey.connolly@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org
References: <20251118-dts-oneplus-regulators-v2-0-3e67cea1e4e7@ixit.cz>
 <20251118-dts-oneplus-regulators-v2-1-3e67cea1e4e7@ixit.cz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251118-dts-oneplus-regulators-v2-1-3e67cea1e4e7@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDEyMSBTYWx0ZWRfX8hR4xDGKsE0B
 yH2Tbp0oCsLn7lHmIAkREPG4sQipHOX2iLowylWTKZne0Txgt75Eg/LYbIc0LuNDymfH1OelSjY
 MQP9WuF19w/qPGkXAjOINq4TIuvhBSy27M+az+Zf1b/wvl63ICyuaSiqORdErTKWFghYG3TJzLa
 8Yq/wSSRN2iQP77PQDhKwf1jc+Xewnb9dTB1Kl7pb70Q39iIL3aip+Jdd5lmKxkQkoPWTvAPGMJ
 6gbTSWcgLi1eVV8uk8BmdyqJuuq404Asst2ixQ7+VqsIcbyDZqJ0S9K4dJC0AXHimjVa1s2+QhC
 XyzoZ1+n816iTV/uiEoY6XpcLk6DrIlz578KOzyA+B6AKnBo59wz7vDpbw4+zZcGOYkWlKFuexP
 a5uhDs2nrK+wxq6/VxcU05QYydQp6g==
X-Proofpoint-GUID: ts8QHUly9gy4gLB5-3cXrS7IGaw6KcLz
X-Proofpoint-ORIG-GUID: ts8QHUly9gy4gLB5-3cXrS7IGaw6KcLz
X-Authority-Analysis: v=2.4 cv=FtIIPmrq c=1 sm=1 tr=0 ts=691c8a7c cx=c_pps
 a=P2rfLEam3zuxRRdjJWA2cw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=BiXyI_okxTJ3JasmUDMA:9 a=QEXdDO2ut3YA:10 a=ODZdjJIeia2B_SHc_B0f:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-18_01,2025-11-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 clxscore=1015 lowpriorityscore=0
 priorityscore=1501 malwarescore=0 phishscore=0 adultscore=0 bulkscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511180121

On 11/18/25 3:52 PM, David Heidelberg via B4 Relay wrote:
> From: Casey Connolly <casey.connolly@linaro.org>
> 
> The touchscreen isn't enabled by bootloader and doesn't need to be
> enabled at boot, only when the driver probes, thus remove the
> regulator-boot-on property.
> 
> Fixes: 288ef8a42612 ("arm64: dts: sdm845: add oneplus6/6t devices")
> Signed-off-by: Casey Connolly <casey.connolly@linaro.org>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

