Return-Path: <devicetree+bounces-237803-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 857D7C546AC
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 21:20:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 908863A7D0D
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 20:20:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 889032D193F;
	Wed, 12 Nov 2025 20:20:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kspnNGkv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F57D2C2357
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 20:20:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762978808; cv=none; b=ImjNnXqwTSenj6Uhs+UTUiNilB3S0VxoPro9cRltV3dmFQA26MyVLb4cN03jOxQbmLjlh3jGRWsyAQxlfMmlRKhzdXlK3Iox4ko8mIr33OYBeRWXsQ+rFKAmlI/FaOdjHJbsD2WJg+W4CgYye3Smywr42MmOIgSfS+aspxVksx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762978808; c=relaxed/simple;
	bh=/plj9fh/IZTy6oZAC8Dfhmcc4NUzFHy253uswukPQ7Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XX/g7rh+JIL6RqStrTdQND4UNgCQnl6HPKFqKYC7MFBxO8Hp0E7LBBsVqmlw/El0L5LBm0BuSKRauHmGLYjmq+L6v+QujKc5WEGz2ErZBq3Xq6Tkjej/+pAFl4NNsTAI+2mo5W9ZRvkq8dLxVBIw/dampdyGRbvXdE5OxoLp/CU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kspnNGkv; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2955623e6faso343595ad.1
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 12:20:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762978804; x=1763583604; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I/vBXqyh3UPyAQ3zsAxz2ig4U3J84dfQKbNA3jaUdzo=;
        b=kspnNGkvldDFU3englaHpott0zd5VPTj0s3hWJTLiLDhemBvyJPerksTmCMwBwjbKG
         019SusppVMeq1Xh3ndVvsOtTaPsS/eYggoRrueYikBPcjjfOaJTv+pNX0wu31zNa6WyT
         O53J/Ds676Nsdm1N7bfoSOaFMEbCu6P7bqVo6ppNKqjYGpH65bC58M+BJZSEtTlZigSH
         KOg7RgLtEAfhTmUujMqOstB0+UmTZouZUi1NtGWsCpbUnaaFOoiZEqUq7Cs5oLYu/mo4
         w20a9v7SvRa6yU9Hse4rgBfYtRtQgbLm6SQFa54l0l/9BSUZmJuvkptD5v0aoc+FUe8Y
         JWXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762978804; x=1763583604;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=I/vBXqyh3UPyAQ3zsAxz2ig4U3J84dfQKbNA3jaUdzo=;
        b=Lf+w47RbLWXY2gkY1UDZMg1uKW3kvOLY+GkgA/p7rfBImzub7M2Fp21NfczgsrfVP5
         ZaOh/D3G06fiZUP8o2qoySQ035a0umhfKe1xhC9bnrI+XtSha/g1JhDbJPOsAOLWgSLI
         Ds/ctrIUFPk2NSGwztTSQyB4hUuuniuTqKxJzG1tiWgCOz+Tjp1eLgaiX7/pqbbzVjv/
         Ez4VaTdEsJZ52BwTp2c6qMVJLfR6rpbQUyhw32/K+/oT7YlZ2pMaZNrCebxecbuL/nyu
         CEzDU0iJUd0wRN9qOlFfDhyVsiHH3LU7b2jrEYIU4hv+XDqh6i+U+Pftt0XbK7uuF5jk
         on5w==
X-Forwarded-Encrypted: i=1; AJvYcCXHGwTphJT08lyyNPsPVpvOS+igRIAXXQz/tHVFgR5eSO/JzwlQP+wVbq3Btz20nKdG6QVwfvEy15p7@vger.kernel.org
X-Gm-Message-State: AOJu0YykV1SneJQTt0KCucOMKFiXGNQnotiRPjBxHOzK7TPxo1zv5uHj
	9RjnlwsCyil5xvrjH9Liu9YO/ChCSyPLAshNcrH7IgNVdLG1gW6F30uZ
