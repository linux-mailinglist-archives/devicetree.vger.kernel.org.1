Return-Path: <devicetree+bounces-222686-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D0EEBABE61
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 09:51:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 23A573BE18A
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 07:51:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E00F12494FF;
	Tue, 30 Sep 2025 07:50:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="qB4Ype2Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 861E11D516C
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 07:50:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759218658; cv=none; b=HBgPz3LJKeix89CjRNm0ENvAIneO6BzqeXID5EaPNazj0IdXUrC8LyauJjCEjZklFX57Q/1pPrWuMg8qTtpRSzgYg6A6fVTbNIwjdQQkXtRAApl2ELsXbkJTsPV1gVbFhVZfXQCCtTrYMERNg8cfocb43y1OsC8ajprfMFmjqFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759218658; c=relaxed/simple;
	bh=ZqUTZJxdJskdJMblbDO5abj9EGJDm9Q+viM3LofYUAQ=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=DIPgxHo49lZ027SqZzLCZQM9hXt3DIpq/cHmyaE1hJYTMuitrvq908t+djiataPQJHNLalHSfcZnimiPdexFblhsRnUhDLd+xOGKuPu4PKlkTiNHNRH1fRgfzxnuL/xxlFR21oqu4bV/HRvlGv81i+/bi03VyM6hsKRAyNttDmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=qB4Ype2Q; arc=none smtp.client-ip=209.85.215.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-b55640a2e33so4391871a12.2
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 00:50:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1759218656; x=1759823456; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0RGErcP5iIWaAYOH1EdzfokXK7+mdWRIaYg5XseTui0=;
        b=qB4Ype2QmXXzWll4VVlYW/koznYU6OIXokjODwiqI0sPqeykrpp4zYGF7zhBepaMSg
         FlTcftZtT9ZEhPrvty2km3bg6NNzAOtHPu9hiphTQKYS9/3+9f8W1AZqvnds7RqGjhtp
         qBg4UivNyRrbXQCqhyLvvOFg6ci2DEA2BOrKVcA/T/693tizBP+bCY/k3iUcB/LmftOe
         zUfKk+avX3jhfpTJX5ZEYUXEi/eScB/ay+ZSwVumxWdkVuU7vOL9VqJm+BUrUOl9mj8Z
         TY7LdG98MtG/jxLN7cbw/qAg4rbGKmJ0u7HyYnmrVJa+nA0viQslXjMaN6kpWgEkUl4f
         7E2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759218656; x=1759823456;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0RGErcP5iIWaAYOH1EdzfokXK7+mdWRIaYg5XseTui0=;
        b=umabJ970FyaoCVvjN1bU7sai9m1ai3hL2yh6xocLqZdYowulyZImoQjsyJ8scGtFX8
         jzHUsl2lrKAgZ+cEFGt0G236CjnvdYH0APBNQqz7kwV4/Ma01Cy68QhBIDATc3hf1EIK
         joWA4yWN5HL58kDHdg2eQZYBtGylLgR31uHgYTCtA6HlaOUuXhICEW6qJvsqzUFeTxtH
         RLmC16duFnCxCcRzvhPDJvuWX6NKbakI4wonuDcjDa6yX7jYi0H9frGUbeG1TanIg/oM
         hL5FRAr+Q/e5x4RUCb5BQa+Qkfggfj8cTZ4KxP0o5OpWJlspKE0q6RI5ckD5pr6Ak+QW
         f9aQ==
X-Forwarded-Encrypted: i=1; AJvYcCUV+TADAyvhwj2yBZJZAsXqBKJXv1+q2gpUC6L8fwBc/KtUg82u/+DQ9UIg7+IP3/nDioRWYl+FaDkz@vger.kernel.org
X-Gm-Message-State: AOJu0YwU+AjIWeHubb0Fp000+/mX5qLu4yMacdjgwaBC5sEppHouDOfG
	E85juFTUeGH1vN6NUfIN0nnbXwCrGVZWgIowASXkl9rR/RPIluX7/zT1ZcywDSe+3II=
X-Gm-Gg: ASbGncvOyLwFsL5Twcph/XJzQqjTULPc5wIMr+PGTjFrQOz5Xf/onB47CWfy3qpTXXj
	V6LF/9npHbh/yWKQ7Ytt91kH2PLW2VuwAoNFWXp68IaQ464vWX6yfsqWsllhFYxZytpz5HCGtBl
	7yvdiYhXEcgCa02fWf+XFX0p/bFFuzgAIcO2KSBnH5zJJHeizZFBoxr0gF5oos44U9+Zo37N8aM
	pkKZIwZ7qZhhsUmAJrnHi/gxg500gamX3Miz9TYkZoto9v0EqcqUZs7PKv4pVH5fSn035tCql7Q
	zzPggeAt43HQRd0pAj0vJ2/rAI8q5fKPXtObV98cs5MtM0Avkak3+j/+Qn33Pdz03nLGfca7hms
	vuc6vg2hYEwsVuY/Oct3rKXVAERPWN+LzrxP7IBbXz9QZLIWyGMOja+Jn9pO9EU4UfCWTAqKpY9
	38l4JMKeGlP4GMBpLDnfYC76v+mnIG
X-Google-Smtp-Source: AGHT+IHkjlHtYzmiPHDe8EY7GT2BmQZoEPe0VhhME3S6IElawm+J6e6S+KLLCXGrXpgMSliALMEWUg==
X-Received: by 2002:a17:902:ef44:b0:246:a543:199 with SMTP id d9443c01a7336-27ed596f868mr225436925ad.54.1759218655779;
        Tue, 30 Sep 2025 00:50:55 -0700 (PDT)
Received: from dgp100339560-01.huaqin.com ([103.117.77.121])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed688223dsm152313565ad.86.2025.09.30.00.50.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 00:50:55 -0700 (PDT)
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
Subject: [PATCH v1 0/2] Add support for Tianma TL121BVMS07-00 panel
Date: Tue, 30 Sep 2025 15:50:42 +0800
Message-Id: <20250930075044.1368134-1-yelangyan@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch series adds device tree bindings and a DRM panel driver
for the Tianma TL121BVMS07-00 12.1" MIPI-DSI TFT LCD panel.

The panel requires multiple power supplies (AVDD, AVEE, and 1.8V
logic), an enable GPIO, and a backlight device. It is based on the
Ilitek IL79900A controller.

Tested on a MediaTek platform.

Langyan Ye (2):
  dt-bindings: display: panel: Add Tianma TL121BVMS07-00 panel
  drm/panel: Add driver for Tianma TL121BVMS07-00 panel

 .../display/panel/tianma,tl121bvms07-00.yaml  |  85 ++++
 .../drm/panel/panel-tianma-tl121bvms07-00.c   | 419 ++++++++++++++++++
 2 files changed, 504 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/tianma,tl121bvms07-00.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-tianma-tl121bvms07-00.c

-- 
2.34.1


