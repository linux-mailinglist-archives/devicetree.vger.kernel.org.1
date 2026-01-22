Return-Path: <devicetree+bounces-258648-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4NG8LBGzcmn5ogAAu9opvQ
	(envelope-from <devicetree+bounces-258648-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 00:30:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A6B2F6E81B
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 00:30:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id CF57A3004408
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 23:30:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EADE33AEF54;
	Thu, 22 Jan 2026 23:30:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="vfuge5Ea"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 073D43806BE
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 23:30:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.181
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769124617; cv=pass; b=VyK/+UNPaOpU4wu6vy8raTmHYleS1i/hNECw+8BIe4YdwqUMaPwvndjMes5QPksWWPWZEWXDkFRrzsZTh5w2RRw9jmP7zn7jCFNPhh447rMEtGMZ9P5QAIBBmrpHcs29proMRFul/0WL146GqsVfXcghTE7APHJIrfW7dIcIfDA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769124617; c=relaxed/simple;
	bh=OJl8OR7tWivzQ8P6uHzy1/uVTypLBbYCG83LS5eB9w4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RFj53MelPA17k2a3G9anlv+mTfmO1RXTpipa5JkWUAy8JSW7l5NqgF8pUH2ubh03KIutjVPBF2cOXgywtzFExwjib0AFkWMTHAKaxu7XFWqyjqTXge8RAORVUSsWwn7017xzxC0p8BABrkFPv+fbyXYPZyJOVkOdpcp2E/JQejA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=vfuge5Ea; arc=pass smtp.client-ip=209.85.128.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-7941578064bso11048547b3.2
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 15:30:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769124604; cv=none;
        d=google.com; s=arc-20240605;
        b=IEFr65iQZxdAYidVTe6GQhXU/7b/2pzm3tuUiGrPhsKYPi8/ZWeLMpIQL+vIYNPlR7
         7xiJVDXAu+7lRHJm5Sbnota+kmclxg7qGnoJA5DYBKqA03zPWQWLUKURdPYMcqBdvoEU
         SyT6juc0k8l7+CbRXcHCAvHzCidHwu/Ia16U4f8+lyoPnfvlByzsKR/iI4PSKASfXMvT
         1k7jg7M881izGD8AR9BJPJMD/M/M/LQbMbZe+NKWN2fDv9y1wt3BBYIo/EFmbn3SfAk9
         cjrKoelXiYCc4sdDjnTiyxRxY/oisSX4VG65lnfujxhoXhB4wLy9Qa9bwxvnmTL1Q6y9
         w6CQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ZzbVEphzp0lpFkdctOwCC3UitWwAMjzu6W2b8ZRmyrc=;
        fh=MjvlM4xoc90sbYDjK32pS+qCJolMvTx0sZBvxzRWlbM=;
        b=f5vIrKPtRCu5ycTEYnxS3jUh/2kz8caXwbfvsunAFEOj2+6ItzqL6m/Mw1ZfMTylKN
         Pq34KPmmcubvNFiUcGeItGaEEG2gSL1ElS4fk1Doty+M37gTs/cpBciK43/VSQQZNeTc
         cwNRl3FUFgI/Q/hwUjbzF1aurePef2sL+sBS1gTEJHb6M2L1Rm1ALwjQ99YNxaPQutvv
         13MQGZn+F6n2WKzZvv91KvpRT9umPDmVRyBbTWrAMx0giflS3lZ4I0Ewt75IqJbYuiq2
         Db7SrcRGEOcwzKDaOzQ9VoMVfO1l5YzlEXXazomfUQ4IyF64hg0oPrFlZOaUsZrStRac
         W6mA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1769124604; x=1769729404; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZzbVEphzp0lpFkdctOwCC3UitWwAMjzu6W2b8ZRmyrc=;
        b=vfuge5Ea3ZSiUSXi8HKg4QV3scVCsVWAxxycWhMIMbpT+TzvAkS5bB44G/Yo4mdhBZ
         i22qTMune1B+LWI6OzSYUR3osdxWCqN7sQYpvEUsazUG7oRlDwZCsHNQ2JqbfdXHGF2J
         seNQJ/kNErtLv49S7k51j/gVdiij2N8r+a+PltQvtFc2ax9YwsNN4FOIs2Aucxm1L1U3
         Df0n//XngG89iFpyK2SBoevsGomip9P+5zpCXrMJgR5ucTk7D5tVHNkAMF4tO+CYxFhS
         koqTyZ8mjd2LcHn5nvptlg3FwVlJ6Y/1j8BGg6LR046QWEZFdEISQDzy1zfpbYRdN4pY
         b1SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769124604; x=1769729404;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ZzbVEphzp0lpFkdctOwCC3UitWwAMjzu6W2b8ZRmyrc=;
        b=dSiIAiLz5TttXQFDtgMjnOpngpXLAx6wbKUjMXFZ9r5MRhxxPJ1yXXu76iWGFDm/SH
         vXlueWbsBWDl57Fqpg6BGnpx1LCYINgbHqVJwBHk762WdgbSdwuoTR4w5yCNCPEL7uH3
         8NdCBc5bM2Jbf0nbeytN6nmbHint2h32Awgr+QPwhKeCbNYRDfy4+lRB6uioXEGIKV8d
         hiN+lp4Jsq0mGJU+7fZukllsJVNrhgKLkLafabL+j7aMLLWG3al0C5xAh75Pq0+onBGn
         DG0vk/0yxFcy2vSohxGafqKQDe/ZAv+n/6+3PYqUhwquddnmVGjPWCrlgip3jpzUEy9l
         INuA==
X-Forwarded-Encrypted: i=1; AJvYcCX90CVI1cRG3TxIJCaizFoEg5PTg4gyaNbBK1iBVUSI9lZk36h0R8WlVZOf/BXZNMgIpre83Vp/dO8j@vger.kernel.org
X-Gm-Message-State: AOJu0YwACiMh5GY63+ZLUrLCOux5dw2kwkWQ66SDpwW26SUYdI6FUk56
	42NGfce4ls0BrsR30srz13YItlaAs84NN7QSEspm9HqqzJeEfTimQroPEUPkj6ohkHuZHAdPJ4u
	mqli3nCn+XPsiiEqABvSL0pjvtr5AGL7fdrcAGn9P3A==
X-Gm-Gg: AZuq6aLHnT3EIJJnjYID4wSXMRSUmTE/6g1ct+iQxvxAKdWUiXs6MAooI+SHhC1jzjx
	d7TPpkBmc/NGlB0axiOHU51tTUBvS2KmZiWnvB0yugtZZpIZZVRxzlOelomqNFbGK39/o22zoM8
	VNOManQ3hTLCRYtJbOj+ECgJlim0GpisD4NnKIKnCIT0RpwbdhokiSqR8JfQjXH//88yiXWaO/L
	pgPmqXEmz2JBkVVHzt1DBElxoNUL4je/T5o65l148SF+gtwhRSMgoasdWxrLLwfy9R1yu2BaOtk
	aoX126jwbEJcnkhozmUHt071T4mCGmJxi4IdBJpeocDe
X-Received: by 2002:a05:690c:6606:b0:794:148d:cafa with SMTP id
 00721157ae682-794398bad32mr11667487b3.11.1769124604288; Thu, 22 Jan 2026
 15:30:04 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260116-supm-ext-id-v1-0-5fcf778ba4a6@riscstar.com>
 <20260116-supm-ext-id-v1-1-5fcf778ba4a6@riscstar.com> <20260122-headlamp-champion-0bbad2551d33@spud>
In-Reply-To: <20260122-headlamp-champion-0bbad2551d33@spud>
From: Guodong Xu <guodong@riscstar.com>
Date: Fri, 23 Jan 2026 07:29:52 +0800
X-Gm-Features: AZwV_QiqHltdWQztFinjYgs1YM-vgVBcGnLo6nlvKPcvIzhDDwENE-Jg4kp04ew
Message-ID: <CAH1PCMY+FrxkT+qnAXbS75T=PTzGB_BkKWY1f3-anOjHwG9CkA@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: riscv: Add Supm extension description
To: Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Samuel Holland <samuel.holland@sifive.com>, 
	Heinrich Schuchardt <heinrich.schuchardt@canonical.com>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Evan Green <evan@rivosinc.com>, 
	Andrew Jones <ajones@ventanamicro.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.06 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-258648-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[guodong@riscstar.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[riscstar-com.20230601.gappssmtp.com:+];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: A6B2F6E81B
X-Rspamd-Action: no action

On Fri, Jan 23, 2026 at 2:52=E2=80=AFAM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Fri, Jan 16, 2026 at 10:10:31AM +0800, Guodong Xu wrote:
> > Add description for the Supm extension. Supm indicates support for poin=
ter
> > masking in user mode. Supm is mandatory for RVA23S64.
> >
> > The Supm extension is ratified in commit d70011dde6c2 ("Update to ratif=
ied
> > state") of riscv-j-extension.
> >
> > Signed-off-by: Guodong Xu <guodong@riscstar.com>
> > ---
> >  Documentation/devicetree/bindings/riscv/extensions.yaml | 17 +++++++++=
++++++++
> >  1 file changed, 17 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/=
Documentation/devicetree/bindings/riscv/extensions.yaml
> > index 4ffd61926505..1922dff03787 100644
> > --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
> > +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
> > @@ -262,6 +262,23 @@ properties:
> >              ratified in RISC-V Profiles Version 1.0, with commit b1d80=
6605f87
> >              ("Updated to ratified state.")
> >
> > +        - const: supm
> > +          description: |
> > +            The standard Supm extension for pointer masking support in=
 user
> > +            mode (U-mode) as ratified at commit d70011dde6c2 ("Update =
to
> > +            ratified state") of riscv-j-extension.
> > +
> > +            Supm represents a combination of underlying hardware capab=
ility
> > +            (Smnpm or Ssnpm), U-mode consumer privilege level, and M/S=
-mode
>
> Should we therefore make this require that Smnpm or Ssnpm are present?

I'm not sure. Would U-mode DTBs typically omit the privileged extensions li=
ke
Smnpm/Ssnpm, making such a dependency impractical?

-Guodong

>
> > +            software configuration that enables pointer masking for U-=
mode.
> > +
> > +            DO NOT include this property in device trees targeting pri=
vileged
> > +            system software (S-mode or M-mode).
> > +
> > +            This property is only appropriate in device trees provided=
 to
> > +            U-mode software where the next-higher-privilege-mode suppo=
rts
> > +            Smnpm or Ssnpm and enables it for U-mode.
> > +
> >          - const: svade
> >            description: |
> >              The standard Svade supervisor-level extension for SW-manag=
ed PTE A/D
> >
> > --
> > 2.43.0
> >

