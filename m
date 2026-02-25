Return-Path: <devicetree+bounces-268175-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2ErzDFmlnmmrWgQAu9opvQ
	(envelope-from <devicetree+bounces-268175-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 08:31:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E2A319378E
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 08:31:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 59E94310B6AC
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 07:24:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE646316190;
	Wed, 25 Feb 2026 07:23:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="CAXbGoMs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B519E315D21
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 07:23:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772004191; cv=none; b=tvb7qla9krxWsciOehzgJKXGRLbm0BxnAQl7tdN7GG2JG4HP+dXsuy7UJuo3D9pCKEybHGAh//v/CbWVFOFhkuas8/A8nT4q/GQyOmYU2T0eE3SDEl/+gQod+EEznfWMSTy0Pf/Z2F0iNwP0Hvkx9nNbgmBBZngWODzf8oCYPdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772004191; c=relaxed/simple;
	bh=soEZe9eXpi1gpdG2KC7zwnFARDxojsqUJRhYaCtZeXo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uc00qltATRlBtvEIYWM2EnMCJ3QNJpIz1P1/HhUy6uUrec6pHdIMURyvpLA0e1q+8+J6zm6eXbFz9Wzm7aKYyl3KyhbXRqFJoxWaZirAWxDistTj07H8GvsS6fECW4hDLZ69C/E5iq9/g0+D2HxCvWejbZ8Ot1CE9/XOgvltx+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=CAXbGoMs; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-2a7a9b8ed69so56799345ad.2
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 23:23:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1772004190; x=1772608990; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=296zJScy32zZ99pggZVYgRNpwHzrGar0aPdVMmqKLxo=;
        b=CAXbGoMs3gHPCg2BmJyoWG5U7kONH7Ci8MTJr3W0bsSbP0gJuN6/0StUhVOj2trMbv
         Av5IGOoIa8Bx740txGylVMnZp9NuaxE02PlqFE3D2r2VAbjL3YQVvwFyfx1scHmMBkx/
         57ZXVXg2+vEyWXI4UxA0A/fxefF43zIy7FtJ4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772004190; x=1772608990;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=296zJScy32zZ99pggZVYgRNpwHzrGar0aPdVMmqKLxo=;
        b=iFoyyA55N2NlDp7vljJAw/+7taiTEh2evNas24oeFYnie2CAqkRmI/eVJhv6JO7IGm
         kdTR8pGGnDLy6rzkv2pDe90vnO/S8kHv2YC/td35qCSQbFun7UmHg37CPfMAmS7rWTuv
         J6Fa4iCNCMdt6M6wK/mOA0EXszRgFT0IeXWH2TwLWWT07Tw5rnu5WsDBCsyPG1lQGRr/
         wfgaYdKfoEPla8Beo3gB9yPBjwL21IVSSa5W6MPlB8Q5RoYwNSgZrl/neNBccpHinxHN
         MHHVFjzoIGYHS6tdOg77k4EmJr109YIl7Ia8ZlkxOm4vneBmH1pQ/EsAszC7Jhc4zt41
         XWQg==
X-Gm-Message-State: AOJu0YxS0MBov/tChLNSutdGXUUHx+5zzvgJpF/U5JdvjKf0IUqtQswz
	PfXHqiSiqfgJqarF5Zz6DyhnMi5NKyUHPLTVd4g8qY7gUGSjYeISI/Oue6BkuDENkw==
X-Gm-Gg: ATEYQzyZoSUOzdIzV6H4PzJxDRUB0KktXj5IH0Pks9Ml2mXJZV1r5GKA9bMF+ixs8pL
	EytA74fpIvcp+ycgFGllRf+zX9ICnJgupDKGOqmv9b5g5suWUXNE8cdurL02PXJG69eGnzTBS+F
	ze/iFKkSISTRiIz4KPAcvgea9WCD/FNOshSsHzCw2EEQ28CJ/gw4JufNneJR4GfLLqo24v51OaM
	NT8OX10QVzVshdiVPbid3arvQpezoHL3BBE6uYqLVei/aIgKsKNGH1aOMjm5kJED5WzU7D5ofO3
	bfhW3ZU9truzWJF4ffrpDN6bLoR7IGQ1CV7tD6+6BSQn5xRfNlYp59ZrOB9cJIVYyz4BH1dFRXb
	Qb9sMG22Jo58dM0Ly+M3Ti+o+qWC/7u+RrjkDWg9IxlNZzAX0ZDOhsNXhRs4HpILqSkynhIuHxW
	YpzZPg5++1Y3ko6ksKfI9n9Cmu4/3GbkvXGGSZLT31pZByXWi8l/fnjqg22zb48CbC3AHJdtQLJ
	ZrpsA==
X-Received: by 2002:a17:903:37c5:b0:2a7:5751:5b27 with SMTP id d9443c01a7336-2ad7451eaabmr146610585ad.39.1772004190346;
        Tue, 24 Feb 2026 23:23:10 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:9d6:2e6a:941b:690])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad7503fdc9sm130814435ad.80.2026.02.24.23.23.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 23:23:09 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Ryder Lee <ryder.lee@mediatek.com>,
	Jianjun Wang <jianjun.wang@mediatek.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Chen-Yu Tsai <wenst@chromium.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	linux-pci@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 7/7] arm64: dts: mediatek: mt8195-cherry-dojo: Describe M.2 M-key NVMe slot
