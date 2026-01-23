Return-Path: <devicetree+bounces-258942-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gPYVKLB3c2k2wAAAu9opvQ
	(envelope-from <devicetree+bounces-258942-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 14:29:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 00F4C76413
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 14:29:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B6FFE3020D63
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 13:29:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C5262D5C97;
	Fri, 23 Jan 2026 13:29:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com [209.85.217.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09D3626D4E5
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 13:29:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769174958; cv=none; b=nqNOu/et6+Al0S4V0iy7Zve9fndx0gkVPYBM7APkP0Z5F3rTIbSXzstRwYSqLpWRoPfA+7H/eoBoKYAE2VhK0LUHvH9aGHQPST/BqOQOnFBRQP3ev6eS4QNLOJzaeWMu6i6tzCpYDlaVzDUWFStycOqLsJ7fqlalSSBZKGxG+28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769174958; c=relaxed/simple;
	bh=5NurO0R2/OhT6VhbIKg6bkeoRSQoLzY5e3peAIZO8zE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VdX9cTs2oqVT6M8ymLPao05SffeYKRahT4ZPt5Xko3yChY9iomhGm256E1z2qzqmtKpXY+uln5/qUuBRi3Z1Qh9RvgxTvJQd7CiV0Lf/GA9vtb/PGYLS3JsOaogXDG1/BwB45RzFhWGa68LQaVRp7XCLxSW9vlNOI2SC862+99w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f48.google.com with SMTP id ada2fe7eead31-5efa6d5dbf5so629674137.1
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 05:29:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769174956; x=1769779756;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7uRZVas5P6xxkBpdwTHJQR+xs1A0EdTWP84ona+zohk=;
        b=pS/2jzI7Q9rbTMLmALUbJxyT6Hv5FpbcYPuu9Q+ja16Oa7XnFHy5m+qUc8vwY91NoU
         2EB+q9PQEcRQ3UZiIDEUU39uAUvzEZpYursdR+NHIynjOhwgP7bzT82EsGdeZ4oaM6ys
         QfIKp2agDvtJdBK5i/8t1Pe9/Gn6WLW/AWlOpwVsgUsJY2IZOxpWH79nGrm2g8VYHcOu
         bBuyDLGzouDcn0FY6A/8qidNj/mAa9XIkpmiX/bG928w1yQfNzcM3uzstCKKu/t+8bdq
         X5YxVBLX+jkuD2bhMBhfZgt5jOY4PSO/yOhWXpixZKBtZA/gWAYsO/XsON+lxRmmiAuo
         K9tQ==
X-Forwarded-Encrypted: i=1; AJvYcCW+ahN17JR4jk+1BoyXFmxbuUvQa+sxvBR6Uf0P0vnu1CpHpV7TVVmqrf++XEVLxJgdA5bBQYKUVHKH@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+8opZFZBd8l4xC9DWtQMzh+8aWfCrbVtBuHQbl5mkGjo8Oy/r
	aWEfSdvPTcNL5U9+tufRq4YbkCf/2mkxK8hDmDssyTIOscd9Iru6G/oNRo2rzLqf
X-Gm-Gg: AZuq6aIsqLbxYmLsg+b+192+S1wALyD7OKEgKKmtrM/spqVe2AnmJZ0ZPioE4gYWdeu
	kT3pZFAMCgCD5nK809lH/Kn/8UtnsRVykQiZlv5mKVppYbRImSNOpytHbL/jjpdvcc3qNF+vKjR
	WiJ77ARAX5690rmLy/UhRjhlwdsRLgUdt8W1twtP3zUJSAW7zlX+Ng3tVrf8hJL9X2ORC7A1fok
	HqHmuIHvy8IDRpZHOFTsYOHhYN+GEZqvhgcb3LRTC6V42qual/YDXXnZEyLtJi2/Rnk/5FsNTSQ
	IVYN5/3iPq9XXEBsEXO5072XxfoXanIlYjJhEwqW0BON9IwZ/V1Z+GCoyMEwayefC/szSu2d3sH
	3uIekgrE91kXnx2HhY5AeDdEQbvBvXJbrp2huTwUtkGm/sQgdjFs02LyiSsP9/xx9CITsCtMemS
	twKEDScjQFvRc6Eb6oth7fsVPiYxXpoit307QECXqqcEkQPnxY
X-Received: by 2002:a05:6102:b10:b0:5df:aff3:c41c with SMTP id ada2fe7eead31-5f54bcb6065mr816376137.30.1769174955786;
        Fri, 23 Jan 2026 05:29:15 -0800 (PST)
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com. [209.85.222.43])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-9482e323785sm442570241.8.2026.01.23.05.29.15
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Jan 2026 05:29:15 -0800 (PST)
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-94388cfa259so553071241.3
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 05:29:15 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXxlOv5kwMPvP5Di9BBGksdSOhY2JVmGMb8OxK7cjAgmr1QBiNsrxhUosYodYZvuGGnuXa+R3omaS9S@vger.kernel.org
X-Received: by 2002:a05:6102:12d9:b0:5f5:5c89:12e8 with SMTP id
 ada2fe7eead31-5f55c891584mr122473137.3.1769174954825; Fri, 23 Jan 2026
 05:29:14 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260118135038.8033-1-marek.vasut+renesas@mailbox.org> <20260118135038.8033-2-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20260118135038.8033-2-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 23 Jan 2026 14:29:03 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWW6KwSXqKkYBGVDpbhSn+eznA1Y1-9iPs4jR9W9pJb3A@mail.gmail.com>
X-Gm-Features: AZwV_Qja41EG5GwRG8B7m5dFnkBsNMOHUZuH503OCKweOMnCriK-91TiyZZrpMw
Message-ID: <CAMuHMdWW6KwSXqKkYBGVDpbhSn+eznA1Y1-9iPs4jR9W9pJb3A@mail.gmail.com>
Subject: Re: [PATCH v2 1/9] arm64: dts: renesas: r8a77951: Describe PCIe root ports
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
	devicetree@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,kernel.org,gmail.com,linaro.org,renesas.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-258942-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.994];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,mailbox.org:email]
X-Rspamd-Queue-Id: 00F4C76413
X-Rspamd-Action: no action

On Sun, 18 Jan 2026 at 14:51, Marek Vasut
<marek.vasut+renesas@mailbox.org> wrote:
> Add nodes which describe the root ports in the PCIe controller DT nodes.
> This can be used together with the pwrctrl driver to control clock and
> power supply to a PCIe slot.
>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.21.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

