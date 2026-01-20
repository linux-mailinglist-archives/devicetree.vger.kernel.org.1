Return-Path: <devicetree+bounces-257274-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mPUpL1VMcWkahAAAu9opvQ
	(envelope-from <devicetree+bounces-257274-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 22:59:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 095D05E697
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 22:59:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 4DB76743FC2
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 10:20:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAD913ECBC7;
	Tue, 20 Jan 2026 10:20:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E166129A9E9
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 10:20:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768904446; cv=none; b=VSvxaVbiCmwWhhvt5C4K5uc3W6QhaktuL30jn3QDha6kTINArd6X5+LKRS+AJ/BmHww1NEGYV3Nq78spAfpPe1NO/faZ72GTfmQI6/pVeEEdlpfYJzwJJKtIjws/wDc1ktSPNhx9NE+5F01MtfLJNw39T9pkTAKF//qx30jDSMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768904446; c=relaxed/simple;
	bh=aAg7Ezp3FuZ606SiZuKQuwvHZ2cnjOgD6370edqmDyI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Q2g6zPG6bOKFgDTex3IR7OLfVR0pCdhp1IXkOm/vBKhGReYQGWRSALSl8ZBaEVcCNkWjPDRhxKaQ4F0dVp7UI5K6fMCoggGVZcLPycePA6wIiHgNQmw+Zn4YsNa/Hkd3+6IOzrz1dqJ0sKKNfz8P2rp1yJAsAHD4FdW54dfV1iQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f176.google.com with SMTP id 71dfb90a1353d-55ab217bb5eso649359e0c.3
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 02:20:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768904444; x=1769509244;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Nyv07j23r/do4ZgfLqH89KjdmB98dkcyShTfl8D+6CI=;
        b=OE6MFywRfY12nBEHbUHu/ZIUbDTRVShcJRF30pQkdUnN9esBeuaGbn1kXOArem5Xmo
         VO8PIXq09EA+5KURL4NJogw6XGKsknEkklFBH5m276iHEDM+lxcyNR0g+x5vwrm5pYb4
         WDAHKXFKBIOI+2EKNvoy72f96/62/fi4VbU7M6yJk3gYLkFVDu81W6F04dSByFR4/6HD
         q9b47UDVeMhGr/Ap32z7+fL0WD6Zu8nQ3pTEq4RpuvtcFaH6eJkhK1uujsQs2fhynmeY
         k7QvUlkG49MxNDP2FageTaITao9uw06k1mr846oe3Ery9cKBxJaeT+yBK8lD3SEtc7c0
         bA8A==
X-Forwarded-Encrypted: i=1; AJvYcCWwx3iCJfPMyg0CmAuIPH9ERw4rIJo9p6TfiCfTGBhJpmyzbwaKd34ZOvWtHjsdeXVs6gg4DaEe8Ijw@vger.kernel.org
X-Gm-Message-State: AOJu0Yxza8woc0T6eXXuYbTuJXCZcIIr4kpqGdVgIfl2h4Atk5b/GHJP
	TfXfsHLn34CHtYQ5kv8yekwesfkXKz8P7oxBqOKWyA87+Vt8l6atdZ48bOXCVZXD
X-Gm-Gg: AZuq6aLmG6cgtq0TqZzKSfTZ+z74Nkzm6HdlZupHOiXl7S9nNQoKbZhe5Qo6g3RK+uU
	UeZ3+A8iY34S3MQ5HSUPW/sRSI1t8QkrZKshGG0xile2TFigCQd5bCcLLkycNKsZVJu1An5jROY
	xN88+LHA/p7x9au89D67s55PcMkQRpYKuSVc8vx2shTeiiMb4Ghu96MzP8Yi3QND/OsUdzqBS99
	Q0CpTTVhQDvGyTO93JRNYCFBwzRMlSu7U0UZ8LMWy0i017p14kJmM+Rsxz+ltexbocmBo5rhVPA
	zKlxxBUSqvuBnEAGMuuhB10i6AfTA05AcPmh8ZLS5ajbum2HYYPWEJfdN7WwNck3La2mI8BxY+v
	LO6dEHw/6LbN2cTaQBj9ei+3Qg374RUp+bleGshneM4T7ahDuIw+4kzf15hyT3luk19sjnVSSTK
	vYvmlwgbXvBVX22I7XrkQQaDkJJCU/wx7EsyJHgADsNwUaUix+
X-Received: by 2002:a05:6122:a0d:b0:55b:305b:4e38 with SMTP id 71dfb90a1353d-563b5cd6446mr4392964e0c.19.1768904443658;
        Tue, 20 Jan 2026 02:20:43 -0800 (PST)
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com. [209.85.217.54])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-563b6fdb23asm3363805e0c.4.2026.01.20.02.20.43
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jan 2026 02:20:43 -0800 (PST)
Received: by mail-vs1-f54.google.com with SMTP id ada2fe7eead31-5eef115c781so2153630137.2
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 02:20:43 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUM9n2WmszMEhWJDnBFDaZqZ8Es+30MNt7cKEouYg/70wbapGHEOYy/IAjIFtJgkWpV5xQfrI1jJw2o@vger.kernel.org
X-Received: by 2002:a05:6102:374c:b0:5e5:5ed7:60b6 with SMTP id
 ada2fe7eead31-5f1a55b92famr3532144137.39.1768904443274; Tue, 20 Jan 2026
 02:20:43 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260117001215.59272-1-marek.vasut+renesas@mailbox.org> <20260117001215.59272-2-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20260117001215.59272-2-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 20 Jan 2026 11:20:32 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVWrnn0vkgKra8mPzTLk5sWzE=CeQv-FXJ7-Jb+-mqU0A@mail.gmail.com>
X-Gm-Features: AZwV_QjATqdrAwQiQ-9Ivrk8GAW5lhpXxjdgsjHmeMx-cj4-rn9YTbwg6Jsj-98
Message-ID: <CAMuHMdVWrnn0vkgKra8mPzTLk5sWzE=CeQv-FXJ7-Jb+-mqU0A@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] Input: ili210x - convert to dev_err_probe()
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-input@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Frank Li <Frank.Li@nxp.com>, 
	Job Noorman <job@noorman.info>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [1.24 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DATE_IN_PAST(1.00)[35];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,gmail.com,nxp.com,noorman.info];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	TAGGED_FROM(0.00)[bounces-257274-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	RCVD_COUNT_FIVE(0.00)[6];
	RCPT_COUNT_SEVEN(0.00)[11];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,mailbox.org:email,linux-m68k.org:email,glider.be:email]
X-Rspamd-Queue-Id: 095D05E697
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sat, 17 Jan 2026 at 01:12, Marek Vasut
<marek.vasut+renesas@mailbox.org> wrote:
> Simplify error return handling, use dev_err_probe() where possible.
> No functional change.
>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

