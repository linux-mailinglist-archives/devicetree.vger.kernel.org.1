Return-Path: <devicetree+bounces-274605-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2NheE03DsmmvPAAAu9opvQ
	(envelope-from <devicetree+bounces-274605-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 14:44:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D463F272D29
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 14:44:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 29ED1314B7BB
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 13:41:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF7703B9D97;
	Thu, 12 Mar 2026 13:41:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FC+y+b3U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31EC523ABAA
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 13:41:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773322873; cv=none; b=A4kSt17mLpNTBfydp9Md0g9G4u9P+wxmG0skF/D1t78NOmoRXsONRPqwYjkpOj2mW0MYzPStqtnv7+IlU5PdV2ZKYVk1xsKtLHoA5Nhvv141Nmh+vZewUivgWkmXbBLRJkD/Xp2JIn7y6s4XzGpwQuE/vVg2uCeFR2FSWoFJ1zE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773322873; c=relaxed/simple;
	bh=waraj5aVzmh8TaApwAwE+I7GTdNW5H0awz3aoMmNyyo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=U5YFjAllPc7hKS5ZoRJkTSvH/qrW5+PZXAE9KvhYQO/gsvpRCPJz2ieYIr5dMM27+P/bdAv1FHPpfwX8B3NlMcNg+uGvwi6vykgJ0PjvEIExwNlhkjgV/GGCCVc6cMCX8z6sw4PyggPcMqoIsh98iMv0HA/EL1F2crqwlAMtyTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FC+y+b3U; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-660ea6ceb5aso3332766a12.0
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 06:41:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773322869; x=1773927669; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CAwHxaCXl501xCvwTjF8MsYHH2W+UlwYAi/493OFfIU=;
        b=FC+y+b3UtlYe9p7/e8Br0wM5PCjo1zky6OiEZd3JefPnp6yIKL/UNYxWQMAafJSqkb
         bvTK2QKxLx05oDfsfWu8j7OIqbN6aQc3sHHXiXfIIleWaLP5Z7dql1Pca3Z3thNBu25c
         Ffk9rWEu97SruD0ImfeQDxOrHD3ghZGG5vWdHLno5WZj4EK19KU+s6zrVTyzFdJGCrDs
         XlW1IzG7KDwWaosCwXmQa0jv0zqPGH0kYFu2ydQQI4FxDKdJWLPn4TIKPHZasesG8qbu
         sefFwMrK9gYYJZjMnmPZqINqDFsznCd1jsd0pp0t2+5ZEssDrvK97I/tnuUJ2oGBR6Z0
         r0Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773322869; x=1773927669;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CAwHxaCXl501xCvwTjF8MsYHH2W+UlwYAi/493OFfIU=;
        b=FGH8KtPIQWP5x9byUbSB3ghnMkxmG6po6XlUKCj1PTHTLEvvCwznTafVFJPCo3Ndww
         2CQ90myrHk5GdFYollDod4Jv1vl4Z+mskvYWPwwguTo1yS3J1G9aRZaADSRQ4HltV/qd
         05seKjfJlNCEF0D0vpfyg96yswg8qVGuwm82B9FLyl/O9pQ52mvMWAy6fuaeMtGGYtJB
         AatzY4TKFRvAt4Ljd1jeZE/vOBARfrOl8KiOIaNJtNEQ6KuiaGJuuZKQR4uFpZnc9qSp
         LVDC4NaA3Aqh45ztTfGFL/3sdtoRqOOJpS4qN5XDaYYr5jpwCo5HAzCOuz8vR9ykXI7D
         2w9A==
X-Forwarded-Encrypted: i=1; AJvYcCWn1IUvwlAn6hfQPdT7emQKjaOxLMRCcYTs/UrrLNvTZvRglB0kNA608bYds2oNIk6mv580K0cs10oV@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9BM+ktbUjSJLmu8xtlPzJ99Ej1DswmN6/xxzEABfdoZfvZZvB
	+/6+hQR0HgPpTCOLEsPqvhw7rUTO5eC6D58o68Qop5DDGHXCefSz1pBa
X-Gm-Gg: ATEYQzz4cO9jaz6hVLhu6/XaBs0dKm650hnFksyLn65dhYjEDLFGl32sfwsj0Z9kd72
	srfLNbokUoJAlU27vXP0ETLSDonkr/i3PQHSZAtpiRzush+mBDQv1pytO+WK6k0snBPHyw+2GbF
	Y5uylC292NubbWRi3DMXRk56KG7HcW8Y9bNv5sW4PKZ4QP6TIZ1VU8GeC2tBP+tVpnRaipg5vR1
	PTNnrIjG7k0g0z42bs947anr3dTRc6AOYdJXr/SEvmdnA8El+1saCBmSVB/DTsWxGmlsysBmL7d
	w1GPjXYug0fQ1wz951+jcuMaSNRXcRBGCp076RJLiEC0SvEkc3LlehSsUP1xnSvvR5oVPZ5AT+e
	AScWUcCZsHzpIDxVYSEO9YsCMC/3g9+XB/GfRvNVB7dkxlHWTzr/g4vh+MYorHgx3iaVngH2cDm
	3SJfKdZ+4oa5pJfVo09nUkwXs=
X-Received: by 2002:a17:906:fe49:b0:b96:f02b:3d5a with SMTP id a640c23a62f3a-b973ffcee42mr208925966b.16.1773322869240;
        Thu, 12 Mar 2026 06:41:09 -0700 (PDT)
Received: from eichest-laptop ([77.109.188.37])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b972e14dc3asm135857166b.39.2026.03.12.06.41.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 06:41:08 -0700 (PDT)
Date: Thu, 12 Mar 2026 14:41:07 +0100
From: Stefan Eichenberger <eichest@gmail.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: net: micrel: Sort lists
Message-ID: <abLCc6Kb6xIQiMZr@eichest-laptop>
References: <cover.1773321267.git.geert+renesas@glider.be>
 <013afe74bef9a4d4af8b5a204cb4891518f7274d.1773321267.git.geert+renesas@glider.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <013afe74bef9a4d4af8b5a204cb4891518f7274d.1773321267.git.geert+renesas@glider.be>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274605-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[eichest@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,netdev,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,glider.be:email]
X-Rspamd-Queue-Id: D463F272D29
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 12, 2026 at 02:27:35PM +0100, Geert Uytterhoeven wrote:
> Sort lists of PHY models and compatible values alphabetically.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
>  Documentation/devicetree/bindings/net/micrel.yaml | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/net/micrel.yaml b/Documentation/devicetree/bindings/net/micrel.yaml
> index ecc00169ef805dc2..5d25f0d0a508a6df 100644
> --- a/Documentation/devicetree/bindings/net/micrel.yaml
> +++ b/Documentation/devicetree/bindings/net/micrel.yaml
> @@ -51,9 +51,9 @@ properties:
>        bits that are currently supported:
>  
>        KSZ8001: register 0x1e, bits 15..14
> -      KSZ8041: register 0x1e, bits 15..14
>        KSZ8021: register 0x1f, bits 5..4
>        KSZ8031: register 0x1f, bits 5..4
> +      KSZ8041: register 0x1e, bits 15..14
>        KSZ8051: register 0x1f, bits 5..4
>        KSZ8081: register 0x1f, bits 5..4
>        KSZ8091: register 0x1f, bits 5..4
> @@ -80,9 +80,9 @@ allOf:
>              contains:
>                enum:
>                  - ethernet-phy-id0022.1510
> +                - ethernet-phy-id0022.1550
>                  - ethernet-phy-id0022.1555
>                  - ethernet-phy-id0022.1556
> -                - ethernet-phy-id0022.1550
>                  - ethernet-phy-id0022.1560
>                  - ethernet-phy-id0022.161a
>      then:

Looks good to me, thanks for the cleanup.

Reviewed-by: Stefan Eichenberger <eichest@gmail.com>

