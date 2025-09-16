Return-Path: <devicetree+bounces-217742-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 500D2B59227
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 11:26:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 029EB1BC5F07
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 09:26:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE7772BE034;
	Tue, 16 Sep 2025 09:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Y9GWTVhI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EC2429C343
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 09:25:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758014754; cv=none; b=A7KFkqKgNtXNGHzfF5FHzCQKAbhoL5IWu2rE2V4Brd9ahvXVQ0svYX6LcT65szzMwzDrLlk7uMfc5clV3UsJ4wOmDHj9rc5sepJAcFKCKWMxfxmZEkrSfkKULdP7oN0m/K1cctAoRtm8UDC1eqLrVWIUKGSYpyVbBOmeZl61XGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758014754; c=relaxed/simple;
	bh=prkrcgQgpwPbi8Cfds13n7nM9MiR8JPZLk8prSDLM2M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qVTySKlpxJWCibiffXE9T+nwaWvvb97aFh6e1pVj29jedGXlqYgta1i+ezzfnpsASCK/gvfFB7oQ7URahIA9av4mA20EvHJHom7BtwXpjZxvse2+umR0xLhAmu8r3DCOiwnfcbSUmTAsAlLhYMIEZc9iahFgGXSHykiZCowR1y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Y9GWTVhI; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2630354dd1aso6258305ad.0
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 02:25:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758014752; x=1758619552; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=prkrcgQgpwPbi8Cfds13n7nM9MiR8JPZLk8prSDLM2M=;
        b=Y9GWTVhIJtRrGpeL0bZclzvTItu83iRH38oBrb2EcNhXc3csSEaIHLjxntN6vPRekG
         U+fX+zMMyWvq4fU1tXc9j2glULsCsD3HDQtSdJDyCms7FAzij16kiCbq4ZFH4GfX1o2O
         60bm9gvWo1/H68oAAxP9Bh2C3rYz1lxFDBZZr5Llaxr51bh/syGn3RGUDU4Wubvi7ara
         /L0GnCtskb8YvQYVF0Cb8mRK/F3O+YZqvZLAJowHKwv2kqeo8uPRcyKtqEPj2z3PGkaP
         rt4IM+0Zu60Px0mIEQ9DMA72XYDEi5sZQhNM4KrzJelebhotOVNfMemzPC3+X9ehK8+e
         a/6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758014752; x=1758619552;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=prkrcgQgpwPbi8Cfds13n7nM9MiR8JPZLk8prSDLM2M=;
        b=e+zJeQ4tr/uYCUm6CtNO3Blnk5LQiR/cM9AwBuAu6Qfd99bKvDfj1RmgTYEAgdsoNA
         MNZgmoNFH78wskkQtQw0PuclH2YtF5o+LLAb8fk+BVcgElfDR5mpV+eMvYaJjXOtn44k
         TqjBXUOLvX6ipKFrRcYhAFjR93Un+vm7Jun5jaElqtVOFnt4YG/EWYuEj5AnLiFgTcnR
         EJKJrfEzJvxfmICJbZX2NLG6JZztTbYGQhT6agz03eovyOYlJ7xykyniSWlbOQADbzlN
         F5NOQiH203XAjp+/ZkA0WmG46cIS6N2npRNMHgiyzxNBN22VIybChtlUpqYYIjZvz58i
         6/ZQ==
X-Forwarded-Encrypted: i=1; AJvYcCU/jjw19Ol3DjBWc7ZIABRE0Lqe6PAQVIQMgoov9uiTjSnOFj2EQBY7GBarbVJiwrJiV+HqlDjOLwGg@vger.kernel.org
X-Gm-Message-State: AOJu0YxTNJ1HGChklwGtlgpNCs2i7dbYyvHN03Tr98joNdEGvKttQ8i7
	fRp8Pr7mpevbVVDLnIHA7XVvnpzxbwBPCLu0329dsVhrDazEiT4kVUZ0VFK+nfPlO1m/hKlQ8I6
	SclSMSAo2Mdd5Y2hrgOavYbgaOklyDV4=
