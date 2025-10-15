Return-Path: <devicetree+bounces-227048-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BCAABDE19C
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 12:54:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 232F0481589
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 10:54:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C6E631BCB0;
	Wed, 15 Oct 2025 10:54:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fXa2dftG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E3C231A067
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 10:54:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760525648; cv=none; b=kIBP6OtfalgJelsfYM3lRET7XxI39O+BxQuiZrKByQWrUtZCwtMfDi+uYAYXR6GBLgUB+gQKNFpvFTsLnb0Bl/qKzGzDRczYxzabV1Kv4MsD0eIau7In0nUytBf3shRFe0VBfhiqIPwTOKGol1mxt1BmDvM+WFy4jsyRw7wUoAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760525648; c=relaxed/simple;
	bh=MbXfnKMiKPD634gmC7bM2JdzXeP/4dF+XYw/yV19hGc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Mt7VIA2uX6L8R5coUTUFPamsLt+Uct2q8cFjbfIl+1+djD3PptVc73kaEgmL20rzpghMTmgitnKQ4+H6wFFxsGvHFbkjDI3kenfjI+EMAaeb1AMHD8UtPP5eqZDCXssLK8Md4i5jwgwM7bn00rEL0MpJGGJqyJleRByA3cMtwGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fXa2dftG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59FATZ6I002566
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 10:54:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ytoLl0rwr/qVPKTq0TG/t4qw9GJbq9gcztEQZCkXQn8=; b=fXa2dftGNZpo7L5m
	JR5o4M9LMmnNQIBRt5OL1TXhnnsaOza6nKpBt161X+LTrvHXGtpzwAAUKn5pvi/l
	rZHxvtGFiQvEfQ/L4uQxxtiHn67k4L3iHRXNkEfpqFDII9jmIDUBUtWYyz65LWlP
	Iv2kKtDWT79i28NxnNbi/iwaXSs4wVtQkfzBBZQnfC7QbGxFGOFentXoVu+q6H+d
	nc/7bzkejNFARlazGR4teEIeMogDYTnP8hBe9F/sD6JDZPLUEQnzmUd8H2vyQVaM
	21eyva8giuwRxcLZIu95pXnunPSP/pm4FmCVgrwd+/hDdfCVOpztZyA5lnW2fIO2
	D/61qQ==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfd946dn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 10:54:05 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b55443b4114so7700978a12.2
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 03:54:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760525645; x=1761130445;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ytoLl0rwr/qVPKTq0TG/t4qw9GJbq9gcztEQZCkXQn8=;
        b=JRnBCGslMx1MuaNpgHF8RdmBjRpC27HS359TZXCASeSM/isCateAE5Ijc67EB9t4Ei
         pKuHf/mSwtWmXqGJYHeUqGt/bjdBm24OqfoAt+V5pUynJQjkwhMyc5l6xyFxv8PkbT0u
         J5wxjO1nNvJOxoB2FUFwLIT1wO5Aai7/+W1K4oUmtXfdUA+dHpMW+y6halH65pzEQcg5
         twNtmCdIPPO8Uuh+5UAGTnGfXsSrq+MHQ8xxqA0FpGnvPJJy7pEeji1obvTWPFAxCEqB
         r80bedtI4+yr2fwGvujzDde6PmqESngTUwWwSTwgqDtiVc/DL4U6s98CjUnx8H/b713V
         gfDA==
X-Forwarded-Encrypted: i=1; AJvYcCXBI07vMDXcvCuUfhqEyN5GoA248otoqYOz9MLTArkIiBx1ooSjyJogmDGwaiTdLUYzlPClNSamt77P@vger.kernel.org
X-Gm-Message-State: AOJu0YyP9A/4QwBHsObJg9tLW0AUPKxKfg8F07ELtajow5ONGzlByAYo
	X5U31yMylC/XGIxXtHU8efQIijmL8d5M76i/lljNaOjWZJi6dlhHUNqdG/F2PDJ3OjIi4Azn8wd
	iOdmZk1NSmIepAK4JyIGZ4SLZYY28wp7ZPVboeUefyuJA2D/NL512j86QVVpj8O0o
X-Gm-Gg: ASbGnctXAmtKkndoRUP+1Xz30UNqFkphmLA9uO/2n46Kiw8q3dxDJipR0tiUAijGEIh
	/xq1EaRs0yIuFvSkZBvF50/lerFxNSaIEjKcD13MdONIyUO5MjLRRYGYQB/nLZmdH8YWSIm8/tz
	eJe8GYkBwc5DlKTOUp5e1gWhC5vCzefSne0JxXB5VHnQ8QQ3mFeH6EJVqNfJJWdm/bAXbP3uz65
	R9W6ZXM1SK7xqHUeg/nb299yG9BgaOvBLiokpZJWDUYEyxiUrnxAdjsoCEz542Aw2A2n0fR5Q40
	7lqyLrCW81HNxq4Kitwu9GG9JpoaGGo+4hRmFNXIBgQrWuLWR11UGS+JYvLWLQ5iZjUcrMc=
