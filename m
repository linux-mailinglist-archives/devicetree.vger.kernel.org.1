Return-Path: <devicetree+bounces-280110-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uDXtAbwsw2ktowQAu9opvQ
	(envelope-from <devicetree+bounces-280110-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 01:30:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5BE31E002
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 01:30:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CE8A93067720
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 00:30:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4B74189B84;
	Wed, 25 Mar 2026 00:30:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="c9pbpxhI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2BED82866
	for <devicetree@vger.kernel.org>; Wed, 25 Mar 2026 00:30:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774398648; cv=none; b=fmkxok1bvKBPW7SjZ4tXdgwpzwvCiwqoQznf7mPWGcJUFdx0pAvqK6uCret/RmvKYhM+e3sh55MjOHoybZJCZ/2wnPIxzkeIVbdcmGKJxD3MT661A3mJPwbF5Ll+zuvECZ7D2Ed8kTKzUV9bQ5u8axjphkGmcr8cr1C1FYaJW78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774398648; c=relaxed/simple;
	bh=8PHUma79lPPWs01+csdL38haO6ydJT1fINYoHxqE/dQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=mde6uhGtO2PZukDiCE7z1OS8588///euRy5uTR8gF+i0gAR/WA9g33ubKASGF3Q3WHPsGWQEBWBJNSFBQJQ9fuQhjWoxU+fORk24mFWKzs+GTg2OTgwvmbohZFSkwfsTgBLtaHGQHXOI1/zvYsYyA7Gp6dQu4qXxqIHhL3bIxgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=c9pbpxhI; arc=none smtp.client-ip=209.85.219.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-89cc797547fso1668216d6.2
        for <devicetree@vger.kernel.org>; Tue, 24 Mar 2026 17:30:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774398646; x=1775003446; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8PHUma79lPPWs01+csdL38haO6ydJT1fINYoHxqE/dQ=;
        b=c9pbpxhI8nNz3cBShDT3uNOUzVePTEyXPQNz4TOmQjRC8I4yr6S+A4D5VboxiXkhLE
         OS1d/NVcS6LVzsGsL9v9wL9PmCBnhDzwgSikpJkYGgAqLsUWhxLd8DlL8kquPV7mh4hU
         FBeOmNNccYX04G7pzgrKY4YrG1+FNQrTn0+DaeKnez19D6owzArAW6Y4/stMDmZph+lm
         xv9tiYYYBeWMSxnnpeDK6f8qidAHPkbW+T9H91IU8oAqFAzv7L5P+L1SBdL8lr3ukb3Q
         dqM51x4jijDzrCykoTaaYAM1sDT/uF90OqDkE+yOYmWEV5XBGDKsOFRfPG4PGLRYFWW7
         0cXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774398646; x=1775003446;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8PHUma79lPPWs01+csdL38haO6ydJT1fINYoHxqE/dQ=;
        b=YL/hps6eofgmpk0bJi7U3FbJ0HnnrmT7RyB19nzr+r1shO3kFijhFpLuIBJEQYKPLn
         LSvXWnrXl8IjFuu4dccJzk8ydFTVQ4QvnrQ/tGgtSxHnjMvPrZKUs7i0b2hG4qMuRkOL
         yprx21/ZArIgd5CxCHwJJac4O98Q2/XJEd5Le7jmyiylP9hlJqRezrEQW1LCZgj9WoyJ
         WHs+7XpPfOg/RhZon29Jg0cvruINRPi2Wc4wsoEO7gc653CLFou0Guw7ZMYtaGYOzxjo
         HHUlIZ7o4KBwG5eeK7zy+lC+lKsv8GZrt0U1gFMfqdF9AIgu4MAUJCYmcIPaU8D7fmjs
         mroQ==
X-Gm-Message-State: AOJu0YxrS+vDQAPRrZLvX/LoOncnPz2SVOLKeIQkf7WBUdQCtVw2wZ3E
	l0rQEOhxh8VIn/oVziXsaPfh18z8OJMniTaRnoqv9lcogHa9/K/qCpo0
X-Gm-Gg: ATEYQzwaw5jhBHk+svxfnaJi94B//voeq90g5gvFveYH2lNe/8qBEic95Y+Zt0Rq/9n
	SnDPr4XxxqKZJXI3xCuo5CCTzo7YjBK9F566uYMBZwk8Kz+g8ACMJyTk4kBzwQPqM4GMQ3hy4U2
	0475P+U1Heo2JuDqHloaD37K7fuqJ5GxQ2qs/xdgGSgCCeP8rVZoh7NJIJVIud9PydHKSmSSWdx
	oYiJamV3gHyNUhzB1GcimwaqWGjzVJ7Wl8LAvUI5cPvo3Df9KlnM6pQMxodyMHztlxZsZFKn1V9
	JHF1hATzmndfiFlSiuWcjFPed1TXdQknqQEsq2hD97VlFevZsYEPUF40oHXZP5S8p9ipvDsxJuK
	mEOw3RPD6HdEc9GReEUon9b8N+sIS0V54DXAFS68Zs+Rk9aW26AsTkxsSEMZ7IwbMMFrebMhpXv
	4HoJMpoaQjSDtxYcG6jBy8kedTd3q4EwdM1ZY8y40d26y/YqQYbuHC6d6Gw6oUhs4R/Hf5SQfda
	TH3p7XT9ADShg==
X-Received: by 2002:a05:6214:4a04:b0:89c:c772:f439 with SMTP id 6a1803df08f44-89cc772f90fmr9663266d6.63.1774398646058;
        Tue, 24 Mar 2026 17:30:46 -0700 (PDT)
Received: from jernej-laptop.localnet (16.red-83-43-237.dynamicip.rima-tde.net. [83.43.237.16])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89c85215210sm127316876d6.2.2026.03.24.17.30.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Mar 2026 17:30:45 -0700 (PDT)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>,
 Jernej Skrabec <jernej@kernel.org>, Samuel Holland <samuel@sholland.org>,
 Chen-Yu Tsai <wens@kernel.org>
Cc: devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 7/7] arm64: dts: allwinner: sun50i-h616: Add SRAM nodes
Date: Wed, 25 Mar 2026 01:30:43 +0100
Message-ID: <3330670.5fSG56mABF@jernej-laptop>
In-Reply-To: <20260324164357.1607247-8-wens@kernel.org>
References:
 <20260324164357.1607247-1-wens@kernel.org>
 <20260324164357.1607247-8-wens@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-280110-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jernejskrabec@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DD5BE31E002
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Dne torek, 24. marec 2026 ob 17:43:55 Srednjeevropski standardni =C4=8Das j=
e Chen-Yu Tsai napisal(a):
> From: Jernej Skrabec <jernej.skrabec@gmail.com>
>=20
> The H616 SoC has a video engine, and two SRAM regions needed by it.
>=20
> Add the SRAM regions to the dtsi file. The video engine will be added
> in a separate change.
>=20
> Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
> [wens@kernel.org: Add VE SRAM region, commit message, and split into two]
> Signed-off-by: Chen-Yu Tsai <wens@kernel.org>

Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej



