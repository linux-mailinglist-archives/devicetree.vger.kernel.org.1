Return-Path: <devicetree+bounces-257307-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iN3vGKFQcGlvXQAAu9opvQ
	(envelope-from <devicetree+bounces-257307-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 05:05:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ABD450C9C
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 05:05:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 337A55C1389
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 10:56:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E3B63DA7F9;
	Tue, 20 Jan 2026 10:56:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58C0B3446C6
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 10:55:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768906561; cv=none; b=BHgaLAVzKAXKYLZugtPAOcozVgM1TbfTwCNrQrUfKxaD7k1In46EDHqoGk5kO2vy2d/65hjCtrrbxrBv7xBLVHBMU9y6wGLXpE3HRjX9abPSU+s/RzhUas6XRjBnnmHQIXqmr1VmQ3Y2YxYFtw9aPRJo1H90hzpTb6sI66gPrQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768906561; c=relaxed/simple;
	bh=Jo14SNVvgAvpmCa6sHx3d7iO2VYD3GagcaTjUOnITWw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qpsPSKhv+OeJUA5BSH1O0DvIwq1pDIFxq+WrxIlRDc+76L8j6hGnHry85qZHJMmEF8q1z5pCKSBQZS5H/FIq2pn50zzqy388X8m9uXCsOCAMgilXLcRHwA6sabkj79DFhqlgrpX3Jr3mZjljsE66XGxPpUt9eghGXUwdAZ5GgbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.167.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f178.google.com with SMTP id 5614622812f47-45c7a6de470so3384133b6e.3
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 02:55:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768906558; x=1769511358;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EZ0wVYmrXY0w9NWoQKTsT/lFDBKGzH8gk5CbiyOvxNo=;
        b=drA3BevZ/P6E/6Euk9kyqzVi0nZZqc5CE0EeHledNwwSjffcGvT3z2eJj8lwqvw2Mf
         urU3bpld0Ak1zarPBUYS073jWs4WNo/yfhEGEmhNMf29LDnUjqS6sEaaikab6Qiem4ym
         boATqjlrMpQMrVWysT/nfhCPOfcXUeBOLBFwL4zzjPBb1xWTy2zw3/Ck/RPPY5ciwxRd
         6fgGt+eGUlaVg2yftvkD1uirxrt3tZpQky0KOZ0fsKqCS+V98CM6IMQuNa6sQ/bgQ4K4
         z2l/+j6wxunJusSU+DJgjrXuVw1l6h9LJjDeoqGIKSenlDVuaT00fx7xmor0ijtFQFWL
         0pfg==
X-Forwarded-Encrypted: i=1; AJvYcCXO1jXVJV0pAUpIxcQORRFc9nwG2JZNruLy8tKIKUEX3uvKfrsL56CiLbjFr+N3X6QYnQhTteKf8N8m@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2u7ppgJhPn6MLenXTICUjplcaNskvnk4RIytuWlTzM3rACzIs
	rB9nEOequ+GCThHp8U/yRVcfvXZK5NuNHjiShwc43Op4bToVjUeYPUOwbSIhlh2K
X-Gm-Gg: AY/fxX5JXuiXtfcWvKis6SJb0wkqkS9CfZ1HMG/O9YI3sS88dqaFu2dy8THYYkiVtri
	YmAqgJ1JXz8W4yP7q0q/lJAvj36RdJwplu8PILy4im/IPNhza29r2bvxcW6RkDmjoDjfx0fF/cp
	9ZBJprXKn9txRpLn5fHRXLdeBsvBtECVK14ZWX0d6Laf+d+/li+xiRnT7d9vuM3ZiU12aApxT/C
	DFFBfQ/U561joQoHa+y1GgSwbgO4c63e2EWXj7dlRS1yHO43Q0e6eNPr5GFoa+5PqKRx9LblBDg
	2AcTnmDr8tlhk0DLyqgGfr2JLkm0xi/loGHogEbEjhY2pW26v/lJk884w8BWeLV99lVqbKAm2w/
	lOXeNf2k0Bt6+YxB2qygZh96hsdapcVpPel8vdMeMXhWt8zvR90Ndb63kM009qQC0gIUqcTpeRt
	OAHvtRPWmAJ1Eqd9wtEPIEdfEkQhXBUzbdslC3SqskIm5o3eEk
X-Received: by 2002:a05:6808:2382:b0:45e:851c:7ee7 with SMTP id 5614622812f47-45e8a93bd98mr611684b6e.24.1768906557915;
        Tue, 20 Jan 2026 02:55:57 -0800 (PST)
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com. [209.85.210.43])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4044bb545b9sm8657338fac.9.2026.01.20.02.55.57
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jan 2026 02:55:57 -0800 (PST)
Received: by mail-ot1-f43.google.com with SMTP id 46e09a7af769-7cfcc131958so3409827a34.0
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 02:55:57 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVs37qPbyFKYbPOqdQo1lGC6oskEXEduAVbrDJmF6AYnCgQU2h38/R7t8GS83fm+BxeKOl7LUNodhPM@vger.kernel.org
X-Received: by 2002:a05:6102:3f56:b0:5f1:4fb8:6b92 with SMTP id
 ada2fe7eead31-5f50a9d3b46mr342934137.22.1768906183803; Tue, 20 Jan 2026
 02:49:43 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260114153337.46765-1-john.madieu.xa@bp.renesas.com> <20260114153337.46765-4-john.madieu.xa@bp.renesas.com>
In-Reply-To: <20260114153337.46765-4-john.madieu.xa@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 20 Jan 2026 11:49:32 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXAAUe_0kboQ9C0AMPn5re-1kCagecp1fMCGramDpXGRA@mail.gmail.com>
X-Gm-Features: AZwV_QiaybW_I-1gR5s_n3JOLx29V6BZF-xoPK94FskYw67mu-RW2omq6aWspo4
Message-ID: <CAMuHMdXAAUe_0kboQ9C0AMPn5re-1kCagecp1fMCGramDpXGRA@mail.gmail.com>
Subject: Re: [PATCH 03/16] clk: renesas: rzv2h-cpg: Add support for init_off clocks
To: John Madieu <john.madieu.xa@bp.renesas.com>
Cc: claudiu.beznea.uj@bp.renesas.com, lpieralisi@kernel.org, 
	kwilczynski@kernel.org, mani@kernel.org, krzk+dt@kernel.org, robh@kernel.org, 
	bhelgaas@google.com, conor+dt@kernel.org, magnus.damm@gmail.com, 
	biju.das.jz@bp.renesas.com, linux-pci@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-clk@vger.kernel.org, john.madieu@gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [0.24 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257307-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_CC(0.00)[bp.renesas.com,kernel.org,google.com,gmail.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,mail.gmail.com:mid,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,linux-m68k.org:email]
X-Rspamd-Queue-Id: 0ABD450C9C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi John,

On Wed, 14 Jan 2026 at 16:36, John Madieu <john.madieu.xa@bp.renesas.com> wrote:
> Some peripherals may be left enabled by the bootloader but should be
> explicitly disabled by the kernel to ensure a known initial state.
> This is particularly important for PCIe which requires proper
> initialization sequencing.
>
> Add new macros DEF_MOD_INIT_OFF() to declare module clocks that should be
> turned off during CPG probe if found in the opposite state.
>
> Signed-off-by: John Madieu <john.madieu.xa@bp.renesas.com>

Thanks for your patch!

LGTM, so
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

However, I am still wondering if there are any possible bad side effects
of disabling the PCIe clocks, e.g. when PCIe is in use (network card,
SATA card, ...)?

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

