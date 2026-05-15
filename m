Return-Path: <devicetree+bounces-298388-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uPh2BYQ9B2oCuwIAu9opvQ
	(envelope-from <devicetree+bounces-298388-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 17:36:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 805795523F2
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 17:36:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C20133093386
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 15:28:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64859495535;
	Fri, 15 May 2026 15:28:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WkiuvzzT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B36AA49552A
	for <devicetree@vger.kernel.org>; Fri, 15 May 2026 15:28:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778858922; cv=none; b=t5aEud+iVtZPLTJ+7XFbtavYK+IVi2WzAxvQKiv5vEUfzQubl04xzIrlEemWvKfEv/RmfFVttcWNv9DxitIhgHZL5ncxLKx5DZk/w64EWK+l8yIhTmEUzvMvcloW8HDM1qEfYPCpV/14OwrCck5f+c+TIzOstNJAFnxiFdINZ0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778858922; c=relaxed/simple;
	bh=9Yh5Rv/5NTveSKLIFpJb2uAp/Hs1/EpekiXV1I3jm5Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OLwhRgkBLOIcJ3zbq/kcQ3eEgQgIR7VSMiRdnNxDcnEIn9/WQKOpntshctJmFghpLogLn0YEcPDXk4Oujg5dm2rl70MA2uEubViTntdcgeu2aNPgd95WL044DTEsTMGlblMZ7hlGjOrbWXad6gsFjGCplJP4BKNzBudoGgRHTuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WkiuvzzT; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-67c2d57a5ceso16070253a12.3
        for <devicetree@vger.kernel.org>; Fri, 15 May 2026 08:28:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778858919; x=1779463719; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4aHjUz6BqcPUtuPTSYRX/Wrmbz9WV9jZg68a5nWa4X0=;
        b=WkiuvzzTIAgzCrW6Ug14NleN6DTHB30bhgTwWXpTMeiDgNS3+vfMoB/fsR6C0jGac/
         wRxlWuv/Zn7h7wvf3qSIXFFLZhwvHIb1wWM7HZF6ZyDvdUB7oeuxCHIotWhlwaskW1P3
         4R7xq6TDiO1mhPA1vNMwmXMKX17PstzcQ5ruPXzEIxrnuAzu2ErCsRS0lHa5nP2f59Tc
         i1MFO4gom5ZOqHUr1uBIscUnjrUnr6qgJ3JIERKnzJ64Z9u9LvjK0FAw39R7qN/JAtz8
         EBO/4GP23DAc4SeANhvRtljFj6zYSdRVALigRYnhGxeHy5Y1D1RP5ZJmNMmz77MpXXON
         MKhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778858919; x=1779463719;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4aHjUz6BqcPUtuPTSYRX/Wrmbz9WV9jZg68a5nWa4X0=;
        b=rAge6fjc635IZFGyN2W7H07So+QvVQCZUrvkJYWgpxe0ipPxknH5jMwud33yPeuN8w
         rK+mIRyUokxq7QBWyp0oUU3jpd2ycboH078QouPv3EP3I3H3XcRNiJnFphLcTX0G5Cxg
         gLFWpuRQlxJFAbqMWZgdYMN/ae0K7I2Ie/5JRI7yWczzrAAj7qq7Hh5pkh0KBZ7EDY2W
         pkQ/upFd9avWUEBsp8ezBwgboVwBvl4lN/uR5s0EtJAE9Uj2CI7uAT0mFC2Dv65/mEqL
         fxXvV2KxyjE5p6uanqcG/OigIiA8lhDDxe0TU30qZTUZMZLwouBUX6WOOVwZJ3lQAhj/
         qM9A==
X-Forwarded-Encrypted: i=1; AFNElJ/9FMsw/nyEX/N7MM7JTZEPdiswN/aJPo9N5qLXQwPG1y1Xznrt++nrIEvAULqeCrOh86hlrzgSHztl@vger.kernel.org
X-Gm-Message-State: AOJu0YxByQnqg1SI3agUmlna404Qr2AxaSN9dfzz3gwa5w0H8ajFghM5
	GkpveRbHpLfgQ+iKXXopzw2F0ZHcZK8SMcN7MC+CcCwk4vrIcbGvwVg1
X-Gm-Gg: Acq92OFW7KADu3j3wD3r12Gp8I5CNWJiRHngtRdgBAplCpgZOpIJB8FF5FRtQR9gh9Y
	OOuolWi7++FHAvUYZOnb5oSby6tY4OcTjv7SJ2lXkLNAozja2lon3+Wwk+pJCPXk71i1msutpEO
	cW2+j9WblCyBTzyTGrrMTae7BrUpGnJbURR6MuMorgrHxN5jTY3eP3L+0fcBZmq/ncveTq1Mhh/
	OXygmi8tmbqH1lwihQCXRWpsrt0VScFrrEWg9/4K2LAhBXg6PgnlzkgwDpszM8Flpa58Q6gNX0w
	Bi3AIwpGT95d7vxslj3yfOffmg8eK4vVuyNjBhgqxXrJzxyJmfcFhXogI7h9+fIrkqwwwdAp/Hk
	/UKik6CkySArvka7M9/fqVasNrRGu2I4Lbxzka5b/zwllrkZ7Kqf/7hnq82OrBWpi3HlK+nnQvg
	==
X-Received: by 2002:a17:906:ba84:b0:bc2:70ca:c41e with SMTP id a640c23a62f3a-bd51791d078mr261330066b.25.1778858918659;
        Fri, 15 May 2026 08:28:38 -0700 (PDT)
Received: from fedora ([2a02:8071:50c5:5c0::6182])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bd4f4bd1bc9sm249989066b.9.2026.05.15.08.28.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 May 2026 08:28:38 -0700 (PDT)
Date: Fri, 15 May 2026 17:28:36 +0200
From: Wadim Mueller <wafgo01@gmail.com>
To: William Breathitt Gray <wbg@kernel.org>
Cc: conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, 
	conor.dooley@microchip.com, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linusw@kernel.org, brgl@kernel.org
Subject: Re: [PATCH v3 2/3] counter: add GPIO-based quadrature encoder driver
Message-ID: <s5xt3l6fy2vp6qvk66qdywccp5w2gv3sfksufxxybytstsuunh@b3th2uqk56jd>
References: <20260501200749.20029-3-wafgo01@gmail.com>
 <20260515054819.302445-1-wbg@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260515054819.302445-1-wbg@kernel.org>
X-Rspamd-Queue-Id: 805795523F2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-298388-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wafgo01@gmail.com,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Action: no action

Hi William,

thanks a lot for the very thorough review -- this was really
helpful. I went through all your points and addressed them in v4
which i will send shortly as a follow-up to this thread (in-reply-to
the v3 cover).

A short rundown so you can already see what to expect:

  - gpio_qenc_function enum dropped, priv stores enum counter_function
    directly, function_read/write are now trivial accessors.
  - priv->count is now u64 and ceiling defaults to U64_MAX in probe,
    so ceiling == 0 is a real "ceiling of 0" again, not a sentinel.
  - update_count rewritten direction-first, with proper saturation
    at 0 / ceiling, +/-1 per transition.
  - CREATE_QE_STATE(prev_a, prev_b, curr_a, curr_b) macro plus a
    single 16-entry X4 transition table; the delta == 2 path is gone,
    the table just has 0 in those slots.
  - ISR switches use default: instead of listing every ignored case.
  - The "enabled" flag in the ISRs is dropped. Gating happens via
    enable_irq/disable_irq anyway and enable_read derives the state
    from irqd_irq_disabled(irq_get_irq_data(priv->irq_a)) so there
    is only one source of truth.
  - enable_write simplified: no !!, assign directly, two branches
    split by return.
  - events_configure() removed (was no-op).
  - Synapses: A and B keep the full action list including
    FALLING_EDGE; Index gets its own list with only NONE and
    RISING_EDGE.
  - action_read restructured: default to NONE, Index handled as
    early return, per-function switch. X1_A and X1_B now report
    RISING_EDGE when going forward and FALLING_EDGE when going
    backward, as the COUNTER_FUNCTION_QUADRATURE_X1_{A,B} semantics
    say.
  - All generic Count functions supported now: INCREASE, DECREASE,
    PULSE_DIRECTION, QUADRATURE_X1_{A,B}, QUADRATURE_X2_{A,B},
    QUADRATURE_X4.
  - Index migrated to the COUNTER_COMP_PRESET + PRESET_ENABLE pair,
    the custom "index_enabled" COUNTER_COMP_COUNT_BOOL is gone. The
    Index ISR loads preset into count when preset_enable is set,
    like intel-qep does.
  - signal_read: the !gpio guard is gone; the Index synapse is only
    registered in probe when an index GPIO is actually wired, so no
    zombie entries.
  - cnts is now a single-element array (priv->cnts[1]) and
    counter->num_counts uses ARRAY_SIZE(priv->cnts). To not trigger
    checkpatch's "deprecated flexible array" warning the array is
    not the last field of the priv struct anymore.
  - The Count is renamed from "Position" to "Count".

About the COMPARE/FLOOR components and the OVERFLOW/UNDERFLOW/
THRESHOLD/DIRECTION_CHANGE events you suggested: i would prefer to
send those as a separate series on top of this one, once it lands,
so the diff size for the initial driver stays in a reviewable shape.
I will announce that as a follow-up in the v4 cover letter.

While at it i also picked up Krzysztofs note from v2 on the const
scalar parameters -- v3 only had the Acked-by from Conor on the
binding and no code changes, so the const scalars were still in v3.
They are gone in v4.

If anything from above is not what you had in mind please tell me,
i will fix it in v5.

Thanks again for the time,

Wadim

