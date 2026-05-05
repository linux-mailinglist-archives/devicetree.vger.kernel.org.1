Return-Path: <devicetree+bounces-292944-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eBZFHa68+WmTCwMAu9opvQ
	(envelope-from <devicetree+bounces-292944-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 11:47:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D84F14CA128
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 11:47:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9EA803006B4C
	for <lists+devicetree@lfdr.de>; Tue,  5 May 2026 09:46:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 210341DF748;
	Tue,  5 May 2026 09:46:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uhAP9bmk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E63DD1A317D
	for <devicetree@vger.kernel.org>; Tue,  5 May 2026 09:46:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777974373; cv=none; b=eAV7Z08ztqWLiYQt/1gfymtJUSrsD2JIgmnXAzKWRUBpyA3+SBq4gGg9m7hyViFMOFB6dnXryfb3RTy+DIawjZRcAke5J3DLIiIGVEsD8V+3BLGinu/pUlkYjdZeu79A05q2cE65lJC4ksuLa8cxzstCgXI5YcARLo4n2RDVFyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777974373; c=relaxed/simple;
	bh=dRupWt7MDVmF6oGdB664BE5eszPjbUpZIphP9q4IEv4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=j0HmspN+wCY0J5KuOBpBiQoRK2nu/w1o1OzEKifXXb29gIIsG/kqQBUuhlJ3HIzzeuM8kCLMKTMYxlAk7pDSc93KyDYhi0LL/N+ZaRzJU3rCuqylMuCS+aq9KqL6oUCw78mSpr+AjTFGMH65OLwTrEYuSYEztkb0muXXncgx9Qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uhAP9bmk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F0B2C2BCB4
	for <devicetree@vger.kernel.org>; Tue,  5 May 2026 09:46:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777974372;
	bh=dRupWt7MDVmF6oGdB664BE5eszPjbUpZIphP9q4IEv4=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=uhAP9bmkz5XzramPNWrsNXqJ+bTsDGObwTZwn3GS5MSVphmJmQYHMwPYjKMWwH+0N
	 jZ9NG7h/osTtTWeDj3oJcQl7fiYiwp0iwQHx2BAA0+8YakZd0TjOs6WSQQH1nQBNPg
	 nBmX3ecX+rnICuJfBh+dGZzady63FY8NhEVNKP6AHYK/vElGVjg5ITT5G3yytvtyj8
	 9EX12At12PPA82h+NPR2t9RMokp44BEBT8HuaxCceNhSraFm2ms1JWOX0v1vdG6ffl
	 y97k5igqes9CKXZ6i5M0gntTu1Fwwq+x9sIBa+VZJ9hNHk06YB1szwgpb2Nw6Agrx3
	 ve2qjRfN6bvYw==
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-5a85b30dd54so3838015e87.2
        for <devicetree@vger.kernel.org>; Tue, 05 May 2026 02:46:12 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ93n362qo+VLAf+3oczngKe8IUpDj/TcWw16i0F5VrcYk28wD6+KdHDw+KbmHP94pPxurIR1eS96YSg@vger.kernel.org
X-Gm-Message-State: AOJu0YzDvu9ljGHGA5xnuJz4uxqfeMX3b0jT2GYw9eGvvKN55wmPNhf3
	/3bIaI75AQA07osjzb+GBolaYLmFpHmbvEDEVOyeTsxF/rKH5etdMU+6SVVO1R80ZoE5vjurj+a
	kW/og1Q1rrTa2UmBDH59tOVcbwhTm5/c=
X-Received: by 2002:ac2:5599:0:b0:5a8:6b4b:bea0 with SMTP id
 2adb3069b0e04-5a86b4bbf45mr2490283e87.41.1777974371358; Tue, 05 May 2026
 02:46:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1776872453.git.happycpu@gmail.com> <33d515f13769c685e6811463a14e111252a7c58d.1776872453.git.happycpu@gmail.com>
 <CAD++jLkOZGunkfs2EO_DQDPLnLVp+OPG6o4EKaY5GkAcqYQy5w@mail.gmail.com> <CAMRc=MfQY2Z+q=YGO0jEBip0dGjyq+uCH8EZwi9RaUOJxf74UA@mail.gmail.com>
In-Reply-To: <CAMRc=MfQY2Z+q=YGO0jEBip0dGjyq+uCH8EZwi9RaUOJxf74UA@mail.gmail.com>
From: Linus Walleij <linusw@kernel.org>
Date: Tue, 5 May 2026 11:45:59 +0200
X-Gmail-Original-Message-ID: <CAD++jLkkhB89iM3iBv+8cwK9fmmGWrEvDez1VcjGiWZp543hdg@mail.gmail.com>
X-Gm-Features: AVHnY4KHXq9rneTkcgED1JGQbSrHQsb9lHUBwDqL8Q1iTokG2fFYTi52Qwlz3QE
Message-ID: <CAD++jLkkhB89iM3iBv+8cwK9fmmGWrEvDez1VcjGiWZp543hdg@mail.gmail.com>
Subject: Re: [PATCH v1 1/2] dt-bindings: gpio: fairchild,74hc595: add
 registers-default property
To: Bartosz Golaszewski <brgl@kernel.org>
Cc: Chanhong Jung <happycpu@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maxime Ripard <mripard@kernel.org>, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: D84F14CA128
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-292944-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]

On Wed, Apr 29, 2026 at 11:04=E2=80=AFAM Bartosz Golaszewski <brgl@kernel.o=
rg> wrote:

> >   lines-initial-states:
> >     $ref: /schemas/types.yaml#/definitions/uint32
> >     description:
> >       Bitmask that specifies the initial state of each line.
> >       When a bit is set to zero, the corresponding line will be initial=
ized to
> >       the input (pulled-up) state.
> >       When the  bit is set to one, the line will be initialized to the
> >       low-level output state.
> >       If the property is not specified all lines will be initialized to=
 the
> >       input state.
> >
> > If you want to set up initial states, use this property.
> >
> > This also makes it possible for us to centralize the handling later on.
> >
>
> Ah, the old initial/default GPIO values problem strikes again. :(
>
> IMO this is software configuration, not HW description. I think the
> driver should do it based on the compatible and/or machine. It should
> not be a property but if Krzysztof is fine with it, I'll queue it.

This one is particularly uncomfortably hard to define.

If we depend on the machine we need to sprinkle
of_machine_is_compatible() over all drivers.

A lot of detailed properties that could have been handled by a few
gazillion of_machine_is_compatible():s are already present
in the kernel.

What is good about the property that has the same name
is that we can create nicer looking kernel code that is easier
to maintain. The DT maintainers may not care about that, but
from a GPIO subsystem PoV I think the line-initial-states
are better.

Yours,
Linus Walleij

