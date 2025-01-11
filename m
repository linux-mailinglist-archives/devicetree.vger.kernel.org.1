Return-Path: <devicetree+bounces-137616-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A68A0A1E7
	for <lists+devicetree@lfdr.de>; Sat, 11 Jan 2025 09:09:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CD05E169E40
	for <lists+devicetree@lfdr.de>; Sat, 11 Jan 2025 08:09:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67D5D186615;
	Sat, 11 Jan 2025 08:09:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b="d8R1mWZN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01E5A17E473
	for <devicetree@vger.kernel.org>; Sat, 11 Jan 2025 08:09:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736582969; cv=none; b=Bo7DGiboe8EHoK6JoAVOG12vRB8ZNAZ6hG/PA1IsSgLw0sDX+NAv91SX63be9HRYOMz3590D7QiADmzlBaMx+a6B2owejEhCBLCiVZonFw46fQZZUTZZGUpKM37fRxr7psmxV0tMTHxTTtarcj1AXPRl4cJBTqjhMLKW/DxOyFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736582969; c=relaxed/simple;
	bh=jdyYfF5clN7X0hC3CyfCKkViUyJTBevokrPReOg6Dk8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=q5Qh1zUjSWjvI+aI5ig9pFecFDO+NUMU91VUfzJvPqTUQ5dtwjZoZvR8o5R6ISbSeyFTCJeqiOjJ1hnbTmE+SHzGOXrxR9nBUF+pY6AzwIWQk1zSkVBNZbIAkHCUzAUYU/eq3vKf207xD49+suqzuxrO+tzhxvPY9+SK/Q0gdX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org; spf=none smtp.mailfrom=nigauri.org; dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b=d8R1mWZN; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=nigauri.org
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-216281bc30fso56126355ad.0
        for <devicetree@vger.kernel.org>; Sat, 11 Jan 2025 00:09:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nigauri-org.20230601.gappssmtp.com; s=20230601; t=1736582966; x=1737187766; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eg6ioz6JoFltA8Zjh/jzTfcJqOKdn3GUjdx5b5ttjXg=;
        b=d8R1mWZN7/2QFxLuTO5ymZf4kf+/FBDRFOPiPecGYonSsI9y6BELpzQRFSUDhXle/6
         3f8dkarNWfxNfCvGc+D6MHi9ViTkSUWFBE5fh8srz+CfQRNh9Cp61JBUIMRbarHFjzcR
         RNeWZ7hLQo6dnealpykvZvIk06tN7nYY31iC2yXK3vgpFPBRnD/J2a2cqCmNNf2QZ/an
         dFoNfc9lCsjkQBaOYeTcPaMDaX2kLz4mI0enIjenymOhOw475yKQ5GoR0eRRvUk5xEMj
         0pkDRPsiGA5hqlp4Bo5s5dec1eEIlrDF8I6nVEwzi3OzHocVdOWtoFnre1gZouyQdcb8
         wZwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736582966; x=1737187766;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eg6ioz6JoFltA8Zjh/jzTfcJqOKdn3GUjdx5b5ttjXg=;
        b=KiH70NxuGtCT6+qf+DUWUnOmzjdOoL9vCn/0dJYTP8dTkgX649YEdCwPqMOFCpvBqM
         H5mbycpV9ftdkBTSOWWt6748ZaUkmrDmmwoIs7PY7DuWzDVsShS7ky2bud5Pb20K1sD8
         NW5mbgIyBtptW8R4LOKYHVqwH5YWRLkaM+UolLWfahumDqDD9lBWkmz1vIRqGdI3tkSd
         VfziWci0S37nEraz0SeI4TTQdh1RBHcIn3j7Egv5zGlvMmDX44Rg5wTQt+p/YoMPbdMI
         VfBiHiMPPGE3JbhmgHntbJu8NXtjC47SwraLPvWqF9ZaSNiIbKbDdvTphmR4MMI3aapk
         LPnA==
X-Forwarded-Encrypted: i=1; AJvYcCVyOHSXevtYeGc3Q431q7kK2riVF3wc3j23XhvTvlay4ZoQIN3v5kKBoCrBlAypcT4TdzO1RieNZYuN@vger.kernel.org
X-Gm-Message-State: AOJu0YxfY5E/aSJZwt7dJcmmledsfyvJxIzNiIJwu1SHsuO4C6o7xpY6
	acePM2zJrzaU8npWWcxgEPUXm8TLKAFccUD4X3324qErGSnYFGkl84z595zu
X-Gm-Gg: ASbGncuPNQzvfz8B44QW0IMl7KEldActiM6/WbglmVz28ZXu7SUdCH/gZxIJx5UeykN
	0/cwp0F9bTSsshigWKCb4hk3X+EFXG4aBp+7T3mZ5lYp2+otgy6RQGkSB084FdnSG+FQYXxDHMl
	WplZTEcZYGeLi/EHR9PZ5qDYm/KYRVtZLJM1dVfpfutcL8aubC+3Oe7OHXCkBoXkE5aWQMMBoVq
	ypgO93dY8zAXreJOFx6YMo9rOF7oexYoukLf0w9QxElLUbzcCA1pFsTLQ==
X-Google-Smtp-Source: AGHT+IHmh2z58BmWM8Y3KdeDIj1EvGQgFU3W3NnG36qp9Hu71RV7jY88f23TWuiw6XMrfRbRIxZe8g==
X-Received: by 2002:a17:903:234f:b0:216:1cfa:2bda with SMTP id d9443c01a7336-21a83fc3891mr236338815ad.43.1736582966273;
        Sat, 11 Jan 2025 00:09:26 -0800 (PST)
Received: from localhost ([2405:6581:5360:1800:aeaa:a1da:95e3:2274])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21a9f1386efsm23204265ad.75.2025.01.11.00.09.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Jan 2025 00:09:25 -0800 (PST)
From: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Masato Kiuchi <kiuchi_masato@yuridenki.co.jp>,
	Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
Subject: [PATCH 1/4] dt-bindings: soc: renesas: Document Renesas RZ/V2H SoC variants
Date: Sat, 11 Jan 2025 17:09:00 +0900
Message-ID: <20250111080903.3566296-2-iwamatsu@nigauri.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250111080903.3566296-1-iwamatsu@nigauri.org>
References: <20250111080903.3566296-1-iwamatsu@nigauri.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add SoC documentation for Renesas RZ/V2H(P) (r9a09g057h4[568]) SoC.

Signed-off-by: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
---
 Documentation/devicetree/bindings/soc/renesas/renesas.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/renesas/renesas.yaml b/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
index 225c0f07ae94c8..4f2645e8140c5c 100644
--- a/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
+++ b/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
@@ -552,6 +552,9 @@ properties:
               - renesas,r9a09g057h41 # RZ/V2H
               - renesas,r9a09g057h42 # RZ/V2H with Mali-G31 support
               - renesas,r9a09g057h44 # RZ/V2HP with Mali-G31 + Mali-C55 support
+              - renesas,r9a09g057h45 # RZ/V2H with cryptographic extension support
+              - renesas,r9a09g057h46 # RZ/V2H with Mali-G31 + cryptographic extension support
+              - renesas,r9a09g057h48 # RZ/V2HP with Mali-G31 + Mali-C55 + cryptographic extension support
           - const: renesas,r9a09g057
 
 additionalProperties: true
-- 
2.45.2


