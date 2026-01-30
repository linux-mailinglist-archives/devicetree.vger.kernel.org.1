Return-Path: <devicetree+bounces-261120-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0LDTKPVqfGn+MQIAu9opvQ
	(envelope-from <devicetree+bounces-261120-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 09:25:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A796B852B
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 09:25:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A7EB730087AC
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 08:25:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F28523542CC;
	Fri, 30 Jan 2026 08:24:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iFnRJZcl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA448352C47
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 08:24:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.216.51
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769761499; cv=pass; b=FA69SHPRb06ry6XCaqPi7g/mAJRH+dEV9jgCw7yICK8ja/4n7lnO9ZHREoa6vmwz7pL7s8ErrnaPDJy6XA14e8CqmY0AEXRMmzMTMM0Vi7SXwyomoJi/nHdpVqyTNcq9+yOSgcCMBSDajW6h9A0JjvwtqN12eobkK+BzS6WiZ0E=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769761499; c=relaxed/simple;
	bh=ZC+fuQk21hYzdagNdpY7ch+QY0LHmxNvBoMUa+2kaN8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lO2xm4wLnoNHt6wIlKAFfwb1Fn3nDc+kK7jYPAXZiWXPVBqTY3eY1zIFog1A8gJKvh/JWzr5KrlF2MhD3+nA3u4h1ojWL6WaFvXZhaf0raWVM5vVrh7AJbjyMkWfvZQDoyUymoW4WBLWZy/FNE7HByz4Aq3ymmdFZzFUiOhADNw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iFnRJZcl; arc=pass smtp.client-ip=209.85.216.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-34f2a0c4574so1612291a91.1
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 00:24:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769761496; cv=none;
        d=google.com; s=arc-20240605;
        b=K9VaU/YB4U4yLgoIU0zwWogqtL1KEBRlWAJulxyoVHLOisHO/5N7m9M9PlrqC5p3ka
         t8ivDTAukwRD1wyJ4MgNwZjrfzT9cfgM8LngWHPwTPXUipTCGpi7qCBv8z3TvaHjynwn
         UeXWl8/QrDW1giCd4sITePg1H7naIo1lL3i9YXGOMctM1pOp8gKPf8hhSxDg1fR7eHs5
         +FZDq6Re2oLHFcIooGwgz0hpJjiGGdIKjh1h2aHEEgdckZbZTJXPQURMCdtIp1rj3bod
         /Y2ZCS96o5hRuMHcRQ4f2nbQCVzBa3iFMU4gclO3yMop6Fpv0JbyYSBR5jN3UbPiuqZR
         Zuvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=qIF2oyc7jSMJyV9MJXutUw0TkKSVy7Ny/HYiVWp/mcQ=;
        fh=09UYqeAiA6wP1dl1EhtRxckcg1MG+tTghaq9zfpxMeU=;
        b=FsWG5D4aDf/ToM3Bd7Ao0cGwuc5vHV7VIwPDpfRS6HflEl53jM+s5CKe8RNQF7cuqF
         aG5cCUcQkwdspUlm3c8mdnuuI+df3xvx7m/U7hHn/uuDK2kHljwailTkMk3PzQVkeha2
         OU0YLsA9bbZ2mTwgzM+EUhNUZYf/n3qhUDsgdovua19OvIxEaEV26sh4PfLX8elYsYN0
         AMm+aomyw47YeEm3S+Web1zgjtULWJtWsQPJNzTzeVRnHistEnGq7D0pxaF03tn9luGb
         ZMSFTI6heOKxfdd243MJ2Yh0+bQ9EM3XhoDqEHdzpoRQb9ZjqY5OsKOoXf4Duc27IVHo
         ZuhQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769761496; x=1770366296; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qIF2oyc7jSMJyV9MJXutUw0TkKSVy7Ny/HYiVWp/mcQ=;
        b=iFnRJZcl9EB71rWtSjWBc5Qev0Hdq9FQ+WRu98/SP2CrPU/58NF/oRmapY9NSLJW3D
         EBP4EF0zGZpxt+aRlWWsOX7BxdFV6ALPfjU7Quhr54Pv1phMG7TsRE798C67Qckb+iso
         54qFyqaJqcwVshT9FP29VORQgnjV/PYIPfqScZIe59GNKHgrz9+Se9hDv5OMIDpZIs+U
         xsUbmNDtbwDNBR/ckbIneEF9WL1FDiH5KamNdq/593m49EYBKjxMdYIka7WqVybX6M1y
         ubZVJYHA6KA8ga0lHK4PHNS+qC9VQ+Qe5XcrxXgjGsiEUuyGIaR+YXGGCrbzqs0OU+MQ
         8PnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769761496; x=1770366296;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=qIF2oyc7jSMJyV9MJXutUw0TkKSVy7Ny/HYiVWp/mcQ=;
        b=SkO8l8ZFJRtQVv/82ejlakzoJYOFk1BvHcDu7ljhlO/MSP1frfHrC9Oc3r4EPqXZxz
         pkkHvOBdmmk/Dnhad1doT19E7lR3QECRbJTaSLZs6OpTdgZw3kjftusTrlvJ9nHE6xLD
         ZTBBz5/tiBtgqNM/lwjrarcFF4WXDoq8w0srbR5AAh5wyIC5n5SAajEIbwk0bhKXraDN
         kK/+a8VJs53OQBGbt33ti5LHMuKcm2iKOXLwDuFBSZnB/g4SRmu9zB8oJnX7DTu4fqjU
         Ol9H8ygbO7OiIGxaWKZVZS6SHRnWGqfi/Bs5w2GQh3lqBxgfJK+bOgQVldguKEVayUMA
         6RTw==
X-Forwarded-Encrypted: i=1; AJvYcCUHVo/1wr2ud78F+RJ7uoIRNVChId+EMkuAW4wPzbw6kH1HT/CzOkn6vIepNyGNbyw76TJ/Ck1RCyS+@vger.kernel.org
X-Gm-Message-State: AOJu0YwhSRVD48Lmq1pSo3a9Uem0SoCR+/XomB0bQkEEE+gDl3XHTJjm
	KsfP6/M6mEo/WMHk/KUMxP7Z7vUYCH+DpMvd3qNpwJ3nF0M0dgz15+S7J8jUmeGxFCX1sCbdhrj
	ot0hB7enNZk+WNqjcdHfokjv80JP+8Z4=
X-Gm-Gg: AZuq6aIy46vvgAIMgt9o3UIXjRQBMCDftS+zL6blrt055FbbWquHKA3EeBPWQW0wIYP
	tWg5q93SZrSXnRJ1tCoKbLmHZ4phgkJ/O0tFZA/8XOldl5s37MyaEu8vwHBZTP39ceOhKxZ0tDO
	pINOhU6IBZc0g6EOSIP/6rcuyPOHgZ+SHTogkE3dTifcLgrb6G8uQGYL20Ub5K5PdPVDdchVnZi
	71jPXWpI6j1C9hfgwOI2zQD26NUZbnrF9JZ2tmctG4vmLbBofc4N6Zu4kW7ySBmAcwuM0w=
X-Received: by 2002:a17:90b:35cf:b0:353:e91:9b2f with SMTP id
 98e67ed59e1d1-3543b3c648emr2292966a91.37.1769761496076; Fri, 30 Jan 2026
 00:24:56 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260130054330.3462544-1-shengjiu.wang@nxp.com>
 <20260130054330.3462544-3-shengjiu.wang@nxp.com> <CAEnQRZC_6xRRi6y2t0MGe8udTPYWg9XEBFrxhFCbKYBCCD=OeA@mail.gmail.com>
In-Reply-To: <CAEnQRZC_6xRRi6y2t0MGe8udTPYWg9XEBFrxhFCbKYBCCD=OeA@mail.gmail.com>
From: Shengjiu Wang <shengjiu.wang@gmail.com>
Date: Fri, 30 Jan 2026 16:24:42 +0800
X-Gm-Features: AZwV_Qh3nyHcIbEYDDCvGcF70iBOk8SCVrc7tCSz-T6YiK9YuuynA5ywxyM9ma4
Message-ID: <CAA+D8AMkaTkHL03fi8THxK-a8xBR1Cu4BcNC5XfeZvzvwJ=rTw@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] ASoC: fsl_asrc: Add support for i.MX952 platform
To: Daniel Baluta <daniel.baluta@gmail.com>
Cc: Shengjiu Wang <shengjiu.wang@nxp.com>, lgirdwood@gmail.com, broonie@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org, 
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, 
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Xiubo.Lee@gmail.com, nicoleotsuka@gmail.com, perex@perex.cz, tiwai@suse.com, 
	linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261120-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shengjiuwang@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,kernel.org,pengutronix.de,vger.kernel.org,lists.linux.dev,lists.infradead.org,perex.cz,suse.com,lists.ozlabs.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nxp.com:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 2A796B852B
X-Rspamd-Action: no action

On Fri, Jan 30, 2026 at 3:27=E2=80=AFPM Daniel Baluta <daniel.baluta@gmail.=
com> wrote:
>
> On Fri, Jan 30, 2026 at 7:44=E2=80=AFAM Shengjiu Wang <shengjiu.wang@nxp.=
com> wrote:
> >
> > Add a compatible string and clock mapping table to support ASRC on the
> > i.MX952 platform.
> >
> > The clock mapping table is to map the clock sources on i.MX952 to the
> > clock ids in the driver, the clock ids are for all the clock sources on
> > all supported platforms.
> >
> > Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
>
> At this point imx952 has the issue with dma request not cleared you fix
> in patch 3/4.
>
> So in order to avoid this you need to swap patches 2 and 3.  And in the
> newly patch 3 you will fill fsl_asrc_imx952_data with correct value
> for start_before_dma.
>
> Thus we also keep everything working for bisection.

Good catch. I will swap them.

best regards
Shengjiu Wang

