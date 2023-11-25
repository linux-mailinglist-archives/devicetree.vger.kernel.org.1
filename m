Return-Path: <devicetree+bounces-18804-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D915D7F8BC5
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 15:40:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 47D53B21089
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 14:40:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B51CF10A0D;
	Sat, 25 Nov 2023 14:40:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b="Y3k86ImH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDBDDD3
	for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 06:40:24 -0800 (PST)
Received: by mail-pj1-x1033.google.com with SMTP id 98e67ed59e1d1-2854757f0f8so2296491a91.1
        for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 06:40:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1700923224; x=1701528024; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=R00GpAOQ8unl7IA5WlLg5PzZVU6FbtaGJNh4ebAEgak=;
        b=Y3k86ImH/KORSBn8acs0jNG5nCN2Z2Guxe+sF65+T0thm0G4AebLhNrWYZ8ZaH/l4z
         RDyk/p+7Cckb8ZzeVJ3/hY7jG9jqdJDYVSkykIiOYWt2+t2ZpJ3VpHEOruDP6LFPpOUv
         NNReifj1UOUSrjoJwMMMiKMvB1Q4uihsXU+CkwgYvdr+YU3SjNsdYJQLpOG1FG7z7czs
         eq/2HpyuKweZS5sNWqJgeL49YJFnQ5mrWNQF+tsUt2saKo7lBheG0F/IpOLdJfZhSWsk
         m6Bo0LYLLEzsy1CuX94yU8Thg6FLjXFttbyh3xjvb6ihYkKG42xOpX7++hy3YoCmz7Rh
         dtCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700923224; x=1701528024;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R00GpAOQ8unl7IA5WlLg5PzZVU6FbtaGJNh4ebAEgak=;
        b=AhMLAt3jQMAVtWUma9JHGZsutXrS0ZTVUeUVt8O5pLYHsjMci5j9Q0QkT/IA8Es7i4
         KRuPIuDtlU0q77mIcmA7AlYeO2e1+PnfKPoYgURRoQZkPW32/hRnEQcK7kSU3O4DmcrD
         jR4obfpYpR9eIOFmiwSJ9XNycV1qfAI+G54n7ZlbQlWI/kpPuei1m9vasS/EdedZVkER
         ymjDL26pYxNzxopAcwv/ejFCYwo9ifAr/GsJCpRFTRKaVTzLMDPE9n8cJseq135jSITe
         ma8o+kar7xGn4u9GIsdQnqf0qdb3tqWdUGFKCv5YPg5bFWNTgFrT60hl0oozExrtyF5b
         nFsA==
X-Gm-Message-State: AOJu0Yx7iB/oOfWtyeCEwpISQZbAqlanX7CoHu+OLHA6qWd0wrrkDbwc
	FTLiIQ09sihU/TNOZdbWiD95rw==
X-Google-Smtp-Source: AGHT+IFQA2BGKsZZ1umze64aNrYyQwAcNAiC1NU5/UBm08aKE+MoPLYYZKae3/4MCaWcUNo8WCX0Eg==
X-Received: by 2002:a17:90b:4b8c:b0:27d:3f43:d9c0 with SMTP id lr12-20020a17090b4b8c00b0027d3f43d9c0mr5022781pjb.24.1700923224234;
        Sat, 25 Nov 2023 06:40:24 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a208:d471:6d33:4b36:d85])
        by smtp.gmail.com with ESMTPSA id h15-20020a17090aea8f00b002802d264240sm4817998pjz.29.2023.11.25.06.40.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 06:40:23 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 00/10] arm64: dts: rockchip: Pack Edgeble NCM6A, 6B DT
Date: Sat, 25 Nov 2023 20:10:02 +0530
Message-Id: <20231125144012.58668-1-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

DT patch set for Edgeble NCM6A, NCM6B SoM, and IO board.

Any inputs?
Jagan.

Jagan Teki (10):
  arm64: dts: rockchip: Drop edgeble-neu6b dcdc-reg4 regulator-init-microvolt
  arm64: dts: rockchip: Add edgeble-neu6a-common DT
  arm64: dts: rockchip: Add common DT for edgeble-neu6b-io
  arm64: dts: rockchip: Add Edgeble NCM6A WiFi6 Overlay
  arm64: dts: rockchip: Add vdd_cpu_big reg to rk3588-edgeble-ncm6
  arm64: dts: rockchip: Add Edgeble NCM6A-IO 2.5G ETH
  arm64: dts: rockchip: Add Edgeble NCM6A-IO M.2 M-Key
  arm64: dts: rockchip: Add Edgeble NCM6A-IO M.2 M-Key
  arm64: dts: rockchip: Add Edgeble NCM6A-IO USB2
  arm64: dts: rockchip: Add LED_GREEN for edgeble-neu6a

 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../rockchip/rk3588-edgeble-neu6a-common.dtsi | 466 ++++++++++++++++++
 .../dts/rockchip/rk3588-edgeble-neu6a-io.dts  |  14 +-
 .../dts/rockchip/rk3588-edgeble-neu6a-io.dtsi | 236 +++++++++
 .../rockchip/rk3588-edgeble-neu6a-wifi.dtso   |  56 +++
 .../dts/rockchip/rk3588-edgeble-neu6a.dtsi    |  25 +-
 .../dts/rockchip/rk3588-edgeble-neu6b-io.dts  |  80 +--
 .../dts/rockchip/rk3588-edgeble-neu6b.dtsi    | 383 +-------------
 8 files changed, 765 insertions(+), 496 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-wifi.dtso

-- 
2.25.1


