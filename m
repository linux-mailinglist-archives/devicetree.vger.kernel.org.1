Return-Path: <devicetree+bounces-306819-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WM3zL+ZyIWpuGgEAu9opvQ
	(envelope-from <devicetree+bounces-306819-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 14:43:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E74E63FFDB
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 14:43:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306819-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-306819-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2416E30099AB
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 12:37:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE0A04657C0;
	Thu,  4 Jun 2026 12:37:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com [209.85.222.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58FC3472776
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 12:37:25 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780576647; cv=none; b=fpQ6qx3OHBbZ9nsbgAW+4lJMIVbg+aBuADeJ3hvL4AxR454b83XvLEuT9rkJ1sJ/5S0+0kP7lxylT3QAzA2MyfM0X5PXf8yP4O1FnXadvW0ZifcTVEucHbYmA4s5qKiIYS4ukTEksRnp54P3qjWHp59PSyGVLLO9ITSy5jSfBgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780576647; c=relaxed/simple;
	bh=Vu59IXWoqahv904gjXxamc81lnnIdAi+ZPq7oroe/dE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=a7FJyfF1RQ9yxQXApLWozA09PhG77ya40m79hz8Ti3IRgDPGMpDA9AbG5dQ4NPefZ51zpKo8xUqd35pkDcU+Bi4IPgifpRdaRGz3qHreX8WU+swbj3cAHVFKbRacJsG3FjCwSpaPLHJ4ab0mZyeWLTefL71qjFUV3g4dLVAKeU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.44
Received: by mail-ua1-f44.google.com with SMTP id a1e0cc1a2514c-961556c15ceso197884241.3
        for <devicetree@vger.kernel.org>; Thu, 04 Jun 2026 05:37:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780576644; x=1781181444;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rQTWlarxfkJvz4aV2P+qXhfE+LdhATPUYr6EStsDJy0=;
        b=Gel3E7JadYumi1m5h7dinUKTGxa/QoJGineGejWADUT1aiBSkD1PSI2w9R4VTqYhn7
         +DYdsMBuoLDwwWT3ZAODlu/HfywYu3lPqF+aqTkWi0zfxc2y8h4OEjPflyM8EQ0pIZzU
         yRKAbzYVu4CaXZITRZR6AQHn8SmKOo7X8VXCq3XuUKZiy73LzqmmMjyVO/pQTQ4pbgrA
         JjWExWer5BepqQgzuAGHlU9DqYY8hRJXfOMooeCm8Xpa+8Wf8sxNnrsrLeAFtky91pDD
         ZpOH0/nxr/fvh1yQ59MOjdfgjI5zYJ8OYUXTaoew8D5dKFfKPl4/w0jLhm6wc5g8c0hY
         bHnA==
X-Forwarded-Encrypted: i=1; AFNElJ+j+AFx2HERTED+luIwdTnanqgZsfjV6vnoVo22O5M1Io308A+1bJcuuJFugez9H/sf/axZkLzJbAXH@vger.kernel.org
X-Gm-Message-State: AOJu0YwwmMYAWmCOEGO0UwD30XYrNi9MegcbMwMSsjRZ4nLvcdF2sOYR
	jFmq+bW5QQjblJmvH0J010IsJLygz8TRRhbduUYu1n221f9T8urgkBdF6GA0dewTXBk=
X-Gm-Gg: Acq92OGxbTNH16cIaDZg+r6w1XnVPbvR2+vWVqlAj7eSv7VzU4O9VOlVXl+IpvtW/yT
	OeXKcRvZgcxHohQXSLhDy7cbn6rpA+7ZEq2fbG3bxb38wiZwuxPQAWUwWOzMptvPBh2ql3goizI
	HXnHUPAkmg6EuaiTd8frrABkwmzIYrSxMSiS3k9ma+iFQ5RHttS5XGzm0A1necedAI88UL+Amq/
	Woh3dZwOxtSMFLdICmnRskS6SgWLo8ADSwFsiTcxUnipNplnA7ziPX7AWmSlyRatTedCoPSWy85
	knr1bSj5XWXy+vlUu8DC2mTLbScZX6Xh4Wh0AHHO5Z9bLqJOdKgiAYHTqkNx0kkWGiD8YXGCwLy
	idFCQHb5iXCEHIQQEJhZRwRyq79c1eZdIrczvWZsFg7O0QBoTGu1ljOvP90Z5mgql5+s0V8Id2H
	xgNC/gjRVJPU3ePmYmIK264pwxKKjCnRawreu4REEJCBH6xXrDXaAGuDR2EMIBWczKS4xZPgX7Y
	Tj/gxbfng==
X-Received: by 2002:a05:6102:511e:b0:631:af51:7d8e with SMTP id ada2fe7eead31-6ec42bbec84mr3782249137.17.1780576644184;
        Thu, 04 Jun 2026 05:37:24 -0700 (PDT)
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com. [209.85.222.48])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-9641414e1d7sm4309504241.12.2026.06.04.05.37.23
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jun 2026 05:37:23 -0700 (PDT)
Received: by mail-ua1-f48.google.com with SMTP id a1e0cc1a2514c-9638d15f871so212660241.2
        for <devicetree@vger.kernel.org>; Thu, 04 Jun 2026 05:37:23 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ/yCUpGkU8LsdmiMO6PfEgDl81twhHynQBS68suuQX7zPIB0bNqhJ5yjU117InliyJ5bcH2C74fjNYi@vger.kernel.org
X-Received: by 2002:a67:e701:0:b0:633:e67f:b7f with SMTP id
 ada2fe7eead31-6ec46679e58mr3392792137.25.1780576643147; Thu, 04 Jun 2026
 05:37:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260525110603.4018170-1-john.madieu.xa@bp.renesas.com> <20260525110603.4018170-7-john.madieu.xa@bp.renesas.com>
In-Reply-To: <20260525110603.4018170-7-john.madieu.xa@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 4 Jun 2026 14:37:10 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWEV0iydvRQvR8j934OpbAkMP0eo5KO=0=4coBDPojKHg@mail.gmail.com>
X-Gm-Features: AVVi8CdW_DNBZw_4xjeS4zyp_RzBGilzh1a7HpuO0jzATgzOq6tO3Hu4fHvpTjg
Message-ID: <CAMuHMdWEV0iydvRQvR8j934OpbAkMP0eo5KO=0=4coBDPojKHg@mail.gmail.com>
Subject: Re: [PATCH v4 6/8] arm64: dts: renesas: rzg3e-smarc-som: Add I2C1 support
To: John Madieu <john.madieu.xa@bp.renesas.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, magnus.damm@gmail.com, 
	bmasney@redhat.com, prabhakar.mahadev-lad.rj@bp.renesas.com, 
	linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	biju.das.jz@bp.renesas.com, john.madieu@gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-306819-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[linux-m68k.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:john.madieu.xa@bp.renesas.com,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:magnus.damm@gmail.com,m:bmasney@redhat.com,m:prabhakar.mahadev-lad.rj@bp.renesas.com,m:linux-renesas-soc@vger.kernel.org,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:biju.das.jz@bp.renesas.com,m:john.madieu@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:magnusdamm@gmail.com,m:johnmadieu@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_CC(0.00)[baylibre.com,kernel.org,gmail.com,redhat.com,bp.renesas.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,glider.be:email,mail.gmail.com:mid,linux-m68k.org:from_mime,linux-m68k.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2E74E63FFDB

On Mon, 25 May 2026 at 13:07, John Madieu <john.madieu.xa@bp.renesas.com> wrote:
> Add and enable I2C1 controller support with pin configuration.
> The I2C1 bus is routed to the carrier board and used for peripherals
> such as the audio codec.
>
> Signed-off-by: John Madieu <john.madieu.xa@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v7.3.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

