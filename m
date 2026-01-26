Return-Path: <devicetree+bounces-259410-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SAhrOpY3d2nhdAEAu9opvQ
	(envelope-from <devicetree+bounces-259410-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 10:44:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D9F78626F
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 10:44:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 35FEC30053C5
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 09:44:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB0EA32AAC7;
	Mon, 26 Jan 2026 09:44:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="A8K6W6kN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56BBA329E69
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 09:44:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.53
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769420691; cv=pass; b=PpoyJWAyb947ZAl8UNM6duo0iuU8SnH3bnfBox/wXeqExN4eSlXX+2k/cxYrBewdPjm9zJC5pXOF+E0+xhuhY6jU+pO1nuA8Tzbc0b2sq3q9E0aLRR/Xy9Kodt6iqPsIShyXzqpGRarA/0Dp5CX+LUbOgqIHqyDhEvCENeojNdA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769420691; c=relaxed/simple;
	bh=nhGT/HQ1K3bK8TPssIGqP1JnnpOAhb4uN9EYdGCGT1Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XdHQDzj38onaArrxbmzBRyd14K3Na6rBcG7qvgd9aWrBFAW4J6Nyyse5dolWSTysTlUYSCyqKDKviduZm3S94d5TUtZmJyz+VBEMzV0+X3sAkLVy/xciY6+kJLvzbVBDJqxSMMkGuRejoNnTGojZCjBGJdK+v+MFJ/c1NgH06ME=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=A8K6W6kN; arc=pass smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-4359108fd24so2510591f8f.2
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 01:44:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769420689; cv=none;
        d=google.com; s=arc-20240605;
        b=POK9eejWHzAPpiBsyNtdD19/IFGCEKaPvinWyMpOZYPjRNEj+Zoa2JdfhmTJoNHMOn
         nc98+p/arZ2jsR/icmIwiCN+dMRqv40LHsaL8LpBHUcdRWXkegMHD1TRtzhkdKSRQ9QZ
         mx+OC2IcuyYO4fLZpGCu/pzNg7Rj7T5uSQaPU4LHLyL9Mm8WrbrLh/2bn66TfxS11RCW
         4SgH+2I10IojLTBw7CBj5smzOCeN3+3idKiucKHwmxnXTg9+vmyWidKiL0VJkp08IiIH
         dJrE8Jb8NXhOypLVPb2E9nqs9OSgzKLTH937rr9/cRBEc2c9o3MBUAnGw54hstLjRAzU
         wECQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=nhGT/HQ1K3bK8TPssIGqP1JnnpOAhb4uN9EYdGCGT1Y=;
        fh=rzY9gliktKdKKz2wlPdNBVhlbIzYaqBoHdQhoNoAIcw=;
        b=VkgN6jVNYJ/FN1cq+7FljTKRG9NiMEjZHtCTnZSyXtCn1BsS+lR8LelYg7tH2RftPS
         aRXFan43Of+MsGOTszdJrweAposDjedJ0zLfvX/txvFWfdsTgKEnIlEmmgCA28PJI4HX
         Q6qpU0+eW306ynPGZ1uPFrArHuftPuttkBbnfPnh+pai+eq5QSA8HBrbuWDevbSGDWpr
         LqdI61oLafK4KVZWRVn6h6gVlq/BpDalwqIvcYxiGNg3ab5zhqo/RerlpGnRxLQt/iKz
         hjJ4ie2hKbG6v6aEMEkOIe0Jbpvjs23DAZ/XYU+BjK5Ejr5OLAcWhDSjlr1Wio4LmofS
         qcpQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769420689; x=1770025489; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nhGT/HQ1K3bK8TPssIGqP1JnnpOAhb4uN9EYdGCGT1Y=;
        b=A8K6W6kNcKxPuW/rjCEOXJpQh0P5K2WvYFw8u4FQ4rwVZtZmLoguRsFL0INrBLD5q1
         Ly+ASRGzghdEGZWXmZeqvatnzsg49XWVx0+LH3+D5zLhAhNNA5xE4Jtkb+LcFnlpLA4S
         XEGLmBdKaKEHfBkN5/YjRATaXBU5wMuMdnRvJI0Da6im37oAei5kwbmJqbDXzn5iKOC2
         oCclAFBlcA7sUdFA2Rsmm7D/1LFvqahCPwhLX609EoqpjbZ03WQnZAWP/EfFub/5AgxI
         Q70E+Hfa1FXFVtpwE8Xu2vR2l10e0mmz7ibhoCJCkDYh4ZbFTOQMTR3tlg50hfgrfAG0
         Setg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769420689; x=1770025489;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nhGT/HQ1K3bK8TPssIGqP1JnnpOAhb4uN9EYdGCGT1Y=;
        b=szgBDF2qpHdqBQXIH98h2Wb7rwPyeYlcM+/XHjURVIo7TGjQAmHvdv0rlBGP087gw/
         tevjTVoFdmg7rcM5vx5dmDYgblxCFhSNgBobM/kxekTxj9/R4921xJu6YuNjFZda+t3i
         UqvmTsfIQOEmEzOO3PNv5P3qZLq5e1GirGX6idygoTDwObSjTcmoD3GuIcjd/jnycLPL
         foa7gXzJK0hES7c7cRvTWLgGqv7K8BmwDurDeQ4r/AH7JXhpUlHbYDxJmoQjFA8iJ+xd
         GIycP53LI7/dgD7izpapsdwXXE5AFilIS0iQ/w/XPYMuGtKdDfZ9k+yZ82wuxs06Am0Z
         4fgQ==
X-Forwarded-Encrypted: i=1; AJvYcCVutAIRhDM2wgRgHPP9w/JrnOA9fLWMnfGXwNmIW1eifFbcDxqfXlxpFBiWN+I9QwtjsqwphgR6YK0k@vger.kernel.org
X-Gm-Message-State: AOJu0YwNQkWNIN0nsbGA65lRx1kGgguYj+Tlz3hghb0TfWUP3M2fTSfw
	X/iDFmOA93hcF86E6zjIsEftsZtv2mtx2E83MY5sgxqD6o2YjcGNSZwKA4PRmV6va6+VliWwGK+
	UMyXwaw5aiXpVsvMbz8MuYO/ORhoiD6I=
X-Gm-Gg: AZuq6aL2RCjA0PcubqdHxl9J2YjliItHA02HSAfitevUt8gk7wi4C2/L5AtbCsrKXw+
	xEadcaxp3Yy9wDhpfmO6QfjLLCJfV4H4ziwnmK1rty5vSZiVgv78hrytBa8F6B9MpxB3Q0mAs80
	gZTLuamsrlN8xGg0zlPkLhfM3dQV7rpMPX+psIJ6Tsa19dKtp7N0Q/8e/ptkhPP5cUWd6T2UiDk
	KcB+ciKB9XwSyHBXVRGCUqBJ7mYYRQLnnpQa0g2BS9yzedb865C5UnssOMHgerRumaw43lL6UX5
	EGJU4+/y2IF6HYnn0xERNnw+Gczs9/xht03yTEQ11THLUuJnzc4FhCunRFPzxPbcySUbgriKNxr
	V5D2drVGZhxaBAA==
X-Received: by 2002:a05:6000:2287:b0:435:b6ab:6c1a with SMTP id
 ffacd0b85a97d-435ca39bcd6mr6717146f8f.49.1769420688458; Mon, 26 Jan 2026
 01:44:48 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260123225957.1007089-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <TY3PR01MB11346F03BEBD966394DEF1D2A8695A@TY3PR01MB11346.jpnprd01.prod.outlook.com>
In-Reply-To: <TY3PR01MB11346F03BEBD966394DEF1D2A8695A@TY3PR01MB11346.jpnprd01.prod.outlook.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Mon, 26 Jan 2026 09:44:22 +0000
X-Gm-Features: AZwV_Qie9o3mYmb8iKUvXWL98uu7GFsBm7ul8GkvHx8ee10_J7q9KAecJqgE3ns
Message-ID: <CA+V-a8uA+qeeCCFmpHG=9tsb4LnHPjKP6j5sAF6ZitQQAdYuJQ@mail.gmail.com>
Subject: Re: [PATCH 0/4] arm64: dts: renesas: Fix SD0 failures on RZ/{T2H,
 N2H} and RZ/V2H
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, "magnus.damm" <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259410-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[glider.be,gmail.com,kernel.org,vger.kernel.org,renesas.com,bp.renesas.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7D9F78626F
X-Rspamd-Action: no action

Hi Biju,

On Sat, Jan 24, 2026 at 12:47=E2=80=AFPM Biju Das <biju.das.jz@bp.renesas.c=
om> wrote:
>
> Hi Prabhakar,
>
> > -----Original Message-----
> > From: Prabhakar <prabhakar.csengg@gmail.com>
> > Sent: 23 January 2026 23:00
> > Subject: [PATCH 0/4] arm64: dts: renesas: Fix SD0 failures on RZ/{T2H, =
N2H} and RZ/V2H
> >
> > From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >
> > Hi all,
> >
> > During testing of SD card functionality on RZ/{T2H, N2H} and RZ/V2H evk=
 boards, it was observed that
> > the SD card initialization was failing for UHS-I cards. While investiga=
ting the issue on RZ/G3L smarc
> > board it was found that 12ms ramp delay is required for SD0 power regul=
ator to ensure proper
>
>
> It is 1.2 msec voltage ramp for switching from 3.3v to 1.8v on RZ/G3L SMA=
RC
>
Right, thanks for correcting.

Cheers,
Prabhakar

