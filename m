Return-Path: <devicetree+bounces-264745-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yEtdFhdijGmWlwAAu9opvQ
	(envelope-from <devicetree+bounces-264745-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 12:03:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC53123B64
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 12:03:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 999833016EC3
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 11:03:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE8A4313E29;
	Wed, 11 Feb 2026 11:03:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SuQN1Ln0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6396B311C30
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 11:03:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.181
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770807806; cv=pass; b=A8FQu9ZgMH8srqXzvr83DwIrjXlGhH23Qejkxvcl7F2HgqWf8XbEKfkOTO+Cemb1W/4Z+MDrRhO+0vAUJWUSPzq4iWccK44TmuY2sQN8Ddnq+hn49j4eSg032PrzUcw8nG1N9W5sVova9xhtnlAS+lNYrJamaHP8+ygQGnr2g6A=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770807806; c=relaxed/simple;
	bh=joAf094Ek7cks9iYuW58qsdNETj0QSxANlo+wmVWO6Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HkzlBagja0oDYDLyuFJhLZ/rOvTcD9+ko2uzC/J9djNuwIVH3S/tvR/iGoWConyJnktfaG2GQUiZItO7wp5ECdm88/xJhAR0gSm/oSmNIfhMaOHCVl1hnCdtZCCnLMTqsceyzaIXzXA4zvhYI0ESqVd48MNw+0FfFTSyPpt3isM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SuQN1Ln0; arc=pass smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-3870902760cso2541271fa.3
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 03:03:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770807803; cv=none;
        d=google.com; s=arc-20240605;
        b=AMzUsZBmmkDUaFM1j6sQy15YO2bkhd+UbaOyWq9fxy3qLHlc7qj5Z9JbWv+2nLpPdg
         JWdouUbpZO8txKutYs5JFNzG+BxUDdm1i+pK/N3MOnSwp0TizARNZdEzWNhLBR2jRfow
         Xoh4pIpH/E89Md8LilLPsASx7CXUSKJyymk86IpiEqimVZK8cEycfd53yy3tGOz7lst4
         HD+/8uE14x6VCzRYM1eqXD+Fi5TOT7x4eMecXwZhx0G7nt4r1NhtJThooWQ4xK3p4wvS
         bU0U236TsJlUFJxHDAVioofOpVRBazhElwutLPAoJ17L12yNam0iwurSk0YT7MOwXSvf
         giWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=joAf094Ek7cks9iYuW58qsdNETj0QSxANlo+wmVWO6Y=;
        fh=GueViwd9hdFdoc6UyNTOrw3Sa4zaEexFj5PZHELGRJA=;
        b=NmN2xQfWm5JfttpDyt3gXuGuyt5FTH280izQfBcoy80s+2poFwU9lb/aSRR07Z5xQ7
         5NiFhmiKoAZs8bDDDwN3ubwTgNPZLdTGxjFh4nx5CIWTVLnbm4M7am0etlm8p1/XE3jR
         ukJpZ0ZoD68ZsxZBjsGox5rXiMtQk7RVU7Hr0EdsSfCBsK37bP7MpcUH+NVxu2TBuddx
         7fO+nWFuSYmdOn8uEHwKw+s+GYR97pFJRyJ0L9UEP8MMLSgy3NE/kHe25LkvNSxJsM/q
         3X6ihvCLQ0BkOveuHYpHJmy5jI284aencJaOHQomaceQdceWEDMDA5g9jFzhMwAu1XIZ
         qlzw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770807803; x=1771412603; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=joAf094Ek7cks9iYuW58qsdNETj0QSxANlo+wmVWO6Y=;
        b=SuQN1Ln0/8WR1OFSRe22nTeDD3xvD6JdB3936T0hFLnvFfvxC5tRK441hp1xNVJkgt
         jp6uCLHkxikHPx4SthdPkUy8HIlv5fc63mKt0I7JjtBKiYFkhldSK+IvFwUIIHP8QS+e
         DvLjuQDit+AbWp/olqP5vPFLK7+mLCW+gzPSemBOI5mcFWvceZxJnDeIhk25JZKSDO8w
         1jANPeEocpn1cl7uRzpSNZf36Cg0XYYGnuGN1/sWdWygQqzmNrCiriZ86zE1mLYj3QU6
         qKPkV1kuiX3lVr1kpUWyqHCBrzANc2fOEkjpLORCRcyyX6m2UB+/3QLnpKysBo1MgxtH
         oAlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770807803; x=1771412603;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=joAf094Ek7cks9iYuW58qsdNETj0QSxANlo+wmVWO6Y=;
        b=VocyFRRx0ZiB4YVOpqlXk7K8gZSeAgxT6eoAhDSb4/UWslDQLxYNTFhDXfQNwXBoNr
         kP8JKF+ntBlxFlJsU//CvSvV+UdvprLcX6VXtkd5zMio1gGhPUcq2+ucrtRtWnStCngW
         5/xOsv7ef6SDsDu+f8Vc9QKHCu4w+LcZSfRERW0I5/KR/B1QwYZBoexEYTX8BL9IQ8VN
         bU7UR51MsBuv/z2dUAHy0Uas0pDbUMKjFKuGThb/5N9ucqEYCpujpfnrEffQyDrSsiuw
         P9gU0BG+cJbyGc+KN2hwXab3XSN6usiLrvFUJgk8NnGyF7NFISL6dUJb6RN9Rb7kjsYN
         9MDw==
X-Forwarded-Encrypted: i=1; AJvYcCXySgCh2wQazEFkIRosKEBes0tOu0CPJ1xQv3K3oOpRhBwOsfEMdjpHh0kGuvZphNT0YVAXs9cFkrj5@vger.kernel.org
X-Gm-Message-State: AOJu0YyaNRJ34s0kML12jmfQq7+Tt7rNqzOgU1Fg7RUWapimq9xgqYnW
	PHCAEGtx/jyECPO4G7qVnTb+uhuw9Lt6W2EakELM5lasNd+v0vf4syYT/mExCh95fvewdR8z2fp
	8XJGZynilT9iYQBUTf7oTGCIVYzDEcrI=
X-Gm-Gg: AZuq6aL+KcoVklvdHTWXsLn0RxwXTxlIvhxMnQ028DkM2l9m/s/s2lIP8wxFSWTvjwl
	sNTJyYWylCchH2VoBbHHcziSXTKqAke5tyKr1IcJILp3WfpQoHZku0AT1WP0IDlaOicb77M+1Fl
	RbPuYYzccBoM+LX/O6/XQRavwMDOwDWeybdNv3owZJzWt7a+z0GDqRPQBVmsPr8duWV8uPW5idX
	PECqfcI4EaLoZbME/2GAImj+h84agn01OEUfD6e2hB1NZQASq2hAoqJaNtUZTpg62IN2kjhuDhY
	K1Eoo0Q3z8j6OiXFHr3H3unCofDfZstsabD0PuA=
X-Received: by 2002:a05:651c:31cd:b0:385:da28:1e2a with SMTP id
 38308e7fff4ca-3870707374amr4155731fa.24.1770807803205; Wed, 11 Feb 2026
 03:03:23 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260210144845.317048-1-festevam@gmail.com> <20260210144845.317048-4-festevam@gmail.com>
 <a8c1bac7-9f67-4476-81ad-5271ff239b91@kwiboo.se>
In-Reply-To: <a8c1bac7-9f67-4476-81ad-5271ff239b91@kwiboo.se>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 11 Feb 2026 08:03:11 -0300
X-Gm-Features: AZwV_QgqxfUGnyoRhdf_YqJ-RqLp0HuIvNPBxSjq0yImj1idIOnISKGQVva2ko4
Message-ID: <CAOMZO5DJGQVOL4D4WWopduodedExMG-O65E1AzdXDQDWMP8A1Q@mail.gmail.com>
Subject: Re: [PATCH v3 4/4] ARM: dts: rockchip: Add Onion Omega4 Evaluation Board
To: Jonas Karlman <jonas@kwiboo.se>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Fabio Estevam <festevam@nabladev.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264745-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: ADC53123B64
X-Rspamd-Action: no action

Hi Jonas,

On Tue, Feb 10, 2026 at 1:53=E2=80=AFPM Jonas Karlman <jonas@kwiboo.se> wro=
te:

> nit: Is rv1103b needed in all three compatible strings? The last one is
> already pointing out that this is the rv1103b soc, also the other Onion
> Omega boards in-tree use onion,omega and onion,omega2+.

All the boards inside arch/arm/boot/dts/rockchip/Makefile start with
the SoC name, so I prefer to be consistent.

I have addressed all of the other feedback you gave me and sent a v4.

Thanks

