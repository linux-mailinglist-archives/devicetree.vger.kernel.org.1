Return-Path: <devicetree+bounces-197309-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 58198B08CFF
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 14:34:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 825107B3279
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 12:32:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 339002BF010;
	Thu, 17 Jul 2025 12:33:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aakGKykH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF70129E0E7
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 12:33:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752755614; cv=none; b=EoHhl2Mc7pC/HJee8Q2kwDjy2JwrYpoIMIn3Zl02AMShlATz9hKTA9LalK3QQ7YJkVM5yVVg/QkShNyN0zFtq1cDziyfkYakH5XVgwvxxOFl3mD+pEbnhniPwnb5EViE7MytCC22jwlCHdpVozDlHwvFcXL/YihIloA+mkFRIA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752755614; c=relaxed/simple;
	bh=Gmv7dVIb97BTPREuQrN3CXUNJACJV+uXItbUTKNKsu4=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oyq01Bp18wAvS7tq+3qDToYX9bAE13wHaavQ5GchqBpZxzJOgfOdzLBX3E8ITIWxkjrvyI0FyU3xG1XlO1cWM3kacxSgx3Q5QNlQjJL4q+9onjWnWMBt9Gj3RdsI4lEIR/XST7bGe1lIPjMOMb4CUHINp/uSXjstzmJSbZHmvZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aakGKykH; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56HBbALj020649
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 12:33:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=vnoT4/xPZqftSBkokhP4srTZ
	A+sUjdarw39SzAh6b7s=; b=aakGKykHaHKn9V/Czx7qvSHd3+orXpNVX/fgipXe
	dQgtYAT+KUdTadL4MgG/9nsAJF70C/o+adVbLjKzDnpBLZuEaimSK1Xhkfxvm/Jc
	2Q5ZoiK4OHfjjslfrlwOVrLK+TSOBQT06sJ/PjumZKJCLIKon/dKrHUoaRl1B3hn
	gFsve7pKv8zr/Ul+L6EbAh/CdzVrxuj+1+6vSbGiPWpAYH3mA59ObVGxiRmxV3xl
	o8Df6QOIIL03ZQVBF0cpVXcDZbxUoojOppgJZVAB1FFsumNYrx2tMWNsBsLa92mn
	fGHuXqrK/E6IvjGdVV2itMH5RH6JYFmFOu5QLbfvMoC9rA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47w5dpjnqk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 12:33:31 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c7c30d8986so265597585a.2
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 05:33:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752755610; x=1753360410;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vnoT4/xPZqftSBkokhP4srTZA+sUjdarw39SzAh6b7s=;
        b=iv5ugolvICW/WruX3GIphIHMMixPNfr6N1n+IJxDhQwRHx7lRdgBLTCMLgN8VQk7DE
         PCfTVQlp+TaAQOeCHCfwO0qO/NWUwVCL/OrKpuC1B4lpjwPuRT90j1n17Ph7v0bNM8rq
         YaljMjN7IiMr0PZd0FslISm2t7xgyJHwAhhD+yjTKB69Aeqr/O2WAUsBc/zmQ7TYKzP0
         wzSj+ZNl290FziKxagjYFqcHCENJa+e8DsMXlxakCoDv08mDMuWSxbF5hBzFWMAoqTFx
         1BincrLn/pEXjAkT16sGykzrHUW/5a91JFS2oALKFTIllB/ujBW6cUnBc2T4mXL2rqAL
         FDLw==
X-Forwarded-Encrypted: i=1; AJvYcCXfOy/dodtipIME3zgq+teanqd2/R11IYhXaT1UhZpmE+CNbGWYQfnNgUECj5bYraph+U6j2vOx/+4x@vger.kernel.org
X-Gm-Message-State: AOJu0YxuJsBEQkPHX0y4YTlC77I+Kdf50Hu52coYuRWho9eoDto3FiXS
	LGKxf8lNyveZtoPDVZv4gmDi5sZAJxmS00UMH7Lplb/f244bTTpoukZ0VHEMzorc7CShO1zkSW0
	hrRXLgT7tyNpuKVaZZhogvNkc4UDkcwZyt7S82hbQzg/pg7nBHTkrBPyzx9sCvrV8
X-Gm-Gg: ASbGnctbbZPV0sK6TifQEty32WtwNfVMo9W4nUosZ8MhUTDF3zrlI+0b2S1ni0jsYur
	eWRdiVcuAkcMfVDwT4WCB7l+Z5FXwb/VjUIb4UAH/+MkWMMR99e+SvNf0e0ZQZDh+UFM56/gq7d
	4qCAo3u/8E7mKG5MlWzGzsTWhhKCkPtXtyuRQQHspv4O4Sjk2bYgPB+hsg0HvxTYpI3IaYX47m/
	ekYmXh/W2eRnA7zaNg/CTLoziLtZUFCy3qO32SF7mzlsXXIPEUoWRX69HOCZGIQ23lxxhGkaDSV
	0i90rL2NqPdMyjsmbZAZLHli5zL/gxQTY9BsXlt79ipShQUOI8EnBIypyFDsqltDirSIwk5iJKg
	=
