Return-Path: <devicetree+bounces-244528-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DB74ACA609C
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 04:51:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5995130308FB
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 03:51:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07AA6284B2F;
	Fri,  5 Dec 2025 03:51:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="wUFbwQSR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F7B31B4223
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 03:51:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764906700; cv=none; b=b82HJDh2AiGjWPZ8phHbWj8MQRGleKBmiR+Sp/uRMgRb0gvYztCPU9T00xt9lCw8rd33o4w70JaXtfp2wCQGl59gIaL/ouUV6usA6a6ATqacbhqyCxGE6lpEx1Fqo6jAXFRTwhyfAv3fdIuuHekAPvpZjF+1oEEw9Qa9IoFwlx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764906700; c=relaxed/simple;
	bh=slZlQyYOBEOT6lxmCRYIokb9RadnXPM5nRxrSoFVCew=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qaOFVUdC79f9Oad11cbceJa0FiEWbM6tFq6DTkDDN6x4sXbO8RlDZRYndZoTTLBiqBIBlF9nb2RTubUnjVdUz2FHhIrvJ923J2qU9995UPnrUgJrQqnz2G+JDFkk9nCYo++dimACBFmQGAFHaWaRNssDXcAMk2O7oMtuZ655Pi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=wUFbwQSR; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-7aa9be9f03aso1349044b3a.2
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 19:51:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1764906699; x=1765511499; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WezX6hNbQA28AqxZ2YLg6gysDGXXgYStXFDCsVPlTbo=;
        b=wUFbwQSRwx6owW2UU91/f7WsQhFBmS6A+lnq61AjvmT0Lm+rHxv+d/YEMQwnQu8AgE
         U7n8CcAAHpH2jMzaPq2KnUWFE94vO0Z5/N7jKfSbsVAG30cS/4kkQdTZdQGMOXWt1r3z
         jv8PHCThFqS+DGFS/bQjI0PwYdyJk7t+WFHPWtZtxTZH76BTWwSasNTXHeGRobrAcziJ
         Cs7cboZpF39Hi8Oy4R6QhpsQYLLXJMt0G6RkzUG7ZHCuesr8PRZLu1VwCdayzLmbbs6c
         4Z19ZoPF8ntydDpPQGKftkzMMWCDO9I9UX4Z8a/kMdJUibTllExlR02p92LVpCJ9Al6N
         f/xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764906699; x=1765511499;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WezX6hNbQA28AqxZ2YLg6gysDGXXgYStXFDCsVPlTbo=;
        b=slpTwpQ1XhCpcVs5PgIpEsPOoADJQScQalq8OzbYuhuG4OS6tidjERmhHn5FBGe49q
         d2uNRiEz7DvnP4HrfRrI7hDfB8XmS1n2o6Sm5fdSNomy2omuzSqPMlcPhvp/rtJWJi2r
         tShhVrLhmwTRsOXWNnUH8FxbamuTcYviCL7YuFzHon32aZaJ6ZiJwzKkW8iGYKMZT9Nx
         fFsR5uUc5aicFrQpMCC9CKnAnJJww5RDUlHUKvPc0lIcmb0xYGBdywwE7r80gY6df8Jm
         ZuHCPTF5eSkrX+nYx0DQxYcfgn/g3bGSO5h1k19ETtYXfKVsWkpDxLmgFqJKIfvQTAj6
         XqUA==
X-Forwarded-Encrypted: i=1; AJvYcCXhGhvJU/1vWDZW2IIuLZkp9AN8R5Z035plMBdu8Oa7aRHNCBQGP7cgXms112fVMviRmD6ythaQ10ze@vger.kernel.org
X-Gm-Message-State: AOJu0YwJVJepP82mOZRFV00d+HWbWAyytDriZNb5ma5BWXsZBACcUsn3
	kh6/Utw01xr1nAcyBV26Qfol5UTYcyOudf1BWhq+a+jjNNG7GeEkH0M5StGGt13i/rr4QXnsJnp
	RyRWu9G8sOBEaB6fTq38MAM9gUNQMJQ6qNJ87Edjk
X-Gm-Gg: ASbGncvup0YpfATZi+U+st2vhSli+dwJ4mAQW7z0rL25uV/UGfB7Y/U1irDMiu6+wK0
	znjNFZqLd7BjrPLlSnqGECfNOcG5BX4TclUn+9rBmLf8FLM0G8keOp8YOx4y0gGeeb/uEk0OODr
	W60Oupaa1Yy4ECsv48wBv3bS1rI8cTYB3XMFQEo9WOG1x+rV/04eHm4Cp/yDEjJPOjMs6YJtHDc
	RfR6i+eks3GfkUBndc436VQySoijnZ2yUSPnd7tWin1Pk3QsEOwhIweMbDE1t6RA4T/QG16t+IQ
	eBQf9w6El0SIQ6eWZOVs3QJndOCs
