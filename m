Return-Path: <devicetree+bounces-65948-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C2078C0BB3
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 08:50:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B63721F23CDE
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 06:50:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED9631494D0;
	Thu,  9 May 2024 06:50:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="G/VgbM0c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CFAADDD9
	for <devicetree@vger.kernel.org>; Thu,  9 May 2024 06:50:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715237432; cv=none; b=TyhARGP70aAXpBPC3hr+oZh3qe0iH4hX9rlxVwuxPV6AVgXV53KlOyofjW1FxCU7mEf0OVlnNSjswKUoymF2ctnJlbcsQNrp6kDiiBCj1lqUFRhGRVv/kRTSv8e4Rshx4Wh+1m1ZkOXt4znTOnUUhY0X2SL2gDjwuIIuuQF2m/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715237432; c=relaxed/simple;
	bh=UGxdwghxCgiKyxIFDTHz3NP3FPdZfcDQAcxGu9GCCyI=;
	h=From:To:Cc:Subject:Date:Message-Id; b=pK1TMASFaW1+SJFT8ZzoxtG6im/7fWejCZTFTCJrP+Fm1iaeHNHYGt/tf8BC3opX5WzCp2hWF+1cpIvrJXDTeYMLhd6KEvskblBLLdhIwIqYuRDUB+NGyon8dm7uycbSMfG83kODePVe/WEm9RkTYt/DAtD26IA1jJaXrXjjlTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=G/VgbM0c; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-6ee13f19e7eso543218b3a.1
        for <devicetree@vger.kernel.org>; Wed, 08 May 2024 23:50:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1715237430; x=1715842230; darn=vger.kernel.org;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/JUD6JeUeqy4EDOMZvaUaU8rJSme+do2VQmFMoN9eP8=;
        b=G/VgbM0cM7PLjHeQCTj3EEaO6+kAqfkreOOQEyEselHehEtLTSp2eyxGxDtJE1g894
         yRJeOcS9sJNwX3i5BcE4MGZoQxmRk+AszWeFueQdDPyaXRz1+PnE0eKRj+kF017vZ72o
         5GsTXSUIW0B7Xww99VVyTu9G7KNjOTNkcAdxu16MYPf7xk3AEkhjMAeJEBX6spLEWWsf
         DG4v2PvNxK9eznTwVwhx3ijkIrn3jvILebiATPOcPfEY1b2pYWejuWFLPU0QfUMZlUrF
         A9Y0ciRe5fhjjse3NcxyJz/oymR7DoqL0Vc4I9b/kV/kbCD0km6m1dh6B9p8OKUXOspu
         6mWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715237430; x=1715842230;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/JUD6JeUeqy4EDOMZvaUaU8rJSme+do2VQmFMoN9eP8=;
        b=TxWkkG4yW7daM1634lj9838NxTyOZgCb2h7OiQuWsWlVWK4luCIEhT2euhTjOXUqXe
         bwzjt0WaOf0TwHYkVhfirR++dNrY4U4HiSRmttS9g1wfdJajHoNTJOifP/JHuLgNUkvm
         hTTSdvzCTEeNDuNJNd3cFh0rQFgvsGHSa7LbXF15yNBkv9aesHC0aQeohUKUC+XYsYjm
         k/ZT3bz2wyPfXyBxRV+FmLL/CGegsRcahv7D+X4R2Jks1v6cPIHOBoOQLaUe4BpqBDiq
         WKQvvw9BNzzZxgU/5x6E41DY5+/BUAMIsZ4P3l6vs8RQmtjZTmXpWls/ni90ZSRbh5rI
         OKdQ==
X-Forwarded-Encrypted: i=1; AJvYcCWWG4ZmKFckznBW8z0WN47VQNbpT/Np+Czo1wn7dBbSCpTjqoLb5NXdbk6ttjLWSnMzKqduzdGLG/iFUDLWtz1NN/Wy6hyxXj5akg==
X-Gm-Message-State: AOJu0YyeOPqb5NO0/29Kk0PJZt/9Wnhu379wS0YGaTsapzy0SM2+EaEN
	sVlZ6FDPgw4dN/AOKny1lYm6IeaHrNt8ffStz3JXNNTanX3muT2UYWsgXPjbbfo=
X-Google-Smtp-Source: AGHT+IGIlroM64N0tzcOuwqZINRbt4eE7exWvM0jiOPyVjAiOkfOGMjYLCS5hbxf7kIlKYsqyYhiQQ==
X-Received: by 2002:a05:6a00:1b55:b0:6ea:7b29:3ab7 with SMTP id d2e1a72fcca58-6f49c27f72bmr4931054b3a.23.1715237430274;
        Wed, 08 May 2024 23:50:30 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-6f4d2a84b6bsm633939b3a.74.2024.05.08.23.50.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 May 2024 23:50:29 -0700 (PDT)
From: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
To: dmitry.torokhov@gmail.com,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	jikos@kernel.org,
	benjamin.tissoires@redhat.co,
	dianders@google.com,
	hsinyi@google.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Subject: [PATCH v1 0/2] Add starry bindings and driver
Date: Thu,  9 May 2024 14:49:57 +0800
Message-Id: <20240509064959.23550-1-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Add bindings and driver for starry.

Zhaoxiong Lv (2):
  dt-bindings: display: panel: Add Starry-er88577 support
  drm/panel: starry: add new panel driver

 .../display/panel/starry,er88577.yaml         |  59 +++
 drivers/gpu/drm/panel/panel-starry-er88577.c  | 444 ++++++++++++++++++
 2 files changed, 503 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/starry,er88577.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-starry-er88577.c

-- 
2.17.1


