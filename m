Return-Path: <devicetree+bounces-240496-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6A0C71E80
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 03:58:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id 1A91229C9E
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 02:58:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 731B22F5A3E;
	Thu, 20 Nov 2025 02:58:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HE7YpeJ2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E0B42F5A1F
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 02:58:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763607508; cv=none; b=it0nX+XA+DJaP6AlagMiyOof9LN1lWJcm8UCFkptag9xnSJwNHh2NWqCFWozZxR+a8fXmQjD6SWEneCkIK22ATRnKNZ+04+lGxjUcp97cqQhu632QO1DMnZ4PqDkqG8LldzPPI0XrhrK5sI9IqNl5RnIoaz8u8AACucqnnle7TE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763607508; c=relaxed/simple;
	bh=72rpXeJzAKOM+ey6m+XjcDiC/ioU24pybCfGKrguMMQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=bCXi3sujNwqgAOJ5I1/1kViy1FzP6/kGwh9fMN850ixuw4nUpHsy4L8IRZR4NZNMrg1mcnoIQSOS0GWWMCLjSVV2nV0uhscTkTzSoa7Q11qZEzTjdIm8sVV7PPJjRYycrVlGCYd2Lf49wp9Zc7ip2+XivNw4rn8PYmWFxB4r8SE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HE7YpeJ2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6829FC4CEF5;
	Thu, 20 Nov 2025 02:58:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763607507;
	bh=72rpXeJzAKOM+ey6m+XjcDiC/ioU24pybCfGKrguMMQ=;
	h=From:To:Cc:Subject:Date:From;
	b=HE7YpeJ2/XL0Eq4Q0MXZj17GisNvJoiHRY9CwhaadZV3ylkbP0WaUgmveKuSQL0mH
	 PzN03z/WShoZ6Q8ISqCFd9qLgnwoqlWaZEwAGuYcnezEDQkdg2eE9rMQ4qJ2quUIaX
	 fqIaranBYA/LZgALMKbzMCkgdVvgnV8Xj03Vvv9Ti/wS+WQivhI6ubyUJeLT8cwvHZ
	 iUVz82QgW+2hfMe31uldGiIqGlLnWQDYr/0OkpDP+CE5yZB1uIoEqFAoE4WtwOneTd
	 oY7aGERifD2i9jG8T8hTj7If/04UCr1v+V3dtiX+Xba1KUzc8qvcCGPz6ybDUNT4SI
	 kKZSIak9G4I6g==
From: Dinh Nguyen <dinguyen@kernel.org>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dinguyen@kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: net: allow the Agilex5 ethernet to have a fallback
Date: Wed, 19 Nov 2025 20:58:19 -0600
Message-ID: <20251120025820.41308-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.42.0.411.g813d9a9188
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the generic "snps,dwxgmac" as a fallback binding for the Agilex5
ethernet controller.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 Documentation/devicetree/bindings/net/altr,socfpga-stmmac.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/net/altr,socfpga-stmmac.yaml b/Documentation/devicetree/bindings/net/altr,socfpga-stmmac.yaml
index fc445ad5a1f1..b53847a2d953 100644
--- a/Documentation/devicetree/bindings/net/altr,socfpga-stmmac.yaml
+++ b/Documentation/devicetree/bindings/net/altr,socfpga-stmmac.yaml
@@ -46,6 +46,7 @@ properties:
       - items:
           - const: altr,socfpga-stmmac-agilex5
           - const: snps,dwxgmac-2.10
+          - const: snps,dwxgmac
 
   clocks:
     minItems: 1
-- 
2.42.0.411.g813d9a9188