X-Gm-Gg: ASbGncsSZve7VrXEKpyOm2EK/uSmpTB6kv64gGBZl64E4Qo+tUe5cifuVP00e50rt9U
	AsmXjYwSclbRNO/AmjUUdcPwMYVPl/X8wKGafNcjihIDPbdrvj3VlyGD9y5qednczVdNixtKaMv
	HT3grfTG11PCBZrXD226pMGX1kdzk6+1UBNHO6MmQEwkIeHWU2yfiiTzenG4O1c0ugQYkX7hN1a
	4sSuzWrON8diA9PZIlGarCie/RR4+pupVBWluzEGDwIFRhkHzT2M83PeR5SKvcvFkUqhj6p/eQ1
	LIDAFhP2UTJHHkD5ZrATxPhlqw==
X-Google-Smtp-Source: AGHT+IFwc6Y1OseNifdIO5J0qDFbM+aOcV8Z7xSmon/0tVZxaKw/+AP4a1wI7bqiW8muI5j5MuELqcXm9FvbGpAicyA=
X-Received: by 2002:a17:902:e5c8:b0:264:9287:3fc3 with SMTP id
 d9443c01a7336-2649287431dmr60170295ad.2.1758014751666; Tue, 16 Sep 2025
 02:25:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250813-core-cstr-fanout-1-v3-0-545c14bc44ff@gmail.com>
In-Reply-To: <20250813-core-cstr-fanout-1-v3-0-545c14bc44ff@gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Tue, 16 Sep 2025 11:25:39 +0200
X-Gm-Features: AS18NWCYvwyg0oQ7WKMGNn77retnSNUsfiN0nCmq9Ts2BvgM8ip_kHMckevDcv8
Message-ID: <CANiq72kq4RWNO1pJtJuG8jBpARq5ft6pcn8dHuUWJx=nosweyQ@mail.gmail.com>
Subject: Re: [PATCH v3 00/11] rust: use `core::ffi::CStr` method names
To: Tamir Duberstein <tamird@gmail.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, 
	Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, 
	=?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, 
	Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, 
	Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>, 
	Danilo Krummrich <dakr@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Dave Ertman <david.m.ertman@intel.com>, Ira Weiny <ira.weiny@intel.com>, 
	Leon Romanovsky <leon@kernel.org>, Breno Leitao <leitao@debian.org>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, 
	Luis Chamberlain <mcgrof@kernel.org>, Russ Weight <russ.weight@linux.dev>, 
	Brendan Higgins <brendan.higgins@linux.dev>, David Gow <davidgow@google.com>, 
	Rae Moar <rmoar@google.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, 
	Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	Jocelyn Falempe <jfalempe@redhat.com>, Javier Martinez Canillas <javierm@redhat.com>, Arnd Bergmann <arnd@arndb.de>, 
	Len Brown <lenb@kernel.org>, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, 
	linux-pm@vger.kernel.org, linux-kselftest@vger.kernel.org, 
	kunit-dev@googlegroups.com, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-acpi@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 13, 2025 at 5:42=E2=80=AFPM Tamir Duberstein <tamird@gmail.com>=
 wrote:
>
> This is series 2b/5 of the migration to `core::ffi::CStr`[0].
> 20250704-core-cstr-prepare-v1-0-a91524037783@gmail.com.
>
> This series depends on the prior series[0] and is intended to go through
> the rust tree to reduce the number of release cycles required to
> complete the work.
>
> Subsystem maintainers: I would appreciate your `Acked-by`s so that this
> can be taken through Miguel's tree (where the other series must go).
>
> [0] https://lore.kernel.org/all/20250704-core-cstr-prepare-v1-0-a91524037=
783@gmail.com/
>
> Signed-off-by: Tamir Duberstein <tamird@gmail.com>

Applied to `rust-next` -- thanks everyone!

If any maintainer has a problem with this, please shout.

Cheers,
Miguel

