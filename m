Return-Path: <devicetree+bounces-248913-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A8B1FCD6A7F
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 17:29:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 92EC330136E3
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 16:29:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95369331216;
	Mon, 22 Dec 2025 16:29:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HwW0HC5S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com [209.85.221.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE44532E72F
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 16:29:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766420956; cv=none; b=VgDZiD8naTXS+S7/cxmJDBJqF/QlgCpuCWkf2OvWuVQF1Gx95/XDGsESJbrSJnOMOKr55TdqM1L5q+bapAMEcqdOpz+PlEMncXgDrYUY5NtfhfspVW/mBvkkhJydmpviiMzcboe3qMRPU66uyDF2m9INzbn4rdfloNW9cQEMKpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766420956; c=relaxed/simple;
	bh=Dy/iCZc591fTXM1NlurWurScZtX+CWiYrJf2U1///FA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=MJVllkjsUmPvR35GrZBE+qKkRPwBxP9aRkcns51idfPLRf2xijw8DH94wq9hCVDqrWs86eswl1xmujWJhDxPghfqtv6+xxBDNeptMgr2RO4dVceWcU180Edt2GO07Sju+Due0CtZwNNkE4VaHlWuaqtEecStI2CDkq56yeU32Mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HwW0HC5S; arc=none smtp.client-ip=209.85.221.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f66.google.com with SMTP id ffacd0b85a97d-430f2ee2f00so2014512f8f.3
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 08:29:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766420953; x=1767025753; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NVVePL6nnCyJpfh1p8QmA9Q/bSlZ1ZK7e8Sn+qKYGBM=;
        b=HwW0HC5SgiNK4dVCV0Yb2HzEprKFc1M8pwwliM6LQ1SQcWKWNC1EPRafee1YPaUM8B
         r/K4JaqDFhQqh5QBGO4fJnBLBBhzBJt+e5pdTlnUI1D+HLSyOTwvw9ZhEPPl3FCZjIEL
         +xRfMifIcCVM0K6ZkFkLCp6o9dSL0N6fgx6n/sOqs7FyhCXGJA0ynk/M5qAmtcVPwr7T
         y5IgvV1dnNkjwcEHAawiRS8cCQE62mUiDD2srUY0iXE+wev39SxnsuWQV58AL9l6xRNr
         kvyJGnAMputCj0OKgNLB9VH+OpjGc6gTmc9NzDtqNRCl8DtFgT9a5HDoD6wt4QNZG+Bt
         9PRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766420953; x=1767025753;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NVVePL6nnCyJpfh1p8QmA9Q/bSlZ1ZK7e8Sn+qKYGBM=;
        b=JKDL4MOwcPEX4HZT2hEN2E0CG+5qOUC+3VH6ckz+MFTHpGBtSIy+N6oawIJF1jkLM0
         71HCUuJjRt/RLg3BsUxGMVHjo8xmAJVScu8bBB16/mPoSVDXKdIx4joEvD0SjMyTUtLV
         VTQZxU94ANx7hTlU9byH8qtUm/eBKLUZMUCUzTWnhYkJetHUcZVgfapJBzwuWGLHVeyy
         TO6Bz4ysv8Gvg1dWYKAY/zpNWtXHuGUOW4eT0351E+sUJ8gGBqI4xDwoi133yqDxOGR5
         wCjA0WAx+HPPxK+/VvWqeFxEvww8ziEs9mwcqKE/4nWhZ02TAAEnNb4A/ZeNdbxrPsQf
         fLkQ==
X-Forwarded-Encrypted: i=1; AJvYcCX2X9XsWXxJ1VHaBCKBP+mj/UbC1aCxKKeD7gTXnOsiWkhubMQWCmL5sr1WvTWNnwDg7eUeK7XRzMEe@vger.kernel.org
X-Gm-Message-State: AOJu0Ywm8883qv1PySLyquNBEJKbaBO7v+50V310trha87UMXAdr1KgV
	nwuQeLdHGVIWDEqjYlzO3ha9EE5r3jQWLKWaAq6UtGdQPTW3wu2GMscE8+yl93ky8M6yAQ==
X-Gm-Gg: AY/fxX7GR1jTuZrsESqX8vJst1lRKngrmtyArWJsOe10N/ZPaJ0qSOu0WNmsf1MN143
	SChCZvla07xXgTl/FL9mbf4ov1uFLExzVTjp6P/47qnpwd2GUDKUl+miR41kMV+8TFI++EbW/jD
	oSuE8teDGuCLYCnlO7xQcGwqShgPwtsIBbdE57YVEed3GGh9hVE/CjPerfVnDeg40BOXr6hTYK3
	rleFulTHTNU2O64cbiES5vb0JjpNRo00Hd5eIkz5KWtqWzZW4ampeV9Fg1gBPMk2ekekYPlnd3M
	J3MjK+qdpTYDWlGgvnpaIyL2kBHbIFP4e0zmTJr3u/u+mS/DurAZxmdqzMDuW4/UoF8UWgUGEky
	c1Yq9gGOgQYJ82jX2/UTr4XY98D2/iJ04zUWHnYzkZ3EwwduIrrGftJzrkvVwYTclY4l/3fcvm+
	1yXhF0d1jV88larQtfpxj3Fv71YHJ+aEHrVdfOFCykMZBjN/nS0D+TJhFcxwdW24EMEPqUuY53+
	94GEWj9HXl3qz3P8pjdyTY=
X-Google-Smtp-Source: AGHT+IEmzqCgGbE7s5GFKTMZ/TEykGpjkUE/yylqKBjpiGDrTr0RtJjyPZA2R2Gc7XIuClmlMSpg0A==
X-Received: by 2002:a5d:5f49:0:b0:42c:b8fd:21b4 with SMTP id ffacd0b85a97d-4324e709d72mr13923252f8f.57.1766420953079;
        Mon, 22 Dec 2025 08:29:13 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:4dd:df38:7864:a996])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324eaa08efsm23213962f8f.29.2025.12.22.08.29.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Dec 2025 08:29:12 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH] dt-bindings: serial: renesas,rsci: Document RZ/V2H(P) and RZ/V2N SoCs
Date: Mon, 22 Dec 2025 16:29:09 +0000
Message-ID: <20251222162909.155279-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Document the serial communication interface (RSCI) used on the Renesas
RZ/V2H(P) (R9A09G057) and RZ/V2N (R9A09G056) SoCs. These SoCs integrate
the same RSCI IP block as the RZ/G3E (R9A09G047), so the RZ/G3E
compatible is used as a fallback for both.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 Documentation/devicetree/bindings/serial/renesas,rsci.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/serial/renesas,rsci.yaml b/Documentation/devicetree/bindings/serial/renesas,rsci.yaml
index 1f8cee8171de..e059b14775eb 100644
--- a/Documentation/devicetree/bindings/serial/renesas,rsci.yaml
+++ b/Documentation/devicetree/bindings/serial/renesas,rsci.yaml
@@ -17,6 +17,12 @@ properties:
           - renesas,r9a09g047-rsci # RZ/G3E
           - renesas,r9a09g077-rsci # RZ/T2H
 
+      - items:
+          - enum:
+              - renesas,r9a09g056-rsci # RZ/V2N
+              - renesas,r9a09g057-rsci # RZ/V2H(P)
+          - const: renesas,r9a09g047-rsci
+
       - items:
           - const: renesas,r9a09g087-rsci # RZ/N2H
           - const: renesas,r9a09g077-rsci # RZ/T2H
-- 
2.52.0


