Return-Path: <devicetree+bounces-268936-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OJ72KHJ/oGnWkQQAu9opvQ
	(envelope-from <devicetree+bounces-268936-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 18:14:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 501A21ABFF4
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 18:14:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3911932EC561
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 16:35:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F169542E00B;
	Thu, 26 Feb 2026 16:06:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZWLEngQj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f174.google.com (mail-dy1-f174.google.com [74.125.82.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5294C9577
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 16:06:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772121995; cv=none; b=HslYFGtOXdqst+GHCZ3+TYOQ0TQCZ5F38+wNqGlA/0BVYULnNmC2SrdIkdI8baedwv3l9UVgL5IbvraP55cQc7rPd2BuoNNz19dHbHaVHC3ujXUwLxLh/zq0CzlsuaQKyyiwUHuRsYF3wDD1vZhF2cVaQpXFdYh2d5gwTLjUoXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772121995; c=relaxed/simple;
	bh=LlP3/1O8CB//0s/+CCxqGyTYuWA9OoLCrL9yKkS8zFI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SY3rZ6NMU68pUAHKeLbXJkb4bFtcHY3uSjWO8ODYxMGrFEWY96RPqg7rRT0v1NvjKnSWFqb9MgDLwUDhJksB1m7bDIeWaRIB1o+Z8ayz63At/pEAxecqC38HWJM+FAjOICbQvkZjN/PcZOr/L+wDYXL1S54KYR7vX8tfV96qxpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZWLEngQj; arc=none smtp.client-ip=74.125.82.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f174.google.com with SMTP id 5a478bee46e88-2ba895adfeaso1003402eec.0
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 08:06:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772121989; x=1772726789; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2UC1Q8+vyEP17hQt6/3sZmtkvys+UUPMl4+3szj6VoQ=;
        b=ZWLEngQjy1e6iZRf2/GhQpH2Fx38vTYrFqBsozQKEzDOE99TD8e+9k/khztz2sIiyL
         pO8pQCliay1zyoD1KEuQlherhNv2LkNnsVDqunR0HEbrHEVwEkZeI7zXqVTqmNOXfAyC
         9Auyd0l02cc+33LHbPQJN+tQ8lyxMHiPmv/MbDtFC+N7NH73QzQ1y6GrK19Sn7mmev+F
         CqnAiFoaoXSAmIN+aAQiSFaA9vg1oahZ5uYJddDWgBnt3SF7uYu/2O9aQYkCSkDlIkXc
         hG4UWoBXzi6FnZ/nj1P4TvhFmNywGLYe8omXckQQtgIQYM1rj1tgLV3lOjNuJ4H3G2ec
         MJ/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772121989; x=1772726789;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2UC1Q8+vyEP17hQt6/3sZmtkvys+UUPMl4+3szj6VoQ=;
        b=qvAtRHJsVvimWsGTXi92AKg8s2YAsMqdwLW2MKcgu4rZwTHOfuiMSivX33AyOyoXQb
         b9Fpdr0hX6Iar/Z0kYGjR231eRVzp7NNAxUeanBuh+LWZ1DJVB504atI55MEInzqedXR
         eYpCNKrxnZd4T4b878FXYS/96p2xWLmXRDSiMvPhBqamAWTB3/yi86qAy9AcXiKxuVpc
         R4p37qO2n4UGI2w2EPpEbIwDhwdtT6PafCdHM+rIqjokQOc7T5mZtGnMCkWDqV/dClnm
         IQLpAxmdzYt7p4WMvt6F786sE9JsY/M1WB0n1/RwA+wMsvNZrA2VZ2gOK3eS9gC/ujKL
         Ma4w==
X-Forwarded-Encrypted: i=1; AJvYcCW3ndPUHnKOdhyYgEixkstEibrQcJI7xhIOGQVMe+h2kyqaHDqKfT3faBjNub1bDJKcv8zbFarYq93v@vger.kernel.org
X-Gm-Message-State: AOJu0YyAvDUa9BjILujH/WB8uNyldkf/l1lJWPK1VwouGZVATJsXIDvr
	RroNRmaMCylxpuVO5TZlJ0IsDDh+unuRr3cwKjmMmxPX1cd2jZ7hjmKl
X-Gm-Gg: ATEYQzypy75IratoHlvlsZ35/yy5702SypL3m/KHxzz9yxHjT0NbZzxwa3/YVFq+Y2t
	hgOr5tYOb4NZuab9EYdtxyXMmSwP37zv1qOGGu+M3SQq+kcxAKLOoupXOksfH6i6jYmktn4wblt
	lpHQUDZTZeo5e5ioa0EXRloPNtKpR+59SCK47iSP3iEKTVyCxIh1krg6tauAx3B9lcxFZhxeAyi
	cxzpAoHQliNCXntLMTXKRZoSDwsKMqVKq+R5smfIf8ZTzTZz3jjDDE4/NAEnL3IyQGoI86h1Asz
	MD7ljLa1BQrkx9NCFTp60PXpOM5Ep28TTqaWzS6szagz7oKlchXcqAkt/8HflS9NAqM9V/Z2Oh0
	e8fe6O2pB81OOxfDnrvqe6FRs4jY3FdYCpFqIbIUsMKRU9HSRn/7CUTLBdpwrhMfvDMf2vyhW37
	YG7wQ5YveXlHu3IRr7+/eex0ht6uj0rKr9OauKqIYEEPXECWKloB7RXS7ILMwgJ6qX
X-Received: by 2002:a05:7301:1295:b0:2bd:cbc7:16ec with SMTP id 5a478bee46e88-2bdd3017066mr1122632eec.24.1772121988602;
        Thu, 26 Feb 2026 08:06:28 -0800 (PST)
Received: from google.com ([2a00:79e0:2ebe:8:a6ca:da9c:9e47:3e6b])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2bdd1f7e955sm2194157eec.32.2026.02.26.08.06.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 08:06:28 -0800 (PST)
Date: Thu, 26 Feb 2026 08:06:25 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	jikos@kernel.org, bentiss@kernel.org, dianders@chromium.org, 
	linux-input@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH V3 RESEND 0/2] Add tc3408 bindings and timing
Message-ID: <aaBvauUqgMgGYwhA@google.com>
References: <20260108063524.742464-1-yelangyan@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260108063524.742464-1-yelangyan@huaqin.corp-partner.google.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268936-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitrytorokhov@gmail.com,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 501A21ABFF4
X-Rspamd-Action: no action

On Thu, Jan 08, 2026 at 02:35:22PM +0800, Langyan Ye wrote:
> The tc3408 touch screen chip same as Elan eKTH6915 controller
> has a reset gpio. The difference is that they have different
> post_power_delay_ms.
> 
> According to the Parade TC3408 datasheet, the reset pin requires a
> pull-down duration longer than 10 ms, therefore post_power_delay_ms
> is set to 10. In addition, the chipset requires an initialization
> time greater than 300 ms after reset, so post_gpio_reset_on_delay_ms
> is configured as 300.
> 
> Changes in v3:
> - PATCH 2/2: Corrected post_gpio_reset_on_delay_ms: 100 -> 300
> - Link to v2: https://lore.kernel.org/all/20250820122520.3356738-1-yelangyan@huaqin.corp-partner.google.com/
> 
> Changes in v2:
> - PATCH 1/2: Drop redundant "bindings for" from subject
> - PATCH 1/2: Improve description (describe hardware instead of bindings)
> - PATCH 1/2: Drop "panel: true" property
> - PATCH 1/2: Drop redundant description for reset-gpios
> - PATCH 1/2: Use unevaluatedProperties: false instead of additionalProperties
> - Link to v1: https://lore.kernel.org/all/20250819034852.1230264-1-yelangyan@huaqin.corp-partner.google.com/
> 
> Langyan Ye (2):
>   dt-bindings: input: Add Parade TC3408 touchscreen controller
>   HID: i2c-hid: elan: Add parade-tc3408 timing
> 
>  .../bindings/input/parade,tc3408.yaml         | 68 +++++++++++++++++++
>  drivers/hid/i2c-hid/i2c-hid-of-elan.c         |  8 +++
>  2 files changed, 76 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/input/parade,tc3408.yaml

Applied the lot, thank you.

-- 
Dmitry

