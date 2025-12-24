Return-Path: <devicetree+bounces-249395-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E0592CDB896
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 07:44:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 61C25300A9FB
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 06:44:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D939132A3DE;
	Wed, 24 Dec 2025 06:44:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NSHjzVFg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D79E329E7B
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 06:44:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766558691; cv=none; b=Ydzdfx+FjL8zynPjeNh6Ry/N4C+8q8eyPUkSog1lopphlc1BW5xuDKm5071ncEKYOcr18HBOeiIJ1fdXl6HtnD3lP8ZoQ1XwXd427D9pLtl187RL5/SUgw8Hv32bxmV3sebHHUKJhebvsL0S8fXwXBTDT9kIMnl2MBAKJX41tD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766558691; c=relaxed/simple;
	bh=6cfmAXzuvyWCriW+9K5ER4DTlYWIvpG7m38YclJ5GzI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Ey+YreHRHv2yX9oRmImox+cIIjk+oyOfJ9y8slSCN/i/gU9JMRh3KzJ6wbk+rq2Ixo1kR6cS/1DeeX16LWV645NUqMDI330fmbNlz/6i/BgnGrTMGkFQHsYKaPoFqhKsTDHu/6O1FrwPGIvyDUhrxfJwvOM8Fy7TFM0oCaey6w8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NSHjzVFg; arc=none smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-34c363eb612so5612133a91.0
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 22:44:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766558690; x=1767163490; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FhSoLSk0toWUxTDlJMgUw8U4nRCTEhSOzea+DI4TDjA=;
        b=NSHjzVFgCHAp3G+BtZ390krVZTeD/L8GmZKev97BKuOS+VBJ9/LLZckWtlDuo7q5YJ
         fU3UzBQON775+8f9BBNsZ92pmyCplc6noRPuVXUG2x7Ql7fUqHdNTGlmRz7vtNhZqKHX
         HrCbsPoani2BfKAD3MbqxhZ+sjTOc48kLbslO741VNgJG5mVr/tPwFmCOInk+z/FEgV7
         V0mxy0EVz8f9/OIwuF9nomvuzyQmLNIEay1rZyfbKytTsT3tIMYKm08DjNz8a7CPw3LJ
         CBfl6qKZRP7kI1OgKsfHlA8jyyGHD0kFEljm0yJ0RbC82lYA0yvYim3lnHGwJa1fWm4D
         RDzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766558690; x=1767163490;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FhSoLSk0toWUxTDlJMgUw8U4nRCTEhSOzea+DI4TDjA=;
        b=lFOykN0Y7MeJYUhUs3eZ7jarj/CBnQZBm4/T7t1G1khgJ9QFwq7qOqWcAnwj5kMxDE
         5tcCLqtiDQgetqYNtAWce0U1+QF85RQrc7GXrXTIjjXs6zvmYW7q9nY245e4dkxBIInA
         g3m5CdlL/rEOeUn5EtOF93y8C1HOutv0Efa+R/RP6GGwzr7AjbiKI8YkBEU3KsInOVUY
         biIvNhN67SofJ0RoYKlNVwbizz6JH3Hdnnfemj+0yEEjOl/Nni4RFMpXCw/tWnWm0b4V
         9DHRla9zZ+TOBV8OhJibcePYI21K6z2EVCP/DOMB0vQ/26bN17640xFCXw2njbQevY39
         gLqw==
X-Gm-Message-State: AOJu0Yw0TvTF/DNyV+SiGPksh20TBqeCkkXOGHPzfrKMldI6NbWcCLj+
	Nnjxcd5dzQH7fNp5Olu7YFJuWe+m0qh0a8fuBTt8yJSKKadIhvaonZLu
