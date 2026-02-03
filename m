Return-Path: <devicetree+bounces-262180-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sKAuJjjQgWl1JwMAu9opvQ
	(envelope-from <devicetree+bounces-262180-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 11:38:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 21225D7D0C
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 11:38:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EFEFB310EC0E
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 10:31:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 482C8333740;
	Tue,  3 Feb 2026 10:30:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XfM2GuCj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com [209.85.221.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2975D3203A0
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 10:30:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770114639; cv=none; b=e9Wvw9j78migszg4ONJcHhIHg+3WKQkDFIGrtfOKdRH66Jc6ydkij90j0IKLALteuIIZ3aiGBSnUltnJQmH4P1BBC+GFXD4FUIQHDcJ5+5vvSFjUBqG2uc/WhCi0NF9coT1WaK48RYV4LGw8Qyp+Pz5JA3x9SadYE4w2Nb5ocO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770114639; c=relaxed/simple;
	bh=XJbM2JVyYSC0kaOcPcpiALeFPG9NrUkUJ/r0FAr8tA8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VvIUYgj7u2EarAfIZMo3wwIEs9IMXJ+C28OJDxpElOaspuXGy+i4cxTG6Y9pxajb11a4/YTImxWxhP+IEucnAuikhd0asD2y+dV1fxU9j4LxST5jKBB15qHfVQYhTq0DpVtQtKX7uM7T3E9RshH5cXPEkKe64U7UGTUf/B2G4/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XfM2GuCj; arc=none smtp.client-ip=209.85.221.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f67.google.com with SMTP id ffacd0b85a97d-42fbc305882so3318957f8f.0
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 02:30:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770114636; x=1770719436; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2mOYlroPk2klo4BgZGL09Amb1J7btfQ2TwCzNWxQs4I=;
        b=XfM2GuCjrz3R4ewgspn15h/6a7zWtwMOsUBEmA5qpJlGNQPZOy7NMwQqpQ9jaahhBy
         Tw39ISZzBzPY5VPtEoiB5PohXQE6kjotirGKf92S8w5nJ4hohkHByRPKNXAXxHGWqgNz
         r5KEaE0LBSkJAmg/E2x4oqPaoxm3CkLoyb88AbIrbhN9MEtGqEt9rS5fdEK8m7Yym6Cf
         ruCN24qNooPeAyPYpK266kxhx13ntM/jRacD2NMXJQn6Er4hf2MwE+1/qS5/+87qJB0i
         jAK3QB7OhXqgra67EuboRxSkPcyjf3K4KbhWiC0pvUv9EG1bW2WzRb46/Vrq0IGqxk1f
         cX3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770114636; x=1770719436;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2mOYlroPk2klo4BgZGL09Amb1J7btfQ2TwCzNWxQs4I=;
        b=Xcm5SFTgXruP4z/NudmMzrhQud2rdK/obZ4fEdH1q6iiAdxEgl/zwaYPM3mqYCdTD/
         Ez7iy2iC+4Wl7RnCy0y1A42PDlw2Vn68n6pVKSGJAVyLeqQfOGb9ww2onwxD1yafVLtD
         Wo4qOlc76OE9+e5yb2L9064/ddjdGIRmOL38/ammR2bT87maQ/8o0cE485jnd70RB918
         csSNmHuJhSoPtalur6F+SgfBB+gyHnBER8sLpWF3stuR/FQuPx9XJXWpS3Q7e1o76pd7
         q8DYfomNztaK+XiHYSehdF7AYsLtzYfhmXgZLd5bmE6oAb026wld9yTieO/seuSR7IfG
         L2gw==
X-Forwarded-Encrypted: i=1; AJvYcCV+ggofypkU9uI3mlvVVUeP/LApSBg0plV8923M84+g0ghQnW8xAm5Qhyc9xlZoGudcI54CppYGXVCe@vger.kernel.org
X-Gm-Message-State: AOJu0Yxj3R63kqbnoD06jzejGxO8UfKH3pwXM2d5YZS6torqrFlpOry9
	wIqKCfiSn8ill/8b6JZzeTCDjiC/kRD6Rvy/UITXWOfvykHqOcv4/tUi
X-Gm-Gg: AZuq6aKkDxdoGCzXM/Gs/wxA6rz9vrzdvxbYpLRQvmfigPctLWR0R+/dCt9QGendmQ7
	jPv+oN+ShrEiwL8nEFH7bUxNdzNCOSMHiAfVYY7gE/t3yTigtHZ0KQ6kn6MU/9/TxSnatNsZYST
	VgfxZps8ifGAnHAhvy34f4nLsMhiNH1KL5v37ncGPR4GYXhhx3Vkkclca5PDYL3Fpu9yDHfEbL1
	1DNg4PykVhgmGpvM72i+rjvn/ubFrrKFAbWBfyx/seJHL0Czi2bWuWjfvXm1uGz/dIqS6BHqrLo
	4L/62wmNEXPAeYLmC2R63p7GlysxlhY+OmMdoL6xPVZ/ba19eeQELuUedl62yWlnx1v+YTVvrBW
	UGvgVlq8gRa9OxJ/kk7MsIj2Fn6a20LRuoVarseWL2rIPQxsPBx/MddFxfoyqB7LJjpIXlKLXar
	0ARpw3f/Uz1aqgRCdp1lJPrgoMrZ44
X-Received: by 2002:a05:6000:4285:b0:435:9f41:d54 with SMTP id ffacd0b85a97d-435f3aba8dfmr21027069f8f.60.1770114635561;
        Tue, 03 Feb 2026 02:30:35 -0800 (PST)
Received: from biju.lan ([2a00:23c4:a758:8a01:9cd9:f748:166d:55fc])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e1323034sm53160961f8f.35.2026.02.03.02.30.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 02:30:35 -0800 (PST)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v3 03/10] dt-bindings: soc: renesas: renesas,rzg2l-sysc: Document RZ/G3L SoC
Date: Tue,  3 Feb 2026 10:30:11 +0000
Message-ID: <20260203103031.247435-4-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260203103031.247435-1-biju.das.jz@bp.renesas.com>
References: <20260203103031.247435-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262180-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com,microchip.com];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,bp.renesas.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,microchip.com:email]
X-Rspamd-Queue-Id: 21225D7D0C
X-Rspamd-Action: no action

From: Biju Das <biju.das.jz@bp.renesas.com>

Document RZ/G3L (R9A08G046) SYSC bindings. The SYSC block found on the
RZ/G3L SoC is similar to the one found on the RZ/G3S.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v2->v3:
 * No change.
v1->v2:
 * Collected tag.
---
 .../devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml      | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml b/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml
index 4386b2c3fa4d..94ae72eb8fb6 100644
--- a/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml
+++ b/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml
@@ -24,6 +24,7 @@ properties:
       - renesas,r9a07g044-sysc # RZ/G2{L,LC}
       - renesas,r9a07g054-sysc # RZ/V2L
       - renesas,r9a08g045-sysc # RZ/G3S
+      - renesas,r9a08g046-sysc # RZ/G3L
 
   reg:
     maxItems: 1
-- 
2.43.0


