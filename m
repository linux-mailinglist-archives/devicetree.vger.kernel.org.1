Return-Path: <devicetree+bounces-58641-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 319C68A2AE4
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 11:19:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5F87C1C2151D
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 09:19:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 842F054F8C;
	Fri, 12 Apr 2024 09:18:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YUooSCts"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f41.google.com (mail-oo1-f41.google.com [209.85.161.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216A25491E;
	Fri, 12 Apr 2024 09:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712913505; cv=none; b=bmhVMNo49wWCzqL7xF+x5EZgd9MJsWfyhfaynMwhM0MzJYPHzqo4oIAincS20CUG/cNFr485F64huR+IQMdt2As6wWzE8J2JoorB2ao2G96dk6x7r+lvvo11C1opEnxc76KSvqQ/9uW0h2mMWz+0L12cPYO460OY4ay7Q+9lHlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712913505; c=relaxed/simple;
	bh=tqRWl3+FrZKqukKyRngOznLXU4pJFPxd+qsvBne/hwg=;
	h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Y3YoS2RYoieF0ktbhTpXdb4IVmsn54XFK9Ww+O6dOWRPEuaX9qGSpjnFl5i7ZQdtWB/sWM+LCiqW3yoTZ6BgeEAsKYGScuYZrRIPbCP4KZhJCXlIOCaH3XCeKH8gWVig2WPFXVmr//+mrevY/fVXyN1zhe0mUVvN6geTY3o5oB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YUooSCts; arc=none smtp.client-ip=209.85.161.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f41.google.com with SMTP id 006d021491bc7-5aa400b917dso421445eaf.0;
        Fri, 12 Apr 2024 02:18:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712913503; x=1713518303; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WeUVH1enZnNU18wYfElV/S7pL59t5rpG29uXETSjnD8=;
        b=YUooSCtsmJFMErDnWD9K1ngak6pUC6X9y/0KQfJ/P/Ypz7ia+iw32I3FdrqlKxkJMI
         8ZyBpMSbrOkzRMP3nMjb3slKj+fR3KeE8bgI1GskIZZfFf+dTPvFCAYvf/Bl6HwIf9PP
         zj2Rqz/tIFfaXAu/fbjl2E0cZrvxuwe4K7zGFcTHYpfaBzo+8JAeKHQDnFP0n+7hrcfZ
         DUW/zxyLn4yERURVSbyv7zwVaTwwJLQL+OhlHoi8r17TeMNGHpEPBSFjYsflOXo9J3vh
         lQj2n18GdbiIISe9i+vOTNNiddsaW2gP9InGZRCYmrw8sg5UG/6b1BHU3zH+SUL+ImHT
         upJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712913503; x=1713518303;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WeUVH1enZnNU18wYfElV/S7pL59t5rpG29uXETSjnD8=;
        b=aa5v6DbiyQG2jaRbbpqjZLWjRfPAaPaW1m7Ob0NmajpjdeHqqiWpJ2XztDDQzjV5V4
         VHCPEjrSuME3Zz7/7aFd1kwXJ/isJVU9JEWj2q9nWICNPqe1NmpSFaEf25WY7EELLeAn
         8ykLZCA6qZdIDDz0NELTc8S04n6peSxvZCmpjuKsy2fdlPNUtTtnYI9y/mLoQvV9dS7n
         swLbMAvVUdYE6lU0pUbOQvFGP6P3mgFaRMh1sNQ4xqTg1ZaCghWRVX6Gn0yyuONZ+5/d
         Q8EoPrLEGv4A1aLkHUjuKg0B+GM4HayJ3830XRogGnlUnWFxBEp30DCxQ9s6z5N9P++Y
         yyig==
X-Forwarded-Encrypted: i=1; AJvYcCW/1qKantjBFM65/MJJW8pBOSBdqOZW8ukukQzXyrl+ZHCdh6jED0/SdNRdVMa7Bh8fVD/pLgMf9Ni4ORtNsQgedAX8ZIadnmszcWZep8N6MA/SQi+Q8/OywZuO91hZZff/grf4r0xpNg==
X-Gm-Message-State: AOJu0YxTStFLDnIjoG1B0iG1eEotMbNHEGWie0yE97jEX423wRDj2VJ1
	wBPjUBnY3t4f/+ZPyuZlvhBCtqsGDrD/uYoHquNsxBJ5Y4RXp3xa
X-Google-Smtp-Source: AGHT+IFYC3MMaHSyFp8p82wE4TiscPIFe78sHQJz9DD7hiHzFomgzEMlz5Xu0NOwJ6bDsMcN+Dcdyw==
X-Received: by 2002:a05:6871:27a6:b0:22e:b2b4:f009 with SMTP id zd38-20020a05687127a600b0022eb2b4f009mr1744524oab.39.1712913503215;
        Fri, 12 Apr 2024 02:18:23 -0700 (PDT)
Received: from peter-bmc.dhcpserver.bu9bmc.local (1-34-21-66.hinet-ip.hinet.net. [1.34.21.66])
        by smtp.gmail.com with ESMTPSA id b25-20020a63a119000000b005e840ad9aaesm2332711pgf.30.2024.04.12.02.18.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Apr 2024 02:18:22 -0700 (PDT)
From: Peter Yin <peteryin.openbmc@gmail.com>
To: patrick@stwcx.xyz,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@aj.id.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 07/12] ARM: dts: aspeed: Harma: Revise max31790 address
Date: Fri, 12 Apr 2024 17:15:55 +0800
Message-Id: <20240412091600.2534693-8-peteryin.openbmc@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240412091600.2534693-1-peteryin.openbmc@gmail.com>
References: <20240412091600.2534693-1-peteryin.openbmc@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Revise max31790 address from 0x30 to 0x5e

Signed-off-by: Peter Yin <peteryin.openbmc@gmail.com>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-harma.dts | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-harma.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-harma.dts
index 5c3fa8bbaced..7e98af5836cf 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-harma.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-harma.dts
@@ -192,9 +192,9 @@ &kcs3 {
 &i2c0 {
 	status = "okay";
 
-	max31790@30{
+	max31790@5e{
 		compatible = "max31790";
-		reg = <0x30>;
+		reg = <0x5e>;
 		#address-cells = <1>;
 		#size-cells = <0>;
 	};
@@ -212,9 +212,9 @@ temperature-sensor@4b {
 &i2c2 {
 	status = "okay";
 
-	max31790@30{
+	max31790@5e{
 		compatible = "max31790";
-		reg = <0x30>;
+		reg = <0x5e>;
 		#address-cells = <1>;
 		#size-cells = <0>;
 	};
-- 
2.25.1


