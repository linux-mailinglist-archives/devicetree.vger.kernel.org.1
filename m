Return-Path: <devicetree+bounces-277430-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ILi4D5j0ummVdQIAu9opvQ
	(envelope-from <devicetree+bounces-277430-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 19:53:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F1FE2C1A3A
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 19:53:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 243F83038AAF
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 18:20:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A0393CF697;
	Wed, 18 Mar 2026 18:20:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mI6V35NV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEE8F1F192E
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 18:20:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.50
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773858029; cv=pass; b=iMiqVS9Ul8s2YDMDEZ9AlEzutPzECu0PPLQ3au2f2JIXBBxPOxtBWwk6D0CraxGaB9jCWMqvQzMFSzljvgbewViDPymz+jGTUvIvzeVhCjahch2fkEq3+muph7TYNuDBFjJRUXHPGha6aWWssS4cOKMHyQysJ7N0zzf7eCcnQ4Q=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773858029; c=relaxed/simple;
	bh=o2AlAnMddYyM3GRUlR6Czl0IFVIjXXrBXoY3tjJ2NCM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oobB32ytZz3c7BYjyIvtIu8QIlbC2/I1wv3nLblhYDYffv2i7pLD6fYfUTPFz9Ia9sDgD7nQqbnAHtjBi6vgyyYkHwHaQ0/Wexd9DUYqykUzZw3xL/ZZ/ftt367uIvdUvDAUVujrWMAYMjMv1OzuRqhHHThG45QMhtLt/n9gqig=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mI6V35NV; arc=pass smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-59e4a04f059so161098e87.2
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 11:20:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773858026; cv=none;
        d=google.com; s=arc-20240605;
        b=WtAdnEEeLpsobPUXaqWR3jHH4S+lrusYSGJpKxLIwfZGy4sqkFNcII7O7GPgviN41i
         o9Bln7ZGlnbzfn5vvqExQjy2yqR2YiGDRoosozRAV85VMCpOqjgvJrs3LFLo01/PrAxb
         Ffk+CTNA/YzohcXBB6EFEBzU634yyekfLMqyTzDnGy20DlN16D/IiuTvV/E32Hodj+1f
         kr1zU15R+711cD4ieKqro4x6j3FqZN9O16w4wtK6G8jW5uviYw3JejHIRrt+kw+VvjSX
         GzGfH+z0P3r+NzpTUuwOKKalIrxYPtHBxUOcgtReay13cXqJYAwebs4mbZnUThBG8Pxj
         NlSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=iQ1x2ihDMnnywua4CVQQdfzwfLUYhJP99revvTgTk0o=;
        fh=inZ2V/LvbO1yelE1XnvBYTlO8oXV50Ln25RPzAjArgQ=;
        b=FK8OpjcG2mVVUp/lXcVatdaJ9rbZeTCta4YMnOr2eHt16Itim01sVimZuabzU8JTdZ
         8QmarC87zTuX/qNkwPkgxtNvdoi76Hu/MqRytn7wEPmfi3x4q0H1cIFfd5g77x0BC+mQ
         SpxtwvXX7QjKiDqDcJlO3/t+AIyAnrjDQQnbPLBO8S8DfSoXxS0Y33QU6pZbMOiiRoi+
         G3D/rhWDcSUkefHny/lC/9y9Ogy8zHkL9BN38K9pE71H5QoP20FrM3Nl5L6hQq31O3bM
         CoycX0r9vELkV6TUyV/CK1sprswtS/7jOjgCvNapbgcxy25dg9nXfgYTsBvmPqKABlLE
         13lA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773858026; x=1774462826; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=iQ1x2ihDMnnywua4CVQQdfzwfLUYhJP99revvTgTk0o=;
        b=mI6V35NV8ZWus1QtxqcWcFu7cx86rkGqhoUIR8ptZvCoq57Y8NoeSWyMY+knpIGMpU
         BpZStWyG+GeeetaECaDMjqOoC1O3ENiIF1Wlm9VDxhqMkgH8Rrku7JdywhpNwkR+s1oG
         0CioRCsUFUOkqDYa8KQwPBbqowNfK5mg725LQu3I2VqXzO3QUowqJUcd9Dj3vEW5yMnv
         dXILrC5+5/lgq0XBYJ9dryfydjoLr8egZEzHj89QPaX4qDocwSI5H+G9/B9EO+e8/4uB
         qhq8RaiUcRhEV3ltZzwLCKdE5L32BrQaywJo+Oq7we2DimHkOgTO2C5sQU/VQQ10lTH0
         d2pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773858026; x=1774462826;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iQ1x2ihDMnnywua4CVQQdfzwfLUYhJP99revvTgTk0o=;
        b=b8Tw9jNJyUoeeD4gJcGrsbFmkrN+HzesBxyEDeQh560WQhqYf5rdqUlcGZ6qX+SJJq
         FVidcP8foryPeW1Mm6nluLttUbmxa/y37T0OhdeKjIDzbnA1MhkzgkzekBgcK7JAZeQ7
         FK39hYVlq5Ho6IqCW/BJdU2Ahev4eBBQ6CxCMIUO+OR3jUAqYMOkHkSaWW51Be4/e7qi
         gtC8pLuB/iAmCrMQ3OIVx+0ALfiegYHOV6G5BrmhXp1sFTAadfGc/cRnor8kKOx1zWFy
         fvpx+6oSBnXrWZs96Noa+FflpXtDGwe3U3oB9K8XzZIPUQEE9qKZNhrAQSwEuwcQRm42
         YVXA==
X-Forwarded-Encrypted: i=1; AJvYcCXjvakUOLPiZYXtJWQi70+HbDYexYzl15+WahurocFwD2vL3JesUD4VhffKInppallvK935Wq71VALE@vger.kernel.org
X-Gm-Message-State: AOJu0YxZweMJ2+6na2NAP/mHSVEC51rP3jI4WEsGhyw9lnCnTaq2gqkK
	sGCB8U76I6PFvaOgdOZOo+bEa1oQowOR4KpF/mAuMfLIQeA1v1WiopCLyv/OgaukvRVpAnuWmoT
	PvUK9v8Zb7fQaDWjklKe74B8xKMlD+GrBQZcA6h8mEoavMRo6WtWb9dY=
X-Gm-Gg: ATEYQzz0xkR8+TvNNbuNr+pvzgC2bEyoDM5TQz7NsrEvRE6IB+MtMrmeyp/qUHHJ8/c
	pllXlixzvqJrteAYJ3/9BG5RuyK1OzsmN7k3HDCwEpl75B3nPi4YJ2lXSTeCLuWM11f56BWaKw6
	04g8LLhIYxgg1G1d5IMncizE99QPJ3nrNUVxtVXf8turMpG0ezVal6S5MmDG8WLPw8988SaDQFp
	1da8QozympsiApSUhoCLLYaHCOSCMZj17cT1dlm5CEkvJ7UhzuILnuN9MQ/vv/h0QDQX8mCDn06
	mJBFR+JJ
X-Received: by 2002:a05:6512:24c5:20b0:5a1:37cd:7f10 with SMTP id
 2adb3069b0e04-5a2795903dcmr1158473e87.10.1773858026058; Wed, 18 Mar 2026
 11:20:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260305-b4-pck600-a733-v2-0-ba6bbed7d253@gmail.com>
In-Reply-To: <20260305-b4-pck600-a733-v2-0-ba6bbed7d253@gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 18 Mar 2026 19:19:50 +0100
X-Gm-Features: AaiRm50uzOde_q8t8Y3YJeSNhx4Hb7KPrmeaUA5JiLmoBH5vpeZt6VfvtJkYLuo
Message-ID: <CAPDyKFoo7HXuS1OQtt6Ku4O23pvFOvaG3g1_N7SPV8uB+ckt-Q@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] allwinner: a733: Add A733 PCK600 Power Domain
 Controller Support
