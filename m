Return-Path: <devicetree+bounces-173114-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA50AA7745
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 18:29:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F0382188F6FE
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 16:29:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A05A625D1E1;
	Fri,  2 May 2025 16:29:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bSjuoatr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32AD343169
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 16:29:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746203346; cv=none; b=u6ljm17SlJreqIIE4gCA7vYAECp7TgUjA6TJSqURGDuZ8+ZMpESmzj+jN5+JrZlna9xz4nVw3JethZNy1HLoTTeaQIEardAsfp+iwHBjLDhrk/vLehZzNAVVaWe5Fe/V9w9AoY9qP/244cu4ahOebKCkqPHeB1uD7tL/8fyPqJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746203346; c=relaxed/simple;
	bh=WYH9SiI/9OQc48EIzrGzJHbOYo13HPK+Z4Mom0Xb/vs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SnuJ0RUwaaJMpFzVek0JQbM74epWdjghw7Nd8qDfRGI+tQRITRTQr9YPXfCQdK/BD3v8BAM/xtntcp8xsZbLVewr4pgTEzby5feuInWwdp+3/+dOd/xuQJdJV99QiN4Vtrw09FXr2+LAGVTVTkfjTKe7ceSOxYTpC83UYariM9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bSjuoatr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 542D4McG015498
	for <devicetree@vger.kernel.org>; Fri, 2 May 2025 16:29:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Imz1o0ryfSKDi3h4M0Ledl/IY2b0AdaI+0+ZKgPWnr4=; b=bSjuoatrtiJvtPT6
	3Y08+ukmJt2o5+tYZfIZL9UeMc0MsUD2S1smW/eLeruRjtcb9Hqp7+TOLU5qIJYc
	G1R15j45rxv/61jnJyEmRGJ2DpX0gtmzSWcZSXU8DWMeyI5mVG34PDtKliL0Qdd7
	X3d4pJs0ZnQ7NU7Q+jXx9IfOq/erg4CuYl4QtlILNTZqpYGJDZ/KvIP3AP9WUKfQ
	h+LFVMGPwSZ3+LxSKctxB5hjy+c8wDI0iD0CksxE19E0/scGrG5wULa0DWG6Lnd9
	AwJQdXt6thnLIAa1N0NtlZCGtCzwSUzADNcheVzvbAj/tWCC+sHU+gFMygjSmsQE
	Zx87dg==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46b6u4gwh6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 02 May 2025 16:29:04 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7369b559169so1601337b3a.1
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 09:29:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746203343; x=1746808143;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Imz1o0ryfSKDi3h4M0Ledl/IY2b0AdaI+0+ZKgPWnr4=;
        b=nRdrZlY4sbN2a/YQJhgtX1XfKey/zKkvbOCCKbLIXDhVIm+X3p8ma/leWYZ6rplKFu
         XBtFPVtbUF4GXr7812YRweHOYfvQWSPiph1dOLsJN+Xsbsze4l+Z5BR2gjCBzGe9aQLl
         Lny+qEY0ofW4LPh4rrgGGynsZqEx8qYTsnKlyc2uOoJXnrlFXdmyUMPZK/tfs+SYxHma
         JTE3sPgkmbJ5jBZH/+ditHtr5EOEXKRNFiwxVetKma+4+CtxGCpo7okXJhYk7X0HpPw+
         wmmELZ7k8g9mx3ZyhTm7dLgoKkJD390CeGYnxYPlQbw1dIUMSULFIGSahy+WTWPdRxvh
         hnKQ==
X-Forwarded-Encrypted: i=1; AJvYcCUK7TGRor8eh9FAncZxLMr6lL+RE6/YAde0PAh8YVM7by1wFqTwa5ToRvNKfHp72bp9vh9qlbYRtMN8@vger.kernel.org
X-Gm-Message-State: AOJu0YzPIeEGI7NRtGThtrzOH4lUWm9kCKhqVKJh2drYlusl9qoYAeuX
	ro4oUZnkpu7BDUbQxro26PSrDmtIizfXmR0IbS59LZEivdZ1CBRz2wWIWO4vuj3qlGne1pwvI0b
	dbb5wntjrnZ/UUJ6OPsJSs/g3DGmLNR2w6moNLQELCowMn6Wfml/1i/K0kduW
X-Gm-Gg: ASbGnctCnHaaCL4hvFpwvPIT6Vs42kT/51p9+mQNyWA8T3W84zREb3UoMSgivUE85Mn
	yawwDwB2E+6nTabnw/omutxmGJHp0Zw9dVZ4NAsnE4LGiW1JdKPH9dmiPs1YYqPEqc3bp+qbKbK
	9JKvaOkffHx+2GxYZRnBR9UfTJaZZV18DORwvT9hvfyMYqjloKpF4T+xR8Qj9dH87ANxmS7glV1
	jhwfU3PqWj5MzS82f+bywPecEpj1Ka4eibgJt/77b3FR3ZmAc+EqSVn09qPIMb/tM5RbgloMGwu
	he8ospyE8iHzl9z/o1g3kRj+BB0Ul6THxKzF7uzDn5imlcfa+JAL
