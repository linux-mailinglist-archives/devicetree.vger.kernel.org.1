Return-Path: <devicetree+bounces-236817-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD5BC47EC6
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 17:25:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 408544EF18B
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 16:20:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99CAB27A476;
	Mon, 10 Nov 2025 16:20:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YF+YyA4B";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="C9ooI2u4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03359279DAF
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 16:20:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762791607; cv=none; b=ln/Sq5obaqm71LxMuVtA5n5zamJ8Q5kQQLiVq84rs6wXb6NTiIw25XZPs2DiNk/GDubBhX10BuS2DSuze2BSxHzP3+kJS/LtqEGJ7vcSlWDe+9+1lT6q7zyzWdsC6KZcWBQrYsuh+1/25nBDK3lDDqnxB9U56DxKOzEGTGFaMcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762791607; c=relaxed/simple;
	bh=Okmp1V1aP0M/1b97PdUZmHEmWA+b86cEEei/tDkcrA8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jK0Bnyp5oR4fI+FwJyM3GAlYb0Wd0KqgUwpYC+o2MM3cJ5wddD2tKT7EbJUJLC5/Vcl4YMVUP6IJjczNbmd9/p1+KrIsuXtk2swDfTZNyweIOMZnohMZjWwotASkEBEEUTnvpxE9CBtY48/Zu+Mh9AbNBoq998g0QHIVewA1L68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YF+YyA4B; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=C9ooI2u4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AAFCup91528423
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 16:20:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=0sM2q8RKz6zYFpfMlWBDzUvl
	P9VxO7a2GrQ9E0VMcW4=; b=YF+YyA4BrpzqXVsURzP1xOfVNfFfRdevhCYfkeGC
	9TxAQLAXC8PXVwtEKnGk0vx2HOdELRa6JKoxEGWRt4yqw2yq7+XZG2SeeDRYMNAa
	l9V+MHcIWSJO19hqKRNNm7Fcv5393LU5lBQM2fraV9vXCqBZvWKhJwZFEgMqh2Kd
	SS8r68QHOftnRmhw8JAh4lOPmCDI2nKBNCItTKxzjgA0XBpvahvlgxb5Jx5dcHEX
	CZDoOD6Lf2WXbano/Dbk4jqq2Q0nFQ/Ig52xe5qv5NEnGrdTUXqWRptvoPhhm9X0
	clW8tNEwWUTXthPCVjiw5J76p/7ZT2Eeg8Zkc0W2TcBHdw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a9xvjddu4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 16:20:04 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-297b35951b7so55336105ad.3
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 08:20:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762791604; x=1763396404; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0sM2q8RKz6zYFpfMlWBDzUvlP9VxO7a2GrQ9E0VMcW4=;
        b=C9ooI2u4fAoJwzoIcXGXgP6fVRgpmh4gznjVCHtqtJ3wvyDe46FomfGLDzpRSmAua2
         FrqumDgsXqhi7n3U4O8sRRh8PWZ6m59XolkKmikPP9NeLvUciQem9+cB7va7TDUq39ct
         MJm26ayEKpT8PbutBuoEEabRaZRMkU6HxruTjBHwi7H1WQKbyolP7I0gelRLFw+Wq2xp
         UIfclKnDVLb0c6bWtRogfLPwA8katBCmaIyWSpT1441Ch3HZcufNXp+mV0smmpcx3tdt
         f+PiXkA6bSQFEpWFwRIW4zr0mve9TqVmZXL1BtC9NtTT2xCwzZkOOpQ1p55qMFxeV93W
         ErPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762791604; x=1763396404;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0sM2q8RKz6zYFpfMlWBDzUvlP9VxO7a2GrQ9E0VMcW4=;
        b=Riw/whBbu+R8aPrf2HRZA12oKtet0r+YzO5bUnc3PQSlWQgtjQjTC9pY6wuuYl07Sh
         rmN/hQT17FvGk+dZjutoKaeHjZWQfl21CuvTMRsXlVlzub2ZIip4AGYb6bdpIIJAuRL/
         3vtseCSJgfZbgA9amb2xI6YBgs14xx/U7SNEeEW90OBtY3kgRoASxDwbfBXFbZU1zcVu
         wypxi7q++R8J2N2FBrQRysUyU2yE1rAeq7GWB3j6ZmddVsf7DxXf5YsvKEY+YdrN+T0u
         FY/TAy2go1NN7IZTqIFvpS+z1hvNGw6N2Dl8+pNOdLKGEc3XJKHP8LgzMW6nGlnaN94R
         XjCw==
