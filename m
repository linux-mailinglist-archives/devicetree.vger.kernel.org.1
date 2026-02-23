Return-Path: <devicetree+bounces-267439-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kBu+E7tbnGmzEgQAu9opvQ
	(envelope-from <devicetree+bounces-267439-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 14:52:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A542017760A
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 14:52:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2A2CD30C2235
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 13:49:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EC3A257828;
	Mon, 23 Feb 2026 13:49:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="c0QWQBfU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68FC72494FF
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 13:49:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771854592; cv=none; b=q2Mpmhj440BgPQq+j9o5aL1wFtIAajjjRDQ1NzNTf4+A57hSc+dr5jF24XhNTiznfYvW/Xn+DgsGe48wFAHVYMkkoFauLwEpijMjgpoV6iIgNtEGgTmS5uYm8AAyzg/Tm5eoOEEpeD83fev9XP5/8L/yJnMsQdSXi4BmtFjHgUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771854592; c=relaxed/simple;
	bh=QtehmTlxVE2ImMqTMUlN+wssHL5rLi9pMI7VHV6x+J0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cMMwOpE44qbVWmAjlq03C3QP7DA2HOSEdXHQFdfu5oDgZkbZlmxq7akR5f5LhEWzwc/4i2mQwn8OPTnZDdUsqhTwoYWVQFUZuFasK5MxHYSJzQ6XWEgH+yR/gdR1WKqoTIgYjl1Tm+LPqfKfiFcysU2W8fRt0qilVXam1txYhtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=c0QWQBfU; arc=none smtp.client-ip=209.85.222.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-8cb39f64348so376747485a.0
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 05:49:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771854590; x=1772459390; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0Hq1Jil93LKWD5SqiddgyBykMfT43TbOI7JPjGrETyE=;
        b=c0QWQBfUNBiM17Ru7Mdwxqltc/eWoW8/omuiz/ynwi7XTLZfOFrSMQrNtyCmINdEv0
         bLcVNHBwmk8s5J7HEXTrNpyc7PDt7GyLEVLAPiBT5+GEQNytmCTVGbTiL5U9kcPY3eBR
         SbPPocBSuA4DTwhoMMMJe8QL4DkWkpPa+FvbcFV/VChKq/uZ/dIK6i2G32dPTsYI9XTD
         bhUFrCQC9OzTJetXFBfYXOZ7AvzF8ptWPkoFnE5Mrj4ozDn1T38SJ+hIUvKOk9CujeP8
         Uy3wzyab1oCAxrWFNfyCQoYkcZ3gFkGsvwv+cE3faH9qUAlqBRnrLV6wQdi1MD7nCCqM
         ruzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771854590; x=1772459390;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0Hq1Jil93LKWD5SqiddgyBykMfT43TbOI7JPjGrETyE=;
        b=cCPcgfrXS6Dky/MlOiTsg3ojo1ARsPM+8+agQuj892oHScwCRPai4dKt1lXKIkPIOh
         jFc7a9UTUQwYMao1DzNf+WgeeGW1SsUiiohnHEH17TLHzRgz4P6SCloQ69tnMioSveTF
         P1A1J5Cd6eFBTPRg0cwZUdBjbJEIWDgHR48L28Ld3IcsF0pBFy0LQzOLyPbsA4NBypGH
         dQFIAD1MZSA8iQveK9RQp/TDV77vKLAUM8InoP5ks/2keYa1PzE7dCijo0YDNfsNumc7
         ut3o/TEDuZ+G34bzMutudnEAF+C1ukHxM08W2iZauJsjo8BcUV3wSRzgKk+HY4vE2WAi
         5DyA==
X-Gm-Message-State: AOJu0Yzl8LzuZQwFSxsFrhWdK2ru+QKViZ0Ni/XnG6abGSVTLs/Lb+uh
	JvxcbZbCecwq5J1VOte51kMaX96Fp59c6PsR2/T9bWKQG/7fxEGPx5fI
X-Gm-Gg: ATEYQzwa48Kq1iuXqrNTUDZ0b+4jL9v2APA7C3gGwyp1lA0TYZK3wi1bderjKtPXkvS
	gjPH6v/jCrOa0vHIY0TkdcVGg/QjbSVdIkdmdMeND4hW7x1TlSqwW1+tF6+mmuMyNq+BCeQ657q
	cZr/v4mHUPr2Hst579MxFapCar7lxuXrOV3WvIL0y/EdOy5NLOjBiDU/towNSG8nv8DnXuFbvp9
	/UJrngrtcavjYOdLg0wvSd6MIKacMreSy95kz/KNoA2jEFM6Yql7Ucapv5Sg9y32V1dtbvuPAGu
	qpc3iHWVMuDMBPls5bqCqay0SHmTn116h5KhwR3JttMVZJFDywj77fyMujBCwiosxnDsgYXQ3KE
	kYNm/hOAOMSmqm3OhTMVWWA55n26+grx0aX52YoYSey6ZhjiWtPsWSF4sSjey+MeWLcoS7E0dp7
	ZcNbsczs2AiJ94j851/lkXLlAXo5paEC4PP7V8Dsw5IuFk0o6gw3Jn/apqKBAyZNOLJha58psXJ
	qceHnY5NrB0G3hWatbxEQ==
X-Received: by 2002:a05:6214:416:b0:896:f73b:c887 with SMTP id 6a1803df08f44-89979e31ccemr123555016d6.4.1771854590226;
        Mon, 23 Feb 2026 05:49:50 -0800 (PST)
Received: from mighty.stonybrook.edu (nat-130-245-192-1.resnet.stonybrook.edu. [130.245.192.1])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8997e62f453sm67954716d6.36.2026.02.23.05.49.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 05:49:49 -0800 (PST)
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
Subject: [PATCH v8 3/8] dt-bindings: display: bridge: lvds-codec: add doestek,dtc34lm85am
Date: Mon, 23 Feb 2026 08:49:35 -0500
Message-ID: <20260223134941.427-4-bavishimithil@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260223134941.427-1-bavishimithil@gmail.com>
References: <20260223134941.427-1-bavishimithil@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-267439-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: A542017760A
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


