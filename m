Return-Path: <devicetree+bounces-229778-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B8E7BFBE88
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 14:47:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 921F04E5235
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 12:46:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5E983112DD;
	Wed, 22 Oct 2025 12:46:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="r7+ud1JN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC482344044
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 12:46:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761137200; cv=none; b=JOpry+O+eBZae8E5JpQDjRHzSu+TSBTa5c2hz3WtE9HUsCzPzs0/QiE342Il/roJ209Ovz9rw9kiJg4YZYB375mo0r3BD5v/1NK44ENFuqhD9OCle/DBqwzUEErk0DUNO7ASRkmWOk16o4/cARGLpLz9xrqAVqIPTpaexk49GGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761137200; c=relaxed/simple;
	bh=1SGorwE87TZA06wTMH8UPqXD3jRMotu6m8raSOuoLSI=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=cqweV04PTcPI9hgXitUiYKlukkcwPaYiJMCVLzOy8saReXXtFBT/MUTt/jmOgaW8OOVS2ZjC1VP/k3zqyWEjPge6zIBaIiT4Emrrimnz8pUN6uitSxWcFOf6Gvp3W+kTkd98yQo5SYM3KJYFt944chuiEoHmi4Y9zZKaeirf1sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=r7+ud1JN; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-78f3bfe3f69so5955891b3a.2
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 05:46:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1761137197; x=1761741997; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DYmui300xmsOqVGhM5Jgeku6egbsvMIV9ovTXTcHC2I=;
        b=r7+ud1JNvmU5WNq4+gwcGTJYfoHxVVUthSnNma7nOwz9t63glCXXoBuv3p/1RUK9hd
         ux2/nTntwVGjQUN7momOtK7g1BfSASuAE3Kgo03hOwTLyIcrxozjoVEEwYHHRodp3KiS
         K7MybnoFLqfnCDPi+pzDOFJ5t3xS8ggj2B/e6hyn/Vm3BuZ8uk8zUmNo1HWghuWool1N
         ZC9L+rUjqNHo9KS8quHeOt8G7J5IHMskbC5k9aUMkeDHUOKLwFkLVNCQxs2KOuNoHXOR
         8RzrhaMT3ncUz/FOmhnkuc6G4sZStZhXNsS6LQbBOtUCwz0b4GqDfID32Q9oaR1SXcHU
         oqNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761137197; x=1761741997;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DYmui300xmsOqVGhM5Jgeku6egbsvMIV9ovTXTcHC2I=;
        b=wh7m4wiDIpV6/MRFGY0pZCRlllDsPTfMAVlVPbM6TaiVQDkkzjNDBBtH5IPzrnwY3g
         0AxzCJK6v75R2LhCbvJ0JFe4lb8y/wiQP8hcocNOxa+qXI3fA0+89NHA5hmNwMPSxS9e
         odthgYQHzbDzL1VIPIHlZuBH1lihxfJBtFET0LFkJEgl9E7SfnMyL3bfSJ/X4hUUt0au
         4wKTXmfMbM3wdf8QSOqV3Ygh/nFRSTq/5C274ZybzrVlb8ZihrNyTHSVtiePVdvJAmpH
         WVBneNLC7YcuTXXji9oKfxUH5faZdG5lsY1QYqBYnfnO1PgiNm426dFRuYPf8PNM62pI
         2faQ==
X-Forwarded-Encrypted: i=1; AJvYcCWl1ofZKF3jMnotUyP/Dz5j5bG3bwqt2+lI35TA/10a+wkF90pdZJHLmY8mibLwMuN8tBOxPtw56Ung@vger.kernel.org
X-Gm-Message-State: AOJu0YyAMF9TE0HdIc/m+oAGd7WbZhdz6nO8UU4HjZqJod8ayjLiDBK4
	PbjzU6KyITgEEXMEsJl52leb18+WtzzZ4GeZr3oOCwqjwbCMNkSDglsSG6G3Xo7c84n2/n2iqDt
	xkLFw
