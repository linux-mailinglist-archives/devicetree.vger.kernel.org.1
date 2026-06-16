Return-Path: <devicetree+bounces-312351-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YvZ6JEUHMWo1agUAu9opvQ
	(envelope-from <devicetree+bounces-312351-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 10:20:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E509068D175
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 10:20:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linaro.org header.s=google header.b=NmruZcyp;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312351-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312351-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=linaro.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 429EA306CFE8
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 08:19:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E20C8409608;
	Tue, 16 Jun 2026 08:19:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C41E639B943
	for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 08:19:11 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781597952; cv=none; b=oxj6RyRq71wVEm4qhGkVuJJi7gQmAFxVIMvTjfaisIGEqpXmfdQJG9cEAt7OAEYe0PIPHzFfq3BhT8JglSpiA/8p9ZQu8rhJ0Fg27f8Mv9R7CeL4rYHqoRxFG7nPd27NIVO0b09pADL5AjBG1UbtjQcvB+Ivh2If7R9VcOZvWwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781597952; c=relaxed/simple;
	bh=xYc99uvXLsYWScO0EmNoWIRKvKiJpOTShn+ZEKrkN1Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GwXhdlKPCCuMNZgnykXdOmSW92qB/45HWNZn7HatDhR2yDY+ioRFR7KgzcneO7VkUwHK2aq5GTUkP05DYVM65wMTrA/lk3rt0TuaXy2CgCrUIUp/54o1PxKG+qwxxjDYcnhIJ+153/D8KuhdGtFzcILGjVfDXbuLdCC3YPmhsTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NmruZcyp; arc=none smtp.client-ip=209.85.214.181
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-2c0c3543590so29264695ad.2
        for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 01:19:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1781597951; x=1782202751; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=PhNt6MHC4AegleV/WbvHUk1ZYZMA3NIq1ay5U/dxpKQ=;
        b=NmruZcypNSsJastH8Y2pS4jNwmS1sFI7xh8KKStePYGaHsHMlpTy6v6t5pyvxbe19E
         o5f1t/nmgV3dIew3YjJNkQfJ6YdAMQGArhvN0Hab5K00Os1cbmNRtVvMt4jPr2nTEVHv
         RNv2HumhiaOqDsQ1HN2Oo18kjXc8PmAtWk3PqeObcBcgAqxYB5TC/4BLKRw8RymqUs7O
         e48kt2+42I3OboijgOcNVXJZ+dbqWSArZWmZ1xb02L1NSoLWHvdM4rNBCu011Dk8gpzx
         yN9SQLVUXLb1U2HayVyFb09WXlIjNmScGnRL+l5w6UazerL+7e4oxMkL1/W2RIgnB1db
         J8KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781597951; x=1782202751;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PhNt6MHC4AegleV/WbvHUk1ZYZMA3NIq1ay5U/dxpKQ=;
        b=eQ+KuMw5ImQz6VySsEGBME+ZLKh/VbR1lGsoA0s0+8neaJ/+HcYYXYfHKg1I6gtB8Y
         G9HqsdOs9XYpBAejSQRKeOySCLDfbJTaKRurBo+WzBnlN7x3VemgwTUwPNw7Y3yOQ7FK
         B92eqDgzstYHO6cqprC2UijfP2gaD4bDhEnoVNSoyYMcFLPuOdC0V5Relb4bER72mEGV
         S8pHdaG7/Mqc/tu4g4jWlj16mq+Witg8pFmU7Kzzr4DLs22qrT91p5iD8NczDt6l0U36
         rYRI675qSPdShr0SFtOSZUEwbLF8ETLnwBjJO0Oj9LPYykzd+gslCNvXWGGAPl9TzQ9C
         BrZg==
X-Forwarded-Encrypted: i=1; AFNElJ+HJ1atvalkuKy0SfZVhYx0sQhHGBegjT8p9QXO86qSZW0DeS68PLIrsbRyvY3tYdlcpfKhWQV3X/HE@vger.kernel.org
X-Gm-Message-State: AOJu0YytX3x5VqUlpGoqHCq+uvcryThjDbLN2hV5IW9A3MqdrhvQc1wg
	SWBR/BH6cxOTx0a5j9QtQfsLdJ07nsm+ixmGVX5wERJ4XrtPlyeXELilN9DM53tIAd8=
X-Gm-Gg: Acq92OGkgQUAW6qsTlRmEwZpg29/+zlu3hterqJIPIDAZNmoZF8ktzCeeYSf4OEUZzj
	6+l+KEBDeyBd75b0KCC3ZUbnBDZ4ahzBT1raEwsCBeaDgdfWmlPhaiTalQGeHMeau0XhL5yPcH3
	30GI0T5tF/9gVH5nI0xsPyViOgYq2EyY2bQNRAUnFTZVmFWDVNBQDyQb7pkoX8wi4sbhtXhIuLw
	kKjGeEwUtKporUQdzPVtbOB6v2e9NIZ6iAerP6+3TavKXtHF3C4fSyupkc13yme13HSXxCqukDr
	xti9u55FAw5o44kkb7GOxU+VxA5kR7sUBh8uFskD+GddxLRVY1gnYaPX7w+Yscs/05fDbk4K/S9
	ThUdYbbL8X81MHd10ODq1xJsmJeSTBNCoA9qJFxGVKiPqHpmXaXXUk2IrIqiFMpFg9NH5kxMvrN
	+O68Wrj+QtpKl0Yk5f84zJPcc=
X-Received: by 2002:a17:903:3890:b0:2bc:b80f:677e with SMTP id d9443c01a7336-2c69a1965ddmr27832715ad.25.1781597950906;
        Tue, 16 Jun 2026 01:19:10 -0700 (PDT)
Received: from localhost ([122.172.82.94])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c4327ac631sm124267105ad.44.2026.06.16.01.19.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jun 2026 01:19:10 -0700 (PDT)
Date: Tue, 16 Jun 2026 13:49:07 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Shuwei Wu <shuwei.wu@mailbox.org>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@kernel.org>, 
	linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	spacemit@lists.linux.dev, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 1/2] cpufreq: spacemit: Add K1 cpufreq driver
Message-ID: <nffvtnb765pa72xcfhmxe3wepxpld3e6265s7imvldbwounkzk@jmrrhtrwau34>
References: <20260612-shadow-deps-v3-0-2f3ba88611ff@mailbox.org>
 <20260612-shadow-deps-v3-1-2f3ba88611ff@mailbox.org>
 <bd4s2icqgusnuujvrpoag4cniy3g2e4bumecqxt5yffl77aqpq@kxg4dj4c2wk3>
 <DJ9EFPG561VZ.1WGRYYHJ2W9J9@mailbox.org>
 <wjwkykv555gkeqxabsqcdfn4lomcopawsv7bgm4bydc5likhjs@p3ca3p7wbri5>
 <DJ9M2IDYE6XZ.20RN5AFBYNB9Y@mailbox.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DJ9M2IDYE6XZ.20RN5AFBYNB9Y@mailbox.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-312351-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:shuwei.wu@mailbox.org,m:rafael@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:dlan@kernel.org,m:linux-pm@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:spacemit@lists.linux.dev,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[viresh.kumar@linaro.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[viresh.kumar@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,linaro.org:dkim,linaro.org:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E509068D175

On 15-06-26, 20:11, Shuwei Wu wrote:
> With two cpufreq-dt policies (one per cluster) and these ranges, neither cluster
> blocks the other. Tested on BPI-F3 and OrangePi Rv2 boards, works as expected.
> 
> Does this look good to you, or would you prefer a different approach?

Looks correct.

-- 
viresh

