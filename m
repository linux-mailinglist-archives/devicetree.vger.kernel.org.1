Return-Path: <devicetree+bounces-305776-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id EYLpAnwMH2rleQAAu9opvQ
	(envelope-from <devicetree+bounces-305776-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 19:01:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA2F63079A
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 19:01:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linaro.org header.s=google header.b=nxTfd1N8;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305776-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-305776-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=linaro.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 20EAE3035B8A
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 17:01:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24BE73F4100;
	Tue,  2 Jun 2026 17:00:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE4738CFE1
	for <devicetree@vger.kernel.org>; Tue,  2 Jun 2026 17:00:56 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780419659; cv=none; b=kqKyme0NSFoTnOcyrBnez91OmP7TiavIj+QBp0NGbdy6Q/1gJmELXvLYyd0r6Hm/mn4WckKUJrFEplUCKuhymYEiHELSiznHgNQ3tUlRuAGaKWbpwQatiNiyWHITQgOWH8sbVlKYv7AlJFrwYQGAwunoxjsJvhRBciYq8+FeV3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780419659; c=relaxed/simple;
	bh=APjGOr4rSujMx24P1jDIzhjkfbHKcFK80a9vPvVqD0g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pVMmCz56exAw0E674xeZUOpu/yutBaTnrkUBgsMYDLN5H5Sb3UDi9gf8MEA+DEjT6higlPV3ZAeJ/clWtnuh4juAgpafENDXywXS9bzro31eFDkhpc3UFosGBJuYFct55qEpecwuEvmD3KgTd2qpa+Q4UPXuS2txKSF0v518mBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nxTfd1N8; arc=none smtp.client-ip=209.85.128.47
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-490686877a1so71030355e9.0
        for <devicetree@vger.kernel.org>; Tue, 02 Jun 2026 10:00:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1780419655; x=1781024455; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b9xxE0a97UY7UPF7zz4jpUqke1DXutWR5PtyvwLwWtU=;
        b=nxTfd1N82lNof4cSAAKRVkfrKRNgyqLliF8u2i5qQgXZfDY+kMJzIY2j4l+sTo+x/w
         B1uJTLz1emsVsMfscM+vXIR5qJum0OL6tEGOifr2zD0deirr2XHOOIYfuSG/yo6LE7Nn
         IHUar6wNKpKzj+zzn2j0D8ZFO4GUSrk8//rBrJ9SuKSwECtQQULsN/XuWtRzwasa+XJW
         VNTtbNWHXo7BgI86kTvgnIL/LcR2Q3O21ZWHxUyFl28fdlTZZMgVDbU5J1/ol8qZbpEZ
         LsZD0MFvebfiMCbaOg/CiyhPW6ze96N6ZCjI/Qe0ixRIa8mqQSlMprnxhoS5WqSk1ZVC
         Yjcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780419655; x=1781024455;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=b9xxE0a97UY7UPF7zz4jpUqke1DXutWR5PtyvwLwWtU=;
        b=ENKzK52W6MLeovN2Kd8TPBlTX4sa7xHjhWTtqztiWJTI/CI6juECwJwImZb8P1g/iI
         TYGeIPqObWVSBdbWAVrUHWAQpnFoU+HmxecH/HRVGHdS6csOE2lij2+C8Zt/reubxVcc
         cscZ8jPbQ8M8ivyLYKBVz1O2aiveprDMXVEsS5UdSSNI+7AX49RTIpkfygPldeVF/w0R
         gXBkJ6Pk3zSNQ/Mq8RGsZeVqnb5Vu/S2Fh+9BjzQasm+kQ1QRuJuq+Hp38PIk+Ssb6TE
         EsZZ5YsSjOGSfDAhNrLEFhrW25JzIU6MU4NW0FYq6vSVDlGtk/tFCXXjXbrUeIJtRPo4
         Df5Q==
X-Forwarded-Encrypted: i=1; AFNElJ/CNV/soMsdiQJQkfX0/fysXUrq4Y9prRsPsCpq1lUfDlBbVJwQedIf20KdFU9GLVxRBNxjIM6cS2Za@vger.kernel.org
X-Gm-Message-State: AOJu0YwKuuHCISNygJGg+/pc3KppZsPcbDPC/09eQggXtj7kVwyICHqM
	P715TLT+1yx5yzf7LhXT/NmqYKc2TKdnENE3cW5X8E+OyFqF3XhP1xOY34kffA4VW6s=
X-Gm-Gg: Acq92OGqsaMRnaBAfNdDYaLVjsDg1GMAFLuFTtzTJSA/rwJ6pgm+8dk+nmjV3ng2qNm
	9l5KcV3qXj75Ebl7Smq6G32HPQa4xr88chW97MHgngKm7bD/oVh7M5lUua8YHemB5QnTOXUrVul
	k9YQaBLzzzt2PKOhYPOEm2aqVYb0oaw2IJay/InnIV/VqoUl9a8TbWFKmypXUPBAVWYuPdnxmF2
	7pUY0z4iNZohe1SBbM4u3h6Mo7d95iio7mb38nmKS1m4y16No5e9ByDWEwKo0/XnnKBkc14k85b
	i09YL3PALM8224upN9H5bLshaVZZ5iI4Hyvl5RvAC9mfv6pZv1pVwJm5XRO4+dhGnCYyUjxfBeC
	JVdQXQOwun+On88UfwnkW+AEuigl8Ihat8E3c6PRDk0ozMkiS6eurP2S2plPVXJ5rdbXb1a8iP8
	KGX+kJYFB4C0Vj/lojfZMCuHNv3B09Eo6t34UpTTjYkoL4TLWdYc/21PPIi5oTF4Wetbr5UhKkz
	xely7ezOOw6pl8=
X-Received: by 2002:a05:600c:410e:b0:490:addd:1d69 with SMTP id 5b1f17b1804b1-490b0eaf370mr58450785e9.13.1780419654831;
        Tue, 02 Jun 2026 10:00:54 -0700 (PDT)
Received: from ta2.c.googlers.com (213.53.77.34.bc.googleusercontent.com. [34.77.53.213])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4601f360bd6sm541156f8f.36.2026.06.02.10.00.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jun 2026 10:00:54 -0700 (PDT)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Tue, 02 Jun 2026 17:00:51 +0000
Subject: [PATCH v7 5/5] arm64: defconfig: enable Exynos ACPM thermal
 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260602-acpm-tmu-v7-5-8047dd54b0e9@linaro.org>
References: <20260602-acpm-tmu-v7-0-8047dd54b0e9@linaro.org>
In-Reply-To: <20260602-acpm-tmu-v7-0-8047dd54b0e9@linaro.org>
To: "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@kernel.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, Kees Cook <kees@kernel.org>, 
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: jyescas@google.com, linux-kernel@vger.kernel.org, 
 linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-hardening@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1780419651; l=795;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=APjGOr4rSujMx24P1jDIzhjkfbHKcFK80a9vPvVqD0g=;
 b=QsERHNC8FPgbTJGtPPDB6Ya/u8jw2mBQU9wWAijdol1fz7fqN6OPrykn8Jo+GBpS1m9JE03oJ
 WGR8WbBY/QdD3cLTko3HsVqrkMKkglmTJ6fLlzdEnf7iZQhpjEYf6jB
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-305776-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,intel.com,arm.com,gmail.com,linaro.org,samsung.com];
	FORGED_RECIPIENTS(0.00)[m:rafael@kernel.org,m:daniel.lezcano@kernel.org,m:rui.zhang@intel.com,m:lukasz.luba@arm.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:bzolnier@gmail.com,m:krzk@kernel.org,m:kees@kernel.org,m:gustavoars@kernel.org,m:peter.griffin@linaro.org,m:andre.draszik@linaro.org,m:alim.akhtar@samsung.com,m:jyescas@google.com,m:linux-kernel@vger.kernel.org,m:linux-samsung-soc@vger.kernel.org,m:linux-pm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:tudor.ambarus@linaro.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[tudor.ambarus@linaro.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tudor.ambarus@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,linaro.org:mid,linaro.org:dkim,linaro.org:from_mime,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DCA2F63079A

Enable the Exynos ACPM thermal driver (CONFIG_EXYNOS_ACPM_THERMAL)
to allow temperature monitoring and thermal management on Samsung
Exynos SoCs (like Google GS101), used on pixel phones.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index d905a0777f93..3fe76a4c2633 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -793,6 +793,7 @@ CONFIG_BCM2711_THERMAL=m
 CONFIG_BCM2835_THERMAL=m
 CONFIG_BRCMSTB_THERMAL=m
 CONFIG_EXYNOS_THERMAL=y
+CONFIG_EXYNOS_ACPM_THERMAL=m
 CONFIG_TEGRA_SOCTHERM=m
 CONFIG_TEGRA_BPMP_THERMAL=m
 CONFIG_GENERIC_ADC_THERMAL=m

-- 
2.54.0.1013.g208068f2d8-goog


