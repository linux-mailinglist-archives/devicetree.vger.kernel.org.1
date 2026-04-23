Return-Path: <devicetree+bounces-289743-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IFj9Gw9E6mnqxQIAu9opvQ
	(envelope-from <devicetree+bounces-289743-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 18:08:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F73E454AD5
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 18:08:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6BCDA3026161
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 16:08:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A086537E2EF;
	Thu, 23 Apr 2026 16:08:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jPuBgajN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E04B37C10A;
	Thu, 23 Apr 2026 16:08:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776960491; cv=none; b=olsCrdTmG2c+Z0+IYTjcDnIov5rHpvLQtsXf+pnjCdH40webEpF3IAM1E444QE8dJ0v5ilo/u4cZesuGDzliaOepSClyPeg202bQcHZwaB5waIsjalwSS1t1dgy4V6UvK8Z4m+/ANO4CWsHaJAZjdo+WW6xAa3+0RSe/+9P0OeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776960491; c=relaxed/simple;
	bh=/rHcPdtLifVRpQWA0pD4xaKz0Tudx/zEU/4kl8CAidc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UyvcCY9ssexSa7OXI7qNMDxxthaFnDZzAwPC4KLg5V3nESwyzjYBK/ibUpXFzYMm5+3hCjUnxVo3gI35KfXRjT8OES96uf5xjnFxXnYRaxlt3YSpUaZJjRlsxc88/T7DssFA99g1o2JSZi4xjseuBfF1LjjxIakAUuZoaSfv3j8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jPuBgajN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 43838C2BCFA;
	Thu, 23 Apr 2026 16:08:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776960491;
	bh=/rHcPdtLifVRpQWA0pD4xaKz0Tudx/zEU/4kl8CAidc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=jPuBgajNFmUoYAdkjp2wzHuug93jYq+h9eTse5LkT2QHWGvHLbFZY5OgDJuSgXMHy
	 ojis91xAcS61rH+e8FNYYHHmMLpISEBnJbvD12FpDu7pCwdsDXZf55UAdhusDSxBq1
	 aCdQazBdp8YLzZxZf4R5PpIuycEfVEa9oFc6EJcj1Ca2y2oOtmer+59r6o2H+1NAL7
	 dfiAw4fQ27PS/oDjJjLPfM0xnku76zHdgXye8g1NwFFMLzkf6i9pNlyBFZKF43ndf6
	 h4EGRwgrK0rOenQGZSZKH/5MlczExXXNbKgUnqaRaA/kGlTVjc2lOQuhunQxDArbak
	 e/8DKtm1uz5Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3AAC6FC0379;
	Thu, 23 Apr 2026 16:08:11 +0000 (UTC)
From: Ronald Claveau via B4 Relay <devnull+linux-kernel-dev.aliel.fr@kernel.org>
Date: Thu, 23 Apr 2026 18:07:22 +0200
Subject: [PATCH v4 7/8] arm64: dts: amlogic: t7: Add thermal zones
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260423-add-thermal-t7-vim4-v4-7-d4c1528d5044@aliel.fr>
References: <20260423-add-thermal-t7-vim4-v4-0-d4c1528d5044@aliel.fr>
In-Reply-To: <20260423-add-thermal-t7-vim4-v4-0-d4c1528d5044@aliel.fr>
To: Guillaume La Roque <glaroque@baylibre.com>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@kernel.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: linux-pm@vger.kernel.org, linux-amlogic@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Ronald Claveau <linux-kernel-dev@aliel.fr>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=5084;
 i=linux-kernel-dev@aliel.fr; h=from:subject:message-id;
 bh=gXUyoHvrU7UAwF+TcmnCND7Xo2iI5Rna7hPHjxdZqpk=;
 b=owGbwMvMwCWm1SvKXP3cUInxtFoSQ+Yr5+fPo3JjFqxavf/0qda0Oee+S3LHTF659dfdzHcW1
 xxWPTnN1FHKwiDGxSArpsjSP9fyxLvLR8983aOeAjOHlQlkCAMXpwBMZJ0GI8MUZrUvCkFHnl/m
 CMnlEiu5IyJh8iQ+kknpYDe3V3rKlCUM/1TUd9bfm31r3onz++97aqwteeHGeKGgjHXpdvOXjhO
 sf/MBAA==
X-Developer-Key: i=linux-kernel-dev@aliel.fr; a=openpgp;
 fpr=DFD863F61375BF917F0012173953305EF1D0EC3E
X-Endpoint-Received: by B4 Relay for linux-kernel-dev@aliel.fr/default with
 auth_id=744
X-Original-From: Ronald Claveau <linux-kernel-dev@aliel.fr>
Reply-To: linux-kernel-dev@aliel.fr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-289743-lists,devicetree=lfdr.de,linux-kernel-dev.aliel.fr];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[baylibre.com,kernel.org,intel.com,arm.com,linaro.org,googlemail.com];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	HAS_REPLYTO(0.00)[linux-kernel-dev@aliel.fr];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[aliel.fr:email,aliel.fr:replyto,aliel.fr:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,9a000:email]
X-Rspamd-Queue-Id: 7F73E454AD5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ronald Claveau <linux-kernel-dev@aliel.fr>

