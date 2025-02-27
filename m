Return-Path: <devicetree+bounces-152353-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 33095A48CFD
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 00:57:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A16C21890906
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 23:57:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 248C323E341;
	Thu, 27 Feb 2025 23:57:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PQv8ByS3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97E38276D1D
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 23:57:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740700625; cv=none; b=fHRsSyu2R4pm0WU+ya7Gq1lyC7JvY/HkAuhuudcKCTgPhljXe2Uaxj9DIbY7epXf9nDEtvRpAxlzDijXGHjSHWa+YOdqf+djR3PyN23MTng/2eSPkkmE/1WCzvmw9L2dE7O4Dy9xsIFCtcGoLj6kQfDK0l8GxN9nujF4ZmmDrpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740700625; c=relaxed/simple;
	bh=Wg0qL+uCtYb0emVNW22/RZc37BiSCaAKhpfULZG/Bao=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=X2CvpPW+7O5HZcDw1gXEClhRS5c8UBC3i1HGaPozB1M+cxadA1jb+vdj3y2mrAqbUDJsRhzME8h8wb7LVWrgTOJwGdyawXf8IGtNvbRwWk2lQgiG0EYH7f0MYrN48ED8kPXLzNmtQvi+z+xzZLJWdjJh1OCWkiQGfYLslJk80ec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PQv8ByS3; arc=none smtp.client-ip=209.85.210.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-72736498817so813646a34.1
        for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 15:57:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740700622; x=1741305422; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z5qldtwKTOk2lyY9k2JiKh0YOeGWKV3wOOQCJvRufmo=;
        b=PQv8ByS39X2+gYzBxV37zZnHjAKegTVhPMAJzlLNXnFGDapW5gxzSyRcmOs0sLrMG8
         kV+paPalEhqLczrqmlCjmHvWbDw5TptuniOx2hSPdBDB4gGEyO/hk6leLeol99vfnrLp
         1ru6g+OlODSI+KtBhYvz0HY8DnZduIsuc281QBvLYBKYzAAT8n5FsN6VDH2PiFzWVizk
         pxRT6Bx5xbfRZ42XHJY/Bc5ocQ7aZREkGbVCDFuGvABK6bxn30mb5p+W8dVG02/a72/q
         8iInVrZm8CQFYWUuqDXJ5wnGXwaKWehJ00HdF62E4FQKVrah8Senn3H4KVTfI8Tpvx0F
         c2Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740700622; x=1741305422;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z5qldtwKTOk2lyY9k2JiKh0YOeGWKV3wOOQCJvRufmo=;
        b=TDm2Fyyq7/EZvzFQVJSyvEqh4GtZA4h1FI7GgYUyhZhvbZ0F0b/ESXVGZJRgkTrXLD
         r1C2mO1f6tIe3KgRmg3s3dMdKmd5fK2fBQbtuCaV4eYyTML+plXVEm3eGfZDRy2Shf7H
         oePorBGsbFDrCJwye5JN4c6rn7HEsm+GA9+yD75/FeZLjRjYULmnvrVG+xqM1tG9IolL
         SJcF63pqs5Gx6dV5apnWF065Vng7vJTOWEABUb20Sc/zvYBN9r7Bf8pFzUV28OMdf1Lv
         MH6C7FuCP/soBwgGmrAXug1opOdLJBXwglyWQtaNhkjTw1sSY6c7w9bO9gMw4GwdE86w
         17Rw==
X-Forwarded-Encrypted: i=1; AJvYcCXnSZlUnQ4/u4g98zx3RHUwRLBZhVnVgN17famgqRPc0cvmMetkViuC8ZgyrQQQmuA2v82QYPeuMv1V@vger.kernel.org
X-Gm-Message-State: AOJu0YyTGhlyAGaAiSUKpYeEXf7RE9zIZH+BVrnyyIWWXkshByfhglmr
	H5VHSHTJMmB1xOp9lmVvj5GrgIV9iXvy9iicLCEc+MZ1fY/+n4Vo
X-Gm-Gg: ASbGnctJHHgMjKB31TF96hM6ReTnE7sntmcAP5RXVhh+qUl2dUqJURNNKqcft4oy5tl
	UliM7TPbSH+4o+GOB2Yjy6rOEiSBMfKDfNnQ6SiArHYcf893EnusNKNSCotaB/2CUYQA645gjFO
	GVGX5QlNyUvnKCRkK18gV1fcg66Y2wZfDEcCvcgYDkpwsFhTsNsOIPV6vLXCYlWpkHowUQkAwZ4
	5C3WgFi23yeRmjQBgJx0ACkdA8LUWYZg9ZVjHXlh5HnRJwi08aAnt1tRzhqFOdXYE9MHvIRcpxk
	xLNgUID8qXZ4PC38jkHOUPJpAx5iR8onmnk=
X-Google-Smtp-Source: AGHT+IGEdHKwS2hSSdb/fkXNu1lxMp/LqiB34cBRPY7akjBzyiDCblI/9TJhTawmjo7GuyZgfRQ+1g==
X-Received: by 2002:a05:6830:2784:b0:727:2b73:cbbb with SMTP id 46e09a7af769-728b8286a11mr661836a34.12.1740700622642;
        Thu, 27 Feb 2025 15:57:02 -0800 (PST)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:87c8:8ae4:f338:6188])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-728afd7694fsm443893a34.50.2025.02.27.15.57.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Feb 2025 15:57:02 -0800 (PST)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Cenk Uluisik <cenk.uluisik@googlemail.com>,
	Chen-Yu Tsai <wens@csie.org>,
	Florian Klink <flokli@flokli.de>,
	Muhammed Efe Cetin <efectn@protonmail.com>,
	Ondrej Jirman <megi@xff.cz>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH 2/4] arm64: dts: rockchip: Enable HDMI audio outputs for Orange Pi 5 Max
Date: Thu, 27 Feb 2025 17:56:21 -0600
Message-ID: <20250227235623.1624-3-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250227235623.1624-1-honyuenkwun@gmail.com>
References: <20250227235623.1624-1-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

HDMI audio is available on the Orange Pi 5 Max HDMI TX ports.
Enable it for both ports.

Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 .../boot/dts/rockchip/rk3588-orangepi-5-max.dts  | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
index be8cc96b5308..8b1d35760c3b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
@@ -50,6 +50,10 @@ hdmi0_out_con: endpoint {
 	};
 };
 
+&hdmi0_sound {
+	status = "okay";
+};
+
 &hdmi1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&hdmim0_tx1_cec &hdmim0_tx1_hpd
@@ -69,6 +73,10 @@ hdmi1_out_con: endpoint {
 	};
 };
 
+&hdmi1_sound {
+	status = "okay";
+};
+
 &hdptxphy0 {
 	status = "okay";
 };
@@ -77,6 +85,14 @@ &hdptxphy1 {
 	status = "okay";
 };
 
+&i2s5_8ch {
+	status = "okay";
+};
+
+&i2s6_8ch {
+	status = "okay";
+};
+
 &led_blue_pwm {
 	pwms = <&pwm4 0 25000 0>;
 };
-- 
2.48.1


