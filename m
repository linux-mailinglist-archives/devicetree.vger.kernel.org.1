Return-Path: <devicetree+bounces-291694-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iNojBkhq8mnIqwEAu9opvQ
	(envelope-from <devicetree+bounces-291694-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 22:30:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C43549A270
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 22:29:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4C2B3300343C
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 20:29:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9234F3932C6;
	Wed, 29 Apr 2026 20:29:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.auroraos.dev (unknown [95.181.193.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F292F37E30F
	for <devicetree@vger.kernel.org>; Wed, 29 Apr 2026 20:29:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.181.193.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777494594; cv=none; b=gIAXkyxT2QV6MX3mkYWzpJFCNhc+RQt79JqchQiNdvu5YMP+lKDcOhFQZbVq0dsCDwWa2lasVC0UxKokyPa3dltfLN9HYVjxwy7Qxii5lyTLG0Zmn8DXTZWhrni1sizpipvbqX+hNP16miSU0qNpRvFvVgGFuQ94dZYRkRxA2DM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777494594; c=relaxed/simple;
	bh=UnIb7WXariyi+q3labZn1TgnVVccAMmJBqKfFFw6NuA=;
	h=Message-ID:Date:MIME-Version:To:CC:From:Subject:Content-Type; b=O4lUXhPgt8XMVLLk9lQGxOrTrFTyWKWiwijV3iasPdPCy2R2wc9ake91i1hFluxntdTUZ0bRG4qdSWVSNqPQyKdkxQKD3cjXvm0IeTJLlB9YMJufzdQsNAE2qAVM6G4ZvkOGL++Mmm4nNTevtngxDTQwdmHBYpfC/9zWRecPesM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=auroraos.dev; spf=pass smtp.mailfrom=auroraos.dev; arc=none smtp.client-ip=95.181.193.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=auroraos.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=auroraos.dev
Received: from [192.168.2.104] (213.87.162.78) by exch16.corp.auroraos.dev
 (10.189.209.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1847.3; Wed, 29 Apr
 2026 23:14:39 +0300
Message-ID: <0c7bf7e9-887c-42d5-bcfb-0ba7fe1e70b6@auroraos.dev>
Date: Wed, 29 Apr 2026 23:14:39 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: <devicetree@vger.kernel.org>, Rob Herring <robh@kernel.org>, Saravana
 Kannan <saravanak@kernel.org>
CC: Grant Likely <grant.likely@linaro.org>, <lvc-project@linuxtesting.org>
From: Sergey Shtylyov <s.shtylyov@auroraos.dev>
Subject: [PATCH] of: cpu: add check in __of_find_n_match_cpu_property()
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: exch16.corp.auroraos.dev (10.189.209.38) To
 exch16.corp.auroraos.dev (10.189.209.38)
X-Rspamd-Queue-Id: 7C43549A270
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.36 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[auroraos.dev : SPF not aligned (relaxed), No valid DKIM,quarantine,sampled_out];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.912];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.shtylyov@auroraos.dev,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	R_DKIM_NA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_FROM(0.00)[bounces-291694-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]

In __of_find_n_match_cpu_property(), checking the variable ac for 0 won't
prevent a possible overflow when multiplying it by sizeof(*cell). Besides,
of_read_number() (called in the *for* loop) can't return correct result if
that variable (which equals the #address-cells prop's value) exceeds 2, so
additionally checking for that seems logical...

Found by Linux Verification Center (linuxtesting.org) with the Svace static
analysis tool.

Fixes: f3cea45a77c8 ("of: Fix iteration bug over CPU reg properties")
Signed-off-by: Sergey Shtylyov <s.shtylyov@auroraos.dev>

---
The patch is against the dt/linus branch of Rob Herring's linux.git repo...

 drivers/of/cpu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/cpu.c b/drivers/of/cpu.c
index 5214dc3d05ae..bd0e918d6f29 100644
--- a/drivers/of/cpu.c
+++ b/drivers/of/cpu.c
@@ -60,7 +60,7 @@ static bool __of_find_n_match_cpu_property(struct device_node *cpun,
 	cell = of_get_property(cpun, prop_name, &prop_len);
 	if (!cell && !ac && arch_match_cpu_phys_id(cpu, 0))
 		return true;
-	if (!cell || !ac)
+	if (!cell || !ac || ac > 2)
 		return false;
 	prop_len /= sizeof(*cell) * ac;
 	for (tid = 0; tid < prop_len; tid++) {
-- 
2.53.0

