Return-Path: <devicetree+bounces-36700-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B5578425B1
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 14:02:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BC745284003
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 13:02:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5D916A329;
	Tue, 30 Jan 2024 13:02:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49197.qiye.163.com (mail-m49197.qiye.163.com [45.254.49.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77E8D6A334;
	Tue, 30 Jan 2024 13:02:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706619724; cv=none; b=COI0GaMr2Bbpzk3f5/PQU/Hsx6r2dsWYhH7lC1qnRp12aX/2z6bfDdsYyCM25daEcQp727QV6JFq0R6iI1akfd4m0ueFYp6Ko5lDxPQE2NsUQWWutr15R/6FaiuluSVjuRr+vgQ4tUW3xnTxJsGmf72NkYx8SWUe38EBawbiF/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706619724; c=relaxed/simple;
	bh=IechUE074hJ3yuwjCqmvBUHh+vgfKOfukOs135ygZp0=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=VOJdxQxrzqxWt4kU5GTfCD3iZINP5jBj2z2Z9Yh1punZBTvv2sUJBSJBnTOfkIrRMMbYHwy3h/6SMyqRePYpvNxXaG/lIjOspBuM2t0cOOZWFQG+CY17crgXzjav9zml9ff8EvSviohtULzV+QJ3LnEZNmk4uFcrCwQ+kpweuig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=45.254.49.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from amadeus-Vostro-3710.lan (unknown [116.25.94.16])
	by smtp.qiye.163.com (Hmail) with ESMTPA id DA4587E0133;
	Tue, 30 Jan 2024 21:01:40 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: [PATCH v4 0/2] arm64: dts: qcom: ipq6018: add sdhci node
Date: Tue, 30 Jan 2024 21:01:30 +0800
Message-Id: <20240130130132.9550-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDT0wfVktDS01PQxpCT0xKQlUTARMWGhIXJBQOD1
	lXWRgSC1lBWUpKTVVJTlVCT1VKTVlXWRYaDxIVHRRZQVlPS0hVSkpLSEpDVUpLS1VLWQY+
X-HM-Tid: 0a8d5a76088903a2kunmda4587e0133
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PVE6TQw*HDMIFEoKNAIVExEt
	DkowCjBVSlVKTEtNTUpCTEtKQ05KVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUpK
	TVVJTlVCT1VKTVlXWQgBWUFKT0lPNwY+

Changes in v4:
  Change 'enable' to 'add' of the commit title.

Changes in v3:
  Remove always-on for LDOA2 regulator.
  Remove 1.8v properties of the node added in dtsi.

Changes in v2:
  Add LDOA2 regulator to support SDCC voltage scaling.

-- 
2.25.1


