Return-Path: <devicetree+bounces-271708-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6AMnOJnYqWlXGQEAu9opvQ
	(envelope-from <devicetree+bounces-271708-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 20:25:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A57E217786
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 20:25:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E9761302337B
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 19:25:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D84E3148D0;
	Thu,  5 Mar 2026 19:25:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="J+NAxxnl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1395F30FC1E
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 19:25:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772738711; cv=none; b=Y29wYmIPnVaiL6kzPBe7/YZuFy1TBddeducTnDJzJ/OHSyx/RhQ7mwgrQzIm7wdH+ZdzDy+0VECEX3hEzBEQyJXAjxvO7afIECTiKUpv2WanA9vwdSwFvZ25xNjGwQ06RS7CBz/Kj4+RSWeA3vKQgoxBMvfjAKM2Rhx6LD+1K8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772738711; c=relaxed/simple;
	bh=j/R/iwET2wgzpAYTEu3h+q1rcTJ0HRFP4ocmUyG0R6g=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=rQNHUx6fTn70vws3Vdk/ZnJ2eLPLiqWE8dY5OgZhL5KFp69i+4QmpaknsBf59SXPgO3HHu2IEpEeazcTeKNVDBwTjJkMCw1DpVUSIB7HNLbfc0bvyu/pgfdB074KdJFkoaayUOWQVCd23VMwtWRnrkHlcaS5+4r5vP5tL+z6Ks0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=J+NAxxnl; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4836e3288cdso56418135e9.0
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 11:25:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772738708; x=1773343508; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=udVO1surJnvY1exphvxwwJnv4iP2usXfpIsdzxZNz4A=;
        b=J+NAxxnlgjq48lxFPzpirtMLIG+vjzJTYMU+xUccQooBxCe9NtKMyx2YAgNCEDnabH
         OW4RHTEjkwGjTc6RPn9vaiLzqKfjiTtL2QRsHBn7lS/8yO/nimI+XMKcT7fZOuGHrY7V
         1MnH3VHMze7ky77eJ6Gw4itNbFFWZArNlm3zV9Iv4LnGnWkTuOSPaqOc5y6O4UihoXz1
         UeqS4aCf+rzg1ZA7x2hnR+O2+GlSZJhmuYOApOiwJu+DsXy5dkI5Wt7O6sy2eda7N4V4
         szKi9aOnRZmQ4vxgeA4bNUDUFXwAOfbyFt9oVtCcJXOIDIDLF2UfjfPV6QbiB84fN6dB
         u7BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772738708; x=1773343508;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=udVO1surJnvY1exphvxwwJnv4iP2usXfpIsdzxZNz4A=;
        b=etCAIUKnIVOPl7TJIwoeJaafkhS+U6QMa1V5PAgOfjCgkbeoKuQ2HDhXcDNakLBjDi
         kUxNd4eMHZ8j5gNLnorXDxblA7/b/5WPqh2IkazBDanOvwJpTL/CZGWBeIv7ONMfxVPH
         lC1mSGtzAlvjWUUG2Apkz8AkoISlcesWjjnskFn7j4RSyYxxg9N0jjwfnSBxrzk18sQ9
         rYyaSEXErNN/AtSZ+pcprgXJImU1cBVBDw77j7BeDOiVlS7NmKuKARpdUxN5ENKdjzJn
         5klCBxb8R/D/+d8GgD+xvvGkcW8m76X1YP/ALN9kLwGQfiNEUd6B/0DtpGeG5533Pv8h
         bi9w==
X-Forwarded-Encrypted: i=1; AJvYcCVX08UmkZDogT63/5/3CUY0mcy5Z8bXASQFJkI2UfwuW9W7gMLAdxoCuQ2YlkC6pNFACAeYGiTctxI4@vger.kernel.org
X-Gm-Message-State: AOJu0YxxGAYUGlrN7Aqjgg7klL2ohICkb2mp7T2uOl36rBK99YpSIxF1
	aR+Lav4x7ZoVTJ18SsSYCgyORPfX8B2XT7uTxo/LbvXDCbPRN6Fa6LD3
X-Gm-Gg: ATEYQzxurfWmS9v6lzxPW9J8UcastSkiQt4AOs2MbZOlYtuBlnwJdU6mlgnSLmPlRdk
	Yd2u/wXbAYfrJBXntTf1FXuL1YKiKSRN6V0kMr5G48y3eHnFpDO06bREFmmc8DWSxRC5hkwrhZV
	s8qhyY9sG8kBGRm13IgDWmvAM2zzxFHWATk/rTtlvhEd1YLC59aJcom21RxVCIUQDhwkCdbHNlE
	YNaCY1QCn6EfVjrquj74kyT9xND+rVJELiplMosfwgPf/1s72ESVVmvFTai1wTCmbIm+MXfzP5+
	QVsz56lDEBzRA1HxvjOknjedMLylIv14Mpf+0V6aOxj8jLkMC3CipboHhrUyHaucD4QhlFQDDH+
	GMzltCMy3bhrtsj0ZZKQA4sZjOHGM1nGXHmiyuXIPVoFuOQkv8pPiLvggdeDfu4rTJjCcl28HDm
	fGaXGQYEQ1YoYV11Ah6p4=
X-Received: by 2002:a05:600c:8b6c:b0:483:29f4:26b3 with SMTP id 5b1f17b1804b1-4851ee7b559mr62874405e9.1.1772738708010;
        Thu, 05 Mar 2026 11:25:08 -0800 (PST)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4852378dc51sm7755285e9.1.2026.03.05.11.25.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 11:25:07 -0800 (PST)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: Luca Leonardo Scorcia <l.scorcia@gmail.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: display: panel: Document the rotation property
Date: Thu,  5 Mar 2026 19:24:04 +0000
Message-ID: <20260305192405.111152-1-l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 4A57E217786
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_CC(0.00)[gmail.com,edgeble.ai,linaro.org,linux.intel.com,kernel.org,suse.de,ffwll.ch,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271708-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lscorcia@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

The Jadard jd9365da-h3 driver reads and reports to DRM the orientation
property from panel-common. Document it.

Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
---
 .../devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml   | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
index b8783eba3ddc..179401ce3aeb 100644
--- a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
+++ b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
@@ -36,6 +36,8 @@ properties:
 
   backlight: true
 
+  rotation: true
+
   port: true
 
 required:
-- 
2.43.0


