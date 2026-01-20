Return-Path: <devicetree+bounces-257498-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uBJ+EZ+5b2kOMQAAu9opvQ
	(envelope-from <devicetree+bounces-257498-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 18:21:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id E342E48762
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 18:21:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 3F75D824F5E
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 16:27:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B9784508FC;
	Tue, 20 Jan 2026 16:12:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ErlGRcgB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77D0E4508F2
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 16:12:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768925571; cv=none; b=FfZFXIPtUQuMfXMDfyLBm/9p0IxLEbcxXLr9Fx26hMT65fn1T/+WRFt7bdYXp9LWPZ0X1cVD+pMB4aGfik3YnNIQDr+Ir3fRvD6WZnHIz3dzxP4b8Ac51wNr27jzemom4hXkkoRI2xmLI4lb8bFZZdxJaYfvgwjOBHW5XsKPSXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768925571; c=relaxed/simple;
	bh=UcHmwn1TYbgAgdsr2pglxCwUR0tcKPNVHmODeLgjiHY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZHgR54J1pXs3trdx6dt2HSTMRlFNYy22sdk0kge9K1yoFnaUGU8Vt+LpQHRE7C/uDtlFPhXmC7D07jXdcXUcBnl3Eq9KrBL6Y59u/zf5NF5IrDiG1vP6jArTuL5hHbOGLgXzG+Q/8sBYw6SUXug2sDwqbA4TjXeASN+mpryWNqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ErlGRcgB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D73DC2BCB4
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 16:12:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768925571;
	bh=UcHmwn1TYbgAgdsr2pglxCwUR0tcKPNVHmODeLgjiHY=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=ErlGRcgBk1cmfwN0J9rwzMURpmIWBwb5ghXbPS+sr8NndVAEuqSZaHWm+z4XP1ofw
	 Zt8L3MjqWg5U66adMWEtTE66ySwHP/g9gpfvGCEeM9nAFkS3kL+HGpgRSDqAJWpsdM
	 sc5tHFr1i/H7H5IM5MOaaX2JgBuxbOAXKsDEtTYgo0o+VKg7yONxigfT8GLr+d7isi
	 1Yp57trDLzcGqDY1z4beLCa5UuKBvETzMSQXSZR8IbyzH1iY+5q5Lm9eSci5fUVwH0
	 2zg5YIR/Y3sRJIsN5hx+FvJqOIS1jA580BPTG+oGaBpIewwVvyZ2Uk28z24zifRm7y
	 l6WKgc9PhuXFA==
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-6580dbdb41eso728539a12.0
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 08:12:50 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW/46Qf5hJQIn0gyLQ9qvIHDb6TljhFQgJHuo256eFBmYh6GAatPXIBY/jZKVTfOHAaxYxGSLd33dUN@vger.kernel.org
X-Gm-Message-State: AOJu0YxQNfAvU9BdoKdAIjmTVz9uK9low1wf9ARrR7vVdZGzYZUUzJpV
	i11un6u0E0GzAM7B0q4dSVKMdpQfaiAE7jX849q1gi5YPSS5jH0ke5RxrAYE0V1851L/mgqLmH8
	HTANgn505B4sm2WiMP4fWP73QXWDhgA==
X-Received: by 2002:a17:907:9495:b0:b87:d664:860f with SMTP id
 a640c23a62f3a-b8800364e56mr203884366b.51.1768925569451; Tue, 20 Jan 2026
 08:12:49 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260108-dt-mtd-partitions-v1-0-124a53ce6279@kernel.org>
 <87tswhswsp.fsf@bootlin.com> <CAL_JsqJ7_yKRTCOrxcq0QDy_MRMCRMQqhH=TKiBs=nubqNN9HA@mail.gmail.com>
 <87ikcws57d.fsf@bootlin.com>
In-Reply-To: <87ikcws57d.fsf@bootlin.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 20 Jan 2026 10:12:38 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKQO1XjPELmfd2xStto1xFbnno5GLr7KheNcn6hZM9L5Q@mail.gmail.com>
X-Gm-Features: AZwV_Qiq51kWXEGrScowLw75flgyDCvIcgtUbbfsaaGBjWwlXhd42mhTMjoSRsk
Message-ID: <CAL_JsqKQO1XjPELmfd2xStto1xFbnno5GLr7KheNcn6hZM9L5Q@mail.gmail.com>
Subject: Re: [PATCH 00/10] dt-bindings: mtd: Partition binding fixes and restructuring
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Brian Norris <computersforpeace@gmail.com>, Kamal Dasu <kdasu.kdev@gmail.com>, 
	William Zhang <william.zhang@broadcom.com>, Nick Terrell <terrelln@fb.com>, 
	David Sterba <dsterba@suse.com>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, 
	Simon Glass <sjg@chromium.org>, Linus Walleij <linusw@kernel.org>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Marcus Folkesson <marcus.folkesson@gmail.com>, 
	Tony Lindgren <tony@atomide.com>, Roger Quadros <rogerq@kernel.org>, Hauke Mehrtens <hauke@hauke-m.de>, 
	linux-mtd@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	FREEMAIL_CC(0.00)[nod.at,ti.com,kernel.org,gmail.com,broadcom.com,fb.com,suse.com,milecki.pl,chromium.org,linaro.org,atomide.com,hauke-m.de,lists.infradead.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-257498-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	DKIM_TRACE(0.00)[kernel.org:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,mail.gmail.com:mid]
X-Rspamd-Queue-Id: E342E48762
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Jan 20, 2026 at 8:56=E2=80=AFAM Miquel Raynal <miquel.raynal@bootli=
n.com> wrote:
>
> Hello,
>
> >> The series does not apply cleanly, I tried mtd/next and then
> >> v6.19-rc1. Can you please rebase it and fix the conflicts (at least 2
> >> patches fail, and then I stopped)?
> >
> > I rebased on mtd/next and sent v2. I only saw one conflict though, and
> > that was with seama.yaml. That's going to conflict with Linus' tree,
> > but the resolution is take the deleted file.
>
> I didn't see where this seama file was modified, except for Linus W.'s
> address change. Is there an -rc I need to pull? Or an immutable tag?

That's the only modification and it is in 6.19-rc2.

> Maybe this series applies on top of your next branch? I can give an ack
> for the full series if that's the case and you can take it.
>
> I generally try my best to avoid conflicts at merge.

That's not really necessary for trivial merge resolutions like this one.

Rob

