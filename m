Return-Path: <devicetree+bounces-224808-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D546DBC81C9
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 10:46:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 97AE1188A26D
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 08:46:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 800B12D46B4;
	Thu,  9 Oct 2025 08:45:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GChLELLm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 080472D29CF
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 08:45:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759999559; cv=none; b=QkKJzXsyI8WUx/Gh75nWZqwCGytYGorHkCk/qvktLrf74ijgcCK3ga7nwWxi9g6uPHswmbspt4Ek2wywcZB9U3xSEVHLdusC/sc4gf001cWOLjSY90pWSqXIvDJ7Tm91MXVGOoOc0Gk3gcPNQFQvsQnim0bm6VSTbBSZQ24jLJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759999559; c=relaxed/simple;
	bh=fxxAVmPJGca8589Kqpk9mJo76fAFnptROiZXxjqZbz0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SCMG0QnCU1fHB1qasiOdHYAnTvgbIqCijtvrKO5pDfBPg5k2U1ClKfbHhusaoWwsJGQiEUmdwXDHemeYSM0oTOTsjSEMI/rcao128sMOO8UsDMqbQayDG9pJcC6jTHOI/bLSwbs95ch4LlNgPpGLm7YYlCAi6q9qX2n+zgkwhtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GChLELLm; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-781251eec51so576704b3a.3
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 01:45:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759999556; x=1760604356; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iWDW22d1KEEhzhYCQi/m5g5KGiHWCtagl6QTEa0SdVU=;
        b=GChLELLmENV/QSJq1EFrLgQdy5y5oJss/HMsPyb1dC7GHzHoG4VX/MCGWbzJwtQNHn
         ij11h1S481g7c0LDuIVaIygapiatrY8GcqC1r3yAFOGG3qSEFJI8Lz6l84T2WpfX6xZ7
         GCm8oC3WMNDKRDOYGy3kQ8SJ7eiAgdQMc7LwF0GkYxCk8MSOtPUYikxKhA4Gjull0s2F
         lmZ9wY8Gnn9XjhcmuFE1S90Ej/itvZOCZsHVQ1pIauRCFMZIRt5KyevNzluSqg7+xXSj
         fD+7uFpm441ot6vQHgFT2H/d+PcHn/q6VUeuMiw/x+J2xXdMtTSgE1pqFZw33GIO6DV+
         IgtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759999556; x=1760604356;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iWDW22d1KEEhzhYCQi/m5g5KGiHWCtagl6QTEa0SdVU=;
        b=eQw1HWd8gdJaWXQ8AiYLb+U9uhu613HSNIERyZBIz91qXD1h3S07F3aSEF6GIZXuId
         G8taRO0n1LSTn13CdyqlAeNDvarNViSZApohl0NnvfhlLgYZFnQtzyl5pbgwnbQk1lja
         xE5OwoJLXJnf2FEEaHHekPmwvvgZIfx3rzRm4DsQzx4bQfmRpC9GjwEeTPqkUZikWSxw
         wK/qWCYNSJG5GpsEYRFb1FEo9VVn1Z4RFVHaETEZCbSZrR4AcPCPmPGWa9eO111AOHMZ
         K4nD4ktx7H/fMCBAtoFH3AA3vrfvf3IsiVM+cMhRBZ/zf6Oew0a+Vdit1dxdG3RXS8FG
         oOJw==
X-Gm-Message-State: AOJu0Yz3LGGOQceEPI4yue/1SdWb6AylN/Z8lgHlN2+MivoLE0AsEC/b
	O2XqVbRXRQhCQoLnSSMQROXl0kLwnR9emUlHUdrhPlTYE763eklNLUT1
X-Gm-Gg: ASbGncsXga/uiMkZ82NgTLvMz3B4K3EHViu80dB+caSJEWV4ApVjWJ7FR2nj3x1ebmQ
	1qB+Ubhw3P6e8Z7Rtw571giaWD4Bfe9cw7U3JI29eQf+6+hR0siw5cU6lLoN3nUF/SOV4tsO7wc
	PBa/7Smpb8M8A+IAPXSs/vOuCKDr76cT7XDX+5yKXz7HzeCa7i1Cw2gJ4watwq1109fR+d37EDU
	6k4WdZ6U7v19/WJ/Glx21dUDEFJcs32FJF9yPpNSMZ8h7i76rFAuGtRHTkrPAYstAlo8Ea345G2
	trll27Ii3jOgnU/OgUNaDDcWFXdtEk0DWjF7FcMbY4gyKOcfX2SVwLVYOBuLisLWp3HVAHSZZGV
	uspddGjiYkmgHpi2l6VQVoVr7n9fZhd6s7fn3i33o1uuHgdbC+bxELV37XGkI4vEcbCkk/ZUYat
	/y
X-Google-Smtp-Source: AGHT+IF7aFFcCzQTmIoHc4LXKvok/D+zEwjkzlIMaULpCLdJ/TR+jbfCMOyMxdkX7CTceRanUDdmDg==
X-Received: by 2002:a05:6a20:a123:b0:243:d1bd:fbc9 with SMTP id adf61e73a8af0-32da8462b41mr9009265637.56.1759999556317;
        Thu, 09 Oct 2025 01:45:56 -0700 (PDT)
Received: from localhost.localdomain ([223.74.108.47])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-794e1bf7604sm2130924b3a.55.2025.10.09.01.45.51
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Thu, 09 Oct 2025 01:45:56 -0700 (PDT)
From: Liangbin Lian <jjm2473@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	quentin.schulz@cherry.de,
	kever.yang@rock-chips.com,
	naoki@radxa.com,
	honyuenkwun@gmail.com,
	inindev@gmail.com,
	ivan8215145640@gmail.com,
	neil.armstrong@linaro.org,
	mani@kernel.org,
	dsimic@manjaro.org,
	pbrobinson@gmail.com,
	alchark@gmail.com,
	didi.debian@cknow.org,
	jjm2473@gmail.com,
	jbx6244@gmail.com,
	andrew@lunn.ch
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v5 2/3] dt-bindings: arm: rockchip: Add LinkEase EasePi R1
Date: Thu,  9 Oct 2025 16:44:15 +0800
Message-ID: <20251009084416.45542-3-jjm2473@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251009084416.45542-1-jjm2473@gmail.com>
References: <20251009084416.45542-1-jjm2473@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

LinkEase EasePi R1 is a high-performance mini router based on RK3568.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Liangbin Lian <jjm2473@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 28db6bd6aa5b..ec2271cfb7e1 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -726,6 +726,11 @@ properties:
           - const: lckfb,tspi-rk3566
           - const: rockchip,rk3566
 
+      - description: LinkEase EasePi R1
+        items:
+          - const: linkease,easepi-r1
+          - const: rockchip,rk3568
+
       - description: Luckfox Core3576 Module based boards
         items:
           - enum:
-- 
2.51.0


