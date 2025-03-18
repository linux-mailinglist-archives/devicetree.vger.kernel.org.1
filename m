Return-Path: <devicetree+bounces-158404-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 72147A66486
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 02:03:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 771AD1899608
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 01:04:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 145A585260;
	Tue, 18 Mar 2025 01:03:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b="MoV3lcwS"
X-Original-To: devicetree@vger.kernel.org
Received: from fanzine2.igalia.com (fanzine.igalia.com [178.60.130.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E0DF35959
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 01:03:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.60.130.6
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742259827; cv=none; b=fRC2u2mWnyulBhabAFfvkLFUthH3uaMO8yTkwELetle9fmhCDcxpIh5ndD4b0i3aHdHksNhBSn+9I1uPfwvUiDiLXsL2Lv3niB15VuM4sfVYbfTt8KZDTUQtOOzxJT9tgjomszcg5e7DYGEEVBfqL1/ZyggLpxOrjXDpG2y0YqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742259827; c=relaxed/simple;
	bh=hPv5ISZDngMDAncLcXlu5GAyBEjzEzC0JjoG0rpZ9aw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bmQ45908cSVNKGg0UI1XSjHo7kzRDUFlQsC5V3Ok2gFnXF773fpUT3DlWQb1StHbFYCBKgAq2W39tj9sMHTh8Za74MJXPHiSe3gzEOseJGKOoEEfHPIIvgbhgLxEWg+jjg6Z0cGSvDJsDA/jUmi3y6uu+IQn2frg+pscspJEe8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com; spf=pass smtp.mailfrom=igalia.com; dkim=pass (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b=MoV3lcwS; arc=none smtp.client-ip=178.60.130.6
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=M9sOJCsv+Qt7j5VazMAsc8oynIYbZ+S/b5DkzAU5Kgw=; b=MoV3lcwSWiR05i1kgYWxv2O1sI
	P/iaOWa6x2q6snKct5cpBonX8HtPqsGLmAeZuj8GuQ6P40oEm+tbliA+f6IJdNfVEvAmdHTYBUx5X
	OrqaTwEMmwGRa0/Ifig8WzMekP2Ze3gnAH3b67BFcPKAHH56IuMWLSr1JnbLRL/8yeZS2sZymQSrV
	LK1LzRpbXaCSfDMvBcqQl6MhyaA7Rb2NFa6VmUFP2s2lfxSKvZq9wE0sRXFtQnZs/s89B3vk2gvYA
	K3RbBU4CorXAvxlE/mXZpR6m3MKVmrvia3pzdPNfS6KZs0xPIrETWysOe70K66JHH++jBBZvHztDi
	7umaST4A==;
Received: from [189.7.87.178] (helo=janis.local)
	by fanzine2.igalia.com with esmtpsa 
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
	id 1tuLMn-002UCS-8u; Tue, 18 Mar 2025 02:03:37 +0100
From: =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
Date: Mon, 17 Mar 2025 22:01:12 -0300
Subject: [PATCH v6 4/5] dt-bindings: gpu: v3d: Add V3D driver maintainer as
 DT maintainer
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250317-v3d-gpu-reset-fixes-v6-4-f3ee7717ed17@igalia.com>
References: <20250317-v3d-gpu-reset-fixes-v6-0-f3ee7717ed17@igalia.com>
In-Reply-To: <20250317-v3d-gpu-reset-fixes-v6-0-f3ee7717ed17@igalia.com>
To: Melissa Wen <mwen@igalia.com>, Iago Toral <itoral@igalia.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nicolas Saenz Julienne <nsaenz@kernel.org>, 
 Stefan Wahren <wahrenst@gmx.net>, 
 Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Phil Elwell <phil@raspberrypi.com>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, kernel-dev@igalia.com, 
 Emma Anholt <emma@anholt.net>, "Rob Herring (Arm)" <robh@kernel.org>, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1367; i=mcanal@igalia.com;
 h=from:subject:message-id; bh=hPv5ISZDngMDAncLcXlu5GAyBEjzEzC0JjoG0rpZ9aw=;
 b=owEBbQGS/pANAwAIAT/zDop2iPqqAcsmYgBn2MZIgl9U9eVjfd3uumdU81ygHbdKqvFHG+caU
 kSk2IPbEdSJATMEAAEIAB0WIQT45F19ARZ3Bymmd9E/8w6Kdoj6qgUCZ9jGSAAKCRA/8w6Kdoj6
 qvalB/97QpJEKrv8GN25c7cY0PQ4dWsTkf0GBh/O561xARmd9WmI9wZDOBhWQ6tqowzOMBMuAe2
 9Sx9B4vt1zqkLQoagbeeLNhdf9rC6MdwtC5joNGnkvWx5LO8GBRvgoCkw0dSOrVxRpNy2WVuUAH
 W+3Pm7kQURFLfKnv6z3qFBDl5cU8SCthSXsgRT1VHA6p+nYQJmBYVcGqxzmJLfhs08ZAATU6Nh1
 NlZ5jQOqFQiVFi378GwpUhoB4A3Fnlma5PSMipbaB/drZhVbQONigm0mcXW/BG8Jte9UzHJ2IcX
 yIscFsY9HtDrrftZcYJ7wPjvXNtJT3L17scTOUg2dRP0lmz4
X-Developer-Key: i=mcanal@igalia.com; a=openpgp;
 fpr=F8E45D7D0116770729A677D13FF30E8A7688FAAA

As established in commit 89d04995f76c ("MAINTAINERS: Drop Emma Anholt
from all M lines."), Emma is no longer active in the Linux kernel and
dropped the V3D maintainership. Therefore, remove Emma as one of the DT
maintainers and add the current V3D driver maintainer.

Acked-by: Emma Anholt <emma@anholt.net>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Maíra Canal <mcanal@igalia.com>

---

Hi,

I'd like to ask two questions:

1. Nicolas, are you still interested in maintaining this DTB?

2. Florian, would you like to step in as a co-maintainer with me?

Best Regards,
- Maíra
---
 Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
index dd2cc63c9a51da11691e4e81b225b74fbe86d709..43c6d2d7245653509c18ac7adc4d15d2baf9f08e 100644
--- a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
+++ b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Broadcom V3D GPU
 
 maintainers:
-  - Eric Anholt <eric@anholt.net>
+  - Maíra Canal <mcanal@igalia.com>
   - Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
 
 properties:

-- 
2.49.0


