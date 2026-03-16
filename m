Return-Path: <devicetree+bounces-276175-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MCaBBbUGuGkWYQEAu9opvQ
	(envelope-from <devicetree+bounces-276175-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 14:33:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB3A29A785
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 14:33:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 19A5C3067A1F
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 13:30:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A03FC39A05A;
	Mon, 16 Mar 2026 13:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=superkali.me header.i=@superkali.me header.b="lw7PuB6n"
X-Original-To: devicetree@vger.kernel.org
Received: from fr5000-r.dnsiaas.com (fr5000-r.dnsiaas.com [92.42.104.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E71F4397E79;
	Mon, 16 Mar 2026 13:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=92.42.104.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773667835; cv=none; b=fJMSl3vp7rYt6c8Y3Mr1MD0jhEL6k4R72qwIHYz5UMZh0dTFswQQomENqp1dcHrbtylD3sPhLNLAApHU3wuQiSnetPVG/52bfuLix4r3tzRsr97q1EX1LGijPqZ/0aqjMEie9d/2k4k6USMEFB5Insw+T22w5h/wX1kATaD0VCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773667835; c=relaxed/simple;
	bh=Rj8UxNrcJ6P4tHKTalF51MgOjNiA7VX+9TjgKhsKnaE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=feqTPW5mstPtuSWtazVi70h6EQX+FbWYFYIn3pc26to3WNIiNVG5UoSSzR5Vg9JYL+fOHq+ihaB8bD87wfEEHerYEcp6OBhBGCffGjQBsU5OpA3eIb200/Y0Q/ppi5rTT+mtIS5KmlBoZu7yOx6fhuYx2/1+Fi0Fnf1TEveJzt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=superkali.me; spf=fail smtp.mailfrom=superkali.me; dkim=pass (2048-bit key) header.d=superkali.me header.i=@superkali.me header.b=lw7PuB6n; arc=none smtp.client-ip=92.42.104.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=superkali.me
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=superkali.me
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=superkali.me; s=default; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ItlAORhExVLJLOwJkAKricBH8Ez94YlV63fFrX1U/Hw=; b=lw7PuB6nN7EQ2t6fG5RucSnZ1w
	Ki0sfNDrMSuzPu/x2MZWJSBojhlXRIhwWT6HJW9Qt3jr1wXiGiZ+HnkCPw5iF8NosTPQr/PIrUCKh
	MlVZbaCK8lEpl0DcUc1eY0XgmSZp3DSDDQ+TVEOIZKYamb9gnfgPnFujls8E1T7s10oqon4hLHD+C
	p/ULrXJHCGRmzB6EaQqQQOFAjNPxR1SrwOTlu/IF+/EBuB67IyOvNIi+aW2vOIWS/JG+jIMKJ4qhM
	RBPLtJKMWzK9TpiLqFJWisMx7xZwlZGS5yk3B3NEAIYHp94Y61gsX7L9aenQYFA43uUshlgZDdW9L
	Sh1tD2Dg==;
Received: from [185.94.132.237] (port=54871 helo=1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.ip6.arpa)
	by fr5000-r.dnsiaas.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.99.1)
	(envelope-from <hello@superkali.me>)
	id 1w27eZ-0000000BDZB-1EXR;
	Mon, 16 Mar 2026 14:06:38 +0100
From: Daniele Briguglio <hello@superkali.me>
Date: Mon, 16 Mar 2026 14:06:32 +0100
Subject: [PATCH 2/3] clk: rockchip: allow grf_type_sys lookup in
 aux_grf_table
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260316-rk3588-mclk-gate-grf-v1-2-66fb9a246718@superkali.me>
References: <20260316-rk3588-mclk-gate-grf-v1-0-66fb9a246718@superkali.me>
In-Reply-To: <20260316-rk3588-mclk-gate-grf-v1-0-66fb9a246718@superkali.me>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
 Daniele Briguglio <hello@superkali.me>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773666394; l=1640;
 i=hello@superkali.me; s=20260316; h=from:subject:message-id;
 bh=Rj8UxNrcJ6P4tHKTalF51MgOjNiA7VX+9TjgKhsKnaE=;
 b=FDWL40JuGazr9oA4JhwWUw8YogvzJ429eGAvO2EQxk5Qlyg2CB3exSUF+uApu34+5YVah+UPN
 Kg2qGrTyMuKBuzuhOxhefXaETmbPuW8kEjctynXwCD5e6kLw8R9TU/9
X-Developer-Key: i=hello@superkali.me; a=ed25519;
 pk=5tynRWQdL93CDcapJ73FkcCRY2PeBOJOIAoIhRig53U=
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - fr5000-r.dnsiaas.com
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - superkali.me
X-Get-Message-Sender-Via: fr5000-r.dnsiaas.com: authenticated_id: hello@superkali.me
X-Authenticated-Sender: fr5000-r.dnsiaas.com: hello@superkali.me
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Spamd-Result: default: False [3.04 / 15.00];
	DMARC_POLICY_REJECT(2.00)[superkali.me : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_REJECT(1.00)[superkali.me:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276175-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_X_GMSV(0.00)[hello@superkali.me];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_X_AS(0.00)[hello@superkali.me];
	DKIM_TRACE(0.00)[superkali.me:-];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[hello@superkali.me,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	HAS_X_SOURCE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	HAS_X_ANTIABUSE(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 7EB3A29A785
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Remove the grf_type_sys exclusion from the auxiliary GRF table lookup
in rockchip_clk_register_branches(). Previously, branches with
grf_type_sys always used ctx->grf directly, bypassing the aux_grf_table.

This is a problem on SoCs like RK3588 where ctx->grf points to the
PHP_GRF (set via the CRU's rockchip,grf phandle), but GATE_GRF clock
entries need to access the SYS_GRF instead.

With this change, grf_type_sys branches first check the aux_grf_table,
and fall back to ctx->grf if no entry is found. This is backwards
compatible: on SoCs that do not register grf_type_sys in the
aux_grf_table, the behavior is unchanged.

Signed-off-by: Daniele Briguglio <hello@superkali.me>
---
 drivers/clk/rockchip/clk.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index e8b3b0b9a4f8..911e6b610618 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -509,10 +509,9 @@ void rockchip_clk_register_branches(struct rockchip_clk_provider *ctx,
 		clk = NULL;
 
 		/* for GRF-dependent branches, choose the right grf first */
-		if ((list->branch_type == branch_grf_mux ||
-		     list->branch_type == branch_grf_gate ||
-		     list->branch_type == branch_grf_mmc) &&
-		    list->grf_type != grf_type_sys) {
+		if (list->branch_type == branch_grf_mux ||
+		    list->branch_type == branch_grf_gate ||
+		    list->branch_type == branch_grf_mmc) {
 			hash_for_each_possible(ctx->aux_grf_table, agrf, node, list->grf_type) {
 				if (agrf->type == list->grf_type) {
 					grf = agrf->grf;

-- 
2.53.0


