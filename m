Return-Path: <devicetree+bounces-275016-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EBuJKFHOs2mBbAAAu9opvQ
	(envelope-from <devicetree+bounces-275016-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:44:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EFDF27FE46
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:44:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F19AA3106CF8
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 08:42:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E839C383C96;
	Fri, 13 Mar 2026 08:42:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com [209.85.221.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1F7C282F04
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 08:41:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773391320; cv=none; b=TKWWMw7xuQMWoee/ZfFL/3CmxypvYhec1PEUDMKyu1eTnRRnkZLZQFn9W6vN8dRM4vEeLrARwa5WPMiCF9CGXuj60dOlQR/EcRK/doU5YoSFsM1fXY5453JqD/jOj+Owssob/Rt0WD7Ov4EN6LMorLNcQJnPWmNK8ZkLRVI7BSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773391320; c=relaxed/simple;
	bh=Ua52PBrMRguUB1TFGkRs7ufN3Wn+UHTtA/Ozw/l0cQA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gwQnqaQx08+ak5srziC4NavCBE7XMj2XRpHguQni7Sf4D1oaUxu4K6ZgW4+D/E1O278gv6b+aCZOd61YZMuBN6951+W/pWbFcv88zo2VwIGqj/0Co73LMWAdkx/1BHWOd0Lb0T64csjRvx1EqqbOSFGoSHP0QE5DnnOL4aPaaxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f180.google.com with SMTP id 71dfb90a1353d-56aec0ff5bdso2039731e0c.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 01:41:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773391319; x=1773996119;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5aDo7j94ftgy77ygvSOcZoX2nYRGeP4vCbL31PwDsek=;
        b=TJbdBILW9EevAiMey1tR0K9Y797vyT/Ba9Dkw9e/R+H4iENhrI37eMINNGtLaKZjQD
         DpodAw9iDhv+N5VvuKzpCmHZLoU1gYpDGM4LHd+79KVddevrdzyZvYQ9DvVqsgN3fuM2
         NiCZL1GvokdxuorSOe/FfNsy2FgKc7aE2DFgw35eoLuWPtRDs5DHnuhxAEJvMTLgE7kr
         ie3hMInmzTjyO4IirwBDsgNDPjvgCxedddNaawoc/ANm4NjPjhD8u+IG4D5jN4Wca3Jv
         paqBeOeTNKGkwlJPIXC6K93JgpLAJsEZTRHDkTng/nUFWJdzlkPDhr3wq/4iSeyTtARo
         TJ9Q==
X-Forwarded-Encrypted: i=1; AJvYcCUTasF8tFSOk2crimWE220HviEDHFO4dyJUwcND1CwWgeh2xk6Lv8+jrc0OTSlrPYnW2SIu6ZOpDaNP@vger.kernel.org
X-Gm-Message-State: AOJu0YzndkMmRhziQVXlel87buvEmawh5OVqbXe/1G40BxbnGvMwKjUi
	t04nmAcLryAajznw3k7E9wfEuHpaB+jkDqYVClej+C8Zz4bLatDnCGN4CkMVa7jACjI=
X-Gm-Gg: ATEYQzwKvONOFmrL+bm8K/4gTEodebd+7M1aTjN279/FTRZhHBKX2hVU5g7aAjHIqIs
	JkKWLBaYNEjlgRVEu42Tmo6qOgYiFidkvRKQF9s8yYbkkf3ZNYXcuKFNHkdAjLLS1RknwxLVtIn
	4ge1jiFr+2MvKlx+eFqgwA7RHlps9FbBLFgmsU1+R5IZsEhEcjoTc2B484Vxeq5PrBS6dfhBphQ
	5aDnKw3e6dY/jyO63/nDIXYuIbL/XJotEocMlDbC/rn7AozReHJqjyZmycdxjNWZP+6pDWssQhP
	/NHvVyQdMOynQvpebuntC+nzyW4HEuZhLCzajHiTQULNR7Yg6v6RkdxcDy3jd2V5y/1fFmdcLoF
	srN3JDkrn06iAcxniAcMYdWxYNKN0IsTwBKMj+jFrTqv27f11HdZxazyf+46+SzCEejdO2JkRgD
	WiEs0o8ivVBB5m9HEd1qrWEK8qrFbcvLGfB1yNb0XMvrmjx5kyIzdlcZkf3BH9
X-Received: by 2002:a05:6102:d8a:b0:601:f3e0:9eb1 with SMTP id ada2fe7eead31-6020ceefee3mr1156129137.0.1773391318677;
        Fri, 13 Mar 2026 01:41:58 -0700 (PDT)
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com. [209.85.222.50])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-601deb3e0absm2921734137.13.2026.03.13.01.41.57
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 01:41:58 -0700 (PDT)
Received: by mail-ua1-f50.google.com with SMTP id a1e0cc1a2514c-94ddffda372so1811156241.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 01:41:57 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWnabARQugsV5T3mmhq2NvQ3QlP5q1doD+I7zkZC+O92ZX5uUGnzrJOhAMsOAaS3wlRJxyveDVDaTvY@vger.kernel.org
X-Received: by 2002:a05:6102:94d:b0:600:3b3e:681a with SMTP id
 ada2fe7eead31-601f49df949mr2684902137.14.1773391317301; Fri, 13 Mar 2026
 01:41:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260309000319.74880-1-phucduc.bui@gmail.com> <20260309000319.74880-3-phucduc.bui@gmail.com>
In-Reply-To: <20260309000319.74880-3-phucduc.bui@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 13 Mar 2026 09:41:46 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUqiaP=COTkKU_jK6Hdii+YJ5+zXnxFkOOnhLri5NakTw@mail.gmail.com>
X-Gm-Features: AaiRm50dDPHbKiQlKjcHuSZ939JQWLNa2vCYSRXIp8LSqUBGtQD6gyUdpS8tlkg
Message-ID: <CAMuHMdUqiaP=COTkKU_jK6Hdii+YJ5+zXnxFkOOnhLri5NakTw@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] arm: dts: renesas: r8a7740-armadillo800eva: Add
 wakeup-source to st1232
To: phucduc.bui@gmail.com
Cc: krzk+dt@kernel.org, krzk@kernel.org, krzysztof.kozlowski@oss.qualcomm.com, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, dmitry.torokhov@gmail.com, 
	hechtb@gmail.com, javier.carrasco@wolfvision.net, jeff@labundy.com, 
	linux-input@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, magnus.damm@gmail.com, robh@kernel.org, 
	wsa+renesas@sang-engineering.com
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,oss.qualcomm.com,vger.kernel.org,gmail.com,wolfvision.net,labundy.com,sang-engineering.com];
	DMARC_NA(0.00)[linux-m68k.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275016-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_NONE(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,glider.be:email,linux-m68k.org:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 4EFDF27FE46
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 9 Mar 2026 at 01:04, <phucduc.bui@gmail.com> wrote:
> From: bui duc phuc <phucduc.bui@gmail.com>
>
> Add the wakeup-source property to the ST1232 touchscreen node
> in the device tree so that the touchscreen interrupt can wake
> the system from suspend when the panel is touched.
>
> Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Tested-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v7.1.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

