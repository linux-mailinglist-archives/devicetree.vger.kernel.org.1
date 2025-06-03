Return-Path: <devicetree+bounces-182563-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DB108ACCDB3
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 21:42:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A67381719E6
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 19:42:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6836621324E;
	Tue,  3 Jun 2025 19:42:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NR0PziCd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com [209.85.161.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7A0C187346
	for <devicetree@vger.kernel.org>; Tue,  3 Jun 2025 19:42:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748979722; cv=none; b=S/9/6B/y01cBDpBxaqDlv0PfPkAxDhTblOUcP8eG6tsJKUOrdUP23ItQBM9voty/4lzrlU68tHdaPihHbOu3WaQU8TlJL3Wh4KSmtJzuZf8NYK5phCgawHhIcfT1TaOgaz5a9SZWymMJjGRjDtLGcHKBiQtdJq3VIjbznkkhC1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748979722; c=relaxed/simple;
	bh=4GSfhTQJrQVT2JqjOoD5ko8VMoTEFdFpGQt7AHesvJg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=buE0n3s4N2ZF+Ca7nTE9/E0zJVlYCsCSuxvS4i1kWbm+qnnvNVoX0bxfPsZqUJ4JjZcX6ZTIPeGeYS8sFjpCgJJe4A6cbVWr5jHoX78zFzuzJneH11n5VSh1YHyguSovh5m+zZUnGz3Euw5pLGWJHE3s2X4C+7B5WzSpP0DSa9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NR0PziCd; arc=none smtp.client-ip=209.85.161.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f53.google.com with SMTP id 006d021491bc7-60bef8e7bb3so2720103eaf.2
        for <devicetree@vger.kernel.org>; Tue, 03 Jun 2025 12:42:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748979720; x=1749584520; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/L4zSsY66uDYamOrq9+Mw2rOYYJ499EOM1f+pBYr+Z8=;
        b=NR0PziCd8opI5xVU9JiDM2roLCjeHat7PoqzJNscvLyReoKJY4Lbs8p8lsoez6hp+V
         a0w6/itS+Pvhr6kIWFkB+Lqc85K9WopVkb8G7WUAwFDb+/z8Wc8az7MbsTnXpnaedBGV
         MXMfbN8V3JM/pBCenOuBloRUU0tmVZAf9zOHM+CxEUACbtsSFuKshtYEYzut9Vpm2SVC
         VL0kaPB4VrFPoaPiXJdSbI69c7ZTpE3TgundkOAliwZwUNwGxFnjktraEZV1B8DxkzPZ
         zUcT5eakHGrYPPWBTMsPS0DLWL+Hw/YHuwoxKC/XDk2l14sdyO6rcXbJBgHpqZ+LudBM
         562Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748979720; x=1749584520;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/L4zSsY66uDYamOrq9+Mw2rOYYJ499EOM1f+pBYr+Z8=;
        b=NhX6qjrTzHYDCXa9rszMa4n3O3/SOVUwnvqz05HF6HOOKnB/w37kVzm2MIHP+Xzz8w
         7Ox98OnWL/G5qU6ING+pV8xap2BSR1m7zi8Okf4qN3nnGSZuh7CHQwYAMfdqj/olhg7D
         EB6uMlqLu/qkrEsZPymfjjoXMRpWyoAv0o02zLNNbgC479/x1cetQzJ/cxmVkaQLnNA2
         BlOjaCH04D/jADy2oUVMc5L0X0mxlgWwZEKSknZW7FPKS5O8esYaocpv0dewXGhXsZ9K
         8c78woqctnUOfqfRFyRZMbiKDrUywyuTQx4GObBqOPFwmAdgmwPy/4U3Q4y0da0zZ4Ho
         oMaQ==
X-Forwarded-Encrypted: i=1; AJvYcCUNIPN7fBNZRuuOo5EPSu5c8D7Sgo0VFcqJ6fUm8NjLt5fyjiyscejCh6UUXXIMprhxa/UHb1PSouZ0@vger.kernel.org
X-Gm-Message-State: AOJu0YzChrik/Hyhc5G94vyKIWyP81aEc6rI8x1aWwsJSbT+AM9QLVs4
	H8LAccHfuk6Lsa9DakL3HwEcnpF9gTw9TvGuWm0hrBR5Cfg98b+PlEj1
X-Gm-Gg: ASbGncuykBXlwmYo8HSh2Pl5yVynY6Sl0fH/zT41ZIlDfYh3y3BzoKAeZXm3mGPsxm9
	EkLl6OrrsqsWOVNdhAaow0qQ7kCwCtwfTip0KpLCZHUPlEBUO2GP9KXjFIA5KMg8RKYJ/2icmyO
	DTDd1FkbWHixbkCgpA3KKqupQLIq5Hn/FDdFi/Gg4C1yyk6Jwzw0G1sUzjLgG17HqnwMeCXirFU
	QsJrkE6NsimNLeDDh/d1GlWh+SWt/0bkJonZV9dLG4eB+ZFpBXMZGsCGW2lctez1tBF4a5F9Lcc
	/W9iGqB/MNeQBv6D/zAl4mHrdENhkFQQe7jQ9QSQM9u+OQiBL7+/Za/BB+X6DyS6cL0CYyc=
X-Google-Smtp-Source: AGHT+IG3+8X4rYmlVGqs/t382PwbAWeG5RNhDIJA/498vjwFKFaLf3Z5w5vaFUsKAWkzdqYLMZa4cw==
X-Received: by 2002:a4a:ee83:0:b0:60b:b134:a1 with SMTP id 006d021491bc7-60d53c761b8mr10625534eaf.6.1748979719622;
        Tue, 03 Jun 2025 12:41:59 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf:d19a:d10c:4358:1346])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-60c14c88f96sm1967615eaf.17.2025.06.03.12.41.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jun 2025 12:41:59 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	simona@ffwll.ch,
	airlied@gmail.com,
	quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	javierm@redhat.com,
	megi@xff.cz,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/4] dt-bindings: vendor-prefixes: Add prefix for Huiling
Date: Tue,  3 Jun 2025 14:39:27 -0500
Message-ID: <20250603193930.323607-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250603193930.323607-1-macroalpha82@gmail.com>
References: <20250603193930.323607-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Shenzhen Huiling Information Technology Co. Ltd. specializes in the
research and manufacturing of display and touch screens for industrial
usage. https://en.szhuiling.com/

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index c01adbaacbbb..d5fef99a3490 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -672,6 +672,8 @@ patternProperties:
     description: Huawei Technologies Co., Ltd.
   "^hugsun,.*":
     description: Shenzhen Hugsun Technology Co. Ltd.
+  "^huiling,.*":
+    description: Shenzhen Huiling Information Technology Co., Ltd.
   "^hwacom,.*":
     description: HwaCom Systems Inc.
   "^hxt,.*":
-- 
2.43.0


