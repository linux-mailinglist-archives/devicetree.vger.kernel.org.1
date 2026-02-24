Return-Path: <devicetree+bounces-267836-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iO11HquMnWn5QQQAu9opvQ
	(envelope-from <devicetree+bounces-267836-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 12:34:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B67E186589
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 12:34:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 769E13004DCC
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 11:34:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F0CB37E2F0;
	Tue, 24 Feb 2026 11:34:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="RcLW7F4A";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="N3+bJuz4"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E35537C119
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 11:33:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=170.10.129.124
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771932840; cv=pass; b=C3Gu4cuHCAt1YGEIlRVXX88TNx1art1q+iltGoLwq5I1OhcCN4QivMb4yjBUiUS1SP0pGiVfzUDKkFROtVJGfpnoV8uDUpzCH748NXF8QSXutBkkSB05ZyO8KD5prbpPiZFSVrCoa8/UzPLLDuutWsZL0YIbQAlc4ve8zgGzQ5M=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771932840; c=relaxed/simple;
	bh=e3fFdUkJcs62tdGmt94fUffFddFQh3eOqTXtq9Bfi2I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rAjCtZf/jidJDGfxqCD09qdlgNo3MRQmmg78bqZlNyoDZUbcIi2kD39OQ0xkYCZBA+UNIaPcf1kthYfxuWHs8KBeKTGyVCIkqSOXk6XhJHhIsiKqOE4NoNLKSZkj56BT3UlwUkl29XsIZGKg5/baaF/9fsdmL6x/lvNreO6QZx4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=RcLW7F4A; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=N3+bJuz4; arc=pass smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1771932838;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=H1XbW7/Mchf18o4deZ5UyLtW8vMbGMc1nfkosLZ6hzk=;
	b=RcLW7F4AlsSJX7tb/qqUyxzEdaRBauweEIsgOPuVE2jnXx5wQSvm7LmdFZowWhJPdEA8Fp
	n2c7rotPs7RHse/GNng5lXnoRRVo9WqE5CDkgCy/di0PmEiJV87qKzg6UItaYvCwHc3QGj
	98TFfmBz6SraE5c8cA5rZMTwfV8QZek=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-191-HGZwv0e9NN6Lth2esOO4qg-1; Tue, 24 Feb 2026 06:33:57 -0500
X-MC-Unique: HGZwv0e9NN6Lth2esOO4qg-1
X-Mimecast-MFC-AGG-ID: HGZwv0e9NN6Lth2esOO4qg_1771932836
Received: by mail-ej1-f71.google.com with SMTP id a640c23a62f3a-b88622fbe54so92504766b.0
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 03:33:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771932836; cv=none;
        d=google.com; s=arc-20240605;
        b=feT0YCb0HeT8hun1nt5AeUAWmqFOzmMkDAV22jU2dAXYdELjNKyMshrIhSfoFaRwO9
         Go7RqQqr63j6TSQzat1AFy7WF4I4ZNMyQfk6oqiiQhZSlU7EPS7VKPQfPJIQ82/dk9ct
         oE8l/T7JC+FrsXMvfHekwn6yYiqiq0aWQi9lfl/QDW5sUWpx/y/ybYVX+OcWK3ucRJ5P
         ELiBvz+zd84TTeWtfs1tdoA0aRtyDYVbsTKfKkhRa0/cuiXu612jViR1CYidspBLNPRQ
         LvKRzMnRJbWZP8hDwgNwfcoQwcBEcHNMJKHykAS2y9drKgj1jprcC1sc+o+0R1M0u6m9
         CdxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=H1XbW7/Mchf18o4deZ5UyLtW8vMbGMc1nfkosLZ6hzk=;
        fh=WphlA95BVVfsgxAQQGCRHevqSbGK20zaaWy56ZxJspY=;
        b=gMmbnVaZuoTm92g02y41IZSeBiq+ZHZgdCJjsaUnYykqzX98XW4a5BhVk99NgWiBki
         DXPx1dzZbGJztwR/32k4A9I4mXfrKvoxItf2FCnR0dbwxUHz2yzB/CxN7Mh8QHVd0tEj
         DOvG+7xP2MW1Sf8ld0gSxrwNyymrggbuv1Co21B3b0MWLBptsXSdjCkCHQw1LGX33nRk
         WWZ3Lkeei1Y6VnzZwyq1U3izdpBxlpki4P+QA6GjoOaKQVTwnQWRk5WM/SvnKB3M+lkv
         4qBcQRgeMIj6MBsMsrMCCoE/T4+82PLhnWPSy/71kYHGJbQCtdikusazSscY3GRgbJwu
         AuPA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1771932836; x=1772537636; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H1XbW7/Mchf18o4deZ5UyLtW8vMbGMc1nfkosLZ6hzk=;
        b=N3+bJuz4NqAy0ubeoi/MVLGp87XEG2bPXyA5VIYWXnBQiKFFGiz4bT33IZlnfy5hWg
         o41Q1EXHSQVoCw21wD/NeYLECECg22jq7rGh+NMUj52iC31tu6UKLHVveiFM3Wx42/5+
         PioEqGLuLsfwNhWfXWfryq/7y/4HXyKH/6Ugz8zUucio9lXiQ17SddMTpjTf4AEA/Q8M
         4dOOy7a0SqdPKST9rvdfum6i9rrxThhpdCJ+UjcwQsORzz71+4zrcdlgzcM4Cqy/DXBo
         Wgrvj+wZ2DEuRa4m3gROrnQ8sTyo9CTDqoKrJDxebkwn0GU8TydCX0VAiH4yX2rRfRaG
         3/MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771932836; x=1772537636;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=H1XbW7/Mchf18o4deZ5UyLtW8vMbGMc1nfkosLZ6hzk=;
        b=mc3PmpAzf2+kBvb5/PoSlrfRmYk1ZbwYp+p8drEIX1EuM1BiTC5MrfCbJto1n2BtC0
         4iy+n+6XpeUMOr6/mh7dLugFxpxJMbzgSQHWdi+Z8lHAXagrlasnRHa38p0V5jV0pRzR
         6DRb3aga7VWlXrGJflseEazpahBhGLhD/tJNYjVx/ywl9wPkSy8VauBOIwFo7sWbaN7A
         Coj5KDJ8pOtOoJzkWhZTN/pWPry6+/9ni7mNz24y2r4D0DgvJYnNiuqvtRADqGqMo7BV
         JYaqqvMCFX1Lf7aiD+Y/7BpKhHM5A7TCu07zFRMS9rzpqVnz8rYyIhfsvJ+L3ILPyYB4
         50WQ==
X-Forwarded-Encrypted: i=1; AJvYcCXD9KFN1lnwr5Xai+JpL00aubfHy41sSXim1yhwKNKh7U6iysD3ppN1pENo7hBQZjY2IWadjvLEUYEk@vger.kernel.org
X-Gm-Message-State: AOJu0YwElC2Fz2uQpSsO//l2gPcN4EqT3PaAkXnMkXaj5Ht5xcT8lflf
	QTx4Nyh0rHjdAV9Vz1sMTEme17VvAxVliQou0AukAFLSh8JUFzFIkv8q/vE8PPfac3czmZd6pyr
	4/bCidZKXFQb26DKterSbowsZS3lmAukq7HiBRc4z3hjCvmCScIKYWO4AOXxIqDzZO9+6lDygNt
	WKjDOZhhL56CPae3WWJQ729LFkYIgkOe495soYOg==
X-Gm-Gg: ATEYQzyYEy79x4U2edcF9wANrYyIu9jgm+XcOh9GMnuwgSLaS/MMoCPTypMwSFlJYdA
	7HN5CWjsTlvdRJTm/B3UHiHLy7HRJIUkJhdNyOhoURaLtxBafv8fskXHn+yxiOObxZBoJ1Bo6oj
	DHnS6u0SMuUcODyNNguxrwV0uvxSpq52eYyYt8N6AEpF9hjbtacbOFrp4slqzXprpAdvQrvcwzG
	UEUdg==
X-Received: by 2002:a17:907:789:b0:b90:6a9a:e36 with SMTP id a640c23a62f3a-b9081b4d10dmr738934666b.48.1771932835531;
        Tue, 24 Feb 2026 03:33:55 -0800 (PST)
X-Received: by 2002:a17:907:789:b0:b90:6a9a:e36 with SMTP id
 a640c23a62f3a-b9081b4d10dmr738931066b.48.1771932834979; Tue, 24 Feb 2026
 03:33:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260214101421.228-1-dongxuyang@eswincomputing.com>
 <ae2358d7-7e82-49fe-8a03-195487a7b010@gmail.com> <41d3bf12.387f.19c8ee9570e.Coremail.dongxuyang@eswincomputing.com>
In-Reply-To: <41d3bf12.387f.19c8ee9570e.Coremail.dongxuyang@eswincomputing.com>
From: Brian Masney <bmasney@redhat.com>
Date: Tue, 24 Feb 2026 06:33:43 -0500
X-Gm-Features: AaiRm50KgDObk3pYyYmDTAq10i3GCVF2jr0QwhnBU1r08XDcRGlr4pw_FkRlFAM
Message-ID: <CABx5tqKDQX+AK0yRUsHc2_dvuegWgWfJ+WCnphZX4NYJyHceww@mail.gmail.com>
Subject: Re: Re: [PATCH v13 0/3] Add driver support for ESWIN eic700 SoC clock controller
To: Xuyang Dong <dongxuyang@eswincomputing.com>
Cc: Bo Gan <ganboing@gmail.com>, mturquette@baylibre.com, sboyd@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, troy.mitchell@linux.dev, 
	ningyu@eswincomputing.com, linmin@eswincomputing.com, 
	huangyifeng@eswincomputing.com, pinkesh.vaghela@einfochips.com, 
	marcel@ziswiler.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267836-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,baylibre.com,kernel.org,vger.kernel.org,linux.dev,eswincomputing.com,einfochips.com,ziswiler.com];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bmasney@redhat.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[redhat.com:+];
	NEURAL_HAM(-0.00)[-0.986];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid]
