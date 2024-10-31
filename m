Return-Path: <devicetree+bounces-117786-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 15DFB9B7C4E
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 15:03:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B59E11F21E3C
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 14:03:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AAD019C54C;
	Thu, 31 Oct 2024 14:03:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="Xm2IhSOp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4545B193417
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 14:03:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730383430; cv=none; b=dOKbo/vqMSXJG3T+A+zuAamKNaB8lIOLsP+SYotDiZit1g2lOHEF2MeEaugaM8yzeFssNnCc1idHehIIEaVbn9vUb4TVq5L+NZzkkTQwIF+KpxB8LX5Qqm4YD5PLDtdwKmHzt5mzP0iuShEDT5oss9DstfJn8hr4UGnqpmNt1SE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730383430; c=relaxed/simple;
	bh=/ujG1cezyJOLtrJGpOSVlHT/h9268ICutSdVP2Ou40Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=C3euGL4JMHYiZVfKdiXPvWCZ7RgjhNyJbs3xW4pbfWXiEFZZvC9FWX73U1/PEdBqcFzR74vG6dL3EO23s1zXruwuft0RbzKiOvtwq7UHLZMwv2PXAeV5c9HVXZ80AoBRY5lcSqpk/GKvl6cYw6NJtHoUSj/u8C7Jd0kC+1yukV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=Xm2IhSOp; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4315baec69eso7974715e9.2
        for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 07:03:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1730383427; x=1730988227; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/ujG1cezyJOLtrJGpOSVlHT/h9268ICutSdVP2Ou40Q=;
        b=Xm2IhSOpm+qr7TCBk7AudggkvIcnpnT+Wgmy36+CYdaHeHgnu8E81Ur+gUdxhEPTzB
         9tEpIaxaU0yOlE8oIsNmdvG1ifrVzLj5lGlhNdf31piQ20y0GrcbJbUtLgWisl+6llCr
         FAuNMO4X6q7GkcdUxGz1/Aa/7taePkl9t9uSLY1Y06sEnrz1zIVGA9At41a+sqB/ecto
         ZWty6qcj0vgTS6+H1EafmUiwPe9P3E6CyDNWT5ALd97qbUT4g3KWz7JBF/iFCnKe9+r1
         xPFjhPCGVU9yUfwEajCofp3fbcMIPmwdVodAXExsdSnaVwueKZMWSaZcqeE/ZJvcKs8x
         SxSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730383427; x=1730988227;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/ujG1cezyJOLtrJGpOSVlHT/h9268ICutSdVP2Ou40Q=;
        b=LxfyJfug94ge0x7c34a8eI07guJQ9elfqCbSii3pcUFgWenuzHOK2kXv8aw7bywpeN
         GDSqCRWapfyM0SBt0prNQAzkW/48fmPrS0Rn2o1lyRr2eGZY3lmZrtLOf9icQtOcZ8JN
         x5E5SaPNV8Vvklzi/76pm6i87eHFTUTefjfKu+sEXne3NxgQj4QDRjfNqRIba1zamK99
         M0axj9wR6DGar23Lc3ZDT4hBcSce9v2drSeMyMI3TW3o/nKuZP9gbSRRdFNjbtQ4PVp/
         /hiishaBlkJjm0xC8whGmhhMYQP5BcTrqd62gN8LA22ZoOh0aIDX4Xul68QspWHdmFSx
         wKCQ==
X-Forwarded-Encrypted: i=1; AJvYcCWa7dGbddEqQMVtHTg238NpM2gax6odoK2bxhRxKg4f9XuxBzARI0G1xDq4AX119+rQ1Sy5wAmnRnDO@vger.kernel.org
X-Gm-Message-State: AOJu0YxdnfDLiJeQGcoGmq2jbK7IfzgL65AaSnwCFCJ+fQsjQxCDwBzZ
	bvVfGmodPHG5jPxeAgu1zzRsT8cPdp+yCG7EbbBCYIRsKSFoqwKwhjYB9nYoi0HMfHasSt8MP8h
	rWgEmakw7ICit4RuVyyWylkePkonABC1+/js5
X-Google-Smtp-Source: AGHT+IHf/f0WMGY5XNed4m51/xvXz/jJNZeXwlI9IFRgtvyFISoVvCcIb42ZBfoVHnQGnw0bffjs/1UKGO7A1p8T41g=
X-Received: by 2002:a05:6000:1569:b0:37d:5103:8894 with SMTP id
 ffacd0b85a97d-381c7aa4a56mr46347f8f.42.1730383426371; Thu, 31 Oct 2024
 07:03:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241022213221.2383-1-dakr@kernel.org> <20241022213221.2383-11-dakr@kernel.org>
In-Reply-To: <20241022213221.2383-11-dakr@kernel.org>
From: Alice Ryhl <aliceryhl@google.com>
Date: Thu, 31 Oct 2024 15:03:33 +0100
Message-ID: <CAH5fLgj1rd3b4aaMj8b6Rs77_t+LZApxK-dmP2gk98L-NjFyWw@mail.gmail.com>
Subject: Re: [PATCH v3 10/16] rust: add devres abstraction
To: Danilo Krummrich <dakr@kernel.org>
Cc: gregkh@linuxfoundation.org, rafael@kernel.org, bhelgaas@google.com, 
	ojeda@kernel.org, alex.gaynor@gmail.com, boqun.feng@gmail.com, 
	gary@garyguo.net, bjorn3_gh@protonmail.com, benno.lossin@proton.me, 
	tmgross@umich.edu, a.hindborg@samsung.com, airlied@gmail.com, 
	fujita.tomonori@gmail.com, lina@asahilina.net, pstanner@redhat.com, 
	ajanulgu@redhat.com, lyude@redhat.com, robh@kernel.org, 
	daniel.almeida@collabora.com, saravanak@google.com, 
	rust-for-linux@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 22, 2024 at 11:33=E2=80=AFPM Danilo Krummrich <dakr@kernel.org>=
 wrote:
>
> Add a Rust abstraction for the kernel's devres (device resource
> management) implementation.
>
> The Devres type acts as a container to manage the lifetime and
> accessibility of device bound resources. Therefore it registers a
> devres callback and revokes access to the resource on invocation.
>
> Users of the Devres abstraction can simply free the corresponding
> resources in their Drop implementation, which is invoked when either the
> Devres instance goes out of scope or the devres callback leads to the
> resource being revoked, which implies a call to drop_in_place().
>
> Signed-off-by: Danilo Krummrich <dakr@kernel.org>

How is this intended to be used? Every single field I add of this type
is going to result in an additional synchronize_rcu() call in my
destructor. Those calls are pretty expensive.

Alice

