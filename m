Return-Path: <devicetree+bounces-248104-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DA778CCEE4A
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 09:10:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DB8323021682
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 08:10:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B83552DFA31;
	Fri, 19 Dec 2025 08:10:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bPeCV/4N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F182DF125
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 08:10:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766131805; cv=none; b=Ip8pcky10RZcMuUSHjHcNBxmm2U9xEQSQYqMthItxW1Ah2ISfKwY+DywN4nQO/Oc4kfRXxcJxloMRAKA6uFViY0xkNxIND4bLMSwsrWPqrISkhx9/yke00f4UYeznLoQtEIQkpEMR9cYUEHDO47jkeVc9Kxo0JsABDEXGnkgzls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766131805; c=relaxed/simple;
	bh=hdlRtRi9TLU18op7sSDjRmIwRirYAAfHoP1MDNioDPo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UkHOcS1q+jOdO3julzQcyzwm9dxqHSUTOCiJHb3x4UraSfTAWKP3mhK5FL9VGtNryl3PjaAfqbXRJ59bUYe3PR4FlT7dbq97W4/qJlhD3f1OFDRnRWmkxoQ+nSw7/s+0S7OqQQgH4W/g/r7U1hU4Dbzkj3OlIk80uWBQlaXBHj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bPeCV/4N; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-7fbbb84f034so1262656b3a.0
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 00:10:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766131802; x=1766736602; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oieK3l8IF6JRtYEigMvXLtMbPyL5df1jv1S8R3nBwz0=;
        b=bPeCV/4NX+1KF7fk2OGOtZ+zAmdmNCekdwavG9jWlLK2xpDstoBi1nyp/KLf7lJIP7
         4bUktNgSYIrkOh9cuSnIfVNwU9Jm0F0Wsg1iD1mTKrv27CB1Jrs3zacoqgzMojMFr+Cl
         aEhVK/gr4jB693g41aQcHFqxAi8ISSOM07kwSLZ9aG3H8a2awjqkjZTEyQ55HMDRVEJC
         a1e2k6yHoq9ZQnIQu2YQXDbt1mTctmCdAIUjMhVt8c+qguvCNoFVL6wVjOuPcbTx2+A7
         G8xgyOLBlZeywSU+dncM8vUCTtRuRnM1k/n/VdpHGF929WlS6+L62z6buxKJrqACu9u0
         Etkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766131802; x=1766736602;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oieK3l8IF6JRtYEigMvXLtMbPyL5df1jv1S8R3nBwz0=;
        b=INcRcE9axaFDs/duotLEeuMvZVNDzN0IU14qc8nYdTMVbTYmWru0UdvneaXxmnqU5Q
         qQ+V/i+Tq78GyDwXoQ6mzOZSkNnx/9t4bRmfgHdffw+0jLfGdfqafNWasGmhxgg5xp++
         UFXky+L8VlGv/AdiDdGh2nsbo3ac5eLa2UTDwYum4xemiqh97eoTFR+Rx4Vq+bR0xCcL
         hkAVYIhM/9zuHH/DD4iXdzXRnVpcIKXWwrj82f48kti3kEsTflUV1yveYbtt2lEl8FRD
         vwslDaEqrccRls/buaXlse4rWCEnrhLNDuIdlHmQR0a6pkfjGXfJq5dtJjNYQeF0F/5G
         oWDQ==
X-Gm-Message-State: AOJu0YxF9L5qhIGEitCdvt/uTNhqxH0aFlZudvviBPYP6MLCjNst09MN
	vwmrSOABA0wcK7f3BqCEc6ojp9uNAleoKuabI4Usve37PqRwzzp5JvL5
