Return-Path: <devicetree+bounces-86756-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BD0F93760B
	for <lists+devicetree@lfdr.de>; Fri, 19 Jul 2024 11:46:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 509AA282CE0
	for <lists+devicetree@lfdr.de>; Fri, 19 Jul 2024 09:46:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 412F084DFE;
	Fri, 19 Jul 2024 09:45:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="AnRvTlNM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E33A581749
	for <devicetree@vger.kernel.org>; Fri, 19 Jul 2024 09:45:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721382346; cv=none; b=T51QYcOjLj7dTXbrlaXwJqSUglOzNkT+hPfvwXQF6JhQ/x2hnpm0IUHXfFp58dgLOCV21gO7DLj/Wwdfx8wQBQEFXNk6uFnJ5idwJoia1Zb7oRxfq6k6TK+O+I1WZGiFwUJv1hXB8uWZvce6bxAVEaEx+Dv2YyBEA/U4zgyXFvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721382346; c=relaxed/simple;
	bh=ktL075+vgq6cWYqcECtw9d1aoTJoi7kLRDiZQD8+fpM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IPeidRXPb8938nIPAtrCoHsszs/K2+uhAXTdMBSZHx0j/eVv00JJaNPU/Mu/kUDczPpp2jkARMpR3qSFEaRhnAOzSA5w/vALi6ldpHGGoln2lpAOk1K6d29wJdpkGzh5wG9eEjXfAshEk3TYwzgjQ13XxeOtrWLBu5IUpcZqx18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=AnRvTlNM; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-1fb3460b416so2100495ad.0
        for <devicetree@vger.kernel.org>; Fri, 19 Jul 2024 02:45:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1721382344; x=1721987144; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jz9ch4dVrBxP6urYri9BwgC1U24Q+OuXsXlD8NvO7qw=;
        b=AnRvTlNMg0jErGOSKZEH3jUS/qKzMFkJDqAtlxyvxbyofgrAW6n9ClMZz9aMLpzoVa
         KKIRP0EyhOXW70f0gJg8dz5tYUfZFWA8ZvXMPo9tw9vUtllW9E3SZa0GagAIKW9ZZp5m
         vmIjE9JMfnoqd4WoH/0FjnEdJ61TbguIA/AzXcmK23YuOH5RHRjNYocy4AftsZT+ZfiW
         yuV+WWCS0qxfC0eLkWDNaBBV9gSYpPaSaM8mCw5nGxe84SkO33YOAW2xVX275CDkj0CQ
         P16zVdH3BuBo3PNj9vikCNL5I6fcCpkJoyK5CVHk63H2VUEbxJd3JqSr2GF7VVDQvUk7
         Tu5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721382344; x=1721987144;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jz9ch4dVrBxP6urYri9BwgC1U24Q+OuXsXlD8NvO7qw=;
        b=m7cV6K3UGco7tXzmkSOWb2/T2/HoehXsmWsXml2sz0wIbneLUwB7Nl3ZD88RJVl2xQ
         diZNDZmYUqvk3byiUoGp3YOon2I1cbnYxRcqSPhLjb7nuKZbUbM4CnagSchKGr1CZsO6
         vWVlM+35i8QjTiXc2fI2t8N/tp1hCkeQ110CZibeARy8hRNCr37MVhahA3xAtyjrSXyL
         02ykQ7mfGHzdhaNB9W4Q2I3cZEySwJ/Db7kpu+NVEZ2LbtoGIk1LMyFaBIqxr52o9dKr
         dhlkx+B+IM7g+UKWk3+6iw+rq7HPtuAmyWZUmFKweRUWCNtKXYK7JrnLytG4ql3lLubF
         va/Q==
X-Forwarded-Encrypted: i=1; AJvYcCWTXd9noLo4z8m4iOIpJLb38PhGiK/QewPtr3do3CROzvaCb+Z1W1SHZitDgDP/N8jgnKt1zLpP0B5jSLbDHDN3TaxCfsE+J4dIhQ==
X-Gm-Message-State: AOJu0YyCdbQcolhTTtZR25NgEzocK4wY9YcQB8UJX7vJ/8IRzc24ViL2
	tH4IdpDPgObeKc3Mm160c8VPjRz4e8DCOMR+ew7u/hT1zZQvo/4lNSdI1//rMQ==
X-Google-Smtp-Source: AGHT+IG0Dk0pyXiY9meaZxdcfjUrxlBVZ658N6RulLlCRYXcYG3KDTx6qBif55oSv0WqFWNFaxs8wg==
X-Received: by 2002:a17:902:b195:b0:1fc:5b41:bb1b with SMTP id d9443c01a7336-1fd5ec8ab33mr13930375ad.4.1721382344055;
        Fri, 19 Jul 2024 02:45:44 -0700 (PDT)
