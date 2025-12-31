Return-Path: <devicetree+bounces-250701-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C3FCEB205
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 03:56:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C6863301E6C0
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 02:56:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3A122F1FE1;
	Wed, 31 Dec 2025 02:55:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=0x0f.com header.i=@0x0f.com header.b="VRzHByfe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FCBC301004
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 02:55:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767149742; cv=none; b=SCM6UMt2eDN/d11EPOzVPkDDWBvyn6yi/FfKmEkDVbGKtk0FX1UkJ4Ehu1x0MER+wA+d5Du4WhZ5v1H19K//ZlEK2uwd/si3xZf1bgBbnczc7p0/SCzPJof1wNolEVAhtYPyLe3hr2n/PCAAloHHR4ALZncG+WIUEo+RgvcMobE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767149742; c=relaxed/simple;
	bh=oeYH7BpXqy9X4qfngGVahrpJZBTSCGqdfiu+EZuKTxc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mYOsamIDyc8PAfq7Oge0KiE8fM4LHDyUgm+OIL44w0qKQ+vlZAfmUYo+DMEX9tSQZ01HfdJuSHzXjhokAgK3uh+FXJVoW/D14OS1H3yVb5HfdqB//0SCfY/i8m6FCUvqCNJTc6B/DtDdDKZQc9JOJfO+WwUEYF+EIVFGVxsRSTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0x0f.com; spf=pass smtp.mailfrom=0x0f.com; dkim=pass (1024-bit key) header.d=0x0f.com header.i=@0x0f.com header.b=VRzHByfe; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0x0f.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0x0f.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-2a0ac29fca1so88758415ad.2
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 18:55:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google; t=1767149741; x=1767754541; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OtxBcRpBORYIa5rqVGM8zqMG6Euvj5S5afX/620YI/4=;
        b=VRzHByfevuPRLLTIj8mFn140Oogp7dyLX7aCBIwcPKWBCK5UNbW3uAvqvf3q6ajm0J
         W5XNTLMKRvgzAPqR8W3f5NuqLwVeEt0/Q0VhVk25yBivzGFM4WRwKD9Hv+NzbICINRUI
         qGHGGel1EGQSbcQ2lbM9vcAT5JBb2fuBXM8cM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767149741; x=1767754541;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=OtxBcRpBORYIa5rqVGM8zqMG6Euvj5S5afX/620YI/4=;
        b=iJLOW0CIxY9C2Q8Lm1o602lTzhy/ZiDFXMbymNXhYsso76TIPVluPjXMUtf1OwVcax
         7xVTich+9F1vcsUtVAcaCZ3MCmbK1mXYQfH3Sct1f8/ledzKVfajGlUBQ5KzksdVlEx2
         rD0YydEmq40E8LTnmS0/B/IM+TvT0Ibn6+SzwwFWCnevPlk5/FdjaxjWcFmnAg4mMF2u
         /81gca5wQzeyaZFc6QoFn0ksSHwnq8W/1tVGKRoRc+z5kzvisjYGSaMka7pldzK+t3p+
         s42alecvWO+eGb5NFOpWEA1cWwC10AAgtatiXS9VX+d/HZnFXh90VJD4A79Gqq4s4hv6
         tXVw==
X-Gm-Message-State: AOJu0YxppbIzrdP+aoKNBiJqB5HltlGywKT65K8fK7nAqoS1rE0g1WY7
	8zSEWiMjgyuPOrm3BguzrZn8BbMa5lvTzsFWJB3EJi3PK5A/zdTmgcdSJy6U8iBUi4o=
X-Gm-Gg: AY/fxX6oVpwSj0bWh3+lDf6S6e4WOHARUbw24YXzBTRtZlyrKttxgji+8r1/Gd1sdWS
	IonMqt6wa5pU/mC3mecqGD9PoEVbBYn34tH3JTZGDD4Crd9dmslb5HHKitH46l/xg7bdZs+VheG
	HxCXGSACO+R4KNNu9Chw1YiqXokkghlVx4F0lbjgguX+KgDtq26a3f/YIeZHeGJWM+6lDyLHW4i
	XDIEZtd9dDTxZRn2zaUItIUVpUmc3wScWrwLBIYH2qJnfqknG1xPpMzzE24EUOlLsPFcMuHppmv
	PH6CT4tu/WFemzz/hPXN/9U2zi9zdnfDvuwERPnNwJ6d8rVJ+psGVjI5uUPV0TcjKBz3VCw8A0J
	WYZ2hBaxk4QTIQRkrIWvH9khJ3bQS21/sKG9G+fQP3MVkrE+7JE2HNcf8iOE6MS87f1megwnRmG
	bnYCaqO4/f53g9t0tYB/MK4awivwJ0bfG0iofSxpJk65SN2oOMynIk
X-Google-Smtp-Source: AGHT+IHfqKaBGSEJYcl1RPRPR+KftXdRoeAqBfFeFsFQaC4YaWRX9vPiSWkSBKAcgee3eF5BzLLM9A==
X-Received: by 2002:a17:903:110e:b0:2a0:971d:12ad with SMTP id d9443c01a7336-2a2f2732b44mr354805905ad.31.1767149740791;
        Tue, 30 Dec 2025 18:55:40 -0800 (PST)
Received: from shiro (p1536247-ipxg00c01sizuokaden.shizuoka.ocn.ne.jp. [122.26.212.247])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a2f3d5d3e1sm307762945ad.76.2025.12.30.18.55.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 18:55:40 -0800 (PST)
From: Daniel Palmer <daniel@0x0f.com>
To: krzk+dt@kernel.org,
	romain.perier@gmail.com,
	robh@kernel.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH 5/5] arm: dts: mstar: v7: Add sizes and ranges to sram
Date: Wed, 31 Dec 2025 11:55:02 +0900
Message-ID: <20251231025502.1139168-6-daniel@0x0f.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251231025502.1139168-1-daniel@0x0f.com>
References: <20251231025502.1139168-1-daniel@0x0f.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add some missing properties to the SRAM node to make the dt
validation happy.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 arch/arm/boot/dts/sigmastar/mstar-v7.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/sigmastar/mstar-v7.dtsi b/arch/arm/boot/dts/sigmastar/mstar-v7.dtsi
index db661e189eec..e50e4000d1ee 100644
--- a/arch/arm/boot/dts/sigmastar/mstar-v7.dtsi
+++ b/arch/arm/boot/dts/sigmastar/mstar-v7.dtsi
@@ -187,6 +187,9 @@ pm_uart: serial@221000 {
 		imi: sram@a0000000 {
 			compatible = "mmio-sram";
 			reg = <0xa0000000 0x10000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0 0xa0000000 0x10000>;
 		};
 	};
 };
-- 
2.51.0


