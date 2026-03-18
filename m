Return-Path: <devicetree+bounces-277295-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YOKnFfi5umlWawIAu9opvQ
	(envelope-from <devicetree+bounces-277295-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:43:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id CBEF32BD653
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:43:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 47288307EADF
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 14:34:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 290AE3DBD5D;
	Wed, 18 Mar 2026 14:33:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com [209.85.221.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F1AF3DBD7F
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 14:33:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773844418; cv=none; b=f6kr5E4dtPH7D8YcibVNbRT2ulIpIuUyRD3pcC2mYa2yXkJGP6o+4ko1MHv7yAWIQRfpXqrNsTd08qLjtcGQqsBZv8K9LYTD5zn8tU1wGIp3g1VhC8KaVUc1mCorX6//g/kBmWJ6e0ld4TtW8yeSy7tAXeyACvMTniduxjR4np0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773844418; c=relaxed/simple;
	bh=Lm81v3X2hopJu4HkS2XTSZZIGVqR68LKUdtuY/WsRic=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rRKPGa4SDzDE4n9JJFCsFUheu0kAbFyO/21Dt/kE/DpcvkhdynfMHSsDgvfdvyGHrSkyDswFZF0Opydcsj44pwJdeB6QbhqDxtaztrbFX5o9Wdw6JZk+sCOvUozRLLYtlMo7Og8NWku9+zgcl3mdZ0Cz9QN/Y1gPIM+7KrOxVPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-56b65ffbda3so4558303e0c.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 07:33:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773844415; x=1774449215;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k0dzTiRw9+wmXHZEQW0d3m+CW5azAN7PobPRJxwWyKM=;
        b=AxTSA+NxgeL78s0PheCYHkhjkDmSd+mqllecCapgSHenmS2vUxTmagQW+3ej26M/Ps
         1/V5/7XgtNIIWV/069/Ha7EWZ250XhgUR4/4CfhQNuYkrnlRWOt7XO2Fe5+UeH57QyLu
         xRTxAqxaCgRTvR5FDbp2RStG0CM58kz6fg6biammrHnVUblge9eD4k7JonXVEkFpR1KQ
         OWuvOSuXznJTrvD5QATRTM6C7GtmA87udstvEP2ntZbHK93HpL8CkPYhsjv38fXVEDxW
         raR9Va87k06UDc/PtmyHBbJKUw8NsHD2q9LnSbE0KHeDgmQ5vvaLk8IC358kKP4Xq+23
         yy9Q==
X-Forwarded-Encrypted: i=1; AJvYcCXDj8XFEDqzLhZ1TDDrT9WFsDUXpM7mEqQrpcuf4tOGGuS15YcyZslJtoz6Viw+pdMSJucb4aF2OkYA@vger.kernel.org
X-Gm-Message-State: AOJu0YzHaQ4hetQWA2PzIV2w4KRQBGVqMiFNySX9gfbLcpy0LBtmx24L
	JqTYZTSm70pvxk+HLKnfco7aGgY+O6yE33TOG2I63/sNdJUaUJK+NgqnGs3A8Do7HVc=
X-Gm-Gg: ATEYQzxtyMVYki/QgHoTYfmccOnOIOTDfagg64Zb226vMG5DwjRTvElGz/4a8W7gnEk
	iqxfwvGE441NhVN3b+im8N3JlkoqWWE0DrH1A6VdqglLUzopeGXWsNnXTGEas2Fn07tQ+up4BrB
	n7Kaf81UjkBW1A32zWu0XL/adHEViukpXnF8tMRaJvFv3t+8wDVIdQBa2z0Vp6F3waP/tZ4snWA
	hq855ExUTw01d22XwhiOEbu9jUwfs+AclbGAaoCK0FbDXoNHObH1ee+4Z7NWxADKMrJtlPNWOo+
	QoCd7VV+7f7yeeu821ztQ6U8SLRlcAsw1L8b6R4eva+9lIi4sKsSoPIgVwk1vf8b68N7w2E43BT
	JEweHvRcX9viLDqfF1Xu3OMdDlHmg1eZOraFVaitWSRXOLjeDu6ITZ0rNo7Qq7KiMOKYmDNM1uz
	zBMxgQKTmkmqatt4CBB+++ZTkDXtF/3D7l1+RlYkBCOEMIhMoEqFHccjxNnGRc
X-Received: by 2002:a05:6122:1684:b0:56b:5e7e:d3f8 with SMTP id 71dfb90a1353d-56ba716ceffmr1943521e0c.11.1773844415193;
        Wed, 18 Mar 2026 07:33:35 -0700 (PDT)
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com. [209.85.217.50])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56ba6e30ec6sm1813451e0c.1.2026.03.18.07.33.34
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 07:33:34 -0700 (PDT)
Received: by mail-vs1-f50.google.com with SMTP id ada2fe7eead31-6028bb29cc9so264392137.0
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 07:33:34 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCU+OuEDJNt2ZUgoyJz9SZUjJ8P4D/BZW0Bdirseu4GmA7mXVuElGqFeVaHvsFUjIoDuqYdz/DWAsetl@vger.kernel.org
X-Received: by 2002:a05:6102:370c:b0:5db:ca9e:b57d with SMTP id
 ada2fe7eead31-6027d2c07acmr1775626137.19.1773844414146; Wed, 18 Mar 2026
 07:33:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260318085119.44717-1-john.madieu.xa@bp.renesas.com> <20260318085119.44717-2-john.madieu.xa@bp.renesas.com>
In-Reply-To: <20260318085119.44717-2-john.madieu.xa@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 18 Mar 2026 15:33:23 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXzYa-+oP+Kg4cFmoZ64s-7GcFW_NQ1SgC2y1OZB-S=7w@mail.gmail.com>
X-Gm-Features: AaiRm53aZ3vOKz3xOV0p41g2dKm3hv4oZar4whKMHd360-1-SNNOc-RjUNHJAH4
Message-ID: <CAMuHMdXzYa-+oP+Kg4cFmoZ64s-7GcFW_NQ1SgC2y1OZB-S=7w@mail.gmail.com>
Subject: Re: [PATCH v9 1/4] clk: renesas: r9a09g047: Add PCIe clocks and reset
To: John Madieu <john.madieu.xa@bp.renesas.com>
Cc: claudiu.beznea.uj@bp.renesas.com, lpieralisi@kernel.org, 
	kwilczynski@kernel.org, mani@kernel.org, krzk+dt@kernel.org, robh@kernel.org, 
	bhelgaas@google.com, conor+dt@kernel.org, magnus.damm@gmail.com, 
	biju.das.jz@bp.renesas.com, linux-pci@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-clk@vger.kernel.org, john.madieu@gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-277295-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,kernel.org,google.com,gmail.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	NEURAL_SPAM(0.00)[0.140];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux-m68k.org:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,glider.be:email,mail.gmail.com:mid,renesas.com:email]
X-Rspamd-Queue-Id: CBEF32BD653
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi John,

On Wed, 18 Mar 2026 at 09:51, John Madieu <john.madieu.xa@bp.renesas.com> wrote:
> Add necessary clocks and reset entries for the PCIe controller
>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Signed-off-by: John Madieu <john.madieu.xa@bp.renesas.com>

Looks like you forgot to apply a few tags from Claudiu and Prabhakar?
Fortunately b4 kept track; will queue in renesas-clk for v7.1.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

