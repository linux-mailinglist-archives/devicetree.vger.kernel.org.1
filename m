Return-Path: <devicetree+bounces-312497-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id itigB4Q4MWoOeQUAu9opvQ
	(envelope-from <devicetree+bounces-312497-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 13:50:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 112F468EECD
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 13:50:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linux.dev header.s=key1 header.b=ovKw2zBt;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312497-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-312497-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=linux.dev;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9EE7E3008FE5
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 11:50:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E918C436358;
	Tue, 16 Jun 2026 11:50:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out-183.mta0.migadu.com (out-183.mta0.migadu.com [91.218.175.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 644AA3AEF3D;
	Tue, 16 Jun 2026 11:50:09 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781610610; cv=none; b=I50GjKDeLrYfE1HUhtWZsbsi708L31F0+sY3fdMX90xeeFqInaL7/E1BORxtFg02VTDfKZWRE9oX06anYoLXHSWBp+TGBgsSbxnsCGLWvjkX/S0JA7XaXX/0wgG8QYptNLd7qlH8OnXExTr5LxR2u4YYJgH1LguwEwSgsPJkYt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781610610; c=relaxed/simple;
	bh=Kkjgn6lxKvMHZb5UZ+giBB47q4tMxB9uz1DlQ63bAEc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FpImFyNZITYM/nn4921og77QMVyJNn8EQXkXoL7tw5Ke/59e3rCvxTSAoU83NYe7bXanPPdwyQC0PySZUZlxMtjs2/zckm4TrP3of3etYFxxLITXcGLsi0VpqxCgJcfmqhvQCCoRbtRKVuJ7nEpXqyL1s8AM44jXUL1E7YBKjik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=ovKw2zBt; arc=none smtp.client-ip=91.218.175.183
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1781610607;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=2BBm3mPlMh+SOJi+AUYaxyeokxNjz3c7hH7SzkYJo9Q=;
	b=ovKw2zBtAGCHzV3upGpCB5Ol7D/0xKTiZ/BCcQrPX5jaIKTeitnXgENib7VDFvdIO7iq3I
	PIu065G7kXcbHACxXYzS6JU8NCXGMUzXw0V87/puE3d16+BpwvfCXh2RcRrkf0LkvIWn9W
	7uzi2q85WkC3PxdD1nfz3Gl+V/HC8RI=
From: Siratul Islam <siratul.islam@linux.dev>
To: jic23@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: siratul.islam@linux.dev,
	dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 1/3] dt-bindings: add entry for qstcorp
Date: Tue, 16 Jun 2026 17:49:37 +0600
Message-ID: <20260616114942.37241-2-siratul.islam@linux.dev>
In-Reply-To: <20260616114942.37241-1-siratul.islam@linux.dev>
References: <20260616114942.37241-1-siratul.islam@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[linux.dev,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[linux.dev:s=key1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jic23@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:siratul.islam@linux.dev,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:conor.dooley@microchip.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-312497-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[siratul.islam@linux.dev,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[siratul.islam@linux.dev,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[linux.dev:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,vger.kernel.org:from_smtp,linux.dev:dkim,linux.dev:email,linux.dev:mid,linux.dev:from_mime,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 112F468EECD

Add an entry for QST Corporation Limited
Link: https://www.qstcorp.com/

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Siratul Islam <siratul.islam@linux.dev>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 28784d66ae7b..11aac47f90ce 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1355,6 +1355,8 @@ patternProperties:
     description: Shenzhen QiShenglong Industrialist Co., Ltd.
   "^qnap,.*":
     description: QNAP Systems, Inc.
+  "^qstcorp,.*":
+    description: QST Corporation Limited
   "^quanta,.*":
     description: Quanta Computer Inc.
   "^radxa,.*":
-- 
2.54.0


