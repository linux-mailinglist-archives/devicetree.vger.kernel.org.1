Return-Path: <devicetree+bounces-250359-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F21FFCE88FA
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 03:29:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 808F53010AB2
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 02:29:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDAAE2E0417;
	Tue, 30 Dec 2025 02:29:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HscSfh2J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49B792DF15C
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 02:29:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767061765; cv=none; b=N5n88Aslggv4WLbnp1w1jKTDDDDZsVNTG3KMC3xXVvxUN8EZuFtJq4FUQslvVpYx1KwgoASFJqecvUO4i8dM/hm7lIAlpyD2L0dEQhu0WjaEQZLVuMYwaAIqKlvi8uWR1E1k6drlV95cow3xOEWVlQV9wGD4rFroTb0ioX1HTi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767061765; c=relaxed/simple;
	bh=tnl41ZSqOs3vutxxNmBDAHdEueEiaaq8cJJrJX1XRo0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kZvOLjH5eIZf9XJ5AEJ/0ei4RfjEF93JsQHHFYvikt+qd57XYF4GcmjVM3SjySsifQgK1jPXRkDLIo04VQliplytRyC9cOwe5w0vqk5BYYm8QPH7v0fYwQIrizHnL4bmHYiQz292zjA+gXGOX10h+0d2gvacCkdBe1U605KhLx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HscSfh2J; arc=none smtp.client-ip=209.85.219.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-8887f43b224so145202036d6.1
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 18:29:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767061763; x=1767666563; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=R0w28WIRcTstXXfBO265wq3fXHKY3ZwwZgohd1inI7o=;
        b=HscSfh2JeKqPUSu8TrqnErdwt9pVBEJfGinAaGLp6GE6B7gieusRoamUWE3MsXMo+9
         gcy/enbr36azdaUX2e82C3+Di2tII+4eBUHSXqTXlbmveIGiSsenyStjebjcgc/fq67r
         MLQaGYOPp4Rtmzvitk8/WxEOFtL1isRIhtuXb3pm1oDve+3pi8xp7JewpNFT8UC52fvI
         yzIbyX3WHW/ShATq9lJKEwQ7VEgXOPsMU0PNi/Ny51elmvoMiKwQ0QDjjWzM8+4NcQ0n
         VcgVOhO8jLH8ys1lqDNwtNdCeXOZwlLq67eIF9FldiD+hTlVcW4BBWyL0MDGWPA7U7nQ
         lLLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767061763; x=1767666563;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R0w28WIRcTstXXfBO265wq3fXHKY3ZwwZgohd1inI7o=;
        b=kEvrZIrNO8a1L7qShYPeUiT0mhhgEXqV0Ms2QB4f02Nc3f1Jl91Ta7GAL/SxOOUdRq
         dxqjWR6u8Sp5SiArmF/pkwAemeGlp+hMuE4jAf1OBtRIs31r3JNR05xkDE3M1DeTZ87q
         nwh1Q7fjQBsJv4NmYYNmLQggQkGEH8LAXM3IibsRy+Edlgwyj0xN3/ombFllY0OtoGTg
         yjn4TunDpOfO3Ji9CGO1dF2EMKu1GR6geT9+oNGRPipjJQamUX8Q676fqlZ7LQI++LZM
         kgbH1QUisHTLASTUaD8uxvxp4RN7Yj04dvw0rzx9hhgPYOV+MK/yqbqLXcqz3uDP2Eas
         009Q==
X-Forwarded-Encrypted: i=1; AJvYcCUWs452EaWnqpTLgvhsppwIvHbleAQ1lJ8mKkwBAxUYPZXsbsixe6HpkYp3e2zEZ+tMvvRPRUYH0fuP@vger.kernel.org
X-Gm-Message-State: AOJu0YwaBjywlpjmohc8+EinGi4Y+JgYsQlVMeaZiMFJOYaVQtJ7xNDY
	1eXKdt18/8EvM2Ven/VLV3buzWFMoiqGUGdoZwaeUuJ+0LSIHWtuFr9U
