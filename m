Return-Path: <devicetree+bounces-130332-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D4869EEF54
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 17:14:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F23BC295759
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 16:14:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B2B0243B63;
	Thu, 12 Dec 2024 16:00:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="U7mg0IcI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6A3C22969D
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 16:00:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734019254; cv=none; b=shHgOsYZa3BUbATENvsp8K4hkZvfo+B47R33XJkD3W/4RsneH1v08OSZxbdoitOYIp4w53wW0X2uQw2JIHlAh8y2IeU/rnmD3+etcSmgY46ApW5cbEHXW5JD/fjpvegHbbbtZWGkR7DDRHBXtN3kKXx4NBN0TbBge5szksw4oAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734019254; c=relaxed/simple;
	bh=g9Y6c/Lu4XdnwvVgrnVv9tKSFGDPtKMBC9QqU0RCKUw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gDzujXB0fjiLA8XAbz21yAsr6VYa77Jfb/WeNwPGh7o6bGk+bv/62KpK8NnIrKPvvsnWM9ykQo5SM9NCpn3qGlOPiIl1nv9nAMaljK6Ws7Ofg4qDY3UfbvDyTN044zW9WtcBFPtXZfE8/H3vUhY/lVBsh/juoojCm4yFRB9FjCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=U7mg0IcI; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-385ddcfc97bso600541f8f.1
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 08:00:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734019251; x=1734624051; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oL8eR/tz3ZIpCfja0LO2ssPcqKhJCh2en92mW/OWpZE=;
        b=U7mg0IcIlNEQuvGd21pN2PvtcuyIqrA9uo8oWNG+/N6Kmm/pbOruqIQGLUIdvI/kXE
         uqrANBIzr5MoAOSJk9HzPn3uCJaC5bkkIXmVR+pjyB4C3oERamdbq8SdgJKa2214HI/p
         sSnre3MHwvJk3f6xS1FLjCyNZ4HI+uV1w6CGAS1mglImc245szJ5+lpYMUrTdl5ijsHj
         BO1X57cOUP2rPoGcOi5kwx1w41SHyjeXr9Blajn0J00IVcy6Zp5eaaBfP8ajpQoXwHfy
         T5CJTnSeSoYO/ivPNqI2t7R7lZbvaNYDi+bgilpdwXHhd2MaBxBID/EJG2JeeBno76AK
         k4FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734019251; x=1734624051;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oL8eR/tz3ZIpCfja0LO2ssPcqKhJCh2en92mW/OWpZE=;
        b=D+nCNqy98e1UQDFA828cQXAzUf+vMC0+CfSGbe5qPr319FvN2LijA00tBlPJ50fDgj
         Rjw9mazKzkmk7OFtUbkz8UKv3FawU/qH+rhHEngZDek5iUiAHq2qvwyYGn6LaVC+pPoQ
         GTj+GxFoBMJD1SXskaFB4mK9IPU1YXqm0AKZVZYsHHR5W+b16n2YttY+P7aMVsyZaER8
         jYwZarxuTp/B0PeimME5bGHARHI+3X/dtfwlM5gv0MZ2uXCNU2HQeVFcM5VOFhyBtJn5
         Hy5WIXI68DLLanyGsrXHXGjpCEayVI0AqdI501rs7UmQS6folCVdkD0U+xC6VQJRIMkA
         yKfQ==
X-Forwarded-Encrypted: i=1; AJvYcCWAgiQksk9qcfmU5nk7nnAJb0st3yeaqknpeOA34nYCPQ4Z6xPe8yRXr99kUZi9+UHse408b8VqnPDm@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5VszxX0RER4dZPevv7PCbvexZjEMrbn9ddeeEbjgzJcFcDeQw
	Ycw3KVYF9FEs0ZJ6nUZOP09Lh3HH0snk+ksCl4+d9Ccxmw1mBP+QSJBOpvHaGQI=
X-Gm-Gg: ASbGncuNQdAl2b5GvOz5kGvWFbm14nAppxpq3ZQzTFELIGTfr8AjfsiKaqhSEXWfJIX
	TJAsahC5jQPwtjf9LBJPzgqzZX198RtIzk8qKbJ8ADgiGf6PQqMIX7ck5bbcTCj91IgrmJ4roQH
	eqg+qlXCyatGbmvpI3EC2cZ7Ew76UuvZo0YrOVP4YpXkggv3jpn1HZWhbK4TeLiOLrKu8/bB6By
	sfwPVm5oCd2VEoJZRdb+VCOLWINzKL9Nv43ApaQp9DLPjs1hjyoQ/Uwnv5KodQ+sPaF1z0vHjx3
	syLIFUSQXJIWKkBCwdAfDggSEYpjaKUySQ==
X-Google-Smtp-Source: AGHT+IELIxGohPpZyWs+kDS3Jy7c+lDT9602oSXSeH7EbGUTFSeHBff+tDxvNYOauQEuqumTsB12pg==
X-Received: by 2002:a05:6000:186b:b0:386:4a24:1916 with SMTP id ffacd0b85a97d-387877c2690mr3555724f8f.55.1734019248941;
        Thu, 12 Dec 2024 08:00:48 -0800 (PST)
Received: from ta2.c.googlers.com (32.134.38.34.bc.googleusercontent.com. [34.38.134.32])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38782514d35sm4462941f8f.74.2024.12.12.08.00.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Dec 2024 08:00:48 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Thu, 12 Dec 2024 16:00:38 +0000
Subject: [PATCH v2 1/4] arm64: dts: exynos: gs101: add SRAM node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241212-b4-acpm-v4-upstream-dts-v2-1-91b7a6f6d0b0@linaro.org>
References: <20241212-b4-acpm-v4-upstream-dts-v2-0-91b7a6f6d0b0@linaro.org>
In-Reply-To: <20241212-b4-acpm-v4-upstream-dts-v2-0-91b7a6f6d0b0@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 andre.draszik@linaro.org, kernel-team@android.com, willmcvicker@google.com, 
 peter.griffin@linaro.org, daniel.lezcano@linaro.org, 
 vincent.guittot@linaro.org, ulf.hansson@linaro.org, arnd@arndb.de, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1734019247; l=979;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=g9Y6c/Lu4XdnwvVgrnVv9tKSFGDPtKMBC9QqU0RCKUw=;
 b=pe7nkbrj20qSYnrPkOzt+GqPA7lDUyR+IOiNPFAd4WlYXzbH8ZVMKRBtJ2AJ6BEWj54kNiXY8
 XhWrSTkps7uBOgZLxbruYT2X/DmIRHZ7qF4C+mnzBjagKE9cPO7q4Im
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

SRAM is used by the ACPM protocol to retrieve the ACPM channels
information, which includes the TX/RX rings among other channel
configuration data. Add the SRAM node.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index 302c5beb224a..1441e9a252c2 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -269,6 +269,14 @@ bldr_log_hist_reserved: bldr-log-hist-reserved@fd900000 {
 		};
 	};
 
+	apm_sram: sram@2039000 {
+		compatible = "mmio-sram";
+		reg = <0x0 0x2039000 0x40000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x0 0x0 0x2039000 0x40000>;
+	};
+
 	soc: soc@0 {
 		compatible = "simple-bus";
 		#address-cells = <1>;

-- 
2.47.0.338.g60cca15819-goog


