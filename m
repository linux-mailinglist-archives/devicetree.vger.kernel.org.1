Return-Path: <devicetree+bounces-103888-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FF8F97C889
	for <lists+devicetree@lfdr.de>; Thu, 19 Sep 2024 13:22:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5971A287C1B
	for <lists+devicetree@lfdr.de>; Thu, 19 Sep 2024 11:22:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05A5119D064;
	Thu, 19 Sep 2024 11:22:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="iaYVu8xi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91E1D19B3C3
	for <devicetree@vger.kernel.org>; Thu, 19 Sep 2024 11:22:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726744924; cv=none; b=Sf1vtVneK/yzO313OvAF+DYyq8gg9GNY3HqlzYBTBGqpmfC0IlHr8wwKQuHN2YCryO6p0IvVt5Jt7q1LvYHIVNg7vbObkfsLXYAF845bAxF+Q9N82oi8D9kxzr/ifiZrrSmiwaQRjxmDLDXSigCSXrSX51aWJ4IayL5J+1f8NvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726744924; c=relaxed/simple;
	bh=E3fam2nEpgQzk4mj7Jf0hyrFh3Llx37Dri8WoDHeVQE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ZjUTt1PM+rCEYYn/niUHK5vMPQS5OvQOSqg/sRrvxWjDMsgqJkeUp77i1PqO82prmXNBCBuYr88sYq3+tHeJLDp/Qaj19tm3OPLs3EujJ+FG7Opy/l8wd1fWo0i6deluhn7Ww8v8QQ2CBqn9fRKPMrG65r15ExzE/W1/usbrTe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=iaYVu8xi; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-207115e3056so6625815ad.2
        for <devicetree@vger.kernel.org>; Thu, 19 Sep 2024 04:22:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1726744923; x=1727349723; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aQ260cFU2n88Cs877yJ03XX6qLLyk2MUT6bBvDZ2hiY=;
        b=iaYVu8xickTGbHuSavGgtA8NLH6xjSTRx4Hn6XQVYPXqtehtiJvqYs718Z3QHVAbzW
         DMgE6wY586f5HfHiO/shvK2drweWZcJr8qTFVhespv0lGBPGguJcjNWHHuJwVeNM5Nhf
         m+Qniw1i0lE7H/mdriBt/EU45tDhSRbnD4qOQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726744923; x=1727349723;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aQ260cFU2n88Cs877yJ03XX6qLLyk2MUT6bBvDZ2hiY=;
        b=oOySX2MXDvMJcYs1BOJi3qGUXT06QgJ5pNAP6JDHCeIntZE6PiYayTwLDf+U42B5Ik
         g/GhtO2j2GcTun/Ccd1gRpmmOnfyT8qEwyfVANabf6Rar5n79ns0+LoMGkw82iNuD9Sa
         XH3Ek9vZBM4Hrye9FfHF7FhJzHC5WPTm9IN+y3T/UrxV+YTxHHkL+y/chWqMB4qlBtrT
         HcWlkJtJm4cBKbaEghGIom/oFsMAr2tx0m3Hyea/15KSuO5sGbkieZNahKQ2e6/R+4Ly
         CflWABsasVn8zmb5dty10hxs1CBKRHhbOgwNyFgxIMmtxGn3+5WR+yj54fHPX4NG69wT
         5g0Q==
X-Forwarded-Encrypted: i=1; AJvYcCVdrAm/SgcRYi6rALBCJFH6UCfouzccC+Kb0dEgJz2WeJ4ex8lWurPYjY7SrgczahAEUgHqHaJhREbp@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2uEU8pUSiGqv3wCaDXVhYOo5JLf+SsY9VZ5dTWSDHOkBWN2NV
	gre4glQBAV1a6fGYOemuTCD9yVFvSJTpJPi7KnBmJKy3i0hVF9oPXJGMBsgxxw==
X-Google-Smtp-Source: AGHT+IFNsO6MH0t+u0d8Ht9omXf78SvBayyrpr2wZEpgMs/or4L27Xoz4HWkGuqF+rbIf1Jcb0XKuA==
X-Received: by 2002:a17:902:ecc5:b0:205:43d8:710f with SMTP id d9443c01a7336-2076e4df8efmr329353275ad.58.1726744922721;
        Thu, 19 Sep 2024 04:22:02 -0700 (PDT)
Received: from localhost (117.196.142.34.bc.googleusercontent.com. [34.142.196.117])
        by smtp.gmail.com with UTF8SMTPSA id d9443c01a7336-207946010d9sm78452115ad.65.2024.09.19.04.22.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Sep 2024 04:22:02 -0700 (PDT)
From: Rohit Agarwal <rohiagar@chromium.org>
To: chunkuang.hu@kernel.org,
	krzk+dt@kernel.org,
	ck.hu@mediatek.com,
	robh@kernel.org
Cc: linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Rohit Agarwal <rohiagar@chromium.org>
Subject: [PATCH v2 0/2] Add power domain bindings for MT8183 and MT8195
Date: Thu, 19 Sep 2024 11:21:50 +0000
Message-ID: <20240919112152.2829765-1-rohiagar@chromium.org>
X-Mailer: git-send-email 2.46.0.792.g87dc391469-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

Changes in v2:
 - Added a Fixes tag in the patch 2/2
 - Also added the missing compatible string of MT8183
 - Link to v1: https://lore.kernel.org/all/20240911071722.558960-1-rohiagar@chromium.org/

Some of the compatible strings were missed to document in the dpi
controller bindings. This series adds those missing compatible strings
of MT8183 and MT8195 DP_INTF.

Thanks,
Rohit.

Rohit Agarwal (2):
  dt-bindings: display: mediatek: dpi: Add power domain for MT8183
  dt-bindings: display: mediatek: dpi: Add power domain for MT8195
    DP_INTF

 .../devicetree/bindings/display/mediatek/mediatek,dpi.yaml      | 2 ++
 1 file changed, 2 insertions(+)

-- 

