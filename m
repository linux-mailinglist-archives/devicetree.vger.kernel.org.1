Return-Path: <devicetree+bounces-137618-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BF531A0A1ED
	for <lists+devicetree@lfdr.de>; Sat, 11 Jan 2025 09:10:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A8D533AB141
	for <lists+devicetree@lfdr.de>; Sat, 11 Jan 2025 08:09:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79546185924;
	Sat, 11 Jan 2025 08:09:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b="a4hBhPfe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC1718CBFE
	for <devicetree@vger.kernel.org>; Sat, 11 Jan 2025 08:09:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736582976; cv=none; b=bu2Fp7iyFsQyCHM4CFWJPsCwfS6vMvsZlOy5nZ52Cz5s0JbM8GimiTlSY0Rl6yYMKoUgBAgbSwW+es8erpBufSMbowwJdHl73x6CV6UkVaZi1a4ONsvDS78SN8wXw2pG0wIvzAvyjcMxna2FT0In0d+f+JKGpfVxjTEOGUgiSTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736582976; c=relaxed/simple;
	bh=F0rO7GwPFgCntxyY1X7jcmwB9CP2/KhEzeRrAmViSio=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NXfoszPet4w7NPXHp1t0p2QZUbE/cqD2GtgYG4qBuHvv2hT4knc3T1LTxveIl/f4jkacWQIZSJ8DuGE63F6Qx2V1fLOTyYrwPHACVJcEzLX6Gueqhzn9p0/Oy+3p+V8WvfRoJmbZuZRUD8Vfc7wS1YeESErn1R7kjqNimAomjr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org; spf=none smtp.mailfrom=nigauri.org; dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b=a4hBhPfe; arc=none smtp.client-ip=209.85.216.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=nigauri.org
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-2ef28f07dbaso3821736a91.2
        for <devicetree@vger.kernel.org>; Sat, 11 Jan 2025 00:09:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nigauri-org.20230601.gappssmtp.com; s=20230601; t=1736582974; x=1737187774; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cJyTaiY5yPtcoRWlc3FY2KSATmJJUKLyen9MIhS791E=;
        b=a4hBhPfePpTcU2JBDFgBTZ187wwLTHg4ZbJKHp9MTPTvyN9uQP6GIe70ZWxOEyWhrF
         8e8vj7l2f+r8cZZnUfnxHrDCEQMqFtM06JsGpKhHe++NYaXARy4DsWTYJF8ru/zgx2bP
         gq5qbYZHRnbfM2fqs/YVVB9IxP8WoG1KN8gpV1SMTo1mNH5e7RjXn/TI0kfMESbfadPP
         yPuYXyFKt9lDqfeFNlkn703Wcc24CEQFt8XRy90zqIJ8JPEGMMSeT+h9qFJSwNSJcyMN
         qkN330yoHfwf2IF+M7bwAfeq3zjXUKLwlNzkk5KG9IFwnU85ZtDV1IRmEj2y/QXjpmgK
         VcaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736582974; x=1737187774;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cJyTaiY5yPtcoRWlc3FY2KSATmJJUKLyen9MIhS791E=;
        b=G3fcuf1WXvC0XEHeEU3gpLAPtf073ML21xqASVEjQmzBcMWQPvup6uU5DM6Eu4jpsk
         BXBLjvDtHVgxq1Er8miIwn2ts5DinMkuE+lmG+1t3DY95RuJkF5lSfonCRw/l/Pe5SGv
         feey5tkTZCNSL/9P9VChzIlMPt8g2wH0tmaQUX785JiIy39pjQddTmAbbMvOpN9PtB6x
         8Zl2GqXewMmgY9CcX5uc8xKH1zp9bQzmBhVwsKm7LglxahCJe5d/CUEs4r0mRf6T4Tq9
         Ju3weqH+gCg/wXa7pqCbRi6eFYkcE08iAWs/+df7pqCFwFkSuPu4rqWkofeFwPKurKm+
         zMRA==
X-Forwarded-Encrypted: i=1; AJvYcCXb3fsWY5QYwqNYJvbxLRKgXWDwgRzrXUQeZ7XQPR12/o9EGpyQ9GchUEkk+Dy3wz9AfzCRmrvcrK9Z@vger.kernel.org
X-Gm-Message-State: AOJu0YxB8CcOqJ/6IMFVi+iTtFFKysnys13TgC0YNYaJsUMdLhDJAJyL
	aZHpKhLlMYtO+ksC6S2mbz85WOhnHUulHccDe+iuao6myQRp07cOtas6tELc
X-Gm-Gg: ASbGncvubbhFHTdcOZCO2xpNGQQkxl4F3/WmEdMFSJyIAaSTDwrYFyryWXDVoXp5X+N
	UtKAbP5+J70eYTOkkokiRX63rN3ABl1T0FAAj3kVgA6z+GOzB/2Sytj76hjXRnlqSFJnZkjLm00
	k72/t4iqa2yoXYpVDG3g2nVfmepy5WqRJLBGdSz6WZsP3hrTDn2JvbQpkTMqhToGEtO4pO805Zd
	UDwOhmrdyVVpM41Wi1mB8iRVhap7kReuO6P+gtdZ2jQLAx5jSD4kve75g==
X-Google-Smtp-Source: AGHT+IF+bZKCKcfLHldyX72tIsAR7fkbo+/YIv2jnNBkzrTu4tO7/zKc2r24g6W/gKjkD/1onhfM/g==
X-Received: by 2002:a17:90b:2e41:b0:2ee:96a5:721e with SMTP id 98e67ed59e1d1-2f548eb25cfmr24097314a91.12.1736582973897;
        Sat, 11 Jan 2025 00:09:33 -0800 (PST)
Received: from localhost ([2405:6581:5360:1800:aeaa:a1da:95e3:2274])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2f55942eed5sm4415937a91.27.2025.01.11.00.09.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Jan 2025 00:09:33 -0800 (PST)
From: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Masato Kiuchi <kiuchi_masato@yuridenki.co.jp>,
	Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
Subject: [PATCH 3/4] dt-bindings: soc: renesas: Document Yuridenki-Shokai Kakip board
Date: Sat, 11 Jan 2025 17:09:02 +0900
Message-ID: <20250111080903.3566296-4-iwamatsu@nigauri.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250111080903.3566296-1-iwamatsu@nigauri.org>
References: <20250111080903.3566296-1-iwamatsu@nigauri.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add "yuridenki,kakip" which targets the Yuridenki-Shokai Kakip board.

Signed-off-by: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
---
 Documentation/devicetree/bindings/soc/renesas/renesas.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/renesas/renesas.yaml b/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
index 4f2645e8140c5c..294ac7c7ae8a5d 100644
--- a/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
+++ b/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
@@ -548,6 +548,7 @@ properties:
         items:
           - enum:
               - renesas,rzv2h-evk # RZ/V2H EVK
+              - yuridenki,kakip # Yuridenki-Shokai RZ/V2H Kakip board
           - enum:
               - renesas,r9a09g057h41 # RZ/V2H
               - renesas,r9a09g057h42 # RZ/V2H with Mali-G31 support
-- 
2.45.2


