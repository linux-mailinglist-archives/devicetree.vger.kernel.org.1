Return-Path: <devicetree+bounces-217820-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 96E54B594AC
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 13:03:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 566722A1EC6
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 11:03:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CFEF2D2483;
	Tue, 16 Sep 2025 11:02:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MaCmwuxh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBDA12D239F
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 11:02:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758020569; cv=none; b=fWs1zz2s1wdWvPfubxZ1CNsynTS5MFSRDPW+/kxc4qxAJhFhfWuOtcaxVOg3NATcSdSVvhgJ5SilJ8XeHkrmpsFGPEYxOZux7/i5Jge7VrPeIwtgVtyyfZMyWj1EXK8NaZN/nnJdfKhGn8jp+H4HpmgQzBKUCguuzgnTWKUoGP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758020569; c=relaxed/simple;
	bh=qdH0cwSzMgSsRxBe38syostBYt8ms24y1BNRUcCKgE0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PQbQt1SNW28Xuf46gcAFuv3VJRfMJJspQg1eG1JWQTQzYYTcNAOYJyTSLa/dFM9csDCeQe22oZviNeW7ImVTX1bNFmyXNVvSNO2SS8+Y/MvuEZdWPpA3pkp9h1Jvf4x57mia2dOoTZwA3OY0mDVrLtNrthFTQzbDAv97aKBnpvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MaCmwuxh; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-b54a74f9150so3590138a12.0
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 04:02:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758020567; x=1758625367; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4b6XW87JsHSuraknHjB3p/ca/yYzIT1w7Wpy7c6pfmE=;
        b=MaCmwuxht34jXbsj3VlalTsFqXFqDvIxM7MtX1ryIchJJlXEmpORU5DawXx4yQCya5
         bSmkxyD5IqYi+ESUfWJY+JR033qj25jIAHKUEPcDMEsRdaczznFPY+FDOSSRbkTWUbsP
         Zld0D14OyiDmO04DpN84ndeMtCQnI4DXcHKtkxN6q25Z0Zc9W5RNoy69psB1SAAbFDkU
         YQznLPlm+Fdn0HNLVzmp0Yj+10dkan3dh3q2I8k8ESYyfpOnzgWdcStDOTztKOXh5+ev
         +xeqkuAl5OzF9KSg6DolbTZob0OqPHKanhFASE/cTujvILq0ZbB8Mg8EqfdfoxSwaEWm
         lEdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758020567; x=1758625367;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4b6XW87JsHSuraknHjB3p/ca/yYzIT1w7Wpy7c6pfmE=;
        b=xC5LvNcgCen3rj7LvjAeheROtII9LOtxovQ+w36xkkpczSybeaTR/qDarO4QQzfRB1
         QcHwqncBiH7o3FtDQzeDZt1sGGspGvgU24l8YcCBYLeLXl/YSEXzM1VYPktBpg1zHcir
         cs82VBgtItP9ZUerkWJ1oE1s5/oO1MEVbHPvPR+aA7rhH3jsV7SbfSJlZYesr0lzHtrd
         Tb3j0tm6tqi2G3jtkLeOJkjqNpObmgsCahztg9hxLUBKvkCEYuO4GGfT2JgTi033jarO
         YAQRWmqNJhYcpLsozcQ0xvsdgzktDjA4cJZfbn5eK1/DZmtHeZ6VuHpQUQT2PT6/NjZg
         mZYw==
X-Gm-Message-State: AOJu0Yy1wc5bJ3NbmEXJHp5ojUh0tQVtACWqBJYD9iuefRc030+hYOw6
	CnXp0Qg5KYBzYEgsg60zfbpX1215DHytaPZVVSKueJSgyJ60rSUDvfp5
X-Gm-Gg: ASbGncuiJfplxJwZBOe5iLnWhJQw0MGBGSnPi0m+vDx6yfwXCv6ObtHHbjpDpelPOwa
	HELGirWQgj3Isi8+jZzbUORcj4MYkXE1e3t+zkuwSApVJUtO4HsR6B/N4KugcPm99SWJHWznifS
	TnqxZvdwi0R4aI/J3IdbV+PMj1rkE/3ZypeKhKWtamrzlVGuhZM+3KJ2BTVbSsLgSQGCo3UAYtA
	p0rpFcVFVfRVNQNE1pzdEzCuNg2+IftLFM16Drbxjvtn07pQFBxeiq6j4r/W0g6dtj/udds9CcO
	L3ODyYHX2nzEPv2uPUhITmj3H18oLxH1KfPZKf5EikbodF1gO9jCzy964Mh+SCDM1RJsHwVn8os
	BJoD3c6U1TPCW8SrSXx53yYoKA3RecSR5au+vNOaq23Sm
X-Google-Smtp-Source: AGHT+IHMVHV6SjMVaNeLwIfjTx7n2IhBfG8XbV7sSrXxMiys4dDXgEzR/rAQd2mdNKbFfT8gCZG3/w==
X-Received: by 2002:a17:903:1b4c:b0:24b:640:ab6d with SMTP id d9443c01a7336-25d26e4872dmr216575945ad.49.1758020567101;
        Tue, 16 Sep 2025 04:02:47 -0700 (PDT)
Received: from MRSPARKLE.localdomain ([206.83.103.177])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-25c3b304ce8sm158761725ad.128.2025.09.16.04.02.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 04:02:46 -0700 (PDT)
From: Jonathan Brophy <professorjonny98@gmail.com>
To: lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@kernel.org>,
	Jonathan Brophy <professor_jonny@hotmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Radoslav Tsvetkov <rtsvetkov@gradotech.eu>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-leds@vger.kernel.org
Subject: [PATCH 5/5] dt-bindings: led: add virtual LED bindings
Date: Tue, 16 Sep 2025 23:02:17 +1200
Message-ID: <20250916110217.45894-5-professorjonny98@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250916110217.45894-1-professorjonny98@gmail.com>
References: <20250916110217.45894-1-professorjonny98@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Jonathan Brophy <professor_jonny@hotmail.com>

Add device tree binding for virtual LED groups.

Co-developed-by: Radoslav Tsvetkov <rtsvetkov@gradotech.eu>
Signed-off-by: Jonathan Brophy <professor_jonny@hotmail.com>
---
 include/dt-bindings/leds/common.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/include/dt-bindings/leds/common.h b/include/dt-bindings/leds/common.h
index 4f017bea0123..39c34d585a47 100644
--- a/include/dt-bindings/leds/common.h
+++ b/include/dt-bindings/leds/common.h
@@ -63,6 +63,10 @@
      "lp5523:{r,g,b}" (Nokia N900) */
 #define LED_FUNCTION_STATUS "status"

+/* Virtual system LEDs Used for virtual LED groups, multifunction RGB
+	 indicators or status LEDs that reflect complex system states */
+#define LED_FUNCTION_VIRTUAL_STATUS "virtual-status"
+
 #define LED_FUNCTION_MICMUTE "micmute"
 #define LED_FUNCTION_MUTE "mute"

--
2.43.0

