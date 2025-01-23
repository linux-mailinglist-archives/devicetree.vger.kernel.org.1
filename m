Return-Path: <devicetree+bounces-140461-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 83321A19E8E
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 07:48:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C7F01188CDB4
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 06:48:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CBE71CB518;
	Thu, 23 Jan 2025 06:48:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="C+3Az0Vg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84BCD1C5F31
	for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 06:48:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737614897; cv=none; b=DraMkIuLZq24g+vnFRmJ2u5360KHzY7GTrWInoE6Iy9AYJBoQNBui9vsIFeNnz8HPn7rj9HdUik+c+7aPkHYbLCgSSScZgpx4eTxkBnv6bOnSsXIDHUCymLZllxoxJiIRII1pxHtSBTHxgphUx4hWVql6EbxMIPPuKrWn6lu4No=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737614897; c=relaxed/simple;
	bh=e4l4J6hUK66lbb+27pNmUpiv51k83qvvho2J2oXg9yI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=W2Wv4xmxUCd2lieSXAdNN4AK/E1nATvr/hvnU9al3MnqTrvi6Z0FyeLZRUs6HoSQC2M2UsafsYMqR9S7H0gnECAy4o3ptkrQYtN0VugO88C8E9NQfuKCNwBG6nqe5hHp154yaBOgPu832caTjDaHZymigNyDup755Q5aZ/Ng/Vw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=C+3Az0Vg; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-216281bc30fso12027655ad.0
        for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 22:48:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1737614894; x=1738219694; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SwfobZv33V/+FGTeVO+tPqefOOlFn7XlfW7hi3srQwo=;
        b=C+3Az0VgiEBF/Rkk3xJj8hHtf+FLDPvDSQwrVp0hhFo6Tki4wn5YjJkPmFvzkWJI84
         Lgi6iytsmKKg4EqgHsp7S/O086NybE9wE2xWiCD+GjbLj+rzKlKTlQV5pQyK3oJKxN5Y
         Qjas+j+uzoSVQ0XaiJw1puq2JBIoDKBBFnqDcOy/7fpxAFd9Xp7y6NY/+IeGwAL4Vfqp
         jfY5Mpb0N/lwtryhhrGP/54gbzyXqfNM0YAuAtxgMITrdMvNtY07p6ctnLf1pn76n03U
         0pnLW1rP0g86qNy5gbNDc5Su+3ChwfXUxLtDaORP4aXfu4t/vFNFh3umcAG1KRQPQShX
         1yLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737614894; x=1738219694;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SwfobZv33V/+FGTeVO+tPqefOOlFn7XlfW7hi3srQwo=;
        b=YnU1+YpvIKXeo2MRRJOgX1/Jo0HcKEwR4kuKw8uHaYeI6ZncYGcSjdaaK99ZHwT0Mb
         7xdsdbVlcanm6LQFcrVRXej7wV1h/xBa8qt2PMmI27g19+KieiCryOO+YBOJ2+ZqQWna
         7n86DksOZJQootrxSihGt5TVTIa7Hkj+4UkIY6NMStIqJ0ScU/CuhlVxrbNhdIg6bd3Q
         czU+M1U2tmUoEase/4bsP8xl/kD6sG8gDo4ZXBGXTPDEjav1UWiDPiQr9H89JPSfKH+D
         yZvJAMrMOywUuhSFm7dLR0fSxzYM/Zd49zWJTbtriol/+E+6d8oG5G4UTvpRRXgPH9sk
         id7g==
X-Forwarded-Encrypted: i=1; AJvYcCUk4Bs0WaAahF7EhHF3wOyNJ8TmBJ/qfF2R3RUtxOZTQV9h9gFdEeWLZzS3qvwgsU9SW2uJXTnrz5EX@vger.kernel.org
X-Gm-Message-State: AOJu0YyQeQJO2Z1fteDTesygw0EruFazfQqLYZEeP7KtoH4VoIZVANDK
	Sq9Kb1ZJpxZDd5gz46n+j0liVrpY6xoJcvn5I0PpojfXnq6fBEi4v7JkcWlUOFdF4H6KyuIHsh3
	N
X-Gm-Gg: ASbGncvy55V09R1Syc8oOYSod0dpZ9Lywb6HnzMBIdZ4nZalew6QJotn21RTsKKxcyp
	cBk7mM638M5ZqQv5ArwvoCi6Q5poJ5OKiuVEMyTSzYXQU/jwCElZ9GWu8Wc5ecMKHLmRBMxgdMr
	l6fNipcPYkU2jtQk7Wl+pcLq0ql1AzD+Nx9bVzLpfG/qveEkXxvm2qXErH/+x2eQI/h9xQ0sRcj
	wFhsg6yfr1A0snyCGDZFlFC8jt0QPAtZFDf5oJvt2p1PMw3K6ecu8i3a5hPKOADngfSUkMjVrWF
	wQGG6E6gHic88awkI0UCiBdXPW04ppn5szMswWpNw7vb9HkWWyTI
X-Google-Smtp-Source: AGHT+IFPp2dMwLLh/TYt3tGZ1O1dzVlAuA9tHPAAVKT+k+MdfX9nDHobaViIokflFeDSPNaTq3oJyg==
X-Received: by 2002:a17:902:ec90:b0:216:3dc0:c8ab with SMTP id d9443c01a7336-21c3553b527mr340210705ad.9.1737614893777;
        Wed, 22 Jan 2025 22:48:13 -0800 (PST)
Received: from dgp100339560-01.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-a9bcc323777sm11923454a12.20.2025.01.22.22.48.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jan 2025 22:48:13 -0800 (PST)
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
Subject: [PATCH v4 1/3] dt-bindings: display: panel: Add compatible for KD110N11-51IE and 2082109QFH040022-50E
Date: Thu, 23 Jan 2025 14:47:56 +0800
Message-Id: <20250123064758.743798-2-yelangyan@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250123064758.743798-1-yelangyan@huaqin.corp-partner.google.com>
References: <20250123064758.743798-1-yelangyan@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

KINGDISPLAY KD110N11-51IE and STARRY 2082109QFH040022-50E are
10.95-inch WUXGA TFT LCD panels, which fits in nicely with the
existing panel-boe-tv101wum-nl6 driver. Hence, we add a new
compatible with panel specific config.

Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
---
 .../devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml   | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml b/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml
index 7a9f49e40e75..b740681605f8 100644
--- a/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml
+++ b/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml
@@ -30,8 +30,12 @@ properties:
       - boe,tv110c9m-ll3
         # INX HJ110IZ-01A 10.95" WUXGA TFT LCD panel
       - innolux,hj110iz-01a
+        # KINGDISPLAY KD110N11-51IE 10.95" WUXGA TFT LCD panel
+      - kingdisplay,kd110n11-51ie
         # STARRY 2081101QFH032011-53G 10.1" WUXGA TFT LCD panel
       - starry,2081101qfh032011-53g
+        # STARRY 2082109QFH040022-50E 10.95" WUXGA TFT LCD panel
+      - starry,2082109qfh040022-50e
         # STARRY ili9882t 10.51" WUXGA TFT LCD panel
       - starry,ili9882t
 
-- 
2.34.1


