Return-Path: <devicetree+bounces-235376-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 41422C37954
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 20:57:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E2B5A3AA0E5
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 19:54:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E67EE344042;
	Wed,  5 Nov 2025 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iz2rBexa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9793446D1
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 19:53:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762372433; cv=none; b=QZPCvknL9gAY2xjg7GUsluMDV2fHjLNG//xqhSXAF/11Bm56EL1+khveRel60aY32uo/ygh6uKvhc0OS8+mMe2m/p5LCliclUjBvC8ymiBSWXmgyY0z/xphV8uZdBgzQgEowJ9GQ965O/gDr9mYrotT71khhTMwZcHUPpeCOHHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762372433; c=relaxed/simple;
	bh=YjHRc0oCtToeXXdkxRbxY958tkY+Cnt6dMfLlntrybg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=maXcf/Wl9wAGcbHkTcqBi01k6bMpYqo1lJ6ljHJgBSvB/Y4AUYyO4M9kc7/jl7zp0Q3dnNFiY+gbyY6GkVc8+UO9dr08wPba5h77MZ3MRPf9F2uAhxT3gTYRFn43Y45NJ5R4MNQYg2LCY+6PBeHJkx88eB1TTBrwSxEFXUH3PoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iz2rBexa; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-64074f01a6eso292312a12.2
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 11:53:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762372430; x=1762977230; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T2ChPscr8oI1Jx6/MRLByZw5X39fgOVwMSewdYMEVlk=;
        b=iz2rBexaeZxkjfDXab6Z+/vLf/rqL9s353QnJsf0Hq7ljMS5Yil73otrIKdp87SS27
         5SoMQM2EFyIoUdcSQaJdKCJy0tHaMlbn9D9+ZNM9VJD/b937dw9wTNhaClyfhsOZhKzr
         IcDm35Q6ln+I1wZ6VPGG6P5QhJ/69EOKNflIFVnLq4ayRxycl9uINcA03C0DJQLj8eyx
         0v5pn8CPm9ojlhefcbngPSnvMk8iRCoGior6bRgqtgrWwxuix/44gZULSvQS2UZWaFZT
         6qKR/pErK6sP9dZmtGdW6GaqhzXzp7SO0w4FrOC0wjgGKDNfINZinsaum2F18YLVjPwi
         2v7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762372430; x=1762977230;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T2ChPscr8oI1Jx6/MRLByZw5X39fgOVwMSewdYMEVlk=;
        b=OB6ru1CBm38DFRnmY9YesBDBj9aiJgtOzgySE4NXDktLW3KJsJi5iiD8gnBBAhsf55
         zC5FMjAxK0XbeBwaVO21clfVCxkG9d6onNL0WcAPxq7H9xduTJHL5zRoD7borX54VJB3
         jrO42RpHbIcYqplh404CjAsCQSKThl9f3TgWAwwI7lN7/cGHPDnVPVRF4lORD9lMPRdo
         YMOBLh5Mv4ySiS7rGHfwhvxzn+/0iGIiSiBQj25aNNqQuK7fr3oa0L222GkMEhzcsO8r
         8yNIrWH58L3nTRIvN1FTtKqdoQGIg/BethBFuw1I/Eu9vTFHBmMxZqpHkY4fs1rTG7nY
         gLLA==
X-Forwarded-Encrypted: i=1; AJvYcCUw55ja2repbkFOREnYMJTv1CXj2LACE/QDR76dMYacNkZAkGCIrUIGmKjGJGsi4L/Wlwb04v4AqQks@vger.kernel.org
X-Gm-Message-State: AOJu0YzMCqyTyY9qD4hPVWhXXvS8QUyuNQh4N5fcpu+4XNap9hq1x6WM
	uUkazSphbtQ8FSQJqtewS40wnZ3g8V0F6QshJfplJqwjzS4DOb8puJrn
X-Gm-Gg: ASbGnctuiV+qInhXv46A+1nERCQGWb0NSBx78//+whGllXFTM1mF6dSdgj/+Cwl7Rlh
	Mv8I2p8s5LgYJAiwLyPqYwBK1Cu8qp3XK+T0qbqk3uElGF21H1Yl+f83ifUI+9cW0WGhzTiYHYo
	22jcgp1TA0ah7TQO1Yqaqbg106DWb6ftab1j9akb99C26ZMzCU2FqJDo+LptALrL5P/OuUi4TrP
	3Vcm+fyhLXycYAJCIkgd+Lc7vmEskScux5q+PIk31QLUU2toXWi7kbK6EbtQNF4OAZPQgciShEA
	HeFPMbRXU2nXWseQYQ+0VoWUHhdty50eXABcxNd5AqUvH/+G7q8JiE8qBsoETqVyF8FLZe8FoQ1
	AaJcJWYkkWxR3O71O7F5ZjgcaGLA0gpzRzkslYwVoYSzSDx6Oc+YqSqq663SwC6IXnOdIzFET9E
	bL0KwP1MV9HuG0UhvceceEjO2ylPX1fgn1uLKHjghkqlZK1qFaQ7u9rgwQ2nVSeoeLe4o1ZFX6S
	dyVPeM=
X-Google-Smtp-Source: AGHT+IFf7tDw59JmEe4bBV8WCMZPEQuZ1vL/zuVOE8F7EZy83a1oNIvB4MT09RIkAfnIeGVbkSTm3Q==
X-Received: by 2002:a05:6402:84d:b0:640:a9b1:870b with SMTP id 4fb4d7f45d1cf-641058b9ffamr3661622a12.14.1762372430236;
        Wed, 05 Nov 2025 11:53:50 -0800 (PST)
Received: from localhost (p200300e41f274600f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f27:4600:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6411f862ca8sm8356a12.28.2025.11.05.11.53.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 11:53:48 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
	Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jon Hunter <jonathanh@nvidia.com>,
	linux-tegra@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 3/3] arm64: tegra: Add DBB clock to EMC on Tegra264
Date: Wed,  5 Nov 2025 20:53:42 +0100
Message-ID: <20251105195342.2705855-4-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251105195342.2705855-1-thierry.reding@gmail.com>
References: <20251105195342.2705855-1-thierry.reding@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Thierry Reding <treding@nvidia.com>

The DBB clock is used by the EMC to enable the data path from various IP
blocks to external memory.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra264.dtsi | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra264.dtsi b/arch/arm64/boot/dts/nvidia/tegra264.dtsi
index c66ea12ef5a3..f1cf370f6363 100644
--- a/arch/arm64/boot/dts/nvidia/tegra264.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra264.dtsi
@@ -3444,8 +3444,9 @@ emc: external-memory-controller@8800000 {
 				reg = <0x00 0x8800000 0x0 0x20000>,
 				      <0x00 0x8890000 0x0 0x20000>;
 				interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>;
-				clocks = <&bpmp TEGRA264_CLK_EMC>;
-				clock-names = "emc";
+				clocks = <&bpmp TEGRA264_CLK_EMC>,
+					 <&bpmp TEGRA264_CLK_DBB_UPHY0>;
+				clock-names = "emc", "dbb";
 
 				#interconnect-cells = <0>;
 				nvidia,bpmp = <&bpmp>;
-- 
2.51.2


