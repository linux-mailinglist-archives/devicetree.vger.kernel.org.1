Return-Path: <devicetree+bounces-135896-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 423E9A02E41
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 17:51:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 345B5164E21
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 16:51:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E191F192B79;
	Mon,  6 Jan 2025 16:51:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hEivnGLT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 785A11459E0
	for <devicetree@vger.kernel.org>; Mon,  6 Jan 2025 16:51:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736182298; cv=none; b=t+2N6/qotYuxQsNZ4UtKjoe/8+ZodE419NYOopMcKsLpokKfXaVUINnBd/Xfa7i6fXmhGJbpDRpHw/IsTaPQvpQzu7yCRYP6Qxt0UZj2PvIkjs/8vsMtwLOQBvIPvkcjKvqZSeNmRm4ZhRLwvJ3IFx59fHn9mhMLpv7He8z5xqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736182298; c=relaxed/simple;
	bh=OJ1Br0ZJm2NP8A3Eg8ElcIR2rasKI4gqjFEKlctH7Pg=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=ag92TcI0hYXOH1PEZ4XfGSYhMx+ZEK350n4heH2yQi9DFA4h9il6XP+Z+KGtwJA+tV4npt2tr/8HmktD9zCwaTAUwVFzI0Qmck8K7cZgYuOtTrtkdrTCsxr8z/mbUbTTpxDIAHIsmwADFWZ+wpopiG5c65n706Rfpfvg0Pu1y+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hEivnGLT; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-21683192bf9so207557135ad.3
        for <devicetree@vger.kernel.org>; Mon, 06 Jan 2025 08:51:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736182297; x=1736787097; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Rn8lW3rSjrE0IbZU9Bqj+QdiQSzSCSOuzYtblSrGwYk=;
        b=hEivnGLTlTM83AvnhAb0Lw6MRP4BrabCv5MoNVnjbhwuSvvgYJpAs4zjHLnPw+NE42
         oNV0Kkwp13AmVQcOdo1D42UFBKA0fRqQCaK3f0q12bOfmKYzmPiJc/fIWkZJXnLjVSGh
         FOJvdGR503+reawmS9/9PCXlCZcU/JaarQrPVjhca5wMpsxazAc2zMxXxzIEjLEhUVfc
         ZUOHWKhp0LcV499kRWTgsX2/6otxkLHwkNIlHM6GslLHJBEwfzhslc3F/mFHkElQUk3X
         iJ6tWgCPSiacMWkro0TSlMPShua2RheblZUJ3qjDNjwA8Nr8FG/etZoOn8Rp9qhbo9f7
         u4kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736182297; x=1736787097;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Rn8lW3rSjrE0IbZU9Bqj+QdiQSzSCSOuzYtblSrGwYk=;
        b=nuWKD3beuPNub/HfjKZqWZi5vwOFA4dHJXNwO2HWLv5tBb02TXMypcFQSPtKRwKNey
         yov4LgUJyi6FhpyTZDJZECSpP1ImAG8xnXjwfHxkcmfQq3scw+UiyWQK24Oa7xrTfuwv
         mW4KbrKpMgnfHdV6yyasNTTHs9HFZGCPyrtGuZn1Rr/JA7/37d4YZw2twyNccH9s0pV8
         0ahzCSORTfnfsYmyf5Q4aJ0m+dbdijZceiRthVku9KgtAt/5jGIDE+EhX12T659EcSjR
         Dj8zSnpD5G1w5Tb0RM3JqbYPp6DxSaR3Wjm24KWEQQ2Fcpqa1tzjP91L43+BKKdSAoRy
         qDHg==
X-Forwarded-Encrypted: i=1; AJvYcCXU23vxX/mUX6r3xF0dxH6+8UfHaupYI0HTyHG6i+gDkNwRQ5ZLIZqDtz3rBGLulIJCJDrbsF1oFoQq@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0As7MhjD8b7JsT6TzC21oYf9FDBBBcQJZpmCZUAQK8mCR5QhQ
	aCfSU8k7+b0qARifE0DN61L4uc1NyMXKFHzLZm8E6w4oWB19QEKq
X-Gm-Gg: ASbGncuvSTmxIa6bxJfiaZEAbP64vvG8/Z7k0mbq8GMQFDPIcKhWfi8oqfdBn1QD6Ly
	cC1/zInUerG0Iy1rOFjXW7GbrsORcaV/rPyYfjLK9T5BbCGD+VJFnvks1018czv8fRJPzLeW7Ir
	oAf4eF1RbmnhM7Kn3WbNyXXBCXcTKIcgqrwhDSOfaioWqkJQSaPz+LN/6NRofymdVBnBu95gOng
	on1y8RkUuMNkfI4ZHeoLMGP5SkaO+RsekwH8I96QwITrpRp33P4yDJ4MgEEIoStf/IVmAY=
X-Google-Smtp-Source: AGHT+IFVvYCt8+BTJHJ1mknobyE1ZxiRL3Mcv5E3U8+JCS2CU6ZpTr6xHnJwoc4XnMvuTpEwJF//Qw==
X-Received: by 2002:a05:6a21:1519:b0:1e1:cdff:5f18 with SMTP id adf61e73a8af0-1e5e044ef7fmr82312567637.4.1736182296711;
        Mon, 06 Jan 2025 08:51:36 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:d4cb:2a53:2696:85ea])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72aad8fb9fcsm31785334b3a.164.2025.01.06.08.51.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2025 08:51:36 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>,
	Frank Li <Frank.Li@nxp.com>
Subject: [PATCH v2] arm64: dts: imx8mn-bsh-smm-s2pro: Remove invalid audio codec clock
Date: Mon,  6 Jan 2025 13:51:16 -0300
Message-Id: <20250106165116.2093458-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

According to ti,tlv320dac3100.yaml, 'clocks' is not a valid property.

Remove it to fix the following dt-schema warning:

Unevaluated properties are not allowed ('clocks' was unexpected)

Signed-off-by: Fabio Estevam <festevam@denx.de>
Reviewed-by: Frank Li <Frank.Li@nxp.com>
---
Changes since v1:
- Wrap at 75 chars (Frank).

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


