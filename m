Return-Path: <devicetree+bounces-230545-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB1CC03843
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 23:23:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id C5DE63572D5
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 21:23:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFEE126E6EB;
	Thu, 23 Oct 2025 21:23:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nnsevFiF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6850F26158C
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 21:23:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761254608; cv=none; b=u4LIFL2WBuXZGM6QqbqN9kpTHUkT7wqxNM4wW6mVSqx+5xwCpp4u5b8sf+2f/rwFNN8sbADHuwo4EsYiVhlEwngnNga69qH8vyXouuWMNcNz7IsmrveW1tk4ikcVtYpfgCTYP1Cf1vaYaPbovD8ALb9t6/Ir5lQhlvxeSVt6h+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761254608; c=relaxed/simple;
	bh=yFthfjChABU9B3p7kO2QzRL1wEOgO5LPQX41KnTS8X8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=T5E4Q52vgmbcK4ac/qQyDD4FfEWbHXjsQm0GT1viMYyTEKDDLURwbDtKjx+qaEapazJbNvh+bk0/dnlDFRm0BkdRc0v+GZ5+dKl/YQie8fIe5Yc8AhpxArM9qVqnkGW+/xqwrAHLurfiYIqyNT5XbSTRavCtK5zRSU2rH5ZkKf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nnsevFiF; arc=none smtp.client-ip=209.85.215.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-b6cf30e5bbcso964005a12.0
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 14:23:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761254607; x=1761859407; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5by386MZx5aXAJgioDNPB9DUAiuf+2nw53TNdh/FOSg=;
        b=nnsevFiFJlr+C3e5N8IpY+Mc8MRKtEvJJP/oPD/qwkIN+MH+4gsMFq4Ar9U8qNvn6Q
         qb4xWVtcW3NHRqDCzEP4dQzWnWirEh+YNWOlG6e5vGMV9kpnMxG5SNkLbUJ6xb5P1B1i
         rYCfTF1Zq9EN0gft7BEP9PVYqLZnPQGKZYGuGwaA/oghxbh4YOqUDu4fdwwyFpIFbtAo
         /PfqE1swuQVVdyg6mnGPFcLEt7LnhZC1nvewz7nNuOoxe8sdTmYsLzEPF35rlpyygvdW
         IrN0SNS49bwijW86vXVa2oNnDIzxJBiaKY2xnCg6cxlazKM3G79+Lif88SigvaW0hcz7
         SM/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761254607; x=1761859407;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5by386MZx5aXAJgioDNPB9DUAiuf+2nw53TNdh/FOSg=;
        b=VBVjJvTA7QXN34aNTmKEejmWt7wRXjwklI5tquc6Nr/N83hDfz9rDiugsrId0EJDn3
         064OlsGcM+Cy8aS8EyMogN26euTwNAMczUD6siQjMj1sfN+czwyVt1xPshNW3/q1DJ2e
         00I2lbIGrfNz+mNpuRJEV8gPHueohgvSBJVEdJiU/ffYw46cNyI5up8zX9yBOeqRKBQK
         uMmJkO5xaxlqB180KYFFmqqYEE1Wo2JIyRbiqxohD95UCkFQZEBYrOpWyvhy5LDHUMt+
         CiaR5EqBPQ1NIuAfNE6uZjrbeqcfLyI4++309AneDhPhKdgeQ6Mxwd8xHWJj2PNiZBHq
         wnrw==
X-Forwarded-Encrypted: i=1; AJvYcCVFH0hb7D1iAOZ4jufQIO4RbknIcyFTxbgWGsW3wNwTQoCPVlQuNsBF3Orbah7T7lGcp6O0c/t39vQe@vger.kernel.org
X-Gm-Message-State: AOJu0YzgPOUQOrLym0T3Twl7WiffZS5AxXzPo2kwTkDKZZQgPngNBG1d
	aTntXxYBFkYyF4kjvuD6cwnV9mCu9QlWmQ/p9riZhXlgIe17eoO4j+ta
X-Gm-Gg: ASbGncvdjh5e+dl9lIJv9Y0sOXshyGYw7eUJm7s0KcRfFtBMvqdUIP4c9qa+Es3vc2w
	NknB1e5eYp3FJ0gqSIh0S+4DzcIZce9tCSuQJElsKQLgd2w85X6TZb7nmpDJJORvU1mHnxT7JTl
	8PJ32giiEdMS2hzN/0iECGiDWRsqSOyQ8ZcLA4f5qkRJ0qS7KhzuWsKRinK13jpYIsHSGyG6ua+
	njvulQPdSJy1ocMJRn/AcUcF8Ci7PorRutZXUz0kttABfP9l02hTxc+Oiq0+KmtANhb52z0UT/g
	COo3NqP2AcqOpQUm62qiFbPG+GMhuPcX54I1li8sD6cJj1rsplagOdCOxG8yf5DLoiHah+lfgED
	Q8prF+FEnv9tos8C8x7jUBeZ6c/u/p0YADeorNiJZP+mxKsaqKbPziiYMDtKPHf91QvwFe1qKl+
	xphud6SpY8JTLUb/WOdA8=
X-Google-Smtp-Source: AGHT+IHGl0olTWLF8OaNJ/L8hBPnlgauLfY1yN9znwKhvU+1nASIFWBG/XX1hymKLG4TJ2s+SNOl1Q==
X-Received: by 2002:a17:903:2f89:b0:24b:270e:56d4 with SMTP id d9443c01a7336-29489db6d09mr3834145ad.4.1761254606662;
        Thu, 23 Oct 2025 14:23:26 -0700 (PDT)
Received: from iku.. ([2401:4900:1c06:ef2:36b5:9454:6fa:e888])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2946dda7949sm34306965ad.3.2025.10.23.14.23.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 14:23:25 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 0/3] Add display unit (DU) and MIPI DSI support for RZ/V2H(P) SoC and EVK
Date: Thu, 23 Oct 2025 22:23:11 +0100
Message-ID: <20251023212314.679303-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Hi All,

This patch series adds support for Display Unit (DU) and MIPI DSI
controller in Renesas RZ/V2H(P) SoC. The first two patches add the
DU and DSI nodes to the SoC DTSI file, while the third patch enables
these components on the RZ/V2H Evaluation Kit (EVK) DTS file, along
with the ADV7535 HDMI encoder.

Cheers,
Prabhakar

Lad Prabhakar (3):
  arm64: dts: renesas: r9a09g057: Add FCPV and VSPD nodes
  arm64: dts: renesas: r9a09g057: Add DU and DSI nodes
  arm64: dts: renesas: r9a09g057h44-rzv2h-evk: Enable DU and DSI

 arch/arm64/boot/dts/renesas/r9a09g057.dtsi    | 89 +++++++++++++++++++
 .../dts/renesas/r9a09g057h44-rzv2h-evk.dts    | 71 +++++++++++++++
 2 files changed, 160 insertions(+)

-- 
2.43.0


