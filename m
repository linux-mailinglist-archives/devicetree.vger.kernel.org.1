Return-Path: <devicetree+bounces-270131-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MHM6Jyu8pWn8FQAAu9opvQ
	(envelope-from <devicetree+bounces-270131-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 17:34:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 544961DCF3A
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 17:34:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 24F8B30BFD69
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 16:28:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4ACD741C2E5;
	Mon,  2 Mar 2026 16:28:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="A8qCg0m0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEF543FD13D
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 16:28:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772468915; cv=none; b=ASC//nsBXvQU7tjd5gv3uYsCuVLfevin3ItpKkajYkVNYy1O6C4/Cnvq1TSeLKL54XcUM3GAM49bpZc5sh3ayhV6Idzjd5EN//cEGH9du3x10AJ6Rb95ngo9CLJvamAlWAgp57KdEIG/L6qHfs9aKud9sBgMMS3DNICABtIvEVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772468915; c=relaxed/simple;
	bh=uBx35spdecr0Foh/80vdl9yoCBDNS30rMaVxtcY9Jps=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aCthUgQAiM4k99dPSwi+gpYF/4mVA348x/y9Q5G6FzcoewcfYfO57p/B8XuBRZGI2yWfjaXTF54BRYnbRh9Rbf+mIFjrxwAxCQZeg4iXRquOEjLkj/0/qBZF6wKMGAYRz7HthiCdUgTs4fWzQlnFVrQrz8y5kWQMASWuMRJapw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=A8qCg0m0; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4833115090dso48435795e9.3
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 08:28:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1772468910; x=1773073710; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SzwJxqhy0QNK9BireGlunz30/kBwTEVhSwOAZ1SWJvA=;
        b=A8qCg0m0Vidcv4VeF9WHMvykAbOo0fEO+KGUIOqQghcHNPObbQKHWFro2kkwvNxsKH
         Mg3kP3yBKu6d0oUUeYaC4IiuA2rqpRrnJttUdaipGB+bEIua87z7b8N7OUatWK7c67EK
         OvamKkoKhw4sVlyhAnz3HMwH+aRxNhAJxmTb8BluWU3YExHdEEYG41sdcRH/aAeCe/xU
         140MLlkuWbEc4SZWQ0wxwN1Hguy0AD+3qzmT7p+KYFL0fYYJBhWxA+QGJykJx3g+/cz7
         s0M1TpZRNLUNguM61fU+YLanlxpFJk7QsUY2ZL17cv24Q13F+DavF4lePRwL28PpaQqh
         9yKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772468910; x=1773073710;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SzwJxqhy0QNK9BireGlunz30/kBwTEVhSwOAZ1SWJvA=;
        b=Xq2lUdrM0Aoc6sDQtfgN/7DEIYSnYaYPQU1lxsPW3QSP/aXhKRX6rAl5THiOMwBiwp
         uDJGp/fSLUyYaST3LwU9paiyhFbhK73s7C9UzEhzXRdVmkoL36VABgDchWUBrYJSwCfR
         Qoi4TyHqR4t4LWD8blhacFipRFKW6ciwR6fZQBo3gJvq0AqQCf2rHjtbvMs6XpkKvwuf
         WVZ6y1A6ciwj3StOWWARpYyymLgn5Fo3CKHvI6TtGfmM4FN1HtGQR8O4RvK6CgEadNmI
         mcDV5kCUSykeY0q7am09po+SBezBmi+S7CX48s/M4j7rj04URKZk0ptOTbVFpvkCQMIE
         JdGw==
X-Forwarded-Encrypted: i=1; AJvYcCWKZWU4C6pwaBrMG2IOX7XnGFXArL6H3hIFUatDNoNkVQWKJ87IIuakBQAM3HBoXzHpd9HUPbmota4L@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0m5xGGDDIMJE8m88ATleCxa4WmBML9zcs/rxAtWqD3nJwX+Xx
	gw3CiTK+iaQwZ7IJdwbJUL3DEh9KLGp06Fg32QhgHjYxEG+w7uUYMDO3CNjS4Z8pURk=
X-Gm-Gg: ATEYQzync9HPGmhribbgsb1l/JgOJn5jT5h4X/krvupI+Qh5EZ2HgGL6diAwk7LXCTX
	ZvErGQHojknM72JW6zAUFd5PX6yWmeIancB8R3Cx1C2YdfqwL+PzVjsS9EiwvOr1+wrmwpwgVsU
	XJ4jGPh+o6ppIx7hgxV+2EKs2VS1foRTEKD/R1X2PtvGBIgTPt1d8aW5WrctjvOcycOBdPLCJ75
	MJeGBkUI1XkdgAl/uLrSN9ex5vxiyzQdty62AbUlzaVcwkMQmiIq+cnUxpDBR1e8MZIFsedaQhC
	/yzQShm9lnPIHYDMiQhu9UtCf7g+vEWjz7oyC9lZ/uHR5NskMCKuC13F2zdryFNIlfvM4nY8FwB
	c+9VB10xr4GYkfIR/XBqnh2UjUrOjcDA1Zw92zta1iZkae5gbuGp0kwS5/EpcRmLRSsKvDIF2GZ
	tH3K7bMILIV4ceOXCeVyhe/iPRzTln3LXlJwEj
X-Received: by 2002:a05:600c:3486:b0:480:3a72:524a with SMTP id 5b1f17b1804b1-483c9bed89emr257432255e9.19.1772468909910;
        Mon, 02 Mar 2026 08:28:29 -0800 (PST)
Received: from [172.19.170.194] ([213.233.104.147])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bd70e6c9sm366337995e9.8.2026.03.02.08.28.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2026 08:28:29 -0800 (PST)
Message-ID: <a22454c4-637e-4114-b43e-fa8cb1363cdb@tuxon.dev>
Date: Mon, 2 Mar 2026 18:28:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 09/15] PCI: rzg3s-host: Add SoC-specific configuration
 and initialization callbacks