X-Gm-Gg: ASbGncv3Fr/9ZjSxjYMHmpuUPuvj9rdmtTxKeEl3n/epikGDiHCfawL6Tr3r/cCaFrW
	t4aqRvFsKr1P7peloPBUuAXJ5oMSHTCyfiD+Qrvaf+1/J7vzM4l2ydmwVZs7NwPYCpPJRP3ybBl
	s5xZ30m7CDXtNQROkf6z1gisPXN7uI3MPGuywH4pPkbcLiXgRZp3jARele2P+76RqGmsWgJtA7T
	YRorvRMhhHmudE9RyWymLHN4rPP1nCyz6FAmSpnVFs0Kt+QdWYCytKTjyl5Ep3yVNAYp3Z0546e
	lClMtbDh7k/CKBFgkvZLTXAplShnZeJfK/T2k6PpFnbAT81/JYeBM82LewgIUIQrGTOErT6WCkI
	op5WQaOWgn2J2zw/fx5Rs0FUqaJDVuWfSO/mj0p/C+T496jaQ8BRUy6HIUt6dR87TS9qGtr/Iu4
	FJ+/cI/W6hSGlOwJM5oPgccg==
X-Google-Smtp-Source: AGHT+IHD3owK8YXgdkefa4KWcxQZCFPmAJLbR/Dh5Q2mfLUiYfFz0jmPuayumGBai8cChDj7akOlAw==
X-Received: by 2002:a17:903:244a:b0:295:54cb:a8df with SMTP id d9443c01a7336-2984edec25cmr53252665ad.36.1762978804106;
        Wed, 12 Nov 2025 12:20:04 -0800 (PST)
Received: from iku.. ([2401:4900:1c07:5748:721b:a500:103e:1bad])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c2377e0sm261015ad.23.2025.11.12.12.19.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 12:20:03 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <clement.leger@bootlin.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: linux-renesas-soc@vger.kernel.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH net-next 1/2] dt-bindings: net: pcs: renesas,rzn1-miic: Add renesas,miic-phylink-active-low property
Date: Wed, 12 Nov 2025 20:19:36 +0000
Message-ID: <20251112201937.1336854-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251112201937.1336854-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20251112201937.1336854-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Add the boolean DT property `renesas,miic-phylink-active-low` to the RZN1
MIIC binding schema. This property allows configuring the active level
of the PHY-link signals used by the Switch, EtherCAT, and SERCOS III
interfaces.

The signal polarity is controlled by fields in the MIIC_PHYLINK register:
  - SWLNK[3:0]: configures the Switch interface link signal level
      0 - Active High
      1 - Active Low
  - CATLNK[6:4]: configures the EtherCAT interface link signal level
      0 - Active Low
      1 - Active High
  - S3LNK[9:8]: configures the SERCOS III interface link signal level
      0 - Active Low
      1 - Active High

When the `renesas,miic-phylink-active-low` property is present, the
PHY-link signal is configured as active-low. When omitted, the signal
defaults to active-high.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 .../devicetree/bindings/net/pcs/renesas,rzn1-miic.yaml     | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/pcs/renesas,rzn1-miic.yaml b/Documentation/devicetree/bindings/net/pcs/renesas,rzn1-miic.yaml
index 3adbcf56d2be..825ae8a91e8b 100644
--- a/Documentation/devicetree/bindings/net/pcs/renesas,rzn1-miic.yaml
+++ b/Documentation/devicetree/bindings/net/pcs/renesas,rzn1-miic.yaml
@@ -86,6 +86,13 @@ patternProperties:
           and include/dt-bindings/net/renesas,r9a09g077-pcs-miic.h for RZ/N2H, RZ/T2H SoCs.
         $ref: /schemas/types.yaml#/definitions/uint32
 
+      renesas,miic-phylink-active-low:
+        type: boolean
+        description: Indicates that the PHY-link signal provided by the Ethernet switch,
+          EtherCAT, or SERCOS3 interface is active low. When present, this property
+          sets the corresponding signal polarity to active low. When omitted, the signal
+          defaults to active high.
+
     required:
       - reg
       - renesas,miic-input
-- 
2.43.0


