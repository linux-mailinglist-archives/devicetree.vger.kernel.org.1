Return-Path: <devicetree+bounces-273465-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EGraAHP6r2mmdwIAu9opvQ
	(envelope-from <devicetree+bounces-273465-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 12:03:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF51249ECD
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 12:03:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0A4643097188
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:56:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6ED3359A79;
	Tue, 10 Mar 2026 10:56:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MBbGtEBR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f178.google.com (mail-dy1-f178.google.com [74.125.82.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B99F3806CE
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:56:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.178
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773140196; cv=pass; b=TD/Nvn4NYTVt4Ay4i+IvNIVAkYzYbY4RfZJ5Jz6+xruirrIEBaKOzdROSaFIi6I3GakUd7Gc4V3HfSM4V0kmkwuMvDDSsx53vwEg6i4U4H3RKWK4fLByYNFEhdskz0VsK3AddpvJiaHymJVC5ffZuKqdyvH0KU8svxfm2+VGg8U=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773140196; c=relaxed/simple;
	bh=nL8Tve9qxXBojU4CG3EUAlYMJTfM1E+ZMJp6NeH7Zns=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nzGjjgJttBBQMYUFotb8oqAIzUqRmn7FtaUCJ3bF8EEgLqswXqro7qzdf8X2arrzSQaT2x+6q+UTU7+AYryRoSLJncqtDYHMmP33FEra2Ot3IWPoBUaZN6XhUKjIR2rL6YhmGtn1Btf1QMrhBwCGDSR1JRtKACGED0+W8pNcf38=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MBbGtEBR; arc=pass smtp.client-ip=74.125.82.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f178.google.com with SMTP id 5a478bee46e88-2be21f91e58so464442eec.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 03:56:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773140194; cv=none;
        d=google.com; s=arc-20240605;
        b=iAP3f2l1JieonwRpO0moJXQ736PSc8Xj+Pz1vX7HG3jWe1qBeiyPjhdOVquG4zh8H+
         SgR1n1npTqiL32xrYTeC61DDzGCuIWv1g8/ee6UX39LCjs6zNl6Ypmue9q3RFfLDPC4i
         Q2Ql2nBUaKdSUd47uCffIlvaPB0f/aYiuLDh9cuBsRayCXZdhbJNF42J6j8uIQM/WwUQ
         C3MibLnlO5gOrlULOsTZ+YOsw44MrnVchwAiLkOBwmT2CIaRBjyYV+jbzIAW4n8i0CNK
         nfcJphJ6mE0f8BuF3v3KqSh1+otFJHLRdgVTwuu9sOgqiK5BJO2Once38Xec0iLW6+PW
         CGWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=4qBpWaqAk74juZmeca9VRmKlmVoYIHqDYNOH37dt7g0=;
        fh=Qnq7yrH+zEqNrlGmh1E86o+Y3YcrWeDESBAOM6Yjaq0=;
        b=Jq+tTQjZbHQlaKbZHAXwza5ChdSqZ5h3vdksqpMkc145LsQnaJE5zOGR1ou8W8okyK
         fGDg3SOA59myFgjRm/T3ldq8tYBCqYNjWAxVZKSdBtQV3Dgnvo60Tz1HD6fZdZvr+d0r
         jZwh3KVxs8h7Ud4TVyNAEj8Opx8vfZFDh9Op6AfSBWv0hBam5hxcbfljd7JWVNxAOaHC
         I50zQL728Nt3cp5D0zs/dbpMkUjCnZjnN+9FlGV4rBq5nKc9s8ykwz4NbIRxzCsm8VKX
         /4hsl5+fQe/oJQE42NhBeBu07STcq4oETTGRR4+9Et/3RS/o2xWP7GZ+fceJ5f/6kAzr
         VLFQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773140194; x=1773744994; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4qBpWaqAk74juZmeca9VRmKlmVoYIHqDYNOH37dt7g0=;
        b=MBbGtEBRBoxPubDO7aR6dBNxnj1NeX5HfI/2iP8Lzp9seSiN+tybz+fCRUtGLW5x5H
         Dk4DqYa2NIr6W29OV7/5WrHN0FEJ0+ScFhbkZQJ4OBIDWeIUWzj5869zWBkvAx1laXES
         Udu4UtFP+aCcp5tqTGuMUR8kxmr0FTGzsSlplMqaY0hCenwPTPwkdVVfNjLo+2nmkSeb
         ZLZA0ovPwmjNnfImTXGvS4gMKe4x5tYPKrZqYjvhXgCHtOZOaqyl0J7nwehmYLSwCQiN
         4RvcjhTehRXfc9XMyLghddQw5UZF09s2CvUvSITa7ja7/9lOwh6jaZeNRFPG6ODik9Ho
         PR+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773140194; x=1773744994;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=4qBpWaqAk74juZmeca9VRmKlmVoYIHqDYNOH37dt7g0=;
        b=iqc3ptfVF9jcfVqukMNWgpujkZG0zSw4ErO8BuiQPB+OI4PmyG3CXNu1sgclxwKdsl
         EI8W+MHZPAD2PtosZLTw4GKRqjEe0cJ7ur1aHZE4Om5Qzu43GhkleCMrH8vVhK3Y54Pg
         dEq2luM4Pzn74DwAMJtR314AJ4qB9v/e9EnrCye+4ZvBMBWXuJcKrFYyuwTPB7FjLz3g
         K2ojLpxyLkRAvU2luSiEMGNuaE8PmvpMwllnexeK2tfKo0N1uwab9He7Hzdh/OpC5ERI
         iYCzMHTxwEvnDOkOeQb7cgmJsWvsyIFwF0pSNaykZdkWspMG2MWrGTlChKCVWmN/ZuJF
         NQZg==
X-Forwarded-Encrypted: i=1; AJvYcCVoEfiMnxqB8d4cKRPy2UXIyHPfXOTCSNZlFRQSfpGPeu2TiJth/gmVmhqCpNUJiHmxVa8NR9m7Y/pb@vger.kernel.org
X-Gm-Message-State: AOJu0YzMy9vAotA9rf3cMwcD2B+topHMqGjCE7v6mHI6ydRaESTPZlBJ
	HicCjSeWWkpXcZymCUwx00wyNn/BKCVKP7IJHN9F84wqoTJ/eCMXjg1Q9IvgFg0XRWyiXtBIjl1
	MXCs6yplN3G+DfTSTGBETBZgeCcYEiCw=
X-Gm-Gg: ATEYQzxHsPaW6TElHpbaOt7E/i85uSbDT9F5gjN2FUT/IkPcpUA/FETvKiTE4MY3xuE
	/12ou5NIJOOpocadBKASnyxV6wmM21LRmFc8CXBXS4RMXS0Xful1qlLxmEX3i3oiXy3Dus7/xiZ
	5xamKmoJVxEcN47xs1n2ojGRP05iUBni3lH+jIi7ACKJD4sOFoQbFtRKyGUiKCayAAH35uuwrml
	suSlU4CUeI4t+7ryBJ/ulVZxWB4s/zJVGAs7Li7P5sCp09Lm33u35m//XQnlfq+O0P6FvAY4Ii1
	oTccXskBsWQn9aXVk8MhUzu9ndrYohHBNiBDGmTK8sr+11Af90HgHoTc7+c14FVtsLiC96Riumm
	3HM4I6ZarZ6628LQjfCRgV0A=
X-Received: by 2002:a05:7300:ef97:b0:2bd:bc33:ca32 with SMTP id
 5a478bee46e88-2be4e09ebfdmr2731651eec.4.1773140194353; Tue, 10 Mar 2026
 03:56:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260105-define-rust-helper-v2-0-51da5f454a67@google.com>
In-Reply-To: <20260105-define-rust-helper-v2-0-51da5f454a67@google.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Tue, 10 Mar 2026 11:56:22 +0100
X-Gm-Features: AaiRm523FMnYeZ1Cbp2n7uyCKjNSK8gDXCio5_BkegPeyUfSKYibfT47XJIo0_0
Message-ID: <CANiq72mT2-8m71NtnodVXVBRkhUSiK3Byq5OkBntEQpW9hbU6w@mail.gmail.com>
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
X-Rspamd-Queue-Id: 6EF51249ECD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273465-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,mail.gmail.com:mid]
X-Rspamd-Action: no action

On Mon, Jan 5, 2026 at 1:42=E2=80=AFPM Alice Ryhl <aliceryhl@google.com> wr=
ote:
>
>       rust: clk: add __rust_helper to helpers
>       rust: jump_label: add __rust_helper to helpers

Applied these to `rust-next` -- thanks everyone!

With these, the series is complete.

Cheers,
Miguel

