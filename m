Return-Path: <devicetree+bounces-259301-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oMkiChJwdmnyQgEAu9opvQ
	(envelope-from <devicetree+bounces-259301-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 20:33:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 945F18239A
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 20:33:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3DF8B300952A
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 19:28:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA9802F49E3;
	Sun, 25 Jan 2026 19:28:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gWBr6hEn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f178.google.com (mail-dy1-f178.google.com [74.125.82.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DDDF2F3C31
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 19:28:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.178
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769369336; cv=pass; b=Wrm+Gwvc9aBBSOnMn6riBwkA1IlwZMhYQwf94kUBpIlKru81Y4X3UMiRcXANZ8AzHMv4WD3CXQg1tour9MtK4/dDiL/M8ks5yf1Sj0pVVPwsfmJhjkGT4Iu/+GB9XeKJ14DKnuLQw59sNcnMKJdgNq5etR13ETG4fERWpMAGviU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769369336; c=relaxed/simple;
	bh=8pOcKL14tGgNq95iPvrL/GzHkB3X1hsHRYUtaIz9Lq4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GqZi0EOmRX/zfughA2xNdO5pZkTq8gc31XIS0TSWLjxF5JSD1EdbrYeOEWTEeSnRXXAd2jO9GxoomNtSIpz850hyoMQ0+ONvmcbgaScMDaojgb8cnxDK75RTIS8XWwx2nkRd0fTWpFdYBgANxFRTql95S6WOLMJ5mCCINPibIC4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gWBr6hEn; arc=pass smtp.client-ip=74.125.82.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f178.google.com with SMTP id 5a478bee46e88-2b701d29ddcso133430eec.3
        for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 11:28:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769369334; cv=none;
        d=google.com; s=arc-20240605;
        b=YmBkfrWxtjmh5M6pO1qGa4bLYQIwiKqS2uOiFP41uxF48x1MCwL7rsj4pjTGT0ZV5o
         Xyqiy8U1kXoKnrQaMotjpzthykBcQtuD90a5RjvyTwOHrGk3SDYzo5ikF1/E7BVzG9om
         sEtsdaXbyrNGhcLBnIAP9m1PtOVHQAle44+ptlBS5KX8K32lW5uB0oDurpUfnM/jnZsL
         MN5AtGFAvDqegdCnHQRWtwvvdRTVh8ZZvY+ezxG+3iiozn+jr/CrtVPdW6fGQ4vVcCmg
         2lwMc0aYVcj/nLViQZ7+mHQnv+e3A83RsVNVhbEOUVKOPHmZi/GwVy0NeJr5db6QEotF
         Yr4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=0KQJAb+qDBRIACR9YuX4oaJxaPLkdV2uwaezIinAs6E=;
        fh=y5LdEAwipRFI7/nMbJjC7WIBTIay0XG8ocWPu/Usq34=;
        b=SsNYxJXbKMEReZLz1juka9rfUdEBv6dl0lpjt5Aox1i8e6Qbk8IG5dSq+JNjETVyzU
         MZsgGfeUgLjvkSIjLC/Oz+73hBCNuCn12eQd8hTE6YqQ4lGp+8K2a8paDExOXkZ1zMFB
         1JK84OlDhVMb1434U6Q6f1agSYE7McXCwr/NYfxa/3Ai6J6pJTU18UQU0ZApWTOg1tFW
         XGGK3lyegdlWkmyEHc64RZ+wE5U5TLBKAmKCRY2B5qJvKM1Ns4kJlMIbRM/rLXNgsTM4
         kuyqDtcz3N41wq6hG9xxqZMZRMhUZRLYh1ATosfi2G17rRgCIWA2oHqyLB2OA09j8LA5
         DXzA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769369334; x=1769974134; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0KQJAb+qDBRIACR9YuX4oaJxaPLkdV2uwaezIinAs6E=;
        b=gWBr6hEn0tI6IrSvGPwg+QAg4tH8G2RKGxzIywB+69eqwMu/k91SsQ6kCJSFQ/obCE
         9cUxZAvQdDYhNYqH/s6zDC2L0D8ueAizx+FYyEuRxhyz9VlLxBzth2+UgFMo6iMBD+3U
         3B9ckWWNJ/VN7G65lrLkOpjv5oobgqHdXp5hNLWeFupUj4+7JjYPNduq9UO/TeUSKcGU
         J44+ylxpJCfwMJqg01AZfu/Xi02c+Pye6PrpqD5YdfcKvaxGWxnYnla9zyherEn95pNR
         ca81pCTIj2NX88QJ+g8oibxfvYCdmUEhSlIInKNEteyTj3qDtH3EOaw4Yddq9APbDm4Q
         nm/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769369334; x=1769974134;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0KQJAb+qDBRIACR9YuX4oaJxaPLkdV2uwaezIinAs6E=;
        b=fwY2GLYUCAzW4Nca6A4ZygdTcwIgPdFJfUk6bQPA/ca6L7fOz9ftEIiQ+DwHP+4vP/
         keFT0OLseq/63bE0h0XxaY1tTucAflgNyIBngoWLLKH4EozdtHdHJ1TUKGhfVCQYXXCO
         cCZFC7MrIMQhvZJp/Y9rZC4Vpg48cl8kx7+KlQC8NRPwwHE7oXoUW+c5sE1mnhWNY5ho
         xwieWLqMGyasd8jHwkMMVFWslMGMxu3XsixJgUA/2g0z9i5XdYphYHRjEVf+CgVW5suy
         +G5CdKOvaKHFeyXnya1qQjEQKBxYQQGWpNLrpwy7FFXO+33/2lAIuOpt8MLecQ3Of2RZ
         bvig==
X-Forwarded-Encrypted: i=1; AJvYcCWIDnFs7QBvilYZUKX0BMhF8jsNZn6quOXTBUjE4JACjauwQPzNvQJkQsQpOW4xkpCLcFxEtelxxAee@vger.kernel.org
X-Gm-Message-State: AOJu0YyK4gvTbNYaML+wM2DgcAEzR/h4oWbAs1X648wC6giU7G2YmYy5
	9l89BxDW4rlGh8Nu5EIRxsfMzjmgPCBn7EtAu5Y+5kFseNtwDdkxBXx1RfDikb1D3QYnmFfvwZk
	hfWXIBJF2P+3bbixW8t6IJ/EXdQAr0mw=
X-Gm-Gg: AZuq6aJHL5cRiP5Rwfhd+nqWyJQkzCRMKz5Oyf08ExFAZzrdzTfT6JHyr9r+1WpeNMq
	KM+EZsj9Q1MmA55QhdeCa+pjbeRKr21z9Gi2QoMyiwlSDEg+N3gvgaRfx1oyFQss05jdHx01rgu
	PaVSO0InguM6ZOWOxI7noaG5INb/nihz3m9qK7+8KofsEqf9lnqTyvG/aEsRq9qWU7Va7GduV5H
	L/74CaYqm7nJig/i9ZdJpyWUCwLdxJuUhGMOtGXKNbu5lfFv1xpjdSF02AqPonX/iQlvuuec9Og
	SnY+UVTR7yhgRK8XjInQ0eF7jEv+a5tYU9Fj8e6kvnrhV34OYUuzoZsQ+BYVASNJUxDStoAEU8o
	FthrAGRtX3+yf
X-Received: by 2002:a05:7300:6422:b0:2b7:1744:7261 with SMTP id
 5a478bee46e88-2b76412ccacmr568449eec.0.1769369334237; Sun, 25 Jan 2026
 11:28:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251031-zeroed-of-rs-v2-1-f89ff71e943e@gmail.com>
In-Reply-To: <20251031-zeroed-of-rs-v2-1-f89ff71e943e@gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Sun, 25 Jan 2026 20:28:42 +0100
X-Gm-Features: AZwV_QgFOh6gcbuhR-5RQPCD5CWNvv46oSMWmL5YFImHbprlXgpFhBFTkEPczKU
Message-ID: <CANiq72kgqJPwpW5QRg1Xg0d9Dbhe1RKxgpqmp_9vH0xopWO6eg@mail.gmail.com>
Subject: Re: [PATCH v2] rust: of: replace `core::mem::zeroed` with `pin_init::zeroed`
To: moritz.zielke@gmail.com, Benno Lossin <lossin@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, 
	Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, 
	=?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, 
	Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, 
	Trevor Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>, devicetree@vger.kernel.org, 
	rust-for-linux@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259301-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miguelojedasandonis@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,google.com,gmail.com,garyguo.net,protonmail.com,umich.edu,vger.kernel.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 945F18239A
X-Rspamd-Action: no action

On Fri, Oct 31, 2025 at 10:52=E2=80=AFAM Moritz Zielke via B4 Relay
<devnull+moritz.zielke.gmail.com@kernel.org> wrote:
>
> From: Moritz Zielke <moritz.zielke@gmail.com>
>
> All types in `bindings` implement `Zeroable` if they can, so use
> `pin_init::zeroed` instead of relying on `unsafe` code.
>
> If this ends up not compiling in the future, something in bindgen or on
> the C side changed and is most likely incorrect.
>
> Link: https://github.com/Rust-for-Linux/linux/issues/1189
> Suggested-by: Benno Lossin <lossin@kernel.org>
> Signed-off-by: Moritz Zielke <moritz.zielke@gmail.com>

These were also sent by Benno, and in the issue he mentions
"re-sending", which usually means just adding your Signed-off-by below
his:

    https://lore.kernel.org/all/20250814093046.2071971-1-lossin@kernel.org/

But he also mentioned the Suggested-by tag etc., so this is probably OK too=
.

Cheers,
Miguel

