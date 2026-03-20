Return-Path: <devicetree+bounces-278128-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6MV/HTgJvWkO5gIAu9opvQ
	(envelope-from <devicetree+bounces-278128-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:45:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 167BE2D7660
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:45:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 38F2B3032063
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:44:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 454EA377567;
	Fri, 20 Mar 2026 08:44:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="SJyaIjnP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 009F737AA68
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 08:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773996264; cv=none; b=nKZXyEhC4AihBwMju/mmxCLEuQiqmnjWxoWrq6tTOyZ2+g/3hEFP89DRtyKBymPx96T7NIj0CQX4f0JOsEBpyKO2WQEtdkLqBT4mm0cesHaadncK+XiGo+n2RN8Lg2Lqsnp6kQMZyjsQacMPf7oY7ndL822owqcyx1ANLaW/3oE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773996264; c=relaxed/simple;
	bh=HVbuZ0a8xAnsm5o8gvD9iPTuLCODsxb2PVDGBG3NbL0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KVFNhuoV5QCVd6F8jUdrD3qQtvu6jXLSTnbhkRYtvm9NU91Ypspzg13B2Etf6wVlOYkZveCqir16+dSjdXEj8ls4SsAvDN6m3z6UWkBT4vRYM9Dt1hCIFLYfjlOdSvmjw1OzWvHwWOcI7RgsHdtzJwXQ498Tv3cxka0iG/pmbcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=SJyaIjnP; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2b062069f80so2964925ad.0
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 01:44:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1773996262; x=1774601062; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qDGOglO7IMqYnkwgfR6oUN6v8rO29Is2tHBRv7dt4O0=;
        b=SJyaIjnPtRUfxW4EOhtJlWnoeP1lphABicgi+KlLrr7nsYcy8Eu1xHSryIWK6fOVce
         Nq710CJ+sPM+S2m8ypLBWg55geN5cpGJJy/jzCE/tDoVhUdLgf7WdzIhFU19Uyijq8aL
         SoD+zscOwsBMo/Ac5eyHYK5km7WVrjM7SaHMk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773996262; x=1774601062;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=qDGOglO7IMqYnkwgfR6oUN6v8rO29Is2tHBRv7dt4O0=;
        b=T+vhFqKd5JT+hJ1w38psOZyTRA7GgFc5z+UGIx1yJijdfoJzX3F4MdR5/RLKcc07yF
         P9v11fFuK9fj/MBgh2PdeR3ZZe+1idZjmJ2EWQq2N4Yp5yhnhom4d2Aj/iviUWbd0jXx
         9tmhcyURyYfvCftQG2nOP4UmJBiqUYIGE9KSHxkFMDebZ/MdckC5HITQvk4ZMXQMO1Lk
         3EbLVc9Djf81nfhrwhwU0jmMTZnKdqJm612wFa/J2RsP+jaRF0OVDiSkJXPFPy64bPbf
         pdRhreko96rPqle7XWxl4PBIcW7I73ZR2LehQUwReGgkEm5rDJPAK14g0f3HAYb2g9I2
         KVdQ==
X-Forwarded-Encrypted: i=1; AJvYcCVJdz4A6P1tC8OWccCsOAfQhZpcaN5T9y8E3Tv2EngVq5eJHX03ZGygTVgo0DMplELSGL0roABWNbk3@vger.kernel.org
X-Gm-Message-State: AOJu0YxGVtREtywQettUZYgi3HUsos8IiJ+L99e7lYqkURd7z2WFPqdG
	/1Ym4MTQnjyU9LTJGlZlcrBuZYd8XvvRbELIbuVZ5CcNRva4mTs7XgJTCEdbzPpXFQ==
X-Gm-Gg: ATEYQzxxzCQMtuRQ/L7kKMW5E1mBTqYjOYqc8L0TsAaJiFcGhho5DajvatzXKjMxF89
	rgwsPJykz+yXZ8WXkHN344mZM6FXy0Nz5e7CEdeYgugkLtFFFIT9Pj4p9ST6fS3YYfDT2MsHaZi
	UomBVBxE8pgf6O8igclDwTkcRtKQJHmFOpuMJnCA+XzID9safi2GK7Px/jU5hvYW+b/LU1miSph
	Iwd0NDIc+hfxYb4dx9kX/2cZpDFTrYSugj/F1wmhnKs9s24vr4wfiTzr84jfBKVOspJ7FNrCtYG
	rdMeJTCn7g+gwmDJHdYmYP8UovIU9MKQaEtLzexdAIguFu9ux0Ae4NP0fG267WKD0EUpFYyKKdl
	wfql4l9xRBfStJ0rWjGo81ho8Xtx0NJd4OCRh7XY794r0VH0yiEemDn45PSBqsfTh/chZ7l4FjJ
	jDKpLlavRAoWmPtXXCVAN4JQAvkesDsD3V7gTabnWp0BNJsgMBkzS323wkRXDsmdcF3NPnJ1st1
	XLdZI86+azMCa/RI/8=
X-Received: by 2002:a17:903:1b6b:b0:2ae:bf92:5acc with SMTP id d9443c01a7336-2b0826ff359mr19764785ad.3.1773996262311;
        Fri, 20 Mar 2026 01:44:22 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:9cdf:e932:6f2f:c654])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b0836a3066sm14917905ad.75.2026.03.20.01.44.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 01:44:21 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 10/13] arm64: dts: mediatek: mt8195-cherry: Add MT6315 PMIC supplies
Date: Fri, 20 Mar 2026 16:43:42 +0800
Message-ID: <20260320084351.2461060-11-wenst@chromium.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,collabora.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278128-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[chromium.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.985];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 167BE2D7660
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The MT8195 Cherry design has two MT6315 PMICs. One has 4 outputs ganged
together; the other has 2 outputs ganged together, and the other two
unused.

Add supplies for these two PMICs. Since the outputs are ganged together,
just add the supply for the first one.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
index b53e602659a7..ca747531629d 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
@@ -1478,6 +1478,8 @@ mt6315@6 {
 		reg = <0x6 SPMI_USID>;
 
 		regulators {
+			pvdd1-supply = <&pp4200_z2>;
+
 			mt6315_6_vbuck1: vbuck1 {
 				regulator-name = "Vbcpu";
 				regulator-min-microvolt = <400000>;
@@ -1495,6 +1497,8 @@ mt6315@7 {
 		reg = <0x7 SPMI_USID>;
 
 		regulators {
+			pvdd1-supply = <&pp4200_z2>;
+
 			mt6315_7_vbuck1: vbuck1 {
 				regulator-name = "Vgpu";
 				regulator-min-microvolt = <400000>;
-- 
2.53.0.959.g497ff81fa9-goog


