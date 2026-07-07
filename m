Return-Path: <devicetree+bounces-322075-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id C+mHD5oFTWqPtgEAu9opvQ
	(envelope-from <devicetree+bounces-322075-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 15:56:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 44A8B71C309
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 15:56:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=AyqZgWzt;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322075-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-322075-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 190F030451B0
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 13:42:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88C7541DED3;
	Tue,  7 Jul 2026 13:42:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f44.google.com (mail-yx1-f44.google.com [74.125.224.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19AD12E03E4
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 13:42:36 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783431758; cv=pass; b=aWI7v9DwTIpk8oGYkfe6WrqcrToBPOUgISGo9sT7LOHbpViL1R1xnKMkrdBLCMmkTyUAuHtD02j5ypQMfgMWrPsaWLJEE+gmD3C1vbxjvgBxyN/+c242pSmR/KCWgsKUALb6JsA5P9dyBOIhqf1oHaNBDhQgsVVlB4doWig7vlA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783431758; c=relaxed/simple;
	bh=E1zAPP9belnBMx2I7CyLtNbspD4kzIfqj0U5PW0gNQ8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gglAtPG9mL+X+0CXeP92NUlUZFg6JvXWfdNLt2vWoDd4kxeszANslTQKLi5rdTXAA9ztG6vDl8BgaKF+ee70sF8203MruSW3mfeRP1SH1EQYa3mMZYC6BqWZdNlAubEZiP91bRI8kfsHN4wzZt7q60/jhagIVVtKV40w4r2L9tA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AyqZgWzt; arc=pass smtp.client-ip=74.125.224.44
Received: by mail-yx1-f44.google.com with SMTP id 956f58d0204a3-66666bad8beso4695348d50.3
        for <devicetree@vger.kernel.org>; Tue, 07 Jul 2026 06:42:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783431756; cv=none;
        d=google.com; s=arc-20260327;
        b=jkTXK331tTnUY4NvcopQi66u+YE3EPyeS9sDaC1BPQUwu+DDJ/i4yIKcuuEjmOLxGL
         q+YBmSB8P9PWczGNc1Tn44TgUV34wg85KlMNxiKygxTftrYGRwhrgw5ndHji8L3GNW4O
         8uHApO7SDas18R6FXAksR9Jrc6hLt7tMSQ2rnlANcpLgUNL8gGlOWndqKAJG6nNxqb9K
         34LW6Wtzn4lOGi/E96SNFELIwXs8/NwOKqo2TrdtnjSNEYvrHwO6gnc58bUMYi472TbJ
         qZgAY59zMPgEeD4NWcMMjuO6kICFLHfsgvH9EiawJQAAjid4K8LA3xHZZCYwM2X1aYdh
         1DBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=1TwL3+aqF7dc4/lpQ2JLA2uoetuIwHkPHzHxzge8914=;
        fh=w7tAfgOSa7//XP7CBm3OwRp1Y/TikULHyP0DKAl5qW8=;
        b=mO0vxj8ElZcIP81WLfnhm4AZU872p3wt2ZIGqw1Kt3Lt9DCxqtKqZcAE9NFEYNklPA
         fs5DnL8xHRAilcxk+jnXxLOu1SzK5X4rsBnEFrB3WE2bhKxCtIs/Bmn4uI8nrxatFnzh
         3jb/zuc8pxuTActnr0L722TGYHmPmh53QzkwTcaFD3qVgJ7l3wAXhwv87ZhISKE44bsS
         eaOggzF7FcxzF1K5lPas4mwpbapDDeZx5OjhP3zRRvL5U4xOLPw8azZ0o/j3dkbtcmt5
         InHoA0fG/aPAXwBVTPvkPzzrapz68xu4DkKhBpC28KhNlc7+tbLTaj8abz2bQZL6aOcP
         K/bg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783431756; x=1784036556; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1TwL3+aqF7dc4/lpQ2JLA2uoetuIwHkPHzHxzge8914=;
        b=AyqZgWztWnKRxEq8u0UE3xKIskNjUBNPGRKFEwrz+dYsU7qhRiQKbPqgiUOnVrZQgd
         G3Z9LL17CAUSThGwKUNGKZAKe4j+8mhBxCI61qxW1zDXAPYSNKX8Tf7XYUBNxvd8sCGw
         dQTomwvYanCFTIhTcrVyA4ES3pos5fp+fAsO9evshM70suc81EQ/+JZKd7k5wtsRizVH
         RfWMki1Wi4qQQpnOxO72PA+7LbZ7FbJJPto5EmeSqpYgTzLVu05a8cMgEQZnF8WXdxpD
         0eImHj0rFnQlz6a1M5bTp51TK54zS/MJQKGNU9GYmGJN/eRD9iqBsEgXBZb2EkHZVIAZ
         SC5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783431756; x=1784036556;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1TwL3+aqF7dc4/lpQ2JLA2uoetuIwHkPHzHxzge8914=;
        b=LJ+MEtqZGkoMT8F+CeOFKusml9rPYl+Q+Qb8eWGxcfMWk0gX3fJ4+o/gwZJZx0QX88
         XLyvFWpQban5WVtuisckCugNSc7Aelm+5dboXF1YHfZVCLiXWEBn/QeyIX8G/HE7E+5C
         VFRhDKDnCQ1okRAuM44EQIzAVVbJSlcq0b2Fx/hB5RdRl0esI+OvexTfGZrGmIiZCMpW
         nnsJ4w9zc/oPYBDdZ0Tah/0LOCUpLMxHOL3PePifHyzcRQoXr/CdXh+ZHj5XoOLekNiP
         Mm9ctwhftSOrVQwtzzSbDdaHUN3UdLuNEyfon5Bg4pzHygFBDz/y2nsgnuiTWfXQywQl
         Vgaw==
X-Forwarded-Encrypted: i=1; AHgh+RqW4w+WcSDRzH1do0LrBAlzD++5zuXolycpOYZklaGr+Ut2EgVf1Gu7g2Pi7wrQJFpU5ExQsM3XmgtA@vger.kernel.org
X-Gm-Message-State: AOJu0YxOSWF16HA0OeZLvx5sL810eottQ6o7KSBFMerEI6LvQy1eJnxt
	OJQZ1zksiE4BT4G+Oc5OV+sPOs/GcTCzFR3BPvhLf+oG7VhLLa/4glbx+XQOjDGCZJfbp9QEzsH
	6QWc+Npef3UCNK/luaeFGL3L2xXv27PU=
X-Gm-Gg: AfdE7ckm51wGMVhX/NYPlKoLw0Ax12T/SIvt58YaGCMQ0yuzZaMYnJnHz7g8I5nzXcU
	hYUEI9IBySCWkWri92LmY85RC4883HtqBTfQoWO9lA+WpGxrIi2/vkxTZGr31KJDhGAcNBB1q7L
	NFczMyv8yKPgeth0ChF2c2MCepeMuATvf+eT636MmHPnUqedmykbBGFrwpIE35fEnbx84i00dK8
	FBq3+hWby99DoDs1QBCc8AxCMWK/z+3LadAX9aB0mhbyZ2BXBVBz/JbKMhUPnEG6mNL9bGyDGgF
	REqocnRA8S03JnripDG+twho9h5rrP1Jd46IMpndDf5GSMMOtdqRTTbABHmkf7jjAyP8tW4J
X-Received: by 2002:a05:690e:488c:20b0:664:d231:2f73 with SMTP id
 956f58d0204a3-6677fbd4331mr2922458d50.50.1783431755730; Tue, 07 Jul 2026
 06:42:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260630-apple-mtp-keyboard-final-v1-0-506d936a1707@gmail.com>
 <20260630-apple-mtp-keyboard-final-v1-5-506d936a1707@gmail.com> <e23e4581-7eee-4f4e-aa82-6b6bb6177678@cyberchaos.dev>
In-Reply-To: <e23e4581-7eee-4f4e-aa82-6b6bb6177678@cyberchaos.dev>
From: Michael Reeves <michael.reeves077@gmail.com>
Date: Tue, 7 Jul 2026 23:42:24 +1000
X-Gm-Features: AVVi8Cepx_g_efgo_16NLDYw5eSOtcfEnI_otyB3OoPCUn9_yzRFa4EgaystrR0
Message-ID: <CANpmGNtnZo20nPyM4qB7Jcty=bRFsxsDWnAOk9Md6Y+Rd9n7ZA@mail.gmail.com>
Subject: Re: [PATCH 05/10] mailbox: apple: Add DockChannel FIFO controller
To: Yureka Lilian <yureka@cyberchaos.dev>
Cc: Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>, Neal Gompa <neal@gompa.dev>, 
	Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Hector Martin <marcan@marcan.st>, "Joerg Roedel (AMD)" <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	Jiri Kosina <jikos@kernel.org>, Benjamin Tissoires <bentiss@kernel.org>, asahi@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, iommu@lists.linux.dev, 
	linux-input@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:yureka@cyberchaos.dev,m:sven@kernel.org,m:j@jannau.net,m:neal@gompa.dev,m:jassisinghbrar@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:marcan@marcan.st,m:joro@8bytes.org,m:will@kernel.org,m:robin.murphy@arm.com,m:dmitry.torokhov@gmail.com,m:jikos@kernel.org,m:bentiss@kernel.org,m:asahi@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:iommu@lists.linux.dev,m:linux-input@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:dmitrytorokhov@gmail.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-322075-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[michaelreeves077@gmail.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michaelreeves077@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,jannau.net,gompa.dev,gmail.com,marcan.st,8bytes.org,arm.com,lists.linux.dev,lists.infradead.org,vger.kernel.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cyberchaos.dev:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,mail.gmail.com:mid,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 44A8B71C309

On Sun, Jul 5, 2026 at 6:14=E2=80=AFAM Yureka Lilian <yureka@cyberchaos.dev=
> wrote:
[...]
> > +             while (block) {
> > +                     writeb_relaxed(*p++, dc->data_base + DATA_TX8);
>
> This must be writel_relaxed, as writeb_relaxed in this mmio region will
> cause an SError. This is why we have separate addresses putting 8-bits
> and 32-bits into the FIFO I guess.
Ah, thanks for the pickup. Sorry for the silly typo from me, must have miss=
ed
it because all the HID writes are 4-byte aligned. Will correct in v2
which I should
be able to send out by the weekend unless I get busy.

Thanks again,
Michael

