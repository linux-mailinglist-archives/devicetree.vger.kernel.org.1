Return-Path: <devicetree+bounces-200880-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4E1B1672F
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 21:54:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1A66E7AA51A
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 19:52:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1179221FA0;
	Wed, 30 Jul 2025 19:53:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="f0zcxdA9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA96622127A
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 19:53:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753905192; cv=none; b=sKb36axvhg6DXQLC+JY156gFRsTC5XgaGdC8QiHw5Ve6nBgE/opVYp9PwVayCzDJo+IwHIk7ZQ4PFYJxzPBZVek8t/y6Wvp8fwe8nAMYF1cxPEaqRKSLrqkiNJBOf/FuYqH0yzi5j9qLGhYrfgvxLh2W4Op5Ja9GpZ54fF6o1w0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753905192; c=relaxed/simple;
	bh=kidXAy0mvcs3fegsiwVQUUCUIiIdfC0KACC45Gf8Baw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lQm43bJ3/wFwAwJJAEpLTE+u85OBSjCwwOXy0JgzxLoCdVP/SQm4yru178y/ttUqQhJOGYAwkpLFzEik4X8wykyv3ZlneATQV1rrESENPM1kJN9tPsC9+XwN7TmZ6Hf112AfFMckNafM2Y6AKvxmMWpZzMYWOFimUc1yIm6+sWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=f0zcxdA9; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3b783ea5014so119737f8f.0
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 12:53:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753905189; x=1754509989; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fIjCGhz8tLixz44uwO4xKNvBCCKp5RNzQO4yWFCNcHo=;
        b=f0zcxdA9b2sFZZlciMhAPj/Np4oRpiT5aay/ELvuwwmfe0IdPKTfelXPyUyZMmKXfC
         YwW+WBRYJBT48pBoZ6GTC6ajfwWlUiCkDeFKneTNNr+geDEw+luECt16pt9dPykRtMJw
         apbO+l2FXAzh1S3KNmtmevZJ/3OBabCU35+dEAkpLtqsJ+ibOEp5+AmX8fGLDFSA3TLn
         jMcWagbHNcdvYRpge2qmTBP1p2k0W4kyRYjM0CSa+5q3FszbzMTXzKMVxNDIZff4rPWV
         3Fha8H3+2XxOykE3+nSlKNdcHWX/GKStsJDRKOlszDfVuBiO7W0PLNbBCST0zy/O5C3A
         Tlyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753905189; x=1754509989;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fIjCGhz8tLixz44uwO4xKNvBCCKp5RNzQO4yWFCNcHo=;
        b=bJvGCwRm5xG9PQ5nM2GUqlq6MISOcCOYjZuEy9r0Ke9iikPuTkVw05ILDjNMkrzmDx
         a5OByg7hYKCw82iYwHrYtKbpMMTktd3/BFbpQ4zCLEIbieuEhFjCHV/p0lBtN2Mnu9i/
         JuMdzw50Wm08TVV4nMcrDMZHl1ofhM/1EAOW1nr9wrPxbIoT+AVo8Y98O+9Y6Ok2J6Yg
         1SssJ/oTD3MTlPuh32iyOVEk0zdCXX7fVB4DRjX7C88cq71DCcA4+IO233uRjRlUy4GZ
         sNzN91zWNBhS4Tcq4z270ugdac/f8QEWT/i0lyWEbovkpT+vpSU4gnNkCFudWG9n0G9P
         elrw==
X-Forwarded-Encrypted: i=1; AJvYcCVz+slp3dvbKVWDZnPmsJcayLCkwWk/raG/Fv6uRaTV+NJha4gk5o3ziUysdILXdHeWA1iMzEEsozOs@vger.kernel.org
X-Gm-Message-State: AOJu0YxKqtiJ1wtdP4tKScUJsYTDODtLzcy4c/EWzujvgRlorGFPYoO6
	Cvpry/hoSwYTQobH9TRMCau7Rkd16y1TAhj8wjyeAecCqRvbnq5EvBc42/cFPJDUWyg=
X-Gm-Gg: ASbGncuVxnSpFGtPrx0zaMHwi3ZsyUlYOcGEAdbxJX/J40QbdlEmNIgUWF3rOJdDLDX
	WV+E3WiPdG3CXduuT7AzrcpQmfUlC1GCTPPngEy8cnHT6DNjKrAzDTWZOZurQ35OvqFZxWanR9r
	8pvEATuZf/P2+WAqASJfcAWuAnrKMTJV8m7anBEMum94S4ay7ifRAIpiHd6lGQzYStajiUijFI8
	dNOWlnxPl3A5F2kApS7hTxcWF91njVBICuc22F6SEaxoHSA1vONP8LIgihlD8x4nK1h2XSSlQOY
	CMG8t1uPfgify2M6z8ZbXe3AIXqaPstu6ciVkWLIH95g5M9yUghCFkOSZxSF1ervQwpyUs6zJO/
	22CD1cKuch0aRacmAQFs5BmgsU01Rh1K/r6VbBsAHya9vyS/2
X-Google-Smtp-Source: AGHT+IEmsYHO0oNTJZYruShh/TW9R20EpAqhA//OGFPfdlNYdNfaTg5M72i1uh4bkKDQ8O6mJZ4IOg==
X-Received: by 2002:a5d:54cb:0:b0:3b7:889e:2b2b with SMTP id ffacd0b85a97d-3b795010da3mr2683397f8f.47.1753905189071;
        Wed, 30 Jul 2025 12:53:09 -0700 (PDT)
Received: from mai.. (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b78b26a4dcsm9556193f8f.32.2025.07.30.12.53.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Jul 2025 12:53:08 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: mbrugger@suse.com,
	chester62515@gmail.com,
	ghennadi.procopciuc@oss.nxp.com,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de
Cc: s32@nxp.com,
	kernel@pengutronix.de,
	festevam@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	imx@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>,
	Thomas Fossati <thomas.fossati@linaro.org>
Subject: [PATCH 6/8] arm64: dts: s32g274-rd2: Enable the SWT watchdog
Date: Wed, 30 Jul 2025 21:50:19 +0200
Message-ID: <20250730195022.449894-7-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250730195022.449894-1-daniel.lezcano@linaro.org>
References: <20250730195022.449894-1-daniel.lezcano@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The SWT0 is directly connected to the reset line and only one instance
is useful for its purpose. Let's enable it for the s32g274-rd2.

Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
Cc: Thomas Fossati <thomas.fossati@linaro.org>
---
 arch/arm64/boot/dts/freescale/s32g274a-rdb2.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/s32g274a-rdb2.dts b/arch/arm64/boot/dts/freescale/s32g274a-rdb2.dts
index 505776d19151..4f58be68c818 100644
--- a/arch/arm64/boot/dts/freescale/s32g274a-rdb2.dts
+++ b/arch/arm64/boot/dts/freescale/s32g274a-rdb2.dts
@@ -56,6 +56,10 @@ &stm3 {
 	status = "okay";
 };
 
+&swt0 {
+	status = "okay";
+};
+
 &usdhc0 {
 	pinctrl-names = "default", "state_100mhz", "state_200mhz";
 	pinctrl-0 = <&pinctrl_usdhc0>;
-- 
2.43.0


