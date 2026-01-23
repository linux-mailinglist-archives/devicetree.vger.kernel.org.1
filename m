Return-Path: <devicetree+bounces-258947-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ANlaJlJ4c2kfwAAAu9opvQ
	(envelope-from <devicetree+bounces-258947-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 14:32:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E0847646A
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 14:32:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1205030160D0
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 13:32:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22E9E2F39D7;
	Fri, 23 Jan 2026 13:32:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com [209.85.221.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD635231845
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 13:31:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769175120; cv=none; b=T6elpbyKdts3NfR8kxCjbmwBAwOAjLRMRwu05hpJbfL5tkb6/Sw54jWXQMW/PjDlM1cE5P5sB96iCxvW0f8T26CK8B6pF9Va+ztWXxRHh0pMYC7D49/oVqmSGdHUdSy1VG1yeHXgVgFIMRkNJoIuJ4+T33YTP9EMFT8fFu9xI/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769175120; c=relaxed/simple;
	bh=YGWx7W4coTEOQGPVsFtw2NFIdIsKyCShVU2lesOZnOM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hWpFPodrOf8wOzpwwBtNPkGHx4jK2ByxIQeL44kNBG0wW6wcnOtzIjyUp6l/aOEGrCSlHY5q4YnVylUsLiZy18QUaKT4yCKnLQsSlHY0z22DrckXXnmAPV8JJmG284U7Gt542ZlNUlrPSqgRbjteaQGVEXFA5/XFjNA+qZffLuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f182.google.com with SMTP id 71dfb90a1353d-5664393d409so177877e0c.0
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 05:31:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769175118; x=1769779918;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RpS2H3SdIy7+x5vUo7+a2x6ndejrFYA8bNDO09Q1vNI=;
        b=mv0SwaPcRMD+CjlbotVbEydwkKue/xV79jQQCJy391MMSVUX1MWbCgHIMkNwAUBHU2
         9fZl1aYbimiyQNVwJxZuB5qqwHY1wX7vVGHA1vYG1ZNNNOarG79e0JnTNgCnBfA2B5Vc
         hlOBsWOSCklf5i8GfWUvGICOzKhPeCyOzTq69stVLy19sWsjrTN3iYHFO/wD1YGyuirm
         zS9Scp6ym4v7E0myMWJvJnh/zqlLPtSXi2Yht4DWrnNNhRNR9bdzW4KmNAIIfOHa0a/7
         6g44nhniohfcYTv6sV8UoxZ4vTIsqdu9iEyhLxu6ynRZuGFxIpnyJv2cWKiQ2BFFmqQP
         LBHg==
X-Forwarded-Encrypted: i=1; AJvYcCWu1sMalh82m0cWg7bGzOuRo738np4uvwp73/7lVKjqJels2Kf7VL/DsZJSiDVPUvtJH+sCEJZtVBzK@vger.kernel.org
X-Gm-Message-State: AOJu0YzHGLyxTTnYRRwDlcsm2rUUhWWU/fHnAd5uXrroT2jYVn3H8tSp
	Tgqmh7K/jNO/gaBc8i/ZRZLg4zWC7TmQbHRFrO8EGLSpYKo9UHaROZvHxRyQb8mK
X-Gm-Gg: AZuq6aL50xO5Tx8vkhx6015S31gKHewCxO8XHPOAWMyaNlkLDDvQq2D7tKgHKEMEk2I
	VKjEfDJRdkMrPsPKtiuSm78OGn6yR8owFyriLaaR1gqvZOkYPIH6phev8crkDoLx6mJ3S6AcbJ2
	BrnPiK323ctZIDM1YevGkioCk46yNDxJ3nWtYeGuHPEcjOJEI8PnjH/+4Wp9IMvIvO2+t676LPs
	5K8uWxZ5WZOaQZYS/93FKLRXOX+3ltjJFieBThrgZtyIJ1rraDP7b/mGtgvGuUFDNSr921/5Ij/
	0ObU6cgVpvLcF8Hc5vo/QoGjxShRJ/d771iYP2WXv7AzoGkHGFFxLWYRkH6iWf9Zts9yinTdggA
	YlH9BQ78twtpkd34PhNjvk56z7MoI1RG+vKbDeTlPyvt5KLtzXICe5xt9WyfZKX194VCBUM1Rk3
	7TA/hkZp8GdEBVGJgcJ95+NI81P3jD/BRGleePnfgcUFnoIEPn
X-Received: by 2002:a05:6122:6e01:b0:559:58a5:f6cc with SMTP id 71dfb90a1353d-56645b2928dmr361427e0c.4.1769175117656;
        Fri, 23 Jan 2026 05:31:57 -0800 (PST)
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com. [209.85.222.51])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5663fa96675sm472919e0c.9.2026.01.23.05.31.55
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Jan 2026 05:31:56 -0800 (PST)
Received: by mail-ua1-f51.google.com with SMTP id a1e0cc1a2514c-9480c6f8b43so594242241.2
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 05:31:55 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVHYTX7b2KYWXGv8d+Wp7gXcPtyARRQ72z0yjKfTXYM28B25W8LGR796Mft+Egn1G93VIOzBSpNHpgr@vger.kernel.org
X-Received: by 2002:a05:6102:cd0:b0:5ea:67f4:c1ad with SMTP id
 ada2fe7eead31-5f5586773e5mr314116137.21.1769175115274; Fri, 23 Jan 2026
 05:31:55 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260118135038.8033-1-marek.vasut+renesas@mailbox.org> <20260118135038.8033-6-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20260118135038.8033-6-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 23 Jan 2026 14:31:43 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUFjfe-3YTBQ37bbfgH5xXf_1cQZ8_58vLCQNc=5caF1g@mail.gmail.com>
X-Gm-Features: AZwV_Qhn6Z025XcB1tu3nu-plKR7LvAJNMlqwBqF2kc7a-H-YRSLtx_zGjZz-tc
Message-ID: <CAMuHMdUFjfe-3YTBQ37bbfgH5xXf_1cQZ8_58vLCQNc=5caF1g@mail.gmail.com>
Subject: Re: [PATCH v2 5/9] arm64: dts: renesas: r8a77990: Describe PCIe root port
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,kernel.org,gmail.com,linaro.org,renesas.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-258947-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.989];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,linux-m68k.org:email,mailbox.org:email,glider.be:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0E0847646A
X-Rspamd-Action: no action

On Sun, 18 Jan 2026 at 14:51, Marek Vasut
<marek.vasut+renesas@mailbox.org> wrote:
> Add node which describes the root port in the PCIe controller DT node.
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