Received: from [127.0.0.1] ([2401:4900:8899:6437:d031:b9ec:7ff1:6aa1])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fd6f28f67esm819025ad.96.2024.07.19.02.45.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jul 2024 02:45:43 -0700 (PDT)
From: Ayush Singh <ayush@beagleboard.org>
Date: Fri, 19 Jul 2024 15:15:11 +0530
Subject: [PATCH 2/3] arm64: dts: ti: k3-am625-beagleplay: Add boot-gpios to
 cc1352p7
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240719-beagleplay_fw_upgrade-v1-2-8664d4513252@beagleboard.org>
References: <20240719-beagleplay_fw_upgrade-v1-0-8664d4513252@beagleboard.org>
In-Reply-To: <20240719-beagleplay_fw_upgrade-v1-0-8664d4513252@beagleboard.org>
To: jkridner@beagleboard.org, robertcnelson@beagleboard.org, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Nishanth Menon <nm@ti.com>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>, 
 Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: greybus-dev@lists.linaro.org, netdev@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, Ayush Singh <ayush@beagleboard.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=859; i=ayush@beagleboard.org;
 h=from:subject:message-id; bh=ktL075+vgq6cWYqcECtw9d1aoTJoi7kLRDiZQD8+fpM=;
 b=owEBbQKS/ZANAwAIAQXO9ceJ5Vp0AcsmYgBmmjW1ukKzxE3mHOQzG3KoTViMg43jWSqDVpuRC
 H3CShKNvxqJAjMEAAEIAB0WIQTfzBMe8k8tZW+lBNYFzvXHieVadAUCZpo1tQAKCRAFzvXHieVa
 dNvOD/4zxih/AxWFlgeOf8/JryAOSm7ENtd7lwPSWatsBhNCh8aGUlUXec9zUg0uiHPK4krGM8T
 oepqoAJuui8ay+aQw6MrhEDV01Yg0hIDh8iQLJiKnHUAXpLbTgjhhc3qFeQ7Mt1/MkHVD6Ga1yF
 k0d2dK0/ZpmaG5GNk2qc1iGnAPC68lfkmc2dDWiRTzCJDFoR7Hw1twsdC8yQ2Sx4qyfTcak21Nj
 uI/hFtwdfS66OqU8wOpTSiMGKgEtt8dsKlKkmNEkKPoAjxTuO1/AzbOhE2XNxk03ZPq3cCXyaJa
 zjsA65hVmS1OEFd8oiPQUJVwOp7yuyBelJWWw6nSoSbZAuGPPNQknjSg+J8dnrdP508nFlonKjv
 MIQh2p+Joh3hPnkEUZrC4u+6LsAvk9MsWCVHmgFmif7guLXCQghuEADsq3nMoBwyXsM4vdEVjYu
 5MTSzqvORZG86x4p4xFlaGoWDAnhEa4aiB5CL/nuvmNg9WyX0S+4zbUM4h+WNYrOhKU5AVlynpG
 ETumL9S6LuuZHR8wzMyD9wFwEB0Uue8YRlNDmEwrRYY++aBD2mIHgqCoOu9zeb+YOXWwBpJkxJr
 TQoTwYMyuwOOxaIzNBBIlK/T4vJyz8QYvS7Sqaq/DVbHaJoK5SvYaLYCzHAHc4VH7E4ZLePim33
 VBXzufQnYREtRHA==
X-Developer-Key: i=ayush@beagleboard.org; a=openpgp;
 fpr=DFCC131EF24F2D656FA504D605CEF5C789E55A74

Add boot-gpios which is required for enabling bootloader backdoor for
flashing firmware to cc1352p7.

Also fix the incorrect reset-gpio.

Signed-off-by: Ayush Singh <ayush@beagleboard.org>
---
 arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts b/arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts
index 70de288d728e..6c9d1dc26379 100644
--- a/arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts
+++ b/arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts
@@ -888,7 +888,8 @@ &main_uart6 {
 
 	mcu {
 		compatible = "ti,cc1352p7";
-		reset-gpios = <&main_gpio0 72 GPIO_ACTIVE_LOW>;
+		boot-gpios = <&main_gpio0 13 GPIO_ACTIVE_HIGH>;
+		reset-gpios = <&main_gpio0 14 GPIO_ACTIVE_HIGH>;
 		vdds-supply = <&vdd_3v3>;
 	};
 };

-- 
2.45.2


