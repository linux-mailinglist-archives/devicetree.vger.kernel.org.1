Return-Path: <devicetree+bounces-275853-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ndAvBtort2mcNQEAu9opvQ
	(envelope-from <devicetree+bounces-275853-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 22:59:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FAEF292C41
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 22:59:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F32C3304A8A0
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 21:59:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F80037C109;
	Sun, 15 Mar 2026 21:59:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HPDC1GwG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 670D4371D07
	for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 21:59:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773611989; cv=none; b=q1SihxY3M3KWFeeDUy31ZmZBjGc+c+YspcijNldoBU+4x6faJ7b0I067Oshx90q9M0WDAuhXpDj1dDxn2YpX6rb0HMHtKngtQ8u2eQM5boIUKwZ9IWLwHXJsfrjw5nVCUhfr911UUyb1fFsRTG0UFFr63f0oF10l0k2d7xFnY48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773611989; c=relaxed/simple;
	bh=x5EwGd5FmcHmg4Ybs87ktoHc/VQIB+Xb86Ls0MVPvVA=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=XeP6YhhWflLbTEp3mvD1W+q4RiB7LPjiq6mwPGN8WW55VxtEU++jCSnNxVtfrnjFi0ApJSBZw6xg2P2NKjHJa5XRFPeZr/ivn5xuDQtpg/362OPXU09zgVkscRUERaFFDLDVpZnsN/wwzXtIXxj+jWuvGdts30tENPJtjNsbhLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HPDC1GwG; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4853c1ca73aso31799615e9.2
        for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 14:59:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773611987; x=1774216787; darn=vger.kernel.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x5EwGd5FmcHmg4Ybs87ktoHc/VQIB+Xb86Ls0MVPvVA=;
        b=HPDC1GwG0CGyvgOMx2ScGwgQy2gs2DhcY9WoTsb4NDYptlMy7b/In2os4JbJLIH/G3
         IVfOyDKHUfYaxwnEaeqhI1NFSqBtoNqorNSaYh5Hre96Lktu+xHJPJVu/D9jVhQbiNc+
         x3J4EWqfNyARfACVEgqIcIFlp+5am0XwBXLatpsHYAhJT1ljMPVCEETdFsCwcI2/URFr
         wBzgzEd2t1CmKGaxeBEi4Xp3JVfBVUvnoJuXXwo8gUsOG5ETyFNyHG0t1r2UdzLkZBbk
         jhYbbA7M/mts3HFc79n/Wi/F7undT9bWFQ/L+cLO2V/bO92m9VMnQ4Y2R4yIJsGQTZVR
         +bKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773611987; x=1774216787;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=x5EwGd5FmcHmg4Ybs87ktoHc/VQIB+Xb86Ls0MVPvVA=;
        b=XxcPy6n/YQPg3rCk/bZNh0vd7dJF3DGLxhqS2gT9zXbt/JAt98YWPD+prHGguK0LvE
         ACuLHAbc/wfiHfbFi3YSojvn9vo1tpBaz7wvhWsERwfCfBUS0kR9NuoUCywOEplHXaqR
         FU5F0D7hfvRDMh3wAM/cqSnJj1E+cbRziczKsU2NsvRPXFfs+mhC2Ls4sca21t8X+6Rl
         4efRBgGIEI30UPFdArV8vSMBuxb4dFBCgydhoFwAaCbZi8UdQiL+3y7l2wacDi1OqGbk
         O0kFndtYD235MgE42ohWTbmoSbVzmtsWG6A4OsuSXzjhSGklFHLl1xDGTiwEhN4YeLTJ
         DYtw==
X-Forwarded-Encrypted: i=1; AJvYcCWn/FMb7a1Pk5pXgPgBX1EFeXfKNkC+37Pa6YYwOwghEiaBzP3pXSgOaMOZtICStqM5OxZAYM1QW6Ut@vger.kernel.org
X-Gm-Message-State: AOJu0Ywr9K6r45eyGq5rAnbiIZEVOvscuBLfxwNfiqCvkdVwPA3Kk82f
	ZfApoJl0GrRuHCXN26Iox9dYa1IAKIsQCLwUXD1KZYTGsYbfVFIqcIOV
X-Gm-Gg: ATEYQzzO5X/6vHp6Mt/xmSnFbs8TvhHZzVM5eFKFsaGM0RS2X4l1DHO+jgfo9P63EsJ
	mfQtedjAmFmqHR1gYVJFEMWRP6yfNHdldXRRK+jfzPHLOQmsgYtYXrpvtkzz7IJos/ICTfNGup/
	Kh9IUf7JmTFTFq8YNEZ58NTqHUKy9B8jxE8Go5Adu+sFV1aNXfZiLUE03p+uNbgQCPZl/lbou9B
	gjiF7URag3WKFpkAx57UZGOcLzRhTsyOCURuorn3hi88/H5NidwaYLzRLqK9DXnQxgR+kh4pfLK
	Z9IDdIAzOnta65pLFugq9oJh3nZpBlRY66Y74+eB3RfWme9+wMJLTBss/pJw1FyoOxsrpnnp5OF
	/dxumNQxElZhY25I2vv8TKZ4AcMZsG3duTfTKCOSwV0dI3D7UiDKRs4wcLNZWHRW46/xX3/LHTB
	OWmILFsCkGLExb/X03h3nusdOPeaZrav8n4Hsq+q3awYcka2VQPmkz+Nw2t6CmBsmqhw==
X-Received: by 2002:a05:600c:c162:b0:47d:8479:78d5 with SMTP id 5b1f17b1804b1-485566e1a88mr179857935e9.7.1773611986594;
        Sun, 15 Mar 2026 14:59:46 -0700 (PDT)
Received: from smtpclient.apple ([2001:912:1ac0:1e00:755c:a0b9:fe99:e216])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48557a732cesm78985785e9.12.2026.03.15.14.59.44
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Mar 2026 14:59:45 -0700 (PDT)
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.400.21\))
Subject: Re: [PATCH net-next v7 4/4] net: phy: realtek: add RTL8224 polarity
 support
From: Damien Dejean <dam.dejean@gmail.com>
In-Reply-To: <20260312181146.266c5205@kernel.org>
Date: Sun, 15 Mar 2026 22:59:34 +0100
Cc: andrew@lunn.ch,
 krzk+dt@kernel.org,
 robh@kernel.org,
 maxime.chevallier@bootlin.com,
 pabeni@redhat.com,
 netdev@vger.kernel.org,
 devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 edumazet@google.com,
 davem@davemloft.net,
 hkallweit1@gmail.com
Content-Transfer-Encoding: quoted-printable
Message-Id: <1FCDB737-349E-4178-8782-2F5C9DA166B3@gmail.com>
References: <20260310173846.230923-1-dam.dejean@gmail.com>
 <20260310173846.230923-5-dam.dejean@gmail.com>
 <20260312181146.266c5205@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
X-Mailer: Apple Mail (2.3864.400.21)
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lunn.ch,kernel.org,bootlin.com,redhat.com,vger.kernel.org,google.com,davemloft.net,gmail.com];
	TAGGED_FROM(0.00)[bounces-275853-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[damdejean@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	APPLE_MAILER_COMMON(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7FAEF292C41
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


> Le 13 mars 2026 =C3=A0 02:11, Jakub Kicinski <kuba@kernel.org> a =
=C3=A9crit :
>=20
> Can this helper be added in patch 2 so that we don't rewrite the code
> we just added? It makes the diff harder to follow.

Thanks for your feedback. Fixed in the v8 series.

> --=20
> pw-bot: cr


