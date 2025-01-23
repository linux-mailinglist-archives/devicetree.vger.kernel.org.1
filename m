Return-Path: <devicetree+bounces-140460-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C24EA19E8B
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 07:48:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0D34C7A5F2A
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 06:48:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B5BE1C3C1A;
	Thu, 23 Jan 2025 06:48:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="D7/6L80K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com [209.85.216.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7ED614D44D
	for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 06:48:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737614893; cv=none; b=U0yzoBoFTrRV4CChtbtiu4f4vsnCVkirGKhc3LkEePJLBZeUZeMeexy7KJcZrdi670D4wQIbVeM810T0u2lxJE9saoq7QDmCrf4FXMd+qNQKpb8I+sV9GoNGJFzPGIKap3f2A7wgpt/aNb4srY51IyeGX9cmxjUSbpwzsabmRrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737614893; c=relaxed/simple;
	bh=rBeyUlsllM5CmrczjqByP8u9qrrefEGxwXwqIDJLA7I=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=UicvJ1Topz26amp4lHAkxuq5eJcadgLen3PDZywtcbb/zDe1jeAjKS7uIsdytg+9QDKZb6ZeohwTu1fG5ixYDCn2AA52DJuVawb/A4TeqzTXS/fgUIT1L/vYcLZfPYl305LA0nEOf9OmPd2fM8UNatPnE+2tioq5j/38vOudPZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=D7/6L80K; arc=none smtp.client-ip=209.85.216.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pj1-f66.google.com with SMTP id 98e67ed59e1d1-2f43da61ba9so882467a91.2
        for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 22:48:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1737614890; x=1738219690; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ihO8X/Bibunk5mKcN2BnLX6WPk2+H0kbY5VGF+D42yk=;
        b=D7/6L80KN8z3NfId95Xb+eh+3PGuqm1eo3fGD3iDk5Eh0jtYv5W8X3ad8L7gdXB/8m
         797et9Mow6Eau1PDncaYnYodBJcwBVM9srJ7UwSwhmTntTzIFCUvOE5oqnLU4mXvxj3E
         tl/fr/GmVu+cqvudybN5A6zXrvmnL5Eg4PXIRzzs9ShtDQkHSvthPp5G1eSHTKPlujPH
         TG1/Q/hpfs9/JR0pLxnDZd21n5M0QL48cpciULGtnbHKgGzrxYSmZhfiBGQ59zdfW1ye
         93nC6aJtHKo2YF36Vjs7PmdeK7bisc/ilj94XTgWORw3QCHioab1v1YYewYCxyahKIMI
         FKCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737614890; x=1738219690;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ihO8X/Bibunk5mKcN2BnLX6WPk2+H0kbY5VGF+D42yk=;
        b=OO8JPnEG4LCcgvP5O9ldfNTW1V8ur8SPj4ef74DAMxR1k8tG7cTrMpd7r8Hilm6Ags
         xMymgSQfyFiqbH4/oKDYzfRalExPYttOUw0yeUYJhp7MiZER5bquvah4C1rx+SxPAcTE
         uIOMIiDlzRbCmb3zp9NOWf9yUW93GqKg/wp7pYx+zyD4HCWyBApfSZFGjh0qxs8O/zxa
         8NDm1w14QLisPBJs1ThwA7KpPG3pyDKfRpf4kSJoMxysXzrP85h4Q87GPhPCXIe0l+8A
         Zyc5Ha0PUybYhsebumLTGVIQ3bZleRGfCbziHPIy10etFyaJTwgo0pGdXYH0Gz33OaIL
         FARg==
X-Forwarded-Encrypted: i=1; AJvYcCXdT3rUBM31goC3KhlPGLi9jhYb6coC106kGMoQjIucJcVwVfmUUBg8sythvPHGw9mMmEux9/2cyTfT@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/ykN5ODLy1O53Ezb1Fbz8XjO5BVc0IWrTCDTS+i4jJMDK3Mk+
	PQRwMnN0HZSRrKm0g+fw929CWmrOuoKmS+jX8TV28MUVganFQZ/5krDtdvVTehU=
X-Gm-Gg: ASbGnctUU+xbBUV8QNWv4OKkiv86fpYwbqyoMHZhBdXUzHmM3FABz/J/KghZ9OfmBJx
	nSjvW/4DphgnOGyW6QZZZ/6XDYniMixyKb5ZxQNrXnVqDS4OLUlZBS0b8i140cxj3jQHeOZEq1F
	7WPEmjHS1OCJj/sgqo5yU2Hc/RQDqhF44d9CEi3o3fnxgg3WPn7rih3kvgy9aldK4z3uhhzW6cU
	/IyHxRlfP8iuRrg9+RIIQS7V4LGoMpE+z7dFPg9FH3nJkLQqD+ZAmQQAjwLGi/EIlPjilINEUJZ
	Wk0M8N+bssIel3GvnkTALsh0D34062LDaOPc4sXank6un7PvixX/
X-Google-Smtp-Source: AGHT+IG2nhLWzY19SrhP6ztMPfsB/clKVzmRCDCQniHVFDKX6lXFY0kbEQxUiFXyIHbXYuKJx8vKAA==
X-Received: by 2002:a17:90b:520e:b0:2f5:88bb:118 with SMTP id 98e67ed59e1d1-2f782d4ef17mr30067834a91.22.1737614890004;
        Wed, 22 Jan 2025 22:48:10 -0800 (PST)
Received: from dgp100339560-01.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-a9bcc323777sm11923454a12.20.2025.01.22.22.48.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jan 2025 22:48:09 -0800 (PST)
From: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
To: neil.armstrong@linaro.org,
	quic_jesszhan@quicinc.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	thierry.reding@gmail.com,
	sam@ravnborg.org,
	dianders@chromium.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Subject: [PATCH v4 0/3] drm/panel: support kingdisplay-kd110n11-51ie
Date: Thu, 23 Jan 2025 14:47:55 +0800
Message-Id: <20250123064758.743798-1-yelangyan@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Provides a single binding patch with correct alphabetical order for
both panels, and adjusts alphabetical order for compatible properties.

Changes in v4:
- PATCH 1/3: Single bindings patch for both panels with proper alphabetical order
- PATCH 2/3: Adjust the alphabetical order of the compatible attribute
- PATCH 3/3: Adjust the alphabetical order of the compatible attribute
- Link to v3: https://lore.kernel.org/all/20250117091438.1486732-1-yelangyan@huaqin.corp-partner.google.com/

Changes in v3:
- Link to v2: https://lore.kernel.org/all/20250117050410.933312-1-yelangyan@huaqin.corp-partner.google.com/

Changes in v2:
- PATCH 1/4: Add compatible for KINGDISPLAY KD110N11-51IE
- PATCH 2/4: Add compatible for STARRY 2082109QFH040022-50E
- Link to v1: https://lore.kernel.org/all/20250116130530.3010117-1-yelangyan@huaqin.corp-partner.google.com/

Langyan Ye (3):
  dt-bindings: display: panel: Add compatible for KD110N11-51IE and
    2082109QFH040022-50E
  drm/panel: boe-tv101wum-nl6: support for kingdisplay-kd110n11-51ie
    MIPI-DSI panel
  drm/panel: boe-tv101wum-nl6: support for starry-2082109qfh040022-50e
    MIPI-DSI panel

 .../display/panel/boe,tv101wum-nl6.yaml       |   4 +
 .../gpu/drm/panel/panel-boe-tv101wum-nl6.c    | 270 ++++++++++++++++++
 2 files changed, 274 insertions(+)

-- 
2.34.1


