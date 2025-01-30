Return-Path: <devicetree+bounces-141941-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C4ED2A23396
	for <lists+devicetree@lfdr.de>; Thu, 30 Jan 2025 19:12:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 531C37A2119
	for <lists+devicetree@lfdr.de>; Thu, 30 Jan 2025 18:11:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A98611EF091;
	Thu, 30 Jan 2025 18:12:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eXFfMdqk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2355384D34
	for <devicetree@vger.kernel.org>; Thu, 30 Jan 2025 18:12:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738260757; cv=none; b=OwlIGTnUj+CIE4ebB5Ia0gi8svoeWbzuM5JZVMLv1EJwFXEZiqJm0k6Cxs+gYtLYol5Vi0qlk3euNzimtxGIof0oW6qHHZeaZujE1/AMM0TZPw4REw9Ud5pkUervf0Ag89LGbQSNy6x332dtFdbXgAmczcKrnTJDSf94gGqfQxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738260757; c=relaxed/simple;
	bh=yioVhlVEhFzUaZEWLLYq7Z20yluO2tVcZQNEfZN+D7k=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=jjxRrnreW/2yFAsu/k4dQJ9Hw0P6mMxk4RQyoFl9m5rGv5tbSIk1IzcC1UZr+v6GYstrDydhACQLOIU7mutqllZUxUySfKP8BcPzvhXDfHfEXT7HEOy0/AEAKc8iHZXE+njsY6RxeYjqtkLxBdN69uGHNU86qMf4hLkzSpbdizo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eXFfMdqk; arc=none smtp.client-ip=209.85.167.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f175.google.com with SMTP id 5614622812f47-3eb7edfa42dso601138b6e.2
        for <devicetree@vger.kernel.org>; Thu, 30 Jan 2025 10:12:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738260755; x=1738865555; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YdgoRXrSyl0SwNYeJOkfBySm6H0lmfcmHgCdqCIPMvc=;
        b=eXFfMdqkQsY/Tsg/439u4xV8+l0Pxx2+pE7aftTlHZS2TEYoUBXCCxGj/KQWYv3LeG
         OfNJRdHoMrK88FK0YmgjWpgOrX5v+9Ks3/MqDExuevrEasNfo5UiJ+6Wp1/4pxkdBGEa
         X2XsXeYcAgw0f9Kyb9rXEtVJjUUUCxfwtDiW+6bne892D2oXzTpNVMDGppi/Vyt5dGno
         9eOqowwT+T++8S/M84K/40j2M/VXsFuTn6X6w98Xo99/odq4fJ1Ayy3uwK3lsR++eKi0
         /N7hHuC/Su4Wn2EK488vimB0rKr4RtxZ7thC8gtdJbMoe/aod9+Axe7x61aoB1zZj0f9
         Lf0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738260755; x=1738865555;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YdgoRXrSyl0SwNYeJOkfBySm6H0lmfcmHgCdqCIPMvc=;
        b=BnBR/WlGKKMfrBB+4W08B2orPXTlWZUCdNgFh0Zavou/rjeo5zxmjzyHE1JYXf0kBS
         mMaATQ2akHm1na/E7Y92L2v/bpuO2w1X+KMhipC+8FM7Gd5nNrRsHiTggPg9UV0k6SDE
         Ro/HBfTNP0WYIwyG2Uij7h6l/n7G71qpL4Q61jv2CZxtaAFibAEkVOdxvNVPtSsFbCbq
         WtOPS2RRnkcjOr0Au92K7mCVBq9MLX6/SbiEBCtTjUNKq+7upS/jVHbaQtgJr54Zq6NI
         KXecoK17l8xcgjRLfTzzl2pHsHnrlJ215iGUHVVB1zDJbZY8FmGMdcQdS4s3V+/Uatxz
         i2eA==
X-Gm-Message-State: AOJu0Yz3ciaCSF3E9WeEGdBEunynS3ySE0VHWZeDE9DndJMDY8h56ADS
	5j3PyZJvcFD0D46IvcbKTwHdZEh5HYytLRE58obwSdoImx4xXhPAECgPIw==
X-Gm-Gg: ASbGncvpyUt05pNRnh3EbNlAEqSJPaPS1M9R35xhNVOHsEpRzNjSWA8GZDLhtSjWUrb
	VZMpXlxRSiwu8aZvEzafSLjUzehGynMSIDG8SYAaB/KXFublmfVipLk+KihpMegD4ndMkPGDCtD
	Ax4f3OdAATcuNMHxUrqUwj1dkSMIVfzREJvm2X40lP9/Fmbgw9/4B2p6JJNe8C1driL2iwYOJ36
	tI7SNMswfrIusX9nLhl0Hd48WE5P5QUpq2W2KLRM6T7rntfAiXg+LjnMhra2+KrSm5bg/+VXyuK
	dU7t0WOKjfljiQIF8faoL5G39IBslHb/Ww==
X-Google-Smtp-Source: AGHT+IG3X476Qe4ZhR3dKakKXmR/cepO4ChjuYZ8JVda/dOuLlEJ7k2TmI4+KjouWgpNJD/6WhP1bw==
X-Received: by 2002:a05:6808:3307:b0:3eb:6dd3:12bf with SMTP id 5614622812f47-3f323aefb5amr5504069b6e.28.1738260754990;
        Thu, 30 Jan 2025 10:12:34 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf:7478:d882:8d68:2fb])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-726617eb233sm427110a34.35.2025.01.30.10.12.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jan 2025 10:12:34 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH] arm64: dts: rockchip: remove rk3588 optee node
Date: Thu, 30 Jan 2025 12:10:04 -0600
Message-ID: <20250130181005.6319-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Remove Optee node from rk3588 devicetree. When Optee is present and
used the node will be added automatically by U-Boot when
CONFIG_OPTEE_LIB=y and CONFIG_SPL_ATF_NO_PLATFORM_PARAM is not set.
When Optee is not present or used, the node will trigger a probe
that generates a (harmless) message on the kernel log.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index 8cfa30837ce7..245a6cabdc8e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
@@ -358,11 +358,6 @@ display_subsystem: display-subsystem {
 	};
 
 	firmware {
-		optee: optee {
-			compatible = "linaro,optee-tz";
-			method = "smc";
-		};
-
 		scmi: scmi {
 			compatible = "arm,scmi-smc";
 			arm,smc-id = <0x82000010>;
-- 
2.43.0


