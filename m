Return-Path: <devicetree+bounces-170965-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B29E5A9CCB9
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 17:20:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CBFBA460911
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 15:19:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB37328DF19;
	Fri, 25 Apr 2025 15:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=thaumatec-com.20230601.gappssmtp.com header.i=@thaumatec-com.20230601.gappssmtp.com header.b="zKYjGXSV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57CC0288C86
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 15:18:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745594333; cv=none; b=Gh7wrOxTYlLk5LkVbwva1GGgIU/kEKBSEsJbZFsJYW6fdsHONo1v1VBpNB53xyyHmIfVaqL5MNlRX0f2TTGZSVcJcTklW64PA78y7v4kNOkDRnRLbN0ab9IlBgg7duUEzoLd2TT7bfdsQAMVuFk4lwNdpJcsacwORJM4f/XTkPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745594333; c=relaxed/simple;
	bh=+VP43HO49IhC31BTb9rVuWFjBWT9hUxO1g+j9KnNrtI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YZkIGkp5nE1yCXxwgEXp2x24q+dpWMKu75Bh8PbW2G+hmhk5r7dOEezkcwaFl1o7QlOQGLnqiMYVXXXAO01/CQ5GCh3yKxlRlIr1kgwxRU12z+215q1wetUUXyTg20dy/s61ZR4n0h4V0etbv78QJAEJcdLuvB2bwRFI8eAzyck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thaumatec.com; spf=pass smtp.mailfrom=thaumatec.com; dkim=pass (2048-bit key) header.d=thaumatec-com.20230601.gappssmtp.com header.i=@thaumatec-com.20230601.gappssmtp.com header.b=zKYjGXSV; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thaumatec.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thaumatec.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-acb615228a4so595319866b.0
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 08:18:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thaumatec-com.20230601.gappssmtp.com; s=20230601; t=1745594329; x=1746199129; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ow+UI0NPOq4F4k1XRdbs16ucXtgoo6yarOk2Eu1UB88=;
        b=zKYjGXSVsI2NLbQn1nXn3wmdAQwYoEMSMNGAkxao3Ju/Fd4xi26KP7KLhRP1WIqjiP
         Rs7J8UiQ2rC7Sm79meapRNs6ayVZqgaeiHf0mHH058ykIQcvbhEuAHeImZUYiitX3pLm
         x4xShFbUWr2lGFq2fGaJTIalVxMxmHTHHy3EW+I/bID6gUOC9VOfYFnkTjqBIxrU6JVl
         xs9Y1XnJatZg3rT2QwieWHkIGriHSOgeQg+IgjND91hrnuaCUyet0V5OyZORxTMBv/sd
         0AkyDTk18BADictzlragABu8ckNJQjW+fkFYrzj0Mc9zJrPwsj2nuXnqymq0THY9nCBp
         4FeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745594329; x=1746199129;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ow+UI0NPOq4F4k1XRdbs16ucXtgoo6yarOk2Eu1UB88=;
        b=vsXshuFuL/3/tfiV3myfK9k8mYO8rGrwYJJiLHKMrnWyN4x/nRGqQHsnSz8xZfWT9l
         7otRCS44ECCh8/x0elIhOC0ACxlZodFeTDL0oj2yBRrtNdfuEz7zU1iAX49qs/M2ht5R
         2fkx+vn5vED4GW64UCP4MVyQmq4kvLMSH35iF/sLPO/c4FruByWV0LzD6gNxGjdtTt1P
         2vNZw3/4L4Y8a2w4/wqyH8t1JvtCNvzXYe5OUaQO2p8EZS3onu0Vx1Le76u8orI1BffR
         YIfP5tVypvuYI4+qq7Oygs03SJe9oaAuGj4BIko5SoiaOuzueKuUWiQfQJK3bLwrgswx
         0Kuw==
X-Forwarded-Encrypted: i=1; AJvYcCUqTYvzp47djUM4bCTFPTgqPFozkvUDXYDdiIR21KGxTtvWR95vkfd/0+a1aQL8+Jy+SC+Mcky59D9/@vger.kernel.org
X-Gm-Message-State: AOJu0YxTothDenzbli1HE7x2tyCty9aJOr2IltTjDEN7SywNQD6fuiDn
	1QLPJdFz0L0g/wBRc0zA531aGziDW3QWOS1FrUlDg3ORDBiEewNG7iU7LkHs+eA=