To: John Madieu <john.madieu.xa@bp.renesas.com>,
 claudiu.beznea.uj@bp.renesas.com, lpieralisi@kernel.org,
 kwilczynski@kernel.org, mani@kernel.org, geert+renesas@glider.be,
 krzk+dt@kernel.org
Cc: robh@kernel.org, bhelgaas@google.com, conor+dt@kernel.org,
 magnus.damm@gmail.com, biju.das.jz@bp.renesas.com,
 linux-pci@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, john.madieu@gmail.com
References: <20260227153236.55988-1-john.madieu.xa@bp.renesas.com>
 <20260227153236.55988-10-john.madieu.xa@bp.renesas.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260227153236.55988-10-john.madieu.xa@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 544961DCF3A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[tuxon.dev:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,google.com,gmail.com,bp.renesas.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270131-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[tuxon.dev];
	DKIM_TRACE(0.00)[tuxon.dev:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action



On 2/27/26 17:32, John Madieu wrote:
> Add optional cfg_pre_init, cfg_post_init, and cfg_deinit callbacks
> to handle SoC-specific configuration methods. While RZ/G3S uses the Linux
> reset framework with dedicated reset lines, other SoC variants like RZ/G3E
> control configuration resets through PCIe AXI registers.
> 
> As Linux reset bulk API gracefully handles optional NULL reset lines
> (num_cfg_resets = 0 for RZ/G3E), the driver continues to use the standard
> reset framework when reset lines are available, while custom callbacks
> are only invoked when provided.
> 
> This provides a balanced pattern where:
> - RZ/G3S: Uses callbacks that fall back to the
>    reset framework

Nit: This fits on the previous line.

> - RZ/G3E: Sets num_cfg_resets=0, provides
>    cfg_pre_init/cfg_post_init/cfg_deinit
> 
> Add cfg_pre_init, cfg_post_init, and cfg_deinit callbacks to support
> custom configuration mechanism in preparation to RZ/G3E PCIe support.
> 
> Signed-off-by: John Madieu<john.madieu.xa@bp.renesas.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

