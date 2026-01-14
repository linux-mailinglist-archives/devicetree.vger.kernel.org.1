Return-Path: <devicetree+bounces-254780-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 03548D1BFEE
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 02:53:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BAB8F301A71A
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 01:53:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 322A12D46A1;
	Wed, 14 Jan 2026 01:53:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NA2ez02v"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D7CE3D3B3;
	Wed, 14 Jan 2026 01:53:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768355596; cv=none; b=I45ZhO0XVeNBkBwpMfrc2ehupbPQYyq8vKBpAVjuXCzsq6s2y7DiVSHzQkCZM6yOK/bQOxo/x8pKIRonp8stgFOPmupp8EKl+B0M3Usx+UIT7vVgj8JkKhOUBi6TlzvEsEu2NdfXz6gx8BOdTSDG0tLQLVTbqsoFDmr830fdwow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768355596; c=relaxed/simple;
	bh=XElW7EvW4Qt7q4W4NaQ9Xcs1RFi/bxD9/9RdAxWvNJI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=QtttzhClkLYBX/xPUcUv8vzvyOWTeZ0k4/GRdhiX4+/bdhWhud/NJNnG80BAgyLF6g8mfPRaCP/9wK/30GSfjkJqmM0vRHJJVHmyNZ2GzNPzTB0G0fyjBoBQAB9WY1gn81PgyV4RJud+H5qI+Upx6uYBSYIvNpiZ6aK6RnTpVpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NA2ez02v; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D2E1C116C6;
	Wed, 14 Jan 2026 01:53:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768355595;
	bh=XElW7EvW4Qt7q4W4NaQ9Xcs1RFi/bxD9/9RdAxWvNJI=;
	h=From:To:Cc:Subject:Date:From;
	b=NA2ez02vLkyprWlDHQLilNcsdZDRYvMJgaKqOUjvioqaoYl89sFNlf1DnRmiqcrzg
	 vD096jI9/o4dTSeUe3SzxhdG3cCtc1RdXWwG18TVPuKMilk8GwskZ6DaVSlO9kTZZE
	 6oK5q3EHvxamgyFkJ/H7t+usKVEYZmSvoOcntxZ0Gv6cJNbT2N5yNUjDa6SVi9hFlj
	 eAjeNeKyPcgdKsyB9DeJ6cmeUQDlT5Hd2m3xVeqk6R2guUVFho+qMmwWEMsY6Ih3J6
	 a5HZluS+YfMtkGuSOKRq/80FN8bqH8HskCFE/Ifw0eWzst1EfF3OKIeqw1CsYFD8mp
	 +y9DKJag1ggwA==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Saravana Kannan <saravanak@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Andy Gross <andy.gross@linaro.org>,
	Sudeep Holla <Sudeep.Holla@arm.com>
Cc: Marek Szyprowski <m.szyprowski@samsung.com>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] of: platform: Use default match table for /firmware
Date: Tue, 13 Jan 2026 19:51:58 -0600
Message-ID: <20260114015158.692170-2-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Calling of_platform_populate() without a match table will only populate
the immediate child nodes under /firmware. This is usually fine, but in
the case of something like a "simple-mfd" node such as
"raspberrypi,bcm2835-firmware", those child nodes will not be populated.
And subsequent calls won't work either because the /firmware node is
marked as processed already.

Switch the call to of_platform_default_populate() to solve this problem.
It should be a nop for existing cases.

Fixes: 3aa0582fdb82 ("of: platform: populate /firmware/ node from of_platform_default_populate_init()")
Cc: stable@vger.kernel.org
Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 drivers/of/platform.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index d4e169b3b5af..d90b1677d84e 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -568,7 +568,7 @@ static int __init of_platform_default_populate_init(void)
 
 		node = of_find_node_by_path("/firmware");
 		if (node) {
-			of_platform_populate(node, NULL, NULL, NULL);
+			of_platform_default_populate(node, NULL, NULL);
 			of_node_put(node);
 		}
 
-- 
2.51.0


