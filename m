Return-Path: <devicetree+bounces-216484-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DBB58B54EEB
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 15:11:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8B5827C6686
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 13:11:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAFB6306480;
	Fri, 12 Sep 2025 13:11:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="E8abxVX9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0264F305077
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 13:11:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757682682; cv=none; b=X2/Z5I1VgJRAlF+SGJpWnypqiQPcdW6ZMkSG5eEQrsEde7Vz2czu/X8EGkdWeyOxC4OokRN7KUiyktn7yh2KwGBhRsVIlZhL6R69TqG9zQBw+oBu43uLmINjah/fdX2MB87rggD6Vkf9sjb2X35uKWyH+FmgfNzUsVIlDP/nx94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757682682; c=relaxed/simple;
	bh=h6+naf7ZQX6/kGa0qjbJnJkaPWtpHQCnJ2h1m8d6Gic=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=spKTmfG7hG2MveUb4IsnpvJyWTdtRtrdqUP5cllG2djho9Ugbt8YfiBYSwxur9JTG5gfvNMQZ0W3jlTaZe0qhtMA3sAMF0cT9nJbk8aEkN5ug01CfghbUtpO213ntEAx1NvVwtlCORI3EULQVuvHKcrAxoSDwDXEtJ6jz12QhgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=E8abxVX9; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-7722f2f2aa4so2234490b3a.1
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 06:11:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1757682680; x=1758287480; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5lYJndhwGZVcx3e86xFchJKHdcqwz922OhwJ5EumsKA=;
        b=E8abxVX94tZE0gH2ghEFzVCqTUmnyFfhQM51NO5m5uNLvgagXTzEJmfGeeNthqp1us
         P7gcWC/xeViC1Byy2XGpFje4qlZmenP/eDhTvBu9vexkIocskm4CuKT0As82fq/9DJm7
         3SLdMWXWmpcI/tQ2NaiFdqt36bICzJCi7ZptIidC2li977WoM9eN5j/GOyAQUWxgwq4j
         x2SeTcWogn2NZiJKhR3RPvLt7m2DuUKebvarNEBXOFn0MeH5umS/dT75lm2E3gl3Tozf
         UARgnJyl9JItJTueZ3Aeur4BzI0dMw8JGrTBx8pIC0UGjLqaR7RBXwMmRKiKC9/gj6wJ
         Yl1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757682680; x=1758287480;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5lYJndhwGZVcx3e86xFchJKHdcqwz922OhwJ5EumsKA=;
        b=HfCBBo4oKNXfTQE9jE6ffHAxBq3aIKMHUigTCcqiNNDMTBnCCoS1n8KLBNFfMf2xIb
         qwBs+2FuDCb8Q10Q37lcQySNqVQ+NUTs/r2SOP68bE9ljnrwkXat/u3OgJw6S1Crp78q
         GCBg2RMXm2Vrfh7Uo4BbiVOftBX88kDaU6sE+xV+v034R1Qz88E3Xbwvetok0CKqCY7k
         2tyAZP+fMTPrqrwnafhxHEn2HZOReykZlzfx/3vvzpZJjLTygpfL2XvtC7fE5bIFwFiI
         ZGI9J3SMdmUwvhewZ8sPB1PWl7MA44Cdm/FBWfB8a+/b2IPzzwegHhicu3b5DKvEr0lv
         yPPQ==
X-Forwarded-Encrypted: i=1; AJvYcCVPh6gB++i1XsmmOicQ8J3wkcJOJK7AoQbN+5QhxlUpKT81i3J5kKaduPJOi+RA7sAuGZuXJkSEBigM@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+QDmdi1KuwnTsKa2n8FC0BkWJBTfG5zhf/wNp6cdD/gF5fhcI
	mWgZuRP6oq8NOTot8y7ZB59Li2qq1mCgpvoTJGgjSy9PAbqVB3KDvUlOfRWB2PMrlUs=
X-Gm-Gg: ASbGncu+dB7hbpJ13TlUwKbhQIhUbPjWVGM9aUPSgr7KZOw5r3teU7ozspT8yWmdV4a
	ayS/yGMKiwywnD9V/p48/dYNXKeGe0KYrTZIlitPar7lvyAwFmFhbcGETctpSOrOJ5JJ93fr3/r
	IkxVoEnPz8ZW60KvGOQrf+wPvZH7K5Sr0d9bw9u9giYPNpIVzHy5A5tlhIrcwKycVXSOu+YaI+U
	eqwJCwuXXwFUYatCXHQR9xPIJ2CeYSdQ3KMzeMYY2+BRyDnK/3b13E381cTAjbrLpOeJaGhN9fx
	FIDIz4s83VW60PGBx9DudPV6zJ3O9liM+Md8k4KuJQou//kAO/Y/EkTYpnLUxWLJRKP6I2TJfCY
	b+7AP57YBllX3fUtJK9MGn5Ki4acy7YwTuICPQ7LyqG4rG50cZ0ExPvYU4HI=
X-Google-Smtp-Source: AGHT+IFEAfQaJvImfeU+Sk332OoSdcbRzDlcnv9+uIupkz35lfqKRBWb80cXg6os9Y5lTDSczShf6Q==
X-Received: by 2002:a05:6a20:4321:b0:251:da24:9435 with SMTP id adf61e73a8af0-2602c91053dmr4105496637.52.1757682680347;
        Fri, 12 Sep 2025 06:11:20 -0700 (PDT)
Received: from ubuntu.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54a3a9e25bsm4724864a12.47.2025.09.12.06.11.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 06:11:19 -0700 (PDT)
From: Zhijian Yan <yanzhijian@huaqin.corp-partner.google.com>
To: sam@ravnborg.org,
	neil.armstrong@linaro.org,
	daniel@ffwll.ch,
	dianders@google.com,
	hsinyi@google.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Zhijian Yan <yanzhijian@huaqin.corp-partner.google.com>
Subject: [PATCH] drm/panel: add support for KD116N3730A07
Date: Fri, 12 Sep 2025 21:11:04 +0800
Message-ID: <20250912131104.1726775-1-yanzhijian@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Zhijian Yan <yanzhijian@huaqin.corp-partner.google.com>
---
 drivers/gpu/drm/panel/panel-edp.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/panel/panel-edp.c b/drivers/gpu/drm/panel/panel-edp.c
index 62435e3cd9f4..2c8536c64c19 100644
--- a/drivers/gpu/drm/panel/panel-edp.c
+++ b/drivers/gpu/drm/panel/panel-edp.c
@@ -2046,6 +2046,7 @@ static const struct edp_panel_entry edp_panels[] = {
 	EDP_PANEL_ENTRY('K', 'D', 'B', 0x1212, &delay_200_500_e50, "KD116N0930A16"),
 	EDP_PANEL_ENTRY('K', 'D', 'B', 0x1707, &delay_200_150_e50, "KD116N2130B12"),
 
+	EDP_PANEL_ENTRY('K', 'D', 'C', 0x0110, &delay_200_500_e50, "KD116N3730A07"),
 	EDP_PANEL_ENTRY('K', 'D', 'C', 0x044f, &delay_200_500_e50, "KD116N9-30NH-F3"),
 	EDP_PANEL_ENTRY('K', 'D', 'C', 0x05f1, &delay_200_500_e80_d50, "KD116N5-30NV-G7"),
 	EDP_PANEL_ENTRY('K', 'D', 'C', 0x0809, &delay_200_500_e50, "KD116N2930A15"),
-- 
2.48.1


