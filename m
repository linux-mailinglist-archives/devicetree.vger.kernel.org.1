Return-Path: <devicetree+bounces-278123-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mPb8MggJvWkO5gIAu9opvQ
	(envelope-from <devicetree+bounces-278123-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:44:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A472D761A
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:44:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 485FC302862F
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:44:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B9C2377ED6;
	Fri, 20 Mar 2026 08:44:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ZnfQS0Uf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E59B377EC1
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 08:44:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773996252; cv=none; b=neCqWwRD7I1Bb0vcYcSF5tfX1rpQa5D2+3NtjURiIDUP9W2Zgu9Ww8DB4W32b9XgqyLVlr5smCoBKgrcRUxblngYklX+Jk+dG9fykXtaF02SrW853UIESiEzq3MiwgBu47PTXvN82UfuQ+EMsQkuMgioyXz+c81mk3IXsp60cjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773996252; c=relaxed/simple;
	bh=E3VqEbRubZpgB3cznRAnOxUjk7cb1ioDwS7QiC3zWKI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=X18ZEDCrRQGntPL0xLexNCHNGUNw3Rpj4ksdCLS1zkoB4p07fLN+O0f7x4BaBA3pHMU5UGpLfLrq+dtsyB2p4MtG2iaFUTZ+NMc4Kh0ApsC3eFD2EYn/x7lJ7wolLvRHOkGyHMpISYZREsKQrHljt/pXWZsIFHt76Klrz59Iy9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ZnfQS0Uf; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2ad617d5b80so11122455ad.1
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 01:44:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1773996251; x=1774601051; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z8BTqnTP+MmFfu7yIevMNTcW0CwEuW3w6MEJfZCoELY=;
        b=ZnfQS0UfbbPEPsfv+BAybr6cIDUrtCpbJoBulyAmmQWHMC7dvUu4jtVRaXZM9/+2kU
         zaGZfuoCHdFD/9OPmuj14ulr2ss4oVSMb5GLAkWr5TFVLmtbQnd+1Dd9XOzmJpgoBdrd
         Z1ZmFfK28yl734vrbnlID2gU62dkvBfIEKo0o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773996251; x=1774601051;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Z8BTqnTP+MmFfu7yIevMNTcW0CwEuW3w6MEJfZCoELY=;
        b=dmPtKYiEeWeHyGmACfK65MbSf58cGhfySr8L0k86T3SDOQyLuSbiqkh939IJJlXYBu
         NNg2K47Z7xi9+3qzUe0LAqY55ptwdQEnrp1tPO90VwSaTDADP/3nfYZGdKWkn69sqRXG
         hpysQT6PtdandV36ntLJydowW0kf0IN1JMf4sNJVD8FGVlxBeAw+uWy/gZXQvkADtkUo
         8AvjZcB0Qac2OHZRnrrQx5OXJ6Aw1SjZe4qsalWaWDsLc4mAtZdyTyinSxfbHvKuNN3r
         k6m+oSOlOltjI8sOiDyCUTwhfNWyXdBhvQKxqet6VHJt78iD3fgy7J/huDOMee/2aki9
         8S3g==
X-Forwarded-Encrypted: i=1; AJvYcCWr26cjTV4s0rTGeV5v1436bIgRftcKwBqmx5lbIZ1r50u3yEAATl5Ux08qOXbRs1xq+iLsURS905i8@vger.kernel.org
X-Gm-Message-State: AOJu0YzumzFcUCybJuUxzoh+83o9MuqZkbpqJVQy8dgMlNw43fvSXSri
	1cEWOfY3jC6E6p71wgBipz2NJbASQkucXsMnQdG9taOOV4LHDMC6m3DyQ+lOmSG7UA==
X-Gm-Gg: ATEYQzxhiZBgjT+4v16McC0ue1ix+zhCQa7hZ8TE4szb/fzGAUWc16n123ZwTMTSvEj
	qI/U4zAdNjeYo7OT/kFmwScKbkrR2I3nQxnKWHS4enF2oFC28HemFYAou3megpfNS6XgtKt5syC
	bSsxmLoU7TyGputkLDyE2rmgndf8SyK9X4ya8B2ctaDbdQux1TGZO5LSroy8mlyA+P9jLn+vFII
	IM5yFcghpt17Lr+swR1gwDuOR8ZBnCH01Z6hGbqyGjiviylC4R9dw82T7whC6fP8bhOQXdh4a7r
	tUSJfGeoXegaUzoQQgLU0wP18U55xXS5Fgikl5q50xaOVDMKcKFTEzMv9ZloBt7mLeU6RMN7fOw
	gnbt+EwZ1BkOxG11HN1vdW8hGUmiBjfkHWtJQ8RHF3bTdGa9RlBrFO349hmpC2zjq7IFMIS921h
	iAloEwxH9kL6AWZrWvZaB1x5fD/J+W9ZIbKlkqZAQo5LpwIIXi7D6WQeN8Du1LH5jLkl91B0Ah3
	jiLSCtS
X-Received: by 2002:a17:903:244d:b0:2ae:ceb0:d5f0 with SMTP id d9443c01a7336-2b08280221bmr18950125ad.47.1773996250947;
        Fri, 20 Mar 2026 01:44:10 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:9cdf:e932:6f2f:c654])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b0836a3066sm14917905ad.75.2026.03.20.01.44.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 01:44:10 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 05/13] arm64: dts: mediatek: mt8192-asurada: Add supplies for ChromeOS EC regulators
Date: Fri, 20 Mar 2026 16:43:37 +0800
Message-ID: <20260320084351.2461060-6-wenst@chromium.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,collabora.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278123-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[chromium.org:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.984];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 57A472D761A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The ChromeOS Embedded Controller exposes two regulators to the system in
the MT8192 Asurada design. Both these regulators also have power inputs.

Add supplies for these two regulators.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi b/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
index 318903b112a3..f4c8c3aa7a57 100644
--- a/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
@@ -1535,6 +1535,7 @@ mt6360_ldo3_reg: regulator@0 {
 			reg = <0>;
 			regulator-min-microvolt = <1800000>;
 			regulator-max-microvolt = <3300000>;
+			vin-supply = <&pp4200_g>;
 		};
 
 		mt6360_ldo5_reg: regulator@1 {
@@ -1542,6 +1543,7 @@ mt6360_ldo5_reg: regulator@1 {
 			reg = <1>;
 			regulator-min-microvolt = <3300000>;
 			regulator-max-microvolt = <3300000>;
+			vin-supply = <&pp4200_g>;
 		};
 
 		typec {
-- 
2.53.0.959.g497ff81fa9-goog


