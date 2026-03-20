Return-Path: <devicetree+bounces-278119-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gI+5E98IvWkO5gIAu9opvQ
	(envelope-from <devicetree+bounces-278119-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:44:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id BA18F2D75D6
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:44:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 924653037F3B
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:44:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B56B23750BF;
	Fri, 20 Mar 2026 08:44:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Cm/vGTQT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7309E1A0728
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 08:44:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773996243; cv=none; b=chiMCY/LDbvMDz0v46mN88u35RjnTRHFya/W2UZdA+DGFlV6uRfhQ04NUMDmgoOvDhNMeXLueI6uyxkQHi1gMLKIjkr6cCxWW1iMWy1b2KXZWJlcry8eoBEy045mYbfRKxPYAhVDyNrzyzFleezuHdeHWZ5Phj72snt7xG0MMRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773996243; c=relaxed/simple;
	bh=ri4WZIS8Nkss3G6akMRMOFFjEPA2/Hvrp9Vc2VJ3SaU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XrS/XdBVxiaw6fSCcM0ZUeZ4koIfWp7Ccjx7JNxY4uGs3BqlHU8weoFxp5XZfh2MNpgkHxuTsdKRtNgKAb4b5g2m+8jdFKHubN3x4+wWpuWE/SWUhtqiQMuYScPo9j/iedI8Lg1UkIlyWZ7/JfBPt5doUMQtYSjIeC1lbqvhEnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Cm/vGTQT; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2aecefc7503so11605435ad.1
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 01:44:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1773996242; x=1774601042; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AFMxMapU3hwQJCSTDwEi8To2/kdfkAjdlH0XIXA5iyA=;
        b=Cm/vGTQTFyMoBq+2/HZw6mJsxEQSPAbJOSFdW4dg7mfcBLlzR0aDy0kdjbPCk0zTLP
         Fpg7G6xa0Z5qcneafXJPuldedjhREnqb8ATNG1KkhmclYq5JOswTuyTuYyurWJIkyiAv
         nFUY82kPITE+X5ItF0+1Kb/E5hKuRNyA56QEc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773996242; x=1774601042;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=AFMxMapU3hwQJCSTDwEi8To2/kdfkAjdlH0XIXA5iyA=;
        b=Jw0LV49hUwA0+fXT+nygy7Sisl7aJM1Sc6tsPOIVnNAZerLqZlTMsWV7zSw4vOE3zc
         ZYf01ICM5PJqWVmRgbNH3+Mrib6eo2JMJWQwFeZLobzFMjAHGBF7mYWhhddwvzNizkKH
         vIKk08rCNeGbqJVNSCAPqscoEmCz28hZZZZjZaPLCcjoZIK3qg3SGoyjOIM0AkctnY4F
         6djLmrnhw+xdNn1jrKE+Ff2JA4i/00r12FwKGmt/lQweRgyV5vMQCW/DFwxU7Yi5C8eM
         GswCgbrtiiBfM6Z/QFUQuYsHRc+q/zTStISF6aNk/B6LLXKxy8dSPw+fNP1KROpxlpKI
         3/2Q==
X-Forwarded-Encrypted: i=1; AJvYcCV/jXBnFnB1xv27k2Md/stjsI/QKQB9d8l+MUscOnXOXo4V+4ROAWUmjOGl/kOM1ZbEiMN1qUc20X4U@vger.kernel.org
X-Gm-Message-State: AOJu0YzxWJmUrDJN5d83KVrO2YxFmcDOUCxtox8oHIoguDRPyIpD2Kzo
	MsfvPhpuoj11zmRqib0OMVZ4w7/DHRZoRCwzj/DuFGwOzcpYCFPaLYk1Exmex3uC2w==
X-Gm-Gg: ATEYQzz/dCFVUZ2YOgJHEDKdFNVy3D4GB0v8MQSIqKa0uN/TeVo5uHdBoGTqHGG9ZP4
	Wp1VJ8eCrlO7VADR/6QUwwcnmffTwP5AdRbU09mPv53KvtGfTPFfFw8fSQaey0RObEsE5n7YzEF
	aNFXrlRnzkuCoSLHYveQITO/JGcl3y4mJWI7lbnhUtP8GY7MOtScaMf2QyaF8oAFDhY6mqDo353
	XhIf5097KVQjHhZmhl0R0rRe2/wsKZT1H6WVmCr4H4Hmd7gov2sD8WqqOt0RN48Qn73AhWLyCnk
	QLBwELQ6OCA3VkYhYwRj7AaBXlD+2X5+vprQIblM9wz46PGtpWr9u25IxF+yLZsx0ZnOdumIKv3
	1HZmgFDzOSVIK15BRoPQWxWdSTMAZFmVt6F6vz0qbaTwiwnbVcfhhQbh+C9it9OaY8r4JMk5LFD
	Rn9YH2midTkxf/yT+L9a91RoNyuWJ66Er29TTBjEwoGRQQJUvUJygmQ00I/KG5jxt7hdRWc3NhC
	D++CFtW
X-Received: by 2002:a17:903:1aa4:b0:2b0:7225:d2c0 with SMTP id d9443c01a7336-2b08277cbedmr23130015ad.30.1773996241843;
        Fri, 20 Mar 2026 01:44:01 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:9cdf:e932:6f2f:c654])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b0836a3066sm14917905ad.75.2026.03.20.01.43.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 01:44:01 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 01/13] arm64: dts: mediatek: mt6359: Drop ldo_vcn33_[12]_wifi regulators
