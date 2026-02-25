Return-Path: <devicetree+bounces-268481-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GHTaAhIsn2lXZQQAu9opvQ
	(envelope-from <devicetree+bounces-268481-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 18:06:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B565819B3A3
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 18:06:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 89B3530D9D0D
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 17:02:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4ABD3E8C49;
	Wed, 25 Feb 2026 17:02:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LQUyRslG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98775274B3B
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 17:02:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772038968; cv=none; b=OCa82g6vxGaR1kp4Kmfk0/WKfOoYAllM5hMvkWlrkFBbYYMQS5EL5ukj+EtqNJ2R4DZSDvSb1z8anMI1jPub9X40Ti9lUKMqcalk/+9vInSMgVKUmP3z/0ggTOHUZsR1x/XTqVQvKi6JreKOGYgm+25JBgSbwqK/MgjuLxblx9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772038968; c=relaxed/simple;
	bh=E6Ehhu/p48I8BFank35i0jRWbnO3y+NJ7AuacIynifc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=AMpBE3B6Q+8jUyVjsQFvwQ2ScPHLvMWyQ8o59ib6EeRAyhjffr8/v/boNuJ/0jTxkoibzTx72u8QY+QHd8lgyETvxiq0L2nGqevyj2bXPfSx5Ft8bcxr0NWznKd1pjymUULdBEfwLhIFILVfHcHEEiq5dyTWwFo86gREn0sgE3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LQUyRslG; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b8f8f2106f1so935675466b.2
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 09:02:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772038965; x=1772643765; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E6Ehhu/p48I8BFank35i0jRWbnO3y+NJ7AuacIynifc=;
        b=LQUyRslGPZZ0+zlssdyH0V0iDmjY0E2Dibiik0gefc5QiBx7sKQHIIOU2ikzeuUpdq
         JSTWNhL4kNycxN28PtDM/zKPBhj5EmuY5E2WWyIKIQAFC83nAlPcgK/QZCWIJv1Bu4D+
         k6B1NkPnDAMJayIwjI2jJTqoVKJGE2wn5xQ2ZYsCXFdJvN8cuGd/5Rhy2nB2ZckRG6Gi
         n0bPRiQV10JYUVE1TDkBTB5qnrczHIbXudjQaw6TlnjbJoRMHJGCfXK9IF/WOtIiPWZt
         7Qyd3Gt5QgFGR5+8j5mbpDA4MwhDTYe3rtXG9BEH0RUWT5NIDqoXTQtVhXvxQxT2AqH0
         7lhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772038965; x=1772643765;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=E6Ehhu/p48I8BFank35i0jRWbnO3y+NJ7AuacIynifc=;
        b=DyO+bm9a+1RMLymGqCCRwftYjmDhxSmjci4k9C6bshacQWGtP/tgOnTB07dzFZbAhw
         rKBt6/qPKrQpgJmgq3RUFBUrbwUgPgp5ztjXLwyegI1M28+zfpXNLVees+xpZF/l3P3X
         cc15bAeZsT199ohOMH0+JDfRIUnJ+jwJAgKxc9zHJXPs5qXNVMAIA6KNyqXagUyuJOV8
         n0oa0lYCxBVhJuIovX5Wa1HkSER4W6xWb8dKV6Gv0HwdaTwtCa+0eeSHb4AVPQ9GqOKX
         yo2oIq0MsGtqz/Rx5MHqGxmslaYD+ptRMoF84vIH4cZhoJ3HqwhMh+yuRewo0M1NVeO5
         1Zfg==
X-Gm-Message-State: AOJu0YzIYr5U1WOdYXvvTp7VWD9n2iAF3iXjlxzcJMKqZLfHytOfsJEI
	vO0mH1ixTOdgSJ0ipIyy7ILGCAVp9GtbUPv6I3k1SFqWYNXD7WGXmq+8
X-Gm-Gg: ATEYQzwHIOn7Oq3UOCNJvR7PTczZTOP6pXcZq8KzxY6GGVhruZhoWHqXPC0aGyF+FNV
	7n0saNBUCyOryTikhf4bQyiAilWQ/75glfzEbkUZWsbrMIMyOzGNwMDxIfhukkKIXUIPjYkpb3R
	h76OdDl9g+CCce9MxCjSuO9TnsajsMGVRAE4UXtVYn+6WqtwLdlpHAt/XLJcu3cJANJXGXaMGPZ
	QAjtTbm85TfMT6Jx483xmmqfFW6vD1YHiHh5A60UC/RfY7yd/FL2fkNo5IVgMl+rPM6jCW0PUo8
	V4dfFHSMp+SwgrowrPyENIRMYwWJVylPz8H7pHDC/8PW2xsVy5fqOSawrs59IFVs8rf6lF9tVqb
	iN8Xapnukjv/YwjH8bSbwxP5GHOMiTx70fKAYfkEUoIZ4bsO7NWGTxXo+n/5oy7ffsE39oLwOC9
	2BGbsA3n3mFC1inOSwrIsU5dpABt/zK/c8Tb59X68wCPwhxtQdg/zbrYyWhTWA2r5iTdDCrKRFT
	f6AiJW/wD3rc6WAyQ==
X-Received: by 2002:a17:907:3ea4:b0:b87:7042:9aea with SMTP id a640c23a62f3a-b935153e459mr63561566b.18.1772038964791;
        Wed, 25 Feb 2026 09:02:44 -0800 (PST)
Received: from jernej-laptop.localnet (86-58-126-118.dynamic.telemach.net. [86.58.126.118])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970bf9fb2sm35504200f8f.1.2026.02.25.09.02.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 09:02:43 -0800 (PST)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>,
 Chen-Yu Tsai <wens@kernel.org>, Jernej Skrabec <jernej@kernel.org>,
 Samuel Holland <samuel@sholland.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Chen-Yu Tsai <wens@kernel.org>
Cc: devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-leds@vger.kernel.org
Subject:
 Re: [PATCH 3/3] arm64: dts: allwinner: sun55i-t527: avaota-a1: Enable LEDs
Date: Wed, 25 Feb 2026 18:02:41 +0100
Message-ID: <4714447.LvFx2qVVIh@jernej-laptop>
In-Reply-To: <20260225160828.1687643-4-wens@kernel.org>
References:
 <20260225160828.1687643-1-wens@kernel.org>
 <20260225160828.1687643-4-wens@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268481-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jernejskrabec@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B565819B3A3
X-Rspamd-Action: no action

Dne sreda, 25. februar 2026 ob 17:08:26 Srednjeevropski standardni =C4=8Das=
 je Chen-Yu Tsai napisal(a):
> The Avaota A1 board features 4 RGB LEDs in a string connected to the
> SoC's LED controller.
>=20
> Enable the LED controller and add device nodes for them. The timings
> were copied from the downstream vendor DTS. The design does not specify
> what these LEDs are for, nor are there any markings on the board for
> them, so just use them as indicators.
>=20
> Signed-off-by: Chen-Yu Tsai <wens@kernel.org>

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej



