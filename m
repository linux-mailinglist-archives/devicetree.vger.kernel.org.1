Return-Path: <devicetree+bounces-59375-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 552958A502A
	for <lists+devicetree@lfdr.de>; Mon, 15 Apr 2024 15:03:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 121A22897B5
	for <lists+devicetree@lfdr.de>; Mon, 15 Apr 2024 13:03:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2DDE130488;
	Mon, 15 Apr 2024 12:50:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="lmXE0cQY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E8F312F5A6
	for <devicetree@vger.kernel.org>; Mon, 15 Apr 2024 12:50:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713185442; cv=none; b=uEHoP6QM+MImhEkBOtklvntcQYdLK1CuaKIkI+AnM4SQOak/fgwzwGR6S3L+SR6hZQb/JHqgiDkGBixUevaMKORISBzRbRVFSNf7dYVTlMlSfP69mZxqDCmGZ808fDC60s1BB3m74a3iknHHy4BlQVO07/uywRwaBZ3gOubwuaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713185442; c=relaxed/simple;
	bh=znhcYwJUYzGOpFXGP2YmPF3F/RJw3xsB03Ht+bpAY+8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=NdimBaIcY3K9PvZzChYiRh3gabwRRdiFwBRxV13ZZ8vvktkdj+TM2Fr7WUu8AxV/qxLqyyk83ZiJYMhstaS33t3k/O9fScBdhpjkshBuL3gLm24uslsnPjzr1H0AOgTXJLQBC2DPmV0B+73C3mcvHJGpnq6XLDK4uw13qv13Kdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=lmXE0cQY; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id A4D1940D7A
	for <devicetree@vger.kernel.org>; Mon, 15 Apr 2024 12:50:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1713185435;
	bh=ReRzghlopjwKf7ZFoLym1/k3KhnDB0D5vdDpSWeIHhM=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
	b=lmXE0cQYn8tcuqpIitJE84XI3rsx1bM+HIoK2PhLjB2384c0CbuETjv0x1o4rVjeq
	 yB9h7C28QJZuD0ao3Wg+V1oXh4P+FXjhqDJj9OzH33T1y/XlyRHA1ocjyQc6Qyo3m5
	 csDTliq5OeeMXU5Y22Hf0XAIJ0Wl3PdJprzUpVwFWDlga1KLVdViBb2MDpSJvDiFX8
	 gty2KMyivq7teGcHuv79w2hodfZvApGXUwHf6cEQD+/Z6jzD5UYV5CBEc0BdJiV+eg
	 Brl8OvHH9Fau0GAxcWrK5LCFyisscAdZaTonYslL5E01p7mqMzkGOy93iMy5Sw9Ufb
	 5Ow+gBlVwvuug==
Received: by mail-ed1-f69.google.com with SMTP id 4fb4d7f45d1cf-57021782d67so171410a12.0
        for <devicetree@vger.kernel.org>; Mon, 15 Apr 2024 05:50:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713185435; x=1713790235;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ReRzghlopjwKf7ZFoLym1/k3KhnDB0D5vdDpSWeIHhM=;
        b=Pz6JND2pMw3bxvq9KemXIrnRXLG/vIs28iowDPGi2N0S5H75K/fsJQiQCgxVy60Oyc
         MzNp6yrIm8ga1p3tfHsdi+GN5KAXLBuPJd4g19vvjRK2bQTSOoNlkcoLbmsmtfL56qIw
         iMjJbm5PdWHoD+QmB4bdvSMbCsUiSP6A6gHoEs2DfX1c/5ufN6eMvphrGgTzJbhkHYmi
         Dgb1pqsy/SMpBydK9vWgwthDMcDnNQIz9TsHGrdjrD9p2e1+taPcZQJjC7B6jb8y1GGm
         EN31POd9ZVReHEDtWP2sHoGeu2tQIDioyenWC7co0LR1BFUfKd8R04V5gB970D+IVsZa
         MGcA==
X-Forwarded-Encrypted: i=1; AJvYcCVopRzUk8TgbyuP8+WuEjjSXvWNXRILLJkZfu/Qhwgq0NBsnvzrhe9wAkaN44JTM26mn3hnQumJ62UK8f+ggiPjJ7/XAihpLIbyLw==
X-Gm-Message-State: AOJu0Yw4PFGfiuWistP4G4AN8XxRtzYKfbbsD5hT3HwsdKF3bUEuBH0o
	drJXglbMKRpT2C8lio5jRqro3uZ36OMAW4PV/KHTVdqlxyOTCu2Y9NoLqrpPNdeckbv6a1kMjTZ
	kvu4JziEIFR1i+MTim/rSL+P8PcTugfFKbVTgoXJ+lr3RTipnc0jmQTIBRU+X3Yu2G1bK25qd4u
	Y=
X-Received: by 2002:a17:906:6a04:b0:a52:55b2:ac40 with SMTP id qw4-20020a1709066a0400b00a5255b2ac40mr3424823ejc.3.1713185435349;
        Mon, 15 Apr 2024 05:50:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEl2HDhIy+WQcJGTsKSEGLwyKxvTqmVqEld+FSqkIKcpUnlu0ruSuJZgCJL0RGW8urzg1aMlQ==
X-Received: by 2002:a17:906:6a04:b0:a52:55b2:ac40 with SMTP id qw4-20020a1709066a0400b00a5255b2ac40mr3424805ejc.3.1713185434966;
        Mon, 15 Apr 2024 05:50:34 -0700 (PDT)
Received: from bojack.fritz.box (197-53-142-46.pool.kielnet.net. [46.142.53.197])
        by smtp.gmail.com with ESMTPSA id bz2-20020a1709070aa200b00a51a9eccf2asm5455573ejc.125.2024.04.15.05.50.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Apr 2024 05:50:34 -0700 (PDT)
From: Hannah Peuckmann <hannah.peuckmann@canonical.com>
To: linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Emil Renner Berthing <kernel@esmil.dk>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Walker Chen <walker.chen@starfivetech.com>,
	Hal Feng <hal.feng@starfivetech.com>,
	Xingyu Wu <xingyu.wu@starfivetech.com>
Subject: [PATCH v1 0/2] riscv: dts: starfive: visionfive 2: Remove non-existing hardware
Date: Mon, 15 Apr 2024 14:50:31 +0200
Message-Id: <20240415125033.86909-1-hannah.peuckmann@canonical.com>
X-Mailer: git-send-email 2.40.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series fixes the device tree for the VisionFive 2 which has nodes for
non-existing hardware which should have been left to overlays. It also results
in error on boot when both both the TDM and I2S drivers tries to claim GPIO 44.

Hannah Peuckmann (2):
  riscv: dts: starfive: visionfive 2: Remove non-existing TDM hardware
  riscv: dts: starfive: visionfive 2: Remove non-existing I2S hardware

 .../jh7110-starfive-visionfive-2.dtsi         | 98 -------------------
 1 file changed, 98 deletions(-)

-- 
2.40.1


