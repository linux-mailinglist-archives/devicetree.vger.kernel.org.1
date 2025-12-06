Return-Path: <devicetree+bounces-244881-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D543ACA9F18
	for <lists+devicetree@lfdr.de>; Sat, 06 Dec 2025 03:45:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 027F9300C0FD
	for <lists+devicetree@lfdr.de>; Sat,  6 Dec 2025 02:45:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5822523D7DD;
	Sat,  6 Dec 2025 02:45:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="LDKFsi35"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98AB718D65C
	for <devicetree@vger.kernel.org>; Sat,  6 Dec 2025 02:45:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764989111; cv=none; b=NzmERqWDPvUXn2ibPmscu7i/dx0WB3ZjS8LAtPRz/59wlfDiN088GPWayvgvD0kIeOPrW14S0eHT/Wm5Mc09wYGr1stD1b4n3OmTuuqZbAywyFx1TzkQbzxh58AZX8iZkbym2A9yuyG9fjgwoPQ16soZFJcBcxyrd92U/cwLp1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764989111; c=relaxed/simple;
	bh=RUQybTF2z+MPRFgkFkdOwliSQw/1N7rvnbrbXmVsRSE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=R6OUAt0S59t3nA3RMUD6wEpoty0xgTmBIG4o5iY0Vj97pYtHjYvQ27nwt362gHyoJHwWg8iAu/NMqGjdyiSOMCPXDpcY0gO+GbryT+UARt08Ljcpy4BEH1MNd3EMtRkRpvb+q7ICxZzz6FY0ItfuS+0OYWrAL8s9d6xZMggWgdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=LDKFsi35; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-29558061c68so33431345ad.0
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 18:45:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1764989109; x=1765593909; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RUQybTF2z+MPRFgkFkdOwliSQw/1N7rvnbrbXmVsRSE=;
        b=LDKFsi354jaA8Opxtec0gdePgn4jOb7NPZgprTg9lUBRKM8LTQjkiI01spszXJpYZQ
         hG19LGALt320Z68g+t+eZnogbgurKUCoEMEmZ5dSWJCisXnDuvHUAIx4ylEiGgunTiKA
         kJqC76tuURQw046y/6TIiBKrHunGUZ5R99sg1TO45oS7MOFTYpJia752AXm/mlmffaaE
         c5t3Cjnfj6CqugQ/qBmcSO/gpKhiCR5y4hivCAbI4qHl9nJ7c2vbHaidw95RRttEdibD
         I/sImWQQ0VEPiO08wl8XcOzKx6XPT5t+olsySAdHKU1+zTGABv/UxJ0AhrOAKagC2qDc
         b9TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764989109; x=1765593909;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=RUQybTF2z+MPRFgkFkdOwliSQw/1N7rvnbrbXmVsRSE=;
        b=whPWL8GI8jyu7UmJprVOE05d3ctV1o/PYz88ioeemFSFBnRW1Izidz9eJRmVTCJz7x
         6Hvjki1clV5ZgbQbFklQInr/8+DLvANoE5F6xbtu9HNWelHmVg0yj240X5Qz48vTorMF
         QZ1bcW/Vg75QNJCGqsz9V4zBhWuvrA3mfY4EG2TaEka6fyQfyBA1SA6H6bxL21QRkDPY
         F6TZ9uR7+/EIN2UpzT+NqLuBFSlR7n6VOUzwwKAL7UHCR4CL3CD7qi44P49wLL6f0Kvr
         5dbvwTKA/QH22f90CDvzAcZXeljmhfhjzJeGk0F7VSRA16ixmCkrFD687+pT6gtnSZmI
         cgVg==
X-Forwarded-Encrypted: i=1; AJvYcCWkKaY91EBFdZYhjKL884VotzV1oCbhy15IWp1OAj17CfqdFO6G3LnVdVjPdGnx4ds4Gxi8Ts7b1HBF@vger.kernel.org
X-Gm-Message-State: AOJu0YzCCVOVF5w8sx4wZua5irQF57VaSV5+SEAlmmTvCa88NavpPWuY
	WP8shyg4r2o/ScUHRhLBgRLJmMJUVwWK485yGyIsORc493NE8NVRMNrTSH7J1dph6dt4zOKcF6P
	GG9C1vW/KOXmHelT9PAEAk/q6egpl+jkfqTEdpK9H