X-Forwarded-Encrypted: i=1; AJvYcCXfKS63rRxmSM11nfNMBAbafT3d5ACYAcTCEj+TheSYaWGqhzYLMaW6MtlRUVTa+LMGQtSRqua6sygi@vger.kernel.org
X-Gm-Message-State: AOJu0YyqqZgMsCbUc0uzj5OrG75b/LZgO42afgKHppFG9JYW2iDRWkip
	gacsAs5jfyfPoga0z7I6TFuIyEPIWWMuxUuCZkfRT18LMtbxYXLWFytp3lW9YAU0OjovNQjugzh
	Lp3vOgF4UdMycb6m+1Ei3xgrnb888As09Us9tbeU0ZDVFvmhBt72p9MeUHIN+ZeP8
X-Gm-Gg: ASbGnctdJfQ7ujWlIIIgJ9zjoTPtVRXIsUh+qrYFFakS5QtNbct7RoFbdt1eM9xjpl+
	iJrDsRAonRi9VyD9eVaaOryvoWTLaE7Qlhl9htOXVB2ShmIYchb71AQknKDHvkREU2X8bXuiiXK
	VTUy1oyDHcde6XsDowwRzMDg+rr6/NjE+2CVU3U1h6Rl4FwOkvWxjnIE+wFAV4Wa1sOOptwtO9Z
	by403p/U2CorRpAUXtLM8uQgXFNAuapg0vbHicgNUDUD8cBRnvctPSQhMK7zalzAx8pZIcQtxDF
	6wNFwPMvgxEHmCGfCViOcnHSWDWpY5l48p6FqpSRys5SdUqgFrH+uJWdeSBoFIhQWFrxpRZfRdy
	i1FWBhkh2QimA/aHSzdFwEFbiLQ==
X-Received: by 2002:a17:902:f790:b0:295:9a46:a1d0 with SMTP id d9443c01a7336-297e56df960mr117467415ad.45.1762791603550;
        Mon, 10 Nov 2025 08:20:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG7/8Fhqh9sYUBGXPksH62bwsPiXbsk446L8P97AUqBc08psSx9mBm95lEOUykYcVj8OBSpvA==
X-Received: by 2002:a17:902:f790:b0:295:9a46:a1d0 with SMTP id d9443c01a7336-297e56df960mr117466835ad.45.1762791602913;
        Mon, 10 Nov 2025 08:20:02 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29833c8a159sm22346285ad.69.2025.11.10.08.19.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Nov 2025 08:20:02 -0800 (PST)
Date: Mon, 10 Nov 2025 21:49:50 +0530
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Andy Yan <andy.yan@rock-chips.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Vinod Koul <vkoul@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Moritz Fischer <moritz.fischer@ettus.com>,
        John Stultz <john.stultz@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Andre Draszik <andre.draszik@linaro.org>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org,
        Elliot Berman <quic_eberman@quicinc.com>,
        Xin Liu <xin.liu@oss.qualcomm.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Elliot Berman <elliot.berman@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v17 09/12] arm64: dts: qcom: qcs6490-rb3gen2: Add PSCI
 SYSTEM_RESET2 types
Message-ID: <20251110161950.ngs4ihn3asijoqks@hu-mojha-hyd.qualcomm.com>
References: <20251109-arm-psci-system_reset2-vendor-reboots-v17-0-46e085bca4cc@oss.qualcomm.com>
 <20251109-arm-psci-system_reset2-vendor-reboots-v17-9-46e085bca4cc@oss.qualcomm.com>
 <20251110122824.5je5jfoanivl6xrh@hu-mojha-hyd.qualcomm.com>
 <btvknf3tcqhgxzf7ckyvfwix6hxle2bs4whyayan5haaejo3sm@gnbszdys32lm>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <btvknf3tcqhgxzf7ckyvfwix6hxle2bs4whyayan5haaejo3sm@gnbszdys32lm>
