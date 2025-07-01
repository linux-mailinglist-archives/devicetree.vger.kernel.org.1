Return-Path: <devicetree+bounces-191440-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 16656AEF55F
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 12:44:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A56C31BC4121
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 10:44:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B58122701D0;
	Tue,  1 Jul 2025 10:44:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="0IfX6NVp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f74.google.com (mail-ed1-f74.google.com [209.85.208.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1814F26A0FC
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 10:44:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.74
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751366654; cv=none; b=fcPmwaaGF6+1zRu2RY44Y+4n3Q5FsxHA9gvYjslL/9hoHrJi34lLdmFc8AAEJ0T7HkTzkqCi/gytUbadvYQAM/hhfjJ9PDN12WRfd8+LwJ+rSQmIgY31leDWG9v2cW/CJNjbcKDTlgzkw+XnuylfFAW+Nn2Alej+O1HKK02fsZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751366654; c=relaxed/simple;
	bh=FjNNJQuNFHz/e6yt6+QF01AIHDz6pY4OvsUX2LurgSk=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=VvtkqXx0QXcdRgm+ZiijgeqEeTewcOnD2gL6/cil2e8LWCHImtuCfP9xRTGH6VBfW3i9F7/e69OercWDFInWP4gB8NFm0QGL8vSe5sEp05dpIXRpUZCdY74K1Ou3e5nMxE4BM9OhlUuCaFJ7GtjwHWdElZ5MZD2lA3NSijsKYNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--aliceryhl.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=0IfX6NVp; arc=none smtp.client-ip=209.85.208.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--aliceryhl.bounces.google.com
Received: by mail-ed1-f74.google.com with SMTP id 4fb4d7f45d1cf-60c9d8a169cso3133730a12.0
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 03:44:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1751366651; x=1751971451; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=KkP3Q/mrHcTXpi5jFAQSRZZTttwkOM8RfBay5zssxDs=;
        b=0IfX6NVpNjtGjWWJmTQ8Irwj9s8X4EQ5mqRhbkhAD7SsaJXgaolm16BVuUfHbz+T3n
         ZP1coUMw7+AyjCyTOsSN1/pM/CGGzpvIiGf6dhlDRfFzYG+RbRbodOhIerq+FtglaxE8
         pyJCfmnahJqbZqsBynxlPNaQgi5t38zFunprzeig7PtySLFXJIZmg1ksimBIoRhyvv+/
         TNKuiDIOZamUBLdanktOezePuXIDRZtcs0T+0yMVWOGjQGY4roOChUlSTT9RG7c/NpeL
         HWUFc9uKJP1S6Wo9Pcj/6v3z0QddPkwnWaruQHokhsB2IPDcJ33nUHMzWbejwtsBJAjJ
         wyKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751366651; x=1751971451;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KkP3Q/mrHcTXpi5jFAQSRZZTttwkOM8RfBay5zssxDs=;
        b=e5i7FmqrLO/l3X+Wpun03DmjvqKXkKVvNiP2rCRmOtnu0B1wdiRTg2lNbstGkpITDD
         kwiCnOMeGTJ9z8mcrRSfYnHM/yijcEnUYhFQ1lIBU8i6o3LO0umdGqx9RfaVcPSGPCvV
         XHHEqBSuYcIIM9wZynp6Rm5hRg7cGgLqTueSgeBCUaonwtTdZqM+EcFuEOtTxqXLdnNZ
         0ddluJe4bEVdIyTukG22EO+hFGgF6Py1SOBxGEavIa7OKFXhLsyCiCv19jQu1uSu6wai
         rXE7CeRhqAnURspxuza60WctW/Pbq+skLysdyuatIrkFPFufyfYNb97FJPGw7yV6rvSQ
         /l5w==
X-Forwarded-Encrypted: i=1; AJvYcCUf3PlBeEl71fE+O36rFQf9nBgYq1l08J5vztgGGBMZpeqcXWiqtB0nWPO9IgyloB/eeUNfr+Fx44CY@vger.kernel.org
X-Gm-Message-State: AOJu0YzZdg0HAqRClrGzJhqf97T8pt/jGG0TWtB9ZL6e8Zstz6efySW+
	YPvNUgy/TXXSnqgxO3JYQGeTztWtJUr4WkPENx3Q9W3swelL1AJmkxbM6kk/QEFuyfA+EcZKD03
	fv1zm5cswRoDMpU+VGQ==
