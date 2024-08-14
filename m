Return-Path: <devicetree+bounces-93571-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 166229517AD
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 11:28:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B1ADD2882DF
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 09:28:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C705148FE3;
	Wed, 14 Aug 2024 09:27:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=phytec.de header.i=@phytec.de header.b="SW0J/fij"
X-Original-To: devicetree@vger.kernel.org
Received: from mickerik.phytec.de (mickerik.phytec.de [91.26.50.163])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6099F145345
	for <devicetree@vger.kernel.org>; Wed, 14 Aug 2024 09:27:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.26.50.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723627641; cv=none; b=FbW4ZUINH4RyRcVQ6AiMYFwwrtK0RrCDlMpGPn07JsTPQwNtBLcQXchGE4Lv0xG9WDmJHPSMiLIRd9uZW4wnYBUPKBXeB5MVLfHzd1qrX9Fhx1ihzSbofoxQ1ugcWw80ZP2PG5rDOvrUse8qKP9JKWnkeb0DAfn7V5rc0xL4JPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723627641; c=relaxed/simple;
	bh=KeL7fP3f9Ly63fNFyfe/H/c5stmkfKEOaFPhyC/cvxg=;
	h=From:Subject:Date:Message-ID:MIME-Version:Content-Type:To:CC; b=VI7m8a2bgr/XGhKye8xEmpqHeGbG8MyEdXEpKVtWk6ONa20vFzAEnB0fK28JzEqf21asGe80caZcra5YQGsF+eBIApkbHmlX2On20/qTJGR0sKkOE1gEXIqCzc5YEWRG8EFIburODLejH49kxgWRBtJJihwKUgR4OYJ6pqAHRco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=phytec.de; spf=pass smtp.mailfrom=phytec.de; dkim=pass (1024-bit key) header.d=phytec.de header.i=@phytec.de header.b=SW0J/fij; arc=none smtp.client-ip=91.26.50.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=phytec.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=phytec.de
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
	q=dns/txt; i=@phytec.de; t=1723627638; x=1726219638;
	h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=KeL7fP3f9Ly63fNFyfe/H/c5stmkfKEOaFPhyC/cvxg=;
	b=SW0J/fijbJcg+GNOr6uSqmQAGBiwlpO5SnS8hXiAEBvpjk4u8ImrN95kl/DGGlAm
	qTGbPcPBP0BeotORRKcBcYI92l7QIOtNd4gbfYBfv+AWejhmVfXd4FXnyEMvCvhu
	Ht6sM9Cgzk0FnzvMo44OfUZHRefM2nxA0gcyE7z3Is8=;
X-AuditID: ac14000a-03251700000021bc-d8-66bc78766812
Received: from berlix.phytec.de (Unknown_Domain [172.25.0.12])
	(using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(Client did not present a certificate)
	by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id A4.64.08636.6787CB66; Wed, 14 Aug 2024 11:27:18 +0200 (CEST)
Received: from lws-moog.phytec.de (172.25.0.11) by Berlix.phytec.de
 (172.25.0.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.6; Wed, 14 Aug
 2024 11:27:18 +0200
From: Yannic Moog <y.moog@phytec.de>
Subject: [PATCH 0/3] arm64: dts: add aux-voltage-chargeable to Phytec imx8m
 boards
Date: Wed, 14 Aug 2024 11:26:35 +0200
Message-ID: <20240814-b4-phytec_imx8m_rtc_updates-v1-0-10f1afc1b3ad@phytec.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEt4vGYC/x3MSwqAIBAA0KvErBO0BvpcJULSpppFJWpRRHdPW
 r7NeyCQZwrQZg94OjnwviWoPAO7DNtMgsdkKGSBslalMCjcckeymterXrWPVh9uHCIFUZXKKIm
 ItjGQBudp4uvfu/59P4lA3i9tAAAA
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha
 Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team
	<kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>
CC: <devicetree@vger.kernel.org>, <imx@lists.linux.dev>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<upstream@lists.phytec.de>, Yannic Moog <y.moog@phytec.de>
X-Mailer: b4 0.14.1
X-ClientProxiedBy: Berlix.phytec.de (172.25.0.12) To Berlix.phytec.de
 (172.25.0.12)
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrKLMWRmVeSWpSXmKPExsWyRpKBR7esYk+aweRGFYs1e88xWcw/co7V
	4uFVf4uZ91rZLFZN3cli8XLWPTaLTY+vsVpc3jWHzeL/nh3sFn+3b2KxeLFF3KL7nboDj8fO
	WXfZPTat6mTz2Lyk3uPF5pmMHv3dLawe/X8NPD5vkgtgj+KySUnNySxLLdK3S+DKODVzPXtB
	P3vF+ncXGRsYm9m6GDk5JARMJFa2vgCyuTiEBJYwSZyfPZ8JwnnIKDG1t5cRpIpNQEXi8Yt7
	rCC2sECIxIQZJ8BsFgFViTMbvrGA2LwCfhJ3T91ng7AFJU7OfAIU5+BgFtCUWL9LHyTMLCAv
	sf3tHGaQ+RICOxglnsz8zAjiiAhMYpI4eu0EI0TVfkaJubeSIM4Tlvi8ew3YUCEBWYkX53vZ
	IeLyEtPOvWaGsEMltn7ZzjSBUXAWkt2zEHbPQrJ7ASPzKkah3Mzk7NSizGy9gozKktRkvZTU
	TYygqBFh4NrB2DfH4xAjEwfjIUYJDmYlEd5Ak11pQrwpiZVVqUX58UWlOanFhxilOViUxHlX
	dwSnCgmkJ5akZqemFqQWwWSZODilGhiNyhQ7P4skJqmwljt+WV3tMV/tGPt9kUIbGbM7E/zK
	3/y6V7+8NbZdcKrsLA2OjvIrC7V5mSdeDPwlMb+B6WkVy82vawXS/3/84+NYKLL57lups79P
	6f1l5+xcHiEw6UJJhvNSSZs8zQNdjbNdX5V8XFAR49J8tfbODQd3TacLPK0C/MnRtUosxRmJ
	hlrMRcWJABbMX7yIAgAA

All Phytec imx8m boards have a chargeable capacitor that the populated
rtc is able to charge. Add rtc property to all (phytec imx8m) boards
setting the aux-voltage-chargeable property appropriately. The patches
cause no functional change.

---
Yannic Moog (3):
      arm64: dts: imx8mp-phyboard-pollux: add rtc aux-voltage-chargeable
      arm64: dts: imx8mm-phyboard-polis: add rtc aux-voltage-chargeable
      arm64: dts: imx8mm-phygate-tauri-l: add rtc aux-voltage-chargeable

 arch/arm64/boot/dts/freescale/imx8mm-phyboard-polis-rdk.dts  | 1 +
 arch/arm64/boot/dts/freescale/imx8mm-phygate-tauri-l.dts     | 1 +
 arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-rdk.dts | 1 +
 3 files changed, 3 insertions(+)
---
base-commit: 1d43464566cd7dc2f3f078e2ef46b55a5bab6c70
change-id: 20240813-b4-phytec_imx8m_rtc_updates-731b10444c9b

Best regards,
-- 
Yannic Moog <y.moog@phytec.de>


