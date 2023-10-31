Return-Path: <devicetree+bounces-13209-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E38797DCED7
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 15:15:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5EB86B210DE
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 14:15:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D7B01DFC2;
	Tue, 31 Oct 2023 14:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="u2/fHIpx"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 944BA1DDE3
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 14:14:52 +0000 (UTC)
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 853BCF3
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 07:14:50 -0700 (PDT)
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com [209.85.218.69])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 7B2B13F1D9
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 14:14:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1698761688;
	bh=Q44keJVGaKBkwqEmz1WVH/8yD9sVBY1cid355hx4DyI=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
	b=u2/fHIpxX7oV3xb7sTNGwfikZAELdYus/PJ3sbIzSsqCNjn7aarcuY2dDj6Vmgk/G
	 UpQ9LvF4SNPFFKT5vfgMdZS80mSbgnUvhMJgQ0hX8rQbTU0JTJ1/X79Jey+8iqgf+T
	 LnB86wKYULQh9m8kLO2F7TaqQu9tRr6J+Q1q1LmLXQl7x19FwwG6SPubO6PWvTicXN
	 RNh0Ih8AkIv30B6USd1eMm1i2rz0JYhdtN/Vn3ifuHJ/UFJ/xtC/ZkhV0Y6jUz0pzc
	 vCQ4bUctGKQblyh30Jrn1CYUbnPFWBoVUeQjPxha+Aqz8Q/HBnyHLwIn84LuDRcqeC
	 ES4mTj7LcFNlQ==
Received: by mail-ej1-f69.google.com with SMTP id a640c23a62f3a-9d31e27d0bfso180049766b.0
        for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 07:14:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698761688; x=1699366488;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q44keJVGaKBkwqEmz1WVH/8yD9sVBY1cid355hx4DyI=;
        b=pb9YL9oo3QDwq+LjbMDAPD7OQVnSOnEcWt2wUoXSnOUdk+qmsUO1bctVyeETKSw134
         VBSDF0BLZOOhEyIDEK514YysYVzb13STfo1OvmOmohy6E4xFxlE5q4D5JdsqHt7YG6rw
         ivEXZKDqEBUyr3TwZBSJT32005ZY2+p+36Q0/7vXZw1el0W1iZudhSZu0Sr1rOyo4L0d
         dFh4E9/L5AvuCJIXL0GJJs8kvg2uuGsTLLQZaJ83LN/HTctfvSGIrAFPDbW0bGhANTY3
         3NkvEEy02/dXvO0IUhP8tcXBAOS2woBQmRt6qJ/kFkpyHXN3Iveky2PXfSIkYZlYKWLU
         xCng==
X-Gm-Message-State: AOJu0Yxkes6LFgUsAIGp1d1wTpcCWycmx8cuO8AFA3iLScvPEGPcWeMf
	qmpqrV/fuoDm9ayGrm9ClwV7rMgPdA3Bob/8AJVCn5Vd92jHHm1myKiEB0LRIXdn6M2cluTt3ty
	AELIgFBvrSwhGVmCslRMr0qup58eGgbIuuX3z74A=
X-Received: by 2002:a17:907:1c0f:b0:9bf:2f84:5de7 with SMTP id nc15-20020a1709071c0f00b009bf2f845de7mr12150623ejc.4.1698761687881;
        Tue, 31 Oct 2023 07:14:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGNNB1kOl40YNNgulYED6HWdQEMfYH4dxGn6uxtPiyveTyL8eA57XZ6tGygKxqqCZcI7GLzSg==
X-Received: by 2002:a17:907:1c0f:b0:9bf:2f84:5de7 with SMTP id nc15-20020a1709071c0f00b009bf2f845de7mr12150604ejc.4.1698761687590;
        Tue, 31 Oct 2023 07:14:47 -0700 (PDT)
Received: from stitch.. ([2a02:aa7:4003:190e:bd47:7b6e:876:4bdc])
        by smtp.gmail.com with ESMTPSA id p5-20020a1709061b4500b009d23e00a90esm1037395ejg.24.2023.10.31.07.14.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Oct 2023 07:14:47 -0700 (PDT)
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
To: linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Conor Dooley <conor@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: [PATCH v2 0/2] soc: sifive: ccache: Add StarFive JH7100 support
Date: Tue, 31 Oct 2023 15:14:42 +0100
Message-Id: <20231031141444.53426-1-emil.renner.berthing@canonical.com>
X-Mailer: git-send-email 2.40.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series adds support for the StarFive JH7100 SoC to the SiFive cache
controller driver. The JH7100 was a "development version" of the JH7110
used on the BeagleV Starlight and VisionFive V1 boards. It has
non-coherent peripheral DMAs but was designed before the standard RISC-V
Zicbom extension, so it neeeds support in this driver for non-standard
cache management.

Since v1:
- Fix email threading, hopefully.
- Drop sifive,ccache-ops device tree property and just match on the
  compatible. (Conor)

Emil Renner Berthing (2):
  dt-bindings: cache: sifive,ccache0: Add StarFive JH7100 compatible
  soc: sifive: ccache: Add StarFive JH7100 support

 .../bindings/cache/sifive,ccache0.yaml        |  6 +-
 drivers/soc/sifive/sifive_ccache.c            | 62 ++++++++++++++++++-
 2 files changed, 65 insertions(+), 3 deletions(-)

-- 
2.40.1


