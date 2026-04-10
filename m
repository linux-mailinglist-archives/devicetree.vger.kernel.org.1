Return-Path: <devicetree+bounces-286420-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cOAXAR+u2GljgwgAu9opvQ
	(envelope-from <devicetree+bounces-286420-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Apr 2026 10:00:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 75FA33D3B1B
	for <lists+devicetree@lfdr.de>; Fri, 10 Apr 2026 10:00:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 94DCD3014875
	for <lists+devicetree@lfdr.de>; Fri, 10 Apr 2026 07:59:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6A513A9DAF;
	Fri, 10 Apr 2026 07:59:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b="WeHuFJM4";
	dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b="rAWWtWWl"
X-Original-To: devicetree@vger.kernel.org
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [80.241.56.152])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C74C93A8723;
	Fri, 10 Apr 2026 07:59:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.152
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775807984; cv=none; b=I1kNo+8x7+ZBO0T71iln/m9kauv9q7oQLEGcPMANqxL14F+L9qb2dQM7yoxzaeoAWkaS0mUkKT/81ct+T6D+ai3vYaz7Yam6JeBLLxgggtPdBgkWITF43YPaby+n11Jo2NLMTaF+aHTypSMfJz2IpqsiVGWA4NyQ6/t5yPTl/W4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775807984; c=relaxed/simple;
	bh=tv1SteH5+qLSYwGgTDPHiMVefHL7DAGC9ZjSkpHF5uw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dQ/rTkYTJiKnxcu6nzSffGTFi4u8EoL2jOtQBlfKEsLp+fqE5sgyYzbcI0cehHUjWNLZuHGq+X36CN1tAiAWQKCd1Vp9rIpjjurHzEF691PCWTc93c536rjEQaO6QryzWbFbXOrIy2xiXbFaz3BkRmexZ9rDErRSggnLQoc8lfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mailbox.org; spf=pass smtp.mailfrom=mailbox.org; dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b=WeHuFJM4; dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b=rAWWtWWl; arc=none smtp.client-ip=80.241.56.152
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mailbox.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mailbox.org
Received: from smtp1.mailbox.org (smtp1.mailbox.org [10.196.197.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4fsTjS5vr1z9sPv;
	Fri, 10 Apr 2026 09:59:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1775807980;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=T2dY7nUbucCLtbQPyesJbvvM8gyBSryaljiV7Vdh9ew=;
	b=WeHuFJM4sHGvsWvSMNhcjGOwXy7+/o5f2NaDK2agyVsZdlcfAMwdDnprp1spOSEj5ZfrGv
	0mYtiPcARoQkf4WAMH+5vqPMAktHATJ/sG8F2xAlXiqPFb/d9PT8ZjOn/qJsqKLFkMNH5+
	2bIr+t6e0ETt5ISDpz8piPb/xSGYjBuVDqhHGZJNzp5Ga25KjMeJBkoTYNYPM2DyWUeRwE
	uAc7ESJV2Ipwf/O7MIMeK0M9NgEuOrjRikjTCaBe5Z+b/1YJlE7+cWRdq2wn8qwoNaT3tP
	uCcPs2GRd/XeI9ugOtiT/TRUyiQ61vyKgWGDyjd6qWRfsRR0uU552qVynrA4pQ==
From: Shuwei Wu <shuwei.wu@mailbox.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1775807979;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=T2dY7nUbucCLtbQPyesJbvvM8gyBSryaljiV7Vdh9ew=;
	b=rAWWtWWlvk/gqQBvVd2+IhyqURwuExA7cfgqRYWARoqmJHzmkNxUfOGEvWtttwzAqfhdIP
	aXucifJADXEvEBlzV/J6zsu3Yh5LzT9B7OdMT49V3OlczPs8HcP7InaptqXm1HxGx6XySc
	Zs0H1UlEJsNmCwmd1WX3n/wb9Ttup27a0OEKBBcZRTbOBGZIE0b2FLLMlXSxrGTcu1cuSc
	bkPHMxVj723HRPb9ScxlheUr+rjMMs28k3FUWNpn7D7mO4P2RlQA4TV/lzr7N8Nq5kl1Qv
	/R+vZKW6o3wi+Ee8kTxFjRG/ETLmx35L7rovcPgYLipY3ZOzSPzpooMNnzvSnQ==
Date: Fri, 10 Apr 2026 15:58:22 +0800
Subject: [PATCH v2 1/2] cpufreq: dt-platdev: Add SpacemiT K1 SoC to the
 allowlist
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260410-shadow-deps-v2-1-4e16b8c0f60e@mailbox.org>
References: <20260410-shadow-deps-v2-0-4e16b8c0f60e@mailbox.org>
In-Reply-To: <20260410-shadow-deps-v2-0-4e16b8c0f60e@mailbox.org>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775807959; l=808;
 i=shuwei.wu@mailbox.org; s=20251125; h=from:subject:message-id;
 bh=tv1SteH5+qLSYwGgTDPHiMVefHL7DAGC9ZjSkpHF5uw=;
 b=qqGyTe4fFVq3lwPI4KGuZozSKJpFe640d8ae4OBo64XxZLwq54SV6SEqqCDR1ny2RqhgERhWO
 4gjknvRMuJqCd7MFYCps1bU18K3RuRQipYSoseKs4uY9Z8pxwLURLpT
X-Developer-Key: i=shuwei.wu@mailbox.org; a=ed25519;
 pk=qZs6i2UZnXkmjUrwO5HJxcfpCvgSNrR4dcU5cjtfTSk=
X-MBO-RS-META: pcg4fbn8c83pr3iyabuhitcaqoudsmqs
X-MBO-RS-ID: 686342cdb22240db965
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[mailbox.org,reject];
	R_DKIM_ALLOW(-0.20)[mailbox.org:s=mail20150812];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-286420-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shuwei.wu@mailbox.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[mailbox.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mailbox.org:dkim,mailbox.org:email,mailbox.org:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 75FA33D3B1B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The SpacemiT K1 SoC uses standard device tree based CPU frequency
scaling. Add it to the allowlist to instantiate the cpufreq-dt driver.

Signed-off-by: Shuwei Wu <shuwei.wu@mailbox.org>
---
 drivers/cpufreq/cpufreq-dt-platdev.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/cpufreq/cpufreq-dt-platdev.c b/drivers/cpufreq/cpufreq-dt-platdev.c
index 25fd3b191b7e..31a64739df25 100644
--- a/drivers/cpufreq/cpufreq-dt-platdev.c
+++ b/drivers/cpufreq/cpufreq-dt-platdev.c
@@ -81,6 +81,7 @@ static const struct of_device_id allowlist[] __initconst = {
 		{ .have_governor_per_policy = true, },
 	},
 
+	{ .compatible = "spacemit,k1", },
 	{ .compatible = "st-ericsson,u8500", },
 	{ .compatible = "st-ericsson,u8540", },
 	{ .compatible = "st-ericsson,u9500", },

-- 
2.53.0


