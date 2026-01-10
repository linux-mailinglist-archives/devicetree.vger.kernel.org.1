Return-Path: <devicetree+bounces-253433-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 91788D0CAE8
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 02:07:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0C1243005FD7
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 01:07:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 535BA215075;
	Sat, 10 Jan 2026 01:07:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gi+ecyIQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB86221FF4A
	for <devicetree@vger.kernel.org>; Sat, 10 Jan 2026 01:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768007255; cv=none; b=cY5QOuEL4UmPc2SJFx0/42HIMZ4syfgp6DNmX0pNafM4QK0JREGjNghy13eVoaRH+ua0in+62XMkzoSPHs0oygIDLSynHpj541viqcaCCnK5/Pnfdc6+x0RdTjRFmz3hfAiTy/Ro64VsbTr18rp5U7C3D9M/VnjBNdBAAzwKE7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768007255; c=relaxed/simple;
	bh=hbAE7fLVMqhiz0ka0f4DsncIMuz8hdHk+5ZelWshzCA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UaLxKUZoJ7iYTqsHc71ieCSmLcVNQnC38p1y+/Gc7AjWjavtxgA1frt7wSRQsUZu+KX6TJsmMpFDEaI17L2imv+kU0LSBSk7m0FcHkSZ9+uN6dvbMCy9/zo+2k8iaMz8Vd6W8XELh0wnmJAMD9iKLL7w0tcepJv0Z9E4DufamWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gi+ecyIQ; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-47bdbc90dcaso34837105e9.1
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 17:07:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768007252; x=1768612052; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DN6MSURqxWOvIBN2xDV0KAizo7981QvoO4K7apHW68Y=;
        b=gi+ecyIQXaR1N6LoeHRr9V5r4awfzKwMsT9tF9xNJ1mKbJtchpcMUJmti76x/YIF81
         TB/H0WkXTKHg0YFdYAR1vM4sDKXYCBd+ckOnbftgVcRtO0svI6dp19E7c6gTPHNZIbAk
         B8aX7It9I1vbjomFsfWbY3NhOp5NS/WEeMH5d2hw0Pudbmqyi3bAcjTNgyp2I5mzVTnp
         OhttGZD2NcRjAh+K71QduIr0VFE3boLD4CY9pR6JlQ/mwAxG0tJatHm2AiK5Bz994UHx
         /f4TSrGR3fRcsrgSV64ZA7pVIuM1xQO33wHL4ojxQ6+3WID9Gur92U5jFpaeAcRD4Otf
         0gaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768007252; x=1768612052;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=DN6MSURqxWOvIBN2xDV0KAizo7981QvoO4K7apHW68Y=;
        b=azSXIQm5AYs6zLkTqGrtz5hQVF+fbU/0WWWz5UDpw+3kmi7/KWn71+a/Pc4gJt3H2A
         ZSWqPcdEtxNg2ggqxW0NqGMMZUp1ygAcsdHHEV6BcXfSWpJAFyT55lWFeuxMQNcEutj6
         dwJcvGdcl0OxAFjOuFjw2yGeTU3WJzINlc9avYIuASGdLPDCOaxiPpqVy8Dvmj58b7i0
         M1FN2PTkMGrnO1j8xA81aM58ww6a/OPJQdeWLLLD8zGYgDfuBiPg+9q+uYvSO+GyB6Si
         LXowBR6WFjx984Y3QtRCwBhxLz5EAotGqXLVcIl6sqt9r8iaWMoontThkPFSIuV1MAz/
         jXJw==
X-Forwarded-Encrypted: i=1; AJvYcCURxxvkUy+aMNaLEKs1pWW1N0Sn9dRwnHC5xdkpRl0m0IOd6kbI61CTIMjvT++AW7mKOlhq0nO/8A2L@vger.kernel.org
X-Gm-Message-State: AOJu0YwQuMrX5YWSl5RNFg9PpxjhP8OEtfyqM2+aTsewTNj5DVbsJtis
	T4wKhaLIuo22LK+EqJ4CC8MAsLWad53E9BKNsNRz2tLvv01y7zbHr53s
X-Gm-Gg: AY/fxX4TOpfcKCr0tzxMirua8tAGCnNYhXCcl4xACBwXCygvUrFwXYJBh/xmOS5SUsT
	g9xlt3+QHy48wtK4TDGvJk9CUQW/hychsl0sQTkfNViA9eJalb+p/TVFOnZwAA2IDxvqNs1S281
	YLcNq9rNhlrmNj+04PFOTXTVIw8ZgP/JoyrXQ5KmJvTZaTZ4fQRZ04VUS3pZL6VFUHWZmbzLpfA
	vGDUysxyw4KEeSWSmgRO0SEdgh8n0vmgSnzrdFOd4PKXXkTnmpNv7Ll6hyvOwA92gc6CGdQzfGK
	sWIiLg/VfmFnOFlP8UvHtlSc1359eUM1MvAllZFbyxC048aURsEyeUsyrqVQcvfST8W4m4nKb3F
	H1e81Y1EChqTFs8uvKuWJGvEXS8DM4CvohvpCUAg019CBmf0sCQHE5ZKCMvZGBiSGRCR0/l6iqJ
	ttIqDCeHlPWu7HlaYBbEBtuKHXg+Qed/y2AMF+cNsjvODZAFnZiHwNowNFLthNNpripsRNSQmHw
	60UI0U=
X-Google-Smtp-Source: AGHT+IHUUZ/4ZQNhh9IvF2WBWql7HyWhiFdLiU8Xz+XMhgJCU3OwR9PNJC6uNnx3kZs51See/jVZpw==
X-Received: by 2002:a05:600c:4fc6:b0:477:a21c:2066 with SMTP id 5b1f17b1804b1-47d84b0a902mr114638605e9.5.1768007252116;
        Fri, 09 Jan 2026 17:07:32 -0800 (PST)
Received: from stor1.home.marco.cx (ip-178-202-227-016.um47.pools.vodafone-ip.de. [178.202.227.16])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d8717d9e7sm71779475e9.8.2026.01.09.17.07.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 17:07:31 -0800 (PST)
From: Marco Schirrmeister <mschirrmeister@gmail.com>
To: heiko@sntech.de,
	ulf.hansson@linaro.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Marco Schirrmeister <mschirrmeister@gmail.com>
Subject: [PATCH v1 3/3] arm64: dts: rockchip: add stability quirk to NanoPi R76S
Date: Sat, 10 Jan 2026 02:07:15 +0100
Message-ID: <20260110010715.1610159-4-mschirrmeister@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260110010715.1610159-1-mschirrmeister@gmail.com>
References: <20260110010715.1610159-1-mschirrmeister@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable the 'rockchip,disable-runtime-pm' quirk for the SDMMC node on the 
NanoPi R76S to prevent bus instability and retraining loops during 
idle periods.

Signed-off-by: Marco Schirrmeister <mschirrmeister@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3576-nanopi-r76s.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-nanopi-r76s.dts b/arch/arm64/boot/dts/rockchip/rk3576-nanopi-r76s.dts
index 31fbefaeceab..90a798ee9e68 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-nanopi-r76s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-nanopi-r76s.dts
@@ -754,6 +754,7 @@ &sdmmc {
 	disable-wp;
 	no-mmc;
 	no-sdio;
+	rockchip,disable-runtime-pm;
 	sd-uhs-sdr104;
 	vmmc-supply = <&vcc_3v3_s3>;
 	vqmmc-supply = <&vccio_sd_s0>;
-- 
2.52.0


