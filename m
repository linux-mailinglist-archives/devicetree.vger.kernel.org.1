Return-Path: <devicetree+bounces-278725-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sFUrMzUGwGm0DAQAu9opvQ
	(envelope-from <devicetree+bounces-278725-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Mar 2026 16:09:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 325C02E9C1D
	for <lists+devicetree@lfdr.de>; Sun, 22 Mar 2026 16:09:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B3DFF300DE0A
	for <lists+devicetree@lfdr.de>; Sun, 22 Mar 2026 15:08:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5794136607D;
	Sun, 22 Mar 2026 15:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b="ImgjKh7u"
X-Original-To: devicetree@vger.kernel.org
Received: from out203-205-221-190.mail.qq.com (out203-205-221-190.mail.qq.com [203.205.221.190])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8905535E953
	for <devicetree@vger.kernel.org>; Sun, 22 Mar 2026 15:08:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.205.221.190
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774192133; cv=none; b=YrGei9YZ20Zc2hhbnAoHUiVz22k+R3TJ+O4uYuApQMUiPdUB1gbiLNPIc3XiGAAeAUtsY7iOuW+jQePqCE6slxggv5p3DKWpR2WdNGWoCkVNUw8l0AU1vDMeFYXWvNbKBdstQ+UvBaws1davUzAZoaRqN4HlZ0aBtdrfh7+mfaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774192133; c=relaxed/simple;
	bh=WXyNGeUTRwTzRCnxFJGU1m9OmF2/9dl0Fw6Vw2XNI9g=;
	h=Message-ID:From:To:Cc:Subject:Date:In-Reply-To:References:
	 MIME-Version; b=cE7w0EKjOJnVUvC8tlZlaCcScCVqLeyT+CA1JGVbqJ0+XfgdbgSgvZXypsQrFMuVLZTlG7TAv1ht+yJAUi3m3nCCFtORkxpIqcY5WWQANlTkNP9FHzMc32uEVgFrioBfKRFjCH5gz7Th3gTfR9/vRI701RVDACsW1WCbLi2N/ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=qq.com; spf=pass smtp.mailfrom=qq.com; dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b=ImgjKh7u; arc=none smtp.client-ip=203.205.221.190
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=qq.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=qq.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1774192124; bh=ll098vXpHSTRvv37YsMw0daMG4T8OaC6yG0B77odcbo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=ImgjKh7ub4K90Zbmd9cKfcNAHflCVjGY0kbMtvzQZuNRX43TUnu96aDJ2G8ccny/M
	 1XVBj1ldcLXOyLYmHgbjYOQiYaxbEujKnrJqi7s/JA/OG4CjR3D3Phk1mn1Z7xq7JU
	 i/sOxyQbHNZ6g8VqC0gOtHPo9p+Y6xY7tBvRL6AM=
Received: from MYJGMC.lan ([122.195.139.226])
	by newxmesmtplogicsvrszc56-0.qq.com (NewEsmtp) with SMTP
	id 2259A43D; Sun, 22 Mar 2026 23:08:37 +0800
X-QQ-mid: xmsmtpt1774192121tiou7imaf
Message-ID: <tencent_4169D45792346AC02855F4D98B8BD8D4B607@qq.com>
X-QQ-XMAILINFO: OA/62N3Jm+rTNIeB18a4F+tn75aVrVjmzgua0ugIuzj+4Dyw9cNhTQjBvTW6Yv
	 hdGqww0NOuHgltq1Z7vn+Qs97/1hH8Nt47hxu5BjKqiJAeogr0+LPOHsUG6vFYDsiJ9mOIX36zwm
	 l23MhU0/6O27XUUBSTjOpylfe3sCaj6n5gSp2axWcfVvfoEoADknpJWWYpwGaRjcmA9edzucA+1c
	 HbBYeEZgi+Yke+EVuT56bf3tZdF0zre8wccSynCuupUjMgjPQqdI7bxqSjslEFU24Oe1fVizL6xW
	 yaIWBnq+1YDQExt3IE2NvzjvukuOPpu32xVTv9RYuRVmaj6CaEgNB0MltQESyVMDM5sjHjGfEnFz
	 TRScjphf3cbaBzYu4sdRoUJR7TDSqnPJtqTbmF+dH6D7xpLPPDfmbLNhQ0bTLVoXagwt7Ey7cO1e
	 gWWaOKsNigmjoWCZkRULPN+kOTZlicbKYm0YCVa0oLifD1lIy3uIJu1Oe7yujE9/ZOju1wY8zXqI
	 rWKaBnHbkHmaj5XHM80MCxB0qzjp4BiTNUjKuAWzxXzZc9ufh8yzKK4rW16m5GpG9JSJuRlo0lQZ
	 xxgB1XsHulMYF3UvYLwCj+mj4ty9vAL8XhilhDzCMPJSdBDqmhXUPGa/roaaXgttJCxv/r0Gfqv1
	 DmCTMBVC/gTo8nZCHVFf2aN0dl0aotKgjxsTbb9GKRVEjUWv5nyeywseYElxnvrWbSA+oa547eca
	 zdoWq1lSwti05KEu4TABD5VnJPHB5m659eQ7Us+omhxeOUjRHhDLF0MKkXTnSwR6F8vKmLNMHvB0
	 TDRl62H9hg1y7zHrJs3PweslB7luk/ZdRs4BSrGEIzYMgqCplsNHWIL6OppBI9Zx/ENsULV9HOkk
	 vo+30ndc/WfMPmLfCx7HIP5wD/SeH95aENGEBuVvNEjNQ19rC/nzOrISMQ2rIRUFM0n1x5OLMvX2
	 fdpGOYehIYiYPZwWn5N8jlHyDFVS393ccu9k1GoNcwlvMi8mQSw1umZijxv9PG7GnH7DxDh01lAO
	 BP6HywyaKSZ16oQck1Wdtfd2ugcjiyawAkAChuoRkh+2QzFAskYM/id+5AUHcb7e5PgSfsoQ==
X-QQ-XMRINFO: OWPUhxQsoeAVwkVaQIEGSKwwgKCxK/fD5g==
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
Subject: [PATCH v2 2/2] clk: loongson2: Add ls2k1000 compatible
Date: Sun, 22 Mar 2026 23:08:36 +0800
X-OQ-MSGID: <20260322150836.55196-3-wjjsn@qq.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qq.com:s=s201512];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-278725-lists,devicetree=lfdr.de];
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
X-Rspamd-Queue-Id: 325C02E9C1D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add a SoC-specific compatible string "loongson,ls2k1000-clk" for
Loongson-2K1000.

