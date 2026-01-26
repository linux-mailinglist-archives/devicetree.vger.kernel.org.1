Return-Path: <devicetree+bounces-259337-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OBqEFc72dmkxZwEAu9opvQ
	(envelope-from <devicetree+bounces-259337-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 06:08:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A8478841FA
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 06:08:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3EED13013784
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 05:08:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3909E231836;
	Mon, 26 Jan 2026 05:08:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="k9kfJBC+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f179.google.com (mail-dy1-f179.google.com [74.125.82.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355F81C84D0
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 05:08:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.179
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769404101; cv=pass; b=mYZOmvYsRoeyCcbhcSxSeooRUeOw+seQ33E1KOZ2vx68I+yxzmgKIL6VcEPjpdsdQSL0xn/ETPrMrlw+WmoB5GmP/LfmmDGR+/5VPxEArasEOzmsmAPtdJ+M6AISgxJFr4czIzV008p2bMjy0UNxx8RmeBMJpJO02CNy7DtTOjQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769404101; c=relaxed/simple;
	bh=ZBsVD6kxKzurT7H7DtCLfcoGufza6/gI7cdcVlj4q0M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FCMcHDxUuHya2oRNvS3gWURscMwGHN7+Zq7lHo8RNBwZotIKGSxq0LkC3zbEZblwZW90vkhQd3pUd1lQzUA9OCh1cQp1dRJUI1qydovtOIaxiskmwbrAiNGP3ZxYWq11mYbWClx6aaVIjYSI6lHMf2RYWqwlMnBf2yAhZW7pqAw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=k9kfJBC+; arc=pass smtp.client-ip=74.125.82.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f179.google.com with SMTP id 5a478bee46e88-2b7267ff06fso329682eec.2
        for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 21:08:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769404098; cv=none;
        d=google.com; s=arc-20240605;
        b=AJpOOku2KSUzCuqFtZcY67b3Co+9vI06QReIKdxsu6O4KSHACK1YFiNEn0eJk6Gn/c
         +QkL2JHkkVM6p75DWQoiPKsiiEP/bQqu1OPy+MSoZ3ogXdmdinUP9Cu2FY+MNu2mTK0m
         c+IzgbkyaaSVp++bs3OUZcO+MqV7D4XmFfhsjJ+qi+SeelHeCE3roXTW5ODhmYScQQ7L
         Ist8E7R66j5WJSn/8JRvZKMoBeECDwvfHDuRUHtqZ4OO1G3EMic7T23uRRF1C7Ap3vNi
         k0H6XRgj2lA7YbyF/lTyZClZhSLWMTEsoPth6y20dt/zoHd1GG/wMILNrR3kQAOYITNX
         Y58Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=bsbA3S4vvXnWg6PVwhDAv4/t5NunrqZ0yk7Z9wsyNZU=;
        fh=isQ8qR20c+0VaRHSNO2yiW9gyZoJY3lELud2deVmUlg=;
        b=Wg3CcAXFKyIoOTO7dm62rsM1EcWn7viYQt1ZFKHKIlaqnpPqt9tj/5M5tDzFWxsEQ9
         gdUoqTdGo4dTJgjlpvn+cl3dGGySWSjpZ9yiBhlsvKLzCyCB2dE2G1HQ/zKLu+z+8aW4
         Kjo4i2bL9dhLj0I7feRVnRWN4vClitsuk3yM0wsANWHVSVE5rPuTQTl1WhIQY7WYQW6F
         l3EPWFjTFAYAYqa6fxrpNv1F0IWuRcWZxwaFg+lUG2bOtjkNw1S0CbtSKQdRzwikzdAb
         LCOswozwTOOM4baZQjIxGY+hLaVEubz4TACIi5XzDNrSMD9PEa1l/URXkAN51v1qca0g
         ftZQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769404098; x=1770008898; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bsbA3S4vvXnWg6PVwhDAv4/t5NunrqZ0yk7Z9wsyNZU=;
        b=k9kfJBC+ldCHGEir2hpwOAhElO6egoRCIxzj0IKfTEqmro2/yY4nV/+ZWVpPnASaL2
         +mKMYxEvPEWQ3mA0MifDdWsjJxAV9WDFd60bga1tQmEuwjCMbcYXGnmdKnOy0gkl2ch2
         Mwj8Ks7ue/Tv0fi0t1I2FGHTzLLGzLT7EpWkOR1/bqd5u34W9Lgxxo6NypTHOKYsnB2Z
         KCh6L7ducVKh/8PXfUb+iHCyyPnIdAB5ON83DnVEVnBfpqvtvEurIJrSHBLvIkSub/iU
         dCIDy2cliqsDj+61/J2ss/bUZVs3zCGOy2Q26lc2sW5MOSWlOjMrzV8iWQUqiUi0YrGB
         4lrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769404098; x=1770008898;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bsbA3S4vvXnWg6PVwhDAv4/t5NunrqZ0yk7Z9wsyNZU=;
        b=PZTfyKRHz+kR5N9fKd8FOOBSc8Wza3g4SYrFGwc3XBrU/ZlTVWm1CvYgP6eass5jJL
         uU1ftQU/LTsnR1/M+FvL/J/aRICWAdtA/9m2cfGc8iaA/hdGDj1JYGkMJvqAUMxCe5XV
         AEIpF8qMGd3t6Px7VPCxwPuJLN/1E+uWBe0SCDOtDL2ZDi1uEnkH36UOWNqnkHv2C0Ov
         450ydtU9fXJybAPWsgKMShnnrLxETNRzyju1ZOLZr9KD/TBzbhntYnD+Qq1FZHci7QEf
         plEs2NgGtNqMMefywjP13T8oVuGLmVpRAEZhr+S9ld8TKjvOX+VVX3LASXQzbcQ5NWjY
         yaVQ==
X-Forwarded-Encrypted: i=1; AJvYcCX9Ya3WhiTLFcl1DkSTVZUT22p0EZV6liNn9Sy3Ta4R0d40ark4WMY+7bjqdHGId6bCKafZAwVaTAJw@vger.kernel.org
X-Gm-Message-State: AOJu0YzeVVg8pTf4FZqoeLh4kLApxqZHWJlY8cWldO/kib5ZsunvS6Df
	3y2Ej2QI6mbi3tb2EhQjkAeKBsh3F4PutGGRZ/cgNZpv4Ne2rrIpbqmaYzSf8xNqyc4W+FrYCmh
	gqOFtn6y9qPF8tNyJw90m7P19CcfVvn8=
X-Gm-Gg: AZuq6aIxLe2Z/kXpFQ2bay0q0NK30M9lRP8OZoSWtRLfjkHjKRhmMQ7Oz7OPkOcvuZm
	nxuNA448zgvpQxQHdptn8XuJELdXlw8zXHFqKRmWkYtLk3MjjQA7XhnJQcNXp/o5ZCxOSw94FYR
	1bAKgEWyGvQE9zsho48pcps61ZtVoWc0VzBzc6IPan7rWxJ5OCmTPviMw9vdQOcrD2sC18lZ6zU
	tDXy6BTahvsTyE2Xgu9nq6GDU1W4LkB3sCfx3b2WBbxyotlyfltfAmcoWwkKrMRSs7Uei8uxOe3
	1+eRPKw2sSwAPl/teiJP6Z8lHjIrCPnpuUdNQZzvq+wk9t4yl6lGddJNbNAZJvFQx2qZimN1ULv
	B6rYwDTa2Jw/8
X-Received: by 2002:a05:7301:3d10:b0:2ae:5b8c:324a with SMTP id
 5a478bee46e88-2b7644f41dbmr855051eec.4.1769404098278; Sun, 25 Jan 2026
 21:08:18 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260105-define-rust-helper-v2-0-51da5f454a67@google.com>
In-Reply-To: <20260105-define-rust-helper-v2-0-51da5f454a67@google.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Mon, 26 Jan 2026 06:08:03 +0100
X-Gm-Features: AZwV_QjC45jcqbNpvCzRgWaUDtcYZvulw1uksmCYv_NCU9WJD69mYzMDZ_yhpJo
Message-ID: <CANiq72m4hBinKM4jRrkpZ5nM_wraQ8FMsYtjgKRkNDmK5sS8dw@mail.gmail.com>
Subject: Re: [PATCH v2 00/27] Allow inlining C helpers into Rust when using LTO
To: Alice Ryhl <aliceryhl@google.com>
Cc: rust-for-linux@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, 
	Peter Zijlstra <peterz@infradead.org>, Elle Rhumsaa <elle@weathered-steel.dev>, 
	Andreas Hindborg <a.hindborg@kernel.org>, linux-block@vger.kernel.org, 
	FUJITA Tomonori <fujita.tomonori@gmail.com>, Miguel Ojeda <ojeda@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org, 
	Benno Lossin <lossin@kernel.org>, Danilo Krummrich <dakr@kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Paul Moore <paul@paul-moore.com>, 
	Serge Hallyn <sergeh@kernel.org>, linux-security-module@vger.kernel.org, 
	Josh Poimboeuf <jpoimboe@kernel.org>, Jason Baron <jbaron@akamai.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Ard Biesheuvel <ardb@kernel.org>, 
	Andrew Ballance <andrewjballance@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, 
	"Liam R. Howlett" <Liam.Howlett@oracle.com>, maple-tree@lists.infradead.org, 
	linux-mm@kvack.org, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, 
	Uladzislau Rezki <urezki@gmail.com>, Vitaly Wool <vitaly.wool@konsulko.se>, 
	Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	Daniel Almeida <daniel.almeida@collabora.com>, Michal Wilczynski <m.wilczynski@samsung.com>, 
	linux-pwm@vger.kernel.org, "Paul E. McKenney" <paulmck@kernel.org>, rcu@vger.kernel.org, 
	Will Deacon <will@kernel.org>, Fiona Behrens <me@kloenk.dev>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Vlastimil Babka <vbabka@suse.cz>, 
	Christoph Lameter <cl@gentwo.org>, David Rientjes <rientjes@google.com>, Ingo Molnar <mingo@redhat.com>, 
	Waiman Long <longman@redhat.com>, Mitchell Levy <levymitchell0@gmail.com>, 
	Frederic Weisbecker <frederic@kernel.org>, Lyude Paul <lyude@redhat.com>, 
	Anna-Maria Behnsen <anna-maria@linutronix.de>, John Stultz <jstultz@google.com>, linux-usb@vger.kernel.org, 
	Tejun Heo <tj@kernel.org>, Lai Jiangshan <jiangshanlai@gmail.com>, 
	Matthew Wilcox <willy@infradead.org>, Tamir Duberstein <tamird@gmail.com>, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259337-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,garyguo.net,infradead.org,weathered-steel.dev,kernel.org,baylibre.com,linutronix.de,paul-moore.com,akamai.com,goodmis.org,linux-foundation.org,oracle.com,lists.infradead.org,kvack.org,konsulko.se,collabora.com,samsung.com,kloenk.dev,linuxfoundation.org,suse.cz,gentwo.org,google.com,redhat.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_GT_50(0.00)[58];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miguelojedasandonis@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: A8478841FA
X-Rspamd-Action: no action

On Mon, Jan 5, 2026 at 1:42=E2=80=AFPM Alice Ryhl <aliceryhl@google.com> wr=
ote:
>
>       rust: bug: add __rust_helper to helpers
>       rust: err: add __rust_helper to helpers
>       rust: maple_tree: add __rust_helper to helpers
>       rust: mm: add __rust_helper to helpers
>       rust: of: add __rust_helper to helpers
>       rust: rbtree: add __rust_helper to helpers
>       rust: slab: add __rust_helper to helpers
>       rust: uaccess: add __rust_helper to helpers
>       rust: workqueue: add __rust_helper to helpers

Applied these to `rust-next` -- thanks everyone!

If someone did not intend for me to take it even if the Acked-by is
there (e.g. perhaps Andrew wanted to pick those nevertheless?), then
please shout.

With this, and if I didn't miss any message (plus looking at
linux-next where I see Greg picked usb), then only clk and jump_label
remain (plus any new incoming one).

Let's see if we can get them done next cycle then.

Cheers,
Miguel

