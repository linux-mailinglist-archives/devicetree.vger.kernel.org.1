Return-Path: <devicetree+bounces-257650-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GHWPCyoLcGlyUwAAu9opvQ
	(envelope-from <devicetree+bounces-257650-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 00:09:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id CBECD4D871
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 00:09:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 3BAAA7F023D
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 23:02:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9A4C3D6468;
	Tue, 20 Jan 2026 23:01:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YoVhoj4p";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="i7dTltIl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193143A89A4
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 23:01:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768950119; cv=none; b=YDSIumV1QqdMaAvakQTLgnpcBOahGz6/phfi0OLRXnMX/8c86UukNfjZMKGBTc65DoVLnnuBIGZqLECd5qxBj7OPOe5ftNkSWpgpONhDjDskC4wICgj3zQSBVL9lelBsv3Osue8LF8VtTuVbR6qYpTChPhvzOnAQEWrtQItkyD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768950119; c=relaxed/simple;
	bh=t+/M7AMxsNKyld1HAtAZFbOAFuxlgGyqxZN4bkv8jUk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qjhUV2FT7o/Q6tCHCAqFVCFG4iKqA6S43gF03FL5KDzxJtl3it98/EadB0ln0GEKn9hJ/NqYzmk+t7R3gmNrLGYhgeqSgb+GXFZVdPpT5fG9XVHjt0tiG8xcHRkVxTXI9emerJFDsdx4nUBON8uuIpVAo14vY9gcDPFCYQRCZPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YoVhoj4p; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=i7dTltIl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60KGwe1s3256451
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 23:01:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=oE4PaYGzYaXhy8w8vjo5VGVx
	HqpQZf2BpqUA1vqR024=; b=YoVhoj4pcWBhDQSoJ9y54qnZ2oagcEaEQBRJ8+I/
	X9YZGMMI5cUt0E3KZuooc3Kml+lErIHZAPVv8xAlIKKYMCUs45dbooa1aWc38vtb
	PWaEioLICIbGlZzq1rgagUIqAaYYsD/WQoDVvxjrlP/aD5xuNFDWNZlKatfIZ1yk
	IBVrh3t1JApYOq4YrfK0knFv8jtToRl1HaCcUiNSddWXM6+UPHnd8sCmSiYDLR+7
	tkCfQE/vYth83uSD2GMLEi1HQtpClypGb6XksvPCru/YxNd3qj9fEQ9BiboO1Gqh
	PgioXehUA6KZgPXwiCYbP6xxhVv/aSN8QLmcT+U6SPKC4A==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bt6u7tmgc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 23:01:57 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-5ec9a4e6cb0so5263227137.0
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 15:01:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768950116; x=1769554916; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=oE4PaYGzYaXhy8w8vjo5VGVxHqpQZf2BpqUA1vqR024=;
        b=i7dTltIlDIpC+15HQyHaoW4wYwh0N1Cm7mvK+UlblsveqLO79izI7iQVYpLE1Crcu6
         VdnYcq7w/3yvff6TmtX27IDkdfoMxtFxwgS+OYeUQiRHNMJGrZhb7b4OOyFjfJrTPGDZ
         UiFrIz0dH+S5KzJgU7DW2T/OAIMaAISUu7DsAvsr4/vdG8RW8Ew6k/MrebwcmVE462ct
         /Ak7uiDhb7g49m0b8vrgJxI8S1ARMhiPb3OGtXSQtzE8ItCbK7goLDrkurgImelcmx32
         pwx27gDUDdBUyzVwKp98h11TH2nTALPT+45qGrKhQJVXAjecX6Tk/tzzLTjeM8gKmJuB
         /83Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768950116; x=1769554916;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oE4PaYGzYaXhy8w8vjo5VGVxHqpQZf2BpqUA1vqR024=;
        b=fMU7TvSHIeV2Gwr/y+O2WPdQeglze4Sidul0LhlHMk+spX/khJfqQL3qUiOXc/6+1/
         Zp9iyQckFndtDyVCgR/6nc5OhfuI6K9EQsMZgGhPwoY4G8ekCsd13iAvwBmYoqYTkgwg
         HjaOQzW8w1Qw7FTU4IbeCM+Ft/veQvgtnMGkvou8Yp9ZsN7KJ0r0/zrqpIO85xSagsIY
         YDnrNvMK75AyDybLF9Mnd+yqZFRn4D5+4VEf0RnK8LS4dVeNrt7dU9VsRNvqa3WnCBKP
         NP4djszxHNrApLTrBsPzI54x3lggp0CGyGrY7QsmgR0QM+Q5H9CvUD8DXIDupQrmKgDK
         pJ2w==
X-Forwarded-Encrypted: i=1; AJvYcCUoI3v3bE+yKfpNksiVvcCzA47MhBRdcXJa3SMH8VEw/urMrANhORwELy33Sq4E4CePh1iupzSofTKy@vger.kernel.org
X-Gm-Message-State: AOJu0YyoS30SqdUn84sEwXyZvgJOh3MGrpWPbu4T+JvHO6H9LVZsdS3l
	oov4qnl8D/xtk+UCbWDrS+XNfUyRrZZVeHwhbpg9RkodkaVRl16jcOw/+54wGhmvNevTsDcJkYl
	sxOZLaCqKSGCCzGDt4mILWRMo6i8WYS3g+04s2xKV0aJjlyKIocBNyvWz8nyAKSu3
X-Gm-Gg: AZuq6aKBpKCreEkCnf0USjoZTfKDje8cK+SK1rypqFJoniYExPq417x8JjpMZilprcQ
	oH5vpAHLCjMc00d6Zdbl3kb3kZGBcNsPi7XDBRzoJBmuarlYEpyw6hSUvATc3ZOHD3dUbVPGnJJ
	TcBAkav3kMyjQFwOCW6JNTRqEKymZ5USstL8dTM8cOLNXruRsLW2yJZMbNyIvNt2E+H6hlWsfD/
	tAo3xT/xsPKEWcMXItWfZldxFofiT3zv5dkxYo8yBDQ2yra1SIbOA7WVy/uLoT1KWnTEHm5ECKK
	nJpTs3fhiLtdTqnqWe1pZNJ0zXVtYUEVkrRwUDlSKQSBrHze4/qVTe0BcNzT43y5aQQpkyjxwWP
	8UFWkpb8JxCrmPIPZNtyBFiAZhMVpRQVNmJU/poqpH+W9x3yjvmAt7rASIY+VTGbCdYhd53LJxz
	JlWKwrUuyCv55IRTSN9UBZwzg=
X-Received: by 2002:a05:6102:f13:b0:5f1:bdcb:f1b2 with SMTP id ada2fe7eead31-5f50ab55266mr1230890137.19.1768950116406;
        Tue, 20 Jan 2026 15:01:56 -0800 (PST)
X-Received: by 2002:a05:6102:f13:b0:5f1:bdcb:f1b2 with SMTP id ada2fe7eead31-5f50ab55266mr1230834137.19.1768950115913;
        Tue, 20 Jan 2026 15:01:55 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59baf352846sm4418101e87.38.2026.01.20.15.01.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 15:01:55 -0800 (PST)
Date: Wed, 21 Jan 2026 01:01:53 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: petr.hodina@protonmail.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sdm845-sony-xperia-tama: Add
 bluetooth
Message-ID: <b2as6rclyqawtwuhyp3zv42f2zvbgzsbpamr2znpok6fvrqz3z@i35o5vhbm5g3>
References: <20260119-akatsuki-uart-v1-0-238f4da4fa56@protonmail.com>
 <20260119-akatsuki-uart-v1-2-238f4da4fa56@protonmail.com>
 <865f145b-2170-48c3-a412-a4f22fbcba8e@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <865f145b-2170-48c3-a412-a4f22fbcba8e@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=P/w3RyAu c=1 sm=1 tr=0 ts=69700965 cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=sfOm8-O8AAAA:8 a=XR8P7VQPE8jAVp-dJUYA:9 a=CjuIK1q_8ugA:10
 a=gYDTvv6II1OnSo0itH1n:22 a=TvTJqdcANYtsRzA46cdi:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDE5MSBTYWx0ZWRfX6ob54ImGupyI
 DelOY1S2DkWrZaEUnHM/LyRMkVgaTb9VIMZxx+uj+91bavWYSEsxH0NuRSSUf+u41ePHTY6ZhnP
 XplQBt5bmi1LJeqyGq2XnIVmUOOVXDYlNaQrt1Sfy7oedtNr3S8G36kH6Xfm1anug/OWFRIGNhb
 L/abZzUaG4klCghALXdeXFIUCJvrXhojZV8wE1o1oagBJCOqKZMVb46cj265mmUeEE6mCIDUmHY
 EFgFyaV/SlUjlUdAbihJZAzKTb6TMLSJP2hLAXmyI19z2fN9pTwFqOMqnWGOGEhJ1LtZ8cdtsmR
 0MPwB37QOpjYuONQiKy539AIttkhtF6nvyTX6Wnni1P7/vwHvDBau508Cf1EnNqtil/+qrcOPgs
 Cv1eeloETieL2lgrNODKRGecr1uhoAQ2ajmAQPy9ttjYd46sMcE2QljcSyu8R6OCK9Y/jV0wps0
 3kWb/YRm0T0K8iOOwlA==
X-Proofpoint-ORIG-GUID: lGM0goVeedATZ7ZUf_3Tl9CgoS0v4Pxm
X-Proofpoint-GUID: lGM0goVeedATZ7ZUf_3Tl9CgoS0v4Pxm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-20_06,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 bulkscore=0 lowpriorityscore=0 adultscore=0
 clxscore=1015 spamscore=0 phishscore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601200191
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-257650-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[protonmail.com,kernel.org,ixit.cz,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,protonmail.com:email,oss.qualcomm.com:dkim,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: CBECD4D871
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Jan 20, 2026 at 11:22:51AM +0100, Konrad Dybcio wrote:
> On 1/19/26 12:58 PM, Petr Hodina via B4 Relay wrote:
> > From: Petr Hodina <petr.hodina@protonmail.com>
> > 
> > Enable the bluetooth interface on the uart6
> > 
> > Signed-off-by: Petr Hodina <petr.hodina@protonmail.com>
> > ---
> >  arch/arm64/boot/dts/qcom/sdm845-sony-xperia-tama.dtsi | 17 +++++++++++++++++
> >  1 file changed, 17 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/sdm845-sony-xperia-tama.dtsi b/arch/arm64/boot/dts/qcom/sdm845-sony-xperia-tama.dtsi
> > index 68841e036c20..f23f9757a08b 100644
> > --- a/arch/arm64/boot/dts/qcom/sdm845-sony-xperia-tama.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sdm845-sony-xperia-tama.dtsi
> > @@ -755,6 +755,23 @@ int-pins {
> >  
> >  &uart6 {
> >  	status = "okay";
> > +
> > +	bluetooth {
> > +		compatible = "qcom,wcn3990-bt";
> > +
> > +		/*
> > +		 * This path is relative to the qca/
> > +		 * subdir under lib/firmware.
> > +		 */
> > +		firmware-name = "akatsuki/crnv21.bin";
> 
> 'akatsuki' is the codename of the Xperia XZ3 specifically, whereas
> you declare this in the common file.
> 
> If they all should/can use the same binary, let's rename the path and
> if they have to be separate, let's declare that
> 
> You can probably grab the firmware images for all three (four actually
> but I don't know if anyone has the XZ2P) devices, dump it from the
> bluetooth/vendor/firmware partition (can't recall where specifically)
> and diff the files

I think it's usually bluetooth_<ab>. Corresponding image name is
BTFM.bin (if you have binary images).

-- 
With best wishes
Dmitry