X-Gm-Gg: AY/fxX7FVpNBs65NIhDE7tT3cxeuukUVC+Es3CXT8bhwuBXDpd90BntQf9SFDyIsjqz
	k7K/QM7VQ5Z9MwnzQO9Q4+TdtItMBRwvpw1awB4sctlIMwDh3U1x4z9rVcKUMAErnjNViBn3lDX
	KcsrmvRG4mqa8u5nVyqoQFuJSYSj3oRjCvTFEuUDkjZylfskSPOWukn9g7eH07AdChXfKjymiP6
	zqVFYMvOnxjAbxs/fUi8138AjijWSWlI34Fyd/YaM5JXqc+NSxjiVKor+nqXHN7FuZp5NWgXaN7
	eWvHAAdzcuTs4kgig/vqgftJ7h2JHNGUnsj9nP+rCLHCIjZxYc0Hkx7Ki9hS3NTpBs/yln1veQJ
	kHwD/bzv58x1gwLn+hWhUpxWyP3VWE2LALXQ5tV+jFLQhCovFtrVtkyeY1KmiLWwkl7XD+Q12y6
	RQD10qLdNi/mYL1g==
X-Google-Smtp-Source: AGHT+IHVKBzSADEPx+Onea6LnwYi82VGcAGjBi5hads4qZclwVnVUfA3HzsrqDnFgWQ38aXo7QC4yQ==
X-Received: by 2002:a05:622a:2304:b0:4ed:1880:2863 with SMTP id d75a77b69052e-4f4abd93e82mr506193651cf.57.1767061763264;
        Mon, 29 Dec 2025 18:29:23 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4f4ac54a6acsm251760861cf.8.2025.12.29.18.29.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 18:29:22 -0800 (PST)
Date: Mon, 29 Dec 2025 21:29:42 -0500
From: Richard Acayan <mailingradian@gmail.com>
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Tianshu Qiu <tian.shu.qiu@intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-media@vger.kernel.org,
	Robert Mader <robert.mader@collabora.com>
Subject: Re: [PATCH v4 5/5] arm64: dts: qcom: sdm670-google-sargo: add imx355
 front camera
Message-ID: <aVM5FrvQkoxGwgph@rdacayan>
References: <20251211014846.16602-6-mailingradian@gmail.com>
 <wwpqaecvz42jopgaboasbh353ieelctpvgo3yj6y5tnxoem5oz@j5sbx3yxntot>
 <aTtkwQb2gOeWAFuv@rdacayan>
 <d7jcawzugobqern6zlo5jwcnximtsroxywix53v2yp2isvzo5r@ymxicmgfjmzq>
 <341012f3-18bd-4f96-98c1-f964d1fedb8f@oss.qualcomm.com>
 <1d830282-a778-44aa-918b-5ab3e1516c0d@linaro.org>
 <4c4e8e5b-66b1-4227-86ee-756eca945972@oss.qualcomm.com>
 <fa131841-ae9e-49ee-a7c6-728b4a6a4b60@linaro.org>
 <aUIKWMQMAIzjybHO@rdacayan>
 <79e2bb5b-9bca-4712-87bb-e0371b36bf50@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <79e2bb5b-9bca-4712-87bb-e0371b36bf50@linaro.org>

On Wed, Dec 17, 2025 at 05:11:11AM +0200, Vladimir Zapolskiy wrote:
> On 12/17/25 03:41, Richard Acayan wrote:
> > On Tue, Dec 16, 2025 at 05:23:53PM +0200, Vladimir Zapolskiy wrote:
> > > For whatever reason CAMSS on SDM670 is very special, because IIRC there is no
> > > other platform with preset status poperties of endpoints. This exclusive SDM670
> > > specifics shall be analysed and eliminated, since it hasn't been done during
> > > patch review time, it's time to do it right now then.
> > 
> > An SoC-common endpoint node is how panels are hooked up to DSI. This
> > seems to be the case for SDM670, SDM845, SM8[123456]50, etc.
> > It's not special or unpopular for DSI, but CAMSS seems to be the
> > subsystem where an endpoint node pre-defined by the SoC is only in
> > SDM670.
> 
> Only SDM670 CAMSS endpoints contain 'status' property, not DSI, not
> CAMSS on any other platform. This makes SDM670 CAMSS special, and as
> I've said above this very odd exclusiveness should be eliminated.

Oh, if everyone is actually fine with empty endpoints for CAMSS
(`camss_endpoint0: endpoint {};` in SoC dtsi), it might be easier to
patch the driver to accept this:

https://lore.kernel.org/r/20251230022759.9449-1-mailingradian@gmail.com

