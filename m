Return-Path: <devicetree+bounces-135837-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E2BA02769
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 15:03:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A92601881A1D
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 14:03:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 426F839FCE;
	Mon,  6 Jan 2025 14:03:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="S4SYLq5E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7B2C524F
	for <devicetree@vger.kernel.org>; Mon,  6 Jan 2025 14:03:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736172223; cv=none; b=ogoXkP1EmV6OH45l6UeNXP3bD4OmcMvEzpJaZWCm1/6EebkckEVi08N7kSa/hPkZGD7h8K7RSjX5TnMesV8aPQEZTLmIeDjKk4NsRVLYrFbtTqtpnxr/szb4uLzO4qBvVFidBwXqkI2qTN5npDnBgnomO8k4sbFMivbk1Y2lqb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736172223; c=relaxed/simple;
	bh=x2eksJKSdXVDVuebuHcjHpwghOa96OpVmrVhc9fVacA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=S3oIJ33+jWGAXafzfk2NVhSMm6vuZII5BQOPftkc+B9s7XW1TfRd4EODQ8mpqIlDXw0d/ennpx+FYlP/3K0sqpT4fXzY5ZyDBhUlVxxDojYwyvTm5OHNxORj6BPGOKGuuuAr/u4SD8DmugmvK+IdkqsbJHVCrNaPNAUJsTY0QrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=S4SYLq5E; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-216634dd574so136538885ad.2
        for <devicetree@vger.kernel.org>; Mon, 06 Jan 2025 06:03:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736172221; x=1736777021; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kYuzMHGnD8E6XhCjcca6YSJC8fqqzUa5TU6pyjVh+N8=;
        b=S4SYLq5EnZO4PwehPOf0RHKoy215wyjdrrbSgiD4cO5VLjVuWFIxwx9Uk0PDZX/aPf
         oTOlp4klYNSTf7KXnlhL+AtskFCMED4JOvTIzbRplooumh4LjewrAr/2bQvtQMSMRGYe
         wBn58m2DZm8bfWCKQBHCq7d2EAaBwX38YFKshm33md9nSDON0EuT3Yu7T/V96JLpNZBO
         R3ngM7ZBGfK52mE/er/78zHxH7BJaS45/XvyZVesbzCyQwjkbu/Zt11azP2xALUhuMQs
         3XoFlL+yQxENO12anfHjRJmBISlZXwdT/Rjr4ATbGwIeeeIc8Q1/MY0LMdlM8XHYKVrU
         GOXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736172221; x=1736777021;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kYuzMHGnD8E6XhCjcca6YSJC8fqqzUa5TU6pyjVh+N8=;
        b=IQrEElHwkGhrR3glXf0ACfHsPaJYm4pQxoySy19n/OxPGOARe4HpJrDenn2KvS7REu
         RLAGlIY4Sk8j4XrCksmWekCZF8phDzHVkuuCV/yhSOj332hqT/vxmtQ3Ud8FL83eQ8Fo
         Lj1GxETe6DmTKLTCZsPrEuDZ+vUzn17oDIamS0CpfhBqrBH/86GF9SKYtBAlZraPeEq4
         Jczw4SFRt1CHiCYpvq6ktAlkEL122AH5WqUK4zxDCHrHh9j4YVd+kayCDLWaa3A1Kw02
         AwAWNcUxSLrwnwf/Y4jQGvIZYGQ+0tdlOcBSQV3aQrS3fYwoeVr/dj66bTtDT12Jb0Lc
         aNiQ==
X-Forwarded-Encrypted: i=1; AJvYcCX5RHv6wPeHbedPSHE4oH60X5Wb0DH5ArsrLhJCNrZ0400K7CU+1IF5tclNxxTrXeiS47kmNjzozkU3@vger.kernel.org
X-Gm-Message-State: AOJu0YyYpKxKyyhU7rEnVXiQmhLtBzi5ViTHro+emo65yHL1TztCN8g9
	8MdmGRx12kw8zAGS85zoS9cHoWWu6cw49Uduo4Amvo4aqPjrgFb8
X-Gm-Gg: ASbGncvQp4JOkRWi8p0yuYuaRmyUiMkuXVLMGHtV4goitqFBb80D7cTQV6nomM9tr65
	YB/Pr4Yq2/VnwxR0pO/9Tt2EDCAGkotQDukUnNtIrJohkDSiY+sg6ZUd1uuGmo27aRZl4ndPSsD
	ClmfNkjOHKSppAhkexg5OCxPAmupE5o3bBoTKTUXmLcjQ0FMVdCp+4HZSCJJD0rWSBvjuVQY7zo
	Dbxt+yP8poGdMaA3kmqjNkzxG3qCkAisURHB0+PLxMoyclLNQPg2gDJ+5SwXyAFK9Qz9WU=
X-Google-Smtp-Source: AGHT+IGv/ZTw3KxrI0XtgNz3OOfnts53BzVuzKLJVbFuKl97oG5Jb1fBASVM2CQGYpUiyDEUaj9W0w==
X-Received: by 2002:a05:6a00:35c3:b0:725:ea30:aafc with SMTP id d2e1a72fcca58-72abdd3bf6fmr89544004b3a.5.1736172220757;
        Mon, 06 Jan 2025 06:03:40 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:d4cb:2a53:2696:85ea])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72aad8f90b9sm31341054b3a.131.2025.01.06.06.03.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2025 06:03:40 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	imx@lists.linux.dev,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH RESEND] arm64: dts: imx8mn-bsh-smm-s2pro: Remove invalid audio codec clock
Date: Mon,  6 Jan 2025 11:03:30 -0300
Message-Id: <20250106140330.2071858-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

According to ti,tlv320dac3100.yaml, 'clocks' is not a valid
property.

Remove it to fix the following dt-schema warning:

Unevaluated properties are not allowed ('clocks' was unexpected)

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2pro.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2pro.dts b/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2pro.dts
index c6ad65becc97..475cbf9e0d1e 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2pro.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2pro.dts
@@ -64,7 +64,6 @@ tlv320dac3101: audio-codec@18 {
 		DVDD-supply = <&buck5_reg>;
 		reset-gpios = <&gpio1 6 GPIO_ACTIVE_LOW>;
 		ai31xx-micbias-vg = <MICBIAS_AVDDV>;
-		clocks = <&clk IMX8MN_CLK_SAI3_ROOT>;
 	};
 };
 
-- 
2.34.1


