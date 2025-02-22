Return-Path: <devicetree+bounces-149893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB3FA40B77
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 20:35:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B53DE42059F
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 19:34:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30E39201026;
	Sat, 22 Feb 2025 19:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LDtmh1ay"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE74520F08F
	for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 19:34:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740252863; cv=none; b=BxJtEuv8TFQw7CH6UQJTIUwLiWjJxlsjs4EDWRORIXYx3cLAeDKSfP5Tz2G/Euxqa+Xc+h61P0kv7KwHaIp54uqB3IWZf1M6jE206gjEM3kbI0EZ4hqZePOU0AZGy//XODO5Js2HcPo7xDuNpfXcLFdelQboXzj1pHpOZXZDCCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740252863; c=relaxed/simple;
	bh=Ixqju2XPnpADOYS2j/M7VKH6RZvOazVW0Mg+2FOKxpk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uePIq34gbZPbuOSQM5qxfR4KpFT0+yv976p7JK0OWTOZXQzhlq2y41hQpnSuhl68rOldkst1gBP8e7b4kYHhWOHtUpwqTf9DTZetU3cMW9QWtnGypKEyLwYg9XPaGt4Ut/c8IwCpMtskuFca/G/JCzXC+k2QVLjSwqYN5FxfJWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LDtmh1ay; arc=none smtp.client-ip=209.85.210.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f52.google.com with SMTP id 46e09a7af769-7273b0d4409so844293a34.1
        for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 11:34:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740252860; x=1740857660; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4p//QQSnh0sI60/OdJjuWE5Xl6l4M+zjvVhaN3uhEcA=;
        b=LDtmh1ayVL8CKtR03sQ4JnpzfWdHQ+S/FkD5mDhlrQMKpsueMfsZiJGzEZ3TsKegCl
         P21vwmTujRbbyxS0ej4E5e9PIaPtjqszeDLNRVJ55YQy746gl/NxIn3aO7bPSgDu6Wcn
         J/EHA0lW1ddnqGwKhZFbFojHNO48Ie7OlBZq7Hler0xD2lw/vuZKmZiiYKRNBB9+fHkm
         91jX2TWnprEAk5odHoY4WUpayrNCpp0no6L9drjWuBlKTEcSCxrLsyT5vYTz+Qc6TGb4
         y3Ck5qFCM5vZEkUn3ve/XQzprpb9DvtN0D2+XLE8rW3q81LVLWsoec+C2MmAC3fpAK0H
         aSWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740252860; x=1740857660;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4p//QQSnh0sI60/OdJjuWE5Xl6l4M+zjvVhaN3uhEcA=;
        b=fEJ/CwD2pZKRV6W3MWf2+cDfhuLAnK1gJW+AFGL+YyM/ffta0WjGsui+6taWXkgy85
         VywR6ppeQtNDYrVPdbHY7LCYZAaHy5z1NBlyMcOm0o3lQScp/1RzqgHVYzixiNwDAuJN
         H5gwzGf3Lg1XGin+l1R1Hx3Eq86VlPocDZdWvizq0kizCyFeGszbu1iLbGV2/OqpEMAW
         sJwW086PSdTmHAyuwA3SUlfvAtARhli34fpoBMwdls+2xCBjHzXr+v56oPXys2t49Da4
         7/dZ/KP0BYyw7SDnlDVOygurdSzdEKlAvabVJx8BIk1QNiVjtf21nYPmjBksp8h4qzBh
         LZVw==
X-Forwarded-Encrypted: i=1; AJvYcCUpDO+S8OJE26tMbIMoYTPlFlN3u2zW2ipfpW2ZImF7Gn6Z/ZWQatpoPsAQ7unAhsgXzM7uzU/C6yeS@vger.kernel.org
X-Gm-Message-State: AOJu0Yxzynm+uofVevX92aRJhP2MVcUYSZgoSwsdiuVlxcqFXDo+dep8
	ycPpLUfubIuHKSEyGnuZWVcJTjiG5CDtTt0hjx5t1FNf7lh+PjuT
X-Gm-Gg: ASbGncubjBUH1b8JJVf8VxhpAgZk9R+vV1YfJMEIDd8z3tsydm5ZELVfQqpG7Q8dAVt
	gPSPsRKxxYn/FUnkpeC3V19jkJtTm/cFCsiYQURjV9BxuToX43AS5YzYyhXB+1ycYCrDQW1GNUt
	0B45hI+csliOVe4mFjI4+2cEpvWu43yoIniAJaa8vj3wUBxF2p45ocd6T08vXzyvS3HivAWDH8Q
	4UptO23JuP5eHgUUc7LyRx6N6CVNsIBXNVfllDCPv7xdAO7brbVFRRc5e99FlnD2MmZxEqG1Ob3
	nXHEtEpfEMdGRXsoVK3n5MhczXpNDHRJHQ==
X-Google-Smtp-Source: AGHT+IEnzxqyO5lD84qybn3dOo99njJP4IlFDL9igo01O+GEoFDDWs2g6v67O44C0/UpjTlNDooEcA==
X-Received: by 2002:a05:6830:7302:b0:727:40af:165c with SMTP id 46e09a7af769-7274c2452cemr6470966a34.22.1740252860622;
        Sat, 22 Feb 2025 11:34:20 -0800 (PST)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:b69:ffa3:9d4e:2cd7])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5fce7afabd8sm2724012eaf.34.2025.02.22.11.34.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Feb 2025 11:34:19 -0800 (PST)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Johannes Erdfelt <johannes@erdfelt.com>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH v7 5/5] arm64: dts: rockchip: Enable HDMI1 audio output for Orange Pi 5 Ultra
Date: Sat, 22 Feb 2025 13:33:32 -0600
Message-ID: <20250222193332.1761-6-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250222193332.1761-1-honyuenkwun@gmail.com>
References: <20250222193332.1761-1-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

HDMI audio is available on the Orange Pi 5 Ultra HDMI1 TX port.

Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts
index a4db0839bcfd..6de351dff1ba 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts
@@ -43,10 +43,18 @@ hdmi1_out_con: endpoint {
 	};
 };
 
+&hdmi1_sound {
+	status = "okay";
+};
+
 &hdptxphy1 {
 	status = "okay";
 };
 
+&i2s6_8ch {
+	status = "okay";
+};
+
 &led_blue_pwm {
 	pwms = <&pwm4 0 25000 PWM_POLARITY_INVERTED>;
 };
-- 
2.48.1


