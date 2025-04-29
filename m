Return-Path: <devicetree+bounces-171872-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 46659AA06A0
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 11:07:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 140277B09C9
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 09:06:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 339E829DB95;
	Tue, 29 Apr 2025 09:07:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="EtdBdlhb"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 965A229CB5C
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 09:07:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745917634; cv=none; b=Mz1jK3x+QufimiYlA7TMBtpXGohL92cIq83F3q/OU6fU2K1JVvHcmpHHCt+RG3ui78iTrLq5lwHnv68MdYCIHB6lb+XzhG0f28Cj0JP21Y0Er9REnCBgdBBYIDV40Oe12sk+WVAqaTSHygip1LNV5bEXeJVMe+O1IX2U1oN+6p8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745917634; c=relaxed/simple;
	bh=oh7CCnYDblP4XNung4PYLs6HI3+l/+Uc4f9IBVFDP2k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hrNp0z3/Gnef+5rXL8bhd7CoXmtBzVH69LyTpiNkQSup3BzuDAFhrb7q4BY54kRbHUNnNAAy2VQMC6xEyIw7gJPnxjrnehfEaR4pgmidLySKzU/XGXTu5lNNuXdDUeujpArqcQBZ/1fgy5gbl8alGpDK9k7Tqcu75JFHUKYknwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=EtdBdlhb; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1745917631;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=mzyYtGASTCZH53kkh5r8Etd3SYnPqWVoda3Vr+Vvexk=;
	b=EtdBdlhb+8XBRCKwFF3oorjfJi9XvQhPwCr9cz2zU0uxup7ryUSB4t4L1YieNBMSrNxGwh
	s4eeQIkinWBX6Rqg+/ECypcvKflivS3Cc0b1zscIDbX0fZ1GaBM/eAI4DNWjk6zaSOkpW5
	4Lxaqk+Rk5PVHEPzMdRrxgk2XxLA5uM=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-659-UL1I_t73MY-kLACtXOJVLg-1; Tue, 29 Apr 2025 05:07:09 -0400
X-MC-Unique: UL1I_t73MY-kLACtXOJVLg-1
X-Mimecast-MFC-AGG-ID: UL1I_t73MY-kLACtXOJVLg_1745917628
Received: by mail-ej1-f72.google.com with SMTP id a640c23a62f3a-ac3e0c1336dso440602666b.3
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 02:07:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745917628; x=1746522428;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mzyYtGASTCZH53kkh5r8Etd3SYnPqWVoda3Vr+Vvexk=;
        b=HAUkULbB4Q7GwjwNbzfwaWjTmEOjjrKIOfmsak7Om13eLCrpH68hkCpJMG0DlflU+i
         MoDxOMmlM8kkp76ndQJRdv6qtn5kDIZ9z/bffRQsqiJdI4WqWmi1j3gjBkIlGLjmPY1S
         3PicfwVKZc3rXVu8ZdhZfc5xnrOfuS8Ilmrjv0t2Cl+uzdZAm0emvOzyzNxlLj1vYg4o
         6l2Kl151NitaStviSBfUpZmp3VtEGXENdpsqdN6XMk0Wdjr+V5/0FNyImjXhgMFdnMR5
         +mitwcqjpfNeBDADcDnv+v6p7qcxaimDrQWRvLhLRJyPJUgW280P9ymYcjHNoTdB2Rko
         QavQ==
X-Forwarded-Encrypted: i=1; AJvYcCXpn45quFwj6zZod+hOe4LU9tJkcMyFYvoJXpstDXejKwHjNnNCgQmtIIUVN9yz2ecrlZhTAN9N3wQq@vger.kernel.org
X-Gm-Message-State: AOJu0YwxkIAu82qdZ8fzfMdX/inwu0mUlNfuK9MsnUfBOg8HuaNzGlox
	+GEJ8P/jDGeTWkFKWFYxOzyX1UxzsPSLOVcODt4lV3IOeOlz8VdwgGvoy/rXiTGdqMxV4IC8WoR
	sNnMkueJcXsy0GM1z2uFUCq+BEBA/8lB2t/hGg7oqLjtk6t9WT0Gv+/MRDFY=
X-Gm-Gg: ASbGncs5V5h1Dp+RbBGCowSWfksw1fPk3bmCr7tfEmc0Srl1J+65sko2N8XY086qm+y
	KfBXxnra/t9SM6/qvrdYJaedN//BfcnRghG7Nvt5349iaJwbWfHGzkTwKAsfRWwW4uIgQfx/kJu
	6EOud3J07zu6N3HgqW3HM7OIhjl+O1yYfYAVkjFzB1+naV/9vS3/AgvArIXpZDUmFz0C329RqAg
	b402N9d9BNjLuGEJFNxI/sP7lu6eeYnwNmefw6qAVbQvaVnWqCoYzlP1m7GGG+sduJFHuUQAivo
	obiUDqYmHoz9yfHwR3mVoMcWI5sXHRiDNgDarl1hiyb0BXAulxPfkDddcd4=
X-Received: by 2002:a17:906:6b83:b0:ace:cb59:6c4d with SMTP id a640c23a62f3a-acecb596f66mr114676566b.43.1745917627850;
        Tue, 29 Apr 2025 02:07:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH0UT9RESKMoOz8328LlBMB1TkH6XGlQcYjJuX9WOxFYoUYjXafd0Mghnrx4VAIMHLBk84pgQ==
X-Received: by 2002:a17:906:6b83:b0:ace:cb59:6c4d with SMTP id a640c23a62f3a-acecb596f66mr114674466b.43.1745917627414;
        Tue, 29 Apr 2025 02:07:07 -0700 (PDT)
Received: from ?IPV6:2a0d:3344:2726:1910:4ca0:1e29:d7a3:b897? ([2a0d:3344:2726:1910:4ca0:1e29:d7a3:b897])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acec171fd52sm141333066b.166.2025.04.29.02.07.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Apr 2025 02:07:06 -0700 (PDT)
Message-ID: <366c8743-224b-4715-a2ff-399b16996621@redhat.com>
Date: Tue, 29 Apr 2025 11:07:04 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v9 03/13] net: pse-pd: tps23881: Add support for
 PSE events and interrupts
To: Kory Maincent <kory.maincent@bootlin.com>, Andrew Lunn <andrew@lunn.ch>,
 Oleksij Rempel <o.rempel@pengutronix.de>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 Donald Hunter <donald.hunter@gmail.com>, Rob Herring <robh@kernel.org>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>,
 Heiner Kallweit <hkallweit1@gmail.com>, Russell King
 <linux@armlinux.org.uk>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, Kyle Swenson <kyle.swenson@est.tech>,
 Dent Project <dentproject@linuxfoundation.org>, kernel@pengutronix.de,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250422-feature_poe_port_prio-v9-0-417fc007572d@bootlin.com>
 <20250422-feature_poe_port_prio-v9-3-417fc007572d@bootlin.com>
Content-Language: en-US
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20250422-feature_poe_port_prio-v9-3-417fc007572d@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 4/22/25 4:56 PM, Kory Maincent wrote:
> +/* Convert interrupt events to 0xff to be aligned with the chan
> + * number.
> + */
> +static u8 tps23881_irq_export_chans_helper(u16 reg_val, u8 field_offset)
> +{
> +	u8 val;
> +
> +	val = (reg_val >> (4 + field_offset) & 0xf0) |
> +	      (reg_val >> field_offset & 0x0f);

I'm probably low on coffee but I don't see why the above could not be
replaced with:

	return reg_val >> field_offset;

(given that the return type is u8)

/P


