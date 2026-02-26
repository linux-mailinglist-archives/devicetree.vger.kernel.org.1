Return-Path: <devicetree+bounces-268788-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MC9BBX8toGm0fwQAu9opvQ
	(envelope-from <devicetree+bounces-268788-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 12:24:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 623331A5007
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 12:24:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 25A13306C538
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 11:24:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84C44363C7D;
	Thu, 26 Feb 2026 11:24:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="CzE5ERLT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E369313E14
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 11:24:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772105084; cv=none; b=ewstkcXoSJbVpJpQ2HLTZPZO0ZaqRhtRRQ6SSZdH0HXkRqef59SNZqhT15NC0g3UREgrMVfg/7eE+i3zhTC/Rxtc4/0cpPZHYkNDmIHKq0KpJ3glvOF44yBDbJ5oJdT8+nLbtHbbn36MZ4fExT6GJ9RkoNQVl3zdX2DmgJHSvJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772105084; c=relaxed/simple;
	bh=RKgPd/GBwQeJeiT3QoM+S4hvtbVzz7BLxXaDu5sy87Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=t5GBsO4HCnTRW1SU1F7t3ZHzhkqz6Lvguuxyi+ZU55UHgPOA25HIZSMhEm8pbwmZ6vfPD8cTOFyd8iO/ntXSjqXHJdwmuNeO0RkZ5wxQqPuFELl1NIGrGlF1aHE7iaEq9SgD4FHGumtMvPdzRi8HlGnYpou2AuKIljRPghGNpVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=CzE5ERLT; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4837584120eso5136265e9.1
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 03:24:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1772105082; x=1772709882; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4ODkeaFlJZUdLMuXw3JdwZWoJ6IvTuZ9KgizpGtwPzs=;
        b=CzE5ERLTMmEc6DftoP6LbcsblldbUt6uAQfCSOyEY+CfE6QBFkkXjMJnfdREc75ejv
         a8q+v+qPqXEEmkL/EP9pQyn551e5UPaFeswNW9Z3hGa7L7iJuHYjJrkxoPFcxuyJOSEI
         PEs8lBQqc8p7390JmWBNh9djNhyMFLn7N2w+QyO1B69x8uVby1e5Ez0H54rsnA+Bw4hU
         H12On//9q6aav4OmsP5YH3d9GwCzfc2B3fEFQnrPx/slUqeRHFMaDGB4y2jGBeHF4dyi
         TSoPHevGPtdDm0pRp7D7y+lZs7lc4jmYJlhu3HQ6yC+gfsHqQaobvmRlQQkfOZVQLnS8
         iltQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772105082; x=1772709882;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4ODkeaFlJZUdLMuXw3JdwZWoJ6IvTuZ9KgizpGtwPzs=;
        b=mwpYURsnwQt/zvsfcj56t9jEGUFnh+95DE1GbhUqF9AvGxCD3m6vGvhWaLA+ndJokW
         rKbbJmOn50aKTvnlAuWF//7BwKlfmjRfvgav1lmplS4DNjy9mFZ3qGTeBaXxGqROQQkY
         4xaJPzo+su/YFldNuCYip6Usks7Eya9OEDkSRIiilPy44xQqKIvqkl7Sd0VFi2GoZwvP
         iznl52eRunrl+Cihv/nlyd56sgQ02sMcTtv2lNdTGB52x1BGgLEpVIUVidDDefDF8HVe
         aEeBlaFd2qNpwPnhJsGZZsPpqQitcejtZXU/1lGxNANBJ+WeCUeXGYVqOjRFeWHBxBHU
         Xn8g==
X-Forwarded-Encrypted: i=1; AJvYcCWWpX2MbgXYjMwmXQoKVsEt0/B5Gp2SA5Fa+odhGxdBBfVs1Cs/D2a5cJTNi4p9/0FeSOkpS9ljU06i@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5DpqrY1C2JvV2gzXHNCf/GnyqzjG1wLm0A30NK/giXrRQW6Hh
	AkCuERaN/g045AShXyperYlBIvQHBw22Jh/XrzqtAerau9na2Y6lM9ByIoEwv7ZXX8w=
X-Gm-Gg: ATEYQzwHDBHJZVT48KRTdFflxREvvjiLqOWYG+ba8+6Lre3oqleBOiFM1W0uunDihjf
	Tmr2vfG4Xqv54STblQUSDauWswt7sxIy52eJvD02lmmxLZCPIQa2gT8thlFUg5jrpkTLVQ+s1eH
	amvs0In5lO3ippS2KahWvmtZRyl8MOmPUustd2yxEpH6U7jnLnU0nxRYcbGLW7r7pDRYBtnadKn
	En2kCg64nJD7TRpaP1jF2AMj+DqMgq+iP9JAh4lOi4udLgNH8ermI5gvQIJBM8iReI67y1Nuq0A
	xDRHEmZcIll3rTNHL0TteQzyoYfBSektceVsWF5RFIynMoGO7FfeGxocjf5x8gdZSLiclEmJWiS
	ADVO8HTnL+HBtKjQ2SwGhSKZfIgBgWpXXpOx/XX5iAp/EuD96fwlsnJYJbvb6JwPOD/Unbo+u4U
	nebIM6IUDkMJ9DtnKmhOOzH5wx9T1szA==
X-Received: by 2002:a05:600c:34c3:b0:47a:814c:eea1 with SMTP id 5b1f17b1804b1-483c21bd28emr68934685e9.35.1772105081629;
        Thu, 26 Feb 2026 03:24:41 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.73])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bfb29715sm87738265e9.0.2026.02.26.03.24.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Feb 2026 03:24:41 -0800 (PST)
Message-ID: <c6230f66-3d0e-4cdd-b870-cbcdb93037fa@tuxon.dev>
Date: Thu, 26 Feb 2026 13:24:39 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 12/16] PCI: rzg3s-host: Add PCIe Gen3 (8.0 GT/s) link
 speed support
To: John Madieu <john.madieu.xa@bp.renesas.com>,
 claudiu.beznea.uj@bp.renesas.com, lpieralisi@kernel.org,
 kwilczynski@kernel.org, mani@kernel.org, geert+renesas@glider.be,
 krzk+dt@kernel.org
Cc: robh@kernel.org, bhelgaas@google.com, conor+dt@kernel.org,
 magnus.damm@gmail.com, biju.das.jz@bp.renesas.com,
 linux-pci@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, john.madieu@gmail.com
References: <20260219223542.6364-1-john.madieu.xa@bp.renesas.com>
 <20260219223542.6364-13-john.madieu.xa@bp.renesas.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260219223542.6364-13-john.madieu.xa@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[tuxon.dev:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-268788-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[tuxon.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,google.com,gmail.com,bp.renesas.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[tuxon.dev:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 623331A5007
X-Rspamd-Action: no action

Hi, John,

On 2/20/26 00:35, John Madieu wrote:
> Extend the link speed configuration to support Gen3 (8.0 GT/s) in addition
> to Gen2 (5.0 GT/s). This is required for RZ/G3E PCIe host support, which is
> Gen3 capable.
> 
> Instead of relying on DT max-link-speed for configuration, read the hardware

checkpatch warning on this line:

WARNING: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#10:
Instead of relying on DT max-link-speed for configuration, read the hardware

Could you please adjust it?

Thank you,
Claudiu

