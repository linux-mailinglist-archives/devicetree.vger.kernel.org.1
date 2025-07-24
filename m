Return-Path: <devicetree+bounces-199271-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A2B1AB10297
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 10:01:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9922EAC4A6C
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 08:00:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D411A1EB19B;
	Thu, 24 Jul 2025 08:01:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=thegoodpenguin-co-uk.20230601.gappssmtp.com header.i=@thegoodpenguin-co-uk.20230601.gappssmtp.com header.b="1ouAnOyP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C967223327
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 08:01:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753344074; cv=none; b=O9/HAo00nQiMeYv1CLIDPoB9fspy/jHGXvCzBniklfThEkGdeC7cG+WY8zajUiSBX0d7Ni5BlT6g08DXdpqd3b7lYFq7U2att2kTXG9rJYDarbwA6NeCcXvUzgbgcgaZ+mpA06OdN18PS1tc4RAfe/n85NcMDkdZPrG/nl8+fqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753344074; c=relaxed/simple;
	bh=jPZXQ1fFo+Qnqi9JBZiSzhdyPYYUfy+we4OAHFyWwZQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mmc97Hak8HrDQhDSIX40ICR5EKzaOyWAIo5pGNVjY/UhJ0BF9WXAujLnaqVZW9c6l2+GCCz9+FI0426ePPwHWrwhI0Yrf4h8UYhSIt8Pt1NCEB5VNX0BBZ28Bg+ddwTf2lNTdko4657InMTjsArw01ivZ/o8l0jOqSdoH5QxvNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thegoodpenguin.co.uk; spf=pass smtp.mailfrom=thegoodpenguin.co.uk; dkim=pass (2048-bit key) header.d=thegoodpenguin-co-uk.20230601.gappssmtp.com header.i=@thegoodpenguin-co-uk.20230601.gappssmtp.com header.b=1ouAnOyP; arc=none smtp.client-ip=209.85.128.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thegoodpenguin.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thegoodpenguin.co.uk
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-70e3c6b88dbso5547587b3.0
        for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 01:01:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thegoodpenguin-co-uk.20230601.gappssmtp.com; s=20230601; t=1753344072; x=1753948872; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jPZXQ1fFo+Qnqi9JBZiSzhdyPYYUfy+we4OAHFyWwZQ=;
        b=1ouAnOyPhYhJwB4yXyCRDlwVYOt69a/1rwT+/vss43d99wD7oEQr7tcwtFwvXEPaVb
         +h44ijHd8q35blJZVhgUeFhDRn/L0NLRRpXTfPAVK3uQRWi/7D1VQrn4bYMp05QJQ12u
         NRSmz9L6jUofUUrgLUZU3ptaUsrwIQR8M4A/sb8LnPDylLnsHVP5O/yKrSIVrfUFs8nZ
         /k9121c9ADc6aLKu/YbhfZpH5+4YfIUFJaZOn0z8gWHAiEtB/FWGIQ0KB0OPQvMsidTo
         rrKfFCc2/rvDlTxgsgapc6vEZwRAYz/6/FzdIqiRaQOvumRa8hnxaY2FICJvwUNSCZuP
         eeTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753344072; x=1753948872;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jPZXQ1fFo+Qnqi9JBZiSzhdyPYYUfy+we4OAHFyWwZQ=;
        b=UMVz4S96MIYgPGPuiqW9fuKtCOjXq581UxEIrh8pkChFF/FNZSReknBXZOxKO0lbpt
         KcPaizRDzaUcOMd/x4R4YPcXWW6/1KtGszVu/o9W3MLJNBJ2SP26cJUxkI1MB5LibYFw
         d85Qf/dELz9GE2bPGVVMdmKGx4h/hUQOM/0IbGqINFbGeHdqOYw7XXvq6IUArnyW0Qmo
         dpul44R3EuHO7MlbSF2DFIwL/xcuZPd6nTavinJtSTc7tFJWqRTacyxdIhGOFUIFZQkV
         TihLQUi6m0q3b80AJLWQO/NFTns1orPf1KV1yenaG/MNwozblub5Nl79uaerAmDTFu7+
         sICw==