X-Received: by 2002:a05:6a20:a128:b0:32b:721d:37ea with SMTP id adf61e73a8af0-32da81303d1mr38253403637.16.1760525644703;
        Wed, 15 Oct 2025 03:54:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEMZ2LsLEh0Qr1mBvJggyLP38lECWomJIQg5Rfi0tsF1jrllNMdpOSuP9+V7wgwuseQXiJsGA==
X-Received: by 2002:a05:6a20:a128:b0:32b:721d:37ea with SMTP id adf61e73a8af0-32da81303d1mr38253375637.16.1760525644265;
        Wed, 15 Oct 2025 03:54:04 -0700 (PDT)
Received: from [10.218.44.34] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b678df66ab0sm14552514a12.35.2025.10.15.03.54.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Oct 2025 03:54:03 -0700 (PDT)
Message-ID: <026dffcf-f674-4481-b86d-07c28933c97b@oss.qualcomm.com>
Date: Wed, 15 Oct 2025 16:23:58 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/24] arm64: dts: qcom: glymur: Add QUPv3 configuration
 for serial engines
To: Abel Vesa <abel.vesa@linaro.org>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-4-24b601bbecc0@oss.qualcomm.com>
 <bkenlzhh5fwspxkrq5jdcpfaxtc5hxg7w6sb6i46ohicdomed2@r2zvqvffmegt>
Content-Language: en-US
From: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
In-Reply-To: <bkenlzhh5fwspxkrq5jdcpfaxtc5hxg7w6sb6i46ohicdomed2@r2zvqvffmegt>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: wBPdgJEw2pcBUuJesvlYlmYb3Pj7WuYd
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfXyiLnolwRZVDD
 D50kwkpUiodLAF6KUwagQfmYrdYs2xPMisfGHnJSPXAU2yVmaDmbkBD9q85+fxe8jfLc63FbtzQ
 IJkMxnrm2sPsx7GnFn68jL5ku9fUIxFJxOOX9dBQcGLLDqNEMf75+6UAUbMdfMIlhiWYUMYqPzA
 Jpsyju43FZwt7pJctbDEqe8F2URJGIwD2HYzQti/rY+j/maeBKRV+Zr6FCU/OfpdwmOY6buM1AZ
 lPxSBJLfs7dV8jQb2PsEdPBY86zh76j1MkKxm0uYyN4GSEUPvPlMJSseIF75QSLsnQFi25AC3Ad
 IhVnwJtznUd7kgmWbYus4DttmbEOCsnijqdsllsQGvAENXd704YGigVbE7ss/gPmZJPijejwCmn
 H8b8ZOLdG5H6WvdsqYSZTV+SjO4yxw==
X-Proofpoint-GUID: wBPdgJEw2pcBUuJesvlYlmYb3Pj7WuYd
X-Authority-Analysis: v=2.4 cv=PdTyRyhd c=1 sm=1 tr=0 ts=68ef7d4d cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=eQg-hl6CXMczGQ9MqUoA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_04,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 bulkscore=0 clxscore=1015 adultscore=0
 lowpriorityscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018



On 10/11/2025 4:46 PM, Abel Vesa wrote:
> On 25-09-25 12:02:12, Pankaj Patil wrote:
>> From: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
>>
>> Add device tree support for QUPv3 serial engine protocols on Glymur.
>> Glymur has 24 QUP serial engines across 3 QUP wrappers, each with
>> support of GPI DMA engines.
>>
>> Signed-off-by: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
>> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/glymur-crd.dts |   43 +
>>   arch/arm64/boot/dts/qcom/glymur.dtsi    | 3041 +++++++++++++++++++++++++++++--
>>   2 files changed, 2936 insertions(+), 148 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
>> index f1c5a0cb483670e9f8044e250950693b4a015479..8674465b22707207523caa8ad635d95a3396497a 100644
>> --- a/arch/arm64/boot/dts/qcom/glymur.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
> 
> [...]
> 
>> +			qup_i2c22_data_clk: qup-i2c22-data-clk-state {
>> +				sda_pins {
>> +					/* SDA */
>> +					pins = "gpio88";
>> +					function = "qup2_se6";
>> +					drive-strength = <2>;
>> +					bias-pull-up = <2200>;
>> +				};
>> +
>> +				scl-pins {
>> +					/* SCL */
>> +					pins = "gpio89";
>> +					function = "qup2_se6";
>> +					drive-strength = <2>;
>> +					bias-pull-up = <2200>;
>> +				};
>> +			};
> 
> Re-write all of these like the following:
> 
> qup_i2c22_data_clk: qup-i2c22-data-clk-state {
> 	/* SDA, SCL */
> 	pins = "gpio88", "gpio89";
> 	function = "qup2_se6";
> 	drive-strength = <2>;
> 	bias-pull-up = <2200>;
> };
> 
> Just like we did on X1E80100.

Sure, that makes sense, as the same properties apply to both the SCL and 
SDA pins.


