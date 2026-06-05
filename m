Return-Path: <devicetree+bounces-307232-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XWiDCMt3Imq5XwEAu9opvQ
	(envelope-from <devicetree+bounces-307232-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 09:16:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id B1946645DC0
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 09:16:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b="fSy9aAf/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307232-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-307232-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 462DA30B074A
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 07:10:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B54A3478E3D;
	Fri,  5 Jun 2026 07:10:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A581646AEE2
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 07:10:02 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780643405; cv=none; b=Fm+YbxKDWU+Mw+5Z6G70gyLBh/DXszTPjz7QPyGwA4JUn+MUSocJb8cPmunPZS2vjUPzgn/ecZKxtqj2Scj75iV/+aAo9Zg8NQjAk06p14mU90Lab/lUd2rBqk3Nhp5uXo34vVHTGwJqaOTDEkTjB4ghDKc7Bm3sPjKsJ04laqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780643405; c=relaxed/simple;
	bh=7MDbaMfdfDFcEL1euNDkSuzapxJuUtssv4QW4CSalUc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=c7jbjmjqSLtuGSVJKEUUBi/Lyzf9lCnWJtwBQ4bpqHEGFxw/tLg4domPUQAdCmefP2pugwyBBFd+xLIuUfNOxtR95x73WXV59QaOoyRuPfwu3inW14wipa0jZ6FAQYVtp8sPbBMPnMNYCbl0pdSMLBIeQjzNgD6lKrW0a/oxr0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fSy9aAf/; arc=none smtp.client-ip=209.85.221.52
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-4600ddc4017so1191113f8f.0
        for <devicetree@vger.kernel.org>; Fri, 05 Jun 2026 00:10:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780643401; x=1781248201; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oL4Y31r8dtXqoPXz/W9R/fk3pvn98vrw1YoAz+z4buw=;
        b=fSy9aAf/UppHL2XCuU87VFTQmEsCIb/b4p5MU/uaQTdP3j0fbn3QW9kZS7IsOgGmRL
         A9TPjxfxioz3hQWmTBq09svrElNUeclNmT2W9ke2a5hAxeFXvlJlWrTBsvdg41zF6PT+
         1UH1MBTL7K6BuWC03AvGOaI/bIExTFWtIKvBUe+V2soaQGIynTuTKpa/mbeO73NRF2i4
         Eq1fhyuIYKelTNDBdOqoIKYUAc+N0Ss0RmsukBtY6KzvCVWmH+I2/SdQpQG6n0N74BcJ
         CkHrDAK0l1+w8y1tumNFf/bq1BA1stF45eWrgJwtJImvUu6/DtAfS21ibRka+z5zvlda
         CMQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780643401; x=1781248201;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=oL4Y31r8dtXqoPXz/W9R/fk3pvn98vrw1YoAz+z4buw=;
        b=lxnoLF6FFi3l5gxAbNXVYdPPIUH14qhErhre733KWXkmCnojiIZtZfQjnUAaCPJnjP
         ABb6BeF/1gjRtAzSz4rhz1sDmDkEwl7iLFFI8U9V/DrdQZsc34jHtWj9B6eYqv/dmm7K
         S5X9MzEemeROkMlo8sKnbm18s4N0Ee8EVc32sr5dt7/6+3YUbRZFZ2XjtpN/jrpAqpKA
         xEWcq0xgC7xNh5NqHfWE1o0RLNWm2O1h1opiePwjxO8DrzcXWxwgAklfkHULj1OOOvj2
         7GGmsYBDjMqFcPoq5lZpWkwL5e/Vg+y0w/ZvwmurwjjYM1ok8K96OBfM9eM25O4OYshp
         8oaA==
X-Forwarded-Encrypted: i=1; AFNElJ9R3wvqr6+b3Zm0TFlpgdOmgmGo5Kst8DXoKLhRH+iNBlZ1+6gV+yPnwHawb7oa5s32dqGBA9wqtHuO@vger.kernel.org
X-Gm-Message-State: AOJu0Yyfzt3RZh3bYFAI+SuYGH/EWooFMyAK+MEqDnRbRF+AtejoNs2w
	urKLChbXpcMbFF5zsgt2IpklHxxUkBPTI2xaesl0x10BSMBgbkzBbBtR
X-Gm-Gg: Acq92OH9uheVrNPbTQbfcJZu5kpBzxJR+SQP6a5FuUtNWdfc/b4N94FHf2ScYZRnkTx
	Hu36aaEgWIx1Lf7d/Z9B0UwTSlHdn8w9N6ayR1r92qxYKe3YpBSBM4qcnPyCXf+QaIXOaKKDQM3
	udl4MFz8sfN/2K4uWBaQ8a2V9oegnhO+PVMRdu0qzOHInh6O9bIxsIkJDeWtKSKmi0SUGXFsRHu
	SQta6SxsYmzCtDhbsNeN+/V/eqpk2pRbPSkcnlAjDDfYyb/1Tju5fQJDpLYIXQVHtO/c0r7NMxu
	ykcyIoH+iXFRlbc7Gal94/Pt3HzCmSBG6zLH8Ed3+ZxjLHB1LGH2RKpvr7opkne+bvg1S3LesZi
	N5Am6nDzc/4AtgGi3Q441tgPy3iy98B3YcWd5DrtXs1tzGZP8A5SpM/MVfRUWSTQvhdAOlsZiZC
	CUsL/FaDkVRiimZgtHa6d7MecVPtMwHcztQ2QQnPL2uQ1razW99gbHT8tC6V0LO1CfA7w+kfWJP
	DLtdLffihAXfGRzi7Y55cwYPRGZT+Qk
X-Received: by 2002:a05:6000:178e:b0:460:3234:293d with SMTP id ffacd0b85a97d-46032342a62mr2372600f8f.40.1780643400949;
        Fri, 05 Jun 2026 00:10:00 -0700 (PDT)
Received: from localhost.localdomain (72.92.4.85.dynamic.cust.swisscom.net. [85.4.92.72])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4601f2dcad5sm25132882f8f.5.2026.06.05.00.09.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jun 2026 00:10:00 -0700 (PDT)
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev
Cc: Alexander Sverdlin <alexander.sverdlin@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Hans de Goede <hansg@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Andre Przywara <andre.przywara@arm.com>,
	Jun Yan <jerrysteve1101@gmail.com>,
	Lukas Schmid <lukas.schmid@netcube.li>,
	=?UTF-8?q?J=2E=20Neusch=C3=A4fer?= <j.ne@posteo.net>,
	Eric Biggers <ebiggers@kernel.org>,
	Michal Simek <michal.simek@amd.com>,
	Luca Weiss <luca@lucaweiss.eu>,
	Sven Peter <sven@kernel.org>,
	Maxime Ripard <mripard@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-input@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v4 3/7] dt-bindings: arm: sunxi: Add Baijie HelperBoard A133 compatible
