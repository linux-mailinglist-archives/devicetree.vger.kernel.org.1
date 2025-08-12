Return-Path: <devicetree+bounces-203977-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E55EDB23A0B
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 22:33:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 52C707B51FB
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 20:32:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E93F32D323D;
	Tue, 12 Aug 2025 20:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b6Gw8wef"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C15982D0620;
	Tue, 12 Aug 2025 20:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755030803; cv=none; b=iYddt632iFnnIeVa+Vcvg6ah6iwmdOP1dw1pBP6/hcC1dp/mdL7/jWBHWsEpY1vyxzv/SBZ7EfYsvi9hnUorO9xPprHg0nPlZBX0uz0jx3XxgDOyZ8vNKmK8ltPaw0UKXKhQATiAVuOAagNUEfCEvXT+UvcwqGEgMpLQBHRS04s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755030803; c=relaxed/simple;
	bh=8DrMUGsDQTgYNcwFmSW6vsA4tSzlNtDuQiHXYlSKQVY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=L1NhUwWZpc8ZQv5DVzNif35Ass1+U3BTq3XHh9DBiuJNcsXbCOlTKYfLQdM4o0A8sodwo8WUXrPhFonzWLMyjBsCX6iRWqqNQZ3Empv9rV6MP9rZ8A75Vo8P5HWWAtcsGHjlNGFrw595RzJEMdsQuXJOz1qSItbWnNlV5M0lamw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b6Gw8wef; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 445C7C4CEF1;
	Tue, 12 Aug 2025 20:33:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755030803;
	bh=8DrMUGsDQTgYNcwFmSW6vsA4tSzlNtDuQiHXYlSKQVY=;
	h=From:To:Cc:Subject:Date:From;
	b=b6Gw8wefCNETNYy2musDSNVWIgg5CXqtXVL+7TgZhM20IJINk7ePvcl/Dwkp+SrPp
	 llHfdPEhUvHm14NkWuNp8txA7OZqv+4CJjDdsa0Qqzj7HykXShyFRpAq6S5GdnfTnw
	 DsvAiDyavlzKjs746zRZSif4rzKmLAsjTOwwRe+18l/U6JkQLrN2cIXZKcZNpkUP76
	 hXZxnbbobkvQNV+A6X1zYbCatfvTwlA6VIORQ6z3iVztbZ3+DBZNW/sRnisFKRSYtQ
	 dmyIve51oB11zmrx76dSguiVSsC93WxGMeNMcydZFfLd7tVNkJkNYqNRN7g10BzRNz
	 c0O4stPreQ/mQ==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Lee Jones <lee@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: mfd: syscon: Add "marvell,armada-3700-usb2-host-device-misc" compatible
Date: Tue, 12 Aug 2025 15:33:18 -0500
Message-ID: <20250812203319.729300-1-robh@kernel.org>
X-Mailer: git-send-email 2.47.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the "marvell,armada-3700-usb2-host-device-misc" compatible which is
already in use.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/mfd/syscon.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index 27672adeb1fe..1f381d159af8 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -79,6 +79,7 @@ select:
           - marvell,armada-3700-cpu-misc
           - marvell,armada-3700-nb-pm
           - marvell,armada-3700-avs
+          - marvell,armada-3700-usb2-host-device-misc
           - marvell,armada-3700-usb2-host-misc
           - marvell,dove-global-config
           - mediatek,mt2701-pctl-a-syscfg
@@ -185,6 +186,7 @@ properties:
           - marvell,armada-3700-cpu-misc
           - marvell,armada-3700-nb-pm
           - marvell,armada-3700-avs
+          - marvell,armada-3700-usb2-host-device-misc
           - marvell,armada-3700-usb2-host-misc
           - marvell,dove-global-config
           - mediatek,mt2701-pctl-a-syscfg
-- 
2.47.2


