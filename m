Return-Path: <devicetree+bounces-271828-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YDZMIvpuqmnDRQEAu9opvQ
	(envelope-from <devicetree+bounces-271828-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 07:06:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DB1FB21BF3D
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 07:06:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 950003009506
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 06:06:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0AEA36D504;
	Fri,  6 Mar 2026 06:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="K3CeY562"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com [209.85.222.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F2DD36AB51
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 06:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.222.43
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772777194; cv=pass; b=nh52dxSLftnpG/ttPJ0G4B9bmzH1C7bNLVjV1iy12GHgyB8ZwH8xhInhaaOK3Sza81U58QSMAhLR4vzN8mf0MFsUrNDnxv+1KVVanYJova0GpVvS2zhge/t0DyGgXqv2feqwvoJHVpyDgpMLluojwb67gKVnVlz/5DnaW69FCcM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772777194; c=relaxed/simple;
	bh=3AC2Rx+fqXATvv7b9PdFWs4NvYy4bxIcO9nIFdMU/GM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tITgpWE/IbdiDs3QXDkASYqfd+P210H1nxdq1Mkk7lqCAE7/qpntbeUXGSbUB3ywNpXHMYRpAIpXW3ls7P8OcbNIeoGHwhtvThku/SNjqr71+7NYPlymX/WpaZ+41uMhVhcWWd+tBiiVpo3fLf7R1byw8X8JEVXA+gxBkcxKSQY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=K3CeY562; arc=pass smtp.client-ip=209.85.222.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-94de664b541so2562575241.1
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 22:06:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772777192; cv=none;
        d=google.com; s=arc-20240605;
        b=aQmDPwoa7n413vydLQH9fmZxocwbNzKBrJ48M/gDIBbkzuASK+5hi7R4V6LIDCSiuR
         NIjBu7x7YnI5ubeVTx2byV3hXnf1G0BIIHey1EqQzjDAiL+Ao6oFJJFF3S0X+n2DMaIl
         qDgze+gVb7svFr6l0xgeZ+uNUEuY7EqC5GBLCgZT0z0Kh47qR/o5PQBE0BbnkffaObJm
         xuH/gqNv8Tecog6KpmnPC++WQXmfPK+Hxr1s3dxZjyndP6hFiq7NpscrRp45TFxdGTKI
         cHxulpxbMe2UrH+VW9E4vZJb1bj2kKlhgNTNjepqhL1fGhZG3wLCz/JXTXYNhRunKcsC
         7A8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=EGovAVgDeech9oAFJyAwU6fo6Sipfg2mUwR4uyiECh8=;
        fh=ITxRQlstIbdltsFNicCwSrKywpZppYUqhlDeBjieWI0=;
        b=TfQ/L3ipqVWpbim0dLlQivxx9jkL1mQ6DgD6ETjFE+GXjj8EINCu5JcEInNJdCD6vA
         6p4s1+fGxTk3KJI96fpuWNxqKinYzCMA0ASeLPQv38OFUqhxzg/ploPfQ/rlg6NnugN8
         dxNGlPgoPVqvnujoPmTELBBbOvSHehJEMG2qdsfOP8ixUKREBmdRers//WOC3kCgiq8T
         J6Odc85A/KIfJU4HCWhrgL7+GNuYhdjyKKChvGxK20i7bXo7pnSuB5DRllbv3mjsCf6R
         U5hwRwOMk6sYSRUDOYN3GxUVzNilqVEZj2eOcmNj6IolWmQhEE3CXXnIALigakQFIofc
         Cd+g==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772777192; x=1773381992; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EGovAVgDeech9oAFJyAwU6fo6Sipfg2mUwR4uyiECh8=;
        b=K3CeY562/aKimEkiecO3j+7UEAbpxyZYs+dYbMs0G2LKubp/MAJLAMxTY7rKqeq+rh
         OyIsH4A4km8r2SI7JuUI7H6RbNxfdYQume7Jk3+fo4WCEi2YQFE06ZOjCGH+wA7Pcxcy
         t5GfhSfxeJBydKGGNGZC/fxCVrpdhBlDiB7O6Z0eb5/GMcuckoTw54bdGsoN0FGIW+kN
         iLnQtmjrGwLmERMFqOFF/nqXY6gvt3xnJYNPf+QdXwfb1Fk5kksDFfEaQ2SFPnzvlGzM
         mWgLgP49g8L60pzMnx2JY+zDsBTUyE1aDsHtBJ1t93LJdErguYGMKs19FhdS1ei/HEzY
         JHOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772777192; x=1773381992;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=EGovAVgDeech9oAFJyAwU6fo6Sipfg2mUwR4uyiECh8=;
        b=gX0A7HlsrBmWW2HIlZUli+gbzvFl+NAyEFFu2YYFsGp2GqSpX1rFuYF5TWy/GOCn4m
         Xv8quu5NPeous8wmamb0YhKJZ9aNpMYzUOWPva7J7CNe9jptZKkyc0YvLDNL8UNgimJ4
         8nTtTHZkopbE3V3+I2vwhcvnxxijWqMmMq9x4mmpxJcbMrHWd7bymRUTb/l6ZZKwuHfM
         7AuPeT6Lhr2rA0YEuetOSHmBUhp61HGMIFBDgiQ+JokGqJRkMeJ689kHakFp0uXiwIPk
         fJH8pQbrZpA4V6sbKeeVAwUDhSdOUKud0w+gYxipZz2zFNkvfw5EhJjH+HROc0MUa3PW
         tScg==
X-Forwarded-Encrypted: i=1; AJvYcCVGBOznOtM5mj00PMKXRC4keSs4Zh9i/5SJGemLFPSGK34wtvHOYqifu4nvzb9p6gC/s4bbmo++9bQu@vger.kernel.org
X-Gm-Message-State: AOJu0YwNEGjq6m1wCwA9furfe6KK49pVutMyo7O2oeKGZ814cjUgN99F
	tLjQcfblAH5H5n/gvRe1/hjFRuAF8wLYmIheysuMwHV08IgA7QT7Yw5YqXkc/SEFzNYkKIa46zc
	OqlcoycyEeeullTG6a3vBKFivrycyFMo=
X-Gm-Gg: ATEYQzwHRaNjxpcCx1fLKG1sMxEBA3P9goAA1VdfChIxnjF1dX83m6WF+DAvWgVIEUD
	9VmuDFbNNrkcCCd3/PyPbu8SaoXI8WlpCsSqpbi1qxLR5XWll2tH/RSM72McvB8PHoRQwYyCeHv
	XBFmj84YibfGtAdNrH69M+QO086eKC6eSkzdwf7EfjSt7WJFCQBoyG2n3qzRvQC81Mf/i3uAGOB
	12ZsdjsnxSvc3mBPTaooQ6g4uYxP7rl/b622XAAtP++D6XWJoWfdH8bO9MJA6Npk2yVaqHBVmzg
	6WJaLA==
X-Received: by 2002:a05:6102:c02:b0:5df:8f4:61e6 with SMTP id
 ada2fe7eead31-5ffe61bf1f4mr409120137.32.1772777192540; Thu, 05 Mar 2026
 22:06:32 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260302-add-new-eeprom-node-v1-1-2bcf87bc22e4@gmail.com> <fd932aa3f0cae64f40c3b207657032e7bf61066a.camel@codeconstruct.com.au>
In-Reply-To: <fd932aa3f0cae64f40c3b207657032e7bf61066a.camel@codeconstruct.com.au>
From: Colin Huang <u8813345@gmail.com>
Date: Fri, 6 Mar 2026 14:06:21 +0800
X-Gm-Features: AaiRm50kmoskXtONuaiHe2cCtn5FjwA6MJ2fKHVggzbYT0hgr46ptkqqm2zNPM0
Message-ID: <CAPBH0A9oatx7U2+3dvGVgonHEm+yq5TFM9mTcdStau2Lk1XytA@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: aspeed: anacapa: Add eeprom device node
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org, colin.huang2@amd.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: DB1FB21BF3D
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
	TAGGED_FROM(0.00)[bounces-271828-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[u8813345@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[codeconstruct.com.au:email,mail.gmail.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

Hi Andrew,

Thanks for the feedback.

In our case the only functional difference between DCSCM rev=E2=80=AFB/C an=
d
rev=E2=80=AFD is the EEPROM I=C2=B2C address change (0x50 =E2=86=92 0x51).
Other than this, the hardware is identical and all device-tree
described components share the same wiring and behaviour.

Maintaining two separate devicetrees for a single=E2=80=91byte address shif=
t
doesn=E2=80=99t scale well for us. Only side effect of listing both EEPROM
nodes is that the non=E2=80=91matching node produces a harmless driver bind
error in dmesg. It does not affect functionality on either revision =E2=80=
=94
the correct node always binds, and the unused one simply fails probe
and is ignored by the driver. From a system behaviour standpoint both
board revisions operate normally.

So the trade=E2=80=91off we chose is:

  * One DT shared across all revisions =E2=86=92 low maintenance cost, one
source of truth.
  * A benign bind failure on the unused EEPROM =E2=86=92 visible in logs bu=
t
functionally harmless.

If more hardware differences appear in later revisions, separating the
devicetrees would make sense. But given the current situation, keeping
a unified DT is the most maintainable choice.

Thanks,
Colin

Andrew Jeffery <andrew@codeconstruct.com.au> =E6=96=BC 2026=E5=B9=B43=E6=9C=
=885=E6=97=A5=E9=80=B1=E5=9B=9B =E4=B8=8A=E5=8D=888:12=E5=AF=AB=E9=81=93=EF=
=BC=9A
>
> On Mon, 2026-03-02 at 12:20 +0800, Colin Huang wrote:
> > eeprom address changed (0x50 to 0x51) in DCSCM rev D
> > To support previous rev (B/C) and rev D,
> > add eeprom device node for DCSCM rev D.
> >
> > Signed-off-by: Colin Huang <u8813345@gmail.com>
> > ---
> > DCSCM rev D changed the eeprom address from 0x50 t0 0x51
> > To support previous rev(B/C) and rev D.
> > add new eeprom node for devscm rev d.
>
> I feel different hardware revisions may deserved different devicetrees.
> What are the trade-offs that lead you to avoiding that?
>
> Why is it better to cause driver bind errors on both revisions?
>
> Andrew

