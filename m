Return-Path: <devicetree+bounces-117275-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 467C99B5C25
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 08:02:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E4C76284594
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 07:02:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C3B31DB55C;
	Wed, 30 Oct 2024 07:02:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="AUpon0yP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B82CC191F8E
	for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 07:02:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730271752; cv=none; b=akk6bIKr+yyY0+IsaXnb6NaIHHsNp2USLjfsgkO9FHBjBoocNKyRVj5DsxppNN3BDPilWiDpf+L8mxXEh6J+Wcg0Awd43UUPAuWS9+lHIcBoT5CsHgVLOT3nNvRlWccPWsf/SUIkhLzPCQWtKpsFZwlYkZLBslyQ/jfPuOTpLQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730271752; c=relaxed/simple;
	bh=JFokh6YOoTizarXbMs8PY5KWSD17qAYQX1UDNzTO9Uc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=kDveRWuxBaxAQx7XjY2oL1Qxcy2bTbhBshbtY5i++VoUXlIjGI+c9zYVuRdhSZw0zK7cb3kHY9v+JoOkvY3kpt6Nrs+F0W8za8s3PDgzj/aHOpjErk+z04Z0EkpkJsTzYOPSEHB8cDkvZFOa6jPfjDwujCw4XjM7qtJSphkvzVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=AUpon0yP; arc=none smtp.client-ip=209.85.215.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-7ee386ce3dfso9204a12.1
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 00:02:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1730271749; x=1730876549; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BV0pONGAO/O8kIOEvHPUytGYVxoUgCUB8GW7f5tMBZM=;
        b=AUpon0yPJOz3IznsZ1SjiaySdWuyS0Avl+TxBtiVWAiBGTaIV2GAr9PTXoYV8U+UoT
         KsmJ2hRgBdNQrFbPPvIwoF7ssCvbF0mxkssHYWsmL3ZqSeLeuZGSKTm56IrGSFFpqlj+
         7U1o0Q1NGGzA27SEUf8bSJmPhSuqPEzX4oC6o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730271749; x=1730876549;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BV0pONGAO/O8kIOEvHPUytGYVxoUgCUB8GW7f5tMBZM=;
        b=T3bLCOmNpS07AKMy2N+OWKhy+GIoaMqArC4f3NoxAr34ZaU3PmiczEtiomZ5/yNTzw
         M2vjJTHe6SIxAYtnmam7EPXgrmFBl4gWcwS0Ptgebuqi5u5xjzBs3g2P002kxDODX9qu
         H4+mrDb8nq0mwiArmgks6ZoihM6lzd+mu6bItF8Efynrat/7Dn7DYYF57Ks9rUnRv4sj
         76Icd0xMjrlXsHrHjIvsHiNZRaB2QANyw6prqVUbNUkU4TI17eqRe+pd7Ix8uxTlhgcm
         DJY6l1/9YHMI2eDmGstS7WH8iZixe559Wbbn8PJ2+0N/NG8ypXruasLR7CRLbZPIrY8L
         JVhw==
X-Forwarded-Encrypted: i=1; AJvYcCXANQZQnWmZ3MFnUy/OOfqzZ5TUoaA5RKMuXWEpC5zE2xgstISRDv4arFXUbz0d0Em2/xbg9KDsTWCA@vger.kernel.org
X-Gm-Message-State: AOJu0YwihS9qbnDtXcAtV6gXLvXGfwucGyJPv8+Rp7px/0n+NMMHmS3B
	h3hgnpOOtcqCgDPJ31DrE/2bCDfwn2Ai4ArNBPNwdLkgghAJRc99Wg1jy9gCTQ==
X-Google-Smtp-Source: AGHT+IFgLrEbx+kS1NBOY+/5ITRlJ0i45ZBe6U9Y810ez1geYrM3koM48+/nM72kFTZaQ+a23lBHdw==
X-Received: by 2002:a05:6a21:3a82:b0:1d9:13da:db15 with SMTP id adf61e73a8af0-1d9e1fcaaf3mr6026755637.24.1730271749027;
        Wed, 30 Oct 2024 00:02:29 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:d1f3:aa64:657f:d8a8])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72057931a94sm8635848b3a.68.2024.10.30.00.02.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Oct 2024 00:02:28 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/4] arm64: dts: mediatek: mt8183 cleanups
Date: Wed, 30 Oct 2024 15:02:19 +0800
Message-ID: <20241030070224.1006331-1-wenst@chromium.org>
X-Mailer: git-send-email 2.47.0.163.g1226f6d8fa-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

Here are some cleanups for the MT8183 Kukui and Jacuzzi device trees.
These just fix up some names, add missing supplies, and drop redundant
regulators.

Please have a look.


Thanks
ChenYu

Chen-Yu Tsai (4):
  arm64: dts: mediatek: mt8183-kukui-jacuzzi: Drop pp3300_panel voltage
    settings
  arm64: dts: mediatek: mt8183-kukui-jacuzzi: Fix DP bridge supply names
  arm64: dts: mediatek: mt8183-kukui-jacuzzi: Add supplies for fixed
    regulators
  arm64: dts: mediatek: mt8183-kukui: Drop bogus fixed regulators

 .../dts/mediatek/mt8183-kukui-jacuzzi.dtsi    | 32 +++++++++++--------
 .../dts/mediatek/mt8183-kukui-katsu-sku32.dts |  2 +-
 .../dts/mediatek/mt8183-kukui-katsu-sku38.dts |  2 +-
 .../arm64/boot/dts/mediatek/mt8183-kukui.dtsi | 25 ++-------------
 4 files changed, 22 insertions(+), 39 deletions(-)

-- 
2.47.0.163.g1226f6d8fa-goog


