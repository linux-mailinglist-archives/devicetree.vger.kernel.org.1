Return-Path: <devicetree+bounces-235392-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A372AC37CF9
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 21:59:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5E9CB3AB3EC
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 20:59:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F0782D9EDB;
	Wed,  5 Nov 2025 20:59:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="T0OpFnEk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBAFF2D9784
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 20:59:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762376386; cv=none; b=ZtC/YsTsbDrLxk083tHpKkYSewpJ96kp8S7vg3i+Z9Gs/pn0t9jwMaYiw1CKZNPqHV/ziHyZTEc1+0kaM7h97VLpei35h2yJ2zYyUl66GFWTFurzDwwl8pzhbi8uORU569kckLVvjusLbsejrUEg1cNMV2DMKAvtw0rakhEDAJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762376386; c=relaxed/simple;
	bh=AtIqjWfpc2e/wqdFULP6yUjDLKZsy1lfVMVLRMBd3Zs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RJ2fH9vgKcawf4ihuto0c4ofI1DE14hswEyHhI7wlhTn7idG4ldR/sxIAse4O4eS2Vsh5weUVhXTvRDVr6cCzXQj9bbI9+nxRIpIvldBq6KV4s8jREjFoU0WVUEyf1DbYg0dYsNE2NYJ2qw4bc6KKB+iOt3etHybYLtofl0h1Jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=T0OpFnEk; arc=none smtp.client-ip=209.85.161.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f49.google.com with SMTP id 006d021491bc7-6542eb6dae0so124154eaf.3
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 12:59:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762376384; x=1762981184; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CVxvV5hWkhj68kgQG7ZPJflpPtnl/c5RQH5cjc4RrCE=;
        b=T0OpFnEkKim62pp9G0qNnTRnmgiHmcgOxJoonU7eDg5bmBa4uh7td6GE1Df/mRNtSU
         k+H7TWzHqKg1Vb2YSabmyaY1+8J7EX/zzViW+K91j0xQcQQX6LWjLGhTDfCYQUKce64e
         jc7FR75ivttXebm9Xhg5wHwigxmROA7isT7qP+zxJ9owi+zlu10IX3p+WnOQZWda6xaD
         hWuuScvaKPdTYQJw9IREm5TpgovY4uiy6xY+kV1Q41dIirDoi37zFHGXl3KuqrcRxGJL
         Ga9fCW5pwqRe+f6i83NZraBvkYR7+PGzTfzeYa1gFs+HpO0egZy3aofO+k/sh2/4ZBre
         JBIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762376384; x=1762981184;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CVxvV5hWkhj68kgQG7ZPJflpPtnl/c5RQH5cjc4RrCE=;
        b=Di/7HUcadii2shKEVotdH6907XN856srgtBN2DBWG2JqJiGcamRaYFMW2p470YOTBT
         BZt63e9OC021RnKSDrk4GyKNjBEG5IajC4W+ai2dlkDjkaVQJoRbyjCqv7zG16lj/EaH
         CZO0uxvkvWS2W+93WO8hgoJ+zDXf7fCvPKmg6uZ6Gf4TCZnmUkjYAyjjHX7g1BCUbJ8s
         zbAMMIXreGXS8Wl2pfW1zxMWFg2nScTmfF3/8GkT5lzQYSBYjEgN0fDj2xmxzv0rHx6F
         T4xayyidsYaDCD2PyeoUXeHpD7S5wUjTjdQOkCYZ9oaZCl6rUI5+2ztEFCQ0z2ymu2J2
         jmAA==
X-Gm-Message-State: AOJu0Yzv+h+EzaNcpegwsS5P7rhAynTjKu41bq9ocLmCFnI1I7tjAg3T
	uFeP7AiAJxMJ+vuC00j3JSrq57RS6JGAqIJL4bHv0QFstYXPsnIqql3+
X-Gm-Gg: ASbGncuxgcyuAEQ0+Zbo0yMXid2eqf137ECsDuKxsGprTPUgAV92b9uahxNtj1j0Upi
	NbFpW39ejlH4HcjR3hoFDCx/IWyppgo0cU6tdtlHni0JddqlTH4jFZ4trATRxOZklwoq0z+pxlZ
	snW1ylpuNvOzKUsY9F9uW2n3b6TJYUFMSk/IhYvrebQCSp1GQreOE0aMRw0/RoeawbqdKEgcRfe
	GmqHd4BA6BhzQ6CSTIYdWe2Wy0W4glo4/R7Dr11LZovASLXpj5SAxW5nxEnQVCC8j2tL/Csr6AK
	8MCQMaAuq3rK/qcZEH5d72qVIiRjg+FEgOpTegFLm/dE3mhY9t5m+pJxMhjHT9CriNzO5dsyyRe
	36NythosvbQc4RfIX7JB09n4ypEG0IfUn5pOg6D58CBEEIXOGeyuUEhyAmuPSBJlHWCaiKeoiBQ
	==
X-Google-Smtp-Source: AGHT+IHXQdQqkMQesb26gvhJrfJv3jtXCe5WKeDVBtA8DcOueo7PW1Kh518WjikU8LcGvByTZU6nCw==
X-Received: by 2002:a05:6820:222a:b0:654:fa8e:b740 with SMTP id 006d021491bc7-656bb4e57c0mr1922880eaf.0.1762376384134;
        Wed, 05 Nov 2025 12:59:44 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-656c5713288sm160312eaf.5.2025.11.05.12.59.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 12:59:43 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	damon.ding@rock-chips.com,
	jbx6244@gmail.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/5] arm64: dts: rockchip: Add device type for Indiedroid Nova.
Date: Wed,  5 Nov 2025 14:57:04 -0600
Message-ID: <20251105205708.732125-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251105205708.732125-1-macroalpha82@gmail.com>
References: <20251105205708.732125-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Update the devicetree node to note the device category of the
Indiedroid Nova as an embedded device.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index 4ec7bc4a9e96..debab7732b71 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -11,6 +11,7 @@
 
 / {
 	model = "Indiedroid Nova";
+	chassis-type = "embedded";
 	compatible = "indiedroid,nova", "rockchip,rk3588s";
 
 	adc-keys-0 {
-- 
2.43.0


