Return-Path: <devicetree+bounces-273759-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kE7EGxCgsGkwlQIAu9opvQ
	(envelope-from <devicetree+bounces-273759-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 23:49:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D01D925913B
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 23:49:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5359831850A6
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 22:49:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C89273BBA0C;
	Tue, 10 Mar 2026 22:49:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="obIyBVFt";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="abz417BW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D6462FD68B
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 22:49:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773182987; cv=none; b=faiCrvubi9jlu2bQk2hE1CwJhWCniFuwv0ydoJgi1RNAAzEEArQcbZ5vFMZw0vRtj7inYq7GsQgUTZpAraKW/FS1RiQgVxsLjiNcnt3xSF439H8hvkdF9l44nBYf62vuk4Ja6Kcm1m0UujbtVvtsZo9Xt335A3ymSKJC9dIsvGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773182987; c=relaxed/simple;
	bh=v+ZrcU91c9QASxR+/RihCw2I+Gl+m0lEe0t7KdGOWi4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lR195R5x6yuyIHHPIgFfp6tMy2Og38m2RipSH98IofUDURYTQ7eYAA3Htx7KJy+AreTJLq9p8sORKt514wFfNAOgZs5KG5M+iMynztj3p1p2WnrUsSAD8vKSJohUGDUfbmQK4DhaPyknOlx6Pp7tZrhLAzUfb0gFflYmf9CTdGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=obIyBVFt; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=abz417BW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62AHD6Wr1573310
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 22:49:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=S7mCBQwqvdOhvHU+bn8EBLkX
	cId8QXMT47Sfa58+8jk=; b=obIyBVFt+79DC16AzQUqigA/T/WocKANZpvD0BDm
	T9rw2E/X5zIJ0XoCxLlRGJwWkPAEMJwfctWulgnZOj6I4+77+zLIClFmn9SrrxNj
	snqLjbdBSUIDzRbqUIH+pUGHxfGoplbMQDOoZsWqFbEVoa+fuQ9uWrSZixOVrziZ
	ounFG4GGHt0vT+OKx+A/Wi7Xie9TJv1DjlPSwKRfrF/IZY/BaLMpJOmWOgVgEf/D
	idURrXiOr0btLB/fYlVoNaqpvnGCSK84RvSHd3vaR/WE3/Ew28c6CIG5ShswjXEk
	GbdCi2rIPqpRKENKtEX3GGAiP8wkYSEGAeklEci+ww61FQ==
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com [209.85.222.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctqgk93h5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 22:49:45 +0000 (GMT)
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-94eb42456bbso3039770241.1
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 15:49:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773182984; x=1773787784; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=S7mCBQwqvdOhvHU+bn8EBLkXcId8QXMT47Sfa58+8jk=;
        b=abz417BWXpgS36vNsBAhFzusrXD88fEfSw4x1Ullu40lM/ZwEt7KuMCAxxJbQlc81G
         f0+TIg2EUyIQh+Pq1qJpFCM58uycnMuRRbBlcA5hZTsnpbYFxDidfUI1FL3ikwljJSzX
         etEIHW/G6DpEtiKOc6ZiBa9NJkgAw8tYqr6EYa6beR9DMj+ToR1cfz7XBCcvjXkF/COA
         O8PrftvTajjlPtdzNln0WkrqH8ke0O7iYZV9vEC1ftS5ox5nv9NMDGWBknrCoG23GiVv
         gYy7kXMJ2/bYVON3qPdS7i6iy//oNl3LJDa0TT7qgySCeAT80Acd4zFW0pBKGX27nrKf
         Iehw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773182984; x=1773787784;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S7mCBQwqvdOhvHU+bn8EBLkXcId8QXMT47Sfa58+8jk=;
        b=ZruqjNt6wScHarLuR/7/SF97gnKIxyYGImMFCQ4R03uJK9Bk/E2q5rNghVCd79ClTM
         yCAOw+tqq40yAEtDnmPtHHfoCofWKQUx/sX0l7Hkpy/xobPU0d+wod2yimkaAEEvJbov
         eGA9pLcpj3Rh4nmQ97N92IpV0JAjQauVOXGm69n3KSXlgXXJwnTdTWKFCEV55hXzvgdG
         jFtq6d1e3vXDLIbBgMgafDGNzj6o8T40ZcsyskqfW9YFQYJwn/cT96NzR1v5XENlGy8w
         /lC9fHqw8TNaiZxROG2EBxqWmxD0FKuhkSCd7DCi1tuyY+4dEafi18UlSB+9lTkpOfyW
         cL9g==
X-Forwarded-Encrypted: i=1; AJvYcCWk198GFslXDJMNJ0KOMX/qI5j94ceF2t0GlmXi4kuKKqxxHgGFlAPt/AyXuzmos7sJVut5Hf5N40xX@vger.kernel.org
X-Gm-Message-State: AOJu0YwdX9vRuhfQ570O/NxayM/MsrLTUa954omxgPxSf9N7oCqWsM50
	kcTwYoFdfrJq6I+3BsKn3GlcMeDb6eGBxQCugfc0Ky7WaVJi2EwuyxuYcr+7YUbClwDREdZxfPQ
	9CYriG1JZUuSPWky7/MoBRn9QFTjRFSLb4AObwCxYMHofPDpcYuaql8vUJmK4eibJ
X-Gm-Gg: ATEYQzyvCO+8z72c7iL8NU4iCiloiOHJEmgC3V8sdn0CR2L9SGJvI5P5MxTssvEX8Y2
	iv7gyM3GDm0udDQQsygrrv1g3fT9tM3Glz3PdocVzx8NAxyGwdstNWCjbgS8PKE//ROrGnj91Kl
	eUSndhGlb7HXLL+JhsjAwIp4d/FXpGgt8B4DkaqSluPIg+00PnJKIzkAk/H9Ga/GEMSX49+kK3v
	66L1KOOgIFC5l7YghNlN7MxlX9b0hDlWeAPhEBZPrtGDT+OIfyrxq2jG6viLfwo/p+7CpvElAVX
	VmQY6bDVCI19QSMmJaG6GvztJ+xDMTQAxDoU06FOVt5/3T6J4OObULKTmC1V/kA0BlnnpI3qcR3
	aFKjdYsZ9iN8zSrzVyHj9pPJUFVzhiNfmLcX7WNdqOVqYwayEHGjaOFzUHE/Zetns8M0BOq4PkK
	OkAVIWN5iCzyCy7SgEHiGulE9YydwNYoYEJ/c=
X-Received: by 2002:a05:6102:3ed4:b0:5f5:459f:9860 with SMTP id ada2fe7eead31-601def7766bmr195764137.28.1773182984518;
        Tue, 10 Mar 2026 15:49:44 -0700 (PDT)
X-Received: by 2002:a05:6102:3ed4:b0:5f5:459f:9860 with SMTP id ada2fe7eead31-601def7766bmr195758137.28.1773182984023;
        Tue, 10 Mar 2026 15:49:44 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38a67e7908fsm559781fa.42.2026.03.10.15.49.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 15:49:42 -0700 (PDT)
Date: Wed, 11 Mar 2026 00:49:41 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: cristian_ci@protonmail.com, Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
Subject: Re: [PATCH 5/6] arm64: dts: qcom: msm8953-flipkart-rimob: Enable
 touchscreen
Message-ID: <6ddgxby2wzaa7mfbc64a4ld2rdbo6427csw6blzg5alstvkfv3@usfqftgctnzs>
References: <20260308-rimob-new-features-v1-0-aa2c330572c0@protonmail.com>
 <20260308-rimob-new-features-v1-5-aa2c330572c0@protonmail.com>
 <f6029a8f-07d7-4872-813a-ff98fd11b5af@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f6029a8f-07d7-4872-813a-ff98fd11b5af@oss.qualcomm.com>
X-Proofpoint-GUID: 6kdnefmIGW7k0QyQ4jUa8jexlcuFF5PC
X-Proofpoint-ORIG-GUID: 6kdnefmIGW7k0QyQ4jUa8jexlcuFF5PC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDE5NCBTYWx0ZWRfX992/j9eD/oeO
 VN4CUziemqg7yv2HhoufZnso0VcdTutjqYoP8y9TlSlSDw+kDSg8R5AWTZkm6LZvNXDd06d+I3s
 gL1fq7mHpEwccW2iG7+FIIA9Jzn7xRB3Hn5y2LPK9an2PqVeop+Pn3+jnPPFvAMPkwrbgcmpYuP
 FBlcH5At4oapso7IpY1G14w5OufEIxqIah74T1G6G55GomHZru+SVmg05cEHA2GL1NOy7GAZZMu
 50G5oqtc7AarTY2nSBHp230fHEzeoeyZ6tjszALsXY5Zf7wRQuYqGKjoGve5YMCiynYcIlKPt0p
 t4rv3eXsGQOu7wh1NmhdVxgqxLz076Pfj/MD91CKoFVsyqwgdu+1+/+sCTMzwKAWEuBv11rKWQ/
 N/44CrWPV3NFF7sX1Dk29A3gV6NNxjLseFXzBfTOTcYUHgSdChFv1By1TsJlY17BapjuvN2fiJK
 FoMhJSj3MpVAhaK4XqA==
X-Authority-Analysis: v=2.4 cv=M4JA6iws c=1 sm=1 tr=0 ts=69b0a009 cx=c_pps
 a=ULNsgckmlI/WJG3HAyAuOQ==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=sfOm8-O8AAAA:8
 a=cDFCKFFyOUkPfWTXbrUA:9 a=CjuIK1q_8ugA:10 a=1WsBpfsz9X-RYQiigVTh:22
 a=TvTJqdcANYtsRzA46cdi:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_04,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 lowpriorityscore=0 phishscore=0
 impostorscore=0 spamscore=0 suspectscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100194
X-Rspamd-Queue-Id: D01D925913B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273759-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[protonmail.com,linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,lists.freedesktop.org,vger.kernel.org,lists.sr.ht];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,protonmail.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim,5d:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Tue, Mar 10, 2026 at 02:08:40PM +0100, Konrad Dybcio wrote:
> On 3/8/26 4:52 PM, Cristian Cozzolino via B4 Relay wrote:
> > From: Cristian Cozzolino <cristian_ci@protonmail.com>
> > 
> > This device uses a Goodix GT5688 touch controller, connected to i2c_3.
> > Add it to the device tree.
> > 
> > Signed-off-by: Cristian Cozzolino <cristian_ci@protonmail.com>
> > ---
> >  .../arm64/boot/dts/qcom/msm8953-flipkart-rimob.dts | 32 ++++++++++++++++++++++
> >  1 file changed, 32 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/msm8953-flipkart-rimob.dts b/arch/arm64/boot/dts/qcom/msm8953-flipkart-rimob.dts
> > index 7b2849405462..709ea6fc9fbb 100644
> > --- a/arch/arm64/boot/dts/qcom/msm8953-flipkart-rimob.dts
> > +++ b/arch/arm64/boot/dts/qcom/msm8953-flipkart-rimob.dts
> > @@ -94,6 +94,31 @@ &hsusb_phy {
> >  	status = "okay";
> >  };
> >  
> > +&i2c_3 {
> > +	status = "okay";
> > +
> > +	touchscreen@5d {
> > +		compatible = "goodix,gt5688";
> > +		reg = <0x5d>;
> > +
> > +		interrupts-extended = <&tlmm 65 IRQ_TYPE_LEVEL_LOW>;
> 
> interrupts *and* irq-gpios sounds wrong.. and I think the driver doesn't
> even consume the former. Trying to read through some of that, I think

I think you need both, take a look, there are enough users of
ts->gpiod_int.

> it's on purpose since the IRQ GPIO is repurposed for setting the I2C addr
> (which nota bene doesn't match between the comment in that driver and this
> submission - perhaps that's just a SKU difference) during the reset
> sequence
> 
> i.e., does the touch work any different if you drop the above?
> does /proc/interrupts differ?
> 
> Konrad

-- 
With best wishes
Dmitry

