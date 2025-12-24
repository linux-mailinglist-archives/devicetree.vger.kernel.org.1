Return-Path: <devicetree+bounces-249560-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 90295CDCE27
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 17:51:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 87DB7300C370
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 16:51:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70356328634;
	Wed, 24 Dec 2025 16:51:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kkzJLsDy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A18C02DC342
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 16:51:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766595062; cv=none; b=HXGKKYk81KnlPbdcuoezvky3T6/ydYOfvZ2ntTnJ+/x0PgQIfq4XiMNslwrfNld7/tAQQ/RTq3lg90vvKzOoLn8kk37n7xr4RUddqXKif01SwMvGs2PIUQgZyTXBHNJXNbruq4vAOXLt70bbLc3+jZwLYLtawxrY4wHBvAIEKrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766595062; c=relaxed/simple;
	bh=czLKHCU5+fP1Kb0qEK97qZgCkIO3bC4SpISrL4lljKw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=XMYPwTbs88/NdJK/3+k67Ins24T41YIVky4Gp+7SfjllNW1Hw0+ozBlD4VHjJLbjPqil5UFReR9+57V2EvM5hp31A8kINHbuwlOkz02jYRR5VWoGQ//Qe9DofdEmGunDjsfMcFvKXjf74dx3VVAZYPrCGNpZ6iXIaJZhK6TdF0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kkzJLsDy; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-47d3ffa6720so4214605e9.0
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 08:51:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766595059; x=1767199859; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=g4eRsHmASuGwyb/BaBJUOKdVAxYnEcEUDGaUnHd6qgo=;
        b=kkzJLsDypI66iwOtxlyowKWOLGtFdDhCJE64ZGOaq7o4hSec6hTyXQduuDAZ/mAABV
         Hhs4+9/VNt65lyJDgtsOPlw0/kVNtajV0G+V2WeIrUItnt8lDhZ6Nh8k0cuGbpfRF7wJ
         Qf+plP9fruLTifJ7z9v18Eg8uiWpZNllegojynMUKgQ/ZTBSHoR0LecAp/XuNxUJJKxt
         DuzkJkhoV8xPpdA42iToPaBkyt4VP4ew2ZxAhN/cGQk3S8cdfsUvNgSZ4l5tJBjuWTdK
         Pf8Ox7CZFtAs/6PU6ZLferO64mweyPzlMJUmFz9aYdHVP6Bs+OMHzmAdU2ybzYpP0eQM
         YCPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766595059; x=1767199859;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g4eRsHmASuGwyb/BaBJUOKdVAxYnEcEUDGaUnHd6qgo=;
        b=cZxr+9X+HPhrX+AxUv4DgNMPJJbpK1b5rJVJJkWlsaKcHethvmg/2eFjj3yxcu1Gwt
         HotqVuYmHSA6kmQqWWBh7PdWUEB8Ju7qwbsVWuKNzyWmYBZLkg6zik9HvIe6wvlY8zS/
         JKHqAZRfQuu1UjHki0FEW2JzFsRqCJKh4FPwY6zPFxgGZFukoFSrYstbKYFLTUVrrWlI
         s/7nJCzUeqoTayyBBCADWLde7LHVAhdHJorjtsdIfDZ0iNZ4upSx6O1S9HGuRxlB2x1P
         L6X64TqNtK3bx5aaAGJIiepO9PF5UHWJGffIf/APqpnIBh9kXugA7n2taTucO9dk9/P0
         ArdA==
X-Forwarded-Encrypted: i=1; AJvYcCVJkVe+BkQzEvn0VZf/HJNd3FbSJGJRGUtplc3MWCaGyj3Od9QCOs1F02StV3q+OVeCVOuEw4czktn/@vger.kernel.org
X-Gm-Message-State: AOJu0YxtOvAj8RFOfGtYfOEntqprPBu2WHI+YLqBU4e5SbQrb1Ixu1N8
	cta6suURTG2tmegoFt5XYMNv9J9i/Sb9k2PaWlAR80c89VnC4T25Jo7h
X-Gm-Gg: AY/fxX7wz/27HYjSjyLOb9dXw3mjTZDGmAMxIlbAmJwzMIPcyDL1ppH4Wla4sbq5xaW
	FxqYjZebFa6XUivzNWwteDiu4bIyDdDhO/JXys/PMtOBdcX5gXDBaTqrXF4zw9XXstP3zh9Mfam
	aRxLe0tOcH/XVtkvN5A12isrcytNmvrbcJ9hB7sb5bOIa/pcD3EwfTBlobJDivcJYrEkYZ8c0bl
	MPQ12K14octw7Ye6D1OSEX29pHQ8JKJDYPUGpusTUxvKe0b8KIwDeTwK04yV5FOWXxWWydcEXFe
	UMVU/v/wqAayr1XuyazdwqB+dFquj5gEhkJLadZOio0jRpshGAVp16Bwp/bY+mOgzX1J9xNe/QL
	5gqaAIA2D+kJQw7Zui2KrCZzjwhjjUKimAdNmzGULgFpW5jFAMKAbSV/sU/jq+rJ+BhQUHPzXHd
	Y3si98u/p7NVJjE6x6JpxmSz0m2njj9PlICtyzUbOcTXNF6xjut3CC29p9JZvTio28oe+Df22pi
	ZPaIr9lCyQyB/DKUCdpQiIb
X-Google-Smtp-Source: AGHT+IEl/9OiTEZpBcYx1GBcVJZFF2FYtLewMgpxkdzBjzOsPnCkuhsZFwEaBxZj+b4rC/x1TmNzLw==
X-Received: by 2002:a05:600c:c08a:b0:46e:1abc:1811 with SMTP id 5b1f17b1804b1-47d197f67edmr141214885e9.27.1766595058836;
        Wed, 24 Dec 2025 08:50:58 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:3371:7b65:aaf4:d2e4])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47be3ac5409sm136482305e9.15.2025.12.24.08.50.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 08:50:58 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 0/4] Add CANFD clocks for R9A09G056/057/077/087 SoCs
Date: Wed, 24 Dec 2025 16:50:45 +0000
Message-ID: <20251224165049.3384870-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Hi All,

This patch series adds CANFD clock support for the Renesas RZ/T2H
(R9A09G077) and RZ/N2H (R9A09G087) SoCs along with R9A09G056 and
R9A09G057 SoCs. The CANFD peripheral in these SoCs requires
three input clocks PCLKM (peripheral clock), PCLKH (RAM clock)
and PCLKCAN (CANFD clock).

Cheers,
Prabhakar

Lad Prabhakar (4):
  dt-bindings: clock: renesas,r9a09g077/87: Add PCLKCAN ID
  clk: renesas: r9a09g077: Add CANFD clocks
  clk: renesas: r9a09g057: Add entries for CANFD
  clk: renesas: r9a09g056: Add entries for CANFD

 drivers/clk/renesas/r9a09g056-cpg.c                 | 10 ++++++++++
 drivers/clk/renesas/r9a09g057-cpg.c                 | 10 ++++++++++
 drivers/clk/renesas/r9a09g077-cpg.c                 | 13 ++++++++++++-
 .../dt-bindings/clock/renesas,r9a09g077-cpg-mssr.h  |  1 +
 .../dt-bindings/clock/renesas,r9a09g087-cpg-mssr.h  |  1 +
 5 files changed, 34 insertions(+), 1 deletion(-)

-- 
2.52.0


