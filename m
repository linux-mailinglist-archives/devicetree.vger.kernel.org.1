Return-Path: <devicetree+bounces-78976-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3024E913CEA
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 18:53:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5E7C81C20929
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 16:53:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D0EE18307B;
	Sun, 23 Jun 2024 16:53:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gSAzkC06"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67E4C1822D4
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 16:53:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719161613; cv=none; b=k9u+I1akjsinhrwkAIoXaWCwEn77XuuEKLAnVmMxGvu7Y39MZV4disflVcb3Tgeppm95XtCow9+JBCTBC5UGIygTRGpS1mmnK9fxYSKm2J+ia8DOK3REgx4NvWv7d6MrHmhILvRI0nOmOra91OwEkHPoFQ6haTvsswkUGQzP3wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719161613; c=relaxed/simple;
	bh=KyWRegzptSMMOx41yFwqW7+4+E0eCtotr/Zmr1iBINc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZioPVy1G7laSoqeH7HXQ+0jGsWLxPqJw/2iCS0TK3642xQmNjAzSLFVCPrek5JZUmeXMahkchZcTTa1sMrWjeJFNPnNLnGQO6EE+Uawz9R85Jez4wcqGgnxNnQeZgdQjHx/FsJGXe0pa++Ypo/lHwMWEDVdAt9OOFDG19NMZhq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gSAzkC06; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-421f4d1c057so30582725e9.3
        for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 09:53:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719161611; x=1719766411; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Whsw22CVzG+AEJuA+lPSpYe6KJu2sy9QKywWti8n5dw=;
        b=gSAzkC065Z2anRxXHsnUbaCEuwSb1LZoK5LtXNgwBv5r2STIn1Gent/oYpEtyLmXky
         Vr+BJ3l9xbDoaN5kRoWdOHrjM/fIq3oWWRGp7TUOR9SzK/wb9u02DXKDybNOpbpOvzRE
         YxBzcqw30igaV/vZP2qXXz2gZrLU0oUkdYCfVZrCFY55yGXcznwKq0Ul+opq9ejrr+IK
         RHa+EiMZZaWyXwW7q8qZ1YiEX583SN6M2Zz681ygw9KShCFtKh5lxZQv4UqzVS2gqZT3
         NZfIBjDq2mDJL8GE/1ZQV8fI8DuV1j0VGTvoQIQDZR4SW41leJt3tTOuvUVQvyLagh7A
         gqug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719161611; x=1719766411;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Whsw22CVzG+AEJuA+lPSpYe6KJu2sy9QKywWti8n5dw=;
        b=Gg6+NzfOmE312QQ12PR+qkvWf7nHQPpMatKTmS9vv1qvL6dkzu7TVBcR7FUt0dSUz0
         89yntEWGO3ho+00+BjfvHwEAjoP2dwlphxkLEmj6M8V5pGbiD15IyGxN2n+osUtYFkXf
         MI4kJq8+FGuH82G7I/iL/jz3t+LzKvsAG7DlNQg9oB0IKpvDBbgiC4uIz5JL3CKVMPR5
         q8WIuOlX754jtsZu01EsxY/HXj1R7WUx7O4i2IZwwGCMSyTx00gBjiXlaQGN4dZO3Hk2
         M+c3QtTCOoQM07ihL3a07cVbfYw8qMwUu+kDYIIkbJzNzyqnQKpSUoumLeoxptyDD1N/
         R8bg==
X-Forwarded-Encrypted: i=1; AJvYcCVQ25qQ7pxeD1vMjfhkQ4uKdlpUTqEbvPpfhfPiJCrOxjDKX6eYIc/xWH5wo609zCYSBReDdn0HPQISj6LaMKrySplSOWh9JA+X9g==
X-Gm-Message-State: AOJu0YyOAYjPBg8kPQ20unfhtJZVLtB2PUPSXMsP3NvqgHL/knYnSexz
	MI+PqagwComDhDd91+Jt0bHCcjXfySpOMV57SwJUMSWS5T8ovcut
X-Google-Smtp-Source: AGHT+IE9yH+wIWIpe34XkBs0GwYW8sI8C+AfF4fj0IIrlwcHW/UJhNAXwDFIFbpvoN6eQI8dxBNJcw==
X-Received: by 2002:a05:600c:340a:b0:421:7caa:7a6f with SMTP id 5b1f17b1804b1-4248b9cfaa6mr29146885e9.31.1719161610621;
        Sun, 23 Jun 2024 09:53:30 -0700 (PDT)
Received: from morpheus.home.roving-it.com (8.c.1.0.0.0.0.0.0.0.0.0.0.0.0.0.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681::1c8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4247d0bea05sm144835555e9.18.2024.06.23.09.53.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jun 2024 09:53:30 -0700 (PDT)
From: Peter Robinson <pbrobinson@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH 3/3] arm64: dts: rockchip: Enable PinePhone Pro vibrator
Date: Sun, 23 Jun 2024 17:53:22 +0100
Message-ID: <20240623165326.1273944-3-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240623165326.1273944-1-pbrobinson@gmail.com>
References: <20240623165326.1273944-1-pbrobinson@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The PinePhone Pro has a vibrator attached via GPIO so
lets enable it.

Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
index fbaf0202df632..8c2a4aaa635d0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
@@ -137,6 +137,12 @@ vcc1v8_codec: vcc1v8-codec-regulator {
 		vin-supply = <&vcc3v3_sys>;
 	};
 
+	vibrator {
+		compatible = "gpio-vibrator";
+		enable-gpios = <&gpio3 RK_PB1 GPIO_ACTIVE_HIGH>;
+		vcc-supply = <&vcc3v3_sys>;
+	};
+
 	wifi_pwrseq: sdio-wifi-pwrseq {
 		compatible = "mmc-pwrseq-simple";
 		clocks = <&rk818 1>;
-- 
2.45.2


