Return-Path: <devicetree+bounces-228600-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 84388BEF6C6
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 08:10:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 2775834936C
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 06:10:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E29812D63E5;
	Mon, 20 Oct 2025 06:10:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="ehB02E5P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E53E22C0284
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 06:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760940637; cv=none; b=fVx7iIwWp6PTFU6XTxV39y9vU0chK34Snjb44uWnLuG55rPqVHflJtIkUd3+HWrYr8wtM+lX1OWHJtXp4OZXk17JMp7uBx4HCPtRCujgS2pZu1ityVMX/TRlWLFnIa9VNoXKGUD+6RqcOZcaFTh3mBDmb1WtVK4P7rsiNRyYvmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760940637; c=relaxed/simple;
	bh=3p1M9r8Ct679RdWEhfdTfbQqtkv5MWTUo32xa1uKPOA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=I7uoER0ARkKc0v08jFr3VdJuX826O+u/GiLAUIxhlzJd2i0EW0Bp93V4RJgnjUKhJ2QEpiOr8loD9sZwlu/jQV7dtL6EMYslP4aWUNDczfZHooDlzrjVn0bPdlQuydOAJTvvyZkT5s1b5/fqeMlxbINF4vOQxeq5/GvfOppomXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=ehB02E5P; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=2C24+433wJtYbqrC7tIADzE03jy5ELDw2JdjoUreqCc=; b=ehB02E
	5P7dJBqZ0m+irgllkfMmPaMcYPcKIQDB4SrTrKlEfxfyi/GpjyVUDWhP5l7VaDbH
	eD7uP/U2tcaozD956oSY+HGnpJwn1JyX0CPaSoQZJOo627veg+BdVdZuv8316nyY
	jhlflxUaz2/YwvZoxgSJ1It9EtO0O2MvD/8YPKV4Vm3xFs9BKvXLvTCe7kKiQ7tB
	2rjrUzsrAEOM6ivC3bb0LpJHGUtyKGS87IRNJ8g5MJhkxnWSSxD8skB1JWTTNSIr
	8yuZs+cNBkPs75iPtIcn7grRCpEcjF9qvfavjr8FmdH7+KXJXtGkFgbdnLYxi53P
	OcV+CR4VRMk7WQ4A==
Received: (qmail 941062 invoked from network); 20 Oct 2025 08:10:28 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 20 Oct 2025 08:10:28 +0200
X-UD-Smtp-Session: l3s3148p1@HuOe8JBBNoggAwDNf0fPAEuMhp6AgTGK
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: devicetree@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Srinivas Kandagatla <srini@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-sound@vger.kernel.org
Subject: [PATCH 3/4] ASoC: dt-bindings: don't check node names
Date: Mon, 20 Oct 2025 08:09:52 +0200
Message-ID: <20251020060951.30776-9-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251020060951.30776-6-wsa+renesas@sang-engineering.com>
References: <20251020060951.30776-6-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Node names are already and properly checked by the core schema. No need
to do it again.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
I'd suggest to give subsystems some time to pick this patch before
Rob applies it?

 Documentation/devicetree/bindings/sound/qcom,wcd934x.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/qcom,wcd934x.yaml b/Documentation/devicetree/bindings/sound/qcom,wcd934x.yaml
index a65b1d1d5fdd..3a7334e41fd6 100644
--- a/Documentation/devicetree/bindings/sound/qcom,wcd934x.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,wcd934x.yaml
@@ -132,7 +132,7 @@ properties:
     $ref: /schemas/gpio/qcom,wcd934x-gpio.yaml#
 
 patternProperties:
-  "^.*@[0-9a-f]+$":
+  "@[0-9a-f]+$":
     type: object
     additionalProperties: true
     description: |
-- 
2.47.2


