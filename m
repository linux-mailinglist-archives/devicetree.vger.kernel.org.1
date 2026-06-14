Return-Path: <devicetree+bounces-311448-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FdysIte1Lmpc2AQAu9opvQ
	(envelope-from <devicetree+bounces-311448-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 16:08:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F17681419
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 16:08:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=nMEbH2XK;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311448-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-311448-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8AC5630028DB
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 14:08:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C114E3A1E8C;
	Sun, 14 Jun 2026 14:08:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64BBD3905E7
	for <devicetree@vger.kernel.org>; Sun, 14 Jun 2026 14:08:11 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781446092; cv=none; b=ezJZsCcB0sNpTu29Oq9bxLUfRmRAfF1WfkhN8pEzbF4vM+7RdhrDP1cFsF/kHP0oE68RcJtHm8ewm+c0rYJjlyZJ+hOGNsrNCnYjgQuhD/pYSPBX6QbnXAgRv6sL69GuO7P+wVklb7CHwia3rWyLdW3+EVQtQn9BV3BMMQSqQ7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781446092; c=relaxed/simple;
	bh=vZ6sLuNEBwb2pkhd5qu/rn+wBwxOy1DXeVTlXK6rZDU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=tgAhCQTBOIhFtOCbi3XKnKK7PXwVNmIf4hfL8kXS3dgbbcXg2FpRpUmIvX/viSmiT+cq6cem9vuZYmNJFskJdpb6eetYBIWdCGbVgJ+aa/ojnB6RVVjm7MDhgS47zIIMrrPpJzcDVDtQZEPL/FbG6+G+7UWLSozgMQacZBKOtgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nMEbH2XK; arc=none smtp.client-ip=209.85.221.52
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-45ef616daf6so2758608f8f.3
        for <devicetree@vger.kernel.org>; Sun, 14 Jun 2026 07:08:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781446090; x=1782050890; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vZ6sLuNEBwb2pkhd5qu/rn+wBwxOy1DXeVTlXK6rZDU=;
        b=nMEbH2XKoI01XLI25vYVh5vKg2PFVFxTlyWbzoypcJOVeVVnVg1o5V/Lbx+ZTWVRKt
         L9lzYKU0uT6xhHwiWu7yARf9a2NN5gTs6rRzEGhde3l8AQztmdzoiPULMlnE9yIwtoJC
         7vQnaEIX8D++3QfejzVmrDNWt9Ocf4wNJqwirfYhND4PWqY3MEedQFabhgN6rODz+Bx5
         NIn4/XvtJKd2Uind7HGgqGThflnXMh4GXHuNCbUaaXOgfVSmpHQqjSKYTlRZBmFApzBt
         BXtbcb1PPLfftiW1VehTRJ5w3eFcfjgxyslHWzxjE0KZjJFwUK4Ai5npXY56I14M64Qa
         XFtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781446090; x=1782050890;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=vZ6sLuNEBwb2pkhd5qu/rn+wBwxOy1DXeVTlXK6rZDU=;
        b=bM+S/ZmxixxqloRwxMdaR5aHDy2BWs9gFRv9iRstzaBmOc9YX4G82+Gh6uUmGJ7FTj
         mrIqQWEZUWhs8UYbGI0YCzgARVL2EZYdGHp4GK48UHIV0ji2sSDG8EfOHa0vdLWWakF1
         pNEfOljRUzP/ZL4zzxk/wr8xO3aTIod8QDg0rARQXuDGvG2BKDhx6YTFiLN5MZ2Htwpa
         NdrVCYGCvZseOROsrX5oY4F17Qz5RTTRU6em25WeQLiWcJ0pDFFd0uiGhA+12Xcn6IH4
         MPBkzSygAF4CqGx3+0uA22SyQajHfTLMTSQnvkL6Lp3PDr0GeJfBEv17gJtADy0SnpLi
         JU+g==
X-Forwarded-Encrypted: i=1; AFNElJ/UdzjnEEVeQTAUPEubvz2vbHivcbootC7ITUHFJmv4gh36QuUAQNr2jyFy79BMrBH/qrYA+XyUKQ0g@vger.kernel.org
X-Gm-Message-State: AOJu0YwMNYg3J5vZxeoRQbHcsKXNGjC6XrPVvxwZtCf5edR7NHh0EskO
	3Pz1m7X3eKyFJFPLNU7XvoX8tBkMd2WVyMPY/r5H8heJoHgwo0V6Etrf
X-Gm-Gg: Acq92OFC6QU66j4Bnf5MHrMDBtzEvQSobxzMZm5e5qk/m96YeH8FYZWuVITlg0oAOvR
	4xx9KEiXgMQhfnIpmlOWj1iFlSGQIm6sag6rD8a2p8+skQxL+Nv9wR7Kjz76iDw2RndtOm0PH4G
	ibh+zK9RsSOA1sdoEPt61/KKSDl/waUBs6pTyviJLi+pVhXs7BdZ+DqeXY4+pnDAWqJx7gg/2pA
	968hSeAFLt9eV4KYIQ95lrjDxs6tExqtfI8f8jupuoJeDmh996mjaRNliFDvTCNB9oXc6IUBI+0
	AGKzcXz2FSk7ejRZUg58PZtgbViniHccx4wMzjUTaJxuE4GErOVlQDnTNB2apfReN+ZDfqBiH82
	5Fz3WCRqEYxeRBXbZw8YKjxchoZgT9OSQg59hg8Sa6YQ/Q1bkxbPBhMDVVu/9hUwiKX30c83g1H
	c4LAtGWQvrAYngXCwnOCAn02wGn5A1ONVbGquELKoL0PeO
X-Received: by 2002:a05:6000:984:b0:460:3234:293d with SMTP id ffacd0b85a97d-4606dbce8a5mr14655307f8f.40.1781446086390;
        Sun, 14 Jun 2026 07:08:06 -0700 (PDT)
Received: from jernej-laptop.localnet ([188.159.248.16])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4606f26f450sm27152837f8f.10.2026.06.14.07.08.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Jun 2026 07:08:05 -0700 (PDT)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: wens@kernel.org, Krzysztof Kozlowski <krzk@kernel.org>
Cc: samuel@sholland.org, mripard@kernel.org,
 maarten.lankhorst@linux.intel.com, tzimmermann@suse.de, airlied@gmail.com,
 simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject:
 Re: [PATCH v2 7/8] dt-bindings: display: allwinner: Split H616 DE33 layer reg
 space
Date: Sun, 14 Jun 2026 16:08:04 +0200
Message-ID: <nIKN_benRn2Bk8SDZrkMCA@gmail.com>
In-Reply-To: <032c1099-40ab-470e-8cc3-af6d3cad22d4@kernel.org>
References:
 <20260509190015.79086-1-jernej.skrabec@siol.net>
 <ahNuuaVlDl0KvOSj@home.wens.tw>
 <032c1099-40ab-470e-8cc3-af6d3cad22d4@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-311448-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:wens@kernel.org,m:krzk@kernel.org,m:samuel@sholland.org,m:mripard@kernel.org,m:maarten.lankhorst@linux.intel.com,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-sunxi@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:linux-clk@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jernejskrabec@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[sholland.org,kernel.org,linux.intel.com,suse.de,gmail.com,ffwll.ch,baylibre.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jernejskrabec@gmail.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 98F17681419

Dne ponedeljek, 25. maj 2026 ob 14:10:38 Srednjeevropski poletni =C4=8Das j=
e Krzysztof Kozlowski napisal(a):
> On 24/05/2026 23:33, Chen-Yu Tsai wrote:
> > Hi,
> >=20
> > (resent from new email)
> >=20
> > On Thu, May 14, 2026 at 2:04=E2=80=AFPM Krzysztof Kozlowski <krzk@kerne=
l.org> wrote:
> >>
> >> On Sat, May 09, 2026 at 09:00:14PM +0200, Jernej Skrabec wrote:
> >>> From: Jernej Skrabec <jernej.skrabec@gmail.com>
> >>>
> >>> As it turns out, current H616 DE33 binding was written based on
> >>> incomplete understanding of DE33 design. Namely, planes are shared
> >>> resource and not tied to specific mixer, which was the case for previ=
ous
> >>> generations of Display Engine (DE3 and earlier).
> >>>
> >>> This means that current DE33 binding doesn't properly reflect HW and
> >>> using it would mean that second mixer (used for second display output)
> >>> can't be supported.
> >>>
> >>> Remove layer register space, which will be represented with additional
> >>> node, and replace it with phandle, which will point to that new, shar=
ed
> >>> node. That way, all mixers can share same layers.
> >>>
> >>> There is no user of this binding yet, so changes can be made safely,
> >>> without breaking any backward compatibility.
> >>
> >> There is user. git grep gives me:
> >> drivers/gpu/drm/sun4i/sun8i_mixer.c
> >>
> >> which means this is a released ABI. As I understood, the old code was
> >=20
> > We held off on merging the DT changes so that we could rework this.
> > I can't find the actual request though. It was probably over IRC.
> >=20
> >> working fine but just did not support all use cases. Why this cannot be
> >> kept backwards compatible?
> >=20
> > AFAIK the "planes" block is shared between two display mixers. As the
> > commit message explains, this prevents using the second mixer, since
> > only one of them can claim and map the register space. And on the H700
> > (which is the same die as the H616 discussed here but with more exposed
> > interfaces), there could actually be a use case for the second mixer.
>=20
> It explains why you want to make the changes but not why you cannot keep
> it backwards compatible.

I guess it can be backward compatible, but I don't think it makes sense.
Yes, original driver implemented original DT bindings, but there is no node
which uses that binding. If there is no user of that, why would driver
need to support it nevertheless? Supporting only actually used DT binding
allows for better code architecture, as there is no need to support second,
unused path. It also simplifies testing, since developer doesn't need to
test both paths if code is changed in that area.

Best regards,
Jernej

Best regards,
Jernej



