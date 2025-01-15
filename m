Return-Path: <devicetree+bounces-138789-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E4741A123F6
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 13:47:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0D515168CE4
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 12:47:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 547A71E4BE;
	Wed, 15 Jan 2025 12:47:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kFJCSyyv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CAC62475D4
	for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 12:47:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736945252; cv=none; b=FG1o6e0ZtxUca5zq69L42WpejHGH/6fCsMSgS+d5H6pf7B/fnxlDlyRFRd3T1uZZLERJ/G0blEBXconMgEC0pARcXjIWxL7U44axNzyiFmLolBLC4pqyYscecN2T368y9KdxjCodgbPF64Qq+H25zVxWckeR7niTdBNVupJ6mnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736945252; c=relaxed/simple;
	bh=qPxwmuY5oZf0vTQpASy6/YX60s01rsdmhjsyaKUOG7M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=HQmXkvWqcla3Zz/ilR+Gt73YJZK+0UzGyLHfFQaFIuBVub3cg6qJayOKFXwJoo14qrwbq5+AffCX+qO/Mp0YVbrLP6lVWDaqof0B0+5Vi1UJ+kQDiP4/0I3VMNQz1FA5ORe1FokLsJndsqXlBQEW1SxM4qoenEdRF3gXBxTXc5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kFJCSyyv; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3862b40a6e0so3602901f8f.0
        for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 04:47:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736945248; x=1737550048; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ml0vkM+eHgwNAMcgPY8pmtcSuvQ+MFN7+LIEgmgKwxs=;
        b=kFJCSyyv+0BN4kINb8TBI4AXNmKxgEk/WptLFUyhkqFWEBh1ODeezUuySYd+qS/Kq0
         vpAnYjDKDJpFiDwuaKkF+gCEvf/F3gAEoA5d1/uPDxT4xUq88tRERSZbP0s/9kiHIRh1
         2THy7y5WIbE+yOHxE1aD1Q3pfd64k/3Ucw6ycQUU64uAe1oLnI8yWUQXTk6NjR77DEqA
         I8yp9su0l97bVAAcejoU+FnrjOAw/xNF4KfkZOX15Zi7Pg2ZllogaKH3VGHglw3mkLu2
         lVLc5rVMNH7v1GfnnqbMlwyjqhHjFNb44NJ058G6CqdGab7RtyXsfNVrWB4tDNFCTgAn
         fj5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736945248; x=1737550048;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ml0vkM+eHgwNAMcgPY8pmtcSuvQ+MFN7+LIEgmgKwxs=;
        b=uzTCTLyJVzZe+QZvMQYqlTBzezYpbQBIQijSk/EG9vGr1n2LsmM4/TKfTfF72So6Dm
         p5XbwpYgurYbZaqDd6FWucqHUcmfI8D+DAalithBwdJqoVMeBqHe2NJ3G5tIYd9USvSI
         yGrMqKDpeHRI/+/swAUmyerBqemeRPyAf7HpgD7p+eGkiV3V7I9HtO3eWfjDIPP74/Zh
         QAHvWx4FocfrxUwqIwZDSqgNrM3MzzQbZR1+9coN98GtzOQi+EQT2M0HT4yciG6/1BJA
         yUhPyK5buBXPJM+1ecR0BN5kbkSgZD0vTE9vmdIaI/Q6dIHhPjse+u/XuSL+hSgJqMdP
         I95w==
X-Forwarded-Encrypted: i=1; AJvYcCXCz/Ra1waclZmj0ufdx1KQNfYHJ56AOhFVYg6qBIt1N2M2aEixzhVw+uT/XrPZCjePuuCIivYqtyGm@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8PgJg7tr2M05XouWvI7ms+6/Q3c+jQMSjyfPROoo0VLQSy+9c
	rAyU09vt+QLyClgr9Mj6cIBW62mJwsOpgqxiu3UOVBpnRJ4m9WtQBivQZSAxou0=