Date: Wed, 25 Feb 2026 15:22:24 +0800
Message-ID: <20260225072225.3345307-8-wenst@chromium.org>
X-Mailer: git-send-email 2.53.0.414.gf7e9f6c205-goog
In-Reply-To: <20260225072225.3345307-1-wenst@chromium.org>
References: <20260225072225.3345307-1-wenst@chromium.org>
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
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[gmail.com,collabora.com,mediatek.com,kernel.org,google.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268175-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree];
	NEURAL_HAM(-0.00)[-0.999];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,chromium.org:mid,chromium.org:dkim,chromium.org:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 9E2A319378E
X-Rspamd-Action: no action

The Dojo device has a M.2 M-key slot for an included NVMe on some
models.

Add a proper device tree description based on the new M.2 M-key binding.
Power for the slot is controlled by the embedded controller. As far as
the main SoC is concerned, it is always on.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 .../dts/mediatek/mt8195-cherry-dojo-r1.dts    | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry-dojo-r1.dts b/arch/arm64/boot/dts/mediatek/mt8195-cherry-dojo-r1.dts
index 49664de99b88..57cc329f49c4 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195-cherry-dojo-r1.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry-dojo-r1.dts
@@ -11,6 +11,28 @@ / {
 	compatible = "google,dojo-sku7", "google,dojo-sku5",
 		     "google,dojo-sku3", "google,dojo-sku1",
 		     "google,dojo", "mediatek,mt8195";
+
+	nvme-connector {
+		compatible = "pcie-m2-m-connector";
+		/* power is controlled by EC */
+		vpcie3v3-supply = <&pp3300_z2>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				nvme_ep: endpoint@0 {
+					reg = <0>;
+					remote-endpoint = <&pcie0_ep>;
+				};
+			};
+		};
+	};
 };
 
 &audio_codec {
@@ -72,6 +94,22 @@ &pcie0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pcie0_pins_default>;
 	status = "okay";
+
+	pcie@0 {
+		compatible = "pciclass,0604";
+		reg = <0 0 0 0 0>;
+		device_type = "pci";
+		num-lanes = <2>;
+		#address-cells = <3>;
+		#size-cells = <2>;
+		ranges;
+
+		port {
+			pcie0_ep: endpoint {
+				remote-endpoint = <&nvme_ep>;
+			};
+		};
+	};
 };
 
 &pciephy {
-- 
2.53.0.414.gf7e9f6c205-goog


