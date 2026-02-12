Return-Path: <devicetree+bounces-265057-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qE59BDfBjWlt6gAAu9opvQ
	(envelope-from <devicetree+bounces-265057-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 13:01:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C215F12D3C7
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 13:01:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1DC4930D5F15
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 12:00:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82F0A3570A3;
	Thu, 12 Feb 2026 12:00:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LJe4Pums";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NVuvDCpO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3CC3296BD2
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 12:00:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770897655; cv=none; b=kOE5USl7Nv6HXQJUFHy1LyELRlsdgPlZrL02s7yvyA9U+mR6EKi6/WocXVoEVjlyTG1OkXi3P9oHdDCKwLkYGZqcROhgG5Py3BYHYn6m4xbDMhPt5FeyV6GWPLyEtmpK4qbhB9GM5jCAocXelZiXp5hciffO91oLPTsvvwOgWSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770897655; c=relaxed/simple;
	bh=OWZENebKCTjSmzhqII3y6zKPVBx69Nli1I6HnMPTS+w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ilvvIEiFhI3gCy6uYS6BJ11BSgb0Ls/zVyCrAGiDIOrwe7quq49ehdT6MsmJ26ozb9FhsUvKRRyNdPvCPs7UJHx3sKQcg5yTM+/orRwQqjAwv+4rKxRroZTY627X7QLcrucKFmRjWWfb0y5OtWazH6132p8Wo9w0nz6i7E3HyKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LJe4Pums; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NVuvDCpO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61C9o8j93562149
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 12:00:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rY3BcqGcx+HKrGNujocQj7i6AL6VD8HyW3fcDxd7ptg=; b=LJe4PumsDlTG1WFY
	VCTSPEmcYXocjplNMVdm4b0OL1P3KZlsXUKQWrnhNG4DM40qzTQJD2NOjwoEmf2o
	FM6Tfe7aBZy4QDbB6i6xFSNziHwM5G/bhdyO8VYTA686A49n2TQyZxZmW3jSbRBK
	MgC7ASy5zXauKTWzu5sEJLdgyRrCCgqDGulAcLi+qiUIS5IzhNDzX6+DE8pmttgZ
	ujxzCg/HWHBlN0MRP91+ucSwP7BLQalprVhhVXeQAAQR0TBkRbxWkYSVMXqP5vvI
	ExwuM/sY/MkcIrOBHvcRzCwEXHRioR+JHE4dYqSTQvTVlFq+IXLIL6cuyxCHsLmI
	cAJVIQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c9ck2gcv6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 12:00:52 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-50149945d26so35923971cf.3
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 04:00:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770897651; x=1771502451; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rY3BcqGcx+HKrGNujocQj7i6AL6VD8HyW3fcDxd7ptg=;
        b=NVuvDCpOf2lnvq7/ZE5GERi3lVUqRQwQZCdpzyFR7DTwrSz7gmnn5ZxObiA9PndtOP
         C175B4AnVq3eKEdn8RfCPUUZqfpuEw/eO8joby/3c/EpMrV0WRYe3piAFzKAFlLhxzD+
         kNvR1yoaeia3VDm2Xf4mXnc/D72OiHojTwkSrYVzNToQz46Y0yiorMM0G+NxsDK/KlfM
         J8dzbunLN8tS6dUKQR4XMBdOluhUZLGnTZgh45isD55zLLRQp0j8x6f4DbW/a7iXMujL
         6qs52py/leaLJsbj25jGjguq+Pc3y4wJ/y3LlQTBUZIV2mjnVwOhyaM6/aNP3JaF58nP
         kBDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770897651; x=1771502451;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rY3BcqGcx+HKrGNujocQj7i6AL6VD8HyW3fcDxd7ptg=;
        b=ZG/v8fqdgdWFxbzaS/90RA7TGWuFeE8IimGJbo0grZV06hRLlxpbSPC2xkNe0Ahrvr
         +6sSA+FpUdcf3QKxaDertT8U0V7rHvt5dIJe877ehYs5EcxR2QCe5B/3YFYRhHzMo7oe
         zm7ULP+RQkInVkbfx/RQ1+OKGVXeXFIuMd+chQ5v2fuEJIufXMcRlsIhlbCulPS+n32h
         Gv86SoyWgZ/TK16HiKsvuPvXduYPS2jTNGmSHIn/GGqaDL37pRwLw3rvqfbl9lICmi5W
         n+4NfevCCUR2q8Akp21RVLcetB1q2F2vKNd4zThJY1wW2C3bo/+reXxycefa4LU/x/mt
         Timw==
X-Forwarded-Encrypted: i=1; AJvYcCXIx77sC+ACxs7bBHjXVKampw6d9Tf9Jf6gDlyF8a6SdrRUGPHgzo92tqkiBnFNMBXEZ8C6xl5Eh9Zl@vger.kernel.org
X-Gm-Message-State: AOJu0YxgZzlgYz5VvXfbOjhxhTOoUScIxQ1X4QgYmiD7Q7ILbLmWjfxn
	2LGEcNIUjH1FExpnm92l0i3vVXW+8SaRzgY0Ke/g+0Xhs78WZd6TkwHiOv0wudJ6las1tkVYOL9
	erbl52mBx81VlMYqEqtF75OlwhhhGpKXGYFh0K7Ft/xcbZ7Ls8ZRciB7DUmetDoio
X-Gm-Gg: AZuq6aI8MoCbqUYQK8oFbtYuKufUfLdjlQjw+37aDUytKPCDDBRVIwpIsE+sgynWGGg
	Zf5w5x+5iQnRrXezODn488i81mXcumyQbT0nQTkHqG+u0/VZB8SuFwViytYXqyRHAUD+ZUJhxhO
	nbSy20AdwFa4hBN0Jp2rlwNEXeGNRolwvEQZAcc44haTuPRX4roc34lhSdHCET7RDMOwZZ6E2UC
	A3GGmhQR5BtYynQKsDr2o4B/o6lfyhheIbIZcfBznG/xlQdoYdj27+9OlzNyLqXzq1L2IlB3fGq
	NuwwJaxqXDvlCOp9JuVrZobhcCrTmgSPx3VGJyutH7OTny6MEyOy1Cy3xej8MYO7uxD+2/1dVw9
	9Aa899PCEOkCcrSnrz8UJ9dbDocCxYHYfndqPnz5DBjoBJUkN5X6eVSW8+ERGNe+kshQKx+ZTSU
	vUroE=
X-Received: by 2002:ac8:5d87:0:b0:501:46db:6b18 with SMTP id d75a77b69052e-506919f7801mr28295711cf.2.1770897650768;
        Thu, 12 Feb 2026 04:00:50 -0800 (PST)
X-Received: by 2002:ac8:5d87:0:b0:501:46db:6b18 with SMTP id d75a77b69052e-506919f7801mr28294871cf.2.1770897650036;
        Thu, 12 Feb 2026 04:00:50 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8f6ecadb32sm153793766b.64.2026.02.12.04.00.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Feb 2026 04:00:48 -0800 (PST)
Message-ID: <fb7028cc-f27f-4a4a-8001-f862a55ea528@oss.qualcomm.com>
Date: Thu, 12 Feb 2026 13:00:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: arduino-imola: fix faulty spidev node
To: Riccardo Mereu <r.mereu.kernel@arduino.cc>, lee@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, sboyd@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, alexey.klimov@linaro.org,
        srinivas.kandagatla@oss.qualcomm.com, m.facchin@arduino.cc,
        Riccardo Mereu <r.mereu@arduino.cc>
References: <20260210103933.27228-1-r.mereu.kernel@arduino.cc>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260210103933.27228-1-r.mereu.kernel@arduino.cc>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=cd7fb3DM c=1 sm=1 tr=0 ts=698dc0f4 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=-2c-_QecJCVN0InAuo8A:9 a=NqO74GWdXPXpGKcKHaDJD/ajO6k=:19 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEyMDA4OSBTYWx0ZWRfX/itma4JMBS5H
 LyIIxrREbmVwNfUSYYNsGWV2qGfm9xR85TltGOAQPxeaWDf9OHWKzmBoaINzvrf0XHIqXoF2M47
 Xw+DDU9mi7BXLhoCuX3fsdeaezr7FDRnvt5NVXGxMiIeCbUesv2WrXSY40A2TELZ2GrJAGha18N
 X6P5iafc5p3+oEAjg/gATaFsQ7iRlBtNwCHi+at9qOHB7N5LdLQUx0vWQxeQ2dNoLpXY7EZDDup
 10d/TURMH6CXAxi1PsczYrl9qPsUXiLDwrjj1J8Nzp5BpBvoipROLjVWScjjR3EMjWHUQhc2O8C
 /O9rYOwR8GdNWs4tLp2IHWkLhYgdRXLk/2WJBOju4Yxt+9s41w/4uqxLIC6/HGJ1clS+WIPvTKv
 9t018AgZLX41VNa1E2DWFKfI9V7anEBIQMVTsGHj5+aCr1IULL0++a1R66o5lIr35hFbTabSTnq
 JtmRAajaiQCo84MjBwg==
X-Proofpoint-GUID: U4i6UqWhUZjjarFzh9tgG1Ux7zb3VcGx
X-Proofpoint-ORIG-GUID: U4i6UqWhUZjjarFzh9tgG1Ux7zb3VcGx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-12_03,2026-02-11_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0
 impostorscore=0 malwarescore=0 bulkscore=0 phishscore=0 adultscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602120089
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265057-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C215F12D3C7
X-Rspamd-Action: no action

On 2/10/26 11:39 AM, Riccardo Mereu wrote:
> From: Riccardo Mereu <r.mereu@arduino.cc>
> 
> CS pin added on pinctrl0 property is causing spidev to return -ENODEV
> since that GPIO is already part of spi5 pinmuxing.
> 
> Fixes: 3f745bc0f11f ("arm64: dts: qcom: qrb2210: add dts for Arduino unoq")
> Signed-off-by: Riccardo Mereu <r.mereu@arduino.cc>
> ---
>  arch/arm64/boot/dts/qcom/qrb2210-arduino-imola.dts | 7 -------
>  1 file changed, 7 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qrb2210-arduino-imola.dts b/arch/arm64/boot/dts/qcom/qrb2210-arduino-imola.dts
> index 197ab6eb1666..d2c3359dd814 100644
> --- a/arch/arm64/boot/dts/qcom/qrb2210-arduino-imola.dts
> +++ b/arch/arm64/boot/dts/qcom/qrb2210-arduino-imola.dts
> @@ -328,18 +328,11 @@ &spi5 {
>  	spidev@0 {
>  		reg = <0>;
>  		compatible = "arduino,unoq-mcu";
> -		pinctrl-0 = <&spidev_cs>;
>  		pinctrl-names = "default";

You should delete this line too

Konrad

