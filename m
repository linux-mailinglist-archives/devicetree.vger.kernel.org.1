Return-Path: <devicetree+bounces-251377-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A2014CF287C
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 09:52:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BFD4E300A1DB
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 08:51:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAD9A328603;
	Mon,  5 Jan 2026 08:51:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MpOFaPPq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9338A328263
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 08:51:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767603093; cv=none; b=dtUls6L4gpW9G2MDMuyUVlnGjQSdY/xn2uzpxTaOpISOmPNVE0LCHHbzu0D/RQBYUA9bBCC67iuJmFKn/FayY4ePj3c96iGSaq+gMZok81CrzZKCbBGEns3E84JAvqMzGjmB7i456jCRfkKJclkVLhPMUPhq1ytUVRD3neHrp+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767603093; c=relaxed/simple;
	bh=itcUwean7UbvHQ+5/h9YYVCyXLTIelI0ikVV2LFiJKY=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=jt/G2LottjL/S2oOjuJtlM8oMLLhRrrGIrNgPW9Y+dqFI3nPeFGSwLoUv3T15mCjxvgk2IsL5SO72KAnMY/9QNYxQLol/JgcMsvIoQRLdis1WjChLM1Y8VdTqyhW6I+PBqvXjvUA/pc3dg6ppjUZ0VdpDRoTwrdKyZfFWXw8RFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MpOFaPPq; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-34c3cb504efso15575945a91.2
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 00:51:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767603088; x=1768207888; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Dl3uiFs67UDa8ZibSp3TCnzqWfwUKgTkl0JL8TbUXMo=;
        b=MpOFaPPqKVIhWdfLkv4vdHBUR3WuxizQBiP5B0Z00bxZwyoNaTdCxq3WmFg6dD7XHV
         jDhpQlg/t579Q+hdNtp47fq2M9mOPAUlrrCqYib0wSbSRV+y3ercv1qlovGCzWJqmVzr
         RsE1BF6K8+6MzGNCPEYSse9infsWRNhS4BSKW/R4xCuKnmTIcLL7OqQJLQxIadsTUPhy
         2RNecOFzuiTgVZQOVGmgRy+DEKlATpMCFy+7Qns2MUfua0a1J1TxRsoPIghnCRsx84qT
         9SD1R1rVdVg8Ij3acN8RvOA8kbEuTiXWY9Vw3lj64Jx3pMO1+mJFVIpXT/igN2C9i2p4
         RVJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767603088; x=1768207888;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Dl3uiFs67UDa8ZibSp3TCnzqWfwUKgTkl0JL8TbUXMo=;
        b=SdkWsgCELC4NQOoE3yg97WkG0MnLr+i3YEaEE7HCf1RMduTawbBbfVB6F4OV5tcmAb
         +T/LROYPt2TiRGTHtXsDFF5zwcJc3oFU/XM3SojPmHK6r40vgCR/NrsAwN0QuYujMST3
         q9v8cyCOPLI4Qra2ni2qBLQmgcMiHy1pOhgsrsWsb5BdNdBp33NOP+pqJkMxJX6RKJQL
         1gy6EqsWiMHvMsn5bJK+cRsTYhV4KWaAUNbRpiBKrvT5ymxHAEwyJqjGBlbEvBGl5iXc
         5Vxf/4RxKSbd5NrEmovSVnlk9RWmKc/hOYphzDPLv36JGZYyORvio2I+5A9sbjJOCh6g
         aNwA==
X-Forwarded-Encrypted: i=1; AJvYcCWRef3FG8Ttt6kuibRgUQ2wZkzDI54ulfeHpixejMWqvSAn5wViPhiHvBmovEuP5Q26f5kFrIgRICKK@vger.kernel.org
X-Gm-Message-State: AOJu0YzJsaU/ARf7Y3FKcgMFcRB3A8simBJNl85hzbU9rYSYuiliEh3V
	1g9p5WAFVBsBpsBdOVtXrOLoXuD5N+2a1HZ14sUZImc6/nxB6zxZSrc+
X-Gm-Gg: AY/fxX7qR8UhMe3iEdryVBmRRgkxqEM0lAlIiNGi/iJ5QZtt3furZk7FMkCo9HdmOhH
	6fMlXv4pMipXIUHCQw25UWlVIB3BXI6Cwttf1+m/dkLK0hl3NNC3/mkuGpvXcRhWwByV/ujwQi+
	or9TKMvP07b6ckVuE4F2v1UQBLJIVh3CWSTnVi1v1i0WfzRopHnNHucQSUclfdIBHvD3rKc+40W
	Yq6dpttkp/y1WHSsoNarSfq5l4Skct+cCjMKS502k+DNnXS9ekaX0WIhSmor/sXvuwkoMBImvNU
	J8B4FQam5C7dKBk6ZldXCv05A4nm2l5OXbOiDLhWFAtnpuyAckNd1oq2+N5e/Q9I5upyBXuG0bk
	PGOQpNTK0JbypUcnQcuSJS4Q2dzh6drKV/ct38128TUUBuEzkv1SmDBlqQV9AYfxHDN8rKX3O7O
	Di9LXCDozPgGv/wba0+VzWynQDTggVZ47e0vNU
X-Google-Smtp-Source: AGHT+IFv5GpgGolY+Hm971OnXPqumtM8dOJ/xZWxT5pLM3JhzOyMQkgCUWKBDEgNNeae53lKPk0A8A==
X-Received: by 2002:a17:90b:2f05:b0:343:a631:28b1 with SMTP id 98e67ed59e1d1-34e9214e781mr48976231a91.16.1767603088314;
        Mon, 05 Jan 2026 00:51:28 -0800 (PST)
Received: from test-HP-Desktop-Pro-G3.. ([103.218.174.23])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f476fab12sm5631951a91.5.2026.01.05.00.51.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 00:51:27 -0800 (PST)
From: Sudarshan Shetty <tessolveupstream@gmail.com>
To: lee@kernel.org,
	danielt@kernel.org,
	jingoohan1@gmail.com
Cc: deller@gmx.de,
	pavel@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-fbdev@vger.kernel.org,
	linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sudarshan Shetty <tessolveupstream@gmail.com>
Subject: [PATCH v1 0/2] backlight: gpio-backlight: Add support for multiple GPIOs
Date: Mon,  5 Jan 2026 14:21:18 +0530
Message-Id: <20260105085120.230862-1-tessolveupstream@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi all,

This patch extends the gpio-backlight driver and its Device Tree 
bindings to support multiple GPIOs for controlling a single
backlight device.

Some panels require more than one GPIO to enable or disable the
backlight, and previously the driver only supported a single GPIO. 
With this change:
 - The driver now handles an array of GPIOs and updates all of them 
   based on brightness state.
 - The Device Tree binding has been updated to allow specifying 1 or 2 
   GPIOs for a backlight node.

This approach avoids describing multiple backlight devices in DT for a 
single panel. 

Thanks,
Anusha

Sudarshan Shetty (2):
  dt-bindings: backlight: gpio-backlight: allow multiple GPIOs
  backlight: gpio: add support for multiple GPIOs for backlight control

 .../leds/backlight/gpio-backlight.yaml        | 12 +++-
 drivers/video/backlight/gpio_backlight.c      | 61 ++++++++++++++-----
 2 files changed, 56 insertions(+), 17 deletions(-)

-- 
2.34.1


