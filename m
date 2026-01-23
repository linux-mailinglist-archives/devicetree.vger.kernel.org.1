Return-Path: <devicetree+bounces-258996-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cCndLsyJc2krxAAAu9opvQ
	(envelope-from <devicetree+bounces-258996-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 15:46:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB65773AC
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 15:46:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 136E7303968E
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 14:45:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3C832F547F;
	Fri, 23 Jan 2026 14:45:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F492EA48F
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 14:45:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769179527; cv=none; b=avBUagcyc9EvvWKV8WSIEc51Zn/PfHeAG1O0DnMnBzngGpLGlxZDFydyYK+Fdzi30oq9wakoZ7B/SERVLSUZ2oCe2JxayWVtctzKoF9Wq71DGmHB0TciOuOVECG13dqHzSPFPFBsGCO6UKeKEx86IRa7G7F/OfIKuL2mFxdS9eM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769179527; c=relaxed/simple;
	bh=nCsWChx6yxZSKjZAa2GMQpNOMLhhdbKSzY6rM8oSSlw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MlSjX8qmXZR9INq+D7dSEx+BntHKneNkKCMvUH2WEnFuwtv6unRO6sCgIXHA6OFDcFNxMwm8Gtk/lQm8ton96VmpONLaC9Bo7pgrpBQVz4eo17099eSdMym31afgxtL29ZdVyxTncjVfhDUwwb56eTqPlMLmi80dDNArDe6JtEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.210.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-7cfcb46ffc9so2181568a34.0
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 06:45:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769179525; x=1769784325;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OeOBI8yfyx4Jru6wCPGb60ftZsgppeSY8TcHOVeV6Js=;
        b=orHOeiIopuc9U64Z6JK0OAsgxv7HvZCB+I//F9M236XSHTGx9EGJYwGU7NFrWFP+6x
         GU5FrPE3MWd/p/VL5xJiacLj5TVUa+bSGJ27/jIIjr4r2HdatFr1jZwCNs9C7YjA4Mv5
         PgxLpVwVkaYGkaGxfIGyuYpRhcca6R6Ok2r4wNF+bHfDdT5oJH7xE2OXTd+iyKozfLVN
         QNOCHtETzZ1ZbQ3KmtFatkxUnLSnAJHLrgb8BI0IXUQxc94ZC5naG5IrJJzAprvHe3/n
         /x6/KIYVNQ8jsMFP+tYGl5FYrwHZ8xgBA9YKMsGWzblTl8t5AK9e++sw8JbjEeKPTQPK
         NlAw==
X-Forwarded-Encrypted: i=1; AJvYcCWcJe9vMkz/w4tyIu253LDgRo5pLkG8KjFy/nRIRXe/dXi9LlHg7ov5GgmnfowUdtlBBwld0fO2pfuX@vger.kernel.org
X-Gm-Message-State: AOJu0YwlgUgPCTmg46QMg77BwXzDhnWCniC6+sQpi8XviRZmFtDJvpMm
	EEv1EiGVBKPxaItJeSk/Qd32cmgeNtoOL4o2OP5w2HCWpnt7YguxWoWkaDKnUX2b
X-Gm-Gg: AZuq6aLCIJLkCOJkmUDcvdzisLB5DwNMyxDwm4OsZXN5mbQoQSkzgK6W/UTAob151F8
	luUmyoWBuChSfEPioxEIqAID5E8fk7iZ8jmIWIms7HVjWNUJHPnMPvuQYn7qH8oPo5Op3d5ChTV
	vj7iVQhnTo8fQ/T8Ll1DkQZKwwWGLPahrC0GShIFdJdf6QQtpYYK+/V766T/KgPR5iYdWtdZPoG
	vY/6PcBkamRfhcN9kpx9iqW06tsghUBhYsH0RHwpfj7WdqfyJ0wVxSQQzO1MLh3IgvWhYBiodQs
	F0AJboCzI6R14ny/F303/gKbzPH+jK2xVWgVbCQ6AStXETsLvkrgzgSU5qrcrEsGrIBJd3YrKtQ
	bWsYXlMHK2uA5nfkfaUfzBS2WOssOuZV3kE10WDgSFISKN0iDY2S0BfpcKtjXCJS4JcsUBWyjA+
	ScX0XmyoHQgNANyw8luv/vYJb9pn2Wj2oeVUCWxtWo3bARWpl0
X-Received: by 2002:a05:6830:f97:b0:746:d097:9342 with SMTP id 46e09a7af769-7d15a6ab842mr1735527a34.7.1769179525181;
        Fri, 23 Jan 2026 06:45:25 -0800 (PST)
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com. [209.85.210.50])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d15b346df8sm2021095a34.6.2026.01.23.06.45.24
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Jan 2026 06:45:25 -0800 (PST)
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-7cfd71761b1so1392916a34.1
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 06:45:24 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVnDX8AOPQd7dOMCykXYLZX3r8Oe8Cpg7eH6YZ1GPzof/SikvVZsmlpLpN5R1Yzlql92xs0i9VahUHj@vger.kernel.org
X-Received: by 2002:a05:6102:f13:b0:5f5:259b:66e1 with SMTP id
 ada2fe7eead31-5f532daa612mr2326635137.3.1769179027220; Fri, 23 Jan 2026
 06:37:07 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260123140031.94752-1-john.madieu.xa@bp.renesas.com> <20260123140031.94752-5-john.madieu.xa@bp.renesas.com>
