Return-Path: <devicetree+bounces-240031-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id ACA3FC6C7AC
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 03:57:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 523B34F2133
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 02:54:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D52132D59EF;
	Wed, 19 Nov 2025 02:52:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qsnus/br"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9E342C21EB;
	Wed, 19 Nov 2025 02:52:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763520746; cv=none; b=LIAewngcXYFzsJLjysrml7+u7rI0UOsOcIp7Gk/fW3ypgXE5N2rVD35awPGcoIlIWW8woiyLqlXEItld4VcbABPa/4BBiaPesh9MRK0oqwpkdhDuKtyE+G0Bhal6qHkLADEVfcyVvFTaTWRQ5kAjOI0Wdqmuh0jAuzBN1zVeJOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763520746; c=relaxed/simple;
	bh=dJK22r84acanscjFS46rpF2hSs0/5lm1epfUph3n/Ds=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Nt19uHW6UhYMi35OfbjfhzgT+AB8GN8FMsGfzhEKV/oitUzU7UdFwitk/RjGQZYrACns9MwNp5SzppjsPnLBI4taaGb6R1U7CvrMmBawWsyFNvr4P9J9zkkYnBfse8J2Q7bVcs1rQCCZbjgvA84Qeq8s++4ievMvUdpfqQFSZH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qsnus/br; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id F02B5C4CEF5;
	Wed, 19 Nov 2025 02:52:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763520746;
	bh=dJK22r84acanscjFS46rpF2hSs0/5lm1epfUph3n/Ds=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=qsnus/br7UswG92+Pk3QkDlt7CQ1JQTiN0Qwns8RsEMXP14O4ACSRh4yvx4Cttjme
	 jGHPc1fLJgLiOiN+WRYexHaSkdcYl7cOaeOyxLrefv7GmsGfPTgX5X0LniwRRCmoHQ
	 zy7u+qg8VSkaihsnoJRRgHBHOBlnjM7OWQnGHdYSFPCKdoEYqHd0D+NxGm/Ic0iilg
	 XPthBW33VNjFcny5JtiUZmjEUrtlua81UYEnIKE4EoODTiUKmEFjeDvbxddL8cW8to
	 2uGzFsdcsNz4NN7KXp9KMIGdKv/j3yU5MMJ0Iwfb/1f7XKGXo/YAFLsW/YUJZauDn4
	 iN1UB8a9h2pwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B16A1CF256A;
	Wed, 19 Nov 2025 02:52:25 +0000 (UTC)
From: Xianwei Zhao via B4 Relay <devnull+xianwei.zhao.amlogic.com@kernel.org>
Date: Wed, 19 Nov 2025 10:52:22 +0800
Subject: [PATCH v3 1/5] dt-bindings: arm: amlogic: meson-gx-ao-secure:
 support more SoCs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251119-soc-info-s6-s7-s7d-v3-1-1764c1995c04@amlogic.com>
References: <20251119-soc-info-s6-s7-s7d-v3-0-1764c1995c04@amlogic.com>
In-Reply-To: <20251119-soc-info-s6-s7-s7d-v3-0-1764c1995c04@amlogic.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Xianwei Zhao <xianwei.zhao@amlogic.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763520742; l=1074;
 i=xianwei.zhao@amlogic.com; s=20231208; h=from:subject:message-id;
 bh=X2YO1s8uBuGAUV6Y26504dBNen26LRGhmjN4aH4eHgQ=;
 b=WiKPIWCA4HWTBGjIaDdqHC2n75mnLnvl6lLu/9eXM7AwajIyw2/H6p095qvJqFQgxK3Mp1pPi
 FpMlSXtqF0uApIbmkdbl6m57ac81Haxinb0wKEyz/AqDdOt051oPZX9
X-Developer-Key: i=xianwei.zhao@amlogic.com; a=ed25519;
 pk=o4fDH8ZXL6xQg5h17eNzRljf6pwZHWWjqcOSsj3dW24=
X-Endpoint-Received: by B4 Relay for xianwei.zhao@amlogic.com/20231208 with
 auth_id=107
X-Original-From: Xianwei Zhao <xianwei.zhao@amlogic.com>
Reply-To: xianwei.zhao@amlogic.com

From: Xianwei Zhao <xianwei.zhao@amlogic.com>

Add new compatible for ao-secure of Amlogic SoCs(S6,S7,S7D).

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
---
 .../devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.yaml    | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.yaml b/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.yaml
index b4f6695a6015..fa7c403c874a 100644
--- a/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.yaml
@@ -34,6 +34,9 @@ properties:
               - amlogic,a4-ao-secure
               - amlogic,c3-ao-secure
               - amlogic,s4-ao-secure
+              - amlogic,s6-ao-secure
+              - amlogic,s7-ao-secure
+              - amlogic,s7d-ao-secure
               - amlogic,t7-ao-secure
           - const: amlogic,meson-gx-ao-secure
           - const: syscon

-- 
2.37.1



