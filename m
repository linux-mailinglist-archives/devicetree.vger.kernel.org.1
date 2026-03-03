Return-Path: <devicetree+bounces-270735-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +G3MLAk6p2mofwAAu9opvQ
	(envelope-from <devicetree+bounces-270735-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 20:44:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B5E1F643F
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 20:44:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C3A8E303C10D
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 19:39:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AF693976BF;
	Tue,  3 Mar 2026 19:39:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Lc11RvtM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com [209.85.221.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB341384244
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 19:39:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772566757; cv=none; b=KfVaWqy7qp4I+FVM3N7NWuOmSEehuDtLkXkmkxzkdPbVc0n5shk4XAL3katXZpW5kNY2C5CB9hzq2oyqsnokwNvh5eUhFCJEZJONT87SpixDPc4PzrfTfO0by77mkDFnK0QvUuDX+iXT0D0T19s6OhJo4Z9uc3CGuxgJrPCycWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772566757; c=relaxed/simple;
	bh=jnWTn8K8giMqtgZT1MWfloONCS262h8NHyCvcWM3yIg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=mm11JcPMZoRvN65jzPlwrx25qYleNfGA5/TH+mZRZ/rkdCBTgmMEX3uZRMlVRRLzFQ24Oy0LT/2o7e4ouaY8sIiqRMqPbuXGyxpKA8HpqiW2X65ktv88GBgu+0w9VGCQCLkCL/mI7OQKqbcAl9LdzbrfRxc5nu1Z5AspDUv0G8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Lc11RvtM; arc=none smtp.client-ip=209.85.221.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-56a981f44c9so2676595e0c.2
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 11:39:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772566755; x=1773171555; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZSARJ2xr5zNTwzjTW4AFghqGY8Sq94Dgx3SRmBpQfjE=;
        b=Lc11RvtMx/YbOMaeWs84Sxq8pWQqhwCU8GkW6vG30slj8PA142rE0LaV8hDNcFstP7
         ZFHMAME+lapIWHGSkO/2pnTnEc3AIPL6ahFIjy3hlBhcNmfLKWXyY7q6VSvVCT8kB0xe
         EoeUbceflXv0vXFH46liX8OxM1X3+m6rDloetoW0rPhWQjjX3Tdw917vlFVrsFbwgTCL
         ognz+REnQFCdyZfRa+83Mby674G+kAIBIsEf2n3SsuNR3433h9DKaG3eutnoTCbME+kn
         WnrHstMRzOwjc9ZDEk6SCi3kovEXmyJT6RYnvHM8fKUDBdclTiqCTG+kXsk2JUAtVH+O
         ffaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772566755; x=1773171555;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ZSARJ2xr5zNTwzjTW4AFghqGY8Sq94Dgx3SRmBpQfjE=;
        b=WfrxqqU/QTGQx8XDqKuz5RvoWv+1kOZA+FDRFCrpOKVIH5SvxTFji2C7DPrJZkLV8z
         +C5v320T0+hS5pvxQsHJgQUcXu/XtglH40aQTQZOK979S89rVje+ngF0vbEsJu5lC3Hw
         0pIk7AKwrEEi3YZ1udrOrJGMzSH8V2+A/nv6OZB08CtqJuCG4/EoAi3fjmHMn+rMWo/C
         gL4kVlNvcwjM1m/JrT8SHbpncH8YLjO87C25aXTbccULONUXcJZjDj3ikUCuQIUOg5yn
         7Mpyv+MwRj9NddWW3i6AMcvGTevPB0l/XopkM26QH806jTAi9XWWrl1DV1PPnIASazqU
         vVQw==
X-Forwarded-Encrypted: i=1; AJvYcCWFXbPZfBqr0G8iUoZVGTLCOwzXZ9n5lT3L/j+gEeC9Yzo1BeYfrJmcgfpywAKvlEeNtkv5zPt2lbtS@vger.kernel.org
X-Gm-Message-State: AOJu0YxWPIArVDVNYjUWO3vLZ+iQP8ksEiWrcKV6RfW2JL8IJGp7PB/G
	xBbV2+AIZa64TNyWT+ZWOc/eDKkggYlfY3C+O+4+ww4GZ1yif7Nf7+ut
X-Gm-Gg: ATEYQzwhCPiW/kiO99Iwsohru09kkoJqUjkxXFPJ4dDmXnQ7PQ2RWGU8YM+c3UlcS6M
	H+i9ru5MZc54SZkUSd/zmU7+pit1p12eCjwCYCFrDhMle6rVd4NjPwav+WmPis6Nchm0RDYCod5
	GJL4dadscpbXmt7I3WFyvUYc7nImU2lc8borXNuyKaBYI2eP1EfElanu/1/KL5KTp+pG7FOf9y7
	Fkv7qHI2c6mFI8gyIvjLojFqavjMgt3avQhVwFR57zxVUgafK/SgiIu/uI3pu/UFh5oP90XOpVo
	gwg5fvxcI4kb3sjIc1mpUxu4hWQP1g3LM3MPkJ2Hp+2zTZVcnavl9UADZ2haPw0lJJg7jdOX8j6
	GyJCDkhp09+ILf+eJdiwue/sCu2dJAJYg9zMQshLddeEdjTLYPBx4eesEN4PRnH0ICESxOsAdYq
	+UxBI56Z4gJCSQsfRNpk4KSdVJwjo0fUNFsoPJiWa+5Z8X/L2ZVxuKFwqHlolNmpo1gcWY
X-Received: by 2002:a05:6102:c09:b0:5f5:402b:7ee3 with SMTP id ada2fe7eead31-5ff3232ba39mr5986835137.14.1772566754755;
        Tue, 03 Mar 2026 11:39:14 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:1b3:a802:8875:499e:12bf:3287:5753])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ff1e7af30asm17780456137.3.2026.03.03.11.39.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 11:39:14 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH 3/3] ARM: dts: rockchip: Improve GMAC description n RK3288 boards
