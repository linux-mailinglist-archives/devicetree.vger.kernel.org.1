Return-Path: <devicetree+bounces-308234-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BEvLG3ylJmrxaQIAu9opvQ
	(envelope-from <devicetree+bounces-308234-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 13:20:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A2C6559DD
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 13:20:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=DlSXlW8k;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308234-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308234-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3508D3046D46
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 11:11:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82021343894;
	Mon,  8 Jun 2026 11:11:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8B1340405
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 11:11:27 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780917088; cv=pass; b=ksE38jUTB8QngFSjhhEe6+IbQTlQUZ1EAQ/PTaIOZxZKl/yglrPUzAxPUDkolkouV9NSvQiNfHO7sZBS1fr0g84/zG/tdJadCwe4JYoh953dvlOi9TzA7xXrXaU5BGwmVlBrsu0gnJRdDaxfbGp1py6ghkg6vmreKkDhuwOeKyQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780917088; c=relaxed/simple;
	bh=OKAvcLw4cVnHLWqBGIC1hLC9PId30JwifAN6/6lExq4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=A30kx2bCoBbGTmALHD51vKIlF4Scubc7BDSYOLX2FaIdR1lsRkDbD/5oLbPAYB/rPCaysuKF4SiMkw5zgrS6+CC/EgChp+GaDGYpyIozMunneN3AHS2947zbR+U07jFBBlUzB85vuxbj43n2NI7rfZtQ6/rz5U1WOtZlbWWH6aw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DlSXlW8k; arc=pass smtp.client-ip=209.85.215.178
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-c85ba774551so1468199a12.0
        for <devicetree@vger.kernel.org>; Mon, 08 Jun 2026 04:11:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1780917086; cv=none;
        d=google.com; s=arc-20240605;
        b=YYILTGY8EgQPq49Am/jMQJHwga4vJVwK4466oh6ydmLlUypL6e7TCp8vhagGtqAxVF
         bYGODi4FXgQ2UflOsV27Wb1bdNVAywXKq/jGmhZ6WOFWQUhVVCGfMKd2v3QUcbMCXR/1
         8y2D7QA7I4DzS1pBKoBHFIbA/HdF3JEjdQFCyCrVHzCDODOBdx6Bm5ZeodhkYvmYeh9m
         GaIXHgKY9ko/OXR3qy5twbXhqSW2dqXy/u4oJV6xLded0kQApsRZe0YS6m9UgspfbHwF
         /uvwlXL3XSUwNQT7/YaBaGo/zJ5NCTIoZG4CIah7npCQR0qFyh+fFx/MgPpsl1FS6xu7
         Z8Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wcRJm9Mj5HN9MDIGpueIj3AGF7buVGW3wX3A5PTznAs=;
        fh=XBOPQ3X6Qb5smFHfwOBHVpR+PN6XHuOYgtFR56NFUho=;
        b=d4hmfDBCJd7ZQX8PS6HX/HQ3qPsAAwGshXfjoQP/IHAYEJuhhdSN9GVilGODCyoITt
         2jKaN3qpdiPEmPlgUV6v+E17ReA+YuqNLMIspuMqqE9E6f0P7H4PaGXKAshuyyNFwZSa
         kl3LS5TAeEde6OMoRYfOek2AlRP6BKnA0FRlSMgqbHzLlBYPHZWWVBr0MFXD+U16wkUw
         Quf98dvJO0mdYB20chGO57/QYAUxdt0FKljgRIqTrG+1G3vLPmOO/HryyTzKAysAfgf3
         n54JLpFeg/msmk6xTq2SImvZ7B+mmnwdQdSoXEdEv8r+8LkIhC6jWdzInRTFV7errrHJ
         RpOA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780917086; x=1781521886; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=wcRJm9Mj5HN9MDIGpueIj3AGF7buVGW3wX3A5PTznAs=;
        b=DlSXlW8kUp9avyik4rvgm+HGR4WonXwoew3/sBty1vEoqnX28/XvFhZADXFz0EULia
         pzuCcb5ngx9DRaltMBPHA0geS16iPHa9BTw21HfJS0BUB97CY47UFxWAgkq/uyYZWqVS
         U7X21f86CaQrGt69S67CXAF1Hb2muv9eoeriOPLuQKw7QjerSe5p6awowj3JGbOZmstx
         atJu4ScVinEo+/Bt81IclIWKqcuqsm4g4SLCzDLwxQDoCPC1MhsoARynp2VZoKDdoG8H
         ky89DZl3sb97s9GtWxF4J8kfDCnWEnB9PA5q3mdsb3iBUr8POQtAFs76+mnG3u+pnzcB
         Mzhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780917086; x=1781521886;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wcRJm9Mj5HN9MDIGpueIj3AGF7buVGW3wX3A5PTznAs=;
        b=OzCBxF7EWmBhguDaw3/RVS6i3eRVhmspGblapJF+Q/98nmzO+6tgmMZYyCIdTt9OlM
         OuJ7miT7gLGy2x/ZTQYskuLSgqO4sD5yHlPB2bqEFm98x83w3DHOdkBSDJ6shC3L7KHE
         CgbhQCRjk61FKFmAe4xfz9pmHMK77Z1lyv+UFzmcclcKooboQsix3/5p8aCi+Lr06r1G
         jhgt341dmSIWVQySeWhJy1QcgLBi3ZGWY5+gnXNyavEZOU9Ql4XoTfhuZ6Exlr2ZocNz
         FtIG3evDpCibSc/UX7c0rdSy9J6C6Y91qzq3V9Q4aqq9huv9PvDiXtWUpkRz67l9EJiD
         EvBg==
X-Gm-Message-State: AOJu0Yzi9yv9eQhgfpxG3m/sKNifzDJvCI5+nGtzHOBI+j858NED7djO
	0kpwsCAmNB+9w0cNNJihfEVVnpcaRxgusS1XiADbxLPOj3juQXCAYeraAFSZBQJ7u7PHforfr75
	Ef/vIdPmQq2GuM2XERln84VHO/cVqHlCKWm+3
X-Gm-Gg: Acq92OFbGziItKT1Vdc7QuehznyzoGKamvQwp1cKTZdfcQN/8XVHH+K/sMtSiqpKxuj
	KT647w4JZYbVOALkxCWWI6rf/yFLE1iytfJRwUqHrybsJ6jTbXOHQaHwalwpXate+ilQq7H3kZr
	JjsahEGuaG4UkzQx26ibyEpERzlJjPR0tvg2CeTwTYc8/TqGVQYRsqnEqpCNUtP2jCLBO48IBC/
	tJcm3ORNroY88WoWA2N+QkHke92cxAJQ+B40TTwFX32F6oYMfCh9ilAx0Wc6g+MVShMje3eviHU
	NyAky4HK+zif1fft4wdRNrbrU7r7y77R0r3wBUagFT8zJrs5
X-Received: by 2002:a05:6a21:390:b0:3b4:9027:712 with SMTP id
 adf61e73a8af0-3b4ccdcedecmr18063543637.20.1780917086441; Mon, 08 Jun 2026
 04:11:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260605121955.105661-9-phucduc.bui@gmail.com> <20260605140412.CB2A81F00898@smtp.kernel.org>
In-Reply-To: <20260605140412.CB2A81F00898@smtp.kernel.org>
From: Bui Duc Phuc <phucduc.bui@gmail.com>
Date: Mon, 8 Jun 2026 18:11:15 +0700
X-Gm-Features: AVVi8Cfj24AI7Q02Va6L_5BIzBfLSjfFWoU6OIzNmPm5u6Uc3Eq4xA22OJ0Hpkg
Message-ID: <CAABR9nEpbhK6L2xkSGUaFKw0NtefzjaX9sAUG8sNamokzjR+MA@mail.gmail.com>
Subject: Re: [PATCH v4 08/10] ASoC: renesas: fsi: refactor clock initialization
To: sashiko-reviews@lists.linux.dev
Cc: devicetree@vger.kernel.org, wsa+renesas@sang-engineering.com, 
	robh@kernel.org, conor+dt@kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-308234-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:devicetree@vger.kernel.org,m:wsa+renesas@sang-engineering.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:wsa@sang-engineering.com,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	RCPT_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D6A2C6559DD

Thank you for pointing this out.

> > @@ -898,6 +904,11 @@ static int fsi_clk_set_rate_cpg(struct device *dev,
> >       int ackmd, bpfmd;
> >       int ret = -EINVAL;
> >
> > +     if (!ick || !div) {
> > +             dev_err(dev, "ick clock or div clock is missing\n");
> > +             return -EINVAL;
> > +     }
> > +
>
> [Severity: High]
> This isn't a bug introduced by this patch, but does this clock initialization
> path ultimately lead to sleeping while atomic?
>
> The ASoC framework invokes fsi_dai_trigger() in an atomic context with the
> PCM stream spinlock held and IRQs disabled. For the start command, the call
> chain executes:
>
> fsi_dai_trigger()
>   fsi_hw_startup()
>     fsi_clk_enable()
>       fsi_clk_set_rate_cpg()
>         clk_set_rate()
>
> clk_set_rate() attempts to acquire the global prepare_lock mutex in the common
> clock framework, which will trigger a scheduling-while-atomic panic when
> called from the atomic trigger path.
>

I agree that moving `clk_set_rate()` to `.hw_params()` would be a
cleaner design.
However, this is a pre-existing behavior and outside the scope of this series.
I would prefer to address it separately in a future cleanup.

> [ ... ]
>
> > @@ -1985,6 +2000,9 @@ static int fsi_probe(struct platform_device *pdev)
> >       fsi->master     = master;
> >       fsi_port_info_init(fsi, &info.port_b);
> >       fsi_handler_init(fsi, &info.port_b);
> > +     ret = fsi_clk_init(&pdev->dev, fsi);
> > +     if (ret)
> > +             return ret;
> >       ret = fsi_stream_probe(fsi, &pdev->dev);
> >       if (ret < 0) {
> >               dev_err(&pdev->dev, "FSIB stream probe failed\n");
>
> [Severity: High]
> If this fails, does the direct return bypass the cleanup for FSIA?
>
> Earlier in fsi_probe(), FSIA is probed and successfully allocates
> non-devres managed DMA channels. If fsi_clk_init() subsequently fails for
> FSIB (for example, returning -EPROBE_DEFER for an unavailable clock), the
> error path directly returns instead of executing the cleanup routine.
>
> Would this lead to a permanent leak of the DMA channels and other stream
> resources allocated for FSIA? Might a goto statement targeting the exit_fsia
> label be needed here so that fsi_stream_remove() can safely clean up?
>

Good catch. I will update the error handling path to ensure proper
cleanup and include the
fix in the next version of the patch.