X-Received: by 2002:a05:6a21:920a:b0:1f5:7c6f:6c8b with SMTP id adf61e73a8af0-20cdea52d9bmr4592369637.10.1746203343275;
        Fri, 02 May 2025 09:29:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE/l3hJUPTNLXKqmeVG2ZXFmeMKkNVJ0yJoue1mM9p2VxEWSQlOwIdlLxb1RykHuv6Sn65E7Q==
X-Received: by 2002:a05:6a21:920a:b0:1f5:7c6f:6c8b with SMTP id adf61e73a8af0-20cdea52d9bmr4592347637.10.1746203342906;
        Fri, 02 May 2025 09:29:02 -0700 (PDT)
Received: from [192.168.1.4] ([122.164.87.156])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74058dbcdd0sm1844438b3a.67.2025.05.02.09.28.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 May 2025 09:29:02 -0700 (PDT)
Message-ID: <68d280db-f7df-48c8-821d-f7d408c302ad@oss.qualcomm.com>
Date: Fri, 2 May 2025 21:58:56 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] watchdog: qcom: add support to read the restart
 reason from IMEM
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck
 <linux@roeck-us.net>, bod.linux@nxsw.ie
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org
References: <20250502-wdt_reset_reason-v3-0-b2dc7ace38ca@oss.qualcomm.com>
 <20250502-wdt_reset_reason-v3-4-b2dc7ace38ca@oss.qualcomm.com>
 <2036ef2f-c7ef-4f42-858d-8d95c430c21a@oss.qualcomm.com>
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <2036ef2f-c7ef-4f42-858d-8d95c430c21a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: XQU3D6rNi0C9cMB52xv5p8zjCWz6CHu2
X-Authority-Analysis: v=2.4 cv=Yaq95xRf c=1 sm=1 tr=0 ts=6814f2d0 cx=c_pps a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=wj/iefQKNY9P1RSDfSoyGA==:17 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=q-cXM-vEBeggpBd9xGIA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTAyMDEzMSBTYWx0ZWRfXxHN09u22Hu6J pxwUu6hslEAQftUYTK64hX/4xpnzCAqPuWDTa+EXk1mkeYGGGrm1M/alALnB9zigKKutwqLN6N0 azvKTs1WVcP0uMxjjlHxcK3hgDTjWRZSnpsQJjtadRmFbrFPm7cVk/CjYFH47I6+BtWFIqq1YlD
 dbZdxbBF8ZD7u6fum9qAQVXrpn6uDTjcC8MrA+UHAN7AHx9cCbzPCw+2sUVKc/SF3Z13czAPWYt rVcDuQaFdgqVuAz1dyiWYo+sVSGn1w3/29i6lqzIW1JM92SwkOENf+Bcdk6V0hDCG9Av8Xpnz1P Y7SaayLQQakaWr4k5iL+RhoOYvPLWKGUumsoeuJrTws4hOru3Qu9++lW0AC7C7SlpmDWz1rnlSi
 NwKjCVVXahauNpiyc6QKub49sOtXDMlx7vl9091u7nvypFTNtYXmDLm6thXhoGBIovaoYdPz
X-Proofpoint-GUID: XQU3D6rNi0C9cMB52xv5p8zjCWz6CHu2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-02_03,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 phishscore=0
 clxscore=1015 suspectscore=0 bulkscore=0 mlxlogscore=999 malwarescore=0
 mlxscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0 adultscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505020131


On 5/2/2025 7:33 PM, Konrad Dybcio wrote:
>> +static int  qcom_wdt_get_restart_reason(struct qcom_wdt *wdt,
>> +					const struct qcom_wdt_match_data *data)
>> +{
>> +	struct regmap *imem;
>> +	unsigned int val;
>> +	int ret;
>> +
>> +	imem = syscon_regmap_lookup_by_compatible(data->imem_compatible);
> Try syscon_regmap_lookup_by_phandle_args() and pass a phandle, see e.g.
> drivers/phy/qualcomm/phy-qcom-qmp-pcie.c & phy@1bfc000 in x1e80100.dtsi
>
> That way all platform specifics will live in the DT, requiring no
> hardcode-y driver changes on similar platforms


Thanks. I thought about this API but it didn't strike that I can use the 
args to fetch and match the value.

I need a suggestion here. There is a plan to extend this feature to 
other IPQ targets and also support WDIOF_POWERUNDER and WDIOF_OVERHEAT 
cause as well. For IPQ5424, all 3 cause will support and for other IPQ 
platforms, we are exploring how to integrate WDIOF_OVERHEAT. In any 
case, can I define the DT entry like below

         imem,phandle = <&imem 0x7b0 <Non secure WDT value> <Power Under 
value> <Overheat value>>;

and store these in values args[1], args[2] and args[3] respectively and 
use it for manipulation? If any of the platform doesn't support all 3, I 
can update the bindings and define the number of args as required.

Is this approach fine. Please let me know your comments.


>
> Konrad

