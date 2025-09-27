Return-Path: <devicetree+bounces-222141-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A68FBA621E
	for <lists+devicetree@lfdr.de>; Sat, 27 Sep 2025 19:36:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7C57F7AD7F2
	for <lists+devicetree@lfdr.de>; Sat, 27 Sep 2025 17:35:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C7D8221DB6;
	Sat, 27 Sep 2025 17:36:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GEQZaod0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f53.google.com (mail-yx1-f53.google.com [74.125.224.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B07D1BC58
	for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 17:36:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758994609; cv=none; b=aGx6dWBV1t62Wf69YONExXdmwfisDoFvVvtRJGDmFarxnlfonHzM+cIbZAu7BN8UsIDYykSKltOQ5QAh26joANaJ+0+gehSU/FtbHQ96kX1nEbwcPnpadrCbyGVogrrShyHUuUWF0hHd4Jnb4suF+HgcgWZbkeJoTlQCw8LBodY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758994609; c=relaxed/simple;
	bh=XF+APECUX9F0rvdCvp5Uds/TNmoRS4fjsm/tqEnUQD4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Q9g508KnhOeDW6yNVmcW61dAYsarwMAQ2EBAomUUmEDqPlVBsmFIUBjSpOzTl4rFTwVsmYinRTPH7wk/zNAX9YpB57ECSXwyfCPoL7rjAMBxIXfgFmSzezoe0QYC4f9pHyp81Ix+HYJgbTkmVjDUsffpDCwOW7pbT84U7yErSXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GEQZaod0; arc=none smtp.client-ip=74.125.224.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f53.google.com with SMTP id 956f58d0204a3-6354af028c6so2443669d50.3
        for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 10:36:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758994607; x=1759599407; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VbjnLuSMG8yw44v3Cfmga/MZCs0G/sV0E2m0ttu4jog=;
        b=GEQZaod03OVN5R/RbVs/q+BbfLuvYrxUcQz0pRPvZ3mDgqLUH3k8nsirwMUZ8PXI91
         HoIfEI5As3UNDz/PEi4zm3gmxXRcMTLA9iaZTzZJHpHsje3AbFffiedXaD72TK9X9it8
         MmHqUj5MakSxOpAvTuCRFFJa6duzEID3rgagbftRF1PcagdTaW6V3EgIdMG8SwA4CQn6
         WceW8OJB8pzVejOBRwrefDpXv3yX4O2eA6bAkR83wxo4xlNKpBufzZDlKtGjYwjSa+bN
         tQ4B9Le+BGXXC0CcOIJ7B7Zebg9kTrwTVaHxhPEKCHaoj1BY10tbdhBchzdmDEZ3Z4i8
         xyeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758994607; x=1759599407;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VbjnLuSMG8yw44v3Cfmga/MZCs0G/sV0E2m0ttu4jog=;
        b=QYlf2PzyP0RjbFmNd2YFtCHyV2vfG8Hu3OMYuSRM93wS4juJRvEbvnWVHtLtYJYjw1
         pPf6CdrFzP7RI4sGzIAUObfLmjutaK9TGRtikRiGtFp50sdL7zbpvPbfUf35dielijdt
         zOCQ4iFagtVVPy2Yk930R+mGGyeyK3GCAZrueh5aRuHfHaDy7fSBdIB6y29VWqXEinNw
         2K+uzpaSXLcf8LTQytv62Jk5nMDleFTnXpV7qTy74iGtO0uTDfcYlX8JF/b8r2n0ZZhG
         sb1JadQ37xQNwIeofw6ZJ32OKp4acgaUO+nZDIQUWWuge/oIwSYLA7fTk4AI7ToLAZQC
         UAcg==
X-Forwarded-Encrypted: i=1; AJvYcCWeDGNfFqGHUd5cmbCCULNF7c63cIbjBMHLn6Zml9L3O1zomvB85Ggz4XYuyZ3ENbnqLyOxp6RCTzPl@vger.kernel.org
X-Gm-Message-State: AOJu0YxiqsHMb5lXpB+ZwDItJ218j5AqV7Hip26JNU8h6lqkNOxBcUof
	e/OA4vD7Jd577sH6LAUMUPp4hqn9AU2/3qVxKoSRk85bUENdb/EJ/Pg9
X-Gm-Gg: ASbGncvffIkGx5QIYMo640jhHgHNtpuO7x6N2IjKZbHoRBrmUlZU8k0IEI1cEUxBDJf
	zf3b6l4FJvnfyDL8IU6s3Ptfe1y6jWalVOtIbaYKHRnQy5DKbSy0yI8J4vaD9HjBcu6Ay8MeRD/
	hR4Ul6VPBBAxDczQ0pxWtNNFjTFeQXVIxVqcQHOc4zDW4mZ2dUAFpfSQ3xX6uu885S46hruo5TP
	xLKG8KY9VmmvDg6dBGtcl+KTCxgibbJ1Q/xTZTuQFpS5xJcMlWaogjCJJkkIj6RAK7Yt8Cv/+r/
	YFAO4MvR1hcRBjaTZeuoTj8FJdpFuvDlIARoVEIv3d6eljGUVjJBAVeuHfa2iv18XYCGtyExZoZ
	K
X-Google-Smtp-Source: AGHT+IEGcKO9QkTdCPSVULH6h3vDhccsiVZFl7VwP7XTGYSwXlANev1tcrw0B+/ELVgNxVhu49n3Vg==
X-Received: by 2002:a05:690e:d4c:b0:636:111b:a4c9 with SMTP id 956f58d0204a3-6361a745f42mr13438608d50.21.1758994607358;
        Sat, 27 Sep 2025 10:36:47 -0700 (PDT)
Received: from sleek ([2600:6c65:7f7f:fe0b::ec0])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-636d5b1d83csm1269716d50.11.2025.09.27.10.36.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Sep 2025 10:36:47 -0700 (PDT)
From: Joshua Milas <josh.milas@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	unicorn_wang@outlook.com,
	inochiama@gmail.com,
	alexander.sverdlin@gmail.com,
	rabenda.cn@gmail.com,
	thomas.bonnefille@bootlin.com,
	chao.wei@sophgo.com
Cc: josh.milas@gmail.com,
	devicetree@vger.kernel.org,
	sophgo@lists.linux.dev
Subject: [PATCH 0/2] Add initial Milk-V Duo S board support
Date: Sat, 27 Sep 2025 13:36:17 -0400
Message-ID: <20250927173619.89768-1-josh.milas@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This adds an initial device tree for the Milk-V Duo S board
with support for reading from the SD card. This is continued
work from Michael Opdenacker's v6 series on the ARM64 side.
I'm still working on confirming the RISCV side.

https://lore.kernel.org/linux-riscv/20240421055710.143617-1-michael.opdenacker@bootlin.com/

Patch produced against the "for-next" branch of the sophgo "linux" tree:
https://github.com/sophgo/linux.git

Joshua Milas (2):
  dt-bindings: soc: sophgo: add Milk-V Duo S board compatibles
  arm64: dts: sophgo: add initial Milk-V Duo S board support

 .../bindings/soc/sophgo/sophgo.yaml           |  1 +
 arch/arm64/boot/dts/sophgo/Makefile           |  1 +
 .../boot/dts/sophgo/sg2000-milkv-duo-s.dts    | 88 +++++++++++++++++++
 3 files changed, 90 insertions(+)
 create mode 100644 arch/arm64/boot/dts/sophgo/sg2000-milkv-duo-s.dts

-- 
2.51.0


