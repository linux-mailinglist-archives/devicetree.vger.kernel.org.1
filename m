Return-Path: <devicetree+bounces-217315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AF4A9B57530
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 11:47:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 31B7F18889EF
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 09:48:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CE022E6127;
	Mon, 15 Sep 2025 09:47:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dRs4a/94"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34BB8242D66
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 09:47:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757929661; cv=none; b=bHAWXDgZqimA3mdf3DiG+IT29Gjfect286kf07LIbeLDWcpz1NYitIlBH/Y8rgFlPFqfQHXGWjD+sLT4DYH3NUdMrtrn0kBWf9oyFTh2Y6kIsqSwyr7tPTitWSG8uLJLISUBVw4jp/F3IigbTWKLDaBmtv1UMk0+713cNBSXTD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757929661; c=relaxed/simple;
	bh=cxAqupFOX5uFq92Avu8qu3m3xhpolK/5U494g4n1Fko=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=ZDcpUz5tvQxovkQMOiSTctD8i86DEUDTgihvtkUuLRjZ8yMP9gTpUZjZsb6JIZmRobSA4M1id9i+ZxpA9gZi/nTW+eb/qO8w0/0vvqrPq+LSqBn9LnNonQ21JK9YzaWE6ks0TVbkcJC3UzOH7Ncy+T9VGzX6cqnifnaKILFiNBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dRs4a/94; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-7726c7ff7e5so3155951b3a.3
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 02:47:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757929659; x=1758534459; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=puq/QVPjJHJaaP1wqvS4Jd4MbGPB7yk1PKVylU/wUU8=;
        b=dRs4a/94Ab97T+2n9/ZsN+jqVRZVhyQnyMdM3/IYNwqHeSs7oqOd6Xq0MMcqLaT+g8
         CjAMk0zgtbP2lbqvUWuuUwLmjq2knQgwtmg1gx9oBX5P9w0dctwpjf9a6nszajtUl/0t
         ycnIGPJ1D0vTlC+4PTgnJu8+3mA7fjl7Cx61/DQTx2zFdOcBsyOJoO5BT27d4F+XFAI0
         /QVe1W59lOPhUU+d9j+krsQtacqBaSkB9fCZtUpZ+bjOo7j6ZueT1t8nHokm5En5xnBf
         d1C3R+c0VIJDtdf93+53Rv29dQgrtmc/jQZI8FlPYLI9avY+7vwfigZUJYge9MmUE437
         CoWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757929659; x=1758534459;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=puq/QVPjJHJaaP1wqvS4Jd4MbGPB7yk1PKVylU/wUU8=;
        b=Nh3wM6Sy76Fj0eai06Nqjhs0RgFrI3zYGr+IYfL0q8PTOnDfayxgAD29O6rMJBOB10
         rv/zUjbHLhreSet3DliMq6N796fqg+NfAoJ7s84c0J0GsIemrRANlIL7D28dGOqpnPc8
         jfc4KjTz/QnuNFwH28QoU9EOnGMr/l439EI+zuSooS98vd0gRgICZOI2fiM6JmmfYbSm
         /lw4/Cfz6Yb+J1oNt2e/aO0BEynCOxWZgsEp0pDPbNW+0VVcQpa19hfWddh+b5XXvYE1
         7TssF7dyDwWMEmd/w2JT0xJ9LstNNURWIFXD2MbJ6tSZGA+TIoc6QfN2Qlx4o3jhRrUf
         mnqA==
X-Gm-Message-State: AOJu0Yy/kf8eMnWQ4c7gYKhWr9apNkcSo99VJjlXbfaOtJzeot/dmxyC
	Yz7d5fZsgtOO7A4NNA2WP+OBtPUMrh47iwlB21ShJWQdMP2qvsP1Kff/