X-Gm-Gg: ASbGnct/NkJQEUruXFdnZaixP3hhYmrsIek6lVuoJrtjeSAbr7o4Iy6GjDY4jqaZKbR
	XDoBrguT5UBqQKBuSAQlDtf5TWSIHKotY3JCBvL7e/oKuui2OgbenaqdQG+evgvS51ahC0PTBem
	UjX2d4fK/xiK6+YfiXxY1gL9XOuZ1KQL401s9EFWglmNYtsYeeUMC6sE+xbiJuxO+hT90B6EqGz
	KkkiYmK3QJIkPFM1qK4ug/0H8cHdP83zDDXwHVPwIqyH+ee8FEfvdcbq5kkHk1Fxj4f0DXbw3Pq
	OIjUEVw7dwxOGky/CKBdPorT++TFXSKwpy9+ClWbbAk36QSxo5jHxt3sEQ==
X-Google-Smtp-Source: AGHT+IHLD6XdK+4P1TnWS4a50TCqQBANW7xBQ8lr6hgbyOsYBCK2P26JRQZuJdTwivbVOS6RTnoM6A==
X-Received: by 2002:a17:907:3f0d:b0:ac8:1bbe:1a5b with SMTP id a640c23a62f3a-ace5a27b983mr482588066b.9.1745594329437;
        Fri, 25 Apr 2025 08:18:49 -0700 (PDT)
Received: from [127.0.1.1] ([185.164.142.188])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6e59649fsm151099766b.85.2025.04.25.08.18.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 08:18:48 -0700 (PDT)
From: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
Date: Fri, 25 Apr 2025 17:18:09 +0200
Subject: [PATCH v2 4/5] arm64: dts: rockchip: disable unrouted USB
 controllers and PHY on RK3399 Puma
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250425-onboard_usb_dev-v2-4-4a76a474a010@thaumatec.com>
References: <20250425-onboard_usb_dev-v2-0-4a76a474a010@thaumatec.com>
In-Reply-To: <20250425-onboard_usb_dev-v2-0-4a76a474a010@thaumatec.com>
To: Matthias Kaehlcke <mka@chromium.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Benjamin Bara <benjamin.bara@skidata.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Klaus Goger <klaus.goger@theobroma-systems.com>
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Lukasz Czechowski <lukasz.czechowski@thaumatec.com>, 
 Quentin Schulz <quentin.schulz@cherry.de>
X-Mailer: b4 0.14.2

From: Quentin Schulz <quentin.schulz@cherry.de>

The u2phy1_host port is the part of the USB PHY1 (namely the
HOST1_DP/DM lanes) which routes directly to the USB2.0 HOST
controller[1]. The other lanes of the PHY are routed to the USB3.0 OTG
controller (dwc3), which we do use.

The HOST1_DP/DM lanes aren't routed on RK3399 Puma so let's simply
disable the USB2.0 controllers and associated part in USB2.0 PHY.

No intended functional change.

[1] https://rockchip.fr/Rockchip%20RK3399%20TRM%20V1.3%20Part2.pdf
    Chapter 2 USB2.0 PHY
Fixes: 2c66fc34e945 ("arm64: dts: rockchip: add RK3399-Q7 (Puma) SoM")
Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
Signed-off-by: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
index dd5a9bca26d1d221607e73071685d5774330d760..5c1162e2f34f9c9786da1f774dffa71adda23dbc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
@@ -579,10 +579,6 @@ &u2phy1 {
 	u2phy1_otg: otg-port {
 		status = "okay";
 	};
-
-	u2phy1_host: host-port {
-		status = "okay";
-	};
 };
 
 &usbdrd3_1 {
@@ -616,11 +612,3 @@ hub_3_0: hub@2 {
 		vdd2-supply = <&vcc3v3_sys>;
 	};
 };
-
-&usb_host1_ehci {
-	status = "okay";
-};
-
-&usb_host1_ohci {
-	status = "okay";
-};

-- 
2.43.0


