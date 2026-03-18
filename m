Return-Path: <devicetree+bounces-277351-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IH8iNADXumkXcgIAu9opvQ
	(envelope-from <devicetree+bounces-277351-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 17:46:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9642BF8F7
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 17:46:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C97703433B29
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 16:30:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAF543F54C1;
	Wed, 18 Mar 2026 16:03:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com [209.85.217.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D25D83E4C63
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 16:03:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773849800; cv=none; b=DOtv/SoyalSpNWVXQPNlGIjcnLE6tGhmd/8deJiz1B9twd4oZlOrVKfxCb9crr9vq77vGU6NaGEgSHMsDLn6JoxGkwsMdN3azxYUFNZ6yAvRzhWQ0sNkg4mTz8HcydzO1DRqn8acqWtHe9pIM+W8pFbFVeXJ0cweDUmc0DiaJOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773849800; c=relaxed/simple;
	bh=XVuxTIuxemn5HdUQiQr8DhvvEOWckmMMrPQjvcKJhm0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jETBPG2LcQczfp+SvqAPsm3bobBLkmwHUX4gio9Q9pgFasTjn4uzdsqjlSzZ+HFdsjiHmsqM+Ixo1kOBkEIm78qDXjZ8rO6CPCr5AurXeTalhR2fRXATN1aLC/EwIxMoYkko0bcBOlLmYyphEUzQkhFRJOv+W3vShE7VOKscu1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f50.google.com with SMTP id ada2fe7eead31-6027ef7e068so14903137.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 09:03:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773849794; x=1774454594;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Uo5OHzsqXu4hR47Gp7Kdyr+G1caq7dBmUC13A5J+n80=;
        b=nxS5LWvE8duHCFFgWPBEy3whG1afFqikHD5gQ7o+T34Ur+2lATDOHhNDPWMCXDWive
         KAKVdHWBiI+ZDhSWBvhJSOwXYLrg7wfeeweMRChm4NqaWvFSEVs4inCsmEp19DEx5rUD
         iOY013dM4OzfT4qs3MTW1C58rYtpl3zBpzLnpps65lBv/9+9dXoAtSV70Z8EqJipnYhe
         vwDTJIZNd9aaLy/k4xMkhKf+Smae7YgYehzGa9lpyvHMV9Iip9dse4AWh2QrmDwRFv/u
         4KC7Xi4df5IyPXxbRmKjShi2Xj7M3uviY9zXNNONIhYocrmVgs6ETVKv/BgS9JTHIE/g
         sKNQ==
X-Forwarded-Encrypted: i=1; AJvYcCVH6gCU1lSf0enAut+voGMQrea9/1yGFZyX3RwlyLftRYimicBb0izQ6QNs+EvpXko1hKYr8AfL+FV/@vger.kernel.org
X-Gm-Message-State: AOJu0YxPrwSxMkMW7o0g4056Awg0UbSBrQQyB1vKPfG1CbzqWax8vj0t
	Xi3nTTKzS6n1dKhBCaFffa+CtdTlBlhg+c4u9aKlLQIoiVKueGPC+elh3r2v6a43ovA=
X-Gm-Gg: ATEYQzxneDWYssptMnzIpwlg8toYZfKkZHxjziCnhUBZgI+xN09r/hNtcWxMgWOwphb
	9JB6luvlu1s4u3YLQpupzaBjsNmvNZKlPl5lCFCtx37F9uMCNgHMUve/h36ztd2tNVosGSDduy9
	QX1JABCdFNp5w9Gz4Zk6Wpiyde4zdhfcLP5PtmBV5B3M20UKaMbyngRIYMF190frKkTdboxG35B
	2iIyVTpbgUk3CPHC70HmYOJbD2DxtEsDdOMLq5/4EhJYAo5X+V01llqhU8heNKw4zd87LBZ+wRQ
	wTITwnm27oosPqbCm9APMgT6UXPwXEXIlmOziH/GTtd88peZOb86fwAO0R6wKyX1DwVdCsUBaxJ
	bDB6X/SW68qu8OTk0C6ReWr49I9Czg5uLQ6UBNnIFsijoeelKWBGyH1KDXgD2enOZQJNSMrG9KE
	5JHsnKEPaGdm4vqEo8cXtm/NHtBaSG2L3h+ewixV5pcOfLCxkvVXvYaLU2eGqYQM8I
X-Received: by 2002:a05:6102:5108:b0:5f7:24e9:ece2 with SMTP id ada2fe7eead31-6027d379368mr2053460137.28.1773849793873;
        Wed, 18 Mar 2026 09:03:13 -0700 (PDT)
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com. [209.85.221.180])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-6027ebfca15sm1600699137.6.2026.03.18.09.03.13
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 09:03:13 -0700 (PDT)
Received: by mail-vk1-f180.google.com with SMTP id 71dfb90a1353d-56a8e0ea02aso7465410e0c.0
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 09:03:13 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVeY/6immjbX9TnBHbtICNWocOUX3gI5810UHYOi3+rvyj3e/Pznf2gcrK6tawXUX+re8GJke2+cmMh@vger.kernel.org
X-Received: by 2002:a05:6122:2521:b0:563:83b2:ef2d with SMTP id
 71dfb90a1353d-56ba71e7eaamr2380106e0c.16.1773849792902; Wed, 18 Mar 2026
 09:03:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1771344527.git.tommaso.merciai.xr@bp.renesas.com> <ca59fdcc6c32b8f6659aa9218f1a42d2bcd258c3.1771344527.git.tommaso.merciai.xr@bp.renesas.com>
In-Reply-To: <ca59fdcc6c32b8f6659aa9218f1a42d2bcd258c3.1771344527.git.tommaso.merciai.xr@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 18 Mar 2026 17:03:01 +0100
X-Gmail-Original-Message-ID: <CAMuHMdX-DeV5hfQAqK=ChxLATm+S1MjOsObYsssi4JFQmwn5Lw@mail.gmail.com>
X-Gm-Features: AaiRm51eNz-z-fsHN9TtWH7481RQArMChCwXzqF0AFf2HRP5BqKDYm-f9uccbZQ
Message-ID: <CAMuHMdX-DeV5hfQAqK=ChxLATm+S1MjOsObYsssi4JFQmwn5Lw@mail.gmail.com>
Subject: Re: [PATCH 1/5] clk: renesas: r9a09g047: Add entries for the RSPIs
To: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Cc: tomm.merciai@gmail.com, linux-renesas-soc@vger.kernel.org, 
	biju.das.jz@bp.renesas.com, Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, linux-spi@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-277351-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,bp.renesas.com,renesas.com,kernel.org,baylibre.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	NEURAL_SPAM(0.00)[0.120];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,glider.be:email,linux-m68k.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 4D9642BF8F7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 17 Feb 2026 at 17:24, Tommaso Merciai
<tommaso.merciai.xr@bp.renesas.com> wrote:
> Add clock and reset entries for the Renesas RZ/G3E RSPI IPs.
>
> Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-clk for v7.1.

Gr{oetje,eeting}s,

                        Geert


--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