X-Gm-Gg: ASbGnctb3pA/ZNQvCS1r6PvBTxhfdHomM5arFIzc2XrpQ82LS47El92QA3s+Xq4qPQ5
	eYfMwfHuY7GuXuSOpcHSq6v9BZeQ/qmoVPzdTzUQ6yRoe2yt4xMyys3kJpDLgfzSZFt9PP8kD9w
	CBtCVrYUqEIcg2P3YfMMt8znEbVdN2KA42WqT0scswUVsl8FRYBl3TJOrJqtZf5qsoUtLVluWa8
	/05l0uyGlFdjgFbqm7hL8mq5JkITsq915WcZxm6gWiF/uc8Q/FUcD28n1nJJVvXHOeyHGHbSpt9
	ClNCmZ7XTeaW5OjA7J+qBUh31Hu2VmXKNP6C
X-Google-Smtp-Source: AGHT+IETB089rM+E/Z6SEmyCxYS5cdEItawdSnHOo5gUBbBo+krTwwObAvnkOyW1u9QLilnRglY+GA==
X-Received: by 2002:a05:6000:1566:b0:385:f1f2:13f1 with SMTP id ffacd0b85a97d-38a87303e63mr2874869f8f.22.1736945248476;
        Wed, 15 Jan 2025 04:47:28 -0800 (PST)
Received: from ta2.c.googlers.com (169.178.77.34.bc.googleusercontent.com. [34.77.178.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a8e38d013sm17854174f8f.58.2025.01.15.04.47.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2025 04:47:27 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Wed, 15 Jan 2025 12:47:17 +0000
Subject: [PATCH v2] dt-bindings: mailbox: update description to allow
 #mbox-cells = <0>;
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250115-dt-bindings-mbox-cells-v2-1-15a39137eacf@linaro.org>
X-B4-Tracking: v=1; b=H4sIAFSuh2cC/x3MwQpAQBCA4VfRnE2xuxSvIgdrBlMs7UhK3t3m+
 B3+/wHlKKzQZg9EvkRlDwkmz2BchjAzCiWDKUxVlGWFdKKXQBJmxc3vN468rorkbU3WOOeaCVJ
 8RJ7k/sdd/74fHr/+EGgAAAA=
To: Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736945247; l=1425;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=qPxwmuY5oZf0vTQpASy6/YX60s01rsdmhjsyaKUOG7M=;
 b=Q32zXg8Ob9ksjYIgeGAoTWAfmzqNTB5ke/EA+teYSLxveW8sJeGIoqiBYKYODYbDKOi9dYLn9
 7Kq4DoxwDauAJxGMZmy6x88r1nFRhomWl68plcQ6grEXEEPNrtPxIeq
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

brcm,bcm2835-mbox and mtk,adsp-mbox allow #mbox-cells = <0>;
Update documentation to reflect that #mbox-cells with zero value is
allowed.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
Changes in v2:
- update commit message, add Krzysztof's Acked-by tag, spin-off from
  intial patch set.
- initial version was proposed at:
  Link: https://lore.kernel.org/linux-arm-kernel/20241220-acpm-v4-upstream-mbox-v6-1-a6942806e52a@linaro.org/
---
 Documentation/devicetree/bindings/mailbox/mailbox.txt | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/mailbox/mailbox.txt b/Documentation/devicetree/bindings/mailbox/mailbox.txt
index af8ecee2ac68..fc31a4a3b637 100644
--- a/Documentation/devicetree/bindings/mailbox/mailbox.txt
+++ b/Documentation/devicetree/bindings/mailbox/mailbox.txt
@@ -6,8 +6,7 @@ assign appropriate mailbox channel to client drivers.
 * Mailbox Controller
 
 Required property:
-- #mbox-cells: Must be at least 1. Number of cells in a mailbox
-		specifier.
+- #mbox-cells: Must be at least 0. Number of cells in a mailbox specifier.
 
 Example:
 	mailbox: mailbox {

---
base-commit: 5bc55a333a2f7316b58edc7573e8e893f7acb532
change-id: 20250115-dt-bindings-mbox-cells-db36d324449f

Best regards,
-- 
Tudor Ambarus <tudor.ambarus@linaro.org>


