Return-Path: <devicetree+bounces-219472-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E05C7B8BD0F
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 03:48:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CD2C35A4656
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 01:47:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 258BA21B9DE;
	Sat, 20 Sep 2025 01:47:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TRNBWyEu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 998341EF39E
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 01:47:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758332839; cv=none; b=EIUv9choVq1EA996qTx2E0vec8sJSoJexNbCZRmaggY24lcARUJrxKcmWuB3Wl7yZ8nxM0ZixvIONomwsSZgU40bLgQNztNxtbuzPdaPJK6uDiQ1wjbRNgcl9nK9gdGJkvnVIdxAyf9DdVV9fzRh29Mnbre+08YAultSTiU9MYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758332839; c=relaxed/simple;
	bh=vb0BTK2Rk5uuPvvLLg1eCaDr5BF/IiFelvHr+G7OHfA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=aD7XSWiKAlRXGYvipaJnoB7h+KtcsPIIFb5KEiIAeYPeTNicWMFwbiHulHalesj/POKdXFm5u5VaE3Fbi7lSV+S/ZlKIYp/UOUrb++ZMa2FPgpykejbcUHz1dNmTiZSKEJQ21OTbdaf1sVUBpuq3DoGPWlFKnt1ZsR8Crbb1AsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TRNBWyEu; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-26c209802c0so11525735ad.0
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 18:47:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758332837; x=1758937637; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yDANVNLAXNlGDsrc5CGt536N9WLG4foln19BmJ4pqwQ=;
        b=TRNBWyEuHV+HlY98pe+oZ2vZvYVUN8rkvOagtMUYHWrymYPX53Pza+taS3Hz9mLs8V
         Opsg4XK2uHTEhMoRTYyT7miFc6UOzRbCWIvN5NGWrzOq5NHNNz2DybZ6rR1mOf/J2P/J
         LxRh5My6vAc7U5Bsn5prlv6Sgj5LPsgd5OPdlEkbhZ/yohmd9xUCdN1yG0ON4iEonWJ3
         AYPIbV/2KqF7bsINDRIepqGyeyHrw6WWmVXvDu+s7T4MpkYUM/PiuxZU6XtV/PqGOGj8
         GzAgo3pe9eidoD7v74VgpMwt625sBYtwpXUl/MBuo0USZDVoNJdX/PNG4k8jhSs86Gk0
         FsWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758332837; x=1758937637;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yDANVNLAXNlGDsrc5CGt536N9WLG4foln19BmJ4pqwQ=;
        b=aWmf8yYGIQXbwpeduDkwgsdHzu+Du0mpMo8UmXWENUGqj9lXtCUCgfBx53KutZRcPu
         JPHXZpToYnOkfSTGDM4g9QptMt2fbwnYe7b+j63gOqZm0HQGkT64rNTjVu3o00dVL4pN
         jpige4WKlzj9iZlReU+Q+fTXBTQ6YP0N90dRQ+p1o66up8z5fK7N3SnLlhfNxKcDZvLy
         xsvmvinzvWxs14bjUSLtoGvGrEwWu3EuL5ObqUrEDB6FvvHRlRpJBs5zwemwRuMNPuow
         OD9kBlSvGD3e9u0lhndkK7jMQdLJ3PZGos4BRuUwDPinA7ekXkb1k0/KuRBFvvl3J67M
         G+UQ==
X-Gm-Message-State: AOJu0YzpqeKH83sHqraHGkU+C4YQoJROm6esKz/X2dVRay9AxKjoun5E
	yp+c43pOQ1HIT9WveuU/W5onetLMlADD1H3y8PswigopaNpzQQqW4qUy
X-Gm-Gg: ASbGncsZhaIaf7PoB38Yahqfr88sU9Xo6UdZYBnxdKPl9MttCrW25U1Dvp8XQYgQ4HD
	TiUDmDRdUr7myUhI8wUrXK/n7yzuaF0lHB+8R6Ou7ev3o4hh/MRUPB+12FmIrNTeMyTR/bj4eb3
	ifqla+8Yvu4BjyQiZaA0VQBt2onmNjlMTZJwe+MV9hNVmVFQA9+TKzSXgMP/h5x0SSwJFBJW73a
	Eg+TqCYVWIi5CHwQlsDurFLSP1KCJI529c9fqgQ9j1JiUlZOjL2liNWwB4RVMi7R7f8BiP9Qp6l
	M4HDSz35ZPrlzkdO2OCthghWsHFmuKTp5neetFQpHAmaHDAvnkbyyEbqxtCNLN/C3ut/NcP5aCB
	7EVz+EifFb3LBcQuRpegh
X-Google-Smtp-Source: AGHT+IF8Qv7XXWFPUXzrHtj8oUR7XmANyCLJf1PLQPpKbnLGaW+uYuJ1GuJzs4v8GW8udB3N0U4Iug==
X-Received: by 2002:a17:903:2a8f:b0:271:479d:3de2 with SMTP id d9443c01a7336-271479d4e0emr7643705ad.13.1758332836972;
        Fri, 19 Sep 2025 18:47:16 -0700 (PDT)
Received: from archlinux ([191.193.70.152])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2698033c922sm65709455ad.131.2025.09.19.18.47.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 18:47:16 -0700 (PDT)
From: =?UTF-8?q?Eric=20Gon=C3=A7alves?= <ghatto404@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 4/5] arm64: dts: qcom: r0q: enable hardware clocks
Date: Sat, 20 Sep 2025 01:46:36 +0000
Message-ID: <20250920014637.38175-5-ghatto404@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250920014637.38175-1-ghatto404@gmail.com>
References: <20250920014637.38175-1-ghatto404@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Enable the real-time clocks found in R0Q board.

Signed-off-by: Eric Gonçalves <ghatto404@gmail.com>
---
 arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts b/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
index c1b0b21c0ec5..c088f1acf6ea 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
+++ b/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
@@ -225,6 +225,21 @@ vol_up_n: vol-up-n-state {
 	};
 };
 
+&pmk8350_rtc {
+	nvmem-cells = <&rtc_offset>;
+	nvmem-cell-names = "offset";
+
+	status = "okay";
+};
+
+&pmk8350_sdam_2 {
+	status = "okay";
+
+	rtc_offset: rtc-offset@bc {
+		reg = <0xbc 0x4>;
+	};
+};
+
 &pon_pwrkey {
 	status = "okay";
 };
-- 
2.51.0


