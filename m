Return-Path: <devicetree+bounces-304470-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KACbNxj0GWp/0AgAu9opvQ
	(envelope-from <devicetree+bounces-304470-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 22:16:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD2E6085EB
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 22:16:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 184BD3014A24
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 20:14:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0ADAB33D6F7;
	Fri, 29 May 2026 20:14:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QtQLjXzd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 101D13C2D
	for <devicetree@vger.kernel.org>; Fri, 29 May 2026 20:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780085663; cv=none; b=q/zACVMueR/b3dlNssSXm7ZShRK1ilNmjidj/63c6NTt7BDm/v82xZ6aB+x/rxNPknZtF+K6v6OJbCzAGeWH/3tSklu26Tghw/hSHFYhA4Eloik4JNjdwIl3XvlFQmAG20l8GHSvomiKGqWY07TAxXoLmda5xzlBzzDEzjCLMDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780085663; c=relaxed/simple;
	bh=R/Ayt2YjYGyvKJqdwZ8WG0Kewd/vVft4YUzx8s8EKIo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iiuogGntm/hKLQsfcUYW350wZCrCaKNphp8NzXtZe8mpZNhMkja9a+fKDAbZMkMDvPVgQwrlxoDcv7WNnvo4ra/fPPUzyReg2a6luwKgzfomopLgb44fG5RJYQGiRxv48WfTlOAg5BDt7Sw9xP35laDzzw9Avl5gl1Z4EzWOOtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QtQLjXzd; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ECBC41F0089A
	for <devicetree@vger.kernel.org>; Fri, 29 May 2026 20:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780085663;
	bh=R/Ayt2YjYGyvKJqdwZ8WG0Kewd/vVft4YUzx8s8EKIo=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=QtQLjXzd16elH/s7HSY0kSs9x2ssgBOOlqXfq476z3gDWVS0k9fQdi0HfIw+3V1Xf
	 Pa0Y0qHpXgW+W8g8EuJKjFeGN9wuX4TRgiqCKkqEd3Kk2y+jPhNjdP3KmLWuTDxMJc
	 6Ql+hNZL5WJlh7RNTYf/AupkRAY+Bp19acE7vQf0C8DltAGMGcxjFLxY0IQNw2cfGx
	 JnOaPhSwFtn7wLXqquO+vwUPeCa6JezC6db10XmHAiOxmHUBAkg26fkE2j5Zm+iS9H
	 3v373wNY8SgSnkK/bsSWKDQlAXggxhNvGWmzH0FySmbZ0Ve9sU6px3SkO4uX0riNfD
	 I8kXS379aMK+Q==
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-5a8ee4b703fso13062112e87.0
        for <devicetree@vger.kernel.org>; Fri, 29 May 2026 13:14:22 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ+l87Q8pE/sJYPkC1WmBQn9/yZl74Q4tbZs9FQfkkFxawUgZEkCxeANU74rNsoxot2m32Jcz6F3p8fp@vger.kernel.org
X-Gm-Message-State: AOJu0Yxpaa5wSLWwzkW0Rh4+gm/L+hc937uD+icOQdy3fLUXpzZxEp8K
	bjR8T/l+yJyTGAgwuMIfQ7CW/fM22+vCGZ/fzHZJVOL6ZPcMzB9jbEmlV5T1m3NiFItXW3zORmW
	+PmxjaRZ5DylEFaJ1tRyphH3PljLP3lk=
X-Received: by 2002:a05:6512:104b:b0:5a8:73c3:f27b with SMTP id
 2adb3069b0e04-5aa607e3500mr444278e87.15.1780085661767; Fri, 29 May 2026
 13:14:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260525144629.498630-4-jerrysteve1101@gmail.com> <20260525154251.A0E151F000E9@smtp.kernel.org>
In-Reply-To: <20260525154251.A0E151F000E9@smtp.kernel.org>
From: Linus Walleij <linusw@kernel.org>
Date: Fri, 29 May 2026 22:14:08 +0200
X-Gmail-Original-Message-ID: <CAD++jLns_jTJT_QK0DdKj3qBdWcRcgxumC8jWb18KaYGqd+3jQ@mail.gmail.com>
X-Gm-Features: AVHnY4LJG3_0bKFII-IM6L9e27CQ0eVZFCWIzYdaZa5bm04r346MYQHUu0H9Ed0
Message-ID: <CAD++jLns_jTJT_QK0DdKj3qBdWcRcgxumC8jWb18KaYGqd+3jQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/6] gpiolib: of: add quirk for IS31FL319X shutdown line
To: sashiko-reviews@lists.linux.dev
Cc: Jun Yan <jerrysteve1101@gmail.com>, devicetree@vger.kernel.org, 
	conor+dt@kernel.org, robh@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-304470-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,mail.gmail.com:mid]
X-Rspamd-Queue-Id: DDD2E6085EB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, May 25, 2026 at 5:42=E2=80=AFPM <sashiko-bot@kernel.org> wrote:

> Thank you for your contribution! Sashiko AI review found 2 potential issu=
e(s) to consider:
> - [Medium] Incomplete backward compatibility quirk for IS31FL319X shutdow=
n GPIO polarity, risking breakage for out-of-tree platforms.

Wrong: you did not look at the whole patch series, just this one in
isolation.

> - [Low] Use of non-ASCII characters (non-breaking hyphens) in source code=
 comments.

I wonder if that is because the commit message was created
using AI...

Jun, please use Assisted-by tags, because these help to evolve
the LLM kernel reviews if the commit message was assisted
by AI.
https://github.com/torvalds/linux/blob/master/Documentation/process/coding-=
assistants.rst

Yours,
Linus Walleij

