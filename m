Return-Path: <devicetree+bounces-117524-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C539B6CD7
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 20:25:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2B636B213AA
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 19:25:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 644D71CF5EF;
	Wed, 30 Oct 2024 19:25:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DARFrT0J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 833CB8C1F
	for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 19:24:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730316301; cv=none; b=cz9gdRk/zSU0H/SgTbStVUiNZjmrx0ik4N/5PiAfUsN8O63icUZshAI65iy+YRkNHuaNNFkORMczu6hl+o0ar3waTxaSnzE/BL1Xi+DNVgxWqUuxRsJZegcI+wXZ8mEmN9ACpfSwZ7z7Ue9dL4zWYEIXibKAb/q8nRFY5dWD8uU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730316301; c=relaxed/simple;
	bh=J2i2Ev7zPulUT07e3YOYtZnXJRVS2mY7sqnAQ34tueA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=AW+R3ZqgUF2kuFFgPVP57PdfHDSErFbLLq+2Bgh70Dmh0mzdI7SQYFqTWiga4fZM7yxUNZEJSb6A6ntgIaTIaEZ4y6Uy93C4KppzoldbgKEW4c0Ocw0GDQdpToAXW1B/Mezn24RhyTfS8Ozx7rUhS67A5/7bm9slZxE+3ZegLug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DARFrT0J; arc=none smtp.client-ip=209.85.167.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f174.google.com with SMTP id 5614622812f47-3e600ae1664so138896b6e.2
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 12:24:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730316298; x=1730921098; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HLeVcpMs22RhQ9P+S+WzLz2UKXz7BVsEnqwj5SzCpTs=;
        b=DARFrT0J2QRdiy6kAnoh/JA7QadCG2F92tX6mae+HJYNB1FwRAgMVOmm6hhpspDME2
         WxGmR+lh44ZiKuV3N4YARZXsjvh1fffEMJhKYM4Yq7xwjDXbkCHHV4BPPj6YTknVmMZq
         fuu3D0RGXzOu9NbJvZgPhF0KvSfWwQre1c9JmCTzBjYBVwFzwhPL2nMJDdBt1ovzjQ2/
         F2Y/WknSa8IQXdQoAcKnS1+uttZHVhI3Hv8SjvCuTS+OA2aUiryYfQTD5pPovFP4Hpy2
         qOJtxHhOUZrGZRL2ewRouXnZijFFvXK56q8oMZM3VvMppxmBNuDVpFambKIYCDo0lDF2
         Zj4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730316298; x=1730921098;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HLeVcpMs22RhQ9P+S+WzLz2UKXz7BVsEnqwj5SzCpTs=;
        b=uaLy20DBGQD0+ioaamZSDbOY405ycYYg7lUPgDVzQ3LjY43fL1N4OSBNG53ixyTKpI
         fhrgey02hxwzSaeVNaijBQ9RzbeH3cyG1w5bDlkQQ154CSw9y57Kp8l6vqkSmUKbSUqp
         5f++HqGFzdhf1wEx9bG9ABqwOtv04/ZNG/VgT+4LhxPPTuP1VMFqVgGq9TyrjeQIYhpB
         iu1jMzfiY4HrZj+tihvvo/Kd0VUSZMccrFWdpumPEMkLlbax+MIT9UKYY+k+pWO7iC/r
         cbYfEWOSrQtLrGxxFh1GtwIuigFrhFos4pA+EsL0HnHNaHIY70jQQrGw2+WrVAoDZWV7
         d/Kg==
X-Gm-Message-State: AOJu0YwW442TRVx/G6G0f46jEBT0iQHBnkJqC8xzXXFt+ieBBbJbcks/
	IzvYYh4p3HVpukhfsywhSfIZaOhpl3PaKueKEToZvGcpT3FwaVj9
X-Google-Smtp-Source: AGHT+IFSK9dQOa/K/bFoWGtT3qo0L6EWNVL9/zH0xG+ffRsMPAJrOCCHCSDJLTSDPQkU5cUNth0V6w==
X-Received: by 2002:a05:6808:2117:b0:3e6:1513:4c04 with SMTP id 5614622812f47-3e63845ad6cmr16077828b6e.20.1730316298576;
        Wed, 30 Oct 2024 12:24:58 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3e63248d3e0sm2689204b6e.24.2024.10.30.12.24.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Oct 2024 12:24:58 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	honyuenkwun@gmail.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 0/3] Indiedroid Nova Audio/HDMI Updates
Date: Wed, 30 Oct 2024 14:22:33 -0500
Message-ID: <20241030192236.839105-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

This series is for a handful of fixes and updates for the Indiedroid
Nova. This series corrects the device name of the audio card to stop
a kernel log error, and adds support for both the HDMI and GPU (now
that HDMI support has been queued for linux-next).

Changes since v1:
 - Corrected HDMI port from mini HDMI (c) to micro HDMI (d).
 - Explained why I enable hdmim0_rx_hpdin in contrast to the other
   rk3588 boards.
 - Split HDMI0 and GPU patches into different patches.

Chris Morgan (3):
  arm64: dts: rockchip: correct analog audio name on Indiedroid Nova
  arm64: dts: rockchip: Enable GPU on Indiedroid Nova
  arm64: dts: rockchip: Enable HDMI0 on Indiedroid Nova

 .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 58 ++++++++++++++++++-
 1 file changed, 57 insertions(+), 1 deletion(-)

-- 
2.43.0


