Return-Path: <devicetree+bounces-156630-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF63A5CD9D
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 19:15:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2A2323BB59A
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 18:14:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06240263883;
	Tue, 11 Mar 2025 18:14:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b="iwIXMwU2"
X-Original-To: devicetree@vger.kernel.org
Received: from fanzine2.igalia.com (fanzine.igalia.com [178.60.130.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C998262D38
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 18:14:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.60.130.6
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741716891; cv=none; b=EBMTjn+8U9kA93/MyjrivJBwyszPg4bY4jSIrgwPAT7Ma611cWMdZ6Eljg8ZYv2uxIQN8KObOLU9gbH/DVseGJ5LpA2O/QJFWqkDghIns6QXGfwsjzFpEf/ezWDXmkyEUlV/MtiOgXdsO9mReqV10kjCffZAgmsKYbmP+SqIsVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741716891; c=relaxed/simple;
	bh=IgswhJeGUCpn63w4wEQWBrPTgIx/PwHZlZGaseENbg0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=M6IGMxNXzBc7dGvqh9/apieAh8alzjsRvwrft5XDJ5+XmdEd/LuEbfB65LSXryo1G9D506irDBzmKSma68G+0IjhmnC01k92zDipT1+iHJWjb450DiOR4CZcaTaQzeAExEafID786tyByny+FLeF0TP4LDSDmXPkNjSzdawMLRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com; spf=pass smtp.mailfrom=igalia.com; dkim=pass (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b=iwIXMwU2; arc=none smtp.client-ip=178.60.130.6
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=wHfm+dDO395R2eG8WU/d9U717WWZTtw7JHQg5xw8yFQ=; b=iwIXMwU2HIpji2Mgb/YGMOSbGP
	2T3DBO7zED0tqZGPJIRt8jly4jLODlx15iPSE/llFfixj8b1W7hG1cYI2FtlX3dBVYY1xjv9Q7SKl
	lYmz/ALN+zwad/vGWYTqWz3K2ZZg533+fZ919i1OhFQZObu1eQQF5sxNxH2QsgYdlwIgpFaMrkJyI
	/CMKm26KiLjO5L+arnkhaR8HAxcdDFCTP641JHeyrBEztCJlz/undhos9Co86uj0kuZmmYh26PRXA
	1XkgQITdsUsXFjX6xYXtj4SwjURckcfhgYuVFgZbmzZqUIo8fTRjV4Mlyw2QW2BPqeLwXvXu2oB5x
	TemTT+zg==;
Received: from [189.7.87.170] (helo=janis.local)
	by fanzine2.igalia.com with esmtpsa 
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
	id 1ts47i-007Dal-S0; Tue, 11 Mar 2025 19:14:44 +0100
From: =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
Date: Tue, 11 Mar 2025 15:13:49 -0300
Subject: [PATCH v3 7/7] dt-bindings: gpu: Add V3D driver maintainer as DT
 maintainer
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250311-v3d-gpu-reset-fixes-v3-7-64f7a4247ec0@igalia.com>
References: <20250311-v3d-gpu-reset-fixes-v3-0-64f7a4247ec0@igalia.com>
In-Reply-To: <20250311-v3d-gpu-reset-fixes-v3-0-64f7a4247ec0@igalia.com>
To: Melissa Wen <mwen@igalia.com>, Iago Toral <itoral@igalia.com>, 
 Jose Maria Casanova Crespo <jmcasanova@igalia.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nicolas Saenz Julienne <nsaenz@kernel.org>
Cc: Phil Elwell <phil@raspberrypi.com>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, kernel-dev@igalia.com, 
 Emma Anholt <emma@anholt.net>, "Rob Herring (Arm)" <robh@kernel.org>, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1160; i=mcanal@igalia.com;
 h=from:subject:message-id; bh=IgswhJeGUCpn63w4wEQWBrPTgIx/PwHZlZGaseENbg0=;
 b=owEBbQGS/pANAwAIAT/zDop2iPqqAcsmYgBn0H12DUQfcuNsBJwPrP/IZEJnVmqx143UoS+L9
 JIGrVuYgk2JATMEAAEIAB0WIQT45F19ARZ3Bymmd9E/8w6Kdoj6qgUCZ9B9dgAKCRA/8w6Kdoj6
 qrhYCAC6Cub2Zd9xeoNAa6XtKNw0MiPmmlYujFly+c+ODzzbsHGiueegnWus44ghow+w31bOKFi
 Bihm1CPDPhF2Lw0Xnz7JzXu2hNyp8zBEv0/4CNXji+GrNRv7BT3teF1bY0Ma/wOou6AiJZ0Ad/b
 USLngj3N1svqEbcweXYu6xnwrj5Lf6h0WiSm5UeqECaN/ekYAE/ARGoQ1yzLY16stZ6Jr1oiCKb
 ijTNTcfFz8++B4BWqdcMELn0+AL5D0Gk5I70Hm1SAGg4wT+WsZRHK1rPnt500mPPX9CFtJFHooA
 dAPihYsSxtL/krxvLjsaqvpjmlt9iFnOzDd9pxzGJYWmkUW0
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
 Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
index 7349347da1c0034a8849deaa6d64dde6d9d5a81a..95cc459e805b41359e14e1e081904f1c831adf90 100644
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


