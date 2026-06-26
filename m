Return-Path: <devicetree+bounces-315989-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id P7nPOpw0PmrJBQkAu9opvQ
	(envelope-from <devicetree+bounces-315989-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 10:13:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A026CB3D3
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 10:13:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=RJhgrSwa;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=QqPf+Ncu;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315989-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-315989-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=mailbox.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 76BA330421ED
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 08:12:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 219F13ACA43;
	Fri, 26 Jun 2026 08:12:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org [80.241.56.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80C5D3AB29D;
	Fri, 26 Jun 2026 08:12:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782461547; cv=none; b=UIBuL11p9+vjD+j+4Q6k/0MVUjU1DFTon0W9j3zSksCHKiVEepbDKkvhLGB+WOHeMQqEO04ceDDU32f2RTeB515EYGzlxw2UlWO6mK5J9DWhGYK53g0+IhYfVlQ4tQdHixbOAbPJgN6KIlAVzKPyx+/Ozv3jjOja0wa2JzvZ7CQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782461547; c=relaxed/simple;
	bh=XvkTERWriQ1NbC+ihamMZPwU5woIacCHQRJx3/b2zPM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JQmMOhFlUduV9DAjj7F+Uyj6vqfwGMBwmjxws0u6vcv4cKQcpEEuWYAbhbYP6luMOI5ngfk+gYh2zHvKoJPjXgguYNTPsm9yXwGBgtJ0CLRcOkG344uRA6RPYDxDuyBhVtQz9OC+UAmr/fwF6go6PDnZ1zyFjcKETa1Jsk/SaVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mailbox.org; spf=pass smtp.mailfrom=mailbox.org; dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b=RJhgrSwa; dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b=QqPf+Ncu; arc=none smtp.client-ip=80.241.56.151
Received: from smtp2.mailbox.org (smtp2.mailbox.org [IPv6:2001:67c:2050:b231:465::2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4gmpLZ49xrz9trf;
	Fri, 26 Jun 2026 10:12:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1782461542;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=gVT1WuxfUO5RUX3Q0UwCGuyZAn2dexlXoQv3IAtBnew=;
	b=RJhgrSwaNl1nNK6hVf53jQU+P9pSr6BzbPBEGnr4Ql+gXXW8e8rXpcX8KZGCSYe00DJ/+l
	CkF7O4Ul94g5EBpPiwfd+V3VFQ1SWPUsId2f8y0B48aSL9fjf1MB+8lkcLltM5Eonb38mX
	t0MxVzcR40ftnMzS3KatBwuU2dYpFALmmgnpwXxgaelu0mu94asC3n213E5+YbkqcrVBKe
	+S3F6u/L8gBdu/q++nkAqr7NCJawBe2ZJs8RFnOKc9ae3aDisyAeVKuzfB9B7E5r0K35wG
	8v6pKlDIFQQFS47JS+0hqdKvHwumo8DgDGirhon+uHC5doEft3JVLKXuZJSbHg==
From: Shuwei Wu <shuwei.wu@mailbox.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1782461540;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=gVT1WuxfUO5RUX3Q0UwCGuyZAn2dexlXoQv3IAtBnew=;
	b=QqPf+NcuiI4qdi6RzDbZwvcXk27YCS4SpeNSZVpKYJFrF45zPyG7y5Us3012xOoSjeNnJL
	e48sYmu6AxTtVFIrDz+Yx1S67vjkcBfdiowlQf8OUP/ncEL63lgSc/6xK/DctfmZgmEx8h
	m3X7AeSaGcVc7mSiQjySAG/ad2KNH2ZGVicGlqjmLKsjD7gsbfp1b235VdASYhM4X7JqAM
	RcdO3InzmI2HXYNoS/0dwjhQwSTnj1zcCXIARH+4BvmAfLMQ9L/tdUdac9KzavX7dGQrdl
	eXCPRekuTeUqtOzGyG8QBf7fSgefK0CiV7hMMpP7y2oGvqBtolS5AzBDAPXcAA==
Date: Fri, 26 Jun 2026 16:10:23 +0800
Subject: [PATCH v4 1/2] cpufreq: dt-platdev: Add SpacemiT K1 SoC to the
 allowlist
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260626-shadow-deps-v4-1-bba9831f2f1d@mailbox.org>
References: <20260626-shadow-deps-v4-0-bba9831f2f1d@mailbox.org>
In-Reply-To: <20260626-shadow-deps-v4-0-bba9831f2f1d@mailbox.org>
To: "Rafael J. Wysocki" <rafael@kernel.org>, 
 Viresh Kumar <viresh.kumar@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@kernel.org>, 
 Yixun Lan <dlan@kernel.org>
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-riscv@lists.infradead.org, spacemit@lists.linux.dev, 
 devicetree@vger.kernel.org, Shuwei Wu <shuwei.wu@mailbox.org>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782461515; l=1052;
 i=shuwei.wu@mailbox.org; s=20251125; h=from:subject:message-id;
 bh=XvkTERWriQ1NbC+ihamMZPwU5woIacCHQRJx3/b2zPM=;
 b=kw0yN6WTUO1rsV5fiDirMRaI71qsvIF3fzeIP0um9WafxJSkBameRO1Ltp/qhhwzJ6nLNr+Qb
 fbwRYPcY+3IDyT8+5gu11CxY7Y9c2QD3mnSqO/BNaMkCuRgW1xhpqxF
X-Developer-Key: i=shuwei.wu@mailbox.org; a=ed25519;
 pk=qZs6i2UZnXkmjUrwO5HJxcfpCvgSNrR4dcU5cjtfTSk=
X-MBO-RS-ID: c304cb915812ae0e2cc
X-MBO-RS-META: 9jxj89bkbno6d4dcamji7d3jdruf74t7
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[mailbox.org,reject];
	R_DKIM_ALLOW(-0.20)[mailbox.org:s=mail20150812];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-315989-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:rafael@kernel.org,m:viresh.kumar@linaro.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:dlan@kernel.org,m:linux-pm@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:spacemit@lists.linux.dev,m:devicetree@vger.kernel.org,m:shuwei.wu@mailbox.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[shuwei.wu@mailbox.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shuwei.wu@mailbox.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[mailbox.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,mailbox.org:dkim,mailbox.org:email,mailbox.org:mid,mailbox.org:from_mime,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 57A026CB3D3

Add the compatible string for supporting the generic
cpufreq driver on the SpacemiT K1 SoC.

Signed-off-by: Shuwei Wu <shuwei.wu@mailbox.org>
---
Changes in v4:
- Drop the K1-specific cpufreq driver and use cpufreq-dt again
- Add spacemit,k1 back to the cpufreq-dt allowlist

Changes in v3:
- Add a K1-specific cpufreq driver for the shared-rail, dual-clock topology
- Add spacemit,k1 to the cpufreq-dt blocklist
---
---
 drivers/cpufreq/cpufreq-dt-platdev.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/cpufreq/cpufreq-dt-platdev.c b/drivers/cpufreq/cpufreq-dt-platdev.c
index 25fd3b191b7e..e262394b56f9 100644
--- a/drivers/cpufreq/cpufreq-dt-platdev.c
+++ b/drivers/cpufreq/cpufreq-dt-platdev.c
@@ -81,6 +81,8 @@ static const struct of_device_id allowlist[] __initconst = {
 		{ .have_governor_per_policy = true, },
 	},
 
+	{ .compatible = "spacemit,k1", },
+
 	{ .compatible = "st-ericsson,u8500", },
 	{ .compatible = "st-ericsson,u8540", },
 	{ .compatible = "st-ericsson,u9500", },

-- 
2.53.0


