Return-Path: <devicetree+bounces-168439-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DBF0A93194
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 07:36:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 439078E439D
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 05:35:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BCF226A0C6;
	Fri, 18 Apr 2025 05:34:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="dupRp4Dp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FB8A26A0A4
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 05:34:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744954479; cv=none; b=EGUPCUjd6lZoS+jtq1f9jCnPm7ndWftFZuiQXLQxSTOlTioJPkgCc9LK67LIfNwJ9BnkKbEqZAFJF9MM/C8poFWluhzuoV470HKsK13aKYDo9Y/czOTioIT0LWB1VLYYiwwRlqwEPrR9BqrQJhWAENGGOK44HL1pxb41NuHQiu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744954479; c=relaxed/simple;
	bh=0PmG2kUAxX1zAG7LTb6UrEUX0BYnTCe+djPTnhPh/Q0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=eFjtvX+84sAAGAgFAl07DTBLvf5FTjrgA3kQ1pwpEe//SM53VQ/azCekAlUwGuAjkfo8GUnhm7cMpk1I8d24LPBB97zwyWfK+/+Xv3TjznbTAHe1dU96CchciRGGV2+615TMyzKG2J//FH0wWlYLE2AvE0Azo8qReABXSIIUPlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=dupRp4Dp; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-736b0c68092so1321187b3a.0
        for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 22:34:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1744954477; x=1745559277; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HeXD1vINQRN3QewI2Od8Ka4QLQVzf/gksNoTw/gr9eg=;
        b=dupRp4Dp/izT3JKvMItQnGhedTDPWL7iOMtYJ3YZKJhYwvBJGznn4FwrygBZCxvNF8
         kYaKHFH7z4CNETZn0FzoQgsVyDkZSC5AT9PdyfC6q6F0h0hbCYQ4AeD9ckccMHfSj9i2
         lLMuGDgcbiPx82G+filKuICaSW7PlrmaO+HbI/8zGgWGlnyH/awi0+6c3aNcjTDB28ly
         nFUho6+Qt8tWx0CdvS7JNzMQy47uKYm2ardbLnINMJhNJ51xlDCp7LJIunK2L11WIqYR
         MrBMqovj4np92Yvl4KmxtlgCycbpgx59bo0ILJqpFEchH+bwgxQQD+4WRUAFnTuU6iZG
         LeZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744954477; x=1745559277;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HeXD1vINQRN3QewI2Od8Ka4QLQVzf/gksNoTw/gr9eg=;
        b=JaJVObpoOTKQFPdspr2CIhWJ8BxpdDTfClr19xyNTlhxw8rzJwcBwXRdikQozzGD8d
         a8okNt5hyoZhT9C2DS3RrMwbY6t1vulTD+csvv9lSLgnOGidDcHWgI4pv8bmSoJUGuWP
         kmCm+K1/m9Z2JxO8CrX6LQ8jLI9iWcwZ4Plvzev/U0q/DadNjokt1l5j3/U3/Y5AgE+9
         1ayV2VDIG9B+7WESxRBlQgyP3xxPg6utyU7d37vkzzeyPT5zdF85XOyDOig5aWFIreBO
         QmQizbTqgimsejc5/RpHclRLY3zs99SCNNtD4eA6qf6zrVEw9+aZuAT59NPN2UZKDeLU
         /XNA==
X-Forwarded-Encrypted: i=1; AJvYcCWevKlCMhvlAhND/xsBQRmIsNelLi48rcUz1dtkiHhPxS59g9gnfbcWV+3WyyjXnkyjEy6tcLWW3+FZ@vger.kernel.org
X-Gm-Message-State: AOJu0YxBsQDg6Y28Jr6BTIkn6H/RCo8Gn7MTrKmoXsL4a9o5iLvbI5V3
	5B5hWifkMnXkuqIsMaOhcO/4xpyyMT7m2l78vD9Ojr8GV7omCEcTqmQoLQY9Vho=
X-Gm-Gg: ASbGncsMRrcIuucms9PHOeqznFd+hcw/ZcYcLAVpsVZJKrJgkqpvzal1u9o94mVQpLL
	MhetuBEXX5u491msi1mj15Mw0/mt7QpBzKw2nYZmFse4H2DMZXbmRhxfzGxXOl5qo9RYsEYu3q2
	CLq/a0TriuJ90eU7enMcclI+PUtVQ/ysh8RfBnsYBWEkiGW5oZR22tMc7ETjGlm+r5lcgfwWwjO
	6P0jYqFGIQqX4Gp8F3Q5HRbq+xXZPPthnFlnJlJDNemFYINxZnqXaRagloamk3sDRLrBkASmmjI
	IQGtL6ckf4CnwjNuckiVEOGWhy47Rxq8ihLuoz249iEvn7WHOSr8mCwVkkh+sl9+tdAN8XaMbg7
	5
X-Google-Smtp-Source: AGHT+IGAIspWR8mvsi/9VEF9Vbfa7oFNnK4tZiRAuDzjqr+y7NEoN7U5AOdZ+OKJal+M1UQ/wWk0dA==
X-Received: by 2002:a05:6a00:4608:b0:730:4c55:4fdf with SMTP id d2e1a72fcca58-73dc14a8851mr2022503b3a.7.1744954476983;
        Thu, 17 Apr 2025 22:34:36 -0700 (PDT)
Received: from cyan-mbp.internal.sifive.com ([136.226.240.168])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73dbfaed86csm834555b3a.180.2025.04.17.22.34.34
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Thu, 17 Apr 2025 22:34:36 -0700 (PDT)
From: Cyan Yang <cyan.yang@sifive.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	corbet@lwn.net,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	samuel.holland@sifive.com
Cc: linux-doc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Cyan Yang <cyan.yang@sifive.com>
Subject: [PATCH 09/12] dt-bindings: riscv: Add xsfvfwmaccqqq ISA extension description
Date: Fri, 18 Apr 2025 13:32:36 +0800
Message-Id: <20250418053239.4351-10-cyan.yang@sifive.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
In-Reply-To: <20250418053239.4351-1-cyan.yang@sifive.com>
References: <20250418053239.4351-1-cyan.yang@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add "xsfvfwmaccqqq" ISA extension which is provided by SiFive for
matrix multiply accumulate instructions support.

Signed-off-by: Cyan Yang <cyan.yang@sifive.com>
---
 Documentation/devicetree/bindings/riscv/extensions.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index be203df29eb8..ede6a58ccf53 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -681,6 +681,12 @@ properties:
             See more details in
             https://www.sifive.com/document-file/fp32-to-int8-ranged-clip-instructions
 
+        - const: xsfvfwmaccqqq
+          description:
+            SiFive Matrix Multiply Accumulate Instruction Extensions Specification.
+            See more details in
+            https://www.sifive.com/document-file/matrix-multiply-accumulate-instruction
+
         # T-HEAD
         - const: xtheadvector
           description:
-- 
2.39.5 (Apple Git-154)


