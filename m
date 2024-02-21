Return-Path: <devicetree+bounces-44115-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E4DD285CC88
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 01:05:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 752EEB23295
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 00:05:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00C5210E3;
	Wed, 21 Feb 2024 00:04:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A+WY8tqS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0DA1A48
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 00:04:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708473886; cv=none; b=ZPAg4Tv1pYiWJG4+F0O0sQcM2qYMtR9THAK5ZBE8ZTD6zp1XtoHdrj+KBbuv+q9tO4qdxwzCLQlaM9v1fFXfCsZvrV5aAKfyygwoAO3VwFweVQkF1ao6uLxnGf8Vh8Oo04oH9F+9UAE3jwdI5NaZA7bNuN/zYPtDRWIqOvAmndE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708473886; c=relaxed/simple;
	bh=7LSL5ms1Ncs71twc7+biXl94yL8xw15bj2xkmCoBlbk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oOtIsmyyxUYzio8rB1STYC2Nw+EaL3nysQ4s17NqvAWD8bqOaGaCYy5NB294NgWAVGs6BXh/kTnSUKGsndM0skjxU2mcUEUzETdmhRI5rg1pOGYGvScaIQbfF3Qk7DYdpO0AkNZgCGiTO97lnz/+QVYASRch/dKzyHLf3SoDojA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A+WY8tqS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 155A3C433F1;
	Wed, 21 Feb 2024 00:04:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708473886;
	bh=7LSL5ms1Ncs71twc7+biXl94yL8xw15bj2xkmCoBlbk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=A+WY8tqS5CMM9ktGvyxJZntV5Mkx8zp1Hj4nLNVuOIZBZJuoFDkvt+lgrVJS9COow
	 3Qt31N49NbaVg1fGdfQnfJ3jByLw791XqXTzy9b7XHiiB9mZiQXwUFfNVFT+UwZBde
	 sNjvXqscQemn5d3JiuDrjDi3z0+ibWmP+wmJIuAMAsOszRR42B9aLMPf67ppJH8sb2
	 BT3KudtjidpR4Xbsmv6q8P4BM3/kvFOY4Thg15/0uKWf+x1rJQL8qUG0JjKBo411Kf
	 AUDwQW0eHcx9RisIpwsInd1XZtb7gM5keNS40kEMDohjYzPFfyeXJwAL4WwUJjeAaR
	 WIDzD1kXWAr1A==
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Cc: lorenzo.bianconi@redhat.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	nbd@nbd.name,
	john@phrozen.org,
	devicetree@vger.kernel.org,
	dd@embedd.com,
	catalin.marinas@arm.com,
	will@kernel.org,
	angelogioacchino.delregno@collabora.com
Subject: [PATCH v2 1/4] dt-bindings: arm64: dts: airoha: Add en7581 series
Date: Wed, 21 Feb 2024 01:04:27 +0100
Message-ID: <8589d9ca1469e73227af596852a9adf673ac50ad.1708473083.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <cover.1708473083.git.lorenzo@kernel.org>
References: <cover.1708473083.git.lorenzo@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Introduce Airoha EN7581 entry in Airoha dts binding.

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 Documentation/devicetree/bindings/arm/airoha.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/airoha.yaml b/Documentation/devicetree/bindings/arm/airoha.yaml
index 3292c669ee11..7c38c08dbf3f 100644
--- a/Documentation/devicetree/bindings/arm/airoha.yaml
+++ b/Documentation/devicetree/bindings/arm/airoha.yaml
@@ -22,6 +22,10 @@ properties:
           - enum:
               - airoha,en7523-evb
           - const: airoha,en7523
+      - items:
+          - enum:
+              - airoha,en7581-evb
+          - const: airoha,en7581
 
 additionalProperties: true
 
-- 
2.43.2


