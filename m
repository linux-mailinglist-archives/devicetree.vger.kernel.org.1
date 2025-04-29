Return-Path: <devicetree+bounces-171892-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B2EAA0753
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 11:32:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2D535172E94
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 09:31:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D57FB2BE7A8;
	Tue, 29 Apr 2025 09:30:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="f8crdgM4"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346902BD5B5
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 09:30:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745919042; cv=none; b=k65jmVnw+SnF25GjIqJUGOv+EVXV10FuM6EUFeHbs10HhARmIKEy5Y7JGx5WFVLIhpQhKC7PZ0ybWjRYulJRiNJ1wkfrxxjuLPh0OytbyMfoMcHhnDj3zx2ZSwsNwvaCTPuW3BYRR2zyXEojNeWVZ5OAe+l49IkNST80NVCUt1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745919042; c=relaxed/simple;
	bh=hXonJzExV6f/cYOmpVW4RG/5EKao+OkAqFLmiQh/hcM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VZZQO4/EaASibd2bYCmZloBIZI8Si6Th8lRbpnsfJOdlL+uK+NlpK6xMHYpqXp9bHlit4zSG+HR4+LkkesDuZ4YUALaGZLZYI9dErFm08ilal4mA/nPH+9IjVvIkz/l2M/JLZc3RAhWp22a5u/Y97kQFWrt3v2eiDCNggisCzk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=f8crdgM4; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1745919039;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=aKFEHdgHcLwRfGZHvxEjeWO9rZ2vSungJ+/BDNwcd7k=;
	b=f8crdgM4nij/IsBdUNSVO4pscXLMdCBQt4Oaa0qJj22v5RQb8YUTnq4ebTXW4eiQDeSsAN
	wuf1Mgs1RSQYs6BVxPrLj57qMCvoEsLBKrP5ktdLSkKElJWPDRm2yUMuWRQjdpP95sTMPl
	2NsJhDNiYmTZ4tiyXm3AMYeVqmBO/q4=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-127-gSVL4IF4MgSI2beBmhTjRQ-1; Tue, 29 Apr 2025 05:30:37 -0400
X-MC-Unique: gSVL4IF4MgSI2beBmhTjRQ-1
X-Mimecast-MFC-AGG-ID: gSVL4IF4MgSI2beBmhTjRQ_1745919036
Received: by mail-ed1-f69.google.com with SMTP id 4fb4d7f45d1cf-5f64bb8ec7dso1197712a12.1
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 02:30:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745919036; x=1746523836;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aKFEHdgHcLwRfGZHvxEjeWO9rZ2vSungJ+/BDNwcd7k=;
        b=DsKbhsfg7wCYnA5HIGZD1shx/WHXSQRfln00hdvPEYEXIvl/qiEFHz7T4NHatK0d84
         sSKFbZmV0smusELciDwOYinTQghBH9mtEN3SLJ0nUKUvsSmg/Ab9VO15xuP8RDLalas+
         h/3m3F5SyNzChDDmXOoN3EFr4in7GXk+t1KbdI0TiRpH88/X803C0+KqQAUfYfjcG9Mc
         XXsl+Yg8BZy+lDhiVi5BdW3jk9sTAnsOBJkgaUHBYjFj6M8PLLkJjpQZOlXcBLcU06NY
         SIrg0UrcM6thfqB9NBfi783MjRMgidMDTGOpJAafrBQTbrYhTtVFzj3eeMNt4ogNHoEH
         dBcQ==
X-Forwarded-Encrypted: i=1; AJvYcCUFZNjEC1sjFlChvRICL4RoyjWBeYYAdWe0PaHp3PV68OasbGauhXlucWUag8p+74GbkfU1t1o/NfHU@vger.kernel.org
X-Gm-Message-State: AOJu0YxaK6TPtG7UFkSnFFR8KHMGaICQEbV1DP4x/rqQvHUlF8scKj9/
	aI1Ige6NwOVUycXHB8w8mnYgsM09jGwZx5b9fCCfBLE+A/wiKP/6y0nBL5PwyRBy6NLo5jAR0Sx
	+L4e2pQzmF6ZI5oBb7a/8QJo4MUDebyzattMO4vg1cxKSPrpEvHvxomBH48g=
X-Gm-Gg: ASbGncsPIBydajgYLrfPr1aCIU+VF2rE1vXAL76SAukoasT/wzrDDG6APXIhEvUKwfH
	nB67Qh+u5IzKrc00LoZ2UmfZL1leh35wynBWe+/cyPHKE7iQJqVXWjDcgKA2S0VzI7fQvDXASs6
	BgWHau/11UuBZUTGSyNksG04MFS3WxcBtMwDZzJD9Nl3S0v/Jl0pqKEx5ofkXy3viNLjV8ojbU8
	IemKHvOBQx8BSMpCI34yZ0HB0dJidwy74fGkilAPkXm228xTXPUlvMP5h1iMfgvt+zu19ombo26
	EQhLDDBb2jPM4bP5YCnEdDR7i8EYe67cUG81xft0XzmmdehMHqEL1slmIw4=
X-Received: by 2002:a05:6402:1e94:b0:5f4:c7b5:fd16 with SMTP id 4fb4d7f45d1cf-5f839224a59mr1942339a12.6.1745919035700;
        Tue, 29 Apr 2025 02:30:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFS2Aal7Wz+dVWPGKPbDkIqlChFVLqNPD6xjJGGYetpQ28hV8efTZJRlGmop13TtQQ6QsChxw==
X-Received: by 2002:a05:6402:1e94:b0:5f4:c7b5:fd16 with SMTP id 4fb4d7f45d1cf-5f839224a59mr1942313a12.6.1745919035327;
        Tue, 29 Apr 2025 02:30:35 -0700 (PDT)
Received: from ?IPV6:2a0d:3344:2726:1910:4ca0:1e29:d7a3:b897? ([2a0d:3344:2726:1910:4ca0:1e29:d7a3:b897])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f7016f5db6sm7332402a12.44.2025.04.29.02.30.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Apr 2025 02:30:34 -0700 (PDT)
Message-ID: <60643797-2466-4200-9abe-9956bfdeaa73@redhat.com>
Date: Tue, 29 Apr 2025 11:30:32 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v9 07/13] net: pse-pd: Add support for budget
 evaluation strategies
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
 <20250422-feature_poe_port_prio-v9-7-417fc007572d@bootlin.com>
Content-Language: en-US
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20250422-feature_poe_port_prio-v9-7-417fc007572d@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 4/22/25 4:56 PM, Kory Maincent wrote:
> @@ -223,6 +237,17 @@ struct pse_pi_pairset {
>   * @rdev: regulator represented by the PSE PI
>   * @admin_state_enabled: PI enabled state
>   * @pw_d: Power domain of the PSE PI
> + * @prio: Priority of the PSE PI. Used in static budget evaluation strategy
> + * @isr_pd_detected: PSE PI detection status managed by the interruption
> + *		     handler. This variable is relevant when the power enabled
> + *		     management is managed in software like the static
> + *		     budget evaluation strategy.
> + * @pw_allocated_mW: Power allocated to a PSE PI to manage power budget in
> + *		     static budget evaluation strategy.
> + * @_isr_counter_mismatch: Internal flag used in PSE core in case of a
> + *			   counter mismatch between regulator and PSE API.
> + *			   This is caused by a disable call in the interrupt
> + *			   context handler.

The name itself of this field is somewhat concerning, and I don't see it
set to any nonzero value here or in later patches.

Possibly it should be removed entirely???

/P


