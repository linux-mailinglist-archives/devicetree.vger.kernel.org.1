Return-Path: <devicetree+bounces-303409-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MCrNFKvpFmruvgcAu9opvQ
	(envelope-from <devicetree+bounces-303409-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 14:55:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id CB9825E4796
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 14:55:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 64C37301F782
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 12:51:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E00B3DD864;
	Wed, 27 May 2026 12:51:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A217C261B92
	for <devicetree@vger.kernel.org>; Wed, 27 May 2026 12:51:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779886275; cv=none; b=TW2AnuhTJK4wrwuyLX0AxeyUAhzlWPMJgAVgmxbIVeA2jY5BHghmOsQDLzffnwMiXMZosIvYUl6GfjbJOCGlXMxNeIlos9NidkgMbt9buaydzyhp342RTavO1OBhkZ1eARU06s/W9Af1KT+ytRiZ7ZdaAzVsNFm6ax+DORWbTEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779886275; c=relaxed/simple;
	bh=kqktGqpqwvczwM0VR2SPhNu80C/+HjpMr/FFlTiSoeI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Yby0agzG7e0rjedpQSZJV9gzH9AR4lUYY64MENGzmD/T+6Au8M9hoNiP4QxuufSasq76Ha3bxC9JTEIwyt8zoWEK6j+7P3AGwHjtahzokL0JWMbju1LPsn4SYrwF2ZisVI5y4JrXGMLDMY/kX9liv9bqfFh/vw/NoBXQVsSyuYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.160.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-43b8a96ff5eso2904931fac.2
        for <devicetree@vger.kernel.org>; Wed, 27 May 2026 05:51:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779886273; x=1780491073;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vxoZNqOSzYfBwMiwQrf9ojD/Y5NqNn7W22JpIB2VCXQ=;
        b=ca2/efZItSHKZB2DHWoNdvC8l1WVIVCekFV/bS4Wz9GrhCQuUVIsCP+LB0zBbAx6oI
         A6IxQC8P2e1RxN2y9fSAGVw/qlG34K+xkS7AmLVu+1HNETxeRSajiEjyEZJlB1RXHebV
         xByVO40728cS/3WFVIXoIztJtMt5b79C+ncv8ge1+mkuDVQ5Li7CdoiiQ9n6jwfCoQe6
         gKC42o5BAIJJCQqbRQViegccahTHlyvkMTnduqA7Rh3eeTQRtlspEkZzVKXO+EggSH1N
         OA2XW2/uoURBqE3gvgsu0iDENkn8AiuTLHSJZOujV7tVlKmzpMNB29SZ8spHSZlizBTf
         mZgw==
X-Forwarded-Encrypted: i=1; AFNElJ//lseqU9H++v5y9SVfjr+t6GPPWMe577ZOH4dGLCo8KzBg3rU6+Azdfjmx9ZGpMxcOoVbWQWVAQlAm@vger.kernel.org
X-Gm-Message-State: AOJu0YyMlaeDHlvbzneOgsjNm6NG/iNVl8cUhDeqP4ReNsl9/2F+MKJo
	DIqd3EtKPCMiSNGH/bQIIMSehcpfMX2fTfESBDmnAX+H+WCGyKEDAzq/TILG74I1BkE=
X-Gm-Gg: Acq92OGze2eQg7CbfeoTGuLo9xNixIjZ9/E7Cr5NvC5KhrvGHDwrLxgaHU8xDW14P55
	l5HA8gnMpxOhnqgEPRex+g2Vl59dWRkATVPEvfEtLIX4qUTLLecg7vN4D4bcc0Jvu77qZyl4x7V
	ig061sCmZtUfzlVSlA0lr3H7XvledvVghR4pMhDaBPLK7JI00j2RXYpFV8lxZcw2YgcxotmHvv6
	cZUgMnEB/iYvqxDbq6Q8p0gU89TMia5AS74NiDlORc8Er0iQAi/yJRvJuAVjvsekM3wkaRkxaEe
	d5xixIspo3sXDghlRQ9B/JwlHCsO/FeNDtnVeFAAf/L/RAXWeq+HWLlW+f9tU/AOIxRuetVWHHj
	arx9AbhjlU3cHBwCXNTaTnDSBYuDB+FZL5C/hciYC6vf5QnHrx9GvggSERWVV97CpAoy+hou+4b
	La7H3HYWS73MRqLzwp82SRH46chR/8pbWbkJkrPsV5Fd1Ty9JZjhYsKbhGA1dvc24MMxvTCbc=
X-Received: by 2002:a05:6871:2b1e:b0:43b:c9bb:c2a2 with SMTP id 586e51a60fabf-43bc9bbcbb8mr8584254fac.11.1779886272602;
        Wed, 27 May 2026 05:51:12 -0700 (PDT)
Received: from mail-oo1-f45.google.com (mail-oo1-f45.google.com. [209.85.161.45])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-43b635e373fsm16369228fac.8.2026.05.27.05.51.11
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2026 05:51:12 -0700 (PDT)
Received: by mail-oo1-f45.google.com with SMTP id 006d021491bc7-69d7aa0ac18so3531560eaf.0
        for <devicetree@vger.kernel.org>; Wed, 27 May 2026 05:51:11 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ9iAxig7Ter0JOVDHXpmb+sJS6X6nrMuAbx/JuCW0+uMfcIUWvpj8KKF0FDlizgvithU4KTKQ+rjTne@vger.kernel.org
X-Received: by 2002:a05:6122:2203:b0:56e:e80c:bb25 with SMTP id
 71dfb90a1353d-586649efacfmr12944471e0c.13.1779885965769; Wed, 27 May 2026
 05:46:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260525110603.4018170-1-john.madieu.xa@bp.renesas.com> <20260525110603.4018170-2-john.madieu.xa@bp.renesas.com>
In-Reply-To: <20260525110603.4018170-2-john.madieu.xa@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 27 May 2026 14:45:54 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUqiHE06_pw3dJ00f30ohSuT_Hv_k7SoK9bACeDqE6i0A@mail.gmail.com>
X-Gm-Features: AVHnY4LUPp8GTEwUz2koHfZTdHXj-kQ8ZH0SWOlUn5c1woQCDpOdaxSIe2lwISM
Message-ID: <CAMuHMdUqiHE06_pw3dJ00f30ohSuT_Hv_k7SoK9bACeDqE6i0A@mail.gmail.com>
Subject: Re: [PATCH v4 1/8] dt-bindings: clock: renesas: Add audio clock
 inputs for RZ/V2H family
To: John Madieu <john.madieu.xa@bp.renesas.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, magnus.damm@gmail.com, 
	bmasney@redhat.com, prabhakar.mahadev-lad.rj@bp.renesas.com, 
	linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	biju.das.jz@bp.renesas.com, john.madieu@gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[baylibre.com,kernel.org,gmail.com,redhat.com,bp.renesas.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-303409-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.934];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux-m68k.org:email,renesas.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,glider.be:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: CB9825E4796
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 25 May 2026 at 13:07, John Madieu <john.madieu.xa@bp.renesas.com> wrote:
> RZ/V2H, RZ/V2N, and RZ/G3E support two optional external audio clock
> inputs (AUDIO_CLKB and AUDIO_CLKC) that can be used by the Audio Clock
> Generator (ADG) to derive internal audio clocks. The third ADG input
> (AUDIO_CLKA) is fed internally by the AUDIO_EXTAL pin and does not need
> a separate binding entry.
>
> Update the bindings to allow these optional clocks for all RZ/V2H family
> SoCs.
>
> Signed-off-by: John Madieu <john.madieu.xa@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

