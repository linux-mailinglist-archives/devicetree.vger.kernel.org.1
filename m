Return-Path: <devicetree+bounces-325914-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SsGlG6LXVWrbuAAAu9opvQ
	(envelope-from <devicetree+bounces-325914-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 08:30:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 814C27517D5
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 08:30:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=Xm6+nRmf;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325914-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325914-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3320A3066E16
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 06:29:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05F033DB335;
	Tue, 14 Jul 2026 06:28:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D4D43DD523
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 06:28:52 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784010533; cv=none; b=HytiJlKl15kjhB0dGVjLgtCzIL3EoYss5sxw5s2psEv+dK5XOgr36QZ/JS5mzVndz8OtDyc0VPwyuS84OJ1SQ9604o/TGPqSr3jMfsDn3uLt2e0o3HWDQ2uG5ThzYXVnPHDYdNg8A0tiQ77dwB6IY4cj3uBf2HspPd+bAdyAASk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784010533; c=relaxed/simple;
	bh=uEOX/VWb2IzaqOqmoZJ5LrpiOfc1OnKwSpPs8c3o0oI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WinTAqq2ougceRDYxxB5sThcIK1pPHbHw6UDuYS+w6MfwU8UUsS2e0jOBlHoW5h75ChZg2PmFvEQiGRhGj6I6UHeyk+OXRyuxeEM4O+aQ0HcKiYGG/8f7BxKit0tNmrZegF6CuZY1DO5DQn0uxvHj5bUXBizXPqBMOrRW7K/+7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Xm6+nRmf; arc=none smtp.client-ip=209.85.214.172
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-2cacb8416a1so5563255ad.1
        for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 23:28:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784010532; x=1784615332; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=52kZejFtRxHWJh8aWpxhVLVG7ppdIETUdLQgRUaIxpA=;
        b=Xm6+nRmfExzl4NpkIpWlLWA5IpoLQkZy9nrPRg3pWi9vHHUW/n8lOMCsWmcdwBep+K
         u7K/MRE553IyNUB5wwIEIgH1f8ISHwTDi5xcFt+gSBn9XXykqQXyT5OLeeh7d5sNg+cM
         YO3RPeKm/N872Y++Z96QBbvgkJib2qNqYmo4Rsg8peptWbwUBXysQ7deO+s/WE28pllY
         vyae1FX3zdPbmbKqIPeUyh0zvndtocclEdsGlW0jjOa71D4PX655O/IYI7EfLLxm5CD5
         xuPsgC/pfuTQEoUmbPqWeTDtptQOkXPJ+AWKczLOIdvZuyY+sVQW8IzefcvHZeCz8/07
         pqeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784010532; x=1784615332;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=52kZejFtRxHWJh8aWpxhVLVG7ppdIETUdLQgRUaIxpA=;
        b=obl5W2JmTI5sB+/06LAiHiVuBpkrZCHpDc+TZQYcwTxZ2ka39bxw4B7DvvZ6yLaT8L
         tCUSyAgdKAC2A5btlmXKYr8G6YcjXUlzcJWKn6JZY9wahxzK0nBDdVpW97YiFgleZbyQ
         UfL9pe33Q3SPgIXnFW9J66MwTux1DsnMOEk21yy2SHCg/GUMVpFJMjaUIuRxEmSWXEcr
         2qHZSHLz6n+TO+MWKqjhyArkSc1/i+8od7Hh/6NJCqPV9wWy94KHsoT5kcSlfau6mJU1
         Q91jmRhaiL7gN/Je1e85Z3apJ6/gajCOoWwp48lr2Oqj3LuNb47LofRGZI/KUz2Ir3Q7
         29NA==
X-Forwarded-Encrypted: i=1; AHgh+RoW19Lh4rLDgvHo1Bldv311X6dP3s4l04MK4CZblk1Sgj9DPJpttpvroFX1ZmQdGWHQtkyor3/11HF/@vger.kernel.org
X-Gm-Message-State: AOJu0YyQd6BfJ+BzCzCSG6ME8wDShYpE7DkrpQVawGxQHrMJAlNon5k6
	idNI0lDi7+eWxA67AGVGaYcVpuyhI+A4F8tkH/nWCCP73GiTbrlo1KCFC8qqjQ==
X-Gm-Gg: AfdE7ck1qbDIDScrqWACN3wp5enyqZqTsRzd3nS/iUt9bFRKH5izuERp5BwZK9pHoib
	PgD2MwVt1ArlY7OEXZeLD/w9pHj1uU8cjJ3d1oIENdc2Btz/jQHusaHVPekzrjnQOqYMzBHi7ib
	elMZgXl5jkYjxconFPApEMSQ/GYR4KQ0ZgC9RmegWzkYe0i9ctjqTZGe65XjzIxDJLkZ+io8EQZ
	1qWw9Omlma0R2GFhCNI7MqLJPYLduP7NAzIR7FdjXnljP4UpjKfa/G84UUO3ftN6AwTan/e6Bf+
	hKRMiRC8jMv4RCMo4M2dp4821ShnO39arln9GcNKugH3M0KkPz2eSjZ5N/LK0eDi2tH2kVNS/ly
	wcaMwainOf2AkatRltepYq0yLc6n9NsxkPT0i4lr6zzmRYaQoYwcOUS4jHHBtyjMruFGhk1HHSI
	ovwbU9BQmErul1mQU1aGoTs494pZIQ4mxcmDyH5XHFxgWyY/YmJQzMgeaAEWiqHJ8WzdwIbQ3J6
	Xg9BwUfssqHMuGWShHCZlEUHPvl6YFbEUkWWwtO/gTAJ2VjheGr+ppI0P7RJ8MhEAUTpv3ydfw=
X-Received: by 2002:a17:903:17c7:b0:2ce:e747:c5d4 with SMTP id d9443c01a7336-2cee747c649mr27101265ad.46.1784010531885;
        Mon, 13 Jul 2026 23:28:51 -0700 (PDT)
Received: from [10.160.5.76] ([119.17.57.186])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ccc99cc5aasm110915985ad.0.2026.07.13.23.28.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2026 23:28:51 -0700 (PDT)
From: James Calligeros <jcalligeros99@gmail.com>
Date: Tue, 14 Jul 2026 16:28:14 +1000
Subject: [PATCH v2 07/12] arm64: dts: apple: t8112: Add common SMC hwmon
 sensors
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260714-smc-subdev-dt-v2-7-13fa78873121@gmail.com>
References: <20260714-smc-subdev-dt-v2-0-13fa78873121@gmail.com>
In-Reply-To: <20260714-smc-subdev-dt-v2-0-13fa78873121@gmail.com>
To: Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>, 
 Neal Gompa <neal@gompa.dev>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 James Calligeros <jcalligeros99@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=535;
 i=jcalligeros99@gmail.com; h=from:subject:message-id;
 bh=uEOX/VWb2IzaqOqmoZJ5LrpiOfc1OnKwSpPs8c3o0oI=;
 b=owGbwMvMwCV2xczoYuD3ygTG02pJDFmh1xntfl1++Gx/cdpDy/4Lqe7P/HrcQ+dkFm9dumDjH
 73ZbrerOiayMIhxMViKKbJsaBLymG3EdrNfpHIvzBxWJpAh0iINDEDAwsCXm5hXaqRjpGeqbahn
 aKRjrGPEwMUpAFOdVc7IcDQ98Uj5oxkh8UuuKh6NmLf+gtqSwzP2bPX3stjE25Vi08/IMPfUKpH
 4VEfHp9PrQg9frn554/RM85uZaxcJtbEyrPHP5AIA
X-Developer-Key: i=jcalligeros99@gmail.com; a=openpgp;
 fpr=B08212489B3206D98F1479BDD43632D151F77960
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.linux.dev,lists.infradead.org,vger.kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-325914-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sven@kernel.org,m:j@jannau.net,m:neal@gompa.dev,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:asahi@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:jcalligeros99@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[jcalligeros99@gmail.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jcalligeros99@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 814C27517D5

Add the SMC hwmon sensors common to all SoCs

Signed-off-by: James Calligeros <jcalligeros99@gmail.com>
---
 arch/arm64/boot/dts/apple/t8112.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/apple/t8112.dtsi b/arch/arm64/boot/dts/apple/t8112.dtsi
index a3241c816c26..ec248ca052cb 100644
--- a/arch/arm64/boot/dts/apple/t8112.dtsi
+++ b/arch/arm64/boot/dts/apple/t8112.dtsi
@@ -1289,3 +1289,4 @@ port03: pci@3,0 {
 };
 
 #include "t8112-pmgr.dtsi"
+#include "hwmon-common.dtsi"

-- 
2.55.0


