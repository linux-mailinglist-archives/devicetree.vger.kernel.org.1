Return-Path: <devicetree+bounces-245409-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 2030FCB089F
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 17:21:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AB5393016958
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 16:21:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C39930102C;
	Tue,  9 Dec 2025 16:21:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BGdKk1Bx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DE6B237180
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 16:21:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765297312; cv=none; b=t3KnO7Ey9CF46q6qf2Hxog+uvv7n5SjJJGhP1AUWZJS4C8b3FmoBnAvuU2qYJZ+wLFx7viE2QlaE3XggZXsfRXQj4hBPl75fAijAo4cTOaURtzDfwIdY7kA+FiHZYF+Q8Fdqg47LxqDCNe04tGS+UUloWDlZqLYJFcABjLRW+Eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765297312; c=relaxed/simple;
	bh=WKVB9gYz078ahZTJ7TAAKtKVHlfvZgJuO6vYNG2AKFg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=sFuUyAIPepPolHKxZWPIctVAdXwWobKr9NDDhNcIATVRvrO3TM8bQnZMuybrjUZYZkEj9C+VMZiyBhDhozyqiskwB1gbmbYmctdsb4DO7D781jY4ZvmyHLObsggpqBJ7pFEsJVRFScjHZX3fEu0LA86JJYt9h2uVTCzLfpbf7w8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BGdKk1Bx; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4775ae77516so70568645e9.1
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 08:21:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765297309; x=1765902109; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6k61kbm8SLV9e2m07xo3XBz6H86gYGw8sgo6ilH2TnI=;
        b=BGdKk1BxWhCVO4ogODrLzBaurkg5bziO3lXrAFPbPhZ/ZkM8+mlSSb47B1+g9dQINd
         QhSBP8VFFHapDdgGsbNJ4bbUzjZyB3ChJBgos67BMLawfUO1g85mmDzXU+Yythyrn+nB
         HhR943qRYqpNy4WhVo0MJiMkTRG7yP/GiF24KVeOsXTS0Aku3RmiXZ4MA9Ll/7DIf8YE
         UKw2yTW6S1E+AcMh+SH3Eop/XlCwlimTuNRSkXHC6QZsi3dNBiVpf1q+q0O4QkXVrbTa
         S0Hls3wxCDeOm6B9etNaC+Yek8M+tZuo1a99W2fjp+SjY6el/a6LCNWtjJAnk15MLH9V
         LD+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765297309; x=1765902109;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6k61kbm8SLV9e2m07xo3XBz6H86gYGw8sgo6ilH2TnI=;
        b=USGmx2eD9hJ3vm2FlLWMaWVU5czQwsCi3ZPVcT5B1AvUmFAtPUHxGYGWx67dbLzja8
         pMURDA2aF39Ccu7LYVDMSA9S63or84rN99lFRTj5ruzx/s0fTwAFHUrAAv9ay+FVGxV8
         h/bBM/7/IVX02C0KWuI3avA2M5WzYJcbv+f4C/EHiNcudMhvINmNIJtZI3JjqiiEkps+
         GOoz3C5bXOy6vzJuqWwYg/+AjW8KhiVwraWAJoaiCrWa3hd99xfAwDHIK9iIomv6kguH
         BIH8WdCJbr+Fs2vXr95po2k++2DfHYBtgkcrsCkW2JsZ71Q9fk6kaKMgy32eT9HZH8lh
         QmYQ==
X-Forwarded-Encrypted: i=1; AJvYcCUDiyNIdujttlgc2ZcmuZMLCdXS/9s7nZ+0EP0xXwSKrPm7kOxdiGKK7d5SJmWZ9Glhe97ru6juQuPj@vger.kernel.org
X-Gm-Message-State: AOJu0YwWSIfv7m4fBVv1CquOIBeV8LYiqj1FUU4YSMy27yuH+5XtHDNy
	oyZhYQ0EE+norj+383K4+KZgjZ6YEBaEszBMlbgURtpoxkC0lbJVfNKo
X-Gm-Gg: ASbGncsmMWCbuA4kY+3kLVts5pjWpuJwWtAvP2SNl1L5NVOiLTXKcRdFpT7oABVYQdn
	v4qHtfNpxzWfrqUQaE6quo1UbF3mYFvKrB1Sv6qjWh2MxPAQVrNCqLMqxl7g1muoFpnF7LD2+UZ
	Om7JPb2KvL8ZzyE3wFH4pyRUcF4o0aeHNS5c0hPQL3YLKZYxu9wXy4TWzIiZVikyi5+dPe+PRY1
	sS/XCstTPjpkR/eNAl+1kyn8LqvvnKhTcao2CPDodHf46sj0A1UcGtylld+JYP23koD909EsFfG
	U19HV6gHEj4one9T2X+2O6ILuV+fAQNSlFGnEH2rnCzeizUrKuxsLAITQbqd55VJ0fXQ4Fj+Kqs
	DdnOhDcDJvkPg1OYgNgQWlApCXIEyH8K0VclPzMxRFHtwn1xFbVnrC7r/8DKaaoZbVtjVL8mqV4
	gigI9F9ZWWNmCdMyhbQnZY0ERraR5DNyNCOD4=
X-Google-Smtp-Source: AGHT+IHTFgQLT3CSEDcGRS9InaoXZRqkZVe771K3JeLcdli+0zRTuA49I/7K39Ax5OsQ9FDXMJf/8g==
X-Received: by 2002:a05:600c:1992:b0:46e:1abc:1811 with SMTP id 5b1f17b1804b1-47939e387e2mr115381085e9.27.1765297308666;
        Tue, 09 Dec 2025 08:21:48 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:357a:854b:fd78:dcbd])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a7d612e49sm54437935e9.3.2025.12.09.08.21.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 08:21:48 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Aswath Govindraju <a-govindraju@ti.com>,
	Frank Li <Frank.li@nxp.com>
Cc: linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH v2] dt-bindings: phy: ti,tcan104x-can: Document TI TCAN1046
Date: Tue,  9 Dec 2025 16:21:19 +0000
Message-ID: <20251209162119.2038313-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Document the TI TCAN1046 automotive CAN transceiver. The TCAN1046 is a
dual high-speed CAN transceiver with sleep-mode support and no EN pin,
mirroring the behaviour of the NXP TJA1048, which also provides dual
channels and STB1/2 sleep-control lines.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
TCAN 1046, https://www.ti.com/lit/ds/symlink/tcan1046v-q1.pdf?ts=1765297159307&ref_url=https%253A%252F%252Fwww.ti.com%252Fproduct%252FTCAN1046V-Q1
NXP TJA1048, https://www.nxp.com/docs/en/data-sheet/TJA1048.pdf

v1->v2:
- Used "nxp,tja1048" as a fallback compatible string.
---
 Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
index c686d06f5f56..9f5c37ca6496 100644
--- a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
+++ b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
@@ -20,6 +20,9 @@ properties:
               - microchip,ata6561
               - ti,tcan1051
           - const: ti,tcan1042
+      - items:
+          - const: ti,tcan1046
+          - const: nxp,tja1048
       - enum:
           - ti,tcan1042
           - ti,tcan1043
-- 
2.52.0