X-Gm-Gg: ASbGncvw0JvL/AKl3HceHI1x2d57D+icZjz9c84A5ZYSRGFsZJgK6LPsI6WsRcYyo0X
	iMUIBHeQnRSxr2cgCRjhJnK54XmXfdE+80aLDTCtw1s6QXO3QWP2uQ2jiXK7iBpLRT9lMVGO1FS
	tXKLZEP7LtCtLxCpUOXaJqvqDoWwp2zIRWGmw+RMc3APU2mt3owshb5kULF6EJ/gUAGaYPRolm/
	TCOYaUWHqejWAWvay0DYIkr4KMylil407GwcWCHoBPu9HL4XND3D7bwefUAkM3KJb4UXZqr6A0E
	nYju1pwOEFJLZOVMfqhTy7P8cA9GphLxoG+J+Td3AsbgLMXMr6x8U7sFxk3FpdbShcb4AUOsfcQ
	t0C+MURXEkENk0pLURPo6iVHaRBUP0MFaaR/bRnE1rbe1+9pJox/5p/IVjNg=
X-Google-Smtp-Source: AGHT+IGkXts2jRdzrIsnTzuf0gryCyKv7pwYxHT8stwUeB3vyz3wWYX7tzBsHMaYizcHXmUk5+6mwA==
X-Received: by 2002:a05:6a20:432b:b0:245:fb85:ef58 with SMTP id adf61e73a8af0-2602c90cbe2mr16311805637.40.1757929659394;
        Mon, 15 Sep 2025 02:47:39 -0700 (PDT)
Received: from [172.17.0.3] (125-227-29-20.hinet-ip.hinet.net. [125.227.29.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77607b184f4sm12997210b3a.62.2025.09.15.02.47.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 02:47:38 -0700 (PDT)
From: Leo Wang <leo.jt.wang@gmail.com>
Date: Mon, 15 Sep 2025 17:47:23 +0800
Subject: [PATCH] ARM: dts: aspeed: clemente: add shunt-resistor-micro-ohms
 for LM5066i
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250915-leo-dts-add-shunt-resistor-v1-1-d65389148a3d@gmail.com>
X-B4-Tracking: v=1; b=H4sIAKrgx2gC/x3MwQrDIAwA0F8pOTfQylpmf2X0IBprYGhJXBlI/
 32y47u8BkrCpLANDYQuVi65Yx4H8Mnlg5BDN5jJLJOdF3xTwVAVXQio6ZMrCilrLYLPaFdvHz4
 aZ6EHp1Dk7z9/7ff9A4VGMn5sAAAA
X-Change-ID: 20250915-leo-dts-add-shunt-resistor-8f96c94cf2a9
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 george.kw.lee@fii-foxconn.com, bruce.jy.hung@fii-foxconn.com, 
 leo.jt.wang@fii-foxconn.com, Leo Wang <leo.jt.wang@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757929656; l=1194;
 i=leo.jt.wang@gmail.com; s=20250618; h=from:subject:message-id;
 bh=cxAqupFOX5uFq92Avu8qu3m3xhpolK/5U494g4n1Fko=;
 b=GRx+rMoPC+Ks8u7cyFLnZgiZtR2njjInKSWufNm641lfB01ZSutgDpAepPQNVYxa1v3HucGVm
 CXu/0vJgogXDF0XZGPSB2GXDvlJT6dGy7IwENtdjSa5g1twGsK3oMQP
X-Developer-Key: i=leo.jt.wang@gmail.com; a=ed25519;
 pk=x+DKjAtU/ZbbMkkAVdwfZzKpvNUVgiV1sLJbidVIwSQ=

Add the 'shunt-resistor-micro-ohms' property to the LM5066i power
monitors on I2C1 for the Meta Clemente BMC board. This accurately
describes the hardware and is required for proper power monitoring.

Signed-off-by: Leo Wang <leo.jt.wang@gmail.com>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-clemente.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-clemente.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-clemente.dts
index ecef44d8997775b26cac10353b42b03dc644f033..a614f947dafc9a6628c3f3d45b62ff3ca9d2b618 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-clemente.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-clemente.dts
@@ -642,12 +642,14 @@ &i2c1 {
 	power-monitor@12 {
 		compatible = "ti,lm5066i";
 		reg = <0x12>;
+		shunt-resistor-micro-ohms = <183>;
 	};
 
 	// PDB
 	power-monitor@14 {
 		compatible = "ti,lm5066i";
 		reg = <0x14>;
+		shunt-resistor-micro-ohms = <183>;
 	};
 
 	// Module 0

---
base-commit: 3708a165a98c23cc83216deda88bc7d64ba85527
change-id: 20250915-leo-dts-add-shunt-resistor-8f96c94cf2a9

Best regards,
-- 
Leo Wang <leo.jt.wang@gmail.com>


