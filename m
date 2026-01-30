Return-Path: <devicetree+bounces-261122-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2AAiI3RufGkSMgIAu9opvQ
	(envelope-from <devicetree+bounces-261122-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 09:40:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 04BCDB8807
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 09:40:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A2E53300D927
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 08:40:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C58F32E120;
	Fri, 30 Jan 2026 08:40:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kL4XhSoH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07D3130E82C
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 08:40:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.216.42
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769762416; cv=pass; b=JBq4HbsUGWbsk5hfDbeq+PUCa2S9yRtwR1rI86f5W8ho0JwQE1xYSn23FQ9T24UdznZUZrMJPQPVFMQ3V14wnrY/E5vY8a3k0Chlukcs4nGvEVoLPnwkltSbcVGUH/TW8jCntuPiVd2T+CYSYBKRka2tpgKEk1gIGlOKbv+xHQI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769762416; c=relaxed/simple;
	bh=bSzFXN53vplKWS6PnrB53pSwv37woM51TQmZ/gIlzlU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VvMgfolr+009L7f2znG4VVdsRO5Q2OWBoMmG2Fr84eX1jXT/xU8Exbr2P2RLjAAsr063xeHiD6qIMV9BtajkN61/x2bzQxEmgT7Jql7JyImTheqHqNa9Mwf57gPh7hn97YajsfBJ+BZuZpg5urhfdtq1FjTJHoMWeAhTIMNmJ40=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kL4XhSoH; arc=pass smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-34c3259da34so1219017a91.2
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 00:40:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769762414; cv=none;
        d=google.com; s=arc-20240605;
        b=SNRtR6DFD8H6nRJaxXXtNt3lMWbVDoUEGTxhCwKsfXtEE+s8MyI9Ha+xHrRJ++0Iz6
         fpDyaxlHcjcZ9lIOiW5aJkIx/pXmtQcux0IKigMagfsZRxIRBaDXABofpbjR+05GH/9n
         LSCXdCXVHf/pFlHikjsnyogIVZDMtygUCtZe8bwhYIqTaHuYLFtvWHLOdmSM4UGZQsp/
         KS4+JNljKHl5CkiqhOdaZWJMT7N3BSH/odHvnnN0hvQvK43RzcRPA5kAle/7pt4sSGeh
         KLMyYhnfwFmL+mpUtq4SHAenlAAuMSrOC8iVDvJHKc210dBoIwB+HFyeyxkM7a0t3sd/
         5ueA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=bSzFXN53vplKWS6PnrB53pSwv37woM51TQmZ/gIlzlU=;
        fh=jvJFj1RLcDvkngHvuqnWtp7A4jXIjOvP4YH+L8ipRY8=;
        b=YlGrGtUlBMDnmEWyqfi1EVsIaEHrDAFzpgqZ+mOREAg5NbAMlW2CZ7pHpKy1KG40Sq
         Xzj8UdtWRnOm3nMU1dMFWS9rmRnsrTcJz+W7BiDcOBc2GIpSbNjRKnw09uC3WvfQ3aK6
         /Tt1ZudOVoK/1jt/fECNMD6qneXFPvreErJQT1SnO8Ba0mIVSpAUjizHrAwzOEMJEIXA
         uFDQSdNw6TCcSJNPSmL5oxFKr+di/II2Yy1kgbpvAKaynetWRsGtw4s4RoIe8FAmHRsI
         0CCC9tOEV/wMyay/5hk8EvvMv7sULNOMWwLi0xk/ibU6d5cNxP+QDtcaE82iyTDjqH4+
         iYfw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769762414; x=1770367214; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bSzFXN53vplKWS6PnrB53pSwv37woM51TQmZ/gIlzlU=;
        b=kL4XhSoHCzmx17iks0Xmv23J9oE2RuhW2AEbZ/AoXvVZGanzZ8NlbAfr8iBGf/jpwI
         Pvgfq2rVstBkzAYmngCRBPh0EdJ2SO84dePVGZ8QEuOK2itW9bPFTF0AouRl93o1Pqtj
         DXMzMjVhTEumihP9HFA9pEXehmzgukCylwn5ERuP23COMckv1tlbp522ZxQmZiBylfqQ
         XlDLUwiIxLJ+9vGU52Xud9keLtPdCp5JFvJ2q3rlAGn2w4rY3YhXO594HNpBQ/9IdKGC
         9+IPr35gdQwjAKJCWb8iGuGGeXRbBVw3YzIdCE5Z6bEhEZrwuTQYXk2oNqcey8hOtvQ0
         Iedw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769762414; x=1770367214;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bSzFXN53vplKWS6PnrB53pSwv37woM51TQmZ/gIlzlU=;
        b=mseLE987OQTiG6Hx9OPTjhKg7gQzra/PmWrUJHtXAOKSCp9uQBODzutudm+H0qHqlZ
         bNM0nak7aIayIUx9hyIJPxJrMcBz+zAcabEwRFXfngDEN7Co6eVVBd630UpHK5SN3o2D
         y74lPogSoGJ/h1RKH26g2KvOR4Tp/8RApONcEc7BoZaBtt/2z7Uwh88mwDAKEHvPP41L
         aV+hS7vyxW5+KQR14a6K84UJUVeqBGkvQxZLqrbwm1frWmXKopRG8OMB4WQvnI11vS8c
         BiNwi3YX7OJONF49wAY4NoCZV4/APZkuJeMwE0gcQVlsaEE2zDn8TjA5ywgNRg3A4Cff
         TZGw==
X-Forwarded-Encrypted: i=1; AJvYcCXD4bpy6eg1rB3pCr0wXzF7fPOLgRpcjdzjgR9SG50K/aP6TxUjtnBOGuMC+93HNaG1exmPBc2ryoD6@vger.kernel.org
X-Gm-Message-State: AOJu0YxPZJeh8SXQaaqBVNwfez0t6Kiw/7so+GC/cWHWs67t87JMJTmn
	yVjeOpPXyODYwBUNMIzif8K42y40Hb1ZFy04aGkrYcBoQe+vjb/3p6/eHARIHPctN9f+tr9/lgp
	nfmve3EvMfVgabT8XN8P4HhIRGo5Uftg=
X-Gm-Gg: AZuq6aL9O7ILiZKOeLZ4f9bdQ2ND6DpIvIbtXHXpsqbOqlMIbdqnU4RiGvZpZUVvq5X
	XTQMz2h8I11pbt7bO1Em8rUKqRkOBogL9/cCJ/cPXzxT3/WhdINnkjI8hKtTqaW0YEpeLU4ULWC
	A7umCwPhYbqxufEcUknxwnulUPIMePfnyYeVu6N7JUuvdm2OH17awt4Mp2KJkQqPchH7ogI1zaR
	8DkwWgGrtFnqdlVQ4UiOPePhaeowWLGRCiN8fcMYSNOQLwb/VboRByjmEsp6nUUfLntRBEt
X-Received: by 2002:a17:90b:270d:b0:353:39bd:3ad2 with SMTP id
 98e67ed59e1d1-3543b305623mr1811680a91.5.1769762414422; Fri, 30 Jan 2026
 00:40:14 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251222-yv5_add_dvt_e1s_ioexp-v1-1-25ad202d2681@gmail.com> <a0d802a1e450860a9859ce3d456fcce81dde8ba3.camel@codeconstruct.com.au>
In-Reply-To: <a0d802a1e450860a9859ce3d456fcce81dde8ba3.camel@codeconstruct.com.au>
From: Kevin Tung <kevin.tung.openbmc@gmail.com>
Date: Fri, 30 Jan 2026 16:40:03 +0800
X-Gm-Features: AZwV_Qh0YugKL7P5Qp4faBa4pFcAFafyTEwBvU80qMkiPLr1D8_zLD6pOGbecE0
Message-ID: <CABh9gBfdNnWVUy2+pdMZWjt+mgKCV3TxZei3V_cPTp1z1fguEw@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: aspeed: yosemite5: add x4 E1.S expansion board
 I2C mux
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org, Amithash Prasasd <amithash@meta.com>, 
	Kevin Tung <Kevin.Tung@quantatw.com>, Ken Chen <Ken.Chen@quantatw.com>, 
	Leo Yang <Leo-Yang@quantatw.com>, Jackson Liu <Jackson.Liu@quantatw.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261122-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kevintungopenbmc@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[codeconstruct.com.au:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 04BCDB8807
X-Rspamd-Action: no action

On Thu, Jan 8, 2026 at 12:46=E2=80=AFPM Andrew Jeffery
<andrew@codeconstruct.com.au> wrote:
>
> On Mon, 2025-12-22 at 19:25 +0800, Kevin Tung wrote:
> > The new hardware design adds two additional E1.S devices behind an
> > I2C mux at address 0x73 on bus 10. Add support for this mux in the
> > DTS device tree.
>
> Out of curiosity, you're monitoring them with the NVMe-MI basic
> management command and not NVMe-MI over MCTP, or is there something
> else going on which motivates describing empty mux legs?
>
> Andrew

Hi Andrew,

We=E2=80=99re monitoring them using the NVMe-MI basic management commands
directly, which is why the empty mux legs are described.

Kevin