X-Gm-Gg: AY/fxX72eAzkRf6VPXzQP1ILZTJFdnBt4U2D6G0s3uwqjzKvzsQnCaHCkHtkkXpEhLt
	kRXfYOmWYjYXS/G1496mMtG5ttpmlpgAP4lS2lwTXuARZlyXjjoWOX900Idiaz7kHyBXT21RtQ0
	ClOeKnfooVewW3H0z1E5+1WGQEbn4Mgn7xWrg45i3gdVXKFjeppW6bUCdfQ4t+fb2EahbxnTg5e
	GRGNOkt03E6QkgrUiYojGD8irA+qLelctAAeAP5TOmeXD0TIPkJnHYe6oqGlqn11h/hRitWIlNy
	vbhGi1pHkOee56TfIvkKsjFjoG5IV3DOqL8D2soBC6meerX5aDvzrQrjJzGIDZT1pYqvtYbFP3j
	MpMox2O0/uT6v7ucOCsVEEUD3yY6xcnufaFllC5CbmvxA0yxu88aCIvtbxtNzPdWO71f7wJDFnv
	XE6D+qYJ5EVRJ/bSvdonvqrMHlVmZrQ+Fwf1bK1SfF8oT/DM+/61eX0x7gaptC/n2atAH1nlJtm
	DmLBANr0CLTWVOE+MWh90gahuwWTX58LFNSRck55YMhDQ1m/OUPTv+FT/LdI6KQdKiF92I34Ghy
	axqGVBf9hLk=
X-Google-Smtp-Source: AGHT+IH6O9k87iUuZRQCfjVUNtyzbvFvDBUF0hfyDpwm5q4iSnF7KU2QOGhjZzrGAX94hmXJlBmPPQ==
X-Received: by 2002:a05:6a00:a882:b0:7f7:26fe:c92f with SMTP id d2e1a72fcca58-7ff64cd5fcbmr2018064b3a.29.1766131802504;
        Fri, 19 Dec 2025 00:10:02 -0800 (PST)
Received: from 2001-b400-e3ff-afb4-41b8-b31c-89b3-0a14.emome-ip6.hinet.net (2001-b400-e3ff-afb4-41b8-b31c-89b3-0a14.emome-ip6.hinet.net. [2001:b400:e3ff:afb4:41b8:b31c:89b3:a14])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7b423d86sm1597274b3a.26.2025.12.19.00.10.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 00:10:02 -0800 (PST)
From: Kevin Tung <kevin.tung.openbmc@gmail.com>
Date: Fri, 19 Dec 2025 16:09:54 +0800
Subject: [PATCH v3 1/5] ARM: dts: aspeed: yosemite5: Increase i2c4/i2c12
 bus speed to 400 kHz
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251219-yv5_revise_dts-v3-1-ca1d5a382013@gmail.com>
References: <20251219-yv5_revise_dts-v3-0-ca1d5a382013@gmail.com>
In-Reply-To: <20251219-yv5_revise_dts-v3-0-ca1d5a382013@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Amithash Prasasd <amithash@meta.com>, Kevin Tung <Kevin.Tung@quantatw.com>, 
 Ken Chen <Ken.Chen@quantatw.com>, Leo Yang <Leo-Yang@quantatw.com>, 
 Kevin Tung <kevin.tung.openbmc@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766131796; l=1020;
 i=kevin.tung.openbmc@gmail.com; s=20250924; h=from:subject:message-id;
 bh=hdlRtRi9TLU18op7sSDjRmIwRirYAAfHoP1MDNioDPo=;
 b=iAJWJED/ZWZRo52wpqJhzFlhUoPTycBrTupcQzGdg/tHGBb9ORmlnq+1D0gO/nkszCJikiMuv
 +qDp18nvbegAk/VpV07EyHZlegt87Eor/yxHAO066vJpbUXe7X48Vam
X-Developer-Key: i=kevin.tung.openbmc@gmail.com; a=ed25519;
 pk=PjAss0agA0hiuLfIBlA9j/qBmJaPCDP+jmQIUB6SE7g=

Configure i2c4 and i2c12 to operate at 400 kHz instead of 100 kHz.
This update aligns the bus settings with the hardware capabilities
and improves MCTP communication performance.

Signed-off-by: Kevin Tung <kevin.tung.openbmc@gmail.com>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
index 2486981f3d6bd36f3fe780b21e834b85242f8aa9..7991e9360847532cff9aad4ad4ed57d4c30668a0 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
@@ -231,6 +231,7 @@ sbtsi@4c {
 &i2c4 {
 	multi-master;
 	mctp-controller;
+	clock-frequency = <400000>;
 	status = "okay";
 
 	mctp@10 {
@@ -782,6 +783,7 @@ adc@4b {
 &i2c12 {
 	multi-master;
 	mctp-controller;
+	clock-frequency = <400000>;
 	status = "okay";
 
 	mctp@10 {

-- 
2.52.0


