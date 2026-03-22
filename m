Return-Path: <devicetree+bounces-278723-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 19LsMAIGwGm0DAQAu9opvQ
	(envelope-from <devicetree+bounces-278723-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Mar 2026 16:08:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D8C2E9BDA
	for <lists+devicetree@lfdr.de>; Sun, 22 Mar 2026 16:08:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 91D2F30097C7
	for <lists+devicetree@lfdr.de>; Sun, 22 Mar 2026 15:08:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 379273630AF;
	Sun, 22 Mar 2026 15:08:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b="HlRPOsjy"
X-Original-To: devicetree@vger.kernel.org
Received: from out203-205-221-233.mail.qq.com (out203-205-221-233.mail.qq.com [203.205.221.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06E68285CB4
	for <devicetree@vger.kernel.org>; Sun, 22 Mar 2026 15:08:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.205.221.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774192126; cv=none; b=d3i/l2BtbkRyBYU5YewhcPSYWJkbFOYsJPBT8LXwfUiazi02qkJ0AdSz1Zo8X6+nWIKA5qXrj3dJ4yJ9Bb9mX+oYovkqDpjV9YFg5rWWYjJAns62ElWcQl/iSP0qZ33EruwVIqlkQAYc+i2bE9iOQFNjWtYR7rme84FZMvyV85I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774192126; c=relaxed/simple;
	bh=cls8doY6FMHuYzYhNkcMpXWFBl3PhyiUg7+F+EhHP4g=;
	h=Message-ID:From:To:Cc:Subject:Date:In-Reply-To:References:
	 MIME-Version; b=UAM+0nSsfYX6qdkbljMGne7ka+a/rfdIBk+YVqoE+CC0iRgM9wPZ1ziqAWf8O71k7erDFzud/ICin4jDLSlabBySPo0mg1Upc97Ma6C5rodSS5/eXwTrg8jUpPDxmugP7sJI3X+0NwCc7RdOEcTQihnTgRatTulbQaSDNkCEAfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=qq.com; spf=pass smtp.mailfrom=qq.com; dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b=HlRPOsjy; arc=none smtp.client-ip=203.205.221.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=qq.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=qq.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1774192122; bh=11RYZrnd+R+xAKxcT2ifOg/oO8QJFkt3BN/QwdD92DE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=HlRPOsjysmDSv4knhc5c1mUQgtpQ4CyruINFYDh3HNbpxLJ/WpJgkQ2Wv+S4p3zB6
	 3NZXgKdJ58JxDXpP5+EA0XXpSLKWQ0A+xZpr6fssK6zWxq0tJ0MWZ/gWlH8CS2fx3u
	 Bxbw/OImoEbsaEFA9svaC++2ytsKuo62TNbZIa84=
Received: from MYJGMC.lan ([122.195.139.226])
	by newxmesmtplogicsvrszc56-0.qq.com (NewEsmtp) with SMTP
	id 2259A43D; Sun, 22 Mar 2026 23:08:37 +0800
X-QQ-mid: xmsmtpt1774192119tacdc51vz
Message-ID: <tencent_C35FFFD2C601DB54E967312ED852DDA70F09@qq.com>
X-QQ-XMAILINFO: Nr4sKL92GIu+t4q8r0kflekmSEvtS1q1Wfq3Bsg2iXi7VUvNmKIvivp4r0yrgF
	 DI2iViy5K7qxJYi3a0xC59wURCbs6d10q7NKQOq9JAJGAGvFSeNi1lfB4t5TBddn6PfIutTay7ih
	 +i5a3JvsXBvLkxa1Nb2brTxyrHjIQWwYrdyImSodXF58fhR/ciDTgOD4ZsFyQSW2Y9Mt6KqCg6xi
	 7j3SKtKEMDQ+4S4XnXLINbx+CQViYOteBZQMJEoP9JmujJXvFVUkgKHdo9uqMm2rdgt0pLgTiupn
	 8HOwJQP5mt9QAzAj216atecyV4NA/cY7XqwnSm5O20oFt2OpG8LFCZEfBy2SpySZVognKiq0hc7/
	 UE92WSF0DSdLFz/0Gfyq8TF3lG2kTHHT5VfFAUZLseK7FxcHEJTZ/gAPjSuA8xzJ1WfMK6sh0hgw
	 Ewu/5eU9nIzOrE0O0rKKkWZgM01G8a5rf0JjpHaB6lSYCNBIydM1bx1d2IXuq6sTYA1qWHfTp3oo
	 nbuIz2yTj903RPzwO0LfeSkcqj6We1qB0IvqWleQGSUfYbUxbZRnURvbBB0eKREgD7THMpWEGNZT
	 m2dPW18XBYZAucahM4EQ4VYDfiM2XKj0uvIiybo6S4OxT3Uln37siFThbZ19JBVK1zrhFcRT8sbG
	 /Qlja3hPjMTvPeAlPYgkSUrLS/h2PQtObpDFrGA8wvoCtP+Hb0C6r+xq/kEHRDA0z33+ZarNwA40
	 YKMeK5/lATHDt18p4VSxSLTL+W1BlQGNxqiMKm5jJhDkFUR3LU8r1ziy/lQE6r4cgi1q8RzITol+
	 jRis7lObX+PXk2FRZUz+BSbMuTBzXPGNy+3R2HqS39y+6cQFOuieWae6xI8TlOGkxk0O3170mw8d
	 Kdr7I5VQfZYArCSCh9t/SwrrKtE/Whgukpf+gZtya/NmADUHijVYeqclio27c/iYA8D8ozZH4jaA
	 bFFTXWggXlnSw6y0tivpgnmbGiROo5xWwX8nhSvYzcAl3QZFxuCgVF1bpTBjJoRqdNYZG2ZE9Fip
	 h6gc/23Q8ikpY9WIK0Db7Q3og3/AaBXc2V964A9mJ6voJmN89y6Q34r0VBrQUNaR4KK26HNA==
X-QQ-XMRINFO: M/715EihBoGS47X28/vv4NpnfpeBLnr4Qg==
From: wjjsn <wjjsn@qq.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	chenhuacai@kernel.org,
	zhuyinbo@loongson.cn,
	mturquette@baylibre.com,
	sboyd@kernel.org
Cc: linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	loongarch@lists.linux.dev,
	kernel@xen0n.name,
	devicetree@vger.kernel.org,
	wjjsn <wjjsn@qq.com>
Subject: [PATCH v2 1/2] dt-bindings: clock: loongson,ls2k: Add ls2k1000 compatible and deprecate legacy
Date: Sun, 22 Mar 2026 23:08:35 +0800
X-OQ-MSGID: <20260322150836.55196-2-wjjsn@qq.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260322150836.55196-1-wjjsn@qq.com>
References: <20260322150836.55196-1-wjjsn@qq.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qq.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[qq.com:s=s201512];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-278723-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[qq.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qq.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wjjsn@qq.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,xen0n.name,qq.com];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 22D8C2E9BDA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add a SoC-specific compatible string "loongson,ls2k1000-clk" for
Loongson-2K1000.

Mark the legacy "loongson,ls2k-clk" compatible as deprecated using
the structured "deprecated: true" property instead of relying on
textual description.

Update the example to use the new compatible.

Signed-off-by: wjjsn <wjjsn@qq.com>
---
 .../bindings/clock/loongson,ls2k-clk.yaml         | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/loongson,ls2k-clk.yaml b/Documentation/devicetree/bindings/clock/loongson,ls2k-clk.yaml
index c07ad1f85857..b0ef5cd5af32 100644
--- a/Documentation/devicetree/bindings/clock/loongson,ls2k-clk.yaml
+++ b/Documentation/devicetree/bindings/clock/loongson,ls2k-clk.yaml
@@ -15,11 +15,14 @@ description: |
 
 properties:
   compatible:
-    enum:
-      - loongson,ls2k0300-clk
-      - loongson,ls2k0500-clk
-      - loongson,ls2k-clk  # This is for Loongson-2K1000
-      - loongson,ls2k2000-clk
+    oneOf:
+      - enum:
+          - loongson,ls2k0300-clk
+          - loongson,ls2k0500-clk
+          - loongson,ls2k1000-clk
+          - loongson,ls2k2000-clk
+      - const: loongson,ls2k-clk
+        deprecated: true
 
   reg:
     maxItems: 1
@@ -69,7 +72,7 @@ examples:
     };
 
     clk: clock-controller@1fe00480 {
-        compatible = "loongson,ls2k-clk";
+        compatible = "loongson,ls2k1000-clk";
         reg = <0x1fe00480 0x58>;
         #clock-cells = <1>;
         clocks = <&ref_100m>;
-- 
2.43.0