Date: Fri, 20 Mar 2026 16:43:33 +0800
Message-ID: <20260320084351.2461060-2-wenst@chromium.org>
X-Mailer: git-send-email 2.53.0.959.g497ff81fa9-goog
In-Reply-To: <20260320084351.2461060-1-wenst@chromium.org>
References: <20260320084351.2461060-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,collabora.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278119-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[chromium.org:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.961];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: BA18F2D75D6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The ldo_vcn33_[12]_wifi and ldo_vcn33_[12]_bt are just two regulator
outputs instead of four. The wifi and bt parts refer to separate enable
bits that are OR-ed together to affect the actual regulator output. The
separate bits allow the wifi and bt stacks to enable their power without
coordination between them.

Drop the ldo_vcn33_[12]_wifi regulators. ldo_vcn33_[12]_bt are kept with
the "_bt" suffix due to DT binding backward compatibility.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt6359.dtsi | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt6359.dtsi b/arch/arm64/boot/dts/mediatek/mt6359.dtsi
index 45ad69ee49ed..1c41c4701319 100644
--- a/arch/arm64/boot/dts/mediatek/mt6359.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt6359.dtsi
@@ -169,11 +169,6 @@ mt6359_vcn33_1_bt_ldo_reg: ldo_vcn33_1_bt {
 				regulator-min-microvolt = <2800000>;
 				regulator-max-microvolt = <3500000>;
 			};
-			mt6359_vcn33_1_wifi_ldo_reg: ldo_vcn33_1_wifi {
-				regulator-name = "vcn33_1_wifi";
-				regulator-min-microvolt = <2800000>;
-				regulator-max-microvolt = <3500000>;
-			};
 			mt6359_vaux18_ldo_reg: ldo_vaux18 {
 				regulator-name = "vaux18";
 				regulator-min-microvolt = <1800000>;
@@ -236,11 +231,6 @@ mt6359_vcn33_2_bt_ldo_reg: ldo_vcn33_2_bt {
 				regulator-min-microvolt = <2800000>;
 				regulator-max-microvolt = <3500000>;
 			};
-			mt6359_vcn33_2_wifi_ldo_reg: ldo_vcn33_2_wifi {
-				regulator-name = "vcn33_2_wifi";
-				regulator-min-microvolt = <2800000>;
-				regulator-max-microvolt = <3500000>;
-			};
 			mt6359_va12_ldo_reg: ldo_va12 {
 				regulator-name = "va12";
 				regulator-min-microvolt = <1200000>;
-- 
2.53.0.959.g497ff81fa9-goog