X-Authority-Analysis: v=2.4 cv=QuxTHFyd c=1 sm=1 tr=0 ts=691210b4 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=kj9zAlcOel0A:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=kPHPC4wJSQ4ZMXu5alUA:9
 a=CjuIK1q_8ugA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: VvDlcXLNWj4h5R39F68XhdczfPm9_SGX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEwMDEzNyBTYWx0ZWRfX06CVqsymrGnr
 tr/YtoB1iPr7BX07ZDUO9HlymHqrk7eQ4vsWDSGw76Gq2gACbN6a95uWU/fe7b4jQfOjZGovJIq
 i0rjGG0jnTeiFaiwtbyOn9EN6KloxHwwa4xW7okExDe7ZYY5T7V1bZvxquCkLwseGvPzyCk7qvm
 c0ZqtT5mQvbIUXehMmQiOhRK+ZlkKnMSAmSx1pBr4OA7j0LRDHD5dkZavW3c4sn53qaY/6dFhrN
 KldsEPgssFo2iWfwf3BrSFUFXfJSEi2YPLRqL+xhFZAYSp9iUwxed8hsHCsYKJDuu5gD/iI3bdX
 R1jhbQQCdf5L3Rr4f1ofytP0hw2Bh+TYrYy1T28q7I5ZUodgZp+Q2MGCdsEHNonYZ8KRdehlF0/
 hWx3QitbE6ElXaBZkDAze1U117zr/g==
X-Proofpoint-GUID: VvDlcXLNWj4h5R39F68XhdczfPm9_SGX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-10_06,2025-11-10_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 priorityscore=1501 adultscore=0 phishscore=0
 spamscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511100137

On Mon, Nov 10, 2025 at 09:30:26AM -0600, Bjorn Andersson wrote:
> On Mon, Nov 10, 2025 at 05:58:24PM +0530, Mukesh Ojha wrote:
> > On Sun, Nov 09, 2025 at 08:07:22PM +0530, Shivendra Pratap wrote:
> > > From: Elliot Berman <elliot.berman@oss.qualcomm.com>
> > > 
> > > Add support for SYSTEM_RESET2 vendor-specific resets in
> > > qcs6490-rb3gen2 as reboot-modes.  Describe the resets:
> > > "bootloader" will cause device to reboot and stop in the
> > > bootloader's fastboot mode. "edl" will cause device to reboot
> > > into "emergency download mode", which permits loading images via
> > > the Firehose protocol.
> > > 
> > > Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> > > Signed-off-by: Elliot Berman <elliot.berman@oss.qualcomm.com>
> > > Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
> > > ---
> > >  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 7 +++++++
> > >  1 file changed, 7 insertions(+)
> > > 
> > > diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> > > index 721a26d49ccaeb1429e2cc1c3a5c8d9517da3be6..cebdedd5d614b9efb6dfbee91dd67f3c3e322a38 100644
> > > --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> > > +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> > > @@ -935,6 +935,13 @@ &pon_resin {
> > >  	status = "okay";
> > >  };
> > >  
> > > +&psci {
> > > +	reboot-mode {
> > > +		mode-bootloader = <0x10001 0x2>;
> > > +		mode-edl = <0 0x1>;
> > > +	};
> > > +};
> > > +
> > 
> > Make sense for this as it leverages sc7280 and adding it there would not
> > have made sense.
> > 
> 
> Why wouldn't it make sense?

It is better to add for platforms we know their firmware support this
from day1 and not add for something like chrome or any other variant of
sc7280 where this support would never come or not tested.
> 
> > Acked-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
> > 
> 
> Please read submitting-patches.rst about Acked-by, and use Reviewed-by
> going forward.

I was acking the idea of this particular change in platform file compared to
other patches, if above reason looks fine, can be converted to R-by.

> 
> Regards,
> Bjorn
> 
> > >  &qup_uart7_cts {
> > >  	/*
> > >  	 * Configure a bias-bus-hold on CTS to lower power
> > > 
> > > -- 
> > > 2.34.1
> > > 
> > 
> > -- 
> > -Mukesh Ojha
> > 

-- 
-Mukesh Ojha

