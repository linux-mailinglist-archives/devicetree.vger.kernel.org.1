Return-Path: <devicetree+bounces-188987-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A74AE6401
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 13:58:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 886DC40730F
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 11:58:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D3F6291C01;
	Tue, 24 Jun 2025 11:58:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b="JPBFx8ZN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E03128ECD7
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 11:58:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750766299; cv=none; b=ZpwUW023VfLpls/Fz2MjXILfLOxU1hY9qGWKO9urEo3szgd8Tz6tmLNKqGXIJwFFNKQ0osmildD7OdsP7TGXcylHmyfHjstXNIV5CRtNIfnP2mkbPGMbZUDEGjtXQvxo/scyvnkBHwbV25wSEicX32IvT4CVbRXHlfYcRXbBbt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750766299; c=relaxed/simple;
	bh=h3UPqbe4sHsIOrKmfTrEkvLZUI22mR3WiPaH1WtZ+Lc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pLpFkNTSnfluJwRaJIZzFHo5Cu2syz7+Qjc4YF7qTxX0dt5tdRkjiRaMSUrmAc/NGN3TDuxaGW4KFuMJyy1LPe/t2T6yphp4FDMIwID5vEAlSVHl9/HeuWFVaGwBTVzZo9ZQTelZBXHg5k6RUtR7cUAUOqPHJgF/6//ceneiBg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch; spf=none smtp.mailfrom=easyb.ch; dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b=JPBFx8ZN; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=easyb.ch
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-453647147c6so4057595e9.2
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 04:58:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=easyb-ch.20230601.gappssmtp.com; s=20230601; t=1750766296; x=1751371096; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UqIJMZJtR2MozSAlBaEIUnoVSAIXjXDAyYywqzDZ/go=;
        b=JPBFx8ZNYBCfsCYwjGZ3ZTBgyDqo7JHIhnajbbSLQ6QBMSE0tHtLll4cgqgcYG7Qgc
         rR4mio20CXx1UaBXyp5T/BLyeQYfV9W66ukxCjXuFw5F/9/eymqjlKY2haKioOC8RGCI
         pgWPvu6+SMXm/zKD5OyjZfeiUX3xDT618cPKwZWuL8XpN7Zmm/I+q6QnujsKDGpyXOa0
         J2FexpHSl35O326qFF7di3WhxZ0rhgrcpDEAl+y2SBM7Wsg/qpUS/uT2q7Bhov7C1Zqv
         UluJfD7BeagijCA9gjUxIV+j3gvm+KPSLg0w9flZ34kLUUoQgtu6t25LeawMCij2r5AC
         aJMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750766296; x=1751371096;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UqIJMZJtR2MozSAlBaEIUnoVSAIXjXDAyYywqzDZ/go=;
        b=qRhVFnbH5a7EHT5b0HNPYX1WtKw04Nb8YVqHPNVORDSca3gI/MKrKx3dKGbtS3MPab
         EnLGRNYLyfLf8fPbnbGn2E4PfdPjUVDakH8c7yiCgBa6udRECPJNb1hO5eWDiWLRFRuT
         08UJdPn/s9DRZCPe1r12bfgrmuTj4pUttW5MazjlJWq08Z77eboHHsa/pojogFiU+xtv
         qZJ9Fhi1KigJijAVGvT2gGPwkR6lXiFa8Cl4PCJgQh/xY4pV4pJEuDkgJpZRzeBxqXcs
         4n445TZF8/Rd0Yjj3wFs2WixtnBHw1cZoUeLXKgm5bkAtQpndOWyE/uf6fLjngn352dB
         KbkA==
X-Forwarded-Encrypted: i=1; AJvYcCU5eL4Olon/tZtXHVACL4OTJqnV9krI7dInNVfO57O3B/ZDlQzVUc6IKcTo4Nu58nKgDDJ5rmyzIsts@vger.kernel.org
X-Gm-Message-State: AOJu0Ywng5tt7801mLJtY21rVqRXg0Cvl0vKEE9zoGu9IaPhzcXj4zEv
	J0a4FWfRLedPSZgRVpVgTip+lLYaY57LyInSe6r3/Il90PAqy0z1kk4u54YI45zpqTc=
