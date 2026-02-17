Return-Path: <devicetree+bounces-265975-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wC45HtESlGk1/wEAu9opvQ
	(envelope-from <devicetree+bounces-265975-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 08:03:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D241491D1
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 08:03:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 62D60303B4F1
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 07:02:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5FAA2C21F6;
	Tue, 17 Feb 2026 07:02:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b="w1L7UxZa"
X-Original-To: devicetree@vger.kernel.org
Received: from out-171.mta1.migadu.com (out-171.mta1.migadu.com [95.215.58.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 182C7285CAD
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 07:02:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771311741; cv=none; b=NHhoWkbonglY78r8DmDFGWRjtsPjtHz4+VweCqHf5o9AoXBzdoN71KvdZZLp/nx3cDiH8I6f3g39PfR9pmGthPWTQ9MZEkb159PCcbW1yOVeLRrwiPoigjBbRpJWtGPHtQ91GzswmlZ1w0rBd6KtOF54rbOhaymKFe+Vno3z7OA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771311741; c=relaxed/simple;
	bh=V8h9ZYIphVmKrXI3LnFoYg8gfobz/Rfo1Y2e1pt4HLI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=umZ90WEGCI2NwPP8/px5jMj2vgGvxnODMs1BA6TRZw9g3cJYt30PzjH5m5XBXIL0xvsOhRkRz5PKJbvWkgJHhzX11pEErVBLPbMOLZhss27JTyigd3uN9NR8Sa8w6ZX2j+FN/IuHOfT3HsXhs8Hz2YG2sNkn8X4dnhv6kuIwQ8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool; spf=pass smtp.mailfrom=packett.cool; dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b=w1L7UxZa; arc=none smtp.client-ip=95.215.58.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=packett.cool
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=packett.cool;
	s=key1; t=1771311737;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=JmUvKLhNQi7xkDVEqgiTsgyG8WDxxFWnZAgXXNJS7pw=;
	b=w1L7UxZafmePtp2ioz5o5Rx9nX8ZkFWSxvGCVVX4dn0v8h7Mhx6gLH2yxGIdNDVIhY9xaZ
	CZn74iKcG457AuoELjGZ+YyBqepwJgYgpt3WroSNzgOENlYpF9cU97IH2sHe6yKNzVLE/+
	Azo5YcZwnYGqqG9IrO/qZcg4PFoHHcZ4vlo9sWuR8eu8OixZaRcuUdA1w7rrpz3v2hXDtC
	B/zRxU38wjY6Qu2YjVcEShVbVnCoIY+de5khbraqzVYpeY9Ykms58TaZqG/LNJ7mxqY713
	quXKpUN+PXDA7uFPtqfqXxab5+O+wZjPrnaMozgwbpLAiebViGkAgjpixH4VXg==
From: Val Packett <val@packett.cool>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Cc: dri-devel@lists.freedesktop.org,
	phone-devel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	linux-kernel@vger.kernel.org,
	Val Packett <val@packett.cool>,
	devicetree@vger.kernel.org
Subject: [PATCH 2/4] dt-bindings: display: panel: Add compatible for Holitech HTF065H045
Date: Tue, 17 Feb 2026 04:00:10 -0300
Message-ID: <20260217070121.190108-3-val@packett.cool>
In-Reply-To: <20260217070121.190108-1-val@packett.cool>
References: <20260217070121.190108-1-val@packett.cool>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[packett.cool,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[packett.cool:s=key1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-265975-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,huaqin.corp-partner.google.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[packett.cool:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[val@packett.cool,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[packett.cool:mid,packett.cool:dkim,packett.cool:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D3D241491D1
X-Rspamd-Action: no action

Add a new compatible for the Holitech HTF065H045 panel that uses the
Himax HX83102 controller IC.

Signed-off-by: Val Packett <val@packett.cool>
---
 .../devicetree/bindings/display/panel/himax,hx83102.yaml        | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml b/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml
index e4c1aa5deab9..66404b425af3 100644
--- a/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml
+++ b/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml
@@ -20,6 +20,8 @@ properties:
           - boe,nv110wum-l60
           # CSOT pna957qt1-1 10.95" WUXGA TFT LCD panel
           - csot,pna957qt1-1
+          # Holitech HTF065H045 6.517" 720x1600 TFT LCD panel
+          - holitech,htf065h045
           # IVO t109nw41 11.0" WUXGA TFT LCD panel
           - ivo,t109nw41
           # KINGDISPLAY KD110N11-51IE 10.95" WUXGA TFT LCD panel
-- 
2.52.0


