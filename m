Return-Path: <devicetree+bounces-201062-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BA023B172C2
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 16:03:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8BAB25877DB
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 14:03:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B09C2D46B3;
	Thu, 31 Jul 2025 14:02:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iAyLmzw2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C446F2D3A9E
	for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 14:02:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753970527; cv=none; b=JSfMYcK22qeqfNcvsfJzM6+w6lqBqmd/FFRKk07acHzPK7UaMNZflTvpkeRAtvhx5BdbSP93HBivGE4kaQ6m1lvVH/HcCI+gf9dqRo3vxLWyVmEAYgqFQr05gzknuBcJxYOAClWT3kHyyf36MkbYIR0BctJHW6YmfkKh7Z9r8tY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753970527; c=relaxed/simple;
	bh=kidXAy0mvcs3fegsiwVQUUCUIiIdfC0KACC45Gf8Baw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BeUuNxhUC97/XK3maySsk9TMfcvyYAhAt7mZmsrA+nv5y2UmpDPR8+ssx5uYl7fV6K5BZBxFv5LGktE28b1zXL8hg9xPeB15dwqWMITpb4+sp6lBlI1W2MeM1fE2FS1wE9OeH9b9kVjtqZ3yHDBDPj+zFpEfznnzc3cQzvlTSis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iAyLmzw2; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3b783ea5014so581915f8f.0
        for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 07:02:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753970524; x=1754575324; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fIjCGhz8tLixz44uwO4xKNvBCCKp5RNzQO4yWFCNcHo=;
        b=iAyLmzw2bxgnnCA2mSA+doWEnkLKzglsWuQPKCOdoZRR0cg53AyjVnsDzVmVEpiV0h
         KLd5T29r/rg49hm67hbKn+onKfehEf4CvQUwpCqAKOWLPJ5aTyu+v0Y6Brm78SFY6tCO
         DkDiaXYdNDniJ2CmDclz4ZK43qz0XPooYBm+JErTobDe19X8ZH71ksEbCZ12sg6dgc1/
         dfXW3L0nSo/v1aezjHDdYwzXPibi6SMPkmdY8PfAFtxbMaMFXC8ALrFlPEl6Dr4WiPT/
         +Qn2w8J8+GwSg9UQjbcBBgPzDpsL07m3CYP+gr1TpTOZ94p39NMKY4Rb93SFSA4lsWom
         CrRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753970524; x=1754575324;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fIjCGhz8tLixz44uwO4xKNvBCCKp5RNzQO4yWFCNcHo=;
        b=HoYXnMfmTnBBYGEZO2rVcutpezpsprxFtjQmJpOOld9oFpKwGScf/9M1ltXFG5iu7Z
         UPJ3aWVUiNrBkyNnQ9qCDztlhScGr4SxIMd44V+lUxsoFm0tMJoogMU3Ujm+tgzFDATL
         H1DN5udMAxqM2nyQ9g2fYPvPhmotxuWFxbO+m6+ix0uNLeRF8aAYDf/PYbI0tN2F4sEF
         D6T/T26I4ZdP3xTii+TPKoRbejmUs32rDUQnn/xXXuaMPZof/ZqTZBXF3qMNVem16t5v
         xKk9KI3OvXrhfJ/Avimb7LSObJcpLj6lCKQfuUowNEWqj3lAuPYmUq+CHepZPbUFOib/
         sryw==
X-Forwarded-Encrypted: i=1; AJvYcCWFrMuEQ/FzkQLngwPYnZLBwnhGTRdP+0ARZrh2IWmOdzExrpGJKr9hGxo5pcPEcmbOZUUIDYWCTUjP@vger.kernel.org
X-Gm-Message-State: AOJu0YwUbxc/d03t7ExqddIsgOorkt38y+a4/MDQVhoBcNzyJOwMeLCu
	j6PD0uT6mFPPg/tLg4sbxs2obIp7Br/oVJjz5gyfK2rREjr3vGxinH0O/S5vJb0hoJE=
X-Gm-Gg: ASbGnctBZJOo+eRUIZC3blbOeppQDp5Z5lQyAD243reUfDEEKjNehPz0aqBq97oZT6u
	Q0+lTg7w0X/Rbebu8MdhqUcl9oZQYDnRigl8L7ZiuKwTvTJWjNgBtZzolVecjAgljkhMdUFtYu3
	l+0igF2oLMUjmTf340vVFti/rpHwbfibRMq6kVJ7uuA+3Q6GlBs1+1PrKleodLV+MGW6VKOEUfG
	J8xTKutCLpNNvRfZBHw+QZAg9gsyqrX296oEHZD9W6vsq84OpWVf0Vx1e/U9e++7XR0nfteQEW4
	amxjmWwubwThVLz0GWHlI2c1spE6BcxGAaq6C6F8sa0oinmg6NDTSx0aHlN7w+hfw5bt+KrE0Bu
	iZkbvsWZbdC6Yn11CA0wFRAs8Fyhbn78sCDQdTeTPN0JhftDJMbuL09nMuoM=
X-Google-Smtp-Source: AGHT+IG/HsPKeTgglpnFos4WwXnhrkZuA5HfDzh0mWx5wGuKVHOsX/A/E/TRT6CmAsPxomm8vH7Xvg==
X-Received: by 2002:a05:6000:400e:b0:3b7:994b:8409 with SMTP id ffacd0b85a97d-3b7994b8636mr4606215f8f.39.1753970523586;
        Thu, 31 Jul 2025 07:02:03 -0700 (PDT)
Received: from mai.. (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4589ee57c18sm28121285e9.28.2025.07.31.07.02.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Jul 2025 07:02:03 -0700 (PDT)
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
Subject: [PATCH v2 6/8] arm64: dts: s32g274-rd2: Enable the SWT watchdog
Date: Thu, 31 Jul 2025 16:01:39 +0200
Message-ID: <20250731140146.62960-7-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250731140146.62960-1-daniel.lezcano@linaro.org>
References: <20250731140146.62960-1-daniel.lezcano@linaro.org>
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


