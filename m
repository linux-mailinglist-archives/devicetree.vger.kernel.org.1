Return-Path: <devicetree+bounces-315000-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WOgSFGHxOmrDMQgAu9opvQ
	(envelope-from <devicetree+bounces-315000-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 22:49:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BD5C16BA200
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 22:49:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=m1oYq2F8;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315000-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315000-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 69392309F523
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 20:48:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A3833ACEE9;
	Tue, 23 Jun 2026 20:48:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60D023ACF01
	for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 20:48:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782247723; cv=none; b=ihfH8Jt7Ove7ghUrpf0bS2bxJTgR/yfduOGEimjIkkD1PfG9PX9KdC7QkuabRuT0ReVNrn0haXxNX06zUbNOIjjqh1KXB688Ph50evv1n9calrmDpeJT7oZbTiCk9J0kcYDQ6t2HdtKXoR3TsSGAZ6d0ppoPcze+xMKEay/AMOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782247723; c=relaxed/simple;
	bh=dR45JslvD8X9ffV3iYwOxJm087D1op+CNofDiF/LfOQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YUfJFDVfar3a61KtkYPm50p+mOeKsw3qmTvOpfVJVx80Ommafb3A8wEJfhPvynyYkwB14gSDRvSIN6ve4j/UI6XEyuY/mSqKTKKV00fHS36MfyDxZGk/VYJly3Vi1gqqcmxTMYBIrPiBBIuyryyWKGvtW7xz+OHx5BMmkiQNgXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=m1oYq2F8; arc=none smtp.client-ip=209.85.128.44
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-490bc6a7958so10466455e9.1
        for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 13:48:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782247720; x=1782852520; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fHPVJLFdyyFn1B3+/j6XeVWPQvw5tBspxfdA6KrvZVs=;
        b=m1oYq2F8ZweMqdxIFtBb71bpuKN+qZPCxbJQ9VYlDb+JxLySGWFae+G3ZAXpb5EqLk
         w12SHOEEPQnHthqPzVJPqWJvKvd+7za9i4MEiGyRaYzvV8d3EOk39b0WWGd4ToEx8LEB
         bp8jNevYNz5j3e+wuGBrU70JCyAfSkGuCNO4YPbkeX4znQEpuBW1CltC2w9opBSDvvhv
         mQTH0zV/82oS1klhRgtIY44iZp1le6S+Yz+b2BI1MYmL7mMn4q5mLny6VTFrj88gWnp1
         5hCkKZF0JPbMOW7ybXJMPsJBEgpoijKcOnkkI+bq7/wCFPEjjQXfuzXHbU+nbI5RUDo+
         rysw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782247720; x=1782852520;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=fHPVJLFdyyFn1B3+/j6XeVWPQvw5tBspxfdA6KrvZVs=;
        b=NHjAxmNkx+fR0e48AP9K2Ajc5Od/JEUB27RjA3r3oqaBKiHsT7wm2Bi/05Grdx8uCE
         66tCHbMy+rC9a0NpNGpqlJhuqN//GgHgizJiB9K1+vIf+XYuJTd0fKTk5SB/R8CuVXf3
         OWf0sn0Sn+4OPhnJvwK7f8GVdv+wg1tHsvpjTLC0wlVwwGUd16WlgKFjnB9e98ta/fbn
         yDJ7p3ANv6Bv7NwnPBsG5IiY4zw2fE20QAqn4DjegNbHpiV/Ly+17q/UgjAdXJNlWEaj
         TBvOFcDon1Hup/DlJuOJgo7q6zFtzOfaNAOoq2DXF9LgQkbsTPdPVY7QcAHYemypQOGU
         gDeg==
X-Forwarded-Encrypted: i=1; AHgh+RqnxQgbN8pgjv0URyxFZ4urq/NQ82vCthTgzQJ493JxEwOQrBUb3SPAVyUJGl9tK1XbsZZ+Q/uKOO11@vger.kernel.org
X-Gm-Message-State: AOJu0YzBt/fUVEJgfCjZZ/3RM5srpW3T4NmPqn9yS6f8DbRtvv7WevXY
	OMzDausZmWk79hdiHTlDGIsQL/o9+8ZSoapDOVn6c71OvYR6Zd9e1tRD
X-Gm-Gg: AfdE7cktjc7fSJFP0tfTmLZbqbZWL2b9QkQpk5395bFjbMtzWpsOGgzxdHjPD9OcblM
	PW/rhJ+qtAFIFxABZZoopySMmyrWXwlzWE8jBB0/xqhq30QGwlm1Hykgt/oMD95z2BKYqiebyhH
	N0Fqaslu/pMtLHrSnctX4iJB5izgq74FAUbRpVezOLRv35R0Xr0Uby1N8lZ1Z+tUT60ZPA/9OBj
	CzQ3J1Or88u8nUb9OTK8fvBTVoaYGr2g4OGr4R4gdzErX3SVUfmsR8qc/Ehp+1iibGa++W59zIN
	ObDy40QVa4AYoqplzgztP+SW/VirSJhfWPxozmJAqA5iyeWWcejLIoGFqnG/Nwsc5sn3zsR7Dr+
	gCQIJJuk7F6bCdBynn4HXrBUqIv11dkjpQpVwyPqSUnu1B1AswIo/Yqhas2CpP9feLz23UJkGUW
	7/X91MYpsR62giy8G1DOvf9b1CFf1jKkHhmOl3zBtMSw==
X-Received: by 2002:a05:6000:401e:b0:460:6b12:1783 with SMTP id ffacd0b85a97d-46a7ebdf3eemr8161239f8f.4.1782247719719;
        Tue, 23 Jun 2026 13:48:39 -0700 (PDT)
Received: from localhost.localdomain ([2a02:1210:8642:2b00:82ee:73ff:feb8:99e3])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-46c1e840f80sm351996f8f.6.2026.06.23.13.48.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2026 13:48:39 -0700 (PDT)
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
Subject: [PATCH v5 3/6] dt-bindings: arm: sunxi: Add Baijie HelperBoard A133 compatible
Date: Tue, 23 Jun 2026 22:48:15 +0200
Message-ID: <20260623204824.691832-4-alexander.sverdlin@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260623204824.691832-1-alexander.sverdlin@gmail.com>
References: <20260623204824.691832-1-alexander.sverdlin@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-315000-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[24];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-arm-kernel@lists.infradead.org,m:linux-sunxi@lists.linux.dev,m:alexander.sverdlin@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:wens@kernel.org,m:jernej.skrabec@gmail.com,m:samuel@sholland.org,m:hansg@kernel.org,m:dmitry.torokhov@gmail.com,m:andre.przywara@arm.com,m:jerrysteve1101@gmail.com,m:lukas.schmid@netcube.li,m:j.ne@posteo.net,m:ebiggers@kernel.org,m:michal.simek@amd.com,m:luca@lucaweiss.eu,m:sven@kernel.org,m:mripard@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-input@vger.kernel.org,m:conor.dooley@microchip.com,m:alexandersverdlin@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:jernejskrabec@gmail.com,m:dmitrytorokhov@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[alexandersverdlin@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,sholland.org,arm.com,netcube.li,posteo.net,amd.com,lucaweiss.eu,vger.kernel.org,microchip.com];
	FORWARDED(0.00)[lists@lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,microchip.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BD5C16BA200

Baijie HelperBoard A133 is a development board around their A133 Core
board. Introduce a compatible for both the Core and the development
boards.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>
---
Changelog:
v5:
- no changes
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


