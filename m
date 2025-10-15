Return-Path: <devicetree+bounces-227322-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E1230BE0855
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 21:48:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B6ECA5E029D
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 19:45:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1276F30F940;
	Wed, 15 Oct 2025 19:44:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UsF/mqK/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8BD130F529
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 19:44:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760557477; cv=none; b=UNs+BsfytWYYulbcAycrdPOckjNxnsX23cDqpFwV03U1fVg/wnk7ZG91MnpnxhN3ikTTDcyrl8mV50hJgWqUmw/qi0ttfQlQcocOWiAxB3u0AUHbvtAuRXGi945JbxrDRpPwcWo1+ndfG8EdEZL0ZaPQzlXL0ApGI/yJppuwrvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760557477; c=relaxed/simple;
	bh=icm+qgwvmlaIKVA0+LDLw72vpjzysCjTHSxFdDTSB1U=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Fc0U0jCjNAjxpdBtq3VYyLXm9iN+t76JF1B9FbcPlEUpawIPZEDqens0IeY++ypCUhzoqIqJz1RuTxY/ZcR2zXIdYHsUk39Ko2toN2Dpz4hMr2TxwYP/klIxEXmS2AzT/xdLsucJpyKhFl79dy9th4IRJ6aXFbr90Qwn+Kb0yhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UsF/mqK/; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-470ffe122b7so1252685e9.3
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 12:44:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760557474; x=1761162274; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gTxzj/ZNzMCl2AVIVbzHV200aF3vcZBw8Pj3HONtytU=;
        b=UsF/mqK/A3aQYmmZTTpQCNa1gfrG3MjFuCEVGQwRfvFNSpdHSOt+n5PhOPUK/IJ/DS
         z5LNYTt0BmqwZAPRiBZs6Cl3YlyYpAAz9PdDIjkOGLDCTfdt7aqyG+6JjP+gm45DqOyx
         kqUEMhUdLELc1JjhVXXP3ciFzAvpn7JX96L2ubOuFNQFmB4xcggr6+4qb7mEy3GUiuo2
         mX2pXpyCV0+lJ1ZlSvR7dAc6JTA98zB7yLymDTU6oZBD7vNeLGDbiTaHyAbjCQy9QPPE
         /Ilp/wvcKvE7n34YJNDRgzBshQy+v9OT3OIOVhhnN4W7a5GBLEuU0r8sylwAYQTQqbnQ
         cdxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760557474; x=1761162274;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gTxzj/ZNzMCl2AVIVbzHV200aF3vcZBw8Pj3HONtytU=;
        b=qqW4f3YPencdw0hzzEt0S0V+qT25tupSbvykJxalgng4CzLot0bXFt3hQKWNam3Yzb
         AlC8Aylc2PnZsJh6kD1+Y3NOZ6mofSNP3Vz5R+LS9xi+hWiW6kjZYAEPSRW065vSJ8QQ
         pop09ItGAdEBQ6q+4ROe+7qd20Pz2+SjqlQMukk3jkwp8pFYoHu30YqFjOyWSQIkwaGO
         c9f9BdRGnsbOMso/JuvGI4+bgutEJwq4snYj6zPclfKop+ZwFYZ7m7ImVd3K/TRvGsgr
         14Elnwj4rzaJ29vCH6NMe4K8F+iGF6WA550A1HxKiS72Psq6902Rrj5ZJjR1KPxkhd8J
         sRXQ==
X-Forwarded-Encrypted: i=1; AJvYcCU6hiH0eu+OGjlN8j3xl/hDOMc0exMkljjBymW+d2HITdtxltwml1g1OTtUeyQ8H1OWNL87CrWPgpkT@vger.kernel.org
X-Gm-Message-State: AOJu0YwVoLqn8dkdRM/ta1KHWjmKY3tGc0xJ/qO6FuiWWMQygIEq/7kp
	F8ye6rOCy6TpO6jDVUpMGp2X6IzDPzwHaLvG6jC/arJc9wan83lFyzeQ
X-Gm-Gg: ASbGnctVLlhXJwGRG/6mkjJGvwKo7Oytgm04j5il/B+3+okVX7PSW2Pq0m9w1GfaCA8
	E2abnzl/11DXTTBEj2N4VU2fDi49NCNoD5nJy7c/AofCX6Hr8JmYdf1QcKwfy5KbwVSWsttHUL8
	9CvjgT1JblMRQKrYICwwXydLG18/2mZUWkpgQIob5N6CtV/9qeGCcveKR2T8mbrOFJb3Nno/5Nm
	njn64QjeYd/OQGvdEMnJd/bsc0h5SD+1dJW5aQelH5ZBpH3cnJX8j3VL2FJIS+YXn85hcGgajeq
	WEV+dT54tWtGYuFwJPbQuVaCj1AgTtfa/Wxmr2+ueied56NGxwZEBjRKuYVnMvK9kq8L6YN595x
	hRp/AGRxjEfR3nMYu2JoZqDJNPkRu0PkfJcOynWDO4lm7MbMkYwpbCtqk6zu4Sn+D0uEafSEapJ
	Ui1uDJqNNh5DQ2WhefNG/Rnfxd
X-Google-Smtp-Source: AGHT+IF4xGlkJcRA3gQGyAd6Gn9TERRg/c73M+cIvYIhWJxTPQGwRfocOPk8PIAo+UhNQw7AN0G0gQ==
X-Received: by 2002:a05:600c:c162:b0:46e:6778:c631 with SMTP id 5b1f17b1804b1-46fa9a214c4mr121265175e9.0.1760557473859;
        Wed, 15 Oct 2025 12:44:33 -0700 (PDT)
Received: from d25728c254ff.v.cablecom.net (84-74-0-139.dclient.hispeed.ch. [84.74.0.139])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-426ce5825aasm30291626f8f.14.2025.10.15.12.44.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 12:44:33 -0700 (PDT)
From: Lothar Rubusch <l.rubusch@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dinguyen@kernel.org,
	martin.petersen@oracle.com,
	pabeni@redhat.com,
	rostedt@goodmis.org,
	bhelgaas@google.com,
	l.rubusch@gmail.com
Cc: arnd@arndb.de,
	matthew.gerlach@altera.com,
	tien.fong.chee@altera.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v6 06/11] dt-bindings: altera: add binding for Mercury+ SA2
Date: Wed, 15 Oct 2025 19:44:11 +0000
Message-Id: <20251015194416.33502-7-l.rubusch@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20251015194416.33502-1-l.rubusch@gmail.com>
References: <20251015194416.33502-1-l.rubusch@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Update the device-tree binding for the Enclustra Mercury+ SA2 SoM.

Signed-off-by: Lothar Rubusch <l.rubusch@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/altera.yaml | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/altera.yaml b/Documentation/devicetree/bindings/arm/altera.yaml
index 30ef03c53d73..72cf04b22a08 100644
--- a/Documentation/devicetree/bindings/arm/altera.yaml
+++ b/Documentation/devicetree/bindings/arm/altera.yaml
@@ -62,6 +62,16 @@ properties:
           - const: altr,socfpga-cyclone5
           - const: altr,socfpga
 
+      - description: Mercury+ SA2 boards
+        items:
+          - enum:
+              - enclustra,mercury-sa2-pe1
+              - enclustra,mercury-sa2-pe3
+              - enclustra,mercury-sa2-st1
+          - const: enclustra,mercury-sa2
+          - const: altr,socfpga-cyclone5
+          - const: altr,socfpga
+
       - description: Stratix 10 boards
         items:
           - enum:
-- 
2.39.5


