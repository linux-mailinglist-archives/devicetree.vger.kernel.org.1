Return-Path: <devicetree+bounces-233366-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DFD2C21840
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 18:36:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 38CF840563C
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 17:33:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB7EB36A61B;
	Thu, 30 Oct 2025 17:33:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VuFB/+08"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E591368F4C
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 17:33:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761845610; cv=none; b=dQVlW/hs/+29nluf4fU3rg/I7Zo5dJBQZW5+EUDqvw7cvPLkwIMEW5p4S2VgrGdq18JBjgSt6JeeBDm9yLle7S7OnjtcU7xtTEU+eCrX7bkWWkUCzdteHIFA5f0ihoBP3c7JGaM/KHkvrCWWuXQS82eN/4rzbOYpZTkWSSnGF2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761845610; c=relaxed/simple;
	bh=H4oxfW8LlpZdjRUq6Ea0t/3CAVHgSecFYn9aaImDYe4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=um6GtbqcpaJyae+udl7Ox5/1DA8PlhUiIe9GBnTpggkxpuNrBniGTqnrmIiEEousv8yLh8/kU9NoJUk+eX4Okdf8A02RCEvbBvgtRZvqVDhDixm3NkgrzDCHw+x7BdLcU3jlQjGfnP2n3BWd3M+Hm0Smm3OPBYqLpLwibx4AHIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VuFB/+08; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-b8f70154354so173972a12.2
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 10:33:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761845609; x=1762450409; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H4oxfW8LlpZdjRUq6Ea0t/3CAVHgSecFYn9aaImDYe4=;
        b=VuFB/+08pdYeJA78Eo4ssiG2X1KkwUEaqAoi6f+Mc5ll6SexgbAFJ3AdmuOYDeBTKG
         5FaKeMQoWNfnPnePO+0mRpdfVxmhm7qAIVhhA88NgEpkEB0u2yEegWSQhwqtGE1MYf+e
         Wz4+biaRNXGmftZgd6AfXdfC4Jgpa8Ik8yGL0i8Al48v0RsDI+NfU9/vsC6wkPDYVvEV
         iDPhLaqrrorm81+00WSFevjLbxwZwI7gzeRL1Xw4xmtpNeZP1cgjPLzH0vfLyNNWg9nq
         QgzXghDXWXbwkjsWr+CPWf3nbATZbfWv90NV2myUcWpOQ1HuHmsQ1QF9WeDlIaeGI7cX
         zDQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761845609; x=1762450409;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H4oxfW8LlpZdjRUq6Ea0t/3CAVHgSecFYn9aaImDYe4=;
        b=dEt0ti6dB3tN9cdM1yN1rJF7SbKS+mS8rybiLe12AYH7KscDm3oq+Qh3i2c0z7L/q5
         cBgSOm59RF4eE04U5R/rnfaRzruk82D7Rfdj9R2u+Do2Wq/OabQx/Ma+FTIvL5Vnkz9u
         DrFbE46YuqmuqEUKiut5aqiKn5vi0Z/ssGukoGBvVfkyLoI3Q9UZe6TcK91E/sdO/62Z
         QE8eM3hlfhg1txjQUYPEBPIofjCPd9aOLM979hvjnkeUOLRp3YE2sNBw49wQShaTsLrt
         c7AICNuy2NHf1oQrZ05S4buUOyFXujThCavYQeXCA3estGDLdwihrcdNcY4bhnyfmbRb
         WQUg==
X-Forwarded-Encrypted: i=1; AJvYcCWke5IWOXPHvaWeHaeiqwBSPPgpTy5JDmvooCh/+21+VedgfYAqIM5nBLAjrCxmFxj5QeSy8ONWjr6B@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4UEFHjRxRpwtoye2W/6UgLBhy3R7F1rzFwRWxS+43QI2ttLTG
	Z7B0QQVL/2GZcSulByezcJfwZl2BURJEtBCYJMH99DEA7tQoxgveyGqSX7ooP2E8WFDGaUqyqqD
	ZhCTr2ST3sNSLl8fruc6ueqSRIyj9C/k=
X-Gm-Gg: ASbGnctcef3IILSI0WOggZjlIa7FOBTkKabqlCOBSKLY2UzgaLC9x50erdRrqin3SRX
	RNMUQGtq9tGTpfD0iVAydNGBbpTxAZG5/yod+2VoNuYOSjNjIOHIg7rw3+ugfCmSX5nV5qOT5ay
	n29JnyjFiE89fLu7iwINh8xSlRpNGjZ5Yih3HjiOdegSkRRg+WJ3/GoCHjavVFicrT7XUf2AiW+
	J2spPtq/RMAU4fmsYP/kafAv2JdVlTIEqD28pOG/U3sIrZpXcVwyVHcCehuB0h8Ihhpl798C9KM
	hcQKHtIzJvyXrYs8UpZSXvc24GUOIoQrQAZjnV1YKgnTrA0XiieOx0/mIMWOIkklVMYPBb7Ht7X
	t+R4=
X-Google-Smtp-Source: AGHT+IEnjYjBApvEV2QGoZHHyDXa+qaKI8ES/te5I3LkfLBQaNi5vi9/OL65b9UrrS/ffKZv8Lj0Yn/P4npQa66AoQ8=
X-Received: by 2002:a17:902:ecc1:b0:290:ccf2:9371 with SMTP id
 d9443c01a7336-29519a8e2c3mr4051765ad.0.1761845608672; Thu, 30 Oct 2025
 10:33:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251030-zeroed-of-rs-v1-1-1c46d025128e@gmail.com>
In-Reply-To: <20251030-zeroed-of-rs-v1-1-1c46d025128e@gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 30 Oct 2025 18:33:15 +0100
X-Gm-Features: AWmQ_bl1pEXbFGijSDZoaUSFwxjZwY7dR_OCs0R-sUe03E0zMHx4JxOi_bitJAg
Message-ID: <CANiq72k1dEHK3f-5RxkAKL185Zx8dtUz8X_V2Pk7eALeyAzZ0w@mail.gmail.com>
Subject: Re: [PATCH] rust: of: replace `core::mem::zeroed` with `pin_init::zeroed`
To: moritz.zielke@gmail.com
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, 
	Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, 
	=?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, 
	Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, 
	Trevor Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>, Benno Lossin <lossin@kernel.org>, 
	devicetree@vger.kernel.org, rust-for-linux@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 30, 2025 at 5:45=E2=80=AFPM Moritz Zielke via B4 Relay
<devnull+moritz.zielke.gmail.com@kernel.org> wrote:
>
> ---
> This patch was suggested in the linked issue. It's my first attempt
> of sending a patch to the kernel mailing list.

Looks good -- welcome!

One nit: this sentence above would go below the tags and the `---`
below (the `---` here, above the sentence, should not be here).
Otherwise, when applying the patch, the tags will be lost.

Cheers,
Miguel

