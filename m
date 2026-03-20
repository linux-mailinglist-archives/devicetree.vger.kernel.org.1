Return-Path: <devicetree+bounces-278129-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kD1wJkIJvWkO5gIAu9opvQ
	(envelope-from <devicetree+bounces-278129-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:45:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 793B02D766E
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:45:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 38E2F3033D4B
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:44:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A45B37B415;
	Fri, 20 Mar 2026 08:44:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="KcDERECq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435C137B3F0
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 08:44:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773996266; cv=none; b=P67+VGV1fQ8H5Q0J/yH+e1NX/eKQXp7koyYfbLrlNCpqPxnD3zsYeCADTu+RbeB4D/biVSb5gqzYTMRqArK9gHvBM5iD0XUsx7UIC4svX3fHmvD6hoUq6YcTteQ+cpropnU4N6AcP9skJRPw2JtShFBpia7OvgDM3Jt/w3/8MM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773996266; c=relaxed/simple;
	bh=1N3nC1fdcNAUAgMlb1tuWUevbRbC8hRc87qu+IG/JrI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZsYVXBfpikJhw0tBIrneTvIuUiWLrRNRLpxnxD4/6Kf7eucJx+v9Khvr4DF5Cpr87PVJRXPuDert0HyKa4d3SHVdP0GRnY/RgEuP1qoQTVUgOEpgyQ/sFKzb5vv3xBpRJzc8YoMf5xB7cpL5gHwshzuZAEI1N5Gxa8bNRUg5vEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=KcDERECq; arc=none smtp.client-ip=209.85.215.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-c7413a0e5a0so206358a12.1
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 01:44:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1773996265; x=1774601065; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RRK5xBK6BAOpYcXqRcl+8YIfK5RsduYG9moVn3vQfqU=;
        b=KcDERECqDmxfcByWPnlLn3BQhXZRAx+J7NOuCERFT83VtGI9+6Nzf93K4nBReJNtTP
         oveN8te2uRBVEmUeZOGF0NLiscWsvhGmPM72q8S9V+hHqrNJ56VBlfAz7aIsintii0+E
         Wfm/MRn7ANbOxycxNLzEplL/HqOnIOGPp1PoY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773996265; x=1774601065;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=RRK5xBK6BAOpYcXqRcl+8YIfK5RsduYG9moVn3vQfqU=;
        b=PM4N7Z1gr+F/jdfJAFv+u4PF3MtB/9zskQh9XHIaPowuQRKtlmcGT0/k7JlYw41pCb
         jaPkg2nrp11l94YVVTQ9K7V3Z92PBVXJvDJhAlyALg5K1vZE7GAQeXcEHg+fFe2x0lx0
         P/O/WXgU6HrIZ6fYHGIPzOGMKvJ2H8Gen70bq//127kF4SgyzMYqoLHJwHWkWkTbtuX+
         GAen19IkR8IbdpHGsqYebQaWgxCkZLbahmgiACDMXMM93i9sD2UuTqzHKvcn0IETPfAk
         HhRFf9mAe9dB+9whFrtcbxjMvJtw8Q1N8UDYk8t448ZjlUm2JgDrpZmM0lw+YL3Q4GTh
         SrvA==
X-Forwarded-Encrypted: i=1; AJvYcCUptTRPmszFXTsGULHiCJ5wHmv0rBnxGHbE4unRor+VI7kVvWkeqhwMuVsgofF1s7JORLA+w5WbC1PZ@vger.kernel.org
X-Gm-Message-State: AOJu0YyqPUz7/UDXNKxxZdlFnWNgBciPqpK7X4YyR4gfMxPvqqRr6Dln
	wvS1MW02JPH+0Wm62Pg9VWH3kDWDEWa4CTj8ARWC/tSjQ2Chbxi1vcuN/431fcxD7Q==
X-Gm-Gg: ATEYQzxDrV1rDiA1vBbhKUay8Rsc4JULKeyvebHy4IH2gdRXlhmcHqH0PnYp+u6SPqr
	kGiNMSRjHZ1VCaPRMAU18w3Z7lsJOXm9NDASbdORTNuyF9Z/lYkpN2WgnFDMPBUneNG55oO+UFs
	KnS32oF2u4ZiOMsTcK1kcHQKp1IYYA3STGens3Iuqor+ZhhrKEJyL+ENHhrGo99Vv3jQ9TFKy74
	qg7N1XkcUKLMxVDDBbWMNq/FswLuB0lJYvylpKpxuy/8nT0ABaxsjEVsFCZMivkqGvLEyD1qXrX
	z9bemSqs98JN8Mndzc9H+/zTokgHvVzER9LXIugsG+W2/biNH6x7tJW2L6mQbRmQvtKEQBYyoVX
	NYTCP93UfKoKNqyp4omfaY1c/ptAjJ1g78N9NpJMCl380BNXRnT4RxKMIl+VnE3fO29st1JQy51
	VeKkPO/PPuoBCLMS5HpxC2Uu317pWKWUWJPjwqJDXXV5YgpV6REQXDrRbIKuSZQHOENZfzTMaZR
	2hn412W
X-Received: by 2002:a17:903:f8e:b0:2b0:67fa:dbfb with SMTP id d9443c01a7336-2b0827dc4a1mr19058875ad.47.1773996264637;
        Fri, 20 Mar 2026 01:44:24 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:9cdf:e932:6f2f:c654])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b0836a3066sm14917905ad.75.2026.03.20.01.44.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 01:44:24 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 11/13] arm64: dts: mediatek: mt8195-cherry: Fix VBUS regulator description
Date: Fri, 20 Mar 2026 16:43:43 +0800
Message-ID: <20260320084351.2461060-12-wenst@chromium.org>
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
	TAGGED_FROM(0.00)[bounces-278129-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[chromium.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.986];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 793B02D766E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The VBUS regulator is a current-limiting switch. It does not have
voltage regulation capabilities. The description is also missing a power
input.

Drop the voltage constraints, and add a supply input.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
index ca747531629d..19a24380044d 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
@@ -212,10 +212,9 @@ tboard_thermistor2: thermal-sensor-t2 {
 	usb_vbus: regulator-5v0-usb-vbus {
 		compatible = "regulator-fixed";
 		regulator-name = "usb-vbus";
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
 		enable-active-high;
 		regulator-always-on;
+		vin-supply = <&pp5000_s5>;
 	};
 
 	reserved_memory: reserved-memory {
-- 
2.53.0.959.g497ff81fa9-goog


