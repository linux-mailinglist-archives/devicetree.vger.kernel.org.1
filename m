Return-Path: <devicetree+bounces-305273-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CKK8FnO2HWrKdAkAu9opvQ
	(envelope-from <devicetree+bounces-305273-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 18:42:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A81E0622BE1
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 18:42:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 276153062957
	for <lists+devicetree@lfdr.de>; Mon,  1 Jun 2026 16:32:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C5942FF66B;
	Mon,  1 Jun 2026 16:32:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WAyBt+zq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A55F82EA72A
	for <devicetree@vger.kernel.org>; Mon,  1 Jun 2026 16:32:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780331529; cv=none; b=WP1ns+cfQVtZ6BeHCsQ8sYXDgUN4HcKzIwH3byfolW3enibxG3Q6/XHu/S2mfIDwILdWhRKmK6tPIOobGz2LNGXUk8kf+a10o8Pw3D6BvrXL4N5X1j0ZvwZiGlns0BmVH+OtLqp8zXedjxmh2119zADFQzxfzqaKxaBXNiav7Ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780331529; c=relaxed/simple;
	bh=dQnacLOtfh1x/EVTAVwP8evevCXXsKE9KJDE9DiR4UA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sA0HDC/Aia+2DMTYvkdA+oAAb4xi6V7V9T3hz7d6+46WCkZa6II2w8YTyX/bFlRUGWKl7JJwS0TNJfD0MaLVhISx5lmPr6NogSmuf9J6PY0Cdoxjn+MoO4XLA9a1pNqDMDpRYZE+k3llaUdxpsfsk9UxDix1PcMn241I1x7zYk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WAyBt+zq; arc=none smtp.client-ip=209.85.210.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-7e6b552ac99so906174a34.0
        for <devicetree@vger.kernel.org>; Mon, 01 Jun 2026 09:32:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780331526; x=1780936326; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kgs1gTYKZ+euqFobW4W1LJ9utvsV9nn5CKlGcDBeRcM=;
        b=WAyBt+zqTX30SPYIIMbA82EYgdLfnLt6HG2mP9M5UzkOa65Ked/HmqhJsAdq5YjgrQ
         JhBrXYY1FsrRhVXWnx/dtp2M23rf45uUvRhC2audd3OjV0gJNmhZ0H9z3ty2v0BJonTD
         c8uf31yJ/9AWwkXCPzmDbeYV2K+DLFIuggP3rBCfYsp+rGNzxk8LvTlBbCvxXICITt6x
         A6BMPyBD+XTTFibjv4Kn7BKQm+ArYzpWsXaJOT0G2AgF0shqwb7q+kgzo2LMbam9O30z
         2faM8V60Pb1ycydFQGQt5L6UWXLHHsBhg5naXZxuNV5L7WQdF1a1nrenGmPsbgOJXPd1
         +whA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780331526; x=1780936326;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kgs1gTYKZ+euqFobW4W1LJ9utvsV9nn5CKlGcDBeRcM=;
        b=qX2i6DSaWCiyT9bnRH51iiw4Txh/OZXmW//t1cPFc5gptm0BoeRLkiLyVkAhRsF2AJ
         T54TOUDe21P5FmbVUltNeKD62zpJ4CdH2ZZ3/+j7FRZGhUDLQOg7HgXE77/mGRiNCfiW
         wgIPhgFA+becArFkGWGqNVM4zM0GmA/wNrwicQlppo6yO+IjqE+Y/sLTTcN3afJBR75U
         C3KykyD0BEb02jlMbvRFQI8WBLbcUHne2muSKcRO5aj/vxD/3CmioX6dFPJNXxvloeXs
         xGl5mSU/ko/3/WXCt5buT5n1LySrODmIp52YMu9bRF4wgc7BbitNzlyEIvrkSwTCdnNR
         7dcA==
X-Gm-Message-State: AOJu0Yzz97KUEIKx35hVUXdhhd0rFXQOX4vamnZorF1LoHk0pXPV3yGg
	e48HWv5hPReG9RdQAUt/9SotJW7o0MfhR2f+0oX+FkxFdLGfL3UZR9OT
X-Gm-Gg: Acq92OF3iO6CAHc6th55MYm7dg5LQT7xhBvEqqtVmED5Os3ISn8n4lfcGK5WtojDDJm
	h52sCYkJhRt8hFRxbbw+bI2F1qY+EtK/T5Px170mobtTvfLoUlFTCOKaKh9A9IfCw75HWipdAqC
	ZGcMlZOuCi+5tPbu1q0u19q8tJKpupeLP5xJ35QB7ZJVppzJs1xjSV4DgPY0ioVlfMVCDCZ/Prm
	0dnBpYBSziDEHbZMz89bdxIXBIGcGlaIbD8czU23HLYVuGqQHbC7audBzAcezS9ZFJCfbJ1f5oQ
	gjg+GQ+7HQc9ndxfEtBIo+wNpX6Bag0IsiHusPTlLRQz+JsBGerkepE0u7iMNjJU26zyY3Lazgr
	9I5ul6J4Np5YAsaLTUwYJV4rZ7XrIOVDYdgcqluM98gpm6pu0Stld+BVlqU6coNitM6+ByuFgPv
	g+8rzBOnYUzR5S+GudMP179KIxz/5/1zE=
X-Received: by 2002:a05:6830:90e:b0:7dc:dd58:50b8 with SMTP id 46e09a7af769-7e6a1daa0bfmr7330820a34.13.1780331526494;
        Mon, 01 Jun 2026 09:32:06 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7e695d69b20sm8024928a34.22.2026.06.01.09.32.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jun 2026 09:32:06 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	xsf@rock-chips.com,
	sre@kernel.org,
	simona@ffwll.ch,
	airlied@gmail.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	jesszhan0024@gmail.com,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH V3 5/6] dt-bindings: arm: rockchip: Add Anbernic RG Vita-Pro
Date: Mon,  1 Jun 2026 11:29:50 -0500
Message-ID: <20260601162951.254968-6-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260601162951.254968-1-macroalpha82@gmail.com>
References: <20260601162951.254968-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,rock-chips.com,kernel.org,ffwll.ch,gmail.com,suse.de,linux.intel.com,linaro.org,sntech.de,hotmail.com,oss.qualcomm.com];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	TAGGED_FROM(0.00)[bounces-305273-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[macroalpha82@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: A81E0622BE1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Chris Morgan <macromorgan@hotmail.com>

Add compatible string for the Anbernic RG Vita-Pro.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1a9dde18626d..b8babe9d3a26 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -66,6 +66,12 @@ properties:
               - anbernic,rg-ds
           - const: rockchip,rk3568
 
+      - description: Anbernic RK3576 Handheld Gaming Console
+        items:
+          - enum:
+              - anbernic,rg-vita-pro
+          - const: rockchip,rk3576
+
       - description: Ariaboard Photonicat
         items:
           - const: ariaboard,photonicat
-- 
2.43.0


