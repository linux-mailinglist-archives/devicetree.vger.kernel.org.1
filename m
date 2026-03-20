Return-Path: <devicetree+bounces-278291-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8JZFC8hNvWlr8gIAu9opvQ
	(envelope-from <devicetree+bounces-278291-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 14:38:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E00AF2DB144
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 14:38:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CB93630451FB
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 13:36:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B5B7286D73;
	Fri, 20 Mar 2026 13:36:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SsCrO90W"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA022286881
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 13:36:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774013801; cv=none; b=swIt7HzxRDgJkqEyEv7Z7C/EsiRBRaKknUir76WgaCkjmEn8cCx7+xynid634Bn1IaJmyFtV0I3c34p7Yu3KErMNSaZrHtnROq8R9RCnaM8NDVYpss+80kmOtHWdFraMNVbs3+2xBWrS1ewL2lzikXDSvPWhaNv5iGo8RYgt5pU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774013801; c=relaxed/simple;
	bh=FIBI8PY5yYFqZrUwTkEODr86axeBjhoPnLU0TQWsWKA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=j7PfH32CLXRTo3w+yBUYHvYj/EDAg8vuqcg1DuK7YGPQyqOchj2FsMyPDS+ej4eKJnjWWqNIwt2HDI/sc/nUirhhPEkbH/92A6WpAh6c0+NDs3adP8hiWe1k2MdlFHBKMMK7x/eESg0/Ycxc2PqVXT5QkvIWvOG/fylw63a92zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SsCrO90W; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9738BC19425
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 13:36:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774013800;
	bh=FIBI8PY5yYFqZrUwTkEODr86axeBjhoPnLU0TQWsWKA=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=SsCrO90WaSDTZ4trSKqMon1aYsVeOParDmkk5H1AvhN/gP5vACsKDKAMNB3jG8CoO
	 b5uJmA91+adoPQP59VHuhnWjz3THVuqWxkVrdG2aR3GybqisEr9g8zte080oTMi8aL
	 tqEmA6HXe0IAteoBxGy/vLSUzbIsgcXd9ZOyOCOvvjDpcdW3ZZIEJHSsLrFRclDOaz
	 R6vhdJVsigeYKXOoalMN3dvLg6J3AGvxjPGWoSWuRmy0NiXZEC5pkd5c9c9tShkmdq
	 +Ct87If8N2D5MwhW2kDqLRM8b/sFtSNEmrevVXqu5H0+JWhpQJVqgy7SG9rUq3xihH
	 i16LDSK/1Tj5w==
Received: by mail-yx1-f54.google.com with SMTP id 956f58d0204a3-64ad79dfb6eso2780420d50.0
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 06:36:40 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCX2O+7Jg41M8YAKkyi3zLRe/7UQcttN1QxI0Bnu09BYZEC0nZlpImMKYa86JjhD/g1/xCqDIyd1Q85c@vger.kernel.org
X-Gm-Message-State: AOJu0YxVuop42tEC7cjUqQDGmTIIP/39RqVL8BmfxJjf58FCxImmu4Rm
	MoeCs+UUtu2ZJpmrfc7JCqFp4ZdDoh+nMSDSXs7dtlXOaHO0QLFVbFG/lyyIId+l3viO4Xcw/Zo
	Rye3qWRIzYRcVfj+A7b35/j3e4nrKHK4=
X-Received: by 2002:a05:690c:22c5:b0:797:afeb:de93 with SMTP id
 00721157ae682-79a90ac353emr32341657b3.12.1774013800019; Fri, 20 Mar 2026
 06:36:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260319141515.2053556-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20260319141515.2053556-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20260319141515.2053556-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Linus Walleij <linusw@kernel.org>
Date: Fri, 20 Mar 2026 14:36:29 +0100
X-Gmail-Original-Message-ID: <CAD++jLmt+J3Lj=NuYAYmCks2=gkrc5PVbsj+ER8=Rs4u-_3Y7w@mail.gmail.com>
X-Gm-Features: AaiRm51N-cLrG692swxMqBzAQuKlCnVnf0ehYtOBP_oA9f1qkrzSaMaqyrmsE9A
Message-ID: <CAD++jLmt+J3Lj=NuYAYmCks2=gkrc5PVbsj+ER8=Rs4u-_3Y7w@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: pinctrl: renesas,r9a09g077: Document
 pin configuration properties
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[glider.be,kernel.org,gmail.com,vger.kernel.org,bp.renesas.com,renesas.com];
	TAGGED_FROM(0.00)[bounces-278291-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.985];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,renesas.com:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: E00AF2DB144
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 19, 2026 at 3:15=E2=80=AFPM Prabhakar <prabhakar.csengg@gmail.c=
om> wrote:

> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Document the pin configuration properties supported by the RZ/T2H
> pinctrl driver.
>
> The RZ/T2H SoC allows configuring several electrical characteristics
> through the DRCTLm (I/O Buffer Function Switching) registers. These
> registers control drive strength, bias configuration, Schmitt trigger
> input, and output slew rate.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Yeah exactly like this :)
Reviewed-by: Linus Walleij <linusw@kernel.org>

Yours,
Linus Walleij

