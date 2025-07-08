Return-Path: <devicetree+bounces-194004-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A92BAFC6E6
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 11:20:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 334FC7A6893
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 09:19:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A48082288EA;
	Tue,  8 Jul 2025 09:20:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jYcjN318"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD82D21CA0D
	for <devicetree@vger.kernel.org>; Tue,  8 Jul 2025 09:20:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751966421; cv=none; b=CSZ2+xLFAGMjj4Sk56aGb0yTbppPH+PUhz0TrL5UpHHdKzLByikC8kDOqxoNaDd/KJNZ2y5011gVWZbGPg6uezcyUj5Oe6IXRY4tkCdhaMF+xoWZrBsEasOSknD4HDS5KqmyQnZo/QYQlfsny8y5W6pPBvN+VvuEwGYgG3nyWOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751966421; c=relaxed/simple;
	bh=tTnkj9/iMWnXfZ8wbeIpbX5DCcf2AwFFVw7LzOLB13I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Lrysr2qi7lyhNHxIt47gGfucXF3BGkOpc07iUuuw9JBME6OGSrzfORWhnKHRJlRgw65PIUREh+U6lSf9ei8YCkmMTy74iPrjP88eOaPQwWGR2HIiSLq6owDdsVoR/+zuW2L20A+x9XA0At/WoJ1tZwgU1DUeX8oeUJUcrXGOyZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jYcjN318; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-ae3b37207easo761693766b.2
        for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 02:20:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751966418; x=1752571218; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qde20GPEW8GrZb6i2zWlEkGphLDMaxaujFgrrC5mKsw=;
        b=jYcjN318UWLukEq+Tw/dua6v6SbK1nnVglvm2qlUiFOXDm27AEdaLiEIbGj06Onkki
         JbYiFGDyNo8aKeDxsgX73Dd3n6Mjf/O7EdJg8ia3QkBi7xYmxW/FDAdffiQIhvMPdZ4/
         3SsbywE3oFFpVGPERGa5LZCIAgPCB63VRFVN2vnlLmtSQmEYe1BcR72icn8TFFS5WC1S
         tUEAz8bC20cEn68IymUXoMW7d5jyMfECUAEs27NfKW+5TyrjQsjoKyrTJc1VA/ZeE41x
         9mfICm18TjcFbm8gA8amMGDvEGb8vlPLOlW/g0rfd3VsYVMPIesX+2iLiKY5JfUzSw6m
         407w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751966418; x=1752571218;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qde20GPEW8GrZb6i2zWlEkGphLDMaxaujFgrrC5mKsw=;
        b=KOTHfivR8T+WvKlhWlr2F0f5KDHzffAyHu8lVccUCSJUjI5FysOCd3B6sUMZtbQi8O
         AL4mgmfe+7KtK2ATOBdu4RYjkloaViDTS0XNaKFwd5vez9F6cG5auUigeNYDmrZvVTJV
         lZBiDRGLSRH/BqG/hvvDDv2OG6PvCoNZiBAkv5+wMSQE+LICxFQ8YtiwDL8IIgQOpiBZ
         qZzPlrfO579R4H9kzFWYeuvZCwLXW0oSfgXtTgt5ELb4l7e1h+Wg2NfszM9evhXxVuHJ
         euKzT8ZLXVZLNzENIvxHpnxM4q9/3t+M7fxv0+9DeVJXZA9RoWkI7x/tA12xoQ0hd4tI
         1i5g==
X-Forwarded-Encrypted: i=1; AJvYcCXrCeR9N5reIpxb54q9U1v+0y3RJzVFUzBMMYQLA3C4wiHOOlKI+h57b9K7jm7JNPZSIKCgv7jGcylz@vger.kernel.org
X-Gm-Message-State: AOJu0YxcD4yuAgvzT0VntWnBxzenGm5t29txsXPG8LNQoGnnAYfmrlXc
	Scov8f5RYjDMRuyRSJLK+xL0CkCLTLFASG4O1LdnbA0vanphFVS7S8Kl0Hx3fGZkCLI=
X-Gm-Gg: ASbGncvaJY8PfdpRGnwWUS16sCICzyVDmsDG6B6t2R5zHUkLN+M1nHCf4Ou2Lcl3SXc
	I5l90gd6U44Yxr0oErMFQS1us2evBuuovxqAmyXqy3qtkblxrsZWdlZAOZko6OTeAOqtvo0JWl7
	I4XzN0sMwBBi/7d+oPaKODKeS7B2GP0V7DdqnogWr7+5Fd+mTVEzlwLT1LYhkr4Rw9VAz9DcPCT
	b29xCcRXHjvI1KrdoVTewd+S0TOqD1SjiNNoD0QlK6bIrrgGjP/OfOXv5zhR/wMGTMj36DUk81P
	Olu8hJm4b+A/FqLdBsfVEUyV87wQybEh/dThlP1QCdkXRmuR7/AzLqGb71c=
X-Google-Smtp-Source: AGHT+IHP/+5wQx+82Xsq93Q+p1ivWxiCeoN5FhCTp6b5wZJQBNJcP3y1aTVdV3ogaf3T1uMqF+NcPg==
X-Received: by 2002:a17:906:f592:b0:ae0:a351:49b with SMTP id a640c23a62f3a-ae6b06f2722mr201059366b.34.1751966417914;
        Tue, 08 Jul 2025 02:20:17 -0700 (PDT)
Received: from linaro.org ([82.79.186.23])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f66e7d4asm840670366b.23.2025.07.08.02.20.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Jul 2025 02:20:16 -0700 (PDT)
Date: Tue, 8 Jul 2025 12:20:15 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Peng Fan <peng.fan@nxp.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Abel Vesa <abelvesa@kernel.org>,
	Frank Li <frank.li@nxp.com>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>,
	Sandor Yu <Sandor.yu@nxp.com>
Subject: Re: [PATCH v3 0/6] clock: imx95: Add LVDS/DISPLAY CSR for i.MX94
Message-ID: <aGzizyLX8HDWsWWm@linaro.org>
References: <20250707-imx95-blk-ctl-7-1-v3-0-c1b676ec13be@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250707-imx95-blk-ctl-7-1-v3-0-c1b676ec13be@nxp.com>

On 25-07-07 10:24:36, Peng Fan wrote:
> Similar to i.MX95, i.MX94 also has LVDS/DISPLAY CSR to provide
> clock gate for LVDS and DISPLAY Controller. So following same approach
> to add the support, as what have been done for i.MX95.
> 
> Patch 1 is to add the binding doc.
> Patch 2 is fixes when supporting i.MX94, but the issues are
> also exposed to i.MX95 even not triggered. No need to rush the
> two patches for 6.16.
> Patch 3 and 4 is to add the clk driver. Patch 3 is almost picked from
> NXP downstream with a minor update. Patch 4 is modified from NXP
> downstream with a few minor patches merged and updated.
> Patch 5 is the dts part to give reviewer a whole view on how it is used.
> 
> Thanks for Frank Li helping do NXP internal review for the patchset.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

For some reason, this doesn't apply cleanly.

Can you rebase on 6.16-rc1 and resend?

Thanks,
Abel


