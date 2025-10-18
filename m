Return-Path: <devicetree+bounces-228378-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4158DBECF4B
	for <lists+devicetree@lfdr.de>; Sat, 18 Oct 2025 14:14:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 76C7C4ED223
	for <lists+devicetree@lfdr.de>; Sat, 18 Oct 2025 12:13:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F1BE2FE587;
	Sat, 18 Oct 2025 12:12:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JF8UIsYV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC57C2FC870
	for <devicetree@vger.kernel.org>; Sat, 18 Oct 2025 12:12:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760789535; cv=none; b=f9h/tfw4wti+r4pL/GEDI7vCB1XsJAMZ2yMU+vgmiKCa5qgADno2aJk2pcqjcC6MOCL5Aq/1LVnVzVypj/4if4zRYKMBr5WFdf7htJ74GwGRpezIB2pKXAvokw3+vcxOPCpzYgYDrCrK7r5Y3nZL2jYqivtnHYz4y55ljzuPiGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760789535; c=relaxed/simple;
	bh=+kJN5PezJ0QH+/KdewVY3pE+HvTakZByw4n/oGasQtU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=I5+Qs80044tGz+A5DXGIi+UWfIPlWV9IQjRkRE1cdsWYPApkq7oTFU8IAyNmFAc3iKNkBQLdoO1ybj6/HcjHVG69kzxS2o26fCe90QseN1We5vnsPhi13P5VwSpA6HHHkC86OQnCnZA4/clAbwma6Q/ALmDn9y0A9qgUJCq13HU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JF8UIsYV; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4710653ac03so1515485e9.2
        for <devicetree@vger.kernel.org>; Sat, 18 Oct 2025 05:12:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760789532; x=1761394332; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=61jDuhX++0mCBZApihfwIySM8ZNRnay0trJ/aGXtPcM=;
        b=JF8UIsYVtFaLoiGmpVFSLqos8AUBeS+MbVHPZpm0bsaGgAfRTgxkIcCyVOPulXM00k
         Lz2AJI4U2/+ayvVJs2NUCWFgYHO5i9TjzXmAdYMplvtW1K9tk6rGMd7LCmfgWGNQLKJp
         7k1iwQIeG/NfuuXeL/habIsYwxQgRRWwW635vOPJ78m5+y8IV343Y5CcG+A/sd0bXBrS
         y081/uPii5JP+qjw9AWwvZn+MakEpfQqTvt2tuwB7f/8mlBo8OR5BLuwB5/Nv9eW9mml
         P1/fedQPfAGZ6Nh0rrKvemUn1jaHTvnJRN0ChDqpMnGko+VEjj+ybqknqEZnB5oZrYo2
         /LBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760789532; x=1761394332;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=61jDuhX++0mCBZApihfwIySM8ZNRnay0trJ/aGXtPcM=;
        b=TlWs5BhpslP9E6IiGdSn62bi9pm9uc7W9CtWormpqADM5OX74KShoWnVAmovQpyNyU
         RpuydCbG0fQvUn5RoNKgLrkoO0kFJj3TyYp4ZS81Ct8qy1kWY6vVr3t5o4EaE/WMq5e4
         W5juaH65e/MsqG5j92IAuLiJARx3YXVZSdzIz4FjNHxlXWfS7z6KrU937M7zRFKANlRR
         lndFrl8Ji4q8p0ybn7ccRwUqajjmx0hLm9MO76i0y7VKosmubvQPb2ID9JBJp02wp7UP
         68ZEdLZ3wL5zT3A7lRo/GoZb8ZsmB6frr2JxtxJHWvM0sMA3KvZm8WConQlIa227Uryp
         seSw==
X-Forwarded-Encrypted: i=1; AJvYcCXTFSoWbelftiKDViZBRIKpx9LbfMpdJ3l7c5CUS3+/OSezbvclBUftf5lBLEY98TyRfMdYXoQ3eQd1@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1uv2SCMnB2HjgS2os4yzbUg3uhII5AHJBGakapeiziqDzZNhH
	qgNran9RmvhRt7t9ooBQs+Ijg5YiCof8Obe98jGvciiJMRrr6XVNDP/1
X-Gm-Gg: ASbGncuh1XTmdsfAiQtp8CuzWLDlLcNba4TUxnUu3EJ6EMzQUu1zPrEGxgdrfoTC2VP
	38LCYqAPk0mQ99hnHmx4Tb1DJ+4Yjd4Dy0izB+CXeSSuXdj1GJxOLZK5m6A898299A6XSYDOnhf
	l2ESbe1XtT5fmUZoDCU5cvLcp0aBCpwlF5A1j0KqNAcmPTvzo7dadU86n9ur8QWGAOij78ibYbR
	0958tf2qbodYXdYQaUG95WTN9l/WGci29PutAJiEdTaKtxd46r4Xl3eFWab/c8UH1ZsUxb+Q/zw
	JnRTQJIDgmQjjAAf8bv71LKXFGNa7SMO6/d1QNakwPr8rLrsoUGHbb6cfeyOKnzOoI6Qg5qZ8Ox
	e8tNkg5+LU4a10mNkmHl5YaTaJb8Z6xrH3zK57bHyzRHfNkX/DztI4FGJ1Px/OqYqIYA0r8REQ+
	cJuSN/w7oYyG2UrZcjIPq+wWSSQNzjYEZBY8Wd/6RZ
X-Google-Smtp-Source: AGHT+IGlMnguu1Red8qhAnT6PJQ1lgcFmM+xa7XuGc93PNnZOuj+hJG6gEn0AGzlcZZjZ5KiraKN+A==
X-Received: by 2002:a05:600c:3515:b0:471:152a:e57d with SMTP id 5b1f17b1804b1-47117914193mr28693965e9.3.1760789532118;
        Sat, 18 Oct 2025 05:12:12 -0700 (PDT)
Received: from localhost.localdomain (84-74-0-139.dclient.hispeed.ch. [84.74.0.139])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-427ea5a0f19sm4763812f8f.9.2025.10.18.05.12.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Oct 2025 05:12:11 -0700 (PDT)
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
Subject: [PATCH v7 10/11] dt-bindings: altera: removal of generic PE1 dts
Date: Sat, 18 Oct 2025 12:11:54 +0000
Message-Id: <20251018121155.7743-11-l.rubusch@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20251018121155.7743-1-l.rubusch@gmail.com>
References: <20251018121155.7743-1-l.rubusch@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove the binding for the generic Mercury+ AA1 on PE1 carrier board.

The removed Mercury+ AA1 on PE1 carrier board is just a particular
setup case, which is actually replaced by the set of generic Mercury+
AA1 combinations patch.

In other words a combination of a Mercury+ AA1 on a PE1 base board,
with boot mode SD card is already covered by the generic AA1
combinations. There is no further reason to keep this particular case
now in a redundantly. Thus the redundant DT setup is removed.

Signed-off-by: Lothar Rubusch <l.rubusch@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/altera.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/altera.yaml b/Documentation/devicetree/bindings/arm/altera.yaml
index 227665d0016f..db61537b7115 100644
--- a/Documentation/devicetree/bindings/arm/altera.yaml
+++ b/Documentation/devicetree/bindings/arm/altera.yaml
@@ -34,7 +34,6 @@ properties:
               - enclustra,mercury-aa1-pe1
               - enclustra,mercury-aa1-pe3
               - enclustra,mercury-aa1-st1
-              - enclustra,mercury-pe1
               - google,chameleon-v3
           - const: enclustra,mercury-aa1
           - const: altr,socfpga-arria10
-- 
2.39.5