X-Forwarded-Encrypted: i=1; AJvYcCVzwvPHVkW5nsfV+sjr2pMzgRS0ouC1zFj6TxU208B6gT/rtZ9FLsxerKVv9krilTBMDurzWgiBWyV9@vger.kernel.org
X-Gm-Message-State: AOJu0YyqV/DiDW3rVgLUZiXDn7SuyLN5k20jmeALRj1yi47ulFtlMTbz
	r4u+zY2DiFgEytQtlSxbGmVAzYGm6W3BC62xIG8ku22WJ6GDrCCxW2EgF7U2vcNFIXG8VfKnQRj
	5RLOVmiKEtB+9XuvprAMvPVZQGPlUrowk4hf3j1QCMSo5CjjIUnUKNr0=
X-Gm-Gg: ASbGnctktWwkXbMq6OKpJX6XCvMf3JjiA+ugTDDTV7GbD0eaayC7qu3U4OCuIc/DNIm
	z+I+23BBeAV/q4Zj+VpUr3mgHJ76A99Q4bsZRYL52Era0qpPOocTshig6ckFoKWl3lglXmyrTLX
	8RqNaEtoinNyyHZAIlG+RZcDD7EbTjHi/ZbKTg9rEXMqgyir8Nu/0q7lt6lJzzi+Hfx9gcTEm3a
	p7MF7AAjiehPohWqtAvmgmKGjEQlc48KkNVVfJ8cQ==
X-Google-Smtp-Source: AGHT+IGGUZbhiR9IUlqNv9m/wQVXhvGAvZakNMpySeQRLyZqWCzHCQ7JR7cfsHKSfms6Ri+PP3YPooNgbQaM9igRZ8k=
X-Received: by 2002:a05:690c:6382:b0:710:e7ad:9d41 with SMTP id
 00721157ae682-719b416239bmr73383627b3.12.1753344072196; Thu, 24 Jul 2025
 01:01:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250723-leds-is31fl3236a-v6-0-210328058625@thegoodpenguin.co.uk>
 <20250723-leds-is31fl3236a-v6-1-210328058625@thegoodpenguin.co.uk> <de3ded0d-6d05-43fe-9ac9-b8bf29bd7d53@kernel.org>
In-Reply-To: <de3ded0d-6d05-43fe-9ac9-b8bf29bd7d53@kernel.org>
From: Pawel Zalewski <pzalewski@thegoodpenguin.co.uk>
Date: Thu, 24 Jul 2025 09:01:00 +0100
X-Gm-Features: Ac12FXzbWOhwGHI2oZtiOXY1iVFd8-eis8oWuz_X6csMbEke0f93YRLAKfk30DI
Message-ID: <CAA6zWZJ5wVgzh60Oj-4a4Uc8bvQ-VccGfjww-EjcjdM7Y0L_7g@mail.gmail.com>
Subject: Re: [PATCH v6 1/3] dt-bindings: leds: is31fl32xx: convert the binding
 to yaml
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-leds@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Pavel Machek <pavel@ucw.cz>, devicetree@vger.kernel.org, 
	Lucca Fachinetti <luccafachinetti@gmail.com>
Content-Type: text/plain; charset="UTF-8"

> <form letter>
> This is an automated instruction, just in case, because many review tags
> are being ignored. If you know the process, you can skip it (please do
> not feel offended by me posting it here - no bad intentions intended).
> If you do not know the process, here is a short explanation:
>
> Please add Acked-by/Reviewed-by/Tested-by tags when posting new versions
> of patchset, under or above your Signed-off-by tag, unless patch changed
> significantly (e.g. new properties added to the DT bindings). Tag is
> "received", when provided in a message replied to you on the mailing
> list. Tools like b4 can help here. However, there's no need to repost
> patches *only* to add the tags. The upstream maintainer will do that for
> tags received on the version they apply.
>
> Full context and explanation:
> https://elixir.bootlin.com/linux/v6.12-rc3/source/Documentation/process/submitting-patches.rst#L577
> </form letter>

Noted. Thanks for your time.

Kind regards,
Pawel

