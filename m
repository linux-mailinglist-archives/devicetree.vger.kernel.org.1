Return-Path: <devicetree+bounces-269671-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mKQcKYDmo2lmRgUAu9opvQ
	(envelope-from <devicetree+bounces-269671-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 08:10:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C94B61CEBC3
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 08:10:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D1D4E302835C
	for <lists+devicetree@lfdr.de>; Sun,  1 Mar 2026 07:09:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A255A329395;
	Sun,  1 Mar 2026 07:09:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TxKpRpWI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71FE331D375
	for <devicetree@vger.kernel.org>; Sun,  1 Mar 2026 07:09:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772348984; cv=none; b=JPAsBKXHfOuBdSSEUJObncLonOC3Qt0jfyNq0f+lq6thE1YM5aNVdEpaphbKBfR48SlQelMlRUNylo22AQkm8VYXre3+O1dhxngpCfGLKPdU8XGhOGAsXHBgdzccIcaM1sUZ29W5xDaI0yuaalvAOIVi2qifz5vfNpQrSFUWXvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772348984; c=relaxed/simple;
	bh=jxayTdCNi0IC+XhUfEBb1s/LWOujVAz2Cj+gAlRcR4s=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ejCmascfou+goSZJNRnfX4NLpLoej5iiBJqTvybQ34kEgAyd0VFwVO0xyo/Ycd/qvN/Mj3DgiuhTG55ZshDgqihzIdsOdJmseMD4EoHADWjB+UIbr0oLm9hwAuxu1LlFGax10vFMyiCX2I+Zh6a/Pord1tONmr+DPEkehZjs0jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TxKpRpWI; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-2a9633ef0d6so5090365ad.0
        for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 23:09:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772348983; x=1772953783; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GpLvybH3zP5QwGN8COr44GwrATbMW2vVvdQHuhC0esM=;
        b=TxKpRpWISvb+WshcJm90hKernHLf+InScLL71bro9l1/TkAyTxwoLU0vGCKwWXqwF8
         5esuvLktBK4rf9IAQgTsxCJHA079sTI9O3SHb1ZnpDF4DFY6Qch7nE5LVGroGyUhJei1
         UHNOyPqn66M0RAC4o4dde771q/Dov7icBMuZ+Wymqj932XE1+/sdpHMtNOrj4+qWDUE/
         lZXWZP1mHlKDM+LLaWU8W0W4V7Zfj9DCMUY8Jq87bFCkT9dYBSyqmabszykTZHx3pCCo
         7CzGUV4fsef0xZAhY2qCcobC6iKzi0dv/sn/QVmI4ACfwQQKUDb7dLVy0EILk9I2ZInO
         Li/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772348983; x=1772953783;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GpLvybH3zP5QwGN8COr44GwrATbMW2vVvdQHuhC0esM=;
        b=f+TECn2eTyA27SMuD1e0ogMfEKC8PSnmpukPvv/yOVzxf2GGG4O+vYu5iwb6ahW492
         YSLLw7UD8adE8oqERjUn0Bgfui2EUX2QMvIGvPpRyPXKSoiYXVAzsevyjXAidiHEECMB
         iUcLWQSPuQPI7fG/20dUGew3r3a6i633h4PbIwvltb6/nsu6Eo5NKbDF7l99r4Hd1zBY
         S1A1Z8ZXV8663oiVKFPDLBQDZnTlQhjqoWd12BWG1YdXt2wYKv6CFX73fokwFxtu7f4v
         Ovv1U1owdVjrQ8CI8Nx0xxmyKteA9GK7rImMLcOQTLxuCruKyY6H5G51IthfAzfh9+4I
         EjaQ==
X-Forwarded-Encrypted: i=1; AJvYcCU67Mc5x1t7b0VJmaM/KWFKWm3zzT85husLyoyUKA2SGUYBZdowy+pN/VKU24UZEGIFypX3k00dbXEJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzYvhfm+fKFBDZV6bMbQ9J4qV1gBAvuHcwf9Hh3kYK3l6oWSw/9
	EQGmREr0dVPR/PimCUb3C8kdPaF/37AJpAQmquJ9NwKQEsfs6H02HDb6
X-Gm-Gg: ATEYQzxT8UtEuShzIft7EkR1PunAFq4NRXndqD+bgpMwaEs75L/pf2Y8yn/zDtcTFl7
	xqIBbaiTYWZrZ8jIQpbcMXN1ApRuPfLL4fP+2tHNRBjuTi+zHoGMsJ3o0q9Mplp0jI6+MGU81Uw
	4hlOQcscadeWf5ndzUFJqQtEyBip9tFtv63d07hdL0abhSquAs97fjqn9Xy8PS9y0+l1f5oPEsi
	jNTzDiTM9njsBMVHSOdfkMhBo/C3maMX2kGQ6xp/leUyXqu8tpP6pn0FTkCkY76+ZePH/NtM9EW
	eyDKHnjW5Lu60TTAX9s5hjKcG22Tt+eA327Mv4b3ApUqru5K1sTVDklc8DR/6q3G+yecQLgsYFO
	a39SBq21BWRdlcaCOfvXnU5E7JC2MevQ9M1UMW+sRsOnzzAMKnpfyCClqBkCmQYcr7u84tBHcQG
	SZAMAbHqmxDxNv27Er77TMp5rIh220q3TKhcZm3zCX5G3O
X-Received: by 2002:a17:90b:528a:b0:356:22ef:57aa with SMTP id 98e67ed59e1d1-35965c2437fmr5250235a91.2.1772348982817;
        Sat, 28 Feb 2026 23:09:42 -0800 (PST)
Received: from localhost.localdomain ([240e:400:9c28:18f2:532a:7136:9478:4b8a])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359814e3eb4sm2473463a91.16.2026.02.28.23.09.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Feb 2026 23:09:42 -0800 (PST)
From: Xueyuan Chen <xueyuan.chen21@gmail.com>
To: Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Peter Chen <peter.chen@cixtech.com>,
	Fugang Duan <fugang.duan@cixtech.com>
Cc: Gary Yang <gary.yang@cixtech.com>,
	CIX Linux Kernel Upstream Group <cix-kernel-upstream@cixtech.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Xueyuan Chen <xueyuan.chen21@gmail.com>
Subject: [PATCH v4 3/3] arm64: dts: cix: add src syscon nodes for sky1 resets
Date: Sun,  1 Mar 2026 15:09:10 +0800
Message-Id: <20260301070910.6169-4-xueyuan.chen21@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20260301070910.6169-1-xueyuan.chen21@gmail.com>
References: <20260301070910.6169-1-xueyuan.chen21@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269671-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[cixtech.com,vger.kernel.org,lists.infradead.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_NEQ_ENVFROM(0.00)[xueyuanchen21@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.244.36.0:email,0.63.122.0:email];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cixtech.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.244.63.88:email,0.63.161.16:email,0.62.143.160:email]
X-Rspamd-Queue-Id: C94B61CEBC3
X-Rspamd-Action: no action

Add the SRC blocks for the CIX Sky1 SoC. These blocks
provide reset capabilities to various peripherals across
the S0 and S5 domain.

Signed-off-by: Gary Yang <gary.yang@cixtech.com>
[Xueyuan Chen: Refactored to pure syscon nodes to fix v3 review issues]
Signed-off-by: Xueyuan Chen <xueyuan.chen21@gmail.com>
---
 arch/arm64/boot/dts/cix/sky1.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/cix/sky1.dtsi b/arch/arm64/boot/dts/cix/sky1.dtsi
index fb8c826bbc97..6ad5dc368a66 100644
--- a/arch/arm64/boot/dts/cix/sky1.dtsi
+++ b/arch/arm64/boot/dts/cix/sky1.dtsi
@@ -348,6 +348,12 @@ i3c1: i3c@4100000 {
 			status = "disabled";
 		};
 
+		src_fch: reset-controller@4160000 {
+			compatible = "cix,sky1-src-fch", "syscon";
+			reg = <0x0 0x04160000 0x0 0x90>;
+			#reset-cells = <1>;
+		};
+
 		iomuxc: pinctrl@4170000 {
 			compatible = "cix,sky1-pinctrl";
 			reg = <0x0 0x04170000 0x0 0x1000>;
@@ -568,6 +574,12 @@ ppi_partition1: interrupt-partition-1 {
 			};
 		};
 
+		src_s5: reset-controller@16000000 {
+			compatible = "cix,sky1-src-s5", "syscon";
+			reg = <0x0 0x16000000 0x0 0x1000>;
+			#reset-cells = <1>;
+		};
+
 		iomuxc_s5: pinctrl@16007000 {
 			compatible = "cix,sky1-pinctrl-s5";
 			reg = <0x0 0x16007000 0x0 0x1000>;
-- 
2.43.0


