Return-Path: <devicetree+bounces-233370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A00AC218FA
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 18:52:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EBE053B8C3E
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 17:52:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A155936CA7B;
	Thu, 30 Oct 2025 17:52:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CDQ2AxW4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4F622E62C3
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 17:52:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761846759; cv=none; b=NDOOB4tgBzS7dEW/UqSCn6dfKXA0C+1ZLrfGPL3WDHdzHwDwkc9Hm9rmr2VImw+CLzesIFeQDRnWkyfYD8fAsFInX4jNDic8UCJTDr6OIGnMpaBgeCsuwocBRIF6j+TzBJ4h1Ytb6sW6rl9A5wgcT8RYKulG9kNzKJCq42yKFys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761846759; c=relaxed/simple;
	bh=NFQXh/5i0Z5ZvERywwVsKntqvSCAyTKJqCpMAnOffNI=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:Content-Type; b=kwuvL5YAK8c3KM+6v8QCeWGsjhqPhRiiD7hIjb8AP2cTUi+ry9TKXgW2N92FYGD+lZcJCOdos/G4qRATGki1VH4vqCuMH8UxHlZJ1gRjfWRL1FCPQNgN0krpAxoWL2Mw4zJUkfWrdGMd9kil2SO3d8fZFHfV/+v0e9X6F1Cb56I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CDQ2AxW4; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b6dc4bba386so25170466b.3
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 10:52:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761846756; x=1762451556; darn=vger.kernel.org;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=njsjO4VFZqA7R0pPo1P10WkBD8Q9L5cVjM6fjzkdhIU=;
        b=CDQ2AxW4JYo5F6/XVkF0swxcz0BxqYPsrQGu0zbnRJHO4IbZ0LbA/mSsoeAuUlIGDE
         g44G6hcHffo6Z3/feR+acCv0l+abEWOZsQtj/Q6Vdd8Kzyn+cdLnXqDYXluztjkJn9xo
         Lqk4xUIphbmD8lxdfo3K2UXJ0ZMiwtsiel2T9uYJV3dcKoYD8ZpR4m4m/g1M6VpY0cYa
         MFZmOarlk7Wja5TBsymwUAlXjPuIkNIe4EscFCLJeijIcMOwoqozKS81zGE/HHDinieq
         zjNVfr2JROukb9zXkIhnxcVfsGwBIwssfffHmj2N5LMSOI2PfdpK9qZtwAfpwv1hUldm
         ZO2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761846756; x=1762451556;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=njsjO4VFZqA7R0pPo1P10WkBD8Q9L5cVjM6fjzkdhIU=;
        b=hR8zSfrHtpKwJj2Zaa52CWzLQcVmVzekFNdQQ7U8Ufth8nkkoNYfr2pl3OPMKnUKkd
         3EZd+ekbzhhMQnVx5GaN6zQqQHrClZuIFvUW/vBNrhga/WvO563SHxelM0x7i1TG09FL
         KeB9zeJ+fXZXx9nUMuP4++wJSEzQ8dW5dlOWsHvL5rAWKa2qGKfUKR2NtxXSRJ2PMxkC
         jcRp3WxVi+JTyQ22DDzC52H1by6IUcY/S8NuZBpPts5LmwIeerPdY8OcSirUm0uT2mKg
         CjCDLeFbaOFn7cIA7rIGmrpsu6R7Ayxo1UaZhBcwrzOnd/u4gGPMNW59Fk8o4jaFSvM0
         4OkQ==
X-Forwarded-Encrypted: i=1; AJvYcCUtIyjiWTMjbwQIVkHe7+wvY0IndutXFxH7+kjohusVfIVh1ynQut2r/VPdHwDneoP91NZbyHjyzD7W@vger.kernel.org
X-Gm-Message-State: AOJu0YzpTTiSj+DouQIR82kyzSTb3OMslYcvUSDC1rzto7P7DcR13Hje
	YPedBQp3LIHk48qTmUGzNlQaNCGsTig2vB6R5a1GugpDSDJdd4G/5SadfWGaBQ==
X-Gm-Gg: ASbGncsc1Mo/jdIjCyGhVL+8t9z04LIb3MuLJaKqWv3rvBCTln2ApmhbdFaAmABLoyY
	knQAOxHtpWC7+MsE7iop+8nJHNm/fbN+xPTvrBS+0aXRwNZYl3OiISxBO/sHq91Rg45+bnCKRvw
	/yV9caSxqcfs0X0uscIVnEL50DVK4AGO/0IzkVuAAmPcF8cJ202mbxV6Cz38Zd/9K3ewr0brn8A
	+KfiHIBOkl727qvZ2HYczbv74U8f4huscHI2usu/rE+QpDmFj3G9CZrW5WD1korIMzVwy3lYOsl
	GRg6pa5kv6/TOPKnRt58FzfeKQhq8Hyiii0Hfxb1jYE6GzU4vDJCwjn0ydg5qtWY3Wcl5mHsrcV
	oYWCvqNi9/AxXQ7wMwF403ytRsg7M6z31w/x4KWqaaM5/ba0bx8rzgVPjj/WEs+Xn7yB5u+kpfB
	Xyslpq2w6qRk86oKyCnRZtL2HQZttATG+OEWBMca5sSJeR0fR4TA==
X-Google-Smtp-Source: AGHT+IHEjrjKgjCwmL8TWuOerIFvVWufwSPMm4yYLEbgFtGVI/ku0NlxLVuGe2f+k6tpzEbHXAXZQA==
X-Received: by 2002:a17:907:3e0c:b0:b6d:6d44:d255 with SMTP id a640c23a62f3a-b70700af393mr23224166b.1.1761846756003;
        Thu, 30 Oct 2025 10:52:36 -0700 (PDT)
Received: from ?IPV6:2a02:a449:4071:0:32d0:42ff:fe10:6983? ([2a02:a449:4071:0:32d0:42ff:fe10:6983])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d85398444sm1778908866b.35.2025.10.30.10.52.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Oct 2025 10:52:35 -0700 (PDT)
Message-ID: <8a423a6f-bfdc-4947-aef9-35ee7c4f6ca2@gmail.com>
Date: Thu, 30 Oct 2025 18:52:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1] arm: dts: rockchip: rk3288-veyron: add spi_flash label
To: heiko@sntech.de
Cc: robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

The u-boot,spl-boot-order property requires a label at a boot
device node. In order to migrate to OF_UPSTREAM more easier
add a spi_flash label to the rk3288-veyron.dtsi file.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

https://gitlab.com/u-boot/u-boot/-/blob/master/arch/arm/dts/rk3288-veyron-u-boot.dtsi#L10
https://gitlab.com/u-boot/u-boot/-/blob/master/arch/arm/dts/rk3288-veyron.dtsi#L267
---
 arch/arm/boot/dts/rockchip/rk3288-veyron.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3288-veyron.dtsi b/arch/arm/boot/dts/rockchip/rk3288-veyron.dtsi
index 260d6c92cfd1..2d6cf08d00f9 100644
--- a/arch/arm/boot/dts/rockchip/rk3288-veyron.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3288-veyron.dtsi
@@ -388,7 +388,7 @@ &spi2 {

 	rx-sample-delay-ns = <12>;

-	flash@0 {
+	spi_flash: flash@0 {
 		compatible = "jedec,spi-nor";
 		spi-max-frequency = <50000000>;
 		reg = <0>;
--
2.39.5