X-Received: by 2002:a05:620a:26aa:b0:7d4:57b7:bc12 with SMTP id af79cd13be357-7e342a628f3mr1054710185a.10.1752755610552;
        Thu, 17 Jul 2025 05:33:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGSnIBcZM6ZddE0sOAybyV9BkM2sMD+GB/jEshb6aB2JUCIRPwvnx1f3dg+qsl9snP6iSbjmw==
X-Received: by 2002:a05:620a:26aa:b0:7d4:57b7:bc12 with SMTP id af79cd13be357-7e342a628f3mr1054702985a.10.1752755610041;
        Thu, 17 Jul 2025 05:33:30 -0700 (PDT)
Received: from trex (153.red-79-144-197.dynamicip.rima-tde.net. [79.144.197.153])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45634fab0f3sm21467895e9.35.2025.07.17.05.33.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Jul 2025 05:33:29 -0700 (PDT)
From: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>
X-Google-Original-From: Jorge Ramirez <JorgeRamirez-Ortiz>
Date: Thu, 17 Jul 2025 14:33:28 +0200
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>,
        quic_vgarodia@quicinc.com, quic_dikshita@quicinc.com,
        krzk+dt@kernel.org, konradybcio@kernel.org, mchehab@kernel.org,
        andersson@kernel.org, conor+dt@kernel.org,
        amit.kucheria@oss.qualcomm.com, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 7/7] arm64: dts: qcom: qrb2210-rb1: Enable Venus
Message-ID: <aHjtmOlL8bp6lRze@trex>
References: <20250715204749.2189875-1-jorge.ramirez@oss.qualcomm.com>
 <20250715204749.2189875-8-jorge.ramirez@oss.qualcomm.com>
 <00be65fd-2a25-4b6d-8fb8-7a40f8ca846c@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <00be65fd-2a25-4b6d-8fb8-7a40f8ca846c@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE3MDExMCBTYWx0ZWRfXxOS83O8ryjG9
 zyeSXPxrSEXBnQhWGnZWNZFZkrZ6n6/HBMti0D4C9SMo9vccWlSOoN/dw8er6wRPlDty2bs7Gla
 BJLkPG72Dtl+7T6usp5uu70dh+T44fsV36Pz8r7hyqh88kq3O6a24s3uoAebcPPKOisKnpILeGX
 b3ByyHJcAv/xc4kSOalSsAHfBCWuSGnbrYGpd2FWTuJIdw/S3gu8Tu1aDMW3GDTW8U46yrFWI4w
 AFPPWXoAcG97KjAzEGRshOJMV4DwpVK6vQeC2EICAKD7wQ/fRqhsJ1rPAk9El9R2yURhe/0ze3j
 jMth4VwkUUkbAUeOqRINUwWGl06JEZEqUg0W903KrC+VKGcP1HX3MSbjHvNQgbuZ7AYnWLCtnnR
 EvphpocJM9+8X7GN/h9Z38a0Qm0rB59Cnl22NaL122U+xMz0+MCXs5BBktSwxtocb5CoooYP
X-Proofpoint-GUID: 2JubgZHrJ1Ywghn2FdHxh_VLqKlzHVpG
X-Proofpoint-ORIG-GUID: 2JubgZHrJ1Ywghn2FdHxh_VLqKlzHVpG
X-Authority-Analysis: v=2.4 cv=Y+r4sgeN c=1 sm=1 tr=0 ts=6878ed9b cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=Ki5fnJvzvo7yLsyA0quaxQ==:17
 a=kj9zAlcOel0A:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=pzCxKkVfxTIgAx5FXkwA:9
 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-17_01,2025-07-17_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxlogscore=892 phishscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 impostorscore=0 mlxscore=0 suspectscore=0 lowpriorityscore=0
 bulkscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507170110

On 17/07/25 10:45:52, Bryan O'Donoghue wrote:
> On 15/07/2025 21:47, Jorge Ramirez-Ortiz wrote:
> > Enable Venus on the QRB2210 RB1 development board.
> > 
> > Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
> > ---
> >   arch/arm64/boot/dts/qcom/qrb2210-rb1.dts | 4 ++++
> >   1 file changed, 4 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
> > index b2e0fc5501c1..8ccc217d2a80 100644
> > --- a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
> > +++ b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
> > @@ -711,3 +711,7 @@ &wifi {
> >   &xo_board {
> >   	clock-frequency = <38400000>;
> >   };
> > +
> > +&venus {
> > +	status = "okay";
> > +};
> 
> 
> goes here

sorry, didnt know

> 
> &venus {
> 	status = "okay";
> };
> 
> &wifi {
>         vdd-0.8-cx-mx-supply = <&pm4125_l7>;
>         vdd-1.8-xo-supply = <&pm4125_l13>;
>         vdd-1.3-rfa-supply = <&pm4125_l10>;
>         vdd-3.3-ch0-supply = <&pm4125_l22>;
>         qcom,calibration-variant = "Thundercomm_RB1";
>         firmware-name = "qcm2290";
>         status = "okay";
> };
> 
> &xo_board {
>         clock-frequency = <38400000>;
> };
> 
> ---
> bod