X-Gm-Gg: ASbGnct6qTvjC627MyiYGn0gcTE/ZHW9/EAadHi6vLfJlK9Pzdj2uyMKTStfv8nHABS
	FzNQm3hW7+1CFeZ2dOsB5mPXPW0x/guXSpvfQx+4P1LEi7DxHhcNUCu5wqa3gGb4HVwU+uTFMxB
	RhE5LD5cDMXm1KGef8yDD4kZckZ+BwutUUD3EOVr55spdp7sXcOMS4MFj7uhPry5G1PtArHVlpH
	6CrndVfJwd4nb63qe3VIZsAM1Eyix81H6fAh1734WMu60Cvv4KX+bOaZ5nLLrxTibgkI0LO6J9p
	O16m6N/Iu6qY8s98IE6M3eZklcg=
X-Google-Smtp-Source: AGHT+IFU1KYTSeq6FW6nQIMrzlj0NO5UvinjpD1M87pOOtWRqM4PAgvMxx7JqBY6yKTUwKBkDJhMObt3hsS9FZVHukg=
X-Received: by 2002:a05:7022:f415:b0:11b:9386:a3cd with SMTP id
 a92af1059eb24-11e032ed8fcmr1007941c88.46.1764989108309; Fri, 05 Dec 2025
 18:45:08 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251205-phyb4-v8-0-c59ea80a4458@google.com> <20251205-phyb4-v8-1-c59ea80a4458@google.com>
 <18eeb1c5-d21b-4505-b6a4-472f6e191864@kernel.org> <CA+zupgwa+m8Pa=+8shORaOA1OO6zoo6zYEojFS2UDuP0doBq7A@mail.gmail.com>
 <f32e0810-56f9-417e-abf6-0cc7b361bd15@kernel.org> <CA+zupgyxQisYBnLj9_3DtcN3R1Ugfv+-p-wimFp-hnqkhrrgyA@mail.gmail.com>
 <988b3fcb-44db-45ca-823b-5ab13206bd04@kernel.org> <CA+zupgzi55svWK4gHsFtdQSD9jFKbxHx_0GE2R1R5DafmYyGNA@mail.gmail.com>
In-Reply-To: <CA+zupgzi55svWK4gHsFtdQSD9jFKbxHx_0GE2R1R5DafmYyGNA@mail.gmail.com>
From: Roy Luo <royluo@google.com>
Date: Fri, 5 Dec 2025 18:44:31 -0800
X-Gm-Features: AWmQ_bmtS6VqNvSPWWqMA48yCBiebLPdL-OG-iJ2CapE017dl4OEKL60P358vSw
Message-ID: <CA+zupgy5TKWiVGwt5dFye7ztk7O_n7JQm4j7H8BCC2gzjfkgqw@mail.gmail.com>
Subject: Re: [PATCH v8 1/2] dt-bindings: phy: google: Add Google Tensor G5 USB PHY
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Peter Griffin <peter.griffin@linaro.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Badhri Jagan Sridharan <badhri@google.com>, Doug Anderson <dianders@google.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	Joy Chakraborty <joychakr@google.com>, Naveen Kumar <mnkumar@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 5, 2025 at 12:18=E2=80=AFPM Roy Luo <royluo@google.com> wrote:
>
> On Fri, Dec 5, 2025 at 11:26=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.=
org> wrote:
> >
> > I assume you understood what should be done instead in this patchset.
> > Anyway, my previous tag applies if there were no bindings changes, but =
I
> > wasted too much time here to care anymore. The expectation from big
> > companies is they do not ask community to coach on basic submission
> > process. It's quite unfair to my spare, personal time after work,
> > considering how much big company is making. Big company should invest i=
n
> > this coaching.
> >
> >
> > Best regards,
> > Krzysztof
>
> Thank you for the feedback. I understand your frustration, and I
> apologize for taking up your time. I will be sure to be more thorough
> in the future.
>
> Thanks,
> Roy Luo

To confirm my takeaway: for this patch, the changes I introduced
were not significant enough to remove your 'Reviewed-by' tag,
and I should have kept it. Moving forward, I will calibrate my
criteria for what changes are considered 'significant' (essentially
any changes to binding), and more importantly, always document
the rationale for dropping or keeping tags in the changelog when
I make non-trivial changes to patches.

I plan to send a new version for this patchset and the controller
patchset [1] next week with your tag re-added, please let me
know if you disagree.

[1] https://lore.kernel.org/linux-usb/20251205-controller-v9-0-9f158b18f979=
@google.com

Thanks,
Roy Luo

