Return-Path: <devicetree+bounces-240751-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id C1196C751BC
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 16:48:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 1ED4B35D42F
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 15:41:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A470A2FE564;
	Thu, 20 Nov 2025 15:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UZI46eVg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C71832D5A16
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 15:31:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763652713; cv=none; b=F8bA355iY/DQ506Zmors/9qfY6jxWoZUyx3WF68w6VHhUR6Gp9twRjCe05/buI/pKswbE3ztD+/Vnehx3DtMLBM8TORl/+57Rg8LhcdQCrRPE2mqVIpmPALjE361lO8K6H+jyQ5za2c8M0AD17mNvjlaucvypin/m3giY+Atpdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763652713; c=relaxed/simple;
	bh=dtzyF3iuy8kapZsEsjKfyLmM+ZoFSdqs8IgBpnNu5ng=;
	h=Message-ID:Date:From:To:Cc:Subject:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=imlTcV694L1ti52d+qoX8Gz+i7G6/AisWA4dKIUmKXQcUuaE0V3SPrmx5wDPut9qGk7gnBYOfKa4x+sjBTwxz6UrCaRv20oWSMEtJ8nVPL9NHrpI1FZH2/DUkvDK2964ITD3NRblIEQajEoo2lXnAcwmXAtlm/caIBx0yaeyjDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UZI46eVg; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-47796a837c7so6929835e9.0
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 07:31:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763652710; x=1764257510; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=vIq/O0/AL91lguWZ3GTEHU1lL1GNwH+lI8GY9Jzrdtg=;
        b=UZI46eVgy0HV3PnHrmfFZx0r4pmdBmkFbVnO0PHWgZBwzyUWJi59CQQTKOQDk1Qmry
         E+bz0+wePiwCdQPst/Ytmnb/UV3LRgkotaDbGleszgwH9ZB6hyJnTqZatRtvKtnLnFfN
         IEoPyUp0RUfZVBnN3Gx21CzIei2I/bVCOJEelNnjA8BOCUpH6sX28AbMsR5nSEEjjYZt
         qK7Ks3GefMyticqUxMFeImLIBqrdGRLqeNkNRQoD9kxFOSMwyFCs0YDLdv7oVWgh3W87
         UoW5cxFBwy83V7Xtacyu3SYVVWVQgR7WRLf//oWnkzeVIUXv0Vze5iJH7Wuc3HbQyFPG
         /54Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763652710; x=1764257510;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vIq/O0/AL91lguWZ3GTEHU1lL1GNwH+lI8GY9Jzrdtg=;
        b=uCWHp+7Eo1lmR3gtm8XUawHaWSVIE+/NhzkZvHSPhxisDydwXW6SypsTVzGPuPkpCf
         S6kxLcJbSKVwU8a+wAxJ5ZHxP4CjZab5FhMBlm4f0Ur6CKgMEM4kZkxtdch4CZ43SCYa
         R27FktZ3rQn/0OCysgSBF7uCdA/JBDuhJPOWYrV8E/Xv4FTeoGp4u9A0Gzkg6Lqr1L8Y
         HQRGyOVr9z/6CW+Eg82vbQjwQnLd015GqFLZLJP8sodR1lhd7VDiGHHm86Xwz/y3yQrY
         qxZLsJx86vgzdehLe7+LaGiBgJ/ZYutT9Wlaj3gv0vhKwyarc4HOSPtQH1uBlTBi0SQi
         iuFg==
X-Forwarded-Encrypted: i=1; AJvYcCVOQQLrvEJM7/K3EGcaSm5nB7kcPaYmdZwOiCo8sFuQRzz+ncM7VCkSeRHP8BJYzWdhOsGur/Wo4vxS@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5cAe4FGPdl+VQnWoyuznvrwp4vSnEWP0ZIib7JQ7WB/ax2PzH
	3OPBZ727oLZMAwOmgq6A/JOAJjmXN2Z1o/uKdHntMa+sso+oPnT8osvU
