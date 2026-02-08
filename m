Return-Path: <devicetree+bounces-263753-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id PCtNCTkMiWng1gQAu9opvQ
	(envelope-from <devicetree+bounces-263753-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 23:20:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D4D10A6CC
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 23:20:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E1AB530027FA
	for <lists+devicetree@lfdr.de>; Sun,  8 Feb 2026 22:20:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 292F0343216;
	Sun,  8 Feb 2026 22:20:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nWZC7T4Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C094422A1D4
	for <devicetree@vger.kernel.org>; Sun,  8 Feb 2026 22:20:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.173
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770589238; cv=pass; b=sfclgRsa/M78FwwKG7a3L0Is+j3Fgg11B3C3cmGDIdspRgmH/cK3HIIzTaU/iSIIqbzhzd/jiqu1FM4vnY8WUKNYB7SkEgY099zRSyOfrJWhYY8FeXT0HnYyED9rSS8EKRFkVGLlqgU/Ss24Uk0Ytx040YA9eiD7hatsebC+Gx4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770589238; c=relaxed/simple;
	bh=0uOZ3iwE/BH17JAQBdLoZGWfaV+4xttczJXUuAySVK0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nTsEB1lifOigacx7mIZY+m7Y78DoUNLR81JzMxYD64y/4JcgdGXzNHYjxEnj7BNnwQHx+8qTnsuL71v+6YXJS+LwDmsWSVGp0czWXxCnvPL71bZ4dNnvPwFxViQfib28cPeXRbJl09A2RMZrK9kngGPYeqs+XWRhsHEKaYn0oPM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nWZC7T4Z; arc=pass smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-38316445a67so20106301fa.3
        for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 14:20:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770589236; cv=none;
        d=google.com; s=arc-20240605;
        b=g9IeG6IweSZ+tUmhyGTPUzDgjNAhoxG9ANDX7iQzo0v9hoF5IWfOyySropFrGz15xe
         0uzPjwPhX8I1jXecEn7USxluHk/mY4EQex1fTVbYlkNTVgmz9G+szdkBrs0OKeLoDEQ2
         YGYZyzAHK7dQghgc9ajupcEOMhztwZp56tv2OqFl3f4QXSpCq+UHUrNtsASOWdItS/EM
         mb0TwCkTWa3YraH/LPmIkwIL4iE6aHblsBpnfT2wMCmipTjQllIZnmt2XSgRO0aNurwu
         4/cX931Ov2VmhQprk4OrHCSnygvNmO2b0sRSuChZH8UUBOtRoKI+YYhos7IPiTSN86Fq
         nsOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=0uOZ3iwE/BH17JAQBdLoZGWfaV+4xttczJXUuAySVK0=;
        fh=EfF2BL8vnXlDIhtEEsTQu/OFuFNxC3yP2RB/y5PctMQ=;
        b=N69i0GGlbMjBfHHmavqecHb1G9rdzs4H32wNmQPjIW7sKJOUQBsjk3sNW1Ph/XWbMR
         VZ31twt+9mWtBtoS/Be7Q0HMh8Vs0lGa0pW822rCtNZ6JS3QW79iKBETp4E7iSiEzrRV
         be/VNBpnbI34BZRaEv3XmN2aDorhZZS2Lg4JpjDwWiliI87tw3yIWFgMEkCDUYDlf5b0
         Zp4AiOyzbOqcbzPCQoAtH2p7uytLMxqk+NwUa83rDfBmZpGoTPbmuph1JAnDP0DQlxOW
         P03/JLRm2Jao9ko1DfsgJQxUeExvnDxdcEMfCxSV4K87m7WU3wRrficKxYx9Z6uDn1Xr
         suaw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770589236; x=1771194036; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0uOZ3iwE/BH17JAQBdLoZGWfaV+4xttczJXUuAySVK0=;
        b=nWZC7T4ZipdpSt31/Hb40gMYhREOe8qvidnvqWWm1E6rht33EIYcR607ovRYPk4+uN
         UsVnNZyMWR2TycnhqSBQVyDE4HZT91xVjy+1rDiOccfzJw5o0CCN7lCBvBhlplejmfbq
         dS3ZYIjRCDAWGHQygRiWiREewLmelKNvurybgqeKrC15xTYXUZby9Nn5Y3wpVtR1kDiV
         SygHGwdzOTJ6KtIVA7Q3JNmJd7FFzWqDS8PCFFi3muh4nBzynINuNLnbMJLbyfOSNlCD
         ruQP2PAAfsY/xI9nU5ctwj+sxN/ZMzi5YkVUsC2t0rNTpl9vL7tAfmfwZORI+D/k+zsT
         0HvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770589236; x=1771194036;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0uOZ3iwE/BH17JAQBdLoZGWfaV+4xttczJXUuAySVK0=;
        b=vD+VGFYTS7NlJCgi+oolVEevpd6ktaVmFYiXXsHU6mCJn1KDAItOvPI/H3PGn6mwuj
         BZ5aLt0hCr77MzjnMTl3KJQSmyDozC/Swpjx02PUVZvfDqLf4VVvQc+SRexYq4Rl269B
         0B0W3oUHVoMe9QGqpMavWZdFFDNeBs3uGyDFnTXCGT8MhJCkymupA0g6t28fhu3+KRHa
         Fifd9l5pp++A9kC0AGjzZQxHrApTP6lJ2h8haokip+aoJi2bYGe94Q5Qq07nagxNfUQh
         7Zs+hRXN6qWhPjwzxgIywVa10YQBy7dxb0fsLUYKfiylgGD77gUuSPcb9yy9m7N1fvuK
         0xdg==
X-Forwarded-Encrypted: i=1; AJvYcCVyUZ3AkPQbNqlCR47Y1Fyr0kjdTOoNfR9XLpF9uIEq0AlCfwo8gyWQJZoGO39ZS+mF4KctHcUepD7K@vger.kernel.org
X-Gm-Message-State: AOJu0YzeGOnsSAknjU8bQuqVQ0wAkQ6LqyV31SVsA1rmMWhm6nwpVh8r
	bX0LbKdQn+hYtszFZYIGRi6spHSKNqzwsG3MzgsMjcI5y+8oL5rFyruwN3ZOQtIjZNCVMJbHlz9
	OUMp3I49d2ieCDr34Qs5p55cDdx5BLfo=
X-Gm-Gg: AZuq6aLKcuwQgr4UmT1we/8XXoxd0AQ3vd+b4P60ty93YY6XYRXyKPIzFgb9ayWP08F
	lIndpKAiAw1jhdqKRg2qaiwnyur+Wp4VSZfEkVLtQQo0i4vnCNm4SPiordYovRbdtK7DK4CQgV0
	4hZhTW7n6wuwvXCY/SzwEXvWwWLOBTYW5kauNBcvE2n42gekNf7W5reYu8+9ttHiN7g3SKn6SOh
	Ay0HNw3rP/1uoE05lR1hsZXvwqj2mWhj/WFZ4UEINA9gB2W94XpiWm+XTs0+7oebCAfsqC62i1K
	9Kj27G82LehYfjzLlehJL6AyEYA=
X-Received: by 2002:a05:651c:f06:b0:385:beca:f6dd with SMTP id
 38308e7fff4ca-386b517f034mr27231951fa.43.1770589235643; Sun, 08 Feb 2026
 14:20:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260207131803.2834749-1-festevam@gmail.com> <20260207131803.2834749-4-festevam@gmail.com>
 <d41492a9-bb59-4999-8497-e28d03d3a13f@kwiboo.se>
In-Reply-To: <d41492a9-bb59-4999-8497-e28d03d3a13f@kwiboo.se>
From: Fabio Estevam <festevam@gmail.com>
Date: Sun, 8 Feb 2026 19:20:24 -0300
X-Gm-Features: AZwV_Qic1qNN5-FtSKayD_BHH8s4MiBnriT3eLhue_QE2OzlTzJvDwiSSLFVTIg
Message-ID: <CAOMZO5CmKzrcaVdp6Su+F+uT+nAueroaJcBkKtO3O8N0MWZt6A@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] ARM: dts: rockchip: Add Onion RV1103B Omega4
To: Jonas Karlman <jonas@kwiboo.se>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, Fabio Estevam <festevam@nabladev.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263753-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-0.981];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid]
X-Rspamd-Queue-Id: 73D4D10A6CC
X-Rspamd-Action: no action

Hi Jonas,

On Sun, Feb 8, 2026 at 7:15=E2=80=AFPM Jonas Karlman <jonas@kwiboo.se> wrot=
e:

> Am I correct in that this is the Omega-4 Evaluation Board (EVB) [1] and
> that the Omega-4 is a System-on-Module?

No SoM is used on the Omega4 board.

Thanks for the review!

