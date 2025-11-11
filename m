Return-Path: <devicetree+bounces-237175-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E78EC4D9B2
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 13:14:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 16EDC1899272
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 12:14:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C594F357726;
	Tue, 11 Nov 2025 12:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aP+bf9so";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TLn+Irka"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 140C53559D8
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 12:13:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762863234; cv=none; b=K9/NAfpE6E5FkZ+0wWthFfiJofc6/WPiV1oJIBXbuya9IG/XchjkioL1XZ5sYT13UUra7VdJPIad0C6TS4DR0Ru/HpglictweXmn21jk5ZGotMEENQVwN1WuYO4jZkdnluYHCb99d363bCzoXOPi1Dplrf6kuse72tvyx1mQ/yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762863234; c=relaxed/simple;
	bh=xdmR3eERZWwZ05yyx09SGkEALCl2y3uliCa5xdEL3Yc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MBpAG2zDKnYNVJdVr3A3xe7IYXRT9FccN9MIlBC9JQtQrKc7Ags6gPpFJ2MpnQe1WRWDJv+dviW5gUnxCl+To1x5saKRAt34vl9HsbJQTfFoa5q8wqdjp8XeohBp+T8ZDgyKhzS2gyRz2mTAWMe5n2MZYm2uYw/Gv+t+Y3bz2PM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aP+bf9so; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TLn+Irka; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ABBG9Ou2046464
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 12:13:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=wcoRpwtQ83TE2nxIPk4SaxNN
	R0hLbOYyb8v5x+ZJclE=; b=aP+bf9soyVQ65bJm3Ri/fPqq/tujPJg7Y1TLcA5b
	CVv0H/nNLCy+rBjVVlFdYyVsot0N9qc5Gry3NU3xFXDjWz8s2jSzJmbWFT1p70iu
	/ChQL41V8MiygQ0812BUsQqIPaYbuW1/rTOgeIww3sPBqmSDFHJLZsuDcffujxvm
	qjSuL+UAwRbVYfOl9TxSOfImTv6UF6wSC2gpWJ0bd3lEPwB8FNCUF9K8hBQlFQKW
	gCanA1FCICCRMeTS74ucfP7LN6rxcROQncSrnzUa5guCSIu1CLnZyOBtmSrJz7A3
	ixZPiY9rzz8cT47pvx64eu7Rv+WWEHjgh2LI9gCntSRBWA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ac11x0raj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 12:13:52 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ed79dd4a47so115480161cf.3
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 04:13:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762863231; x=1763468031; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wcoRpwtQ83TE2nxIPk4SaxNNR0hLbOYyb8v5x+ZJclE=;
        b=TLn+Irkakk1AngitFVYx550btTwkWk+7PS1W1qllan+TBVfbV+QuRgYN0xf6rFaleM
         uUunP4nOn4xuxBb2XUsN9JJ++ejRZMVoGQ9l4axMVpYCOKlooIbAUI/Syk+6pCi7AV5d
         zDhWMYWIDu9ThKOAU+l7PRAyNoWzeZ4qWuY+7wQQVpytTXG5HUsmfKhGnRltnDnbVonT
         npd93CUNW6Nip2WOnnIjJ4M04jsiHi/KKujfYaLxXq96O4W6cEIOVAOFYwCW97o1ocLH
         JevpDzZi5toHL45WkioYp1bI1Jj1XYdUCNyPctTCOcN570oBEQEWAVAGjAHDk5FfLBFw
         l49w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762863231; x=1763468031;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wcoRpwtQ83TE2nxIPk4SaxNNR0hLbOYyb8v5x+ZJclE=;
        b=LNrk9S78cXHaWHPwp2IPNZ2je4u68m9iesVROpiQPSmdl88FJSROTOmEtPtYsxmxAN
         1SCh0Awgy5stnh8Vvs15t6xglYCXbqwnkbZixq3egPD4R4nsKuxAtIR3wOvefCLCEZ9C
         QK5FpM0kFOCtxHWOtBnkz9yku5llccux5NKmFQ4qpZAv0jHNLjah1MHGpLp+TlHbrFW/
         8RdbaYaTJ/yL5o2Xf/9wDmXDp0PRiTgc/FmyLYVYcs0GPvcwwKXGUGcRRZDQmPERMimh
         ttrCt/6IHujygherQuQUDVb5WUTX0FfcfafKxVb6Z3K1lILKHoN+csWypAGplcQaJYqw
         KgSg==
X-Forwarded-Encrypted: i=1; AJvYcCXlR52rWSWXFK03TWDJpLxZr5w5cIegjVOAB3y9cjw+V9VxZIXBlmyUGL7OQIevlQesEGv8xcefvqSW@vger.kernel.org
X-Gm-Message-State: AOJu0YxSv79M/ds1yOApYTW8Fc/vupZIcZ5yYI4PLLealpQlwMIQMKsg
	lfE3XfOmjfsCTbhyG22WRTBvUmJiqUtpmro5oJssn86YnUUxM9MEcxk4b5g9fajEefvyVXA2RpW
	pKEMCp2+g9z7lmV6JD6aJAXC9JT7Hiq1sD/sPanEdYDBsbfZVhBcWKf89SXP9rbm1