In-Reply-To: <20260123140031.94752-5-john.madieu.xa@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 23 Jan 2026 15:36:55 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWyFMWth7x0+ZVysLeZkxNNFPQibdSJMVfqymtAE=PwbQ@mail.gmail.com>
X-Gm-Features: AZwV_QipW_DLhbWh9heQ9wnTY0UPaLJrYO-wTDJgNVv9-6b_lsLVLgBLRKHfS18
Message-ID: <CAMuHMdWyFMWth7x0+ZVysLeZkxNNFPQibdSJMVfqymtAE=PwbQ@mail.gmail.com>
Subject: Re: [PATCH v2 04/15] clk: renesas: r9a09g047: Add PCIe clocks and reset
To: John Madieu <john.madieu.xa@bp.renesas.com>
Cc: claudiu.beznea.uj@bp.renesas.com, lpieralisi@kernel.org, 
	kwilczynski@kernel.org, mani@kernel.org, krzk+dt@kernel.org, robh@kernel.org, 
	bhelgaas@google.com, conor+dt@kernel.org, magnus.damm@gmail.com, 
	biju.das.jz@bp.renesas.com, linux-pci@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-clk@vger.kernel.org, john.madieu@gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,kernel.org,google.com,gmail.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-258996-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,linux-m68k.org:email,renesas.com:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 1FB65773AC
X-Rspamd-Action: no action

Hi John,

On Fri, 23 Jan 2026 at 15:01, John Madieu <john.madieu.xa@bp.renesas.com> wrote:
> Add necessary clocks and reset entries for the PCIe controller
>
> Signed-off-by: John Madieu <john.madieu.xa@bp.renesas.com>
> ---
>
> Changes:
> v2:
>  - Fixed clock names
>  - Used assert-variant for reset

Thanks for the update!

> --- a/drivers/clk/renesas/r9a09g047-cpg.c
> +++ b/drivers/clk/renesas/r9a09g047-cpg.c
> @@ -438,6 +438,10 @@ static const struct rzv2h_mod_clk r9a09g047_mod_clks[] __initconst = {
>                                                 BUS_MSTOP(3, BIT(4))),
>         DEF_MOD("tsu_1_pclk",                   CLK_QEXTAL, 16, 10, 8, 10,
>                                                 BUS_MSTOP(2, BIT(15))),
> +       DEF_MOD_INIT_OFF("pcie_0_aclk",         CLK_PLLDTY_ACPU_DIV2, 12, 4, 6, 4,

Please preserve sort order (by _onindex, _onbit);

> +                                               BUS_MSTOP(1, BIT(15))),
> +       DEF_MOD_INIT_OFF("pcie_0_clk_pmu",      CLK_PLLDTY_ACPU_DIV2, 12, 5, 6, 5,
> +                                               BUS_MSTOP(1, BIT(15))),
>  };
>
>  static const struct rzv2h_reset r9a09g047_resets[] __initconst = {

The rest LGTM, so with the above fixed:
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert


--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

