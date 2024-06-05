Return-Path: <devicetree+bounces-72622-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CDD598FC684
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 10:34:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7B246285AD4
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 08:34:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F376F60B96;
	Wed,  5 Jun 2024 08:33:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RsocZhSh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63C751946AA
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 08:33:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717576425; cv=none; b=ZAzwVBWOPF/Yhv2NiOORMiPwwNdSp02ogLcmazpjc+xyx7J5Z9XZtB+UtK5ulewf4vMThUJmVCVBcHXGjafLvZ9q2+A532uZjNb9FhKvxeg/koBsVr71LKevEeU+e5I0CHDdN4XnzkZ7s19GdgXuxdvCywTgYOqoHQAKL72FXuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717576425; c=relaxed/simple;
	bh=6HKOnJt23t8wTZL54Odb79/OZlq9ZHSDNO41td19Dck=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dD+ioZsSCI+oItUHk2bmmcVEtq2jmNm25Q8iCuWHP5UBykulGyYr1Bm7srV28tEKPWF35+C+xjCfnq0e3ObugfpoeasVoNrcX07tsGASaRarUazenLBYTc4QnoLP8d9d9ptrTA/U1qjvXlvnJOUi25pHftduRZsNZBqCFi/BK9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RsocZhSh; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-52b840cfecdso2390237e87.3
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2024 01:33:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717576423; x=1718181223; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=raavT1Jy/HKvoVEh+tMBeojMJFINgtst8KHyGOifAK0=;
        b=RsocZhShfhhyw8TWC4AdY25HcVALOPJmPcQekqFfVoTftjYtnie7W/7Wxo2P8U+Xoy
         YGHC9j1nFXhuTrn//AFlr23ILk0+u/82SHABD0z1zQt8zhdzKYIhddSBVfwLJAYhT9Vr
         JArYerEx8BSBeCNG12L2ipcNw6Q5FRae0Csg4ZehwKLw6/pmopjEqSwmq/dthjkuJcY1
         zc/ofmDSsGkM68aeS242vfApD6cgx+XE21T+7jbPAmJPZqtlOz2VGKK3wZW/cize8ZQd
         iG+gE7HVaEqsWQDYRb4OYjfCoQdNLi3BlgieI+M64hTKnw4l2DfscUq6ObJjGcAe0wWD
         MTTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717576423; x=1718181223;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=raavT1Jy/HKvoVEh+tMBeojMJFINgtst8KHyGOifAK0=;
        b=Jwbl0pRyH7QxDxXu1P6ZHAsuQJFchYZLuM74x/uLh8znBX6gm+C3ZeOPf0JGdoRPHS
         BwYit0z5O90RqMGNeuoVhB6Dm787lvTAhEvOkTYAEkvDfcIFGhdmpDoIb1A7lHWy99kb
         DqhWD75cj7ARsBwvgysRM6Nwf8aFfuNMGnx2QCzd5iKmU4ecif0R1YxoDq0f7MuBDKgt
         O9QEnVvH/EMm/ceRgDSpLBU1/2jra0POSVTu8kHjpHpsQRh6Q3Zybz6i1GCfgrRUizmX
         goQ7HB/dUjJuX8nKiMwgzoVnHbxMvg4U+pXmHrIlt/y3a5I4XUcArOFgZylKDJg+DpuO
         my1Q==
X-Gm-Message-State: AOJu0YxiPYghdOoK/DFKHmo3+fP8C50wnj0hLkqf2mKTmSSZEqh4ygko
	iafNJqG/49kq+bm1jkCiJcYMAL5itcKxtcIQyz7Oi4cVIueNXIJX
X-Google-Smtp-Source: AGHT+IHbyQXpMwaZvDfJK5zzUGnJ9lzTpmWBh8QcnJEYtR39rIWw9yijn9344mFtIqQK8idO1upqwQ==
X-Received: by 2002:a05:6512:696:b0:52b:8255:71cf with SMTP id 2adb3069b0e04-52bab4fb4d6mr1389983e87.47.1717576422511;
        Wed, 05 Jun 2024 01:33:42 -0700 (PDT)
Received: from localhost.ch ([185.144.39.44])
        by smtp.googlemail.com with ESMTPSA id 4fb4d7f45d1cf-57a31c6d330sm8724501a12.67.2024.06.05.01.33.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 01:33:41 -0700 (PDT)
From: Florian Vaussard <florian.vaussard@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dinh Nguyen <dinguyen@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Florian Vaussard <florian.vaussard@gmail.com>
Subject: [PATCH 1/2] dt-bindings: altera: Add Terasic DE1-SOC board
Date: Wed,  5 Jun 2024 10:33:04 +0200
Message-ID: <20240605083321.1211198-2-florian.vaussard@gmail.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20240605083321.1211198-1-florian.vaussard@gmail.com>
References: <20240605083321.1211198-1-florian.vaussard@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add binding for the Terasic DE1-SOC board.

Signed-off-by: Florian Vaussard <florian.vaussard@gmail.com>
---
 Documentation/devicetree/bindings/arm/altera.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/altera.yaml b/Documentation/devicetree/bindings/arm/altera.yaml
index 8c7575455422..b1a6a07b4fdd 100644
--- a/Documentation/devicetree/bindings/arm/altera.yaml
+++ b/Documentation/devicetree/bindings/arm/altera.yaml
@@ -47,6 +47,7 @@ properties:
               - novtech,chameleon96
               - samtec,vining
               - terasic,de0-atlas
+              - terasic,de1-soc
               - terasic,socfpga-cyclone5-sockit
           - const: altr,socfpga-cyclone5
           - const: altr,socfpga
-- 
2.45.1


