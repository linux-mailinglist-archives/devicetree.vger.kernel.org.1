Return-Path: <devicetree+bounces-184228-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EC314AD3561
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 13:58:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 962191895DDA
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 11:58:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB96022B5AA;
	Tue, 10 Jun 2025 11:58:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AWKkWxYp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A10822B590
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 11:58:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749556695; cv=none; b=edvm12cngTeWlby7zRa3CtVYtpd6BSi+/Gha/sUKSjvxQOyqqD3hQdEsq3T0ekmBLyT0DtFEf7Cl44UPXYLzkZ/K480vwMfjLc4z2f3hF7B6gCGMivW4Y/p3SazmwkYfQsDDhVQaxOGcnozOLzJWs0mYAmX6Xc8ZD2h/VAJhuDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749556695; c=relaxed/simple;
	bh=Y8Em9NS4yQ6mlgIzt0kUNbKJWBlBLGc6b39eEx7HxfM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dfekmmQvtWzkdBcWfnWqrWGiVO4I0BneiywEovAyVFhkHd2UEWH7OhPbz+5j0EhZc/FleP3kN92m5U9Ic+drvXlXut9zQfz2wwFI/+FsklgkaRQ4M1IFNB4tEm9LCKAtotQJcgmYxeadj77hYnul/6D2ATbyU4FaEdm82F8cFsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AWKkWxYp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55AADNsu011340
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 11:58:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pJ6+ORb5liBk+mkhK1nYbmCS+4yM7TemgWQTbWX2QOw=; b=AWKkWxYpgJXrVaLE
	UrBS05768i944CObxrkJFp5bufq2NoP2/OmyeRzleX7rNczsowZZxxRHnhMCjhh2
	UWU9vbWWfSve5s9e9nJMXK74X9UNbwWrX4zrMwUii7cs75sYEXu4+vlEc8eE9bmx
	z4/Ic5RzVjPkywT4Wq77qGZb01rTMZeZ10LBWiy1WBqL9aFCfu/EtDLO/uVKWwkU
	7Pt5i2zmXmIS2CszK/FRnhhC4im3O5z0R1G5dUoseOP9ONM/IVHTMt39x7ScefS9
	Sl4oUYDzJIcC15z1MT+JnBK8FkmkLCaDr+tKGIGbal+XbYkyhpJBF4wn8zPvN+j5
	uHF1Sg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 476jrh89t8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 11:58:13 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4a43924a1bcso13235481cf.2
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 04:58:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749556692; x=1750161492;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pJ6+ORb5liBk+mkhK1nYbmCS+4yM7TemgWQTbWX2QOw=;
        b=smpOHenDEzxygUFFx5JfsFWw74iC5NQnaaxFF0eGV3oal76zN/aq/115uKsk56+YXX
         AjLxFaVocJUrkkKL4ZTZMtkXw/IYmc61t4COWA0UE6iPtHJWIz6Vv2Liy564bPkN/c7t
         +TvDlOu8eeegE0cvS06XmxEwGEshg4ZpMnmSs15htDFl3MicjPLQt6EELBtpvqjlnUgU
         y8P10aJ6JFlGLMm59i2NMRxGoMzfJY+knNCNG6OYKqoTaqh/wJ6KYSkgk0UvJKuZJqE2
         u7qc4QBqkdMJkWaxU0zSuR0eKhqfo28DKYegQ4NVdonSFAKbGHAgujNAOjOqpV75Q2Zm
         Yfng==
X-Forwarded-Encrypted: i=1; AJvYcCUhkCKdnBx9HC9zITBTCkARHHqU96L/4YGN98hZ65qLa/JVOeaZPBuoCvG2oEGSxYywaJFUr/G2Ms7P@vger.kernel.org
X-Gm-Message-State: AOJu0YzN1Sa/jXTLf6abwaqyKbgNK8WhJsj7DTfjNZsE6Kg9b3hhSD0a
	VUaBgGcjjTxaf+s6eA1NMxIuFqhad/Zg/uo54Qs89ZAMzfspWjNgdTXe+uEyfaWwbdTvFVrXeWO
	RHywBNavBzXTtV3oF3R6hFtpf3eTI8GZYD41RYhRASZY/O1lmqffR5e6zVBy8lLPC
X-Gm-Gg: ASbGncslN+D2/LkVUffizNR4LnUXHRDgVNxgch/tzoSE+9mWOFwmEWE93uHCqtBY06p
	ZWjanO7IYloXBfSRntQmdLBrdf08DOw7SsvuACFS0qH9LO2WPRYps6MqKcWzIIanBl8I1bRT9vZ
	VrnENMg3HIne496HeM2OsMkytD2ZU1PKaqv2O9ELwYg0jq3C6tbUtWVueOwp/ZULDUYaGHzKQLO
	G1TzPHrEbuc8zDE1owBY2X/8ta1UZY6uU5GdqyxCFTHphL8lAHrybCp5Pk7eeHgmiHY4iYcPMjB
	VomtTWfd5hFI2CpW1dIyXifI/2KRAXwaB9Hvsex4Kphe64CEkxc2oFlzf6jXR89EUh9V10US48u
	c