To: Yuanshen Cao <alex.caoys@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277430-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.900];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ulf.hansson@linaro.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,sholland.org,vger.kernel.org,lists.infradead.org,lists.linux.dev,oss.qualcomm.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,linaro.org:dkim,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 4F1FE2C1A3A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 5 Mar 2026 at 04:34, Yuanshen Cao <alex.caoys@gmail.com> wrote:
>
> Hi everyone,
>
> This series is to introduce Allwinner A733 PCK600 Power Domain
> Controller.
>
> Allwinner A733 has this one power domain controller, PCK600, which
> shares the same BSP drivers according to the package provided by
> Radxa[1]. Unlike A523, A733 does not require the resets, and it also has
> different delay values. Apart from these, driver wise, everything else
> is the same.
>
> Add support for A733 power domain controller by making resets optional
> on sun55i-pck600 driver, adding A733 sunxi_pck600_desc and dt-bindings
> definitions.
> Tested on Radxa Cubie A7Z.
>
> [1] https://github.com/radxa/allwinner-bsp
>
> Signed-off-by: Yuanshen Cao <alex.caoys@gmail.com>
> ---
> Changes in v2:
> - Fit the pd_names into two lines
> - Link to v1: https://lore.kernel.org/r/20260304-b4-pck600-a733-v1-0-2f54efdb8cc2@gmail.com
>
> ---
> Yuanshen Cao (2):
>       dt-bindings: power: Add Support for Allwinner A733 PCK600 Power Domain Controller
>       pmdomain: sunxi: Add support for A733 to Allwinner PCK600 driver
>
>  .../bindings/power/allwinner,sun20i-d1-ppu.yaml    | 17 ++++++++++-
>  drivers/pmdomain/sunxi/sun55i-pck600.c             | 35 +++++++++++++++++++---
>  .../power/allwinner,sun60i-a733-pck-600.h          | 18 +++++++++++
>  3 files changed, 65 insertions(+), 5 deletions(-)
> ---
> base-commit: 0031c06807cfa8aa51a759ff8aa09e1aa48149af
> change-id: 20260304-b4-pck600-a733-1790e0e48d49
>
> Best regards,
> --
> Yuanshen Cao <alex.caoys@gmail.com>
>

The series applied for next, thanks!

Kind regards
Uffe

