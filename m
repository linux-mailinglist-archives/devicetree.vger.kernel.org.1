Return-Path: <devicetree+bounces-267225-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0MsOFA/rm2km9gMAu9opvQ
	(envelope-from <devicetree+bounces-267225-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:52:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D36E8171F54
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:52:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8BFBF3030763
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 05:51:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96BFA346779;
	Mon, 23 Feb 2026 05:51:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eCwK+eRf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 528E0346766
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 05:51:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771825888; cv=none; b=sw4uTHJxUqRQkWlMfvB9QX029gerUh298TjyEW8opGotoeL0jmkNqNwGyRD/oLsy8Ur5nc78kBXZ+bsZyJNad7aYR4OFcRBsPhbferknWg3EppFlsOLFkI7UYBd2HbEVQl9Z96kiLjEOvsGvbx04wHjNgKvYgu7xmd0R9aHJ1vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771825888; c=relaxed/simple;
	bh=cihNYnflN3AVGRiDEm19DGgGttXrkIyvwuts3JIQy3Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=U6kLiEfsioloXzw0KSyAIzHYtXVZNf4zNDTNYcdlwAkRsdaF0qSF/ipwclgcl7ZEoGFOJ99X5OQH00Bv/cjnk5WtmjWd10X+nwIyrPZYelXicdAOCqGWQdYvTUbsV4ksyiaIxrlystiumdkACwPmSuIgo4i07jKsO4pYCClZoPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eCwK+eRf; arc=none smtp.client-ip=209.85.219.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-8947ddce09fso32894326d6.3
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 21:51:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771825886; x=1772430686; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1IVPvbiKHqb1wJCwFPWETEeAl2aF1oAt9knBh3vkK+g=;
        b=eCwK+eRf0Z7p6fzbqmjf8pZffEqsEQOzpgDsnZAPJuG9PPhnzil1JkReC5yblhLuOV
         ZygNNFJHAcTNPCsQEs91Ih1zYJR7G/ArqoeE+iPfLnB59Ja5EOxLtL/If5RYRdzGrC+O
         N9gLCuDj+raq+QhWc5ifqaaIaNLS2xXCWJVAA7sgOM0rxMdLCHM9qJ3ELBpz7dOXSGAy
         egRwB3c8IFWhS+iZv3OCmE+tU2idNu1BCa22D+2GuRZ3JlgPK1zI8QciD7P5+5Yb17Jk
         TEInSLrqzTd38dbUCCiAb8om47M4ckC/3MaZ1MQgQCO/2PEVaXvQLnocUbms0rNXqjke
         cnOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771825886; x=1772430686;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1IVPvbiKHqb1wJCwFPWETEeAl2aF1oAt9knBh3vkK+g=;
        b=aPeQ4fLEf9fBPWEIJiQqiUgv4l7FKzHs0+kRo7OeDzavtE7qePpAIdBn4lcbf1ErU3
         iPzAP6T8dMdIcPTYIH/NozA/zEGJq53Z3lqAeZ6vn9ZiQf9m9rUYM7mSFK9TDuO2fAeW
         VMS/1gWxILx0bnxmKVTdsTl7Cu5eWSDH4QUxJR+l8NRC2RwaHahAg9y3TVJ6g5BMRi5/
         22BhvQ9Jy0Mpcig3nY3kya9gj5fr7PIzIIvJGPG834GwxVf/l8ovfzuTxdFMTl0NfQFN
         Wt9ScAEiozfSiV5gJxBSVX87jHCriIkIX2vbwiFEfiFdyM1GfEILky09246B4twCICzI
         a1ow==
X-Gm-Message-State: AOJu0YxMFscEt9054DwHA7GgtarvZLkx5vpGfuG43mCqWmEditbj4Lbx
	zXgR5+rEg2H7jEekeTbvIxZ4CcwUZECeB+f5w30DnebjAwVPsy9zy0/K
X-Gm-Gg: AZuq6aLAu74bq5V1CnhQymvtDcPyI9pwgXbbSYs6cUP00WF11myTKG93DF6btukdvsu
	RTFg7zTTuDvlu8DbmEtyFfILUOTc++K1NFTvo16QukcvKrQLnpoCNfamlmFziYQxCx7uchZ6vPt
	xNmdauTCJmmhmGpSAW2qNnQ3MO2t2qLyBmcIJXJKpejbDZ+TwfgPx9RSOXxsi/NECMcatvR+2Vo
	RJikiGZQ+cpHWWyL3j/5XebY1e0eDH2s5HoxFlZHFXZMc6jHnZZrBLn/8c50BCZGwmZvfOuv3h2
	xKk32VDuUcyvkOdRnac61+pVr8klNPhSkp2yzGAO6nb4h/MGAaf6EVSoU18v3YN7qjGxU1+4o0P
	CTap6/uCItWahcepKrrbPlDXm886kf7PAPVMGy3tMqE8Dyh6dWMuNszG8MZD8e0UnhWRuTSGz81
	5TlTZkMNM6IYJgnrLfhuevgVinXJelpkNnE71vfrYLDHBpK9IdH738UeL4IjW7MHdi9WZCNacT2
	GfK1ChQoG4=
X-Received: by 2002:a05:6214:767:b0:888:3d1e:f95 with SMTP id 6a1803df08f44-89979d382damr116207246d6.32.1771825886251;
        Sun, 22 Feb 2026 21:51:26 -0800 (PST)
Received: from mighty.stonybrook.edu (nat-130-245-192-1.resnet.stonybrook.edu. [130.245.192.1])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8997e62f453sm59459096d6.36.2026.02.22.21.51.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 21:51:25 -0800 (PST)
From: Mithil Bavishi <bavishimithil@gmail.com>
To: aaro.koskinen@iki.fi,
	airlied@gmail.com,
	andreas@kemnade.info,
	conor+dt@kernel.org,
	jernej.skrabec@gmail.com,
	jonas@kwiboo.se,
	khilman@baylibre.com,
	krzk+dt@kernel.org,
	laurent.pinchart@ideasonboard.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	neil.armstrong@linaro.org,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	jesszhan0024@gmail.com,
	rfoss@kernel.org,
	robh@kernel.org,
	rogerq@kernel.org,
	simona@ffwll.ch,
	thierry.reding@gmail.com,
	tony@atomide.com,
	tzimmermann@suse.de,
	andrzej.hajda@intel.com,
	bavishimithil@gmail.com
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	linux-omap@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v7 4/8] dt-bindings: display: panel-lvds: Add compatibles for Samsung LTN070NL01 and LTN101AL03 panels
Date: Mon, 23 Feb 2026 00:51:09 -0500
Message-ID: <20260223055113.1288-5-bavishimithil@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260223055113.1288-1-bavishimithil@gmail.com>
References: <20260223055113.1288-1-bavishimithil@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-267225-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	FREEMAIL_TO(0.00)[iki.fi,gmail.com,kemnade.info,kernel.org,kwiboo.se,baylibre.com,ideasonboard.com,linux.intel.com,linaro.org,bp.renesas.com,ffwll.ch,atomide.com,suse.de,intel.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bavishimithil@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: D36E8171F54
X-Rspamd-Action: no action

The LTN070NL01 is a 7.0 inch 1024x600, 24 bit, VESA Compatible, TFT
display panel
The LTN101AL03 is a 10.1 inch 800x1280, 24 bit, VESA Compatible, TFT
display panel

Signed-off-by: Mithil Bavishi <bavishimithil@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/display/panel/panel-lvds.yaml         | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-lvds.yaml b/Documentation/devicetree/bindings/display/panel/panel-lvds.yaml
index dbc01e640..b31c67bab 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-lvds.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-lvds.yaml
@@ -58,6 +58,10 @@ properties:
           - hydis,hv070wx2-1e0
           # Jenson Display BL-JT60050-01A 7" WSVGA (1024x600) color TFT LCD LVDS panel
           - jenson,bl-jt60050-01a
+          # Samsung LTN070NL01 7.0" WSVGA (1024x600) TFT LCD LVDS panel
+          - samsung,ltn070nl01
+          # Samsung LTN101AL03 10.1" WXGA (800x1280) TFT LCD LVDS panel
+          - samsung,ltn101al03
           - tbs,a711-panel
           # Winstar WF70A8SYJHLNGA 7" WSVGA (1024x600) color TFT LCD LVDS panel
           - winstar,wf70a8syjhlnga
-- 
2.43.0


