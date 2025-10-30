Return-Path: <devicetree+bounces-233394-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 1102AC21C13
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 19:24:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3E8194EDEF5
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 18:21:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD96F304BA4;
	Thu, 30 Oct 2025 18:20:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BaGilRn2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25153325487
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 18:20:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761848446; cv=none; b=jqG/3Hl6zfjA2uBJUte4rNUzt2FT4KTHlYNtXVO/BX6JItypJFM4xrlYzjtGQ5WrIr/F8W58puJxJXlG0k5uvZKskcyNY0/J24iFydOexkR39AjHXOrRTmJJ5qbDK+yNPhjiOPLxXUsV6i13Kr95fEepTpCrv9F5g0GkejCbyrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761848446; c=relaxed/simple;
	bh=OFO5ByP0qS7zRMd3pNHzWffENX7ZV+vR85TaFWxUVr8=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:Content-Type; b=JYI0PwyjVhHg2AhfbiESfnMYEU+mj0yFIXy+AcIckg+LGBk02qnkQpuDESgm3D7ZCqGa5XPFChEUtLBTx3kP+c2QwWlGccbkVnHbPBtdDxmS59mbcx1bWu7vf+KTmizHxm6kf9ffkBzHCW5SIH81vT2VpTP/UKJOoP2AQWVJbKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BaGilRn2; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b6d676a512eso23309266b.2
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 11:20:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761848443; x=1762453243; darn=vger.kernel.org;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JjUjRNFP6aJN3yakl4D7gzIFYpfpYZ5LN/0WHYSw/TU=;
        b=BaGilRn2yMl/Ou75Ev0+6Hzi55F5j08NfyIkIQKBWCPf4h5ZcDjm3LQkcmZE9k8X7Q
         vsmDgVr7DziC2aNLEPPw7NEQV/3js0jjX8t5xsCKUCA73s0UZV6/OdLgIMYmqOhlJmRC
         LflHAYr0LgyTfeeJRzagCg34xRCdeO03lMAd4sTiBno1FrMsLlyqc7WEJa++Gd19oyaF
         5/GeVk8/4I7E9OwCcijBkeSS7Mc9/Rs6ZV0FmMoqqZ0wB5VPzEbrISnWin2d6E6HUBKe
         yuXwhlFyvwSxyjBSx3rbcyLWcM5+TYReuDwEceDNOTI9PpyKsflGuYXlPprhpBI42hYj
         cpqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761848443; x=1762453243;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JjUjRNFP6aJN3yakl4D7gzIFYpfpYZ5LN/0WHYSw/TU=;
        b=TLXOQzdn7ypZw1e5/ddm+kpT56x/M///KP11Hop4eiTJXQEElvfkkCfJGsJQoO9JNQ
         tE/jCwEo3yOgLm+EGGYriAUOeJA4Yv5NNjWHZYjztXHtPXtaepv45yDmTC5cGURHFGzs
         tm7Dhwj6fsfkd9AjgaT4hlxbj5vzrAOpSrfeJhaS/p15ONIuwqwdkdONNrhiT6r0TBxw
         81/XHOImxQ65tNJCDwMqRBuwgMrQlP+GPHGZqf0WyKW1JRrxBHf9dfc7zstHaYs4X/s0
         GnGUYeg5JRDZ7zBU7NlsOoBq389uCAPacAolRoETCVq/2sLhcgCq0aaw0vEMHZR4RDJq
         pm0w==
X-Forwarded-Encrypted: i=1; AJvYcCU2IsRWYiPLOV5X+jCdivGhG8GrGsU44brxNVNV2tTHIFyQt3J0Q63dj/D5KOTKv+H46nX+1Fv/Swfj@vger.kernel.org
X-Gm-Message-State: AOJu0YwQAFZ8peb0ET9lzE7pkJ3UQEM/fiHdFypeouezaAw8shJWCkIA
	LqNi8qcxfYLJbgA39+ilbD8o4I4abBV31rkfvMO24ANnwdR/vZWzvYuV7vgsCg==
X-Gm-Gg: ASbGnct50rZ+2z2VGi62rFGji7TiyRMRZn394E9cgx1pi4Jt0ldDKIOhs0p8qxoylvS
	C1QurIvIg44fVZoLeRxW52g8ad7UuMr42MxS4dgXNOVXl8wj8AMyE24g0HFsE5zVtbh7GACgOY0
	C35+EXA2mZkdvLWDdpFRMzWERzl+E2IaomDGuRFf5yq7zMP5g8O2kA4Oz/87IixXOSH/eKWQUtj
	RURrRcYedRDwUk0BepQ10L8xeGvgGm6/zY43kiE2pEJTnfsLrLF5huYoQitRVveeyDxd0ojl67T
	6wqpziOHRidyJ5xiPrmMtv4vEmhKp1QA2eoNXPGKoTd7kgR+rNA6i7XiqX4l9C7FsOj79vmBNM1
	tefK6W9tGpDUmaUOgkACbpNrYio2sFKoG1EQ4XStH9iiDuC5bz7oGU9G8wIzMitSa3njIGcejLa
	3VMLKt/9ZQklgBx8/VXlO++kh8tXN+nkHZOCIenqCFGIaGyeUw5w==
X-Google-Smtp-Source: AGHT+IGEKU2F7RouDiDAU+O5ZXJF5KXX7hpByUky1BUiO9h2llr9yFPyv+VlCHc50mSyNAzudGyZAA==
X-Received: by 2002:a17:907:2d90:b0:b2e:9926:3901 with SMTP id a640c23a62f3a-b7070627711mr22678366b.6.1761848443115;
        Thu, 30 Oct 2025 11:20:43 -0700 (PDT)
Received: from ?IPV6:2a02:a449:4071:0:32d0:42ff:fe10:6983? ([2a02:a449:4071:0:32d0:42ff:fe10:6983])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d853c549fsm1833865566b.37.2025.10.30.11.20.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Oct 2025 11:20:42 -0700 (PDT)
Message-ID: <3e461bce-e8e6-48f1-a296-34040447ff25@gmail.com>
Date: Thu, 30 Oct 2025 19:20:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1] arm: dts: rockchip: rk3288: remove mshc aliases
To: heiko@sntech.de
Cc: robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

The use of mshc aliases is deprecated for some while,
so remove them from the rk3288.dtsi file.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3288.dtsi | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3288.dtsi b/arch/arm/boot/dts/rockchip/rk3288.dtsi
index 42d705b544ec..7e284b4fecdc 100644
--- a/arch/arm/boot/dts/rockchip/rk3288.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3288.dtsi
@@ -34,10 +34,6 @@ aliases {
 		i2c3 = &i2c3;
 		i2c4 = &i2c4;
 		i2c5 = &i2c5;
-		mshc0 = &emmc;
-		mshc1 = &sdmmc;
-		mshc2 = &sdio0;
-		mshc3 = &sdio1;
 		serial0 = &uart0;
 		serial1 = &uart1;
 		serial2 = &uart2;
--
2.39.5


