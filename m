Return-Path: <devicetree+bounces-266141-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KIYuAFxolGlFDgIAu9opvQ
	(envelope-from <devicetree+bounces-266141-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 14:08:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E53E14C66A
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 14:08:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7A75830614D3
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:03:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09E4E3382DB;
	Tue, 17 Feb 2026 13:03:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=norik.com header.i=@norik.com header.b="h1QqkzxW"
X-Original-To: devicetree@vger.kernel.org
Received: from cp2.siel.si (cp2.siel.si [46.19.12.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6770A3559EF;
	Tue, 17 Feb 2026 13:03:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.19.12.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771333419; cv=none; b=t3wyy/w7B7uoZLsU812wphB/vDALyojltChA/Z9rBepUpgJsrxMfDyP+SnPBiIp3AYhPmJdoAn/54h4Lx4xOpyamEuu9MANIKSzTrGkw/dSDO/7EStTI/FaKr3JAq604L9PpbO3941LAR9SA5Ntt+D4tXk0M7KSLyh/Jsp2igjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771333419; c=relaxed/simple;
	bh=x1T/44VshD17eeqnZzfOgaT+NZ5UmXhyaElsbfnM31g=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=gylapeU/0Y9ntTfdnNBew+kxMIDQE+GCaRrlcV8PBUsPAt/vL6bOrFHdjTNII7t6NgDiXSkDOSY1BN0JVjSLs7rn67KHXatxCT/4WIZDYvjlz7O6ETAx3Uhiogyv6kM3wOZESBKFDq4jkTNM9Hl30RRxy13HvxF18EcQ0lcKmJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=norik.com; spf=pass smtp.mailfrom=norik.com; dkim=pass (2048-bit key) header.d=norik.com header.i=@norik.com header.b=h1QqkzxW; arc=none smtp.client-ip=46.19.12.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=norik.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=norik.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com;
	s=default; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:
	Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=HuGxPeUUoTAA7Z545fu8xoCOKPxhp7y1R0SdhD9LNdc=; b=h1QqkzxWex9sTxpAVrNtTh5hQe
	bB7jEws4b/FYTSsswSRytEKeOzAtwIHAbFViFKRZeWGZZEI3vbUItOqksvtPCRWOBNULTfiOuTD8q
	BRTkIea572eDZW3YuZQudPYpO5RD9IDi8YOhXPjgU7o8IlWwHH3l3oljWxcKz/TiPCL2yqdTGfKCr
	ryL1sth9+/tstWam5wUJ/fmNUnbPvgQMZLV7t1HXGdx0o4/AAk8l0VI9tkQg6J07ruyTkkwpdbpOp
	GPUbzUTEI6lff1waIX4nNnzeg9uAcxVXAI+unql00saNnXznIW8uLijWHfbtTxrjJNXYZl46M5KS4
	/eOILsRw==;
Received: from 89-212-21-243.static.t-2.net ([89.212.21.243]:56892 helo=florijan-nb..)
	by cp2.siel.si with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.99.1)
	(envelope-from <florijan.plohl@norik.com>)
	id 1vsKL3-00000007pWE-0rdF;
	Tue, 17 Feb 2026 13:38:01 +0100
From: Florijan Plohl <florijan.plohl@norik.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Sam Ravnborg <sam@ravnborg.org>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	upstream@lists.phytec.de
Subject: [PATCH 1/2] dt-bindings: display: simple: Add Powertip PH800480T032-ZHC19 panel
Date: Tue, 17 Feb 2026 13:37:58 +0100
Message-ID: <20260217123759.169317-1-florijan.plohl@norik.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cp2.siel.si
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cp2.siel.si: authenticated_id: florijan.plohl@norik.com
X-Authenticated-Sender: cp2.siel.si: florijan.plohl@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[norik.com:s=default];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[norik.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,ravnborg.org];
	HAS_X_GMSV(0.00)[florijan.plohl@norik.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	HAS_X_AS(0.00)[florijan.plohl@norik.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_X_SOURCE(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[florijan.plohl@norik.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-266141-lists,devicetree=lfdr.de];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[norik.com:-];
	HAS_X_ANTIABUSE(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[norik.com:mid,norik.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6E53E14C66A
X-Rspamd-Action: no action

Add Powertip PH800480T032-ZHC19 7" LCD-TFT RGB panel compatible string.

Signed-off-by: Florijan Plohl <florijan.plohl@norik.com>
---
 .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index 868edb04989a..b85071648968 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -268,6 +268,8 @@ properties:
       - powertip,ph128800t006-zhc01
         # POWERTIP PH800480T013-IDF2 7.0" WVGA TFT LCD panel
       - powertip,ph800480t013-idf02
+        # POWERTIP PH800480T032-ZHC19 7.0" WVGA TFT LCD panel
+      - powertip,ph800480t032-zhc19
         # PrimeView PM070WL4 7.0" 800x480 TFT LCD panel
       - primeview,pm070wl4
         # QiaoDian XianShi Corporation 4"3 TFT LCD panel
-- 
2.43.0


