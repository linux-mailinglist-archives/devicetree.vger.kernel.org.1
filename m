Return-Path: <devicetree+bounces-35260-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DE28383CD49
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 21:20:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 96803294CD7
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 20:19:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01EEB137C25;
	Thu, 25 Jan 2024 20:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="f7sFwNmd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EA2713666B
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 20:19:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706213993; cv=none; b=bsPjYKNEEoh4UtT8uRCQny5ox9YBOMDSjQdG4NvhRP2IIdbkHj9cr4omXWKgoiiybv8gvypujtA8O5NGEqdK9XtipO8drfTSq7cWfIFqnJqB9yatpY6m93vDmHEA0iAk47ILdmRY0LGAePVlAYZS9HrF46ugYkELvDexAMC8sXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706213993; c=relaxed/simple;
	bh=kBVjQm/k4UBe/ARXqzpxRjLBkuRY5cW1OrPF8i9Ro6k=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=lmafr89webM9mBiTkVpxzojeauZrYfHEdf8pSTW0NSCIzoxuYnJDx+2GVSQ9iIsZZd5e2CyhIvviQ/UXoUiUhnqaWylb5HPvnKhXYNQq0P1bmgYyeKCwK5U6vFzIffeTezw6K9mJjmfyK0FW8stZkZEAVFuMVAoYBBC7V/4uphc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=f7sFwNmd; arc=none smtp.client-ip=209.85.160.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-214c940145bso526157fac.1
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 12:19:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706213991; x=1706818791; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NIswtFjpTHkt28ZzGGuiAiEl1xXsySXj+yOH1B9fU/0=;
        b=f7sFwNmdPVuhmNxWIXBROLPOQ9sUk1FhBA2VkvURd/iNUgBE3XtcFIZdoN7VSAXK4J
         xv4Zo2zARgoYEyixg+nZFAfkqedzTBF+WICAkO0NkfsyDXKxKlNRb0zvsFiGzY56DxWL
         f7hpPwko9k5PNtVtGrnKX8JEUyKFWuiQewePVlGbVGd02BkrFTFn8GDGKZBIMdmRgALt
         aWRjW6FzrIIWTDvMH8lC299KS/oF4eHkA6JPPgz9S79Yd0S8DBSLKdGQfzykGrS6UEo/
         aqlxdiddY4VXGXQaDEL/KusvBtnnAsBhys2vSRZ741tO5TyGxQ7GfSA1nM+E+3KUn0eg
         kXMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706213991; x=1706818791;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NIswtFjpTHkt28ZzGGuiAiEl1xXsySXj+yOH1B9fU/0=;
        b=Y0ucWE3U6xFhhsLzxow/CMU+rOiL1mXIGItPR4OnGQSamSE+5h2ZHZONeXzy8NMa4c
         RXPSyDpn24EfFOIXKrm+uymUek5tN1t8FItk/4C/gJKlcR1t9Dt7766PZQHkwvV6jKcH
         4xcfYJrTREJ3WlmFwFaoShVGX4+5r1hwkCxsGlPbNybgOaTRMB0+tuib/KpUR212MtFw
         kj74pVmGwHKDL7IpmJi1ftWirEbq34ZWc4Rr2YFJEhT7qod5+SHMMxRNuouhA1apobQR
         pZ2Swz34z0ddVhM28LHoeHM3P8GwGArW1c7vpyjgnPF5/2ZDf0tGFa2zjulmz4efBjvK
         r/Wg==
X-Gm-Message-State: AOJu0YzzCcy5uJ6BXOnLtWeOp4z4tEvtNLmbefl5kTNUy3Nl7TTW5oPV
	anT17ntO6Urf/FcUMwMmp/lHKOc31TrdGfv83FqeVorVbu6+uJDg
X-Google-Smtp-Source: AGHT+IF/OoKX+Hp19TnvIEuqKhNMvvPVJxKVbybIu6KrpTO+4C46554d0JIZV6alhSS3juE3Z2rDQQ==
X-Received: by 2002:a05:6870:f690:b0:210:e117:df8e with SMTP id el16-20020a056870f69000b00210e117df8emr212985oab.47.1706213991489;
        Thu, 25 Jan 2024 12:19:51 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id gx11-20020a056870b90b00b00210cc6cc9eesm3610024oab.33.2024.01.25.12.19.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 12:19:51 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: Add USB3.0 to Indiedroid Nova
Date: Thu, 25 Jan 2024 14:19:43 -0600
Message-Id: <20240125201943.90476-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240125201943.90476-1-macroalpha82@gmail.com>
References: <20240125201943.90476-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add the proper nodes to activate the USB 3.0 ports on the Indiedroid
Nova.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index 3c2278886851..ce8119cbb824 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -141,6 +141,10 @@ &combphy0_ps {
 	status = "okay";
 };
 
+&combphy2_psu {
+	status = "okay";
+};
+
 &cpu_l0 {
 	cpu-supply = <&vdd_cpu_lit_s0>;
 };
@@ -842,3 +846,7 @@ &usb_host1_ehci {
 &usb_host1_ohci {
 	status = "okay";
 };
+
+&usb_host2_xhci {
+	status = "okay";
+};
-- 
2.34.1


