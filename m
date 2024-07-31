Return-Path: <devicetree+bounces-89616-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FC0D942524
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 05:44:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D4CE1B2404B
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 03:44:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9932E18052;
	Wed, 31 Jul 2024 03:44:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="aka/KauO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F122218030
	for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 03:44:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722397466; cv=none; b=JfSLsjdghcishQQJd+WlvTwPI7aTPd0rj1XvphASnkf7DDgqO6n1R0qxKY4t/PKlh6FWbaNvk0exJrfRhNJAdwfnduTqPWtiuxEMh8M2w383jxUrfh2aKyH0YQsxfq8LGL/mVFMD+MlXq1fDhc4znsmaGyuV92HsdIcl2ckRCLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722397466; c=relaxed/simple;
	bh=ovcDVb82Ex9EKEuQDxQ96nGaMJHgSciluscsnDUmtpQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=cp0DsWarYSClbwiCCRFxHhyLuTpiI/Wu3DVvZ21+6p7kY5m4/MTbOh6KfqTwfvAr+mHp3AIxS/AhPmnssKImnzRZRvOguA+VbTOW0l6GXhPdFr4Zg8sGEiyOQAQ2TbV198CHbCjezO7IBqVGaCer3gjARJsQIDHYUUR2ZZPN5rY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=aka/KauO; arc=none smtp.client-ip=209.85.210.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-709428a9469so2680633a34.3
        for <devicetree@vger.kernel.org>; Tue, 30 Jul 2024 20:44:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1722397464; x=1723002264; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tSNBwL+37ogjDZhFrubRTlVeN1yn/UiqziyW4s5xbIw=;
        b=aka/KauOX9UYEFkRsiq0w52PqhW6dDBCDfPc8M8ok8RfD9cOkyIzqZYvdcng8BHOxc
         QwCXhiRXvo5Nzfzy8jPg+pIU1yYiV9YbcthBItIUeSSyRZWqUK9qN4bTTVwPQjRmv7mr
         5FGsFTJUZ4Kmtw7YHQoj6U8Naa2MIwe1ezoCw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722397464; x=1723002264;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tSNBwL+37ogjDZhFrubRTlVeN1yn/UiqziyW4s5xbIw=;
        b=L9mq2aqkbYyTeOFc+0OMKjn+GWvPz7npJRpmHPcebRCGqAJ8PzhxCktej9tz0crKfU
         QatImP3OIvPCTOBSZIbYeMwbfhcXEoVmIcbGmWLbB8YYXgupdPOR8SEMRaiOx96wtUTq
         zXaijjgXhP7z4KFtK1VbyxQa87mgwwvDF2MMrJE6e/Jsk2Y64oT08KEwBPOjpFykKwpC
         Nv3fduTke5rKKPzp6I+aTERSKOgbEXjdHKd74eRiXaP2rDZHoHzEOD4iKpsTTJlLd5ku
         LI9LQgqAx7fWl92oz8wphOPqAJTJ9fLe/bS7QGdoL+bOm8nHkkFcWSPhzFR+xRYDT3uj
         c1qw==
X-Forwarded-Encrypted: i=1; AJvYcCUQA5rXtpr+2AwiJ2WgWO6QFRFfhtwxyJgqa84Wiw8QNr19N0dc3U1xDaAYDit3taSKYqdj5NwdQ3itGzAKFkVfxbycWnbl3QmBIw==
X-Gm-Message-State: AOJu0Yyp2bJJ7gUqKBtzvtxVhQhZTUZQly9eQ2G6EYzfc+L1lg1cCGFj
	aAQIccopncX65vTW3ElkgYn8U484gW+xNsoOwwfUzYEZmTyM6oZz2HHa0dnBiw==
X-Google-Smtp-Source: AGHT+IFC2gv72MD76iLYrIda5Eq5rF0jA/Iac8CNQ+Wji3s0CVR3dGMwhSKkd4f/9qM7nWs4EH2/vQ==
X-Received: by 2002:a05:6830:1688:b0:709:339e:520a with SMTP id 46e09a7af769-70940c947b4mr13919521a34.28.1722397464132;
        Tue, 30 Jul 2024 20:44:24 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:1cfb:e012:babc:3f68])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70ead81230bsm9093008b3a.120.2024.07.30.20.44.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jul 2024 20:44:23 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?= <nfraprado@collabora.com>
Subject: [PATCH 0/3] arm64: dts: mediatek: mt8195: Fix and clean up xhci1
Date: Wed, 31 Jul 2024 11:44:07 +0800
Message-ID: <20240731034411.371178-1-wenst@chromium.org>
X-Mailer: git-send-email 2.46.0.rc1.232.g9752f9e123-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi everyone,

This series fixes and cleans up the representation of xhci1, whether
used in USB 2.0 only or USB 2.0 + 3.0 designs. This work is a result
of discussions from the original Kernel CI report [1] on xhci1 failing
to probe, and subsequent patches [2][3].

Patch 1 explicitly disables USB 3.0 on the Cherry design. The super
speed pairs are used for PCIe instead.

Patch 2 does the same for the Radxa Nio 12L.

Patch 3 rearranges the PHY assignment such that the default links both
USB 2.0 and USB 3.0 PHYs to the controller, and designs using only
USB 2.0 will override the PHY assignment and disable USB 3.0 together.

The first two patches are fixes and marked for stable. The third is
more of a cosmetic change.

Please have a look and merge.


Thanks
ChenYu


[1] https://lore.kernel.org/all/9fce9838-ef87-4d1b-b3df-63e1ddb0ec51@notapiano/
[2] https://lore.kernel.org/linux-mediatek/20240711093230.118534-1-angelogioacchino.delregno@collabora.com/
[3] https://lore.kernel.org/linux-mediatek/20240722-usb-1129-probe-pci-clk-fix-v1-1-99ea804228b6@collabora.com/

Chen-Yu Tsai (3):
  arm64: dts: mediatek: mt8195-cherry: Mark USB 3.0 on xhci1 as disabled
  arm64: dts: mediatek: mt8395-nio-12l: Mark USB 3.0 on xhci1 as
    disabled
  arm64: dts: mediatek: mt8195: Assign USB 3.0 PHY to xhci1 by default

 arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi               | 2 ++
 arch/arm64/boot/dts/mediatek/mt8195.dtsi                      | 2 +-
 arch/arm64/boot/dts/mediatek/mt8395-genio-1200-evk.dts        | 2 --
 arch/arm64/boot/dts/mediatek/mt8395-kontron-3-5-sbc-i1200.dts | 1 +
 arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts         | 2 ++
 5 files changed, 6 insertions(+), 3 deletions(-)

-- 
2.46.0.rc1.232.g9752f9e123-goog