X-Gm-Gg: ASbGncvNMsMMSbr2KfS8AwKX6+IVB83dwhoqG7RNHFS0xg1l8UiYkwE8nKJzYmwYMii
	nsKZJXdTOVkSw+K77n84PC9FlcNADhr3fyV5svmy6D0tmVqUalFMeHiICXc2ljVQ+RzfGzeyqKT
	C5xDQs7vUDYIcn1o2TGjerv5n8zOOrAFpTKl/QH84AvRem3YSPFGY8hz12wo4uc6cnt3NCB1yCx
	VIuMYUhXXG5Yugyx5tuJ59N1hCWJmZdjhe8WNKPvTnBN0XzJFx0qzJwNR49dC3A4IC/p9Ewykvc
	4U3KOZEepS4HcUXG4+tyfmWIkykuf89SyvAWLS3vI2yeg0VJwD0rMl7eUbKL7vtrT7v3py5i5XL
	yRynd9Q3rI+aSzbdUR118asXgPnAPIpm5WqcNC3cEYrgcpKICx2RXZrUkZpRgKuyseO07Bz2Xek
	fIy3iDcBbLDL36
X-Received: by 2002:ac8:7fd5:0:b0:4e8:8934:6df1 with SMTP id d75a77b69052e-4eda4feae5bmr143959101cf.79.1762863231054;
        Tue, 11 Nov 2025 04:13:51 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHspHKQ+CLNVRcypu8hhRWfYAeta+BzgOtl4xKcJcK4aas4ChOSoXpfc6iUuhi55jU0CPLDOg==
X-Received: by 2002:ac8:7fd5:0:b0:4e8:8934:6df1 with SMTP id d75a77b69052e-4eda4feae5bmr143958801cf.79.1762863230613;
        Tue, 11 Nov 2025 04:13:50 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5944a0b75f2sm4830694e87.54.2025.11.11.04.13.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Nov 2025 04:13:49 -0800 (PST)
Date: Tue, 11 Nov 2025 14:13:48 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Khalid Faisal Ansari <khalid.ansari@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: hamoa-iot-evk: Enable TPM
 (ST33) on SPI11
Message-ID: <bppszvihd4ropnwljshsbx7ppxzbh3qfza7ocf5gnyff4igeyj@g25l3mekylgz>
References: <20251111-arm64-dts-qcom-hamoa-iot-evk-enable-st33-tpm-on-spi11-v2-0-101a801974b6@oss.qualcomm.com>
 <20251111-arm64-dts-qcom-hamoa-iot-evk-enable-st33-tpm-on-spi11-v2-2-101a801974b6@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251111-arm64-dts-qcom-hamoa-iot-evk-enable-st33-tpm-on-spi11-v2-2-101a801974b6@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTExMDA5NyBTYWx0ZWRfX2xhzLoLmYm+9
 7XBfspamE8Y5HuXvSRwcpU6fMG9HcshYXmvztd/aw6+uoATQQ8v3M5nubKY8v0pjYQmw0hP6fTY
 XZwqmaYG7yDn1qqoEz97mdPmVbHjB1mvS9vlb2HvM6+iDPdOYublo5/UExCsepgJebebExZYCkl
 rOAqvjlcrVtezSkoxsiYaVcFJdolkeqXrX+LrP2X+7X2/W5nv8xmlxUl7VrTFkZhhBwBRhK7K23
 B2g2LZ8j3a6S5ihsC7QKd39LPEu57D5dTgEProWomHpngquap2V+fIagShdsKLXV/H6axSfwB07
 yNLKYOqZ440PvD3dauIJYjw61GB56goGZHB/l26w1ENGcmoUw01zVVWF469VZW2I5ETlxSeof++
 NRSlzo/WAfWkWXjqG+B56zlfCb3dlQ==
X-Proofpoint-ORIG-GUID: jZaE-Dqd96nmSQ9kgDv7L7UG4yZAFr0M
X-Authority-Analysis: v=2.4 cv=L94QguT8 c=1 sm=1 tr=0 ts=69132880 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=pkoaJ9_ZSZekED1SlcUA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: jZaE-Dqd96nmSQ9kgDv7L7UG4yZAFr0M
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-11_02,2025-11-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 adultscore=0 phishscore=0 suspectscore=0
 clxscore=1015 priorityscore=1501 malwarescore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511110097

On Tue, Nov 11, 2025 at 05:28:56PM +0530, Khalid Faisal Ansari wrote:
> Enable ST33HTPM TPM over SPI11 on the Hamoa IoT EVK by adding the
> required SPI and TPM nodes.
> 
> Signed-off-by: Khalid Faisal Ansari <khalid.ansari@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
> index 08465f761e88..aecaebebcef5 100644
> --- a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
> +++ b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
> @@ -921,7 +921,7 @@ &spi11 {
>  	status = "okay";
>  
>  	tpm@0 {
> -		compatible = "st,st33htpm-spi";
> +		compatible = "st,st33htpm-spi", "tcg,tpm_tis-spi";

What prevents this patch from being squashed into the previous one?

>  		reg = <0>;
>  		spi-max-frequency = <20000000>;
>  	};
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

