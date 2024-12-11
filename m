Return-Path: <devicetree+bounces-129800-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BFEA29ECC74
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 13:46:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2C1F1188B7BD
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 12:46:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45D6C2368F6;
	Wed, 11 Dec 2024 12:43:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="DYo1AQda"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5799722B598
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 12:43:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733921007; cv=none; b=Xupw49Ry+0yfSdK36Un6nPnDQn5CW+1Fvk5x2o8R1/AuZ8XxHv1wSu9eMg1T9/PuqD4gbRW8Alfy8lAhvACS1LTkbL0EMG+cYOWhUnZNICItq7lhYaVmsZK4PihIbBQxXOCO6BVOJjVpCvCyghheQw7R85mufqU+qD0EzkIJuX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733921007; c=relaxed/simple;
	bh=0Yn9u0INepPlrghMNGHYHOrPqJ4QCbTtXMccsKKt37A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EXRsdo7tnJKzyh4FKIc7J1Zp40CT5ndjYF+uKbcqQtgJwUVO9bgkcS++fqP7NSQojqR9A8ryk3JNWfZcDszcZS7lSRCu9WEOltmTU3V+GGZWETzLou0QGLyR/XvLv/HXCQdFzIf6R2fd6I4idjMRANXTmrKocFqwgpy6xbmA+wI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=DYo1AQda; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-385de9f789cso4889124f8f.2
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 04:43:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1733921001; x=1734525801; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+tLcil2f/sIEpvxG1bvJluOHhLLNVHtLVp0fHF6xoJ0=;
        b=DYo1AQdaQBAIEuOhkti49t9ni4vBDwQIbyM6wI43OMVLrIEQ1rRI9G7dg2mmtko/gf
         tQ+HXMHoMGpziFrNmICyd5C5J3/9mjWACAFIXIONsp1bX6SC+/FqmxrHSBl0/PYWW0xJ
         PNdg+w4DOyERkytwnAmK+Bk1UqRF35pPDh7KBf6O5j1CEurl1xFcn249qoX+67nf5Beq
         YtwYlKEiy2gdlyrWZzdMLwG0tFNucvl4e/4XDQe0J/KYE5E8oNFP0uDiDAFJBi2n4MTq
         gJ9SO3wk+Umg5L1i0paDEniwFGeiIIGigLCaSLlOPSmERziQI/j5BC7DIvUdAJRErXxk
         0q3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733921001; x=1734525801;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+tLcil2f/sIEpvxG1bvJluOHhLLNVHtLVp0fHF6xoJ0=;
        b=RAV6FQa0U6n+hP+nj3CMIMpHnpWq0EXenZCSHWeVQs1bb/9lrxG1Y3NZv4Tmjdkgvi
         +pwIEeaw4GNSZJZ+ENuKc8UfSDNVAe3BizvnyWouwBJY7KZsOOHEtWdM+ggSjx8n/Vb5
         wPwbeCIcrj3B76EuylJ6Mw5LnnmHLocADCuTmok87gx/8ocvVPMEoHT0YfSuUOSt64TK
         7K5Aj6YCPHPZuXD/RyO/AELO4NDDMmx0YgUOmcVwS0ygxzYrEg0lNgH9tsJxyjJ0vA+P
         W7OZfz/4c4AdfE0cmdLhrz8blYm/ZfcqQ43bciSx9mMXvJZx0Vk00gniiMYoZE4wTdr4
         QPRA==
X-Forwarded-Encrypted: i=1; AJvYcCUTRdfEv5qtxhFBAKZ7mBxgN1PcDoxQmuy8cWQWpyB8x3sxa0e+xnZal+KYl03nqmgFij5IBabR3PuD@vger.kernel.org
X-Gm-Message-State: AOJu0YzMzOT/foFfItYjxh2db9GcykWwrUMn305sJcrx0R2RoELw43Lw
	ve3zqYc/YYDNWfYUMKyBq0FFX/FKFntrKvXY1t/UMi7jXd0bZH44p8pNnJS4K8Kz2lIcTjGDF4A
	zJDMZJaele4i68BiS09gqyITAykc2sAw5dl3T
X-Gm-Gg: ASbGncsfY1LzRTtv8ynVO2w9gAirJeAKX6CV/B9jW9ZgsJd0tVCDT3jXRpKIdvFg91X
	iCUkHz9NHW1YgQubbRHb7DtkCnh3ZwhNynmqT8FlBInY+qEqPFFqR+B4Z+VgS5+4LYQ==
X-Google-Smtp-Source: AGHT+IEduiJ/qcw2i54PCWdeVjWutL/RI21JMHnSbZRK0TIfzJWgWT07sIelSp8i26tVpPG0uZ/D+1PECxXqbXkDGsU=
X-Received: by 2002:a05:6000:1a88:b0:386:4a0d:bb23 with SMTP id
 ffacd0b85a97d-3864ce85f47mr2585264f8f.11.1733921000608; Wed, 11 Dec 2024
 04:43:20 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241210224947.23804-1-dakr@kernel.org> <20241210224947.23804-2-dakr@kernel.org>
 <2024121112-gala-skincare-c85e@gregkh> <2024121111-acquire-jarring-71af@gregkh>
 <2024121128-mutt-twice-acda@gregkh> <2024121131-carnival-cash-8c5f@gregkh> <CANiq72nMkzHLb9gi_i6RbQYkzP-1W5QbtGVx+z1f8nfp3y_CwQ@mail.gmail.com>
In-Reply-To: <CANiq72nMkzHLb9gi_i6RbQYkzP-1W5QbtGVx+z1f8nfp3y_CwQ@mail.gmail.com>
From: Alice Ryhl <aliceryhl@google.com>
Date: Wed, 11 Dec 2024 13:43:08 +0100
Message-ID: <CAH5fLggzx=UinvxZ=XFZFTcfv7LxCzJWk1jtLpgNrKZZU7VK9A@mail.gmail.com>
Subject: Re: [PATCH v5 01/16] rust: pass module name to `Module::init`
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, Danilo Krummrich <dakr@kernel.org>, rafael@kernel.org, 
	bhelgaas@google.com, ojeda@kernel.org, alex.gaynor@gmail.com, 
	boqun.feng@gmail.com, gary@garyguo.net, bjorn3_gh@protonmail.com, 
	benno.lossin@proton.me, tmgross@umich.edu, a.hindborg@samsung.com, 
	airlied@gmail.com, fujita.tomonori@gmail.com, lina@asahilina.net, 
	pstanner@redhat.com, ajanulgu@redhat.com, lyude@redhat.com, robh@kernel.org, 
	daniel.almeida@collabora.com, saravanak@google.com, dirk.behme@de.bosch.com, 
	j@jannau.net, fabien.parent@linaro.org, chrisi.schrefl@gmail.com, 
	rust-for-linux@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 11, 2024 at 12:41=E2=80=AFPM Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:
>
> On Wed, Dec 11, 2024 at 12:05=E2=80=AFPM Greg KH <gregkh@linuxfoundation.=
org> wrote:
> >
> > Or does the Rust side not have KBUILD_MODNAME?
>
> We can definitely give access to it at compile-time with e.g. `env!`:
>
>     pr_info!("{}\n", env!("KBUILD_MODNAME"));

I guess the challenge is that we need that to get evaluated in the
driver, rather than inside the rust/kernel/ crate. Perhaps we could
have the module! macro emit something that attaches the name to the
module type, or something like that.

Alice

