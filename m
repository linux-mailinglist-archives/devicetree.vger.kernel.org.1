Return-Path: <devicetree+bounces-278286-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SNaXJidNvWlr8gIAu9opvQ
	(envelope-from <devicetree+bounces-278286-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 14:35:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1839B2DB0B3
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 14:35:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C42F2305C3EA
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 13:29:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11BB53B3C1F;
	Fri, 20 Mar 2026 13:29:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hw6mSq1S"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E33ED3B27FB
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 13:29:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774013375; cv=none; b=VonipfBKQ6G6ZrgDnp+awh77w5EBmuhNQMTHRRQFZrR+rN2JzchouSBOHCpQqr4r1NVt91DGztrp0Ie8+TP1Inv1xYyjCw0B4INVIpXQsFdsf2QgTjN1x4bKKZgFbjP1+4gPr+7AP5u5UyjriOKGDvtcWHj7bp1bbWO9zUsrUe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774013375; c=relaxed/simple;
	bh=JZaAEVo37FsSN7vEeObUJS4hvnecDWdhOXo8ln5B/80=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=M/w4098HrscPKj56piM3w4EIeJbWZH2NYtoDjG90o0J13MaPTfP+7YXULvHvROBjGW7s6AyNEC+qa5pZrRYDjTGdeLSsVCf0MZ30z2mVtXCyUhuHT4pHIyyBvL7qE+j8HcA1mM1r1cS0VUlxHQs5N/ftKMEkhIAJqtvuXngC7U8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hw6mSq1S; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8302C2BCB8
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 13:29:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774013374;
	bh=JZaAEVo37FsSN7vEeObUJS4hvnecDWdhOXo8ln5B/80=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=Hw6mSq1SGiI8CZClbEuvondGzIyuvJsOYiWB2rfBYinijOo60kFBK5BUdbwhx4AdP
	 NC3hqSd4u/ofOlqN6y63rn/cxA68dYTkG9SMsMoIpT9wkEM/XEKYnyB92K1rkUx42q
	 e4GHqeOtpEzJt5WTkr1/xfQv83+OXLiEBCcYB3eKjkHfzs0siK7JBjkMwwUoREtkO0
	 NDmQBPdzCOWkP/rh6CoNPkTvF3KzMCqaiHq9jxoiCke819XjeKs4KnqBkOvWV1ca8X
	 tD4B0RXCGRwhbiXJY3c/zlzgsRYeTPLgSk/ADVC4ByhT17ZhIoioctI6v4ZJHo2Rgi
	 lPwqVnjoPDHVQ==
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-79a46ebe2beso16607327b3.2
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 06:29:34 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXQiYFhnGb8KR2/99pldCi0o0VZrDnC/eFs9nmzLNjftanD1+U8aN05+mbtVvVXEcynRXRkCMighKXV@vger.kernel.org
X-Gm-Message-State: AOJu0YwuS+Gh/NgmJv/d/Y4qhgCM31SYpFcSUUriCTMTi8lIWLoapbrg
	HSnLeFvWeuIbPkU+CWfF7EKdKDxeBKpWJYo+CKjcoe7jOOZFd3PAzyWQh7x/c79lKAUiqi0Gm98
	WpjCicyVTRzmzpbHH+P95n/bh2slTX58=
X-Received: by 2002:a05:690c:9204:b0:798:5880:26ec with SMTP id
 00721157ae682-79a90ad7324mr24516357b3.16.1774013374008; Fri, 20 Mar 2026
 06:29:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251014191121.368475-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251014191121.368475-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251016-dimmed-affidavit-90bae7e162aa@spud> <CA+V-a8un1cF=acNjG=79_v7oaR8gzBQ+3z1As8AqrJnOnk-OUw@mail.gmail.com>
 <CA+V-a8vq2EvTb_hXxRzW_Rbp+BPLSaLsEVkvaTjc1zRin-RV=Q@mail.gmail.com>
 <20251208-headgear-header-e17e162f0f52@spud> <CA+V-a8s0gPbe2ffmN1G_7ibVL4+=FKUEQZu3_CwQL=U0T3--DQ@mail.gmail.com>
 <CAD++jL=J2UpxQSNrZhCMw2fJ0umM8NRtNys2zMBouAFBoK0m2A@mail.gmail.com> <CA+V-a8vNeJdbjJ6K9QkedHgAprC=Z0ckUztwe1ZapSiqjPKEsw@mail.gmail.com>
In-Reply-To: <CA+V-a8vNeJdbjJ6K9QkedHgAprC=Z0ckUztwe1ZapSiqjPKEsw@mail.gmail.com>
From: Linus Walleij <linusw@kernel.org>
Date: Fri, 20 Mar 2026 14:29:22 +0100
X-Gmail-Original-Message-ID: <CAD++jL=g+Aei4QeBo8D_tUfHsuY_rkxSyhBcvEbhvHRp=Yi=zA@mail.gmail.com>
X-Gm-Features: AaiRm51UM9DrmBLQxinX5bQrFF25nGpU_896Za3iYqu44M6gC85E-1omxE0JV20
Message-ID: <CAD++jL=g+Aei4QeBo8D_tUfHsuY_rkxSyhBcvEbhvHRp=Yi=zA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: pinctrl: renesas,r9a09g077: Document pin
 configuration properties
To: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, Conor Dooley <conor@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-278286-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[glider.be,kernel.org,linaro.org,gmail.com,vger.kernel.org,bp.renesas.com,renesas.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-0.587];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1839B2DB0B3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 18, 2026 at 10:30=E2=80=AFPM Lad, Prabhakar
<prabhakar.csengg@gmail.com> wrote:

> Sorry for the confusion , there was a miscommunication regarding the
> specs, but it=E2=80=99s all been sorted out. The drive-strength settings =
on
> this chip are 2.5/5/9/11.8 mA, I will represent them using the
> drive-strength-microamp DT property and send a new version.

Excellent!

Thanks for going the extra mile with the Lad, much appreciated!

Yours,
Linus Walleij

