Return-Path: <devicetree+bounces-84057-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C06992ACE2
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 02:05:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 33A531F220AD
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 00:05:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 365F1259C;
	Tue,  9 Jul 2024 00:04:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ki/et6Jt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6727BA34
	for <devicetree@vger.kernel.org>; Tue,  9 Jul 2024 00:04:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720483484; cv=none; b=C38rn6REE4ToOq1Z/8MCGWT5Iveq1LklRTAWxX0qEorhgDRIpcJW5kPDoXdAO5QS0n9igxvU7XRqHEyVClrlo019bnJfqaMIkqzbE6W1CRzU8+sfAjCCqApql9iJ1XfaDpYBtnU/oKyd/81R61ThVx2xBNuhVpLB0j6+oBEKzSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720483484; c=relaxed/simple;
	bh=CcplRpOsc2IQpW0F7fmzZKrnITw+xywZk8xOyDhV3zA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=GWELOrowbbXAWySCjf34YmXChoPWwbPDvVkVs5mGFGLy+IZ804V0MPd6OEuGlpzfsKcn7BkasxPeKIsbu3xUhlh8LgjBXXwHPam5cfXlZVOuRAZuiCrGILWulqShJJVI8f1BuDIM1S4P2y9i8kKjZISHFw/GcGYnPqR+adllwsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ki/et6Jt; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-1fb4a332622so16180515ad.2
        for <devicetree@vger.kernel.org>; Mon, 08 Jul 2024 17:04:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1720483481; x=1721088281; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=deUyP1lnzXSH8EcZFR30xTO41SmIssiJ437rHs5VhV8=;
        b=ki/et6JtQdTkSw1jse2G7tiAKuRMxXLd8RWCNYD2urK7Wh7AWmAcLvT6A19JJni/Ck
         dORaomqGJCy51N3Q9WI694ZNCSSHZduBUHNxfvlnrDEIijBLtiXKdVVmEfnaAEDjggBd
         6Yggez68LzxpAOFVRJ419Oe3kj6A/osiI9E8Osaok8N3hk/2seENfVPdBZ8HxwAez9ci
         b/6vZrAsLcfAVF1cFtzwkzMHqkPiRSdNmnOViw8gmsXCjaTkxNhdrYgngnfxv3bluXUC
         DpYIyLQQp0sWSyIqfzVgxz6eqUBZC1scNvtieiM8H7YKTT4UyeIgYp9N82YfrYoYBRJo
         SRUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720483481; x=1721088281;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=deUyP1lnzXSH8EcZFR30xTO41SmIssiJ437rHs5VhV8=;
        b=kkfmvHj4zlcf2u8ml0V4iyhEKtxV7uAnMQBJPmGI4B2TpRIIf5Fg6LvrJiw26Xz3LG
         v+mVu7A94q6dX/W0HZo2O3tLo9PfzL3Zv5dZVWfpmhdgPvOlVS2hFB87lrqjFMH9aPY1
         zspa1EfUh/fWeZRR/fk4wjDUoYGtN8Uj8d9bNMQRKqO2sBrzJGPz/0yVtkI/oB9+ciTH
         4DrCMgNgnVb/bZadhdDCUbSFvFbuYFORuSlC2dbVDNNmyDQroa5GYsgCQ8j/6eTjyf3v
         fRsYskEHtEc9wWn/Lf46o3r1QTMcZYX+q7r//dR45el3N+nWdtwSEtJ9E9HoWa9xrWul
         pHMA==
X-Forwarded-Encrypted: i=1; AJvYcCWrK3lTgw9HiRdHZHOmKoylgsfhsLGTpG9Iy8q0yiqmgACNnIMiAWIpHnsAirB0pDMTtQPlnhRD5LPMlV3IdbLRg4YMlQJGPur8pQ==
X-Gm-Message-State: AOJu0Yw70lgsZ/+m7KczgnaQ02ssIf3ve8VsCQRD+abHpcVvQ4naYPZ2
	1rNrezLIQv/JYbL3tFpxL74wyxQFyuixgOHKM6c2W2cjl4CkWzY2aUINGSs39b8=
X-Google-Smtp-Source: AGHT+IFs7x43OcxjSvtALgJHbMeJIn5UQKNtxfa+ImhrPmMGPSqO3CtWrRCfaMLCXWyxXPGGDirJTA==
X-Received: by 2002:a17:903:988:b0:1fb:7435:c2c5 with SMTP id d9443c01a7336-1fbb6ec1c1cmr9453095ad.46.1720483481621;
        Mon, 08 Jul 2024 17:04:41 -0700 (PDT)
Received: from localhost (97-126-77-189.tukw.qwest.net. [97.126.77.189])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fbb6a3ca56sm4268845ad.118.2024.07.08.17.04.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jul 2024 17:04:40 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-omap@vger.kernel.org, Colin Foster <colin.foster@in-advantage.com>
Cc: Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Rob Herring <robh@kernel.org>, Tony Lindgren <tony@atomide.com>, 
 =?utf-8?q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>, 
 Andrew Lunn <andrew@lunn.ch>, Andrew Halaney <ahalaney@redhat.com>
In-Reply-To: <20240531183817.2698445-1-colin.foster@in-advantage.com>
References: <20240531183817.2698445-1-colin.foster@in-advantage.com>
Subject: Re: [PATCH V1] ARM: dts: am335x-bone-common: Increase MDIO reset
 deassert time
Message-Id: <172048348064.3996825.17911079931147794725.b4-ty@baylibre.com>
Date: Mon, 08 Jul 2024 17:04:40 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.0


On Fri, 31 May 2024 13:38:17 -0500, Colin Foster wrote:
> Prior to commit df16c1c51d81 ("net: phy: mdio_device: Reset device only
> when necessary") MDIO reset deasserts were performed twice during boot.
> Now that the second deassert is no longer performed, device probe
> failures happen due to the change in timing with the following error
> message:
> 
> SMSC LAN8710/LAN8720: probe of 4a101000.mdio:00 failed with error -5
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: am335x-bone-common: Increase MDIO reset deassert time
      commit: b9e33fd0c6f8a29643d3b6ec149d2a7693cbe902

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>


