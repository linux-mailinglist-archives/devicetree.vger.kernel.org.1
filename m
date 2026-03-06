Return-Path: <devicetree+bounces-272301-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2JMkKeINq2nmZgEAu9opvQ
	(envelope-from <devicetree+bounces-272301-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 18:24:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 250E42260A9
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 18:24:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 265CD30B00F4
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 17:21:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E64E423A8B;
	Fri,  6 Mar 2026 17:19:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F301C423A68
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 17:19:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772817591; cv=none; b=gXBMemi/Zfw6iTYtMUxuTOggXDhLDiySCod61icx6gKbWRMtAjjaQ19md0AqzSbZdgKRaFHftkLOlEpgqkH2WbJxBMr2R7p7+Om0exlPHYdv9Y/Nqs6swwdv2Px/+TRazs/5/6jSdTOVoC1elL80zGTsvZOzN5+qFtLkiTPHIFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772817591; c=relaxed/simple;
	bh=iCzJFmTN98QeaoEmbxiOUN+31uYiKr8AnJg4070rhNM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Vk2GiJQIT2fuvn1TRvfRxPtZNPoWSlV2fEUqP+rUyatS8XqAj8kL8+/yuXhqIGeLcQgM7QNkzD4UhO1zBAuGg8pwV3mmAot7QF7zJH2YwN0aPQ9MZyR/qiEsXxpnHNgzAOLy+JWxfcr6PKrDeuGNzvs4B/5ZyS/aXaA2NE4E6A4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=altlinux.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=altlinux.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5a132096c08so239431e87.0
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 09:19:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772817587; x=1773422387;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6V2vbIKTfRD2FbwCxM4zMZ0xZoBynS1/x2Ma5xADMAA=;
        b=H6IUnkDdF6iJa9iGR2E57TOMGlIhOk7s4d+K0vbYgZiGbqzUTsQuB0S4qCXGNn2viH
         nvHcpsbl4IhBBOWbUwg0TrCM06GerR7W1KBJut2coJ8f2eIf6b8+W1MbInt9M5Rb2DRu
         AVOd+JUC/mL+9EGx5fS5lJ5SZvmWXN/dR1AzYfSKTmYJv7P582HBJcRe079Riwrl5svn
         pAAkhGN++463AJ8F/XU3gMSny/rtbMgRONC48Yzstu8R7DoIiXDP4qIiom1HNYu2hUR2
         nirjTJWHYlWUDrTzqcW2pYOJktqXYInftVwQQyuX2NTdUUNRlNi3tsGzQT2y5eO1FWMa
         H64g==
X-Gm-Message-State: AOJu0YxMmh4CLP9iNSIhFsaoawgxQ0y2FTgvgr0119BGap0tspufNaVf
	euE1i6sZbeWpoghL2lYetE9bGdU395GqYfUTcDr5u33PNDr88ZK0dOX9L5TwSUV7
X-Gm-Gg: ATEYQzw3LEIwEDjqZ6ytY5fQrus+GBLmOV4BE5TGTwILKu3NitJGNA/Y3B4be9AA86v
	SP7JG3mKUjIAlYB4ti0K2Xb3qRcHoIjcqPe0qsLVJVifP88WYt9vhE+Irgw9LglFbX+TsuO3eov
	7jDpJyYNqphinZ+Tmx0PSuuMkCxtXLY7Yg3xOZb479jpAEfEWyK5WcNoYqyPoUJmgNqK0PNcy2/
	sdBHbBZgKTe0vtC7RyapYiPI7NZ20PXUh8dcjpjpzg51m4Ql9Ki1XVSRqbXuxKINbpDqrF3IAR9
	Qa+fNMog5+RTTH5gOCzqm8ZNeAyJdbVD6vmtOE7un6bnoqh+VIZ+IoAKwp4gO3nWGnq/3Fj7wlF
	uknh/IVZ72vrbEd0CVk5Y/plJgEiOT3pgWhj1X7BdlFFCCY8YzDuGJilLdOCoUZtt5y1a0oKRtz
	B8762f2gWDtAfAztuEIYCRNqc+shmWp3J9BUngLoqtLw==
X-Received: by 2002:a05:6512:3506:b0:5a1:f7e:1298 with SMTP id 2adb3069b0e04-5a13cd68b44mr469342e87.8.1772817586723;
        Fri, 06 Mar 2026 09:19:46 -0800 (PST)
Received: from delta ([176.106.245.85])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a13d0402bfsm458625e87.41.2026.03.06.09.19.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 09:19:45 -0800 (PST)
From: Ilya Sorochan <k0tran@altlinux.org>
To: devicetree@vger.kernel.org
Cc: Conor Dooley <conor@kernel.org>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Ilya Sorochan <k0tran@altlinux.org>
Subject: [PATCH] riscv: dts: starfive: jh7110-common: fix jh7110 SoC boot from SD-card.
Date: Fri,  6 Mar 2026 20:19:39 +0300
Message-ID: <20260306171939.84568-1-k0tran@altlinux.org>
X-Mailer: git-send-email 2.50.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 250E42260A9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272301-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[altlinux.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[k0tran@altlinux.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.418];
	TAGGED_RCPT(0.00)[devicetree];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action

Add bootph-pre-ram to mmc1_pins clk-pins.

U-Boot pruned their overrides recently in favor of Linux which broke booting
from sd-card for me and Heinrich Schuchardt [1]. Pruning commit:
27f617019dd070cb61f2 ("riscv: dts: starfive: prune redundant jh7110-common overrides")

[1]  https://lore.kernel.org/all/ffdfc550-559b-4c59-9873-3f040fc3bb0e@canonical.com/

Signed-off-by: Ilya Sorochan <k0tran@altlinux.org>
---
 arch/riscv/boot/dts/starfive/jh7110-common.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
index 8cfe8033305d..11ab9fcee38a 100644
--- a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
+++ b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
@@ -463,6 +463,7 @@ GPOEN_ENABLE,
 			input-disable;
 			input-schmitt-disable;
 			slew-rate = <0>;
+			bootph-pre-ram;
 		};
 
 		mmc-pins {
-- 
2.50.1