X-Gm-Gg: ASbGncvY+GueHV8hXAAj6snJQjkJ6ZSRuzVYKrO0aK3EG2VXezaIyrNvNd4+pBxYHNm
	9odqA9fo3PsiipDW6dlyfbjr7a5S8UErfE+zbqT0PGfHSyf3CSTCtYMg3XjlNF+pmP34qmnIIzM
	N95Sgc+6Ps+bLFU5mvnb1tD/UEidu3STxMrJi/bIClRXN/f/C6C8oGN4caoyQgd5Lp8QBQCchs8
	WTDKVlEy5nuBPwnhvHd6AoFv8dB41K1+MV7As/eiCzwfRYAK4Gigdy1GpfaOvKZXC7RLIwa3SY+
	5CThTKks6f5dxbJCTHLiQdkKetVz+Mq41mBlQttDBk3qms4zES4to1u+ME5/dxv/XuB+0FocgIx
	wflMH3cwySm7iQN8f4nF1knR1JsTE8cojP3PWKRZ0UEv7DEesegwd0tjozdsc5968iHx8LYBpuE
	rODiguh44zKrxmE9AULTvDN/aJyuAxPKioVMW1Ti/7oGxTlRnvkp3S4F0dnA==
X-Google-Smtp-Source: AGHT+IGSJSxaOUKpYiZ60vtbFdEMCWPb89iyz1DbTd1qZJyxQRWM+oUSWq9CrrRKfdrQfK3NOdLXgw==
X-Received: by 2002:a05:6a00:3cc6:b0:781:239d:f2da with SMTP id d2e1a72fcca58-7a220acb30cmr24901864b3a.31.1761137197031;
        Wed, 22 Oct 2025 05:46:37 -0700 (PDT)
Received: from dgp100339560-01.huaqin.com ([103.117.77.121])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a23010e25asm14363935b3a.56.2025.10.22.05.46.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 05:46:36 -0700 (PDT)
From: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
To: neil.armstrong@linaro.org,
	jessica.zhang@oss.qualcomm.com,
	airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dianders@chromium.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Subject: [PATCH v4 0/2] drm/panel: Add Ilitek IL79900A controller and bindings
Date: Wed, 22 Oct 2025 20:46:26 +0800
Message-Id: <20251022124628.311544-1-yelangyan@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This series adds device tree bindings and a DRM panel driver for
the Ilitek IL79900A MIPI-DSI LCD controller, which is used in the
Tianma TL121BVMS07-00 12.1-inch panel.

Changes in v4:
- PATCH 1/2: Rename compatible to "tianma,tl121bvms07-00" and update example accordingly.
- PATCH 2/2: Update driver to use new compatible and rename related data structure.
- Link to v3: https://lore.kernel.org/all/20251016095043.1694736-1-yelangyan@huaqin.corp-partner.google.com/

Changes in v3:
- PATCH 1/2: Fix DT schema error for `backlight` property.
- PATCH 2/2: Address review feedback (use mipi_dsi_msleep/_multi, move init sequence to mode, minor cleanups).
- Link to v2: https://lore.kernel.org/all/20251010093751.2793492-1-yelangyan@huaqin.corp-partner.google.com/

Changes in v2:
- PATCH 1/2: Address Rob Herring’s review comments and align with panel-common.yaml conventions.
- PATCH 2/2: Rename driver to panel-ilitek-il79900a and align naming and structure with existing Ilitek panel drivers.
- Link to v1: https://lore.kernel.org/all/20250930075044.1368134-1-yelangyan@huaqin.corp-partner.google.com/

Langyan Ye (2):
  dt-bindings: display: panel: Add Tianma TL121BVMS07-00 panel
  drm/panel: Add driver for Ilitek IL79900A-based panels

 .../display/panel/ilitek,il79900a.yaml        |  68 ++++
 drivers/gpu/drm/panel/panel-ilitek-il79900a.c | 358 ++++++++++++++++++
 2 files changed, 426 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/ilitek,il79900a.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-ilitek-il79900a.c

-- 
2.34.1