Date: Fri,  5 Jun 2026 09:09:17 +0200
Message-ID: <20260605070923.3045073-4-alexander.sverdlin@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260605070923.3045073-1-alexander.sverdlin@gmail.com>
References: <20260605070923.3045073-1-alexander.sverdlin@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-307232-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[24];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-arm-kernel@lists.infradead.org,m:linux-sunxi@lists.linux.dev,m:alexander.sverdlin@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:wens@kernel.org,m:jernej.skrabec@gmail.com,m:samuel@sholland.org,m:hansg@kernel.org,m:dmitry.torokhov@gmail.com,m:andre.przywara@arm.com,m:jerrysteve1101@gmail.com,m:lukas.schmid@netcube.li,m:j.ne@posteo.net,m:ebiggers@kernel.org,m:michal.simek@amd.com,m:luca@lucaweiss.eu,m:sven@kernel.org,m:mripard@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-input@vger.kernel.org,m:conor.dooley@microchip.com,m:alexandersverdlin@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:jernejskrabec@gmail.com,m:dmitrytorokhov@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[alexandersverdlin@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,sholland.org,arm.com,netcube.li,posteo.net,amd.com,lucaweiss.eu,vger.kernel.org,microchip.com];
	FORWARDED(0.00)[lists@lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexandersverdlin@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp,microchip.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B1946645DC0

Baijie HelperBoard A133 is a development board around their A133 Core
board. Introduce a compatible for both the Core and the development
boards.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>
---
Changelog:
v4:
- renamed "Baijie Helper A133" -> "Baijie A133 HelperBoard"
- renamed "baijie,helper-a133" -> "baijie,helperboard-a133"
v3:
- no separate section for "core" .dtsi
v2:
- introduced baijie,helper-a133-core compatible for the Core (SoM) board
 Documentation/devicetree/bindings/arm/sunxi.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index e6443c266fa1..82dd58b95f8a 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -96,6 +96,12 @@ properties:
           - const: allwinner,ba10-tvbox
           - const: allwinner,sun4i-a10
 
+      - description: Baijie A133 HelperBoard
+        items:
+          - const: baijie,helperboard-a133
+          - const: baijie,helperboard-a133-core
+          - const: allwinner,sun50i-a100
+
       - description: BananaPi
         items:
           - const: lemaker,bananapi
-- 
2.54.0


