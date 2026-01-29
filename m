Return-Path: <devicetree+bounces-260726-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kMoCKtf0emnDAAIAu9opvQ
	(envelope-from <devicetree+bounces-260726-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 06:49:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB80AC121
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 06:49:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1F0B9303FF03
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 05:47:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 524F3306496;
	Thu, 29 Jan 2026 05:47:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="E7YGpAnI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E751302753
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 05:47:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769665673; cv=none; b=RFwNcExAXRuG5I42F7Mu0VCdNDqxeBPWVZfn7CJHYaye2svkseIGuAc3d1FBkzsX5qkVA9b2RT1NUMnpfndwqGfc8fk4dM41SH7MBQ3IHRK5xlRgilUDIbsVFaSUnRuuiJNojDlyVdXEjh3Wi9SC6xmfPrD+gJBEHDnq807V4jQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769665673; c=relaxed/simple;
	bh=QtehmTlxVE2ImMqTMUlN+wssHL5rLi9pMI7VHV6x+J0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=a5I2Je01SSmOTu5Mo5XpUhePEidJLRirwwBSQf6SGXLCCf1fQR2/ThpYWUi6Ix01cRErShLDlELaE+zY92qSSfBy6+XeH+rJyX+bRORVz5er1t33w0WvBbPrrrOtfzC+/RMBkbtsq/AGNmoz3w5zmNxXl4pMgj7IxuhpUZRQLZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=E7YGpAnI; arc=none smtp.client-ip=209.85.219.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-894703956b8so10729936d6.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 21:47:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769665669; x=1770270469; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0Hq1Jil93LKWD5SqiddgyBykMfT43TbOI7JPjGrETyE=;
        b=E7YGpAnITfaGdRPQnhHVxzbW2Sn1oJiSNGuXfBMiwxfim2ExAGcKq9zXxpn7KWNz/0
         l8dXBsUjNmPElUBBBDarqfaQgaclljYSxh4p3zwiKoi6+LMG+cIKsD9el65FkE5puTxi
         Xfe7UxlnbC1DIvF+NxGShKRKM/BYfiB9HL1oEl+mI7WnQgHZs7y43Rd4IM03mDZUSDLQ
         uSor1P9HNlfTqLke/Jb37bwwqkRVe9a3w+ZPQDBZ7uL9+QPvq67+/Sjg6ZDXPiltSphl
         w0Q1UkmGC9uJ3C24Yu8uPdLtPdl4sLuo3abT1vyRLHE0uBAoJUutZgncz3SMFtV7WFW6
         OM2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769665669; x=1770270469;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0Hq1Jil93LKWD5SqiddgyBykMfT43TbOI7JPjGrETyE=;
        b=bBo99/20ZvbEg+nR7JdJWB7LzzpZ6HOF6ZcPxg3Ohrt51H0FA9BainCHGl7tdS/MQt
         Cc8wuZqFpydamYgj7w/eIwj3N8nKqKt3j+yzDyLdwtY63nXSsflnQWKabK9BoSpeEowY
         oH0EbTd2NsEulbvf0zWT7OirV5Ug5eqyPi3BA71mu/E2Oo2FKfgPaCoV3o8XlyU8nK5e
         CiummNZvq3hKm6k3v1r0ZWF0Zt7K613ZLusPcHfnbnfCiIMeVN12m775m5HmZ8k3V45u
         d6blVzILgd1qteTNyee947HyEp5iWBAweFVrdtTK2kncvVkVsjHUGYSzgU9zUBp7Llfp
         a+2w==
X-Gm-Message-State: AOJu0YyfEZOciR+MDRGQIIQ/3DwAfwjG5N+GEkqhui43LFsPgqp32Iib
	xbcSj01tqOFr2P3cKgO6pjVHmiiM/FezmMLydzWtHm35/IeyKWve4Cz+
X-Gm-Gg: AZuq6aLHgzr8af/s919AGTP9qEmioAAudOG7vIrqmmDIgd7ITvHp50msoX1mgm1QzT5
	jxMWZgPY5ApmFbBww/tnJXzOstmvApFLhvjh7cf05ITDWJ5HjOpXPvwY3G46YG+/DOa3BO4XQpb
	ly0SJYdmEwq6F+pvCY+T2LfInuy9Xc9XlzcKhyU79uvO4hRY3kbnZmujW81nwsVpUmOheEZfb+b
	MiIEtF2WJF/dWU7JVnMmOJujeFrTmQIOyqRy/IBqeMr9fsvJfFXhuF4ciVe6qmT+KaDeGBUncpe
	ype3LMSX9nTFXtU4FnG4aYtMdzBGK139RKsYg1vZaSPx1j7I1odYTJTZwd2yEBT1oNqJITvshrV
	fcvchIs607W2JjgtKOCQPV4QixXL4EytVH6kTM7Dx94v8ScZ3ifYoXMi5+EAOJqqVkvJaMu+1dF
	5HXeOARyhPeS+GBHkB0AJharnrKQF7MqT01Xrt6EaO62XLZT+/DGg5yjPHPm7hl95k3ap86GVAA
	d7NBsZXCQ==
X-Received: by 2002:a05:6214:410f:b0:894:7d78:9cf4 with SMTP id 6a1803df08f44-894cc7d012cmr118216296d6.13.1769665669193;
        Wed, 28 Jan 2026 21:47:49 -0800 (PST)
Received: from mighty.stonybrook.edu (nat-130-245-192-1.resnet.stonybrook.edu. [130.245.192.1])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-894d36dd1cfsm30903216d6.25.2026.01.28.21.47.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 21:47:48 -0800 (PST)
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
Subject: [PATCH v5 3/8] dt-bindings: display: bridge: lvds-codec: add doestek,dtc34lm85am
Date: Thu, 29 Jan 2026 00:47:04 -0500
Message-ID: <20260129054709.3878-4-bavishimithil@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260129054709.3878-1-bavishimithil@gmail.com>
References: <20260129054709.3878-1-bavishimithil@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-260726-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2EB80AC121
X-Rspamd-Action: no action

Add compatible strings for the Doestek DTC34LM85AM Flat Panel Display
Transmitter

Signed-off-by: Mithil Bavishi <bavishimithil@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
index 4f7d3e9cf..3ad01645c 100644
--- a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
@@ -33,6 +33,7 @@ properties:
     oneOf:
       - items:
           - enum:
+              - doestek,dtc34lm85am # For the Doestek DTC34LM85AM Flat Panel Display (FPD) Transmitter
               - ti,ds90c185   # For the TI DS90C185 FPD-Link Serializer
               - ti,ds90c187   # For the TI DS90C187 FPD-Link Serializer
               - ti,sn75lvds83 # For the TI SN75LVDS83 FlatLink transmitter
-- 
2.43.0


