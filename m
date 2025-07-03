Return-Path: <devicetree+bounces-192724-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E9EAF7ABD
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 17:17:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B28746E15CB
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 15:11:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0D512EF656;
	Thu,  3 Jul 2025 15:10:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iAATeiGj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F02B52EFD84
	for <devicetree@vger.kernel.org>; Thu,  3 Jul 2025 15:10:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751555441; cv=none; b=UXJt7VVnyQrn+BSvuY7NUmLItsdEdm5BYWdY0mR0nEH+EPwrdIwOkKHAkYL5Zy+cWp67Dq2xcQe+Zbeh8nrmgtJORn8ggzFmuv2fdUpUUZ9iJIoaw2uQyeXCY36h4hRN0/GBQEGAnkNf8+Sx5o2tdscY1lT3J0gHf9RGunVbvSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751555441; c=relaxed/simple;
	bh=HcpB7WcJRiu1n3uBKLFMvcSjTuFp3XqHuTv/XQqwXIY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EupZuB2gjQUWSUuf4mY4hpPsEevNlVqMxurisuJefef+ZLJhtey5iGUWu5cCAIsQUzDZBn8XHqJkTNdnlg+8IpteBEtDGgBJ1E4W7c2PlM33gcBc1YWVVjnWNoPB3JB9bSfjCsVLqQVvvhGwN4Hn1gkiHk5+Vdes5zBaU26I960=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iAATeiGj; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-ae0dffaa8b2so1397291366b.0
        for <devicetree@vger.kernel.org>; Thu, 03 Jul 2025 08:10:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751555438; x=1752160238; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gBhYZEvvr6wT0rA3y1ifWP+OcQau5rDJJM6LpP/dVA0=;
        b=iAATeiGjUj5uhUVs20MUepRI9IH5zG4tHSzWgr2pgAIJ+nABbJ629e0H9W8+ytanES
         tSXmDUzZoI2Q7qnuxdghkJejmZQVKv5yebZ5TS1fJakh/HEiLerx9cAXRBM9YRzOWhzk
         r7fSME2UlGXJeUNLMnK1P4kf++Y8UEVFBbHzsoyYb7KRawKcWZNGTLsgjCqVwbRYT2vQ
         BO8fSwWyvxB7RIiZHOEESCo/xCcYxRta0h6/7SEAEzmJGoNK+4zGNstWB3wAItbjQU8v
         A3QkiHQsI0m5eMkaKWQ0ZbWGjvxovP/OwbRFZystR8ZEa56hFc2U3hMBmFhqvAcVtSC1
         xzsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751555438; x=1752160238;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gBhYZEvvr6wT0rA3y1ifWP+OcQau5rDJJM6LpP/dVA0=;
        b=uSohyUUEClRcpxwt2KpSe+AwYWPuGL1wXviZ/dV7gjSy+NBC9ri1VNvqPJeqITgky8
         cQmruLuzKovKD+j8FkfRnwM8PUdTFHd7aBAMWut/8/p1vMs8m/q+5o3TeDZ9Z7BHqnn3
         SatLIPfO1HVb4nT25O4xJ3IAIJVEIl23ubFAYPjtoKS7Jcarsdbm9tP7wAmerXjQcr9u
         2jLI6XZLaPJAm/luZnA2NiD+jW0tceY9+cesdqhCfQjhGU1/i6Gtn8Z4ZvpLf5c5ZKfc
         qc+Dq+TxtJodqwSgUqS099AaUu/G70kOhVjkwie5cDMjzBEjVZZ66wcfOAa2jhhZMEW1
         Xs6g==
X-Forwarded-Encrypted: i=1; AJvYcCXQ8C11BDucdm4WACZoR12CRQdS2VGLDvczJJTyHSoH2kWTDyBMip4Y7M0r5MDSPcgJkleeLB+mOTJ7@vger.kernel.org
X-Gm-Message-State: AOJu0YwY3OZhY0+oJ/gg4C/fMZQXAUTnOoOuxsPqppKxFP8kPmvzz+/4
	vgw1C/HsHYG0HtaodP0myRjQFgHehmm2rUCPzNfkiNmkP7NFRDLLnUYud2Bn6GmLUXs=
X-Gm-Gg: ASbGncsC8ItHJofpBRkk93bIJUopzOUrStk+6jS9DdgTPWho92pnb18w/k0WXMdfLvV
	bnHKKrCnTgTKAUegUJBRVminUsSLjyJHsiy7KC9etVzVpQoSCyGIbkS0gdBkY8zZCi+AON6ohJj
	cpfNoOIc9V110Y373diPeA1/6DUILOovK4X2AIdTli01WmE2w1yUzPo1qTedF/BB4E9BnEXjWwc
	0p8FikdtDVuJYXckL/5gk3kG7djJMGLRToPjYTbes8b/2U0Lqg5LWyiFXqji4ulS5FB82mUiyp2
	ouvVwIXI3C8LrIS3T3r7Nfcgyq7cdVWWIiA3YjafQ1qhw5ONFQaJ8DuQhMk2sj50X3SfHg==
X-Google-Smtp-Source: AGHT+IHFWA0SjfKo8Q9HvR8gkZ0iZby8sEu/tE1InGy6IA+SPlppSiNPUeimMeEYtk+3MIxhso8xqw==
X-Received: by 2002:a17:907:3e0b:b0:ae3:bb0a:1cc2 with SMTP id a640c23a62f3a-ae3c2aaedd7mr750188166b.19.1751555438164;
        Thu, 03 Jul 2025 08:10:38 -0700 (PDT)
Received: from linaro.org ([82.79.186.23])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae35363b369sm1274968066b.3.2025.07.03.08.10.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Jul 2025 08:10:37 -0700 (PDT)
Date: Thu, 3 Jul 2025 18:10:35 +0300
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
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 4/5] clk: imx95-blk-ctl: Add clock for i.MX94
 LVDS/Display CSR
Message-ID: <aGadazB4LbRvk1BM@linaro.org>
References: <20250703-imx95-blk-ctl-7-1-v2-0-b378ad796330@nxp.com>
 <20250703-imx95-blk-ctl-7-1-v2-4-b378ad796330@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250703-imx95-blk-ctl-7-1-v2-4-b378ad796330@nxp.com>

On 25-07-03 11:40:23, Peng Fan wrote:
> i.MX94 BLK CTL LVDS CSR's LVDS_PHY_CLOCK_CONTRL register controls the clock
> gating logic of LVDS units. Display CSR's DISPLAY_ENGINES_CLOCK_CONTROL
> register controls the selection of the clock feeding the display engine.
> 
> Add clock gate support for the two CSRs.
> 
> While at here, reorder imx95_bc_of_match.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

