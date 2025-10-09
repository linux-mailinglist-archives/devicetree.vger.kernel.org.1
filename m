Return-Path: <devicetree+bounces-224977-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 15D74BC95C6
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 15:47:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 8F60734AC5B
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 13:47:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D68222DEA7B;
	Thu,  9 Oct 2025 13:47:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FBvLT4AJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 447E423BCED
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 13:47:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760017665; cv=none; b=OXSFDvJDiesZKX3geKzkinuBD/K1DWRrIXro6OWmdku25Ivep7277fuBTtAp1BinWVdkNONceGM8t2Wfmd+pL2paWZ3DalGvp+LO3VilKQtymqYDcAA/10RPpcS4Obqak0eZO1IKIE0B487SkUalwCvSY46e7wQZ/15bW8e/4UY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760017665; c=relaxed/simple;
	bh=RlhAm2Bg9pvi1ogK5q06pE8r0EcxlDXKABHary4XLh0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hOsGozXYcwuu3kclJeG9Mc4VpYoGHKWMPwwBDxrMlkSW/twJ0h0t/2z7Fe+nFWu3v+kX1DNIE3sZ8P+NJMto0mDCRP5diVdNkcIBOhDe2CwdkevpCCDihPdQ/aHiDrGRbGYJ/8N23B8JiOS3AChZdfqMXPez4ZSpADOrMdhLw0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FBvLT4AJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5996EHT9029237
	for <devicetree@vger.kernel.org>; Thu, 9 Oct 2025 13:47:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QbuhKzYyNn4b/GhuLY4ieUg767B4emhq3As5C0P9FLg=; b=FBvLT4AJolC+mYxz
	clqU1bEJriRfxtkKFOydY9wRkTGhGBrSMw0yoEp5U0+wGBBH2ZPX8mtIKKanvike
	Y9Y9fHlnwrzg7t7EiJEUVRY2PpNyQfC0o20iu8oeQpHHc8Y8w6de60DfFZuFYTB8
	Nkj6y+TzEhklUmW+vkIbdtHU18szRYZ4kwFt2C0lgSGJR6qo2NUUaeFgBVNaZM4Z
	JY2dVnG0GkO8tJbuT26ME+SFwcSG4SvPvzFMLLHvWYiyvi/3vY9jYfzpAMhCpLOn
	v7pNaeVA+xO8lKyTnu8elJ0TpP/IIbPLTHXP6aMIqXjDnUuESGPEscxrqAhYSy70
	XVudew==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4nk0jx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 13:47:43 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-798920399a6so481827b3a.0
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 06:47:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760017662; x=1760622462;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QbuhKzYyNn4b/GhuLY4ieUg767B4emhq3As5C0P9FLg=;
        b=lBeyDFZvUfkAYOvpxnUqQrEuBftFbF1299xO9wbACbspaE+aW93X1XP6Gyyya0Tdut
         F7xJngq3kCOYi211YUCoU1+uOHYik544wsZYbhyWVXqeWqJH+/oLKZNpZ+aCDrfOijz1
         udb5I5Kz2JpFNWkRZDl0KRVqqmWLYwMhW6jdWjr7ao7D3n5mJUYxb+flBSflLYGS6yTC
         BAWOOgvDfNd5dWcakCNGh3byy6xWWRc0kdQ0+bngkk+68slbKxDZs5Wg8MD6PTt5XRAF
         UvTT850QwnKtbO2eI3mGwISodk8BClVDJKLZ0hxScyyUSLzA+CHbjki4MIrO9J8cVx8n
         +NzQ==
X-Forwarded-Encrypted: i=1; AJvYcCWfzBFR7eEIY7wHmKFfHKPFXG7Jttu6X9kpprEhCheE5Q/6+t7TkmB3VH9u/sI6U8CVYrtFSvu+YzRl@vger.kernel.org
X-Gm-Message-State: AOJu0YwTpSJlzEK5vo4V3s8NQst0g0l6c8x45jvwT4ehFlemvoGUxgPT
	ifrxbpqFWVH4ssUeRh/JENMMsAnaQMZj3MmUM+14oP0l05/OkCLnrrCyApZgi8B8nDto9vmonDF
	sTkz4ZY1FEr4Mgtpa8Jt+7ty/A1rETTmdfmgHcmgS8607gVmKvWGrwZHtaSfJKxGK