X-Received: by 2002:a05:622a:1101:b0:4a4:40e8:6e23 with SMTP id d75a77b69052e-4a667c1d1dbmr95006051cf.2.1749556692146;
        Tue, 10 Jun 2025 04:58:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFbA5DrdMqWCD2ySC5PETSlVXoPSub2FJPNFoTOkSwxhiBGPqwDNOPd7MHJQlO6PqwixOLarA==
X-Received: by 2002:a05:622a:1101:b0:4a4:40e8:6e23 with SMTP id d75a77b69052e-4a667c1d1dbmr95005791cf.2.1749556691688;
        Tue, 10 Jun 2025 04:58:11 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-607783e66f1sm6071020a12.79.2025.06.10.04.58.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jun 2025 04:58:11 -0700 (PDT)
Message-ID: <90791cfa-89a9-4745-916f-ca5381247a90@oss.qualcomm.com>
Date: Tue, 10 Jun 2025 13:58:07 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/4] arm64: dts: qcom: Add support for X1-based Asus
 Zenbook A14
To: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Nikita Travkin <nikita@trvn.ru>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, dmitry.baryshkov@oss.qualcomm.com,
        maud_spierings@hotmail.com
References: <20250607200229.30538-1-alex.vinarskis@gmail.com>
 <20250607200229.30538-2-alex.vinarskis@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250607200229.30538-2-alex.vinarskis@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=EovSrTcA c=1 sm=1 tr=0 ts=68481dd5 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=pGLkceISAAAA:8
 a=04dXdBH-sfCwm-JsXqsA:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: 0_s_0ivL0Ac2buYu5oTrFZD1Nm_H3jY3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjEwMDA5MyBTYWx0ZWRfX+cWD1bDmqIOP
 cf5egOrJ57jjQSkspoVOTy3DToobxwq/oG+CALyn0tqUfXL37EDYGqjIALxWZ8tC6OqUshiauVe
 fdcFKX01ZKcfAYSrh5LHhx6xWDWdLgWJ6+96Q/ZeLuNqqC6AnaNZFVzrsNcnD6z6v64xvXxcRRW
 pZV/Z9m2ITr04+5vP2Zt0pnoBFZqe68UtMUUP93RJumdgeNRFd5qTiF/KuUfBIPVP7FV0GQFqLf
 HvcrDpXSGSeMfZpAgsmeFdEi/R16Ia4k5XWO5Bjzv7ua2OqiXYmasnofcojwBwr99m/8I+X6OX5
 2b0UnjdXrcTuBfAbzpYXZeG710ztr/KrcwmbMBNmMv9ccQyvhrklg9Ozi+HJh1bm264CxAHyzYx
 xGdIZZSzpagq1l3lT9tCdHIl05T0+D0APbhPq4faG7DRuLRVX/mMFeUvhf7fAnoN0iI2upts
X-Proofpoint-GUID: 0_s_0ivL0Ac2buYu5oTrFZD1Nm_H3jY3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-10_04,2025-06-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 suspectscore=0 priorityscore=1501 mlxlogscore=999
 mlxscore=0 clxscore=1015 malwarescore=0 adultscore=0 lowpriorityscore=0
 phishscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506100093

On 6/7/25 10:00 PM, Aleksandrs Vinarskis wrote:
> Initial support for Asus Zenbook A14. Particular moddel exists
> in X1-26-100, X1P-42-100 (UX3407QA) and X1E-78-100 (UX3407RA).
> 
> Mostly similar to other X1-based laptops. Notable differences are:
> * Wifi/Bluetooth combo being Qualcomm FastConnect 6900 on UX3407QA
>   and Qualcomm FastConnect 7800 on UX3407RA
> * USB Type-C retimers are Parade PS8833, appear to behave identical
>   to Parade PS8830
> * gpio90 is TZ protected
> 
> Working:
> * Keyboard
> * Touchpad
> * NVME
> * Lid switch
> * Camera LED
> * eDP (FHD OLED, SDC420D) with brightness control
> * Bluetooth, WiFi (WCN6855)
> * USB Type-A port
> * USB Type-C ports in USB2/USB3/DP (both orientations)
> * aDSP/cDPS firmware loading, battery info
> * Sleep/suspend, nothing visibly broken on resume
> 
> Out of scope of this series:
> * Audio (Speakers/microphones/headphone jack)
> * Camera (OmniVision OV02C10)
> * HDMI (Parade PS185HDM)
> * EC
> 
> Add dtsi and create two configurations for UX3407QA, UX3407RA.
> Tested on UX3407QA with X1-26-100.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>
> ---

[...]

> +&gpu {
> +	status = "okay";
> +
> +	zap_shader {
> +		firmware-name = "qcom/x1e80100/ASUSTeK/zenbook-a14/qcdxkmsuc8380.mbn";
> +	};
> +};

Override &gpu_zap_shader {} instead, this doesn't work as pointed out by Rob's bot

Also in the second dt

Konrad

