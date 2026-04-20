Return-Path: <devicetree+bounces-288537-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QILBJinN5WlIoAEAu9opvQ
	(envelope-from <devicetree+bounces-288537-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 08:52:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C8D45427795
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 08:52:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 28EBF3004258
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 06:50:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DF81382F29;
	Mon, 20 Apr 2026 06:50:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com [209.85.222.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9F8C382395
	for <devicetree@vger.kernel.org>; Mon, 20 Apr 2026 06:50:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776667822; cv=none; b=DByeIixE/AKGHB1TOVZsURlXoxroJXVc3reaZ3gHDbk14+6S4XjBj93BpwueqhTqaYt2nzJ4JrVhwmKbjyTuWUo80qw+DCZ9kTr2netfhhp6Dj1JaRS6qLgmPnGWtFLIG+oqnxz3ITcUIi5YsAFz8ENA9SYPr+pHU4idDMwJuV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776667822; c=relaxed/simple;
	bh=66683rtKBPWrf7C4XTuvMiaBte65Hl+xhzNuAjnDIic=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Xl1L5yagdqqBK40ewp9JTSj6s4oPv2xcFhIIQi5uBrwuxlgxxz4KBHZPHlE5lTlAypeEJImIw6/dJLaT6FGLOXR5nks94KA+NIpzcp5xRiHgeiU5Vo02+Rbd8tDQAixZdeo6GHIEnTk4hGuw3uKbakqGWOUzkrL79Y5VKrtAqgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f48.google.com with SMTP id a1e0cc1a2514c-948029fb1f2so533667241.0
        for <devicetree@vger.kernel.org>; Sun, 19 Apr 2026 23:50:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776667820; x=1777272620;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ev7Q2PR+MzeC42yfPBg+fufDGNaPf4avnQMcEXwV9q4=;
        b=kBw3BC4qiFs45LlVsLasnobFb2YlGAwdxZGuugV3EgXZuHwjSQSTjO53JjZJu9zwMc
         WQhNR7WwtULmlc2KzqhKwnn0q1w+vMlixpf7lHh9QWqHwsM0p1159WOS4d5Py6fwm+JZ
         Q16y2O0/b7R8JRVJ/XiEykO3e8QAP67ctR+TSspycIvLRg4L7spHZdGrTfRK3ExFVs70
         ngPouBDLkKF/xAiHXzbZ90KOX2fJo+xroFcbNB+Aauz3XJL9IrHqVl+644/Zi6eb8srQ
         Wpjq4DDM9lpN2a5Ovcd673IoLImugCIMkDsbHKbqVcaA/4RaNBoZvfnOJCB5O3mVJHWc
         ZwfQ==
X-Forwarded-Encrypted: i=1; AFNElJ9FDlQGrnb7UauvrI7kNAwis+JVNgM09xsMn2cVyLMDoX8oc01bysV4PEs0L67ko0Sw1Cacwp222pDB@vger.kernel.org
X-Gm-Message-State: AOJu0Yw23GsmC/JzRFfznVvPrFuXTJtYCR6owE7vineFg1ms+P91I5h4
	otPf6OmSwLeoDIikXhoVutx5MjTn8DvpUHIBM06h4uU6BqI/Rdbbwy/pjf+H5NWG
X-Gm-Gg: AeBDiesnyxXYCHkURNCRpeRQ6VWS+4wxks5p6g/2sp1YWGGQoL0U9YLawyWFcJyt8W0
	fummJRV+kOcsDuR5oNHBzOu0zzME1FLLmOv/YlHjAIIzanBiKL+WyFrX5wVxaZzBuA/Hvg0MPJV
	8uHNKUiEXSiUAE++4hjgLVoRvWhJWCRE1WazoJV/1T7xoYhKd3Qzi4R1fIxpLnar+Og31A4sY1i
	mhjF/IKOPTDZLHeSy/4Wl0ECr+JSq1GIouTzEyfqfq5J2G1GkpmAsYSm6keie/0hvovDGNIcMiZ
	1bcMpnK/B5FxI0P0cM2Shcol7VODv4g97cebE6TRC/5AFcBctW/BCJCfS/0iJsAlAI9sJ91hY7+
	9GpVw84mDuTFcp93J7BlG3DaiTNVAkVgxxcvAWCec+OQ37cmpG3VCaSMonHSP6PHPF3q/cLYSbm
	rLgsmBP/guae+PATglPc8nsgzq2NPfx+Pgz5dNGeUWtJRlLgInpHiDkHoj9EiynriqVAyHgNMaB
	LhmPVUFVQ==
X-Received: by 2002:a05:6102:5808:b0:5f7:240f:bbee with SMTP id ada2fe7eead31-616f4f77830mr4295083137.1.1776667819489;
        Sun, 19 Apr 2026 23:50:19 -0700 (PDT)
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com. [209.85.217.51])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-61745c9e53esm4502647137.5.2026.04.19.23.50.18
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2026 23:50:18 -0700 (PDT)
Received: by mail-vs1-f51.google.com with SMTP id ada2fe7eead31-60fa5eb3ee1so834939137.2
        for <devicetree@vger.kernel.org>; Sun, 19 Apr 2026 23:50:18 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ9d4uYpRbqC4hgJtZ2gWsQJlA91mnMGTrr+P38P97c0zC7W5o9dHDpPSadeNU2kuifPwDhonFwS3/Fn@vger.kernel.org
X-Received: by 2002:a05:6102:6051:b0:60f:7499:9b6b with SMTP id
 ada2fe7eead31-616f859752fmr3673069137.29.1776667818181; Sun, 19 Apr 2026
 23:50:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260417131549.3154534-1-thierry.reding@kernel.org>
In-Reply-To: <20260417131549.3154534-1-thierry.reding@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 20 Apr 2026 08:50:06 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWeXS3ytgozp-mSrW4jcMRCW7_tbDTbMoEdXdbVj0dqJA@mail.gmail.com>
X-Gm-Features: AQROBzDvJRShLyy63Y8y4xm5mUkGqHiHZxGK82_lU0-LEkdWIcvZD7MEx0w1d6U
Message-ID: <CAMuHMdWeXS3ytgozp-mSrW4jcMRCW7_tbDTbMoEdXdbVj0dqJA@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] MAINTAINERS: Move Peter De Schrijver to CREDITS
To: Thierry Reding <thierry.reding@kernel.org>
Cc: Aaro Koskinen <aaro.koskinen@iki.fi>, linux-tegra@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org, 
	linux-omap@vger.kernel.org, linux-m68k@lists.linux-m68k.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Paul Walmsley <pjw@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-288537-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,mail.gmail.com:mid,linux-m68k.org:email,bootlin.com:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C8D45427795
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Thierry,

On Fri, 17 Apr 2026 at 15:15, Thierry Reding <thierry.reding@kernel.org> wrote:
> From: Thierry Reding <treding@nvidia.com>
>
> Peter sadly passed away a while back. Paul did a much better job at
> finding the right words to mourn this loss than I ever could, so I will
> leave this link here:
>
>   https://lore.kernel.org/lkml/alpine.DEB.2.21.999.2407240345480.11116@utopia.booyaka.com/T/#u
>
> Co-developed-by: Paul Walmsley <pjw@kernel.org>
> Co-developed-by: Aaro Koskinen <aaro.koskinen@iki.fi>
> Co-developed-by: Geert Uytterhoeven <geert@linux-m68k.org>

   "every Co-developed-by: must be immediately
    followed by a Signed-off-by: of the associated co-author."

https://elixir.bootlin.com/linux/v7.0/source/Documentation/process/submitting-patches.rst#L506

Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>

> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
> Changes in v2:
> - add more missing entries

Thanks!

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

