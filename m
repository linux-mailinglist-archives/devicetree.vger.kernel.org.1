Return-Path: <devicetree+bounces-249655-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 571EACDDA64
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 11:26:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 451223005A8B
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 10:26:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1543231A044;
	Thu, 25 Dec 2025 10:26:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dbtRzZmj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E5730E822
	for <devicetree@vger.kernel.org>; Thu, 25 Dec 2025 10:26:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766658378; cv=none; b=JWC+HzYHPjDiER6Or6EPmiKKYPMfVlqA2BLGLVi6eTxRYm7nud2nGEwG2L0eDqKLUbwbr+sJdoBevBhFi48l155Q30t3siXDoDEknBa8KAVYzxlkYjRzIsQRK2nmGpxYAXJtlcY9Loj55rNZNF+4Or4eVz5Nk0xMdNe4yZmqbhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766658378; c=relaxed/simple;
	bh=SskP52viYAiPHMk+t2yoCn8PRqn+AvUQds8WzbQsWwQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ddDD9O0xMiYy6FNAkzcuLbUGHOpcK5cNikCplfDEb62tUNNt+LK2lQK9GrT7aXH9Aw2HhctSONH74H+uMrCjdqpzOhIAkGylDxNB81UxTUaAcUuPTB6rWQWhCWqaylQJHz0hUILdKSnZAHJrz74LiY7zXhf2yKIXwK1AbMi31KA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dbtRzZmj; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b79af62d36bso1141844466b.3
        for <devicetree@vger.kernel.org>; Thu, 25 Dec 2025 02:26:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766658374; x=1767263174; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GU0KhzuEHH4lhNRVWa2X41dhcyghoa/RGYWJsiR27yY=;
        b=dbtRzZmjX8JaIwkWPRQwHbxkB2/cz0rO85GroudlHicNJHFhVsOV0qWtdrKymBYLo9
         2mLGRA4CaSQMYbgBsbhrHDsrqNbZCRQfq3vM7HQGfmm3koNu/jfMImoY7l7U+hactA41
         0H2g66+q8+C5E8sgy+udO4Sc/m7sWwYOvI/dUu3mjEfzCF+X3ettMcz2Ef+gEpFP9rxR
         IhYNHzhHQQ6jVQHTh4i5pAQRH9qGseBymsVFLMTRIwg0VoN25r9MZpnSmVhJif5UczXB
         6MmWaRfsfycnTikvrx8d0AMOwCrndmO2sT2SY/6xZQ8EtZSYO27QPscz06Fgx80g04zz
         ipGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766658374; x=1767263174;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GU0KhzuEHH4lhNRVWa2X41dhcyghoa/RGYWJsiR27yY=;
        b=XE8xQt74Bv1bnybxerCa/ylcQ4xUafkN7PmE30KKcf/gNBb0D5HYt3kM3U//HQ1zs2
         9BPadJb6Ph8j74Wrd52NuLtOYxcIM7Rse4E9bN07jPx+gQutFiVOfnIi/68KS7zyxoDX
         2nq7YYPZbjusNZQxWyPybXp2YZVWHo9Oxld0LlKICAxzHskLhYcLXH2op0PeDlSiExiD
         pCgqFq3z0yuTx12kzx/qqRCdw+EdZdXU1EXy3EPm9evUi7r7noAEodLXCcP/bUgrATis
         Os7nP1GN56jGC27mEZCMKTvLUrEJPgskJKaiAf89QyZ2iz7d28F9KX5XVOwmFfFA4r9X
         2UCQ==
X-Forwarded-Encrypted: i=1; AJvYcCV0sXxhSICShHovVXMdeLtXX+BRZzx4ZMwJ5SPkNMO4RqA1sGz/eSYo2W6xk6E7vZydgKqpok8My0OC@vger.kernel.org
X-Gm-Message-State: AOJu0YwFZNxlUIj3FnayOagBzfwfmSx+CzYzZgslnhgLmgaJVa5MHf0Y
	7yd6DW9icdJMAe95odHdnTG+RcaBq8myZJrhF/hh4I1zeErpRXmd+EYM