X-Gm-Gg: AY/fxX54Mp7krq1w/Qm+dKhaNMq9rQiWSBfGeJUesn6xH16MAeqRYCm23EXOEfah/bb
	5P+WOGHF/BkTvlfBCOk55vPfbUveK8ebxtik0Kq5teif7Ips3T/ee/c3/ItqFNzubt8fMgQ84Ob
	Es71N+jJYZZGYWdrxW1h+XNCKBE+0oGp3ztIwmod0TY9mg+b1S36o38Wi9SH0PJsZSgAHZiqtxP
	KLAKODOH93rlQ+qDquuZqOx+lPqRRrkl63ey8ncceo5zJ/NfXZJ+mmekiTQE3l0uVu5wASp2eVS
	eRfDQTCl10CKQBwv5KIGdypc6PVrwsMxAz6q+lCK+xtrBeWihOtCDD6bwaw8y5mgBhxAXuf82/4
	7yZP7KwaBSEcRE7B97wERW7xY3Pr+eqHAdpYCcolU9P0+VwSODVOPsOfhjMNXS7RxO3k549x662
	kmlsMLtFcQVFjqNqu3ebYxt71tDNNdwk/RW0dt2DfZ1FMU1Tln/K0=
X-Google-Smtp-Source: AGHT+IF47XqAx1S18wR7ab75crtb+KkCnxuWXlTWI159pIOjgr1HJTRZgwnJc/m69Ss1gbrpaihQtA==
X-Received: by 2002:a17:90b:2fc5:b0:33b:a906:e40 with SMTP id 98e67ed59e1d1-34e92137cd4mr12343985a91.2.1766558689722;
        Tue, 23 Dec 2025 22:44:49 -0800 (PST)
Received: from [127.0.1.1] (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e7729b04dsm8320864a91.6.2025.12.23.22.44.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 22:44:49 -0800 (PST)
From: Kyle Hsieh <kylehsieh1995@gmail.com>
Date: Wed, 24 Dec 2025 14:44:38 +0800
Subject: [PATCH v2 1/2] dt-bindings: arm: aspeed: add Meta ventura2 board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251224-ventura2_initial_dts-v2-1-f193ba5d4073@gmail.com>
References: <20251224-ventura2_initial_dts-v2-0-f193ba5d4073@gmail.com>
In-Reply-To: <20251224-ventura2_initial_dts-v2-0-f193ba5d4073@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Kyle Hsieh <kylehsieh1995@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=839;
 i=kylehsieh1995@gmail.com; h=from:subject:message-id;
 bh=6cfmAXzuvyWCriW+9K5ER4DTlYWIvpG7m38YclJ5GzI=;
 b=owEBbQGS/pANAwAKAaWDQrcJVsSBAcsmYgBpS4vcMKwnvorNLkNzhT34TH7R/3+C9and4tOSr
 pj+5wx2J0eJATMEAAEKAB0WIQTJHsaNZOdY+THGqJelg0K3CVbEgQUCaUuL3AAKCRClg0K3CVbE
 gfzfB/4h4pxLYNKd8HUji515qRmUDHvgspkX5YvfK2QGMvk/FY4mVIk0df+U5dVHMX7TeFi9eVb
 +taH+c6kjs81NmHrITRFgebZBPpc8ACOxhjV5m1PieAQqZS60VYuaB4QNf30CINQKzBsrnz8eaX
 lFBaFhnjbg8cClydb+IJFcwsVirj5p3M85t/WTTBTb0hloEMRvntQ0t91h2AcvAtgftKQJFTrte
 Tt8+u5hC/s+9T43rrHikYSKNKEYUzUzHTjChVUFhdvX94yrwaICkLl2zl/hVhnEXlKOxnHS1Syx
 LJ9oqcaRhUcZ+RKtrDaetZeTY1WwiB0aYBiWMQ3B/rCpoyv+
X-Developer-Key: i=kylehsieh1995@gmail.com; a=openpgp;
 fpr=C91EC68D64E758F931C6A897A58342B70956C481

Document the new compatibles used on Facebook ventura2.

Signed-off-by: Kyle Hsieh <kylehsieh1995@gmail.com>
---
 Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
index 9298c1a75dd1..24e19b8d108a 100644
--- a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
+++ b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
@@ -92,6 +92,7 @@ properties:
               - facebook,harma-bmc
               - facebook,minerva-cmc
               - facebook,santabarbara-bmc
+              - facebook,ventura2-bmc
               - facebook,yosemite4-bmc
               - facebook,yosemite5-bmc
               - ibm,balcones-bmc

-- 
2.34.1


