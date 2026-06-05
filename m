Return-Path: <devicetree+bounces-307188-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id spptNMZmImqLWgEAu9opvQ
	(envelope-from <devicetree+bounces-307188-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 08:03:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4151264562A
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 08:03:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=163.com header.s=s110527 header.b=SZUhbrby;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307188-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-307188-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=163.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 642B530B2720
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 05:58:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 475303BB136;
	Fri,  5 Jun 2026 05:58:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.3])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 581D735A384;
	Fri,  5 Jun 2026 05:58:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780639097; cv=none; b=iRqC7ZvZ+UEw08VbKsdm2m/u6qzfbNbppDmyv/C+Rgqy0cDgKS3fqT/v8EuUTP/9C6RIYXQq1qLbiyHs3SK4jOUgaKgAt0O5aPwf//fXa707YIOsT0CrLTk3ROwpXgz4c+OFuhVC4HV+hyWY51dTjNDoNPgV1QxnAYF3QJ5MTbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780639097; c=relaxed/simple;
	bh=UcmBteV48YkLSaQ7YqvgnVSXd3rvIVG+OI/X8rmTvvQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MWzZcrPLeLFoZiPQiOVNkUacerhT/L0fFwJe/Kz263nG3lQhBoMucUNOz9okAU6aYNysVvRf1ejwkTjwubnNUyzI95Xyhx67WxYXL1xDTvzam5X2PGRfMoBBaq5j7s9h8e/Oyhh+3aKYdn3QUt4zMxF0/zHqYTMIOX2cS2nwN5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=SZUhbrby; arc=none smtp.client-ip=220.197.31.3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-ID:MIME-Version; bh=PD
	UZXrIzs23JoehD5N023YX+ro7W1xlvqrfxPyG/NLs=; b=SZUhbrbysNNhLEi6un
	XRberLyoxv1V9Ma77zm/tBGWjQQ24d99P/P1blqLHzlbvdi2iqHQni10x8AFwnYV
	0LoeK26gim/ww1xC8dXBAvPqTPokYF4SvmdK9qlv3MI9IgNXKFk1XDRvSZOhCZKa
	kh37LS3J5KcLQahYxF5QqwyI4=
Received: from haiyue-pc.localdomain (unknown [])
	by gzsmtp1 (Coremail) with SMTP id PCgvCgAXkGE7ZSJqxsLwAQ--.65168S3;
	Fri, 05 Jun 2026 13:57:17 +0800 (CST)
From: Haiyue Wang <haiyuewa@163.com>
To: linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-aspeed@lists.ozlabs.org
Cc: Haiyue Wang <haiyuewa@163.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	Stephen Boyd <sboyd@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Brian Masney <bmasney@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v4 1/2] dt-bindings: clock: ast2600: Add reset definition for video
Date: Fri,  5 Jun 2026 13:52:42 +0800
Message-ID: <20260605055712.118501-2-haiyuewa@163.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260605055712.118501-1-haiyuewa@163.com>
References: <20260605055712.118501-1-haiyuewa@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:PCgvCgAXkGE7ZSJqxsLwAQ--.65168S3
X-Coremail-Antispam: 1Uf129KBjvdXoWrKr4rWr1kur17tr4kZF1DJrb_yoWDCFg_Ca
	s7Zw4DXr1fZr93KFsxAF4DJ3yFk348JFySqr90vw1akFZYyrn8AFZ8XrsFq3WrGanayF97
	AF95Ww1fZrs7GjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7xREJ3vUUUUUU==
X-CM-SenderInfo: 5kdl53xhzdqiywtou0bp/xtbC8B2L9moiZT2zuwAA3I
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[163.com,none];
	R_DKIM_ALLOW(-0.20)[163.com:s=s110527];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-aspeed@lists.ozlabs.org,m:haiyuewa@163.com,m:krzysztof.kozlowski@oss.qualcomm.com,m:andrew@codeconstruct.com.au,m:sboyd@kernel.org,m:mturquette@baylibre.com,m:bmasney@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[haiyuewa@163.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[163.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-307188-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[163.com,oss.qualcomm.com,codeconstruct.com.au,kernel.org,baylibre.com,redhat.com,vger.kernel.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DKIM_TRACE(0.00)[163.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[haiyuewa@163.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,codeconstruct.com.au:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4151264562A

Add ASPEED_RESET_VIDEO reset definition to the ast2600-clock binding
header. It is required for proper reset control of the video on the
AST2600 SoC for aspeed-video driver.

Signed-off-by: Haiyue Wang <haiyuewa@163.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Reviewed-by: Andrew Jeffery <andrew@codeconstruct.com.au>
Acked-by: Stephen Boyd <sboyd@kernel.org>
---
 include/dt-bindings/clock/ast2600-clock.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/clock/ast2600-clock.h b/include/dt-bindings/clock/ast2600-clock.h
index f60fff261130..7b9b80c38a8b 100644
--- a/include/dt-bindings/clock/ast2600-clock.h
+++ b/include/dt-bindings/clock/ast2600-clock.h
@@ -124,6 +124,7 @@
 #define ASPEED_RESET_PCIE_RC_OEN	18
 #define ASPEED_RESET_MAC2		12
 #define ASPEED_RESET_MAC1		11
+#define ASPEED_RESET_VIDEO		6
 #define ASPEED_RESET_PCI_DP		5
 #define ASPEED_RESET_HACE		4
 #define ASPEED_RESET_AHB		1
-- 
2.54.0