X-Gm-Gg: AY/fxX5IND/lox0XE2Zkx+VRy0LkQ9Y8WNWXTLaVdD4veCTa8kq0bo+wgUFgn68Xf/a
	lCx2UyVcs8sCKK6OpA5101uh38NoaWm6M+UL9dShwWSCMSOU8i5snwbn6w8UAtdnc4lfFHQMwqi
	Qo1s9erZ5yTuukrU8CcOYl9tuXM1Ml4DQUvLb7Hb2sCDVh+i5ZIOnmNd/xS+GRcC6ZypEbA2/d3
	Q1TpfWuKHJwKpW0vcTUIKoaf6GxicIFuHk+Y90aJjrz0dAinyuWHZo3Hg9D99vobXVk0rQZ2+ao
	JgYL+NTLzhj1U6eFFGQL6W9sQa/G8BRzT652XdLdaJi6VaSkVVmrH2Y+zwBIgd7U6Bvb5Xx7mW5
	Zc2+QRL0sUya7rwN/cfSneUvrLjhqOsJ81PXb9nueV4ApP+3eFNYi4oVZzVV3XlSdk38tMJL7VM
	JPkzapA6fusDzm80mYw10OvlWAlVTmWPkViO1hblg14wejYiYx6SNCjniNgueFH3Yb0UM=
X-Google-Smtp-Source: AGHT+IGNgfPbdGBV4OsErCl8w1/y2EjJW2lfmR2JyTl+ckx6GipUwr/AyVUz9oTZgzcfzvxDxGdNrQ==
X-Received: by 2002:a17:906:ee8e:b0:b83:2c51:bc36 with SMTP id a640c23a62f3a-b832c520299mr120919366b.3.1766658374259;
        Thu, 25 Dec 2025 02:26:14 -0800 (PST)
Received: from localhost (dslb-002-205-018-238.002.205.pools.vodafone-ip.de. [2.205.18.238])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f48606sm2055396766b.62.2025.12.25.02.26.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Dec 2025 02:26:13 -0800 (PST)
From: Jonas Gorski <jonas.gorski@gmail.com>
To: Kamal Dasu <kamal.dasu@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Cc: Kamal Dasu <kdasu.kdev@gmail.com>,
	linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org
Subject: [PATCH 0/4] mips: bmips: fix brcm,spi-bcm-qspi devicetree usage
Date: Thu, 25 Dec 2025 11:25:29 +0100
Message-ID: <20251225102533.30772-1-jonas.gorski@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Currently running dtbs_check for BMIPS produces a lot of warnings. Start
addressing those by cleaning up the {q,m}spi nodes:

* allow the in-use hif_mspi as alternative register name
* fix compatible order from most to least specific
* reorder interrupt names matching the binding
* reorder register names matching the binding

This fixes all warnings issues by dtbs_check for the {q,m}spi nodes
themselves, and reduces the total amount of warnings generated from 416
to 368. I plan to address more in subsequent submissions.

No functional changes intended (I can't test them, since I don't have
any BCM7XXX boards at hand).

Jonas Gorski (4):
  dt-bindings: brcm,spi-bcm-qspi: allow hif_mspi as alternative for mspi
  mips: bmips: dts: fix {m,q}spi compatible order
  mips: bmips: dts: fix qspi interrupt order
  mips: bmips: dts: fix qspi register order

 .../bindings/spi/brcm,spi-bcm-qspi.yaml       |  2 +-
 arch/mips/boot/dts/brcm/bcm7125.dtsi          | 22 +++++++++----------
 arch/mips/boot/dts/brcm/bcm7346.dtsi          | 22 +++++++++----------
 arch/mips/boot/dts/brcm/bcm7358.dtsi          | 22 +++++++++----------
 arch/mips/boot/dts/brcm/bcm7360.dtsi          | 22 +++++++++----------
 arch/mips/boot/dts/brcm/bcm7362.dtsi          | 22 +++++++++----------
 arch/mips/boot/dts/brcm/bcm7420.dtsi          | 22 +++++++++----------
 arch/mips/boot/dts/brcm/bcm7425.dtsi          | 22 +++++++++----------
 arch/mips/boot/dts/brcm/bcm7435.dtsi          | 22 +++++++++----------
 9 files changed, 89 insertions(+), 89 deletions(-)

-- 
2.43.0


