Return-Path: <devicetree+bounces-268486-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OGZwMtAsn2lXZQQAu9opvQ
	(envelope-from <devicetree+bounces-268486-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 18:09:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 63FB319B471
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 18:09:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 573753013DC1
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 17:09:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE71F265298;
	Wed, 25 Feb 2026 17:09:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NQjRw81x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B46B43AE6F2
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 17:09:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772039354; cv=none; b=oUrQX/usgaXusX2IUqvf0QPCS7CnKqMaaD81op2kOa9yt9Gv5wtAX/3r4VR/J4Iq7BpHDvkkhEx+l9WXjydkuOrHLtFL9b59cVbgFawANZ+dT6bI0NtwyC+1olmbbSlLFOpfugwWdlshvbRSrsz5Q6HqX6E0L4yFd47yf0iCAkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772039354; c=relaxed/simple;
	bh=opzPiYITPDzkhL0K2KwNxWZZH4n+i8pY3gCo6iOBE3o=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=tjaAtRKL9cCVJFK/dN04NY+i6JI1JDMSFcQlaDny2PPBeL5t4BFf3v11N3T1JVjX9spB5Tqr/3CW5tgJZQqOmfQwSEvmaIbnbYA1G7oyYTjgPQH4LZz2sqCufqA8uOx63jlf/R25a5o0kERjXTWJuTsIsvRA6tS6/tFCZugVT2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NQjRw81x; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4837584120eso4315e9.1
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 09:09:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772039352; x=1772644152; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=opzPiYITPDzkhL0K2KwNxWZZH4n+i8pY3gCo6iOBE3o=;
        b=NQjRw81xk/iIQJPgElkMP4FObz/HOtgtzo7kn1txLoPT5Zk6zPpeB+tg15jgYBLrwx
         ykwHHLfR0q8h/u7DzkFXprDmpumXbnyrsQ8VsiwIPZro4JuAuRjAXsyDS5GhsyYg01jG
         WeyYHgI3TLivX5ZNj0kFYec2C3H/lOVWrHGsy8IBPWT+OAgDVY/fw0i+11kjX0djc13B
         3L1YrQK79uuSe48ZPcLeikgtp64C87OH+wu4Y1FtV9tf4S0BwmMX59zoJs8x4Jg4LdDN
         TV7hVyxMkhKhLU3tlUyzKwtjP6Y7SpzI71UkDnetpWdv050VKHW85OeWRjZec7aeyAZC
         +B8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772039352; x=1772644152;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=opzPiYITPDzkhL0K2KwNxWZZH4n+i8pY3gCo6iOBE3o=;
        b=Xa9MiJyWAxsJ4o9gkRLSbg2pXpE9e4TtPt7mirgFb378NY+UIyLUD/9c9z/tIwHmpx
         SvTlgLAFlWhqoRIGzrCbtpl04hdBNZdXfI4APf4uad2R493P6ZFqTw1nwAFfcohLLnq0
         av7J8XdK15qeFUJW/ROSHaVyP8ga08wZ3e3a5oRNr+WQZEqJbkbT8aRd4HDco0T0D4Cx
         ZXCB4AHEI8YKWYUVLkINljrBpYwgpmvU6psGwnHcAyi/73G9+23A+vrYhsZ/pE4vFDwU
         M2bESaaMdlwQOQ7hfEqwKFjItANZsAr4HBLf8h7qKkD5qLQRYdPcQpdeCD4xWMqitslq
         C8aA==
X-Gm-Message-State: AOJu0YwUTqtVJFMlKdpFBS+uSkCV+QT9aRMFgsF7tw5aOb2iOyxVF2xP
	JokoZCsCbroqecfv0q+JcYBBZ2/0DhPk/ibII1HtiDMojTOZPTM4/TS5
X-Gm-Gg: ATEYQzwERYY9TR7BeRvEb8xONIsSQEwnQ4ptoCUne5GTj53zyDyywgo58O5MJl8wglD
	j3TEzDm6GqIqspa+vsb/FiyOe5H24YkPPN0anKrtxmqh4yWUhDm4lEt54+uM7mV7Vb5icav28Bx
	7meqFFGacNbwf9XHz49bvUZRTkPHvBoODWXcfJ5NIw3GHxO/0WCqNc/P9LIeKbn1nkT6iOW4PQP
	FR1m7KsR7lKCP3TmyFwP6+KtpjFpSlvfyVx/FhaS/P3rIqhIrC2kQmX5IsciVX5pJWTm0DTRvER
	XdJPNxTb0bCRt2SF3+aw+mgPB+xncLHWM0JS2jUl+78Rycwn7SfVKGbKCouTydbHG0zmwe+9AlK
	63DR7dCebpOFQ3MYwGdozRliAxRkADMdeCTz1Er2CEYy7iFHjXGt79XmaqBOlH91/HEOo3f6IxC
	9fEtpJpBrUtK+cf5v7mVBzwxGWvCs/h6pztlq/tnyClk+CJCAWUGFgd4PzJr4m5MkmXs0KrKfug
	DusrEot4JufbtNR0w==
X-Received: by 2002:a05:600c:3acf:b0:483:6d4a:7e6d with SMTP id 5b1f17b1804b1-483c21a747bmr20503405e9.30.1772039351955;
        Wed, 25 Feb 2026 09:09:11 -0800 (PST)
Received: from jernej-laptop.localnet (86-58-126-118.dynamic.telemach.net. [86.58.126.118])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bd6f26d7sm91050645e9.3.2026.02.25.09.09.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 09:09:11 -0800 (PST)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Chen-Yu Tsai <wens@kernel.org>, Jernej Skrabec <jernej@kernel.org>,
 Samuel Holland <samuel@sholland.org>, Chen-Yu Tsai <wens@kernel.org>
Cc: devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: allwinner: pine-h64: Enable USB 3.0 host
Date: Wed, 25 Feb 2026 18:09:10 +0100
Message-ID: <5050123.GXAFRqVoOG@jernej-laptop>
In-Reply-To: <20260225170045.1707778-1-wens@kernel.org>
References: <20260225170045.1707778-1-wens@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268486-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jernejskrabec@gmail.com,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 63FB319B471
X-Rspamd-Action: no action

Dne sreda, 25. februar 2026 ob 18:00:44 Srednjeevropski standardni =C4=8Das=
 je Chen-Yu Tsai napisal(a):
> On both Pine H64 models, there is one USB 3.0 host port directly
> connected to the SoC. The VBUS is shared with the other USB 2.0 ports.
> Unfortunately the DWC controller binding does not have a VBUS supply.

IIRC this is exactly the reason why it was never added. Adding it without
vbus property is not a good strategy.

Best regards,
Jernej



