Return-Path: <devicetree+bounces-188985-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id ACC2AAE6400
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 13:58:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AB17A7B214A
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 11:57:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21A7828F948;
	Tue, 24 Jun 2025 11:58:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b="DIrrdyFS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7C8028DB64
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 11:58:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750766298; cv=none; b=l4oYo3chP9s5l2oNllyf+mcDRM5svscinO6rbwQ9q70K5JDXBpqfqd1PwNKDZ/zxhHHS0u++seE2Jtw0gV83X9Yumi1yPWwJMxx8QkaO4dBEev8bVzp5E/KfTpDfcX71xnb5M/w58yXgh7TT/qBgAAHWynUyi7G1a1oGyXvW+BY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750766298; c=relaxed/simple;
	bh=Ujm4ZSwsjseF6DK2QFoKOIfCHDOOOwtTLkaYp5DYTJs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=P3l+HDvslfBxYohJ2cy9Yz9DBgTx7fTyXKRPvbc7NipBmSfvXl348MvCdJukIdE++DUii/Uk54xhiA5hB+RvCKKvDE3x7x0gTczMMRc8oMLl0seXc1nvn/HxInflrMtRiV34IsfNRTTPxyNzxIdbLgS96yYV/YtsrSAwm4JjbZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch; spf=none smtp.mailfrom=easyb.ch; dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b=DIrrdyFS; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=easyb.ch
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-450cf214200so47261245e9.1
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 04:58:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=easyb-ch.20230601.gappssmtp.com; s=20230601; t=1750766294; x=1751371094; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VasdYnmyrBpAhDisiEDDk5E4G8eAR7AiKnkb2f6t73A=;
        b=DIrrdyFS1QZ/RDlW3DRsqiU67VlwNwi/PrRhywAaJhoiqHBC5UIsnxnoRNcWlQk9TM
         BCYmgFL/GEdjCVZhN4DZpKN0qToMERU8AcuhHXspsYkWB1DHCLk9sywVOGQTOmeShaSp
         tobf0Kgm5uPugqVP+S7KmP1PKmgvAc1e+PB1qX2xgCsemUbajKuGIpgQfNupCF/Ts718
         cb2Wlfn69cV9B0cmvaXtcCA7o64uTm8XQsvWQAN6UOPvnS3cJ/O+28DmsCcK5VnGLNh9
         g7E85neOO+Ova5i9kiGCMH9OqZ2GJMWpq3MDXJiXXuGOzh4LzHbsTMvLLzUjh2zSJ618
         g5QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750766294; x=1751371094;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VasdYnmyrBpAhDisiEDDk5E4G8eAR7AiKnkb2f6t73A=;
        b=J86nqNpBXty8VZmqZ6o7Hb5rOYu5ep6OhigSYe38/+IPgsoYiualACFZMuk3fyl9ya
         tMZf9Qd9bLXg6ncoOzbhLe+K4cGu9Eo2ojsEglXtCEfBoHP12fp55kn5YNEkLBpkgTXn
         l69DQaXJVGwkBmwBbMihUV4FOKjUKE3XKAF5p5eOYZOovSZOqYKKIHpW9zPYl/RGeO/s
         t4G7BBpeTarp0XXFUvh/9PsT3JyZNAHsO3AeteYShjl+4434DqWKZ+g7s1UsZq5qyqC0
         SW0QvR6G+YyhzGg9qOm/cffRp9/EiRcdQCz+SnwsL7C8m+qOP7V71gWz3aE1AtvfPrOM
         5KMg==
X-Forwarded-Encrypted: i=1; AJvYcCUWE/6EsKuH8xqbcBisTxrXYj4NfK6UjPxxp+4xljVHFK47hg9YkA+sGbZ54vdTUrYJ3mSI8lCrXql4@vger.kernel.org
X-Gm-Message-State: AOJu0YwRjhPpqJ8ENL8m6q8MER84xFyUilr4g9mkl5A3iUKyqlB6nlRJ
	0nCtbE7s67N9507vHkcYNszQKMRdaPK3gHm8qP++6nownlDhHBJwnFc94Tho5ZiyiVM=
