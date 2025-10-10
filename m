Return-Path: <devicetree+bounces-225433-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A4FABCDF69
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 18:31:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0440F3B773E
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 16:31:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07AA62F5A3F;
	Fri, 10 Oct 2025 16:31:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UazpeJin"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B000266B52
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 16:31:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760113872; cv=none; b=fmfpA6mVeiiFBgf+aS22WGXkDV2KeIGpr5xCgl5y5irHyPXKq4XZm8WIE8KHcf77QrmBk2Xsg2IAaTajvg2iIBrcGlLTiNuDM2k57Xk5oXkDcM3zkoBjP7+opoFlBlgVXPDQxCZQL3zR/6LcHSy/X10ZarwU8FYPofe+2Ijq1gI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760113872; c=relaxed/simple;
	bh=sWau8pOuRYNhtAxbaAcaiNz5CW5zfAxPFLtnnDYBKqM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=c3HuqTHyLDzg50zelNfDVYOAr27NePEkOyIwy1UvZpFa0dt6XB6osF/lsT9r98TTOg9b/JTgd8066MLtebHRtIM71ZB8yEEyEgZ3w9SrvLDdVPsSyMh9YPGst+Stx80Ox98lG2g6hsNbgyNP9IsLcucKOFP8p3EYAICKmTerpgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UazpeJin; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-28e7cd6dbc0so25717065ad.0
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 09:31:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760113870; x=1760718670; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+PErgUidAcsRKwUXeMVve1SYZIwtC3TkFLkv19Pikhc=;
        b=UazpeJinkjHVb5yWVeizpYYLLDLBC8b/0NuRrhVedtVEdaup4WWGY/9iWfE9Y9ygrc
         pH2j/F1dFIO/wLpHyiTxKJJeA4kNjLtTy4g0BfLb1N358S8r5pLVjvND/kb7cdafspo2
         rRcmQZYnjCEAQSzE6jdNPPgX4WrYKDh/kj4Gi8pe5Ky/E1iPvqbAxCh2cJb/1JPPWyXU
         PVTb3CkstrYC1qsMM/SjlrbK/uTDzQCZnTEFYLoMwSnUUA27EKs6oTvP0NiOZLJ3hXp3
         7hPkhA+RYDPe/UdnuORJqlnAWFU6r4bkY54wt9yNVDrMnoC4cmtpi6bgjc0T51dXdGU4
         Tj9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760113870; x=1760718670;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+PErgUidAcsRKwUXeMVve1SYZIwtC3TkFLkv19Pikhc=;
        b=UT44r5ZZGkji5Y5Rr08FGcIy9v7gWdpCu8wdojFvLEYrInNv1nCUNwlm4W947GAVGr
         cyphSoPruP8qrV28gD2CPBYuuyDh5Gef75rB/aaHsHFIaFsnudaVXHs5Ps353i8ULDZ/
         q7uJC+YAGo+ca/zlkRms39UORA9tV/NYWORDynA0QaOiqsR2cuBVHmsd5VeNsB1Ltk8/
         99MCHn/zetB76eil2cMhrmFahmptUqts7hGvh+ZZJMcNalqMuCX2fSbp5Wa37kD6zunu
         Jc6/73hjhZHvnOnRcZeCiHebjzXV/GqHGb7AgxswDCe1uPfkREujwLDZfbmNY7CJFhC9
         I+Kw==
X-Forwarded-Encrypted: i=1; AJvYcCUEm3QYJ1dEre7iWA0MuqEUroWXTIVrj3h1Pj1WUOV8JL7aiXxD2JimQpD9JNxGjhs4KAYDh2HxoHmc@vger.kernel.org
X-Gm-Message-State: AOJu0YwKAd7I6ZfGbx66XbWzc4IeTlr69ei2IPxs0NIwbWOVLLqzOBGX
	pV6S5iY+JMmAwd4Y+gBFKh8Shc88LcATq9nHndq/nyj6rNnHOD1QnvJ1Mi3eRsMXWmA=
X-Gm-Gg: ASbGnctfUYz0fL86kNLwVSD6I/edxzxUCotoeG/s3Pl1rVHHAmHIhOMWdsO3Bk9t/wm
	yccHRIJSSAHZ5SW01COvGx+9dyICnbSrRnJJVI/WrqLWkQVMO6bqmlz69l7Ho5/pFlZaDG77rvA
	eV5EQoju9E5eOVEht5Fm3ZxsDp8MAg4hb+CBhT6FdiIirbA9VGBL5yhelSd1xVe46FuMOJF5QHT
	zbVKeHB7K7PWLXBqqvE/PR10hkaNyE74txVU3U/c598sDyWdywVt+XPhnzwP8v9cv7UXafF1CVZ
	gi2nsBeQrYMlJvh+/vZbITHovPSwaG3jLbkhKzSrIx5Q4hUaeZMnJbBKmcxoRMc0z0BVyE4WUXr
	cP03yuEV2XATEiE5lloEevpkU+UNFZBxjjqUtnvpuLrHNZCU=
X-Google-Smtp-Source: AGHT+IEy8L6TDg54FExTrOyXceAe8pz/QOf459ho/0ZYB36VftdLiczXdkNEiG5CFEJM6POervy4bQ==
X-Received: by 2002:a17:902:fc46:b0:27e:ef12:6e94 with SMTP id d9443c01a7336-29027418f97mr152883735ad.55.1760113870428;
        Fri, 10 Oct 2025 09:31:10 -0700 (PDT)
Received: from p14s ([2604:3d09:148c:c800:ad30:d3d9:45c5:4a3])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034f8f9bbsm61182205ad.121.2025.10.10.09.31.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Oct 2025 09:31:09 -0700 (PDT)
Date: Fri, 10 Oct 2025 10:31:07 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Shenwei Wang <shenwei.wang@nxp.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Peng Fan <peng.fan@nxp.com>,
	linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-imx@nxp.com
Subject: Re: [PATCH v3 3/4] gpio: imx-rpmsg: add imx-rpmsg GPIO driver
Message-ID: <aOk0y8xTi9hoGvyX@p14s>
References: <20251009222716.394806-1-shenwei.wang@nxp.com>
 <20251009222716.394806-4-shenwei.wang@nxp.com>
 <eb99d9a8-eb96-445d-899a-6e1d9b6f6c69@lunn.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <eb99d9a8-eb96-445d-899a-6e1d9b6f6c69@lunn.ch>

On Fri, Oct 10, 2025 at 12:58:38AM +0200, Andrew Lunn wrote:
> On Thu, Oct 09, 2025 at 05:27:15PM -0500, Shenwei Wang wrote:
> > On i.MX SoCs, the system may include two processors:
> > 	- An MCU running an RTOS
> > 	- An MPU running Linux
> > 
> > These processors communicate via the RPMSG protocol.
> > The driver implements the standard GPIO interface, allowing
> > the Linux side to control GPIO controllers which reside in
> > the remote processor via RPMSG protocol.
> 
> I've not seen the discussion on earlier versions of this patchset, so
> i might be asking something already asked and answered. Sorry if i am.
> 
> Is there anything IMX specific in here? This appears to be the first
> RPMSG GPIO driver. Do we have the opportunity here to define a
> protocol for all future RPMSG GPIO drivers, which any/all vendors
> should follow, so we don't have lots of different implementations of
> basically they same thing? So this would become gpio-rpmsg.c and a
> Document somewhere describing the protocol?
>

I haven't looked at this patchset yet but I think Andrew's proposal has merit.
 
> 	Andrew