X-Gm-Gg: ASbGncs0tJLicYrHy+gAso26eRzo/A2YoTJLJz8xP3jG17j6t2fPpXdBW7z0TumnfHa
	+3pzA8zbX27Jcli0xyzDMTnUmSqCw9GL3kMpENTGJB+eK645dpXkskykY8lIGfy9YQ9b3w6DxuE
	WWZFUL3h5b/t3883z8P4zhKzXpuCxwTFtOb3ff+bM0ppY2iDEMWC9nCieLCtGww1C0hsE6tqEnm
	kynb7Pb3mRdyqhQw9uNRZrOfunIfNi35F8XCpJ4waYR1k04v9xyDLFX/SCZlHUbRq+mIGu0jUhD
	yhG38L1UjZbFzMGvM/Nabri7uljosMSNKaXXD/KadbGVRAZMRQpZsu9heNvkV207RiC+Dh6eFG3
	iGozhWuI4wBAQLgs0HORi8WxAQApyN+1F1raHnaQBsXKXcYITo0nTzNNtCndT677M5o7EDzKtma
	7JK1M05NUn2BthZvIlY8ss9xP3vkBW+h+U6LqUlh8=
X-Google-Smtp-Source: AGHT+IFVqJA7RS7HvRm6eGAX5ub1WJX8xe85GZesCDT1y7PS7OVTND/zM2W/thezDZ6HHob9eXthYg==
X-Received: by 2002:a05:600c:4f47:b0:477:8ba7:fe0a with SMTP id 5b1f17b1804b1-477bac15384mr27816695e9.24.1763652709759;
        Thu, 20 Nov 2025 07:31:49 -0800 (PST)
Received: from Ansuel-XPS. (93-34-90-37.ip49.fastwebnet.it. [93.34.90.37])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477b10763a9sm113819275e9.12.2025.11.20.07.31.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Nov 2025 07:31:49 -0800 (PST)
Message-ID: <691f3465.050a0220.105096.7667@mx.google.com>
X-Google-Original-Message-ID: <aR80Y5n2OspElbTL@Ansuel-XPS.>
Date: Thu, 20 Nov 2025 16:31:47 +0100
From: Christian Marangi <ansuelsmth@gmail.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: arm: qcom: add ipq8064 board variants
References: <20251120135435.12824-1-ansuelsmth@gmail.com>
 <8e75be2b-643e-4380-a018-3cb718745101@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8e75be2b-643e-4380-a018-3cb718745101@oss.qualcomm.com>

On Thu, Nov 20, 2025 at 04:25:37PM +0100, Konrad Dybcio wrote:
> On 11/20/25 2:54 PM, Christian Marangi wrote:
> > Document QCOM ipq8064 board variants ipq8062, ipq8065, ipq8066,
> > ipq8068, ipq8069 now matched by the QCOM cpufreq nvmem driver if
> > socinfo can't derive the variant from SMEM.
> > 
> > Suggested-by: Rob Herring <robh@kernel.org>
> > Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> > ---
> >  .../devicetree/bindings/arm/qcom.yaml         | 20 +++++++++++++++++++
> >  1 file changed, 20 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
> > index 18b5ed044f9f..0eb1619fede8 100644
> > --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> > +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
> > @@ -299,12 +299,32 @@ properties:
> >                - qcom,ipq5424-rdp466
> >            - const: qcom,ipq5424
> >  
> > +      - items:
> > +          - const: qcom,ipq8062
> > +          - const: qcom,ipq8064
> 
> Since 'items' requires that all items are present (and in this order),
> we would normally have a board name go first.. but I suppose this is
> some sort of a fix to the issue that sparked this (posting the link
> for others to have more context)
> 
> But since these SoCs do exist, I wouldn't say this is necessarily
> wrong..
>

Well we can see this as a ""template"" for device that might be added
using the ipq8062 or ipq8065 compatible.

When device with that variant will be added we would have to just add an
enum with the real device name on top of it (as first element).

Honestly I should have added these compatible long time ago as on
OpenWrt we have tons of device that are ipq8062 or ipq8065 with the
compatible structure

"device,name", "qcom,ipq8065", "qcom,ipq8064".

I feel it might be wrong to simply add to the list "qcom,ipq8065"
without the "qcom,ipq8064" part.

> https://lore.kernel.org/linux-arm-msm/20251105112136.371376-2-ansuelsmth@gmail.com/
>

Maybe I should add a Ref: tag referencing that?

-- 
	Ansuel