Update the clock controller in DTS and driver:

- DTS: compatible changed from "loongson,ls2k-clk" to
    "loongson,ls2k1000-clk"
- Driver: add { .compatible = "loongson,ls2k1000-clk" } to 
	of_device_id table while retaining the legacy 
	"loongson,ls2k-clk" for backward compatibility.

Signed-off-by: wjjsn <wjjsn@qq.com>
---
 arch/loongarch/boot/dts/loongson-2k1000.dtsi | 2 +-
 drivers/clk/clk-loongson2.c                  | 3 ++-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/loongarch/boot/dts/loongson-2k1000.dtsi b/arch/loongarch/boot/dts/loongson-2k1000.dtsi
index ab6a55937e9e..6dff7eacf3f3 100644
--- a/arch/loongarch/boot/dts/loongson-2k1000.dtsi
+++ b/arch/loongarch/boot/dts/loongson-2k1000.dtsi
@@ -156,7 +156,7 @@ pctrl: pinctrl@1fe00420 {
 		};
 
 		clk: clock-controller@1fe00480 {
-			compatible = "loongson,ls2k-clk";
+			compatible = "loongson,ls2k1000-clk";
 			reg = <0x0 0x1fe00480 0x0 0x58>;
 			#clock-cells = <1>;
 			clocks = <&ref_100m>;
diff --git a/drivers/clk/clk-loongson2.c b/drivers/clk/clk-loongson2.c
index 9c4c6c99db3e..ac075e970699 100644
--- a/drivers/clk/clk-loongson2.c
+++ b/drivers/clk/clk-loongson2.c
@@ -440,8 +440,9 @@ static int loongson2_clk_probe(struct platform_device *pdev)
 static const struct of_device_id loongson2_clk_match_table[] = {
 	{ .compatible = "loongson,ls2k0300-clk", .data = &ls2k0300_clks },
 	{ .compatible = "loongson,ls2k0500-clk", .data = &ls2k0500_clks },
-	{ .compatible = "loongson,ls2k-clk", .data = &ls2k1000_clks },
+	{ .compatible = "loongson,ls2k1000-clk", .data = &ls2k1000_clks },
 	{ .compatible = "loongson,ls2k2000-clk", .data = &ls2k2000_clks },
+	{ .compatible = "loongson,ls2k-clk", .data = &ls2k1000_clks },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, loongson2_clk_match_table);
-- 
2.43.0