Add thermal zones for all six sensors: a53, a73, gpu, nna, vpu, and hevc.

Signed-off-by: Ronald Claveau <linux-kernel-dev@aliel.fr>
---
 arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi | 179 ++++++++++++++++++++++++++++
 1 file changed, 179 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi b/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
index 62f259b2b17d2..c6ea0f20a879f 100644
--- a/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
+++ b/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
@@ -9,6 +9,7 @@
 #include <dt-bindings/clock/amlogic,t7-scmi.h>
 #include <dt-bindings/clock/amlogic,t7-pll-clkc.h>
 #include <dt-bindings/clock/amlogic,t7-peripherals-clkc.h>
+#include <dt-bindings/thermal/thermal.h>
 
 / {
 	interrupt-parent = <&gic>;
@@ -829,6 +830,184 @@ hevc_tsensor: temperature-sensor@9a000 {
 				amlogic,secure-monitor = <&sm 5>;
 			};
 		};
+	};
+
+	thermal-zones {
+		a53_thermal: a53-thermal {
+			polling-delay = <1000>;
+			polling-delay-passive = <100>;
+			thermal-sensors = <&a53_tsensor>;
+
+			trips {
+				a53_passive: a53-passive {
+					temperature = <85000>; /* millicelsius */
+					hysteresis = <2000>; /* millicelsius */
+					type = "passive";
+				};
+
+				a53_hot: a53-hot {
+					temperature = <95000>; /* millicelsius */
+					hysteresis = <2000>; /* millicelsius */
+					type = "hot";
+				};
+
+				a53_critical: a53-critical {
+					temperature = <110000>; /* millicelsius */
+					hysteresis = <2000>; /* millicelsius */
+					type = "critical";
+				};
+			};
+
+			cooling-maps {
+				map-a53 {
+					trip = <&a53_passive>;
+					cooling-device =
+						<&cpu100 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu101 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu102 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu103 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+		};
+
+		a73_thermal: a73-thermal {
+			polling-delay = <1000>;
+			polling-delay-passive = <100>;
+			thermal-sensors = <&a73_tsensor>;
+
+			trips {
+				a73_passive: a73-passive {
+					temperature = <85000>; /* millicelsius */
+					hysteresis = <2000>; /* millicelsius */
+					type = "passive";
+				};
+
+				a73_hot: a73-hot {
+					temperature = <95000>; /* millicelsius */
+					hysteresis = <2000>; /* millicelsius */
+					type = "hot";
+				};
+
+				a73_critical: a73-critical {
+					temperature = <110000>; /* millicelsius */
+					hysteresis = <2000>; /* millicelsius */
+					type = "critical";
+				};
+			};
+
+			cooling-maps {
+				map-a73 {
+					trip = <&a73_passive>;
+					cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+		};
+
+		gpu_thermal: gpu-thermal {
+			polling-delay = <1000>;
+			polling-delay-passive = <100>;
+			thermal-sensors = <&gpu_tsensor>;
+
+			trips {
+				gpu_passive: gpu-passive {
+					temperature = <95000>;
+					hysteresis = <5000>;
+					type = "passive";
+				};
+
+				gpu_hot: gpu-hot {
+					temperature = <105000>;
+					hysteresis = <5000>;
+					type = "passive";
+				};
 
+				gpu_critical: gpu-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		hevc_thermal: hevc-thermal {
+			polling-delay = <1000>;
+			polling-delay-passive = <100>;
+			thermal-sensors = <&hevc_tsensor>;
+
+			trips {
+				hevc_passive: hevc-passive {
+					temperature = <95000>;
+					hysteresis = <5000>;
+					type = "passive";
+				};
+
+				hevc_hot: hevc-hot {
+					temperature = <105000>;
+					hysteresis = <5000>;
+					type = "passive";
+				};
+
+				hevc_critical: hevc-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		nna_thermal: nna-thermal {
+			polling-delay = <1000>;
+			polling-delay-passive = <100>;
+			thermal-sensors = <&nna_tsensor>;
+
+			trips {
+				nna_passive: nna-passive {
+					temperature = <95000>;
+					hysteresis = <5000>;
+					type = "passive";
+				};
+
+				nna_hot: nna-hot {
+					temperature = <105000>;
+					hysteresis = <5000>;
+					type = "passive";
+				};
+
+				nna_critical: nna-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		vpu_thermal: vpu-thermal {
+			polling-delay = <1000>;
+			polling-delay-passive = <100>;
+			thermal-sensors = <&vpu_tsensor>;
+
+			trips {
+				vpu_passive: vpu-passive {
+					temperature = <95000>;
+					hysteresis = <5000>;
+					type = "passive";
+				};
+
+				vpu_hot: vpu-hot {
+					temperature = <105000>;
+					hysteresis = <5000>;
+					type = "passive";
+				};
+
+				vpu_critical: vpu-critical {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
 	};
 };

-- 
2.49.0



