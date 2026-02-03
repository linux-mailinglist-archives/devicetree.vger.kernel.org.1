Return-Path: <devicetree+bounces-262388-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qA+mM8dFgmlHRQMAu9opvQ
	(envelope-from <devicetree+bounces-262388-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 20:00:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 298F6DE01A
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 20:00:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F00C730A40B8
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 18:59:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA8D4366546;
	Tue,  3 Feb 2026 18:59:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nexthop.ai header.i=@nexthop.ai header.b="U6JeDelX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C49634BA21
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 18:59:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770145185; cv=none; b=OhqVVK0HvJ3Bnizs6nAuv8hoFJVHEboA1UdgMChmZffobjhzPZeXQuQvPQ558YNOF8TMwLxHYDVfFHLWfagOABXRtONmkp1x4BgJeCuFl089MHyDnbBNldmcobSSYe/hHrfexkv0uStfXNJrmveZRYxCrpQAk9KcNSxLbzYwqDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770145185; c=relaxed/simple;
	bh=PeH0sFwwpTINbEuwtPxgyvguZjBQwBi6mpvw3QmgLNM=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=mGlTFRmDssLiB66hOYxBS9moyOxdbLBYs0FKmu2lXsgg27tHjH7/n5i2Thi/5+bHQijikYhL4uwOsPt3B4JwEHEONC2Os+2Z1TGPGJf/p4cXGD5AE6pUevtzSV9Kf3IXmSLP7GTLdAo2shF4j49CMYaSQ8McydbGaNOS9En4Zzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexthop.ai; spf=pass smtp.mailfrom=nexthop.ai; dkim=pass (2048-bit key) header.d=nexthop.ai header.i=@nexthop.ai header.b=U6JeDelX; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexthop.ai
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nexthop.ai
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-8230d228372so3215073b3a.1
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 10:59:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nexthop.ai; s=google; t=1770145183; x=1770749983; darn=vger.kernel.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PeH0sFwwpTINbEuwtPxgyvguZjBQwBi6mpvw3QmgLNM=;
        b=U6JeDelXwmbX4W+AuPTXuDWDzO0IEFl6YVS91M10GoCNDY3qifAs874Xql69T2OZ0J
         3qgHumLuhggK6Xud84384xL+QjywRqT2P1Yv5E0/I3TrwL2TwL/z5ozrvLk3g2EHcvV6
         kTzQyNkpTqOYhNPoUdob++RLYZJAGAzxf2HJ28iOlt2GtKqCYeJ5z4aDiPU9ud9A+4uk
         F14s1xe7vV4vIeQ+61Hf++87ee70bZSYjV0stjedqlzww04ibaTz7J3Ke/mm/1pQU/ht
         KpqA5LK3w2ZLyo4hmzHApE6xTQce7nJ6Q4a1wQVVEDpUcAOOElNJhU+2tkAxZ6/SG6Uy
         WBZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770145183; x=1770749983;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PeH0sFwwpTINbEuwtPxgyvguZjBQwBi6mpvw3QmgLNM=;
        b=Rb57WLvhgI3Gfw3V5HZh8Ixjuo53jNSR/RYUR0ZjA1bEF3N/Xl/H6TaVEWVOt+34hp
         n2WlWHKLhhYFFf++t3ZJwKG9i2Wca5fOunIxzfwJgInz454UpA1NMv3NaA/tub3iXt99
         cKFdTAjS6C0n2PFQpHiuD432dKeFqKqGXNeDyzSBmXrbj5u3ZNVhzcfir5jhkJGdPFkc
         tEli+SL+kxG+hllY18VmmeCuG8inf9gPpMq0NFKv3ulILQV8KqvNY68yebJlFwkJim5R
         1ip/MPLH+qryshWoKcY20zXGozFtksTEGrZkEBlpHS4hqB8vLsCeoFUR8kbVjtz7KIUc
         d9DQ==
X-Forwarded-Encrypted: i=1; AJvYcCU9bV+u/la6rPGK7ErvEhmSTQE/dl+3j8Jh33S/IJ0eA6d68A4jQKoEpXRxSZ+oE329B1vRai+H32uo@vger.kernel.org
X-Gm-Message-State: AOJu0YyTB4Wj3fX41++xAyquUt2XQQkpzJjz6qXLls9b0JGxVHVzouq8
	31uHjBxd5cxpd6qzA7rm2N1lUGfIoBMxY0h389eV3hcgjwzb9q5si5l56n+j85Ru71Y=
X-Gm-Gg: AZuq6aKOnbqCoVPVz1VQ//Mr30aNmiAW3OCLM3gzB6Zd0sBRyIdjyfzz/RiCCPZ5VyU
	ZipItBN56y2Mcviu2wDFiHsATjS+Ep/9ZF7qA4HhaUwUcmZL45n8ysEAOM2317hMxvdgzR5mDLl
	14ZmcE3figaQMrsP1hLt7y9JMIckTXwAyqeYa1JOSetZ/vrTontm8EhupRmQXUTj5RVxGtx1QCm
	CKq6pPj2ZPGTzv7NkFP7reOAwGrFNWgQrPkO58CVaceIRcQiT6pPFg+SdfqA8RuVACJ7oJmXX4/
	kf1tlpJlsniAOI3HRgtODqFtLFU+Jh8MPlEN2+TnbGUKqjwtkB0nIJhDV6vRiCCCZqi/X+j7B/4
	BMIdKwhzBMVs/tM6eIiSPYTDGA7xDFkxRV/4FjpilGc4Lym9O2YDdo/W/NR1dBMCeB2HwKgpzUc
	WOVEqWZZk5Ejf8cql2FDkRMfu4sL8ZdfOh1HbSC/tFaQIQAA==
X-Received: by 2002:a05:6a21:328e:b0:38e:87d7:7b95 with SMTP id adf61e73a8af0-393720d09bbmr409396637.20.1770145183502;
        Tue, 03 Feb 2026 10:59:43 -0800 (PST)
Received: from smtpclient.apple ([2601:602:8701:5361:2dd6:2d53:d593:7d46])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c6c85065f6fsm51846a12.26.2026.02.03.10.59.41
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Feb 2026 10:59:42 -0800 (PST)
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.300.41.1.7\))
Subject: Re: [PATCH v9 4/7] i2c: xiic: cosmetic cleanup
From: Abdurrahman Hussain <abdurrahman@nexthop.ai>
In-Reply-To: <aYIXagCXYb4DrDLp@smile.fi.intel.com>
Date: Tue, 3 Feb 2026 10:59:31 -0800
Cc: Michal Simek <michal.simek@amd.com>,
 Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <DE565BCD-28D6-4844-BCEE-A1F60DC84662@nexthop.ai>
