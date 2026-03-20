Return-Path: <devicetree+bounces-278124-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id INK5HGUJvWkO5gIAu9opvQ
	(envelope-from <devicetree+bounces-278124-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:46:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 282002D768D
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:46:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4A9713062427
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:44:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3719A3783A4;
	Fri, 20 Mar 2026 08:44:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="O3rKuW3H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E33F53783CF
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 08:44:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773996255; cv=none; b=R5vWfdFRrZh9K0UMWiLZHlf11q6p45S4nEYzjKab2Kf+7ybEm68rQ5IaDWg2C4Q72HvCnpdhsJcBd98CSnrcMWNLMBNhgCx5kLd6TgF/P5ARVh1sNtFZss7Umcfi+uLU+jQ7ppgn7mkOPDuEnx50jHTUQd5vEV6MDCocfgV6oWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773996255; c=relaxed/simple;
	bh=vwWCDxzQIIkQz7mX98ThUBAC/91OQMhDCTXQj0ND6W0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kn+Xm8AoswkP/+VqyTl/KYUB9p/xqPasxO2Gsbmykg17p/WUajTNYYMxxFqhfiHTXJVX3ohq2MOPF4YT+6k5sY7lLHtHqJ47NxDUK/6k0w8jwtxuyx0mOeWZ/W7wu8Yna4nfW6cDZG+b7oK+Y98LREwkUyCaUUZpE50oMTg8NDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=O3rKuW3H; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2b056b7f783so8656425ad.1
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 01:44:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1773996253; x=1774601053; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5fCSFArSeRGuw+2+Xzv9uC9S50Pu154s6zyJ30lpqjc=;
        b=O3rKuW3HjiebKhpBOzqWbMe7A9R2cG1IdeoBF5Y6gNbkWetBih+kuukTqfYwJO7vo1
         x5BU3hPK1CRCfQWXsIeIavzuT35qJPGU9BGlLZ7SSGOek3ugh3jAifAcHOw8mg17LNl5
         XNsN7lRCW4shasAWLhJom6U0Outu0NAo6WXFU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773996253; x=1774601053;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5fCSFArSeRGuw+2+Xzv9uC9S50Pu154s6zyJ30lpqjc=;
        b=IrWQpqf6LLgw+DYtuEPu92xNgMbzRTihLRC1YBHfxP2hvbAH73PwB6NhU1hmPUm+l2
         SfC5RRXeoAMw+UbOmw8cZn2NrRt3UYB4wyM0q/0aWxzTx6EbeYmKmZu8fE9NvbxeQ91a
         3C0VtZ0rQIQ0yNa21Rw4hlPacTYVAy44RJHqXr/vn2iuWbvCKV3l/vLTroB8INTxBa4X
         +IXRVa1IZnlNkbG1sJef+EObzlNFzIc7EW+A8NQzyLf0berYHpW9yEKBa8RVPxmyvhzF
         RLMTQpQt5jgk5bHy9ns9W9bjUhdcWhKxdvdTnGSOOXUbGVznea/rDUktfoHXN4m28GJb
         Y3kw==
X-Forwarded-Encrypted: i=1; AJvYcCXusPAr0ii0mrXuag3BPAA0M/44fsoNtAWvFFLcAYy4UKFComq863R1KID45tmzwncqfT5mjgHsO80I@vger.kernel.org
X-Gm-Message-State: AOJu0YyslLP7z52hu0Qckbw0DYl2MOWBl4SyBxZrMpWmDVt0f1mcylEp
	L/1+KeCf/htMdH6GnecMfDa/a6HgDqBSCMSOA8sMqq1QST6VmxUP5ArokjJKqEISwg==
X-Gm-Gg: ATEYQzzUiPPwq3AWWDtPKRSJr34lcRQa96AgJxHj50p6prVGo0fpwEA9aZinN6Xzlu4
	X97ciZAreb9FTc8Tz1V8G1Xlyws/GxqstTpGhV+jzvJph4J2TC5XNQs/G3tf+/NneM19wSzUYD/
	Q80gkcaiEMXGSB4EzhvePfr14jzvawqNwiI0gkci89zD7R9q5o4dGeQe49Uz4K3Wy8iOV0i1sWH
	vV5VOq+FWL9ghlhweGaXxZUElTgT+gzGBvwYtrTQtoFMjVB6VDOJrbr0dRAoupjoVW6zQvKTIi3
	5CNgpS9g2sT8QRV/QSjCFrjMM0k2Y0HQeJl/ZNMf5mUYydg9o99uggth3EzVpF74otkTiaBLiy1
	qlr8c6zn3OJnQFa7y+JQlAjt2GtM+tSyblX6PC6hBx2ii4HHZhikoAyolVMhpF1IEZtVV/eq/lg
	SXLaqWCHbbRbwQwgVel5+0h6mhPhCwKRDqBSotzlcBoqa0RI+uintGIN1o7Le02ED2gc67yLzOY
	Ffjsr3q
X-Received: by 2002:a17:902:f683:b0:2b0:5722:f89 with SMTP id d9443c01a7336-2b077143206mr55106235ad.7.1773996253228;
        Fri, 20 Mar 2026 01:44:13 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:9cdf:e932:6f2f:c654])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b0836a3066sm14917905ad.75.2026.03.20.01.44.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 01:44:12 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 06/13] arm64: dts: mediatek: mt8192-asurada: Add CPU power supplies
Date: Fri, 20 Mar 2026 16:43:38 +0800
Message-ID: <20260320084351.2461060-7-wenst@chromium.org>
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
	TAGGED_FROM(0.00)[bounces-278124-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[chromium.org:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
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
X-Rspamd-Queue-Id: 282002D768D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The device tree for the MT8192 Asurada is missing power supplies for all
the CPU cores.

Add supplies to the CPU cores. The big and little clusters each have
their own regulator.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 .../boot/dts/mediatek/mt8192-asurada.dtsi     | 32 +++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi b/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
index f4c8c3aa7a57..143f7f4161a8 100644
--- a/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
@@ -299,6 +299,38 @@ &afe {
 	memory-region = <&afe_dma_mem>;
 };
 
+&cpu0 {
+	cpu-supply = <&mt6315_6_vbuck3>;
+};
+
+&cpu1 {
+	cpu-supply = <&mt6315_6_vbuck3>;
+};
+
+&cpu2 {
+	cpu-supply = <&mt6315_6_vbuck3>;
+};
+
+&cpu3 {
+	cpu-supply = <&mt6315_6_vbuck3>;
+};
+
+&cpu4 {
+	cpu-supply = <&mt6315_6_vbuck1>;
+};
+
+&cpu5 {
+	cpu-supply = <&mt6315_6_vbuck1>;
+};
+
+&cpu6 {
+	cpu-supply = <&mt6315_6_vbuck1>;
+};
+
+&cpu7 {
+	cpu-supply = <&mt6315_6_vbuck1>;
+};
+
 &dpi0 {
 	pinctrl-names = "sleep", "default";
 	pinctrl-0 = <&dpi_pin_default>;
-- 
2.53.0.959.g497ff81fa9-goog


