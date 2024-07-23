Return-Path: <devicetree+bounces-87458-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D84AA9399A9
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 08:26:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8BD751F223F6
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 06:26:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE40513C8FE;
	Tue, 23 Jul 2024 06:26:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="iujPVvwx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381F213C838
	for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 06:26:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721715987; cv=none; b=nxcyeGfGGZZW3rWWMOutIQU2TLJupCEGUC8WgbOyWj0omhuBvoXrbhVwXKIeQC8BV/JOYN6LjXo9VBBYPh6SXObe/3cjklnCHen8byNU447rBIZHqoFbTZQRNRXx1DcfDIhNZpulGtXTecAo/cQ6TLCrHCW1TMpIfl07Un7hWkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721715987; c=relaxed/simple;
	bh=4HXsOMwTno0opK/7LHK4ZwGkW+q70QUTzcbDMN46rlw=;
	h=From:To:Cc:Subject:Date:Message-Id; b=DIkqjpXcz1GA2PVuQOH25xAFh36PeCHavEHtksesCM9OhDXh5K0IsLwCd8wcBUtjtKpKDmmJ2JyNa3pPW62lYvKPnF1l8AzP+qIcm0MerezARikABMQiT5O5Y4gbds9p8k7spRcwTthGQQsgK+8jex8uN400fzZbq31Pn2862uA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=iujPVvwx; arc=none smtp.client-ip=209.85.215.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-6c5bcb8e8edso212136a12.2
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 23:26:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1721715985; x=1722320785; darn=vger.kernel.org;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v6SsFIYWxstbmDRzW1IT5LqdPqdbJ83bJMDp+89ci+w=;
        b=iujPVvwxPkh2kHCEZ6M9ef26yvlvs14xMqxB5BJTyvrrQnf6sz7JwWeuNzgqv+vYg5
         X1PruYEKXRqzQAH+10ZlyR9UR3dZOPkGWM9qij8b4/YiPB6bCqKmsciB0xKEJCZW8CVc
         ASa3hEqmo+5Qmpiy6juE095H0xMwbjHIiNhsow35595q9TCDypJLPc8W2vZZTOYZyMGr
         Ls1S6hYttpSd5cwpdsK5JI2YW5LgPWkwzGTwMQ49xuxBCulkGJSc4tdLz3SKewMg2eyB
         Ni20s9mui5u08KVPDhFeEIK5qDt2EGH/j7M53fNKWhTojZKQ3kvyM8YOpS9o0PC7APCZ
         yIEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721715985; x=1722320785;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v6SsFIYWxstbmDRzW1IT5LqdPqdbJ83bJMDp+89ci+w=;
        b=fTYJSubeScvMCIpkb8FrEtoyVlUsXDdG6wWwjphMiEhh9aoAoJs4jxHQem5xqulzLu
         4X5VN+PUkaa0UT9q4Cg0wibsMsko6V+uEgPcds1HgTNQrHEAldUy4iEzhFvE0K5apd+o
         CJ94LuqR+FzdHlvkMKsG8MlR5R/prWe+W2p25LWjQL9S1kmSyUAsKF5fx4OUWfEZCl1C
         POaDtD/v30Z2j6E63wJ9Kdw79GEKLlNQU2RKcUbTGOD++o3hzoMVLyUoO5tvxpUmCEoN
         j1lvUngB+gvE9kEuvAiQ/77Nr8yhYdmNBl0/3J4yvd5Hlbyy1X23fKQlPHTFw0xk7ccD
         xdGA==
X-Forwarded-Encrypted: i=1; AJvYcCUXgxmICe9jSGAfTUW2VJbxe9tbpcgcMde2vVtZJMeIXNoex8+4ap3bxd0eF1qHGD0Sixwy0kI6iHLeJKV6s3TgDztcc+LhxJn0oQ==
X-Gm-Message-State: AOJu0Yzh2D1vS7RhkeosWwOLz6kQuigXN7ZeZ4BkW4lpDgR0BDopGWh0
	pA61usUw4k+/MWGwgRwWl1nvq+Tlc2Yr1/+uiLtAcTgS2Pa2aP1jwWipe2/h+bQ=
X-Google-Smtp-Source: AGHT+IFMaHyHBNYiozxEEWli2Jwj4FXXP7MQxh6eCefMVJIrwf06PEaQ158LGZWjwEceHa+RuEv7OQ==
X-Received: by 2002:a05:6a20:918d:b0:1c0:f5c1:8083 with SMTP id adf61e73a8af0-1c428681001mr13305601637.41.1721715985602;
        Mon, 22 Jul 2024 23:26:25 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fd6f25ab47sm66351465ad.45.2024.07.22.23.26.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jul 2024 23:26:25 -0700 (PDT)
From: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
To: neil.armstrong@linaro.org,
	quic_jesszhan@quicinc.com,
	sam@ravnborg.org,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	dianders@chromium.org,
	hsinyi@google.com,
	awarnecke002@hotmail.com,
	dmitry.baryshkov@linaro.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Subject: [PATCH v4 0/2] Modify the method of obtaining porch parameters
Date: Tue, 23 Jul 2024 14:26:13 +0800
Message-Id: <20240723062615.14796-1-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

The current driver can only obtain the porch parameters
of boe-th101mb31ig002. Modify it to obtain the porch
parameters of the panel currently being used.

Also switch to the drm_connector_helper_get_modes_fixed() function 
to get the porch parameters.

Changes between V4 and V3:
- PATCH 1/2: No changes.
- PATCH 2/2: Modify the return value.
- Link to v3: https://lore.kernel.org/all/20240722092428.24499-1-lvzhaoxiong@huaqin.corp-partner.google.com/

Changes between V3 and V2:
- PATCH 1/2: No changes.
- PATCH 2/2: Keep bpc settings and drm_connector_set_panel_orientation() function.
- Link to v2: https://lore.kernel.org/all/20240716121112.14435-1-lvzhaoxiong@huaqin.corp-partner.google.com/

Changes between V2 and V1:
- PATCH 1/2: No changes.
- PATCH 2/2: Switch to the drm_connector_helper_get_modes_fixed().
- Link to v1: https://lore.kernel.org/all/20240715031845.6687-1-lvzhaoxiong@huaqin.corp-partner.google.com/

Zhaoxiong Lv (2):
  drm/panel: boe-th101mb31ig002 : Fix the way to get porch parameters
  drm/panel: boe-th101mb31ig002 : using
    drm_connector_helper_get_modes_fixed()

 .../drm/panel/panel-boe-th101mb31ig002-28a.c  | 22 +++----------------
 1 file changed, 3 insertions(+), 19 deletions(-)

-- 
2.17.1


