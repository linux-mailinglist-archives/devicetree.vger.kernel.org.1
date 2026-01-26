Return-Path: <devicetree+bounces-259565-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QOkTE9iOd2m9hgEAu9opvQ
	(envelope-from <devicetree+bounces-259565-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 16:57:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E37418A642
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 16:57:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 96CF630067A5
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 15:57:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 636D5341079;
	Mon, 26 Jan 2026 15:57:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com [209.85.221.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 188F5340DA4
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 15:57:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769443029; cv=none; b=HJNAJ3qtgn85leDsKul3cg0L1jhZn8YN66i5VlD5iHhoI+e4hq9CTRlLv/yE3l3021rfXTcurfMXTvE/nPWNRkdfrNlTz5d2O/V2Tw0QIiW7hTD3b2nshrIRwvVP3gxdEfRwFfb7aBv6Ri/ZmAIMr79LCvvO1IKqyEw4Rxu2p2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769443029; c=relaxed/simple;
	bh=YLtBt7Yt1uOj6O5aaTFlwAQnG8l5W6SfahAW/Yz+oGA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ePgmgsPWD5qzOPwSfOPqKqYMob902Tedg5JypY7Q+czYQLDeo6Oj0TVl9R0wGO/noE1olRWxj2Ys5r8NSGU+V6W2Bmddqijfb5dIOapYHSlDfVJtIxgtsIn3CxK/234aBcOaLZMNaOEcVNj/CaiHF4WUALPu/VBS1yBBeMo/EQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f177.google.com with SMTP id 71dfb90a1353d-56367a388e5so1170463e0c.2
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 07:57:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769443027; x=1770047827;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gdijfS0+OQ3FioX0VO8ULn53/vOnmf0w3wcm1RiEZQk=;
        b=stofzdQY45aQiTWIkvLI7zgfsuijBvhRBIGSyobbhqjXUeLPIxnxZA47WMNBj+Ucex
         k2kGmE9QAD2ZtsNTK7T9MEAFtOPQ/iHoJUj2hSPJhV4KSR6RAidzSCNBcfLWAiDbtDEn
         NjTb/qhlZ5+9JSGpGm/J2hr5aOexTi8S5JvvLn5ejGp9ZNNMkByyPpOVyGaO/lOk24OL
         UmzsY9H51zFD1nXQSkdl9L9bTFsXHBnRPF5f6stonuJEmFJphF+LDlgseI5G/dH4qeIR
         kcTREtsYf1JwfXV8atLp/fvw+vjUId279a+fzO4Dw6zT0qkzkEWGWgeuZfI9QMs+/N72
         G2mA==
X-Forwarded-Encrypted: i=1; AJvYcCXdcVukrKduH6lF9E1mqdvUbcv1IcDny01LTPRwTcNh4V/V2NbUgoA8pHdrg/VasstLlSCiWSRh+p+l@vger.kernel.org
X-Gm-Message-State: AOJu0YztWUZlDOkxBcgSGcaGfXjTCQkHemyMJ/FCNtxUC2xegsGqGOui
	yri0PnVVPfSAeppDm+K8YF+btfZXU1oaqtzkjV4enZS3794mw3lVeVuCfgNSHyYj
X-Gm-Gg: AZuq6aJaSlkJLMtCWb9eFeieye2/ftHi9T8TReR9mbVIlNuDEyZqCWTwxfcic6xyoUs
	VDFf2/icslCWBgu13i+Vb8qmi2d7oPm/2SVqEQUxOWQuI63F9zTy5tk70ok9wxj6baTr+zCZOg5
	sxNeEPtta05cNl8N4IvVRGPlN5XH4fkY8GKHQ0UDc+jaLyGQKVoeRCONJ+zHYPZIZOIM+VaXxHj
	UXWTWdAJEH0sXzedYL03MvGdPO7yjMQubGqNSlyJMMrriC9NbDkW+T6ECHcjmwIqdHj7yen6yZW
	kO7rfoiBnw9stNcgeF8ov27PSey+aAqtSX8ajX7LDyDOaSw3uaQCY5Y+22rAuTihRU3W7OdTlZ2
	/4Ku6DzuSBBjtC9TrJS9U1d4H/ccAcEYwo4NjV7K1tKAmYxN/8O2/BRv0e7EDWOtrer0DXyLGiW
	101O21MBMmbNq3uoPOgYEvjjTEwwtH94tDIW3gNmyw/9OkcEjMkcX9
X-Received: by 2002:a05:6122:511:b0:566:20ed:44cf with SMTP id 71dfb90a1353d-5665c938cecmr1587457e0c.3.1769443026978;
        Mon, 26 Jan 2026 07:57:06 -0800 (PST)
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com. [209.85.221.177])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5663fb591f9sm1799034e0c.10.2026.01.26.07.57.05
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jan 2026 07:57:05 -0800 (PST)
Received: by mail-vk1-f177.google.com with SMTP id 71dfb90a1353d-560227999d2so1549503e0c.1
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 07:57:05 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWWN09jqWC5qFkCa1jCx5tLfLVdQ/n1qusoeJfB3Jzjjmmuu3LDtYBRkvlXhYPn5mUZUCrWH3MUPwOP@vger.kernel.org
X-Received: by 2002:a05:6122:3a13:b0:563:6767:217f with SMTP id
 71dfb90a1353d-5665c93bc8fmr1333184e0c.1.1769443025008; Mon, 26 Jan 2026
 07:57:05 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260125192706.27099-1-ovidiu.panait.rb@renesas.com> <20260125192706.27099-5-ovidiu.panait.rb@renesas.com>
In-Reply-To: <20260125192706.27099-5-ovidiu.panait.rb@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 26 Jan 2026 16:56:52 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWkXFvOOcZ07seJ6M5f=6ENEkCnoj29ueimdOJg3MRaUQ@mail.gmail.com>
X-Gm-Features: AZwV_Qih8gRGOzcPfHBZgLb81bZR1XZJrEB5kRB8S9RRMk4gAayWM-Q1oPZZvjI
Message-ID: <CAMuHMdWkXFvOOcZ07seJ6M5f=6ENEkCnoj29ueimdOJg3MRaUQ@mail.gmail.com>
Subject: Re: [PATCH 4/5] arm64: dts: renesas: r9a09g056: Add RTC node
To: Ovidiu Panait <ovidiu.panait.rb@renesas.com>
Cc: claudiu.beznea.uj@bp.renesas.com, alexandre.belloni@bootlin.com, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	magnus.damm@gmail.com, mturquette@baylibre.com, sboyd@kernel.org, 
	prabhakar.mahadev-lad.rj@bp.renesas.com, linux-rtc@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,bootlin.com,kernel.org,gmail.com,baylibre.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-259565-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,linux-m68k.org:email,glider.be:email,mail.gmail.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E37418A642
X-Rspamd-Action: no action

On Sun, 25 Jan 2026 at 20:27, Ovidiu Panait
<ovidiu.panait.rb@renesas.com> wrote:
> Add RTC node to Renesas RZ/V2N ("R9A09G056") SoC DTSI.
>
> Signed-off-by: Ovidiu Panait <ovidiu.panait.rb@renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.21.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

