Return-Path: <devicetree+bounces-277707-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MAEfBWfUu2k4owIAu9opvQ
	(envelope-from <devicetree+bounces-277707-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 11:48:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 676302C9BB8
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 11:48:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2615A301545D
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 10:44:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0728A3C344C;
	Thu, 19 Mar 2026 10:44:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="chR08dS0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90AC83C2797
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 10:44:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.47
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773917090; cv=pass; b=OBPCAVT2tscQLbWqWXJdpytpPBzoyEG37MpnbXkIq1q5rAj9YL8kxB/6SXjE/ufZf2/HSUMgjXypPuPc1zJYCosB7E8bEAPU9VYRXAzZ6sd2+X6wjKQzKYVFpaEOmZgmLKnV9uaQ6lbT2PjexA1j7CCkgarYqowDwkexzKmEdK0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773917090; c=relaxed/simple;
	bh=EiYofbmwlMfzv/ArY5NjYo10OUgrpmbug4B8jl033qM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=H2wHCrk4TQpsPE8rNqR5AwfToZ+UXEcnlYgv4xlik8h9wpEXoWOZJhSahnQ1oS865I+kpxh7REeOGwU5Zrv8grB12qxDg+e4o4qicuqLqEQ/C/6rUfMowKpDv4kYlqqmFjYTIv5k3l6exfXP6yee97joV5/QcNaRNEhVzGh+H2Q=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=chR08dS0; arc=pass smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-6611f41eebcso1145781a12.2
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 03:44:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773917088; cv=none;
        d=google.com; s=arc-20240605;
        b=fT3RApewwCYzVCFNn45pT9hg/LyK60XPLWqJcoCPxQCWXq0mN189MaAHe6J04eFsI9
         n7luoyGs3gd6lNxVz4K/U+yGt/ZlFgVko48AxhU75LkqaeZKjLzyIAH2mxu9PdT6IiZ3
         /CNbOrjXclhTcCFrHA1IWnWVsmoK9unb08fwT3v+cxn0VTRycPNX8sYmrAEWVigZR7aH
         rb8Aq0s3zwIPIYduCs6GIvK/0fvQhE24cyDY9fhSoAMCTONiXK89QTffrtq6FLSO2UmU
         R5iUog9/v4ivby1xTDmKnbJfwasdQ0uyN0a040sJLIZaBEa7TVqgNH1hoQgR/DuKjl+0
         hgMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=8nsXLrCC8XRALmE6EP9wDlaUdJlORBZ30G/UqxIe1EE=;
        fh=SnLUAF3Zyjb8dNc1T/lAHb6lnXqUldwaof7tBwS8pfo=;
        b=LeKVH4cAdoM5u0s+ASrEniT4GpsU3pFUh3XyFiS7LwNvLH5ImPizUfmiL2tFmyQpA5
         1CrKJVGfs18rM5OfrinpdycWQz8FgJhlzVIs9OBrnu9K/3Uf2a2SrHTEzP/gC3+oPev5
         dLIdbfClxQcLeD970SVCSAOPrPTONiKyQi4F2QyjUfIG4lWW+cRxmhPqTMcQoAIh+JAI
         3G1Q4VXqlILY9D+vE52yE/ylKK2P2iPGI8fspyhfZxa+9UUdX+Lh+Edg8xKHHefs+30G
         RH74o7BO2eznhTTk4s5EE/wJB3cygb7xvzn3W7G4DJH0jwid+R3x4/0pxvn7qzdA4U9n
         0L+g==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773917088; x=1774521888; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8nsXLrCC8XRALmE6EP9wDlaUdJlORBZ30G/UqxIe1EE=;
        b=chR08dS04ikmDgU7f5w0IwqvzESzg8c9wODVm8YQoEJF8XxctE+XvO2BjRXbtt5go0
         wGrHhCxnOJJIMW+ToEXVOXJYVWUOSTR5aicD+ZzGAY0IVcd1IjnMvlbpT2oLhowxBtrU
         1pBkdYp14DjhdqCKk6r/BpYxS6WOBFSj28GZDivX3vcz1maskS6iEqmrzEO6a7hevf+r
         6PsTvq1Km6REpPCgYaw2M6jT4SilHYsjufs7BTs1T2mxDspjoH4fUF7cto4KhaYdLu1J
         gnsFygZosc1laJsMy3BqGFMd3oloxKkFLZ9Sw8DZagvmoAJEIsfzA0DIiiChec/dDzYx
         1fyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773917088; x=1774521888;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8nsXLrCC8XRALmE6EP9wDlaUdJlORBZ30G/UqxIe1EE=;
        b=IpB0FF/6o1AKsdq7Xt73AtPr353N0VWlQ/3ooPhTKEGRXEIvPPuv+lSoqXGNEwnAtz
         1ocHWO5xpmg9OEX+2/vNLDP/H15W4Ek5eScf0q8RSEhNxIC0REBzlgFTWXkxks7NVOaR
         BiYzEBenehm4W3nWeIV29+eKdegYOiG3F0xf018g1nF7P4bn4ra5QEYjGMbDa/cAtf+Q
         5ZBmffUaIAQ/GH4Z0U+502DTrnwf5tjhZOpYSCN5y2E8VLQDeX+wG0hCvVi9zb4LRcOP
         6xsseIPKdXpLV1q23iFsGqIFGcFmHz6wDnVriE5xF/7eTLxNX0/VVaqdLXNqZxqhLCYz
         Z09g==
X-Forwarded-Encrypted: i=1; AJvYcCV258D25iVxjZhL8+UyQ5vYxpdJ0sx8jN4ktgXBzdpRsWPu5nMCa/1rQUAycHbGxfVgA0OUtYjDXR4y@vger.kernel.org
X-Gm-Message-State: AOJu0YybR4rRBb8VywA/qGPi94OmBc/WtR/zviCgEW8gP5j+tyaeMMIs
	vOKmN5+ed/QZRkk2xu+qLOSB7kB/CVerYAi5wp9vjqgGdyJUyZDXPBQENYTwM00rFo94AXTaNsH
	L/0snDdBGPIvOQu8n849uHmNj4kkUXko=
X-Gm-Gg: ATEYQzzQp0vCU1FvuMnecXAO2K1AKM/JSqXHGO21OtfsToUpmVnf7DwoIWsua9B6ohI
	I6CEGQqjNg5UJVTo3f53R21lIkAMufgchbdpNGBBBInyDbzb1UGgxXVoo0zGX/PfZ3DgKGfyIAS
	OJ2gjVZN5v3fsaUwJ7Syerx6PQspBJehuJe+ZZyq83BEuPGcTlzixxISbxHSJbYQzMYr73XC06S
	erEy+JJZaS2KDnNkd4dqnfJbVGt06x14v0MQubu6Ovqh7+2dcdxZu3O9FeP/dRoP+n4bbigZeuS
	gXtoHQ==
X-Received: by 2002:aa7:ca56:0:b0:667:ddf7:7d9d with SMTP id
 4fb4d7f45d1cf-667ddf7835fmr2510617a12.10.1773917087638; Thu, 19 Mar 2026
 03:44:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251127-b4-k1-thermal-v1-0-f32ce47b1aba@163.com>
In-Reply-To: <20251127-b4-k1-thermal-v1-0-f32ce47b1aba@163.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Thu, 19 Mar 2026 16:14:30 +0530
X-Gm-Features: AaiRm52C7IQCXAwHh87UFE9OwrOumGbtL8uwoXCOsBJxz_0fqoGXY7qT2wiZr5Q
Message-ID: <CANAwSgTp6urWYT9H96XR7viKv7Sy16L4exS2KR5PLq_FJ91xbQ@mail.gmail.com>
Subject: Re: [PATCH 0/3] thermal: spacemit: Add support for SpacemiT K1 SoC
 thermal sensor
To: Shuwei Wu <shuweiwoo@163.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277707-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[163.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.615];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linuxamoon@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[infradead.org:email,infradead.org:url,mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 676302C9BB8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Shuwei,

On Wed, 26 Nov 2025 at 17:27, Shuwei Wu <shuweiwoo@163.com> wrote:
>
> Introduce support for the on-die thermal sensor unit (TSU)
> found on the SpacemiT K1 SoC.
>
> Include the device tree binding documentation in YAML format, the
> thermal sensor driver implementation, and the device tree changes to
> enable the sensor on K1 SoC.
>
> Test logs:
> Hardware: OrangePi-RV2 integrates SpacemiT K1 SoC
> Kernel: 6.18.0-rc4 mainline
>
> Verified that all five thermal sensors are registered and reporting
> valid temperatures.
>
> $ cat /sys/class/thermal/thermal_zone*/type
> soc-thermal
> package-thermal
> gpu-thermal
> cluster0-thermal
> cluster1-thermal
>
> $ cat /sys/class/thermal/thermal_zone3/temp
> 28000
>
> Dynamic threshold and interrupt tests passed via sysfs trip_point
> manipulation.
>
> ---
> Shuwei Wu (3):
>       dt-bindings: thermal: Add SpacemiT K1 thermal sensor
>       thermal: K1: Add driver for K1 SoC thermal sensor
>       riscv: dts: spacemit: Add thermal sensor for K1 SoC
>
>  .../bindings/thermal/spacemit,k1-thermal.yaml      |  76 +++++
>  arch/riscv/boot/dts/spacemit/k1.dtsi               | 101 +++++++
>  drivers/thermal/Kconfig                            |  14 +
>  drivers/thermal/Makefile                           |   1 +
>  drivers/thermal/k1_thermal.c                       | 307 +++++++++++++++++++++
>  5 files changed, 499 insertions(+)
> ---
> base-commit: f5f2e20b1cbc5f9ea20b372d15967b24921ede19
> change-id: 20251124-b4-k1-thermal-eca906e6dd7a
>
> Best regards,

Tested-by: Anand Moon <linux.amoon@gmail.com>

Thanks
-Anand

> --
> Shuwei Wu <shuweiwoo@163.com>
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

