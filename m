Return-Path: <devicetree+bounces-151719-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C5A9A46BDB
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 21:05:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 398E73B240F
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 20:05:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 903D7262D2B;
	Wed, 26 Feb 2025 20:00:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b="I7DlS1a8"
X-Original-To: devicetree@vger.kernel.org
Received: from fanzine2.igalia.com (fanzine.igalia.com [178.60.130.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 861F02571A9
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 19:59:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.60.130.6
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740600003; cv=none; b=gbhIIIzg7i2pqsyDOu/Hmid70p+zKZ1QVHe9Bd84EBbusyIqfJkRy0HkXnoHBMntuhnQZYhZmVlsH2aAAtS90RqxYypRxc1jr4zWX1m5szeAJH3zCxq8O25wrEvUFRT/FKXEC9VBhOngVHD+nGQCLkour4yG5+5vmIvguon7qec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740600003; c=relaxed/simple;
	bh=57fWKRv9+K7Vas+bEJyhapzSfgJcdRPGqr3tqBM82Zg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dsJFGowA4Bz1Lx1L62sO/OLt+ExWgJUu+Rvo0TUzqlI2Ti8bQ/xol+ZGK+WtqZ5lS89f46Rip86/dtZXvn/QPfc6C1x0R/Dq5X0zvvzC08ewkC9vdXTMsa5N5Jn94A3sDvNVND7x+Nfa8Mb2NEWYU5r4n2U/9T9M6Y8cNTNfHQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com; spf=pass smtp.mailfrom=igalia.com; dkim=pass (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b=I7DlS1a8; arc=none smtp.client-ip=178.60.130.6
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=LvPGDinM9llCj5p+swf8NoBLMbWfKeVJmHFC+xY+KCQ=; b=I7DlS1a8Ljk4cqnWHdy0chjoof
	+qabQH12tHezk0j3/hjXDXlIhXa2vWbnfkeksAa22hlJDQPv57pg6nGOlV6QSR5xqEGgH8+v172qE
	SfuNg1PBr/CjjlrWIsjr6706LBelz2QtxcY5QCLd1OLyfRhkyZDV/NFGeqsDUYlN3dvPerdKAWauE
	1HjuTMLHYhgDXZTvFdKVMZ0klbV1e3uQJ1/PoeN4bpOtnAJYEIZws8T8W6tQWX6cR6m0tETyCrTcl
	Cuepn87wjmQs6SMyMpwaEfoLocv3BsRe4N56+6C79QKMijb8hMSXfHBHAfUKbPbHCw0xe609r9AJh
	aPJrSxnA==;
Received: from [187.36.213.55] (helo=1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.ip6.arpa)
	by fanzine2.igalia.com with esmtpsa 
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
	id 1tnNZI-0019lA-MI; Wed, 26 Feb 2025 20:59:50 +0100
From: =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
Date: Wed, 26 Feb 2025 16:59:04 -0300
Subject: [PATCH 6/6] dt-bindings: gpu: Add V3D driver maintainer as DT
 maintainer
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250226-v3d-gpu-reset-fixes-v1-6-83a969fdd9c1@igalia.com>
References: <20250226-v3d-gpu-reset-fixes-v1-0-83a969fdd9c1@igalia.com>
In-Reply-To: <20250226-v3d-gpu-reset-fixes-v1-0-83a969fdd9c1@igalia.com>
To: Melissa Wen <mwen@igalia.com>, Iago Toral <itoral@igalia.com>, 
 Jose Maria Casanova Crespo <jmcasanova@igalia.com>
Cc: dri-devel@lists.freedesktop.org, kernel-dev@igalia.com, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nicolas Saenz Julienne <nsaenz@kernel.org>, devicetree@vger.kernel.org, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1238; i=mcanal@igalia.com;
 h=from:subject:message-id; bh=57fWKRv9+K7Vas+bEJyhapzSfgJcdRPGqr3tqBM82Zg=;
 b=owEBbQGS/pANAwAIAT/zDop2iPqqAcsmYgBnv3KgEVanEDW/Nd/cRsQoEfYNCfMZBzusBsdpj
 XC/1uwLx6+JATMEAAEIAB0WIQT45F19ARZ3Bymmd9E/8w6Kdoj6qgUCZ79yoAAKCRA/8w6Kdoj6
 qmUoB/0bN+M6JtKkdudMiF3Pd2DFa44dcovElPqf5apNG8YcLrPSlEa8b54nibgNrKMpwhvOzsS
 fE6UloG4dk+xVndJCogoJwreQbBk9D8BaVD22qrGG/UZ1OyrQaaDDzj00nLOn6J4BWROagvsJAP
 MnJtySZR+ZO9nxX5iw5v9JsNbafrCTbqgKsILA3kjwoG5jocVXP+6zEgCiBLyqeybDaPH0jKVTT
 EZe3BLEzd8Wggu1+ClCLYYWpB2c/+gPjeafB+6OJBrAtRhsyUmNZAqdiGmMm7w8YU9CUozkRwcx
 +0dpDtZiK8ZwbZqf4Cs8v9RblLdWKxjnun44uE0MhPMUp77o
X-Developer-Key: i=mcanal@igalia.com; a=openpgp;
 fpr=F8E45D7D0116770729A677D13FF30E8A7688FAAA

As established in commit 89d04995f76c ("MAINTAINERS: Drop Emma Anholt
from all M lines."), Emma is no longer active in the Linux kernel and
dropped the V3D maintainership. Therefore, remove Emma as one of the DT
maintainers and add the current V3D driver maintainer.

Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Nicolas Saenz Julienne <nsaenz@kernel.org>
Cc: devicetree@vger.kernel.org
Signed-off-by: Maíra Canal <mcanal@igalia.com>
---
 Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
index 8a3d3fc6065d7756da141bda4dc522f63be5e9a1..13eaa1a40485153eea0e5d4bb164009d1030e314 100644
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
Git-154)


