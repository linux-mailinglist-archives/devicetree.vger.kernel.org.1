Return-Path: <devicetree+bounces-304410-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qPhPAGi7GWqoyggAu9opvQ
	(envelope-from <devicetree+bounces-304410-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 18:14:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F13F9605603
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 18:14:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 741E9301A2F6
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 15:58:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73FEE3F4DD3;
	Fri, 29 May 2026 15:56:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="Iye5K/0D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF5EC3F4DF1
	for <devicetree@vger.kernel.org>; Fri, 29 May 2026 15:56:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780070176; cv=none; b=hE5CFPJ+jZj+Ysc45BTE6FOgohFfCAeqqHqiRNS7syRnqDJyU9UTIrFI7eFTkxjo/DNG5pFnVzXVXD8y3iKmZYPFHgFkPggv2Jb65lqmxJPASFcKOBcgOaQku8bO9ubSWIrCQXJUTJFNWGDaKvldanY7cFp5K2v93mHwYSLCUvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780070176; c=relaxed/simple;
	bh=PqJTyAM76dPh91rM1EBFSRkgJv7U1lhIPE64WmIlskI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=KDfEGWljvnb8773AUv7VPY/OOhZILW9knPCYHna052Ygehi+Q6ML3C29arGDhAK5CdoNS3IBKk4UFWyiG/a8jck5C1lEuDhjBUcN1TTtc4FvxfsHD6U5TGnXJdW7fgZ5s+ZXavT4Kfz0eS550LJW9UIUdPUebR1+R2z44p+MWSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=Iye5K/0D; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-49042aeeb75so95482475e9.1
        for <devicetree@vger.kernel.org>; Fri, 29 May 2026 08:56:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1780070172; x=1780674972; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LnHNg9n0JGZsDydxLfv4khIj43e63eeZtcUcMwaZSDY=;
        b=Iye5K/0DJdGn9pt+rECmPXEZEjsfJgNWt0WntmfGm0r+GEdBk9CWJt2cdVEjaXbMT4
         jH0OZPi7WiiN5Q+WFH30jJkqUbx2S/f211639pfJU8DkmV0YbUiyjZtV9PReMPinCitz
         ImfIXOGVQ6UxqpmyKx4GnBYIIYW1LQ4OZOS0g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780070172; x=1780674972;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LnHNg9n0JGZsDydxLfv4khIj43e63eeZtcUcMwaZSDY=;
        b=aSy2tyrcLWPmplkeTySHp9dtUEa/a0fZvabsGUMjzvwulJ/3cgmbkZWjL/sMJVSb0H
         5mXhKt7ZKdqULimdwMPFIRf0tMI5MqXXrztsKHv+HHm+kE9AJoGlrApSqBJ6HLfYrH9+
         j2OAUZJtOMUri6FcGBCQRGcpYyJ3VE6AHcn6Za9PAjH4YQkP1qHVFPIO+RWCCqPA0MgH
         0IOK176hQzYRZ9b2RpIaYnVvyMgav0lLHvwlUoFnw/KN1saBbcc/oKQEoU6aC7tSbC7h
         yPaSlevP4mXxZgALGba0j2Zp1nr5GX7B/vxvmRqHpNnGUTcQcc+KJYM9oizv/czpKgGG
         0Few==
X-Forwarded-Encrypted: i=1; AFNElJ+L3HJuf9kbqwhrOM5N0COEOjRr0tVjy2XvkcSE6U8X9TYb2S5zIpa+elSH5jKT5snQmCwOeMvpSUpN@vger.kernel.org
X-Gm-Message-State: AOJu0Yzn6+nsvzpEzQfBjZWe26MzL+LLExtpNtmm6/4N55fzZN/an1pZ
	iLmRneIZpde2odMbOFrsmmer2xq2oHWxxrE2l+/y+oJ+w/VFZkatbsyHSJI420fx6ZY=
X-Gm-Gg: Acq92OHMZZ0Zv782RtpOcQxLKyzwArIFIngNPgugNtCptWiDdH6Q4WaJe7skdqMtFba
	YtmVz1N7R+J9iHf0Acy9gQs8G8zRAU32v1cdv8Z7uR5M5ZRB+d8BtuVPA9xAkpLfX775YJdhoFP
	bIeKaKFljPnPlBCXkOAwKVg7etKe17RM0DTr9517cfmvx3eY7suy+IwQka7lvBrYyVlM8Wg2Lwg
	gGitNzReYgthaOHmC4BgSlAp8nbuNJnjSUWVQNA861Ggs8AOEUz+DLM2mkk7I1+ihdCxXtvb+bv
	phbtKh1pz+5mkVG7tchGwy/nn3lZ8JcamChjjyE+ehfvQF9nN1qwK8iLlDvEJk0YcAuqD1C9sRZ
	P8TOyS5oTvgP9FrVnfuTa3iQw5AxOD4fYGkUlUMWJTJ9mKvMRpstotKUkP3e07TlvJ4//6YOIjh
	oTGJXy06KhMyaBuEIrX46X+dTqnvUMJjLyvSQl7CxjK3JDo+Cl8lFNGdXj5Md2m0XDwzxDfLcor
	htNzTCv5CWY2UJyXLgA1FU7OgMcItrAEl3D6JpjkDt43lMoarpvLDQzopB38WAtv1zg8Q==
X-Received: by 2002:a05:600c:8a0d:20b0:48a:906b:14ca with SMTP id 5b1f17b1804b1-490a293dcaamr2867795e9.20.1780070172253;
        Fri, 29 May 2026 08:56:12 -0700 (PDT)
Received: from dario-ThinkPad-P14s-Gen-5.amarulasolutions.com ([2.196.43.161])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45ef354c682sm4114680f8f.23.2026.05.29.08.56.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 May 2026 08:56:11 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	michael@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH] arm64: dts: st: add power-domains to sdmmc1 on stm32mp251
Date: Fri, 29 May 2026 17:55:50 +0200
Message-ID: <20260529155607.3948045-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[amarulasolutions.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[amarulasolutions.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[amarulasolutions.com,foss.st.com,kernel.org,gmail.com,vger.kernel.org,lists.infradead.org,st-md-mailman.stormreply.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-304410-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dario.binacchi@amarulasolutions.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[amarulasolutions.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[2.223.199.96:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,amarulasolutions.com:email,amarulasolutions.com:mid,amarulasolutions.com:dkim]
X-Rspamd-Queue-Id: F13F9605603
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The sdmmc1 node was introduced early in the SoC bring-up before power
domains were systematically mapped. Add the missing power-domains
property to align it with the rest of the peripheral nodes.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

 arch/arm64/boot/dts/st/stm32mp251.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/st/stm32mp251.dtsi b/arch/arm64/boot/dts/st/stm32mp251.dtsi
index 673fbc5632e6..b3416c928c08 100644
--- a/arch/arm64/boot/dts/st/stm32mp251.dtsi
+++ b/arch/arm64/boot/dts/st/stm32mp251.dtsi
@@ -1664,6 +1664,7 @@ sdmmc1: mmc@48220000 {
 				cap-mmc-highspeed;
 				max-frequency = <120000000>;
 				access-controllers = <&rifsc 76>;
+				power-domains = <&CLUSTER_PD>;
 				status = "disabled";
 			};
 
-- 
2.43.0

base-commit: 8fde5d1d47f69db6082dfa34500c27f8485389a5
branch: stm32mp251-sdmmc1-power-domains

