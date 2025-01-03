Return-Path: <devicetree+bounces-135391-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 36069A00D23
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 18:47:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C0F1A7A0303
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 17:47:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9A621FCFD9;
	Fri,  3 Jan 2025 17:45:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="EIOLCMh7"
X-Original-To: devicetree@vger.kernel.org
Received: from fllvem-ot04.ext.ti.com (fllvem-ot04.ext.ti.com [198.47.19.246])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9A021FCCE6;
	Fri,  3 Jan 2025 17:45:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.246
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735926349; cv=none; b=V/k5RSQZaYBi/S9FRxyLyLWYc5yDpMtZj1yqvRlKdDQ6IXMbLhN94vUGTCl2tg8K90eK6ASgztT0fCk9dE8ix0WHDWN1kC6K8tDKb3xOf9WOwp54bjZCjGNQiSn8He48tRlJ9LzveV98Xw2RUxhxg6qOzlEUzizXS9tw/zQhqzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735926349; c=relaxed/simple;
	bh=jg+VFrnM0S0zFZ+QbK3/+RrTtwzS74N5tKUzPsCW0tQ=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=hDY3FvFpy+3Ku5ttIK0e6UQO/F7T/93sCU+t60/dl9PjmD4zGfPdNRrWsCwFIxLrHI2guzefjmdO9qTutlial7TA2imORzcayUhfX9rSSjF9s3YBbXD2cyCbxphn3UwdbgJg21CXqCFwDWBB/NvN0XsGu2vQapH//+7+QowxeSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=EIOLCMh7; arc=none smtp.client-ip=198.47.19.246
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllvem-ot04.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 503HjQaG2350797
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 3 Jan 2025 11:45:26 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1735926326;
	bh=qKUFYr0OTHnQX0iYStBmp/DPU25V+WYaaonNDUDnFW0=;
	h=From:To:CC:Subject:Date;
	b=EIOLCMh7KAC3YYCSxudbUB3TspJ+TRHk22W9ced5Nig0D1uDvvmN+tTTXvf4PzgVa
	 C6uikeY3oAynV/9g77Sr9vA4XstcMVQqcTY+G78Pf071BmpN6AJGY295XznqCx1fgL
	 ThjijyZse+scLfrD/mP40RX7LUxYfAU8RXg85H2Q=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 503HjQQv014389
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 3 Jan 2025 11:45:26 -0600
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 3
 Jan 2025 11:45:25 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 3 Jan 2025 11:45:25 -0600
Received: from lelvsmtp5.itg.ti.com ([10.249.42.149])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 503HjPcC053135;
	Fri, 3 Jan 2025 11:45:25 -0600
From: Andrew Davis <afd@ti.com>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Siddharth
 Vadapalli <s-vadapalli@ti.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Romain
 Naour <romain.naour@skf.com>,
        AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        Andrew Davis
	<afd@ti.com>
Subject: [PATCH 0/3] dt-bindings: mfd: syscon: Sync compatible lists
Date: Fri, 3 Jan 2025 11:45:21 -0600
Message-ID: <20250103174524.28768-1-afd@ti.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

Hello all,

Couple simple fixes for the two compatible lists being out of sync.

This is a resend of this series but this time based on latest next
(next-20241220), last sending won't apply, sorry for the noise.

Thanks,
Andrew

Andrew Davis (3):
  dt-bindings: mfd: syscon: Fix ti,j784s4-acspcie-proxy-ctrl compatible
  dt-bindings: mfd: syscon: Fix ti,j721e-acspcie-proxy-ctrl compatible
  dt-bindings: mfd: syscon: Fix al,alpine-sysfabric-service compatible

 Documentation/devicetree/bindings/mfd/syscon.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

-- 
2.39.2


