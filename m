Return-Path: <devicetree+bounces-264814-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UHLJAEbTjGm+tgAAu9opvQ
	(envelope-from <devicetree+bounces-264814-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 20:06:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4174A127050
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 20:06:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8E270301DEC2
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 19:06:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF746353ED8;
	Wed, 11 Feb 2026 19:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="N3ECsavL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA09346ADC
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 19:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770836794; cv=none; b=ER4Mv4te9XxVD51D6mk8nHl2lX4+ZDkEZu7OB4wsERzfn5z9CUMespze+R3B7Cl8ddNsBjjSGOgIw7deeCEe/7fpKXAC5xBRnI1ducszu+1xSXzuEHw8BbHKlHBMFPFNdPdE+VyZE9Eqa6+7vWL5X4V7XsDnpDilvrO1q72TbfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770836794; c=relaxed/simple;
	bh=t9e5Q0EmJeb3lcaKTiFAO7Gmn2UWzlxx3/mNI4p+z8I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LZjd3B8oUigTUT5GbaTvKbuIJXf6Rfsz+DTCq09YUq/QCuJUEP77Ef7I5fg3TKFtdJ0ykHP4JDyLTC3E0H7DOOw+mOTS3TGHD5RP36Ul2Js/Nd6wYEMpwkr48p+WghPnsxRZuFpgy3WQV8kgFycvo2IZWkGyYtHfcjSCaVQ7d8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=N3ECsavL; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-436309f1ad7so3920586f8f.3
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 11:06:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770836791; x=1771441591; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JMI81tlEGd5ZFeGN2V0v4Psax4OyjBHj6wkzJgwxN1c=;
        b=N3ECsavLXQ6Wh4lbAdwKVZvl/8pTOCtuD7uj1eN3axhEUgRafRESr1lB4ss9BxzUGR
         85dA0lIpMAHUelkNSgnxOgkhu9ovVmzIaS/QTlOJgpOEQp688AkWuHwctnJL2IQE/rjt
         gKi5d22Yon9zCQIxhhrgP2Sw2K0vdTrpu90kOBB4OB68pAazfU3PxaAnAYa93XY7YMpr
         lnovnZ2ruB8Bz5HwwI6Bf2pt1+BGcNrIF4E+9KjopHAxnnEFt2Gv/ENLEC6cDp0eNNe7
         t7CgyhZYqFM/1QUEyD7WTsSHQ1QYg2Ss6RlrtNsKQ5/HRJUEUAxmXqzdBULO24NUZt3M
         Biqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770836791; x=1771441591;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JMI81tlEGd5ZFeGN2V0v4Psax4OyjBHj6wkzJgwxN1c=;
        b=JgB6e3PSVCeNlek7QTuxsVq9VUMyzjcvaT6CNNJRhABPRvfMJsXVD7Um3LKCvPXkRh
         gcUcyUQzM1tUTMpGSvEhnMxvRo6pbBzqgQJcasJFPmantDcxrnI7XfpqBoZZBd7Aw4Dv
         1bK0nFVGRD5D2rpriJ6xlpOqbuud6s1oPGBP1Ae+4PEpQJpj3UnlezuG35/RIzq+itWY
         eodszV03vPNume00DSvI8CxJRutfxELXhXqCMr6ZGgCZHixiWhS0ULRMGFlHZFl5BDwO
         PkB/+GUiHiIbCgNqe8rYpjHmvlPRhcmgF54hfaJNwzsRwsn75XW7KtI87xck98dYuf5S
         3aXg==
X-Forwarded-Encrypted: i=1; AJvYcCV7aZ4UCMH+oDvb/n/yUIydmSVMek5ethUbNC4dqtcW6RgJ1spr7WLo2fSfuF7FYTArpiYnvEQVH62t@vger.kernel.org
X-Gm-Message-State: AOJu0YzY+BmSOmuOcndjEYsgBt7DhAmIRS/H+S+8r3OpsA4ISUcGsUyC
	vB6RzJYGNzTLMbj6YInuVnrIlYRaHev4P7eZC1Kk7uTagMeekOFOptg2
X-Gm-Gg: AZuq6aIYvQLjPKjXeou8UsrGtakOGngbDSaatH/j0zTDFmu/UHv1oqTRxqEg9GUENa9
	WzGisIVqOJfxuA0G6ujcqzgQW+Gg3hZfKDOFUvBuw6LZrjElr00sE/LTFAzFXOvYFZYGZfKIZx4
	pHQ60ccxQGoWeB7de1pObDtM9AoJJPHYAQqU2jTlWiaQU0lncwb7HFyZzZX5MoZjZz2eFEYlJ69
	hhhGC5YqiDLbotdJaOCzWNgzGyDng/7td6YYXMmhwTN0PBUUdPdSyjCY6taMh9SXSW3BYvK9M38
	UCUXwdLDQJUx/lncjwQO7zfKZyjige0qZ47gB2U2fxkrj0H8iu/FstACIChEf1dIfxQNrHHOjB5
	x2r8lPMAgRFC9gKIOuuaBQH/wRL7Ng18BZ+ogoPMA1jEboT1z8mtfSy3VtP6wmjRU6KPN/ac7/K
	EkO/7+yKLmDHEqfYW64pQ=
X-Received: by 2002:a05:6000:2209:b0:436:3707:2be6 with SMTP id ffacd0b85a97d-4378ad60397mr789319f8f.53.1770836791489;
        Wed, 11 Feb 2026 11:06:31 -0800 (PST)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4378e122df9sm211223f8f.15.2026.02.11.11.06.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 11:06:31 -0800 (PST)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: linux-mediatek@lists.infradead.org
Cc: Luca Leonardo Scorcia <l.scorcia@gmail.com>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 5/7] arm64: dts: mt8167: Add a specific watchdog dts node
Date: Wed, 11 Feb 2026 19:03:26 +0000
Message-ID: <228e74cc870ac01b223875e2a0dd7effa4137213.1770836190.git.l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1770836189.git.l.scorcia@gmail.com>
References: <cover.1770836189.git.l.scorcia@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[gmail.com,linux-watchdog.org,roeck-us.net,kernel.org,collabora.com,pengutronix.de,vger.kernel.org,lists.infradead.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264814-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lscorcia@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_PROHIBIT(0.00)[0.152.177.216:email];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.152.173.240:email,0.152.220.208:email]
X-Rspamd-Queue-Id: 4174A127050
X-Rspamd-Action: no action

The watchdog driver for mt8167 relies on DT data, so the fallback
compatible mt8516 won't work, need to update watchdog device node
to sync with watchdog dt-binding document.

Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
---
 arch/arm64/boot/dts/mediatek/mt8167.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8167.dtsi b/arch/arm64/boot/dts/mediatek/mt8167.dtsi
index fd17daa13dba..caf51f203dd3 100644
--- a/arch/arm64/boot/dts/mediatek/mt8167.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8167.dtsi
@@ -48,6 +48,13 @@ apmixedsys: apmixedsys@10018000 {
 			#clock-cells = <1>;
 		};
 
+		watchdog@10007000 {
+			compatible = "mediatek,mt8167-wdt";
+			reg = <0 0x10007000 0 0x1000>;
+			interrupts = <GIC_SPI 198 IRQ_TYPE_LEVEL_LOW>;
+			#reset-cells = <1>;
+		};
+
 		scpsys: syscon@10006000 {
 			compatible = "mediatek,mt8167-scpsys", "syscon", "simple-mfd";
 			reg = <0 0x10006000 0 0x1000>;
-- 
2.43.0


