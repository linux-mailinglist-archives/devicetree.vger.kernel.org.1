Return-Path: <devicetree+bounces-142688-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1225EA261A9
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 18:44:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9715D1612A5
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 17:44:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F233E20CCD0;
	Mon,  3 Feb 2025 17:44:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="gFHMjG8w"
X-Original-To: devicetree@vger.kernel.org
Received: from out-180.mta0.migadu.com (out-180.mta0.migadu.com [91.218.175.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A80720C497
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 17:44:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738604689; cv=none; b=t83UFnOdmCoJp400MLxL9eV0+ZOXgg7/LOGWbChz2LgDyNS6yo+yt8UV9AJIUqAS1wKZjDVr7zeh50HwQjCLBpQmIswv2BIDTE9RCh8S0Abq5XdHuC9Blt0ZusyHHjl5oMYxldL6D1n/IamC1R3IEMNVxYtT09fu4dcJCHGvbNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738604689; c=relaxed/simple;
	bh=jQKOQDrOOGLR72qeT84RWujKcDniGLNpWyPi4ZhyUNA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RClJWCeFu5wyO4BPMBba2K04GLtnn+9CY7+8s47lyYQHnecn4wdy2oy4SZ7XxqCn3qoBCioiTCF14g7Vz2AFvzrqnskQOuqvjACeTSEzMvZZASl/TUQzEittDLjFUBjYizwxII4So6RivYTKLgkew41w1yZLh2SXH818lknH/jU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=gFHMjG8w; arc=none smtp.client-ip=91.218.175.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=postmarketos.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=postmarketos.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1738604685;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=AdYSrp7Ifw9Djz6sdTXRJ3gQa8DUAzacW2HnJguzAfk=;
	b=gFHMjG8wR5tiQJX1El+bJtjdlSoKh1o/I1zo+fxv+a8wTzgN12xCqAMNPPhK21dHq6/4q8
	YZZobfrNWBWcPdPqmPafXnD0pJNEG0TBhL4X/kapPSOJHhnkocuKgJ4nB9/YW+o7EZBUu8
	BU4Xw8kbu8ORS4lRpuAmMBRAfXP+XIuhF5SCrOGummJumzi3p+oYAIgfquOIcQaAJlKlrE
	qCIFNDnTgyNiDKr/s3NWcwtPSjYBtcg8WSSqpQyVWjiKD1FHSe9z0u00Xi6QoDDH3fMjCr
	F2kxqW5hZrEtTlFbF+iTRCwWYwSBslgwG65aS3Lt7OTtoiXm4wawY6Alyg41gA==
From: Ferass El Hafidi <funderscore@postmarketos.org>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-amlogic@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	funderscore@postmarketos.org,
	~postmarketos/upstreaming@lists.sr.ht,
	Artur Weber <aweber.kernel@gmail.com>,
	Karl Chan <exxxxkc@getgoogleoff.me>,
	Christian Hewitt <christianshewitt@gmail.com>
Subject: [PATCH v4 1/2] dt-bindings: arm: amlogic: add S805Y and Mi TV Stick
Date: Mon,  3 Feb 2025 17:43:45 +0000
Message-ID: <20250203174346.13737-2-funderscore@postmarketos.org>
In-Reply-To: <20250203174346.13737-1-funderscore@postmarketos.org>
References: <20250203174346.13737-1-funderscore@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

Add support for the Amlogic S805Y SoC and the Xiaomi Mi TV Stick (aka.
xiaomi-aquaman).  The S805Y is very similar to the S805X, with just a
few minor differences.

Signed-off-by: Ferass El Hafidi <funderscore@postmarketos.org>
---
 Documentation/devicetree/bindings/arm/amlogic.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index 0647851ae..3403362e0 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -73,6 +73,13 @@ properties:
           - const: amlogic,s805x
           - const: amlogic,meson-gxl
 
+      - description: Boards with the Amlogic Meson GXL S805Y SoC
+        items:
+          - enum:
+              - xiaomi,aquaman
+          - const: amlogic,s805y
+          - const: amlogic,meson-gxl
+
       - description: Boards with the Amlogic Meson GXL S905W SoC
         items:
           - enum:
-- 
2.47.1


