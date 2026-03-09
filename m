Return-Path: <devicetree+bounces-272767-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2AMeLg+NrmnlFwIAu9opvQ
	(envelope-from <devicetree+bounces-272767-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 10:04:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 66983235D99
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 10:04:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C92BE303A5E9
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 09:03:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2F8E374E46;
	Mon,  9 Mar 2026 09:03:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com [209.85.221.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7984C374194
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 09:03:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773046982; cv=none; b=QGc2iUHrnPup12z5Ebqt5dSVND8AMrRn8hAyV2U0DwkeStoxOodz86QKxN2SOCfmMggHRLFGuAvijxl1XV4oqI1gRApWGLHsv1IQpJ1rkmR88BRh0wY1oeMeXuWJ16SG4yqU2KU9QMq/aGmZHt7d4c+JcRKm7g03WvMz4VL2VAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773046982; c=relaxed/simple;
	bh=+SvpTPCt3UmTajloqWXffF83Z0jPUDgrYCgmiUYedxk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sdFivxOu6KGOKb96NoLBYioycVgxFrEaJ5VKxLJpOGNZnU0GTcuTXF9HG4P37Lrk6kzr8pS7nVozw3puKh0N9Uy5u1Jf3r+Pqal8W3MkoenJiga7tCWvWLHa2AMxMGWhLHPTVqNTzVp0QGyor3MhOvaoJGoON0rTBFRSGzAOVGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f171.google.com with SMTP id 71dfb90a1353d-56afff51694so1655180e0c.1
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 02:03:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773046980; x=1773651780;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=woFrl7jRlBwz5NvQNkYQJFvnP2BKvE4DuuKsF2voteU=;
        b=FVwtm4O6xKB4x/QN3Ch//uuoKg1PpaCY3ui5CDcEmBuornllFvtxl2SHsdriCnphAB
         F2+OEZ8xXHrEB3rvBQ4wbMnZ3j7Spcj1QO3jA4oGmjoise2Vc4lSeepJw8nK15V4/7Qf
         JiqaG2PBlKy5+135ZpV1o0dT9cpqll3jKDmb8q3azoJr57O08Q1j6A4y/TNtI2a/rSw0
         HOd0BnRa0rbSPAcW50rcNjAOaxcCHCJeKTa2WeETYjEhFPYHoGPi9mpkTRAypKhQcD69
         6aX++QLLbhl5/7cLmQKltlggBlrpkkKw4gaaIjhjbBaR2hmNMEyI0cE1IqDh/bWZVOXT
         iV7A==
X-Forwarded-Encrypted: i=1; AJvYcCV2E7ZhNBaSV+zgulnZwEmcyeFSiVFAayJma/GxKs5ZwcDW6IQHVs+JHicDhNXzQNXgrqbxIg7N+rwy@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8rYF2v/tNJarADVkhA5wBeEhobl6FxtFUF8EU4kLCr2mXZ8ct
	fPOYCzDdQ3bZWamTLQmjxu8YBMCruIP6IgpL/yk2eE9Jpc1fDS/7YxMJ90Kb36lr
X-Gm-Gg: ATEYQzwiPdEY/Xu9n8XqzbkR6sBowoEmuLxRbsVUYRIavWs2wvgA2nSXwqYM/4VauZu
	JJLfBtdxJ/r1KbUFqGTkxqXXu16ihc5E0mY+R65Z3rZe8a1ynMZEGLTXGK2fv8yqxY+WwaRNiFO
	nyvtk25/fhqiboXSZ44MeGRhxzJmBj6vCIvWeQ+UfNvqrKsctG1pG2F5zmXr/SvtlcUCxJJmle9
	GiGP1C6gYP8dswdRn/Fvc2Bv8whAJV1CevIVYVCS6HcNH9hHeDwf/ea293UDfSRyNCVNG2jVxda
	IyvKiGLteF5FTE0eBE1mBNHkQJb7le6ThM8JD2HPqA5DzntNzk6dqsCSvFNtG5/IV+ioRKGBWgt
	V4TDLDldVUnV26COj/uhPbrCsOnD6PyYOATHTqbLaJVgUdeHI4rIlWct04Mugs9dgGqNJwfxsKM
	v7Phkr562bvSR0u1AIExPFpjQL0WPwJ+nHTM2aP9xuxsURTsvvm6Eektb2DaIr
X-Received: by 2002:a05:6102:2ac4:b0:5db:f031:84ce with SMTP id ada2fe7eead31-5ffe61bf2f3mr3427828137.29.1773046980508;
        Mon, 09 Mar 2026 02:03:00 -0700 (PDT)
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com. [209.85.222.46])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ffe8c6f10dsm8860606137.12.2026.03.09.02.02.58
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2026 02:02:59 -0700 (PDT)
Received: by mail-ua1-f46.google.com with SMTP id a1e0cc1a2514c-94dea0e029fso3303507241.2
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 02:02:58 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXbdd2uV/Vm+BUSHnTDxIQcOhTZKeTy9Zaxo42Px4boHn+HyLayGmu/y34lhIBI5Hdlc9c1+nKiZRAx@vger.kernel.org
X-Received: by 2002:a05:6102:3a0b:b0:5f5:40ab:2d65 with SMTP id
 ada2fe7eead31-5ffe614cb63mr3587596137.22.1773046978396; Mon, 09 Mar 2026
 02:02:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260306145819.897047-1-biju.das.jz@bp.renesas.com>
In-Reply-To: <20260306145819.897047-1-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 9 Mar 2026 10:02:47 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXJuWVR_SvjTZXA0mtM==p_kcR3LWjuYf_c83U9Z35J-A@mail.gmail.com>
X-Gm-Features: AaiRm52y7ZyQNCmU3B4H1jId4AxkZXSLWMRot7Mw1tDnya6wSfnl74jLyKkpMyg
Message-ID: <CAMuHMdXJuWVR_SvjTZXA0mtM==p_kcR3LWjuYf_c83U9Z35J-A@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: dma: rz-dmac: Add conditional schema for RZ/G3L
To: Biju <biju.das.au@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Biju Das <biju.das.jz@bp.renesas.com>, Frank Li <Frank.Li@kernel.org>, 
	dmaengine@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: 66983235D99
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272767-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,glider.be,gmail.com,bp.renesas.com,vger.kernel.org];
	DMARC_NA(0.00)[linux-m68k.org];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.158];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,mail.gmail.com:mid,glider.be:email]
X-Rspamd-Action: no action

On Fri, 6 Mar 2026 at 15:58, Biju <biju.das.au@gmail.com> wrote:
> From: Biju Das <biju.das.jz@bp.renesas.com>
>
> The RZ/G3L DMA controller is compatible with RZ/G2L, sharing the same
> IP. However, the conditional schema logic that enforces RZ/G2L-specific
> binding constraints was not extended to cover the RZ/G3L compatible
> string, leaving its bindings without proper validation.
>
> Add the RZ/G3L compatible string to the existing RZ/G2L conditional
> schema so that the same property constraints are applied to both SoCs.
>
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>

Fixes: e45cf0c7d9b960f1 ("dt-bindings: dma: rz-dmac: Document RZ/G3L SoC")
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