Date: Tue,  3 Mar 2026 16:38:55 -0300
Message-Id: <20260303193855.828892-3-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260303193855.828892-1-festevam@gmail.com>
References: <20260303193855.828892-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: B7B5E1F643F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,lists.infradead.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270735-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

According to rockchip-dwmac.yaml, the mdio node should be 'mdio0' and
'wakeup-source' is not a valid property.

Change it accordingly.

This fixes the following dt-schema warning: 

Unevaluated properties are not allowed ('mdio0', 'wakeup-source'\
were unexpected)

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3288-phycore-som.dtsi  | 2 +-
 arch/arm/boot/dts/rockchip/rk3288-veyron-fievel.dts | 3 +--
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3288-phycore-som.dtsi b/arch/arm/boot/dts/rockchip/rk3288-phycore-som.dtsi
index 12ab10c4adde..0816e388852f 100644
--- a/arch/arm/boot/dts/rockchip/rk3288-phycore-som.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3288-phycore-som.dtsi
@@ -100,7 +100,7 @@ &gmac {
 	tx_delay = <0x0>;
 	rx_delay = <0x0>;
 
-	mdio0 {
+	mdio {
 		compatible = "snps,dwmac-mdio";
 		#address-cells = <1>;
 		#size-cells = <0>;
diff --git a/arch/arm/boot/dts/rockchip/rk3288-veyron-fievel.dts b/arch/arm/boot/dts/rockchip/rk3288-veyron-fievel.dts
index 26817848c154..3da105060302 100644
--- a/arch/arm/boot/dts/rockchip/rk3288-veyron-fievel.dts
+++ b/arch/arm/boot/dts/rockchip/rk3288-veyron-fievel.dts
@@ -98,9 +98,8 @@ &gmac {
 	snps,reset-gpio = <&gpio4 RK_PB0 0>;
 	snps,reset-active-low;
 	snps,reset-delays-us = <0 10000 30000>;
-	wakeup-source;
 
-	mdio0 {
+	mdio {
 		compatible = "snps,dwmac-mdio";
 		#address-cells = <1>;
 		#size-cells = <0>;
-- 
2.34.1