X-Google-Smtp-Source: AGHT+IH7GWuDo91VkkxlEQ1I2pmrwkMqe1WpyJDLcRf2GJbb70zopeBu3Xn1bmW37Gs5MbOfJb8chhFABiGk+XWPpXI=
X-Received: by 2002:a05:7022:3841:b0:11b:c1fb:89a with SMTP id
 a92af1059eb24-11df0c3d70fmr6132695c88.32.1764906698269; Thu, 04 Dec 2025
 19:51:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251121-phyb4-v7-0-df644fa62180@google.com> <20251121-phyb4-v7-2-df644fa62180@google.com>
 <CADrjBPpLn9qzg1y5_c_0CYL2U8p6taMWtPOw5RykAO4=4uNeUA@mail.gmail.com> <1a53d473-fc13-4ac5-ba52-4701d95e3073@kernel.org>
In-Reply-To: <1a53d473-fc13-4ac5-ba52-4701d95e3073@kernel.org>
From: Roy Luo <royluo@google.com>
Date: Thu, 4 Dec 2025 19:51:01 -0800
X-Gm-Features: AWmQ_bkI3gBipBfIh3J4uywjnOrs9760E4xYx1DdnhCprCkAyhSf6HmOxRGOWVk
Message-ID: <CA+zupgw4_o7Po_Zw1qT13YU=PGXoJ_RAPKiAwFpt6RRyO14OAA@mail.gmail.com>
Subject: Re: [PATCH v7 2/2] phy: Add Google Tensor SoC USB PHY driver
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Badhri Jagan Sridharan <badhri@google.com>, Doug Anderson <dianders@google.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	Joy Chakraborty <joychakr@google.com>, Naveen Kumar <mnkumar@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Nov 22, 2025 at 4:49=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 22/11/2025 13:48, Peter Griffin wrote:
> > Hi Roy,
> >
> > On Fri, 21 Nov 2025 at 08:56, Roy Luo <royluo@google.com> wrote:
> >>
> >> Support the USB PHY found on Google Tensor G5 (Laguna). This
> >> particular USB PHY supports both high-speed and super-speed
> >> operations, and is integrated with the SNPS DWC3 controller that's
> >> also on the SoC. This initial patch specifically adds functionality
> >> for high-speed.
> >>
> >> Co-developed-by: Joy Chakraborty <joychakr@google.com>
> >> Signed-off-by: Joy Chakraborty <joychakr@google.com>
> >> Co-developed-by: Naveen Kumar <mnkumar@google.com>
> >> Signed-off-by: Naveen Kumar <mnkumar@google.com>
> >> Signed-off-by: Roy Luo <royluo@google.com>
> >> ---
> >>  drivers/phy/Kconfig          |  13 ++
> >>  drivers/phy/Makefile         |   1 +
> >>  drivers/phy/phy-google-usb.c | 292 ++++++++++++++++++++++++++++++++++=
+++++++++
> >
> > Please add this new file to Tensor SoC MAINTAINERS entry so it's
> > easier to review future patches.
> >
> >>  3 files changed, 306 insertions(+)
> >>
> >> diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
> >> index 678dd0452f0aa0597773433f04d2a9ba77474d2a..af14ec74542a9879c856de=
e8236753990fdf3705 100644
> >> --- a/drivers/phy/Kconfig
> >> +++ b/drivers/phy/Kconfig
> >> @@ -101,6 +101,19 @@ config PHY_NXP_PTN3222
> >>           schemes. It supports all three USB 2.0 data rates: Low Speed=
, Full
> >>           Speed and High Speed.
> >>
> >> +config PHY_GOOGLE_USB
> >> +       tristate "Google Tensor SoC USB PHY driver"
> >> +       depends on HAS_IOMEM
> >> +       depends on OF
> >> +       depends on TYPEC
> >
> > Add COMPILE_TEST for build testing.
>
> ... and this probably should depend on your ARCH_xxx || COMPILE_TEST
>
> Same for USB DWC driver.
>
>
> Best regards,
> Krzysztof

Peter and Krzysztof,

Thanks for the review and ack to all the comments.
Sending out a new version.

Thanks,
Roy Luo