X-Rspamd-Queue-Id: 0B67E186589
X-Rspamd-Action: no action

Hi Xuyang,

On Tue, Feb 24, 2026 at 4:09=E2=80=AFAM Xuyang Dong
<dongxuyang@eswincomputing.com> wrote:
> > I'm testing your patchset on
> > https://github.com/ganboing/linux-eic77/tree/eic77-integration-test-clk=
-v13
> >
> > It's applied on top of Samuel's PMA v3 patshset, plus device-tree patch=
es
> > from your integration test branch. It's pretty similar to what Marcel d=
id,
> > but I just want to have a separate verification. What I found is that t=
he
> > kernel can successfully boot with clk_ignore_unused (eMMC/eth working),
> > but hangs without. It stuck at
> >
> > [    3.257141] clk: Disabling unused clocks
> >
> > I'm pretty sure that some clocks that weren't supposed to get disabled =
got
> > turned off. Can you validate if that's a bug in the clock driver, or my
> > device-tree just didn't link all clocks. One thing I noticed is that th=
ere
> > is no CLK_IS_CRITICAL in your code, so it's highly likely that DDR PLL =
or
> > others were turned off unintentionally. Not a clock driver expert, but =
I'd
> > expect the kernel should work fine without clk_ignore_unused.
> >
>
> Hi Bo,
>
> Thanks for your reply. I also got the same result without clk_ignore_unus=
ed.
> This is a bug, and I will address it in v14.

In Documentation/driver-api/clk.rst, there is a section titled
"Disabling clock gating of unused clocks", along with trace kernel
parameters you can add to log which clks are disabled.

Brian