References: <20260202-i2c-xiic-v9-0-ce4695f5267d@nexthop.ai>
 <20260202-i2c-xiic-v9-4-ce4695f5267d@nexthop.ai>
 <aYIXagCXYb4DrDLp@smile.fi.intel.com>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
X-Mailer: Apple Mail (2.3864.300.41.1.7)
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[nexthop.ai:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[nexthop.ai:+];
	DMARC_NA(0.00)[nexthop.ai];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262388-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abdurrahman@nexthop.ai,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nexthop.ai:mid,nexthop.ai:dkim,intel.com:email]
X-Rspamd-Queue-Id: 298F6DE01A
X-Rspamd-Action: no action



> On Feb 3, 2026, at 7:42=E2=80=AFAM, Andy Shevchenko =
<andriy.shevchenko@intel.com> wrote:
>=20
> On Mon, Feb 02, 2026 at 08:37:21PM +0000, Abdurrahman Hussain via B4 =
Relay wrote:
>=20
>> Re-use dev pointer instead of referencing &pdev->dev everywhere.
>=20
> ...
>=20
>> - dev_dbg(&pdev->dev, "mmio %08lx irq %d scl clock frequency %d\n",
>> + dev_dbg(dev, "mmio %08lx irq %d scl clock frequency %d\n",
>> (unsigned long)res->start, irq, i2c->i2c_clk);
>=20
> No need to do this here as we change the format string afterwards =
anyway.
>=20
> But I leave it up to Andi, I won't prevent this to go in, if he =
agrees.
>=20
> --=20
> With Best Regards,
> Andy Shevchenko
>=20
>=20

No worries, I can do this in the following patch, since there is going =
to be
a v 10 anyways.=