X-Gm-Gg: ASbGncvSoFAxgKvtiSGi+QEfHkb+oUNhvyppTfcjnBtj4qiH0liirZTtAUWopJGQo/u
	JNQ07kC8hTECaF65bSuPTkhut3xSxJAIWDl8oBVpkTB5KF5Mm/3hvR1QBkBLHiFyEWLTlgXUlFS
	hDqhgFY+6ORjqEvzkg2eiupEJwpUe+Dr2vmYgqDifPbsjYJuLBU0E1jubAUF8yEqJvaR/Jl/N8J
	d4Wy+xSuSvRNfoHJ5KflkqO4LACfnJW9Of2ui8X8UqTHZuPw/VG0iT6NAMgJUgz4QxaOAt98S68
	51yu0kkAjpypYnBwEghG/UWk30YvdVu4wwbDp1ZlL5Nqz2xbEsIN3iDIkMLR
X-Google-Smtp-Source: AGHT+IFT0ohwcG0u6Bo2EUcoP+iKDc3WXdNhr0CNYzUzlN2NpVjYUMFjHkuhfdLKZd/XGh0IjpadCg==
X-Received: by 2002:a05:600c:6206:b0:453:dbe:7574 with SMTP id 5b1f17b1804b1-453659caa7dmr147389975e9.12.1750766293338;
        Tue, 24 Jun 2025 04:58:13 -0700 (PDT)
Received: from fraxinus.easyland ([2a02:16a:7402:0:d834:684f:62eb:5df0])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4535ead2a5fsm173860985e9.34.2025.06.24.04.58.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jun 2025 04:58:12 -0700 (PDT)
From: Ezra Buehler <ezra@easyb.ch>
To: linux-mips@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Conor Dooley <conor+dt@kernel.org>,
	Harvey Hunt <harveyhuntnexus@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Reto Schneider <reto.schneider@husqvarnagroup.com>,
	Rob Herring <robh@kernel.org>,
	Sergio Paracuellos <sergio.paracuellos@gmail.com>,
	Stefan Roese <sr@denx.de>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Ezra Buehler <ezra.buehler@husqvarnagroup.com>
Subject: [PATCH v4 0/4] MIPS: dts: ralink: mt7628a: Tweak for GARDENA smart Gateway
Date: Tue, 24 Jun 2025 13:58:06 +0200
Message-ID: <20250624115810.37851-1-ezra@easyb.ch>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Ezra Buehler <ezra.buehler@husqvarnagroup.com>

Various devicetree changes needed for the MT7688-based GARDENA smart
Gateway.

Signed-off-by: Ezra Buehler <ezra.buehler@husqvarnagroup.com>
---
Changes in v4:
- Re-add ralink,mt7688-sysc to enum in mediatek,mtmips-sysc DT binding
- Link to v3: https://lore.kernel.org/20250619203502.1293695-1-ezra@easyb.ch

Changes in v3:
- Remove duplicate entries in mediatek,mtmips-sysc DT binding
- Link to v2: https://lore.kernel.org/20250617103058.1125836-1-ezra@easyb.ch

Changes in v2:
- Add patch for mediatek,mtmips-sysc DT binding
- Add Reviewed-by tags
- Link to v1: https://lore.kernel.org/20250611194716.302126-1-ezra@easyb.ch

Ezra Buehler (4):
  dt-bindings: clock: mediatek,mtmips-sysc: Adapt compatible for MT7688
    boards
  MIPS: dts: ralink: mt7628a: Fix sysc's compatible property for MT7688
  MIPS: dts: ralink: mt7628a: Update watchdog node according to bindings
  MIPS: dts: ralink: gardena_smart_gateway_mt7688: Fix power LED

 .../bindings/clock/mediatek,mtmips-sysc.yaml  | 28 +++++++++++--------
 .../ralink/gardena_smart_gateway_mt7688.dts   |  2 +-
 arch/mips/boot/dts/ralink/mt7628a.dtsi        | 11 ++------
 3 files changed, 20 insertions(+), 21 deletions(-)

-- 
2.43.0