X-Gm-Gg: ASbGncv4XEN7R8TX7ShashJoBKu261sUqO5EG7llAy5ssL2+PNV+9f3MB8g9UkLQfEJ
	pV22BBmfqkNEUJCXiNQ5zmnjpOc/6yrXvynvQMkLw+OhiU88tjFkwI6z/s9wH6llnpegnE5DCB5
	mxRF4pXtTeXbKQr6GEQAoqp96bCWXFQ1U32kLe57t0iCSBA82oWn8NsOoceIm6Gku22GaDP1pIi
	xbRX7JcVAaJg9N0/pqeIZ+y2618kGFaMG9Ax6Va48W9dOGNgHtERTvK8dJuJjJaOTdOoJuiuRln
	LZvWaHYG8yrGtL1WinU8mF04Y9EkkeV412k+SSKClBMHXS2DWB4z1uRaCkjF
X-Google-Smtp-Source: AGHT+IFZqIw8bLXtSV6XdjOFwm1q09y+Z3Lyq9q+dC6uPgyD8A5iZkqUhd3u/McRF3nzE8AebVg30Q==
X-Received: by 2002:a05:600c:3b1e:b0:451:df07:f437 with SMTP id 5b1f17b1804b1-453659c0c47mr178343315e9.30.1750766295532;
        Tue, 24 Jun 2025 04:58:15 -0700 (PDT)
Received: from fraxinus.easyland ([2a02:16a:7402:0:d834:684f:62eb:5df0])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4535ead2a5fsm173860985e9.34.2025.06.24.04.58.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jun 2025 04:58:15 -0700 (PDT)
From: Ezra Buehler <ezra@easyb.ch>
To: linux-mips@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Conor Dooley <conor+dt@kernel.org>,
	Harvey Hunt <harveyhuntnexus@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Reto Schneider <reto.schneider@husqvarnagroup.com>,
	Rob Herring <robh@kernel.org>,
	Sergio Paracuellos <sergio.paracuellos@gmail.com>,
	Stefan Roese <sr@denx.de>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Ezra Buehler <ezra.buehler@husqvarnagroup.com>
Subject: [PATCH v4 2/4] MIPS: dts: ralink: mt7628a: Fix sysc's compatible property for MT7688
Date: Tue, 24 Jun 2025 13:58:08 +0200
Message-ID: <20250624115810.37851-3-ezra@easyb.ch>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250624115810.37851-1-ezra@easyb.ch>
References: <20250624115810.37851-1-ezra@easyb.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Ezra Buehler <ezra.buehler@husqvarnagroup.com>

Otherwise, the MT7688-based GARDENA smart Gateway will fail to boot
printing "Kernel panic - not syncing: unable to get CPU clock, err=-2".

Signed-off-by: Ezra Buehler <ezra.buehler@husqvarnagroup.com>
Reviewed-by: Stefan Roese <sr@denx.de>
---
 arch/mips/boot/dts/ralink/mt7628a.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/boot/dts/ralink/mt7628a.dtsi b/arch/mips/boot/dts/ralink/mt7628a.dtsi
index 0212700c4fb4..10221a41f02a 100644
--- a/arch/mips/boot/dts/ralink/mt7628a.dtsi
+++ b/arch/mips/boot/dts/ralink/mt7628a.dtsi
@@ -33,7 +33,7 @@ palmbus@10000000 {
 		#size-cells = <1>;
 
 		sysc: syscon@0 {
-			compatible = "ralink,mt7628-sysc", "syscon";
+			compatible = "ralink,mt7628-sysc", "ralink,mt7688-sysc", "syscon";
 			reg = <0x0 0x60>;
 			#clock-cells = <1>;
 			#reset-cells = <1>;
-- 
2.43.0