X-Google-Smtp-Source: AGHT+IFVVYwcwXIW2+rs+LXCKTLno19A5yuxBI/UefmvL0JcGML1UYLUePmSmcmNLPYFZsBsDSZ4dtmzcyM66Ug=
X-Received: from edwf17.prod.google.com ([2002:a05:6402:1511:b0:60c:3b8e:c3eb])
 (user=aliceryhl job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:6402:26d4:b0:607:f431:33fb with SMTP id 4fb4d7f45d1cf-60c88b26b30mr16470283a12.3.1751366650570;
 Tue, 01 Jul 2025 03:44:10 -0700 (PDT)
Date: Tue, 1 Jul 2025 10:44:09 +0000
In-Reply-To: <20250619-cstr-core-v12-0-80c9c7b45900@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20250619-cstr-core-v12-0-80c9c7b45900@gmail.com>
Message-ID: <aGO7-SQUUgg6kSVU@google.com>
Subject: Re: [PATCH v12 0/5] rust: replace kernel::str::CStr w/ core::ffi::CStr
From: Alice Ryhl <aliceryhl@google.com>
To: Tamir Duberstein <tamird@gmail.com>
Cc: Michal Rostecki <vadorovsky@protonmail.com>, Miguel Ojeda <ojeda@kernel.org>, 
	Alex Gaynor <alex.gaynor@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, 
	Gary Guo <gary@garyguo.net>, 
	"=?utf-8?B?QmrDtnJu?= Roy Baron" <bjorn3_gh@protonmail.com>, Andreas Hindborg <a.hindborg@kernel.org>, 
	Trevor Gross <tmgross@umich.edu>, Brendan Higgins <brendan.higgins@linux.dev>, 
	David Gow <davidgow@google.com>, Rae Moar <rmoar@google.com>, 
	Danilo Krummrich <dakr@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Luis Chamberlain <mcgrof@kernel.org>, Russ Weight <russ.weight@linux.dev>, 
	FUJITA Tomonori <fujita.tomonori@gmail.com>, Rob Herring <robh@kernel.org>, 
	Saravana Kannan <saravanak@google.com>, Peter Zijlstra <peterz@infradead.org>, 
	Ingo Molnar <mingo@redhat.com>, Will Deacon <will@kernel.org>, Waiman Long <longman@redhat.com>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <nick.desaulniers+lkml@gmail.com>, 
	Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>, Andrew Lunn <andrew@lunn.ch>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Bjorn Helgaas <bhelgaas@google.com>, 
	Arnd Bergmann <arnd@arndb.de>, Jens Axboe <axboe@kernel.dk>, Benno Lossin <lossin@kernel.org>, 
	"Krzysztof =?utf-8?Q?Wilczy=C5=84ski?=" <kwilczynski@kernel.org>, Dave Ertman <david.m.ertman@intel.com>, 
	Ira Weiny <ira.weiny@intel.com>, Leon Romanovsky <leon@kernel.org>, Breno Leitao <leitao@debian.org>, 
	Viresh Kumar <viresh.kumar@linaro.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, rust-for-linux@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org, 
	kunit-dev@googlegroups.com, dri-devel@lists.freedesktop.org, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, llvm@lists.linux.dev, 
	linux-pci@vger.kernel.org, nouveau@lists.freedesktop.org, 
	linux-block@vger.kernel.org, linux-pm@vger.kernel.org, 
	linux-clk@vger.kernel.org
Content-Type: text/plain; charset="utf-8"

On Thu, Jun 19, 2025 at 11:06:24AM -0400, Tamir Duberstein wrote:
> This picks up from Michal Rostecki's work[0]. Per Michal's guidance I
> have omitted Co-authored tags, as the end result is quite different.
> 
> Link: https://lore.kernel.org/rust-for-linux/20240819153656.28807-2-vadorovsky@protonmail.com/t/#u [0]
> Closes: https://github.com/Rust-for-Linux/linux/issues/1075
> 
> Signed-off-by: Tamir Duberstein <tamird@gmail.com>

Overall LGTM. Only question is whether we should re-export
core::ffi::CStr from kernel::ffi. Reason being that right now we are
telling people to never use core::ffi as the integer types are wrong,
and I think it would be nice if we can continue to tell people "never
use core::ffi".

Either way, for the whole series:
Reviewed-by: Alice Ryhl <aliceryhl@google.com>

Alice

