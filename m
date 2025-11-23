Return-Path: <devicetree+bounces-241435-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 655FEC7E010
	for <lists+devicetree@lfdr.de>; Sun, 23 Nov 2025 12:23:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 44E834E19C1
	for <lists+devicetree@lfdr.de>; Sun, 23 Nov 2025 11:23:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 050C528D83F;
	Sun, 23 Nov 2025 11:23:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZxK1Tt8B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F13D52D47E8
	for <devicetree@vger.kernel.org>; Sun, 23 Nov 2025 11:23:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763897015; cv=none; b=HOPVk8GO5t9m4lO8GbPy/wrdzbghOsdbCUchj+iAhSaI/2fLUVWgaPjpru2A1wWGhLQlsVupwoYQbjZ7A6pE1A+UGxVVvRozgppmQTCA0PHOt8uhaCTz23KvQcpEu3Vsj1Oh905/fOjQ1cgO14hCfLyJ6Ea08EOEuP7KIai3YBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763897015; c=relaxed/simple;
	bh=YxkQBwXeaDK5Ahlcqc7tH6KRyGRRKLvTUkvYlpv0wpU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=MdoOmUREQh/Kprktiiz2D5vQWl80RDIweffEOrrpCupO80BL9Xf09ATUwxWDtppksAi/qSpLu2HlPPFyf2rJF90Yigs6OTSDLQYdIfXaAwek2FrVv6mOeI0S4uCqkH8T073XVkB/GXn+Gtwnguwb22th0QOtthUELc4H76Fq3BA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZxK1Tt8B; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-477a1c28778so38114185e9.3
        for <devicetree@vger.kernel.org>; Sun, 23 Nov 2025 03:23:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763897009; x=1764501809; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gUVsPl8aKiLhU+zuYZZLZKdCn4OQAATzfIPdBb3xnLc=;
        b=ZxK1Tt8BZ3N+1VTQhHpa3hX5VpouGF6tXtHHirA8wdpH0P9mHQuG8NbZDwOL/dhyRe
         btrQKx7NjaaWJTdsPQWQ8PyPpf43xzgnOj96vXFuU/MDT2ACR0U/HXIMViSPc8RVWvT2
         tSfKyHErYNJft+3qvBc0Ymgcuv5XSop1uCzeg0gLOtpoZh+9STNdhLsfp+FuAmPz8ojp
         z1YBD/0cmMNhAz0aZDvOrbgN9CzB0Cy37bIYWaIfAXj0Zgxw+xVAgVPL+sGdmyBy98Br
         ydxLo+Fh298ewCdFM69MgS8lxCLagJe5Z6+ogU6AsTr0P2iAovtTe+z4+g8eZ3So3sPc
         mRLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763897009; x=1764501809;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gUVsPl8aKiLhU+zuYZZLZKdCn4OQAATzfIPdBb3xnLc=;
        b=wyMaTvUi2OvIq7+cfBOXumTFBtHfSsH96OmPqAjxOxCiut3/byt+gyNbU92SsVA9gM
         l5ZXTJ9J2p6MQjTrLx44oqHgjsGeyStWwWGqnjSwKkl0uX6wyld0ZFSa9NusbESRQyAg
         sDcCtlwubtQj2WsmeFVQKeH7im5F1u1sQF/AMwioX5Xkl5FSYkkdJ3VGToSHwt6CG5fp
         96w53sndVy6vfBTAxFZaMOfoh6q6jSvf6vlndaK/9O4NzSwKdCr1fJFwxnL8dO5mRRQh
         RErbmDmpwJI4hj6ccPC0vqwMjfkaiN45LvYaeAtDdi32kpQTI3o9suP66590m7CInlS+
         myVQ==
X-Forwarded-Encrypted: i=1; AJvYcCVCvKx3Z0qpuEW2yjTIv1Z7ehQ+GZ1MoYCi0Ze2iDl7FjYajtlt9KedC5/tuFKNS4g4thxwBtauiGPN@vger.kernel.org
X-Gm-Message-State: AOJu0Yztk2EWtsv/mQwZuglVu4SqUKGp63Rwhvm/7ouH3sdeDuv4PlLh
	lJC8riH7s6iANvRdY4IMSbLAPDFJx+ihY8Avz1c1fLf4zWYElMbbQru8
X-Gm-Gg: ASbGncshccUDQ5HDhL1SOtp7NHpbOaS4rIbMKHso1nOrcxx1UQ+ZSyGVtFpiS3j3guQ
	zQmq5DUeFUDHcKStVp+c99xn7Fl3/tTYkQzlUgkiMfaMg72ThYFdG50At4HqpelnUmtFTtJ3eoy
	kGWe6d8XsgZ4tB+ftCKqadmP848aqweZ1gu87bVH8FUhbwsDtUBV2RTY+mjozV7b1oSDjE5gygw
	b3qMoqlAzIDZrudh/YXIk42B/AaZnTaMYachPASlDe8/lKB67wqKjWaKjBjQYQUT728fT8w4EeY
	Dk+vLllNPDAW2BaGhyjGkvws7vjqFoNOuhWaugS/C8CD9fl8imdpYsrnwuZLlGkFrvzVUtj1i+X
	sotk0Hm5koxcDJnKm0w3kx6oxndV9JcN8cLSPr9bhQqCCnkQ/A4HwsgG6aQKoaLTRB1/hcA9sj6
	QloJgAXJKLxMUWzdKa09ocuQJgUt7C+NTO6sqRVxnUhV7izT9FHUizVSVArpl4kf/IImg/OmM=
X-Google-Smtp-Source: AGHT+IEx7AWatN2BQs4y2OJkC+YYVlkGVZrC6zppZE1i8KxRoEXxPptJb0e6TIw+8Q3zMRycyNQj7w==
X-Received: by 2002:a05:6000:250a:b0:42b:4961:eb4c with SMTP id ffacd0b85a97d-42cc1cd5cc1mr8751552f8f.1.1763897008927;
        Sun, 23 Nov 2025 03:23:28 -0800 (PST)
Received: from biju.lan (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7f49a7bsm21765703f8f.19.2025.11.23.03.23.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Nov 2025 03:23:28 -0800 (PST)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	linux-can@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v2 0/2] Add FD-Only mode support for R-Car CANFD
Date: Sun, 23 Nov 2025 11:23:19 +0000
Message-ID: <20251123112326.128448-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Biju Das <biju.das.jz@bp.renesas.com>

The RZ/{G2L,G3E} and R-Car Gen4 SoCs support additional CAN FD mode called
FD-only mode. In this mode, communication in Classical CAN frame format is
disabled. Update binding/driver to support this mode.

This patch series depend upon[1]
[1] https://lore.kernel.org/all/20251118123926.193445-1-biju.das.jz@bp.renesas.com/

v1->v2:
  * Added conditional check to disallow fd-only mode for R-Car Gen3 in
    bindings.
  * Dropped has_fd_only_mode variable from the struct rcar_canfd_hw_info
    as it is checked by the dt schema validation.

Biju Das (2):
  dt-bindings: can: renesas,rcar-canfd: Document renesas,fd-only
    property
  can: rcar_canfd: Add support for FD-Only mode

 .../bindings/net/can/renesas,rcar-canfd.yaml  | 24 ++++++++++++++++---
 drivers/net/can/rcar/rcar_canfd.c             | 14 ++++++++++-
 2 files changed, 34 insertions(+), 4 deletions(-)

-- 
2.43.0