X-Gm-Gg: ASbGncvih0w6Ay5yPbOPukTjJJC14SHB4cLcaNHKBoqD4ezy3umuZjewdYOFc1IABWI
	dBg5f2IiREJuYyRaiEP+QVgtKbanNeA9A8rZCizIaW5EfXHmyEKaSHdgmx0SnjAEvOgfcO0f9+c
	ZPp3NusPtfsBFm791duztwiayCJ1+mDWTKgDempZRb5XTZikTKHf6PgmzSlFuGqzJF7a5uauWrp
	MYo2/IDQlBUcf0gma0aBWqPod+sfgO8lEuHbLQSjxXckjIMpiVxINwAgeWey9D4z0Fv1Vx88uY/
	SjFxLC6Qi2U8gitjRVMA2jYdCB6vGGYHzVE+yKn7Klw8viBMOhwiz/wsjomfE4PbVN0hnUvMqjG
	oEQ==
X-Received: by 2002:a05:6a20:3d8e:b0:32a:745f:beed with SMTP id adf61e73a8af0-32da901260amr9717514637.26.1760017661539;
        Thu, 09 Oct 2025 06:47:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHSAsehxtpQrazP6VTfIez0ySTkYxB2HS9LUqidFtssn3qRxOFg6kh9acrWvGUQNz8wkh9Ohw==
X-Received: by 2002:a05:6a20:3d8e:b0:32a:745f:beed with SMTP id adf61e73a8af0-32da901260amr9717473637.26.1760017661062;
        Thu, 09 Oct 2025 06:47:41 -0700 (PDT)
Received: from [10.217.217.28] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-794d4b3d611sm2989224b3a.6.2025.10.09.06.47.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Oct 2025 06:47:39 -0700 (PDT)
Message-ID: <db8855a0-d596-4142-9db5-20ac5f262078@oss.qualcomm.com>
Date: Thu, 9 Oct 2025 19:17:33 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/20] arm64: dts: qcom: Add PMH0101 pmic dtsi
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
 <20250924-knp-dts-v1-9-3fdbc4b9e1b1@oss.qualcomm.com>
 <85ba017c-3ed5-4fb3-ab6e-a64135a15a85@oss.qualcomm.com>
Content-Language: en-US
From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
In-Reply-To: <85ba017c-3ed5-4fb3-ab6e-a64135a15a85@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX6CuQIl3d4OyN
 hzbwXgnWCFOVIhfAfkldINTpFGQTRpMmlBcsjml5FZAH/BOyJk21MptIszBCtJRyo3vjgf2M6MG
 5Rtb8+CcqR2fA+G9Iu65285bmcEVI2tttaqqKBcjQafnAZodqvctsJZFPYediP6Yl8AF0V118/e
 iIFCu+eg3KNfmBZzLd+7T98zz62SGc+6TRu8wPYaWvG0smS+W4iBoECb/v/cmeTHUqz3asTlLjE
 YQ1qwOntWv41DGJgNw4rnbYOaxjA3D9Bxud/UU2Ua563gkghLv0GCLVjZ3QEUqivBYokX+XZGMd
 av+X/iwATOGtswUishv0zGCcPVKi7w4j5crW+Mz69QTz/YradWOF4m1oZAeZ1f3W5XoRRSy/Byq
 fsVVrTE7axpgJypmXGuINV3mEM5t4g==
X-Proofpoint-ORIG-GUID: d-5yvDSCbytFQHGDipZdodekUWh67qsF
X-Proofpoint-GUID: d-5yvDSCbytFQHGDipZdodekUWh67qsF
X-Authority-Analysis: v=2.4 cv=VK3QXtPX c=1 sm=1 tr=0 ts=68e7bcff cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=J1y9QmG_dN3EwAzi9v0A:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_04,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 phishscore=0 clxscore=1015 impostorscore=0
 bulkscore=0 spamscore=0 malwarescore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

Hi Konrad,

On 9/25/2025 5:50 PM, Konrad Dybcio wrote:
> On 9/25/25 2:17 AM, Jingyi Wang wrote:
>> From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
>>
>> Add base DTS file for PMH0101 including temp-alarm, GPIO,
>> PWM and flash nodes.
>>
>> Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
>> Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> ---
>>  arch/arm64/boot/dts/qcom/pmh0101.dtsi | 45 +++++++++++++++++++++++++++++++++++
>>  1 file changed, 45 insertions(+)
>>

...

>> +
>> +		pmh0101_flash: led-controller@ee00 {
>> +			compatible = "qcom,pmh0101-flash-led", "qcom,spmi-flash-led";
>> +			reg = <0xee00>;
>> +			status = "disabled";
>> +		};
>> +
>> +		pmh0101_pwm: pwm {
>> +			compatible = "qcom,pmh0101-pwm", "qcom,pm8350c-pwm";
>> +			#pwm-cells = <2>;
>> +			status = "disabled";
>> +		};
> 
> Any reason for these to be disabled?

PMH0101 is used on both Kaanapali and Glymur, but the flash and PWM
peripherals are used on Kaanapali alone and not Glymur, so we
kept them disabled by default and enabled them in the Kaanapali
board files where they would be used.

Thanks,
Jishnu

> 
> Konrad


