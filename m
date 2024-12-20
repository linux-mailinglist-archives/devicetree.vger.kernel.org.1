Return-Path: <devicetree+bounces-133125-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BC1559F94C7
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 15:46:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 19D1B16B7DA
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 14:46:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9179F218E8B;
	Fri, 20 Dec 2024 14:46:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fDcA9MtC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4E20215787
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 14:45:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734705961; cv=none; b=cuUEslfYbWrIkikC7b+Z6w8lp0bl+m/FzFpbEOWOtjGLZ5xSa7RFu3NcGE04VrYYzpNATVj83cNCMgluuWl3bNw2Ks9AsLJXMBDLu3sf2PZ1FR1133Ut6Y1u+jg9o2wieyx9J3fa2g7Vf8nAZDnSh3Mi6GoUTMlTpVnnSyI+Zww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734705961; c=relaxed/simple;
	bh=ksJ+kZjL8uLlN+FZ+pHkeFoebJsDUcUmZPaIlmDO4Og=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YmVoAITd28Cbufuplh4F6KjX2Kns88bRYNcoqNL4PEuojgkUvIoZG5kqpr+j+IUkPgNOF/ebcOvk9EmxHuEOVkV0gRv6iO9byJbi9Gl0pnt/L0r+eHpJgsAHAU6nD/5O7FJGJHNlfJvRM9oxGSFUFrIAWqUh0qsL1ORYsHNDfBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fDcA9MtC; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-385e2880606so1555910f8f.3
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 06:45:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734705958; x=1735310758; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6pGIq1PR9lkwo6mEo5Eq/Q4i7Z1n4SSZ995JZ/LQKCc=;
        b=fDcA9MtCKD+y+pGu/3wTz4YDNYR8Axt4RkorIBnvQ1q2wJndMNDtvgMDQnI5qvjEn4
         bF++soWUHzug6d/gk1htsxJDqTdfN6sY31M7YDOtleUJbYv87ChHvva+0cMkKyWuUnct
         uu8pvd9ve4lMAaJu7il9WQYqG1P3xLWdKeI+dauzheWJ5aK4+JWM6iB7QS6aTEilKfXO
         ghAtr8xCelcjWm9JQt05zJdKwQgunwAFT1X0BSfBYE2Bs/+Mx9plshxRxt8SE4HNxYi5
         0xs4b5K47xcjBfB1s7e+jHIJZswTiOutQisyl75tJa4C/wBW7yuVPBgTknaat5RCklLD
         qK9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734705958; x=1735310758;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6pGIq1PR9lkwo6mEo5Eq/Q4i7Z1n4SSZ995JZ/LQKCc=;
        b=oIkWpteiZGUHbZXV3nzFnkbnSXWko/gBYC2ELLP2WxlByVKFthtkeJw1pm10qJVt1d
         ctlJHIMjZSm0GLvZO1wS2NAx9sSom0l77L8hAJ+4dnFZDawZevJz1V9UzPOlqFykmhr0
         RDI6YBAO8+eT4ia6EZ9UqvDk9aFIO6d9r5Nbuw1clW5yWIk29+xpCkp+MNsgIBifXJOw
         bkV2dBlGUl3QDRznwOLdTfdgjvY+LptgItK4gJbTqAoBjntYXXB+5DNRa0oftKhyLfYQ
         dzQhObIunYroiOV+b+zsEVg3gQFP6xoMzhroOVv0VH6ZpyE41Th8Fi7sBRfuLu/GFAj9
         vWcA==
X-Forwarded-Encrypted: i=1; AJvYcCV5ycdGs4XnvBYH098LJaNjXJjU5095OqIPTPQP2ZZH+iUIHEOWWH3GSBakYVHFIbELsImtHXT0o1Wc@vger.kernel.org
X-Gm-Message-State: AOJu0YzwAITUXIipBhDVwR3AaGslaAFbsuY+lRmKetaMrbfA0FlsrbWT
	4EnNAJPV7e+7UFv6oXtBiluaG/OUVH9snLgPbTxJ8prc44uBbJjPhKXojeXQGkM=
X-Gm-Gg: ASbGnctSHHhZMzf5/xBuZv6QSNx717R3nV9XyGOqKMszOGAdtk+BNqyxBiWpCAn/Jr1
	MGNBNRLXY2EAvQ+DMrcIe8BWqzZHL2KizHcGIpN+er72Fw5oACCQ7K2N9I8n3cNFl0UinEEgbYL
	Cx/tA+uRPN+rPAqDi0m/ZR9Zh8pOa9hw/LUYnb+kMoKHP85ubUfono9pITtK7qP6cp4v1XUtmXt
	IrfffaJtQTeozIJAGSQMzSYSXWgh2q7o0pLQE3qv2zbDYVL9R+e8ILCP3LE6fxE8ThFDKcd1pjR
	rth/YDay32zaJ9BzWNtUsNPSxo5RTZS7CJgq
X-Google-Smtp-Source: AGHT+IHswtHlhbAXYQTsxmj42Cx6z0kRvJ6s2dUNedujrsv1Y3qGW1iMiZ0SDo7FMblpbxhFtQc7lA==
X-Received: by 2002:a05:6000:78d:b0:386:31a9:31ea with SMTP id ffacd0b85a97d-38a221faa71mr4052627f8f.33.1734705957980;
        Fri, 20 Dec 2024 06:45:57 -0800 (PST)
Received: from ta2.c.googlers.com (130.173.34.34.bc.googleusercontent.com. [34.34.173.130])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a1c84705esm4227874f8f.44.2024.12.20.06.45.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Dec 2024 06:45:57 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Fri, 20 Dec 2024 14:45:45 +0000
Subject: [PATCH v3 2/4] arm64: dts: exynos: gs101: add AP to APM mailbox
 node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241220-gs101-acpm-dt-v3-2-642d64daa5d1@linaro.org>
References: <20241220-gs101-acpm-dt-v3-0-642d64daa5d1@linaro.org>
In-Reply-To: <20241220-gs101-acpm-dt-v3-0-642d64daa5d1@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 andre.draszik@linaro.org, kernel-team@android.com, willmcvicker@google.com, 
 peter.griffin@linaro.org, daniel.lezcano@linaro.org, 
 vincent.guittot@linaro.org, ulf.hansson@linaro.org, arnd@arndb.de, 
 Jassi Brar <jassisinghbrar@gmail.com>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1734705955; l=1282;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=ksJ+kZjL8uLlN+FZ+pHkeFoebJsDUcUmZPaIlmDO4Og=;
 b=x0Ev+HpwVYqbwB+I6AVvSeZI9hA8fjFh/u8hIaK1sJWwZeeE1MvacpEYn9gzDmAWTMUsWEdNZ
 ecBCUxDslrZAhS1a9R+KuoBbFFAZG+4joMBRs9YtU8+yeFqxZube1LL
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

GS101 has 14 mailbox controllers. Add the AP to APM mailbox node.

Mailbox controllers have a shared register that can be used for passing
the mailbox messages. The AP to APM mailbox controller is used just as a
doorbell mechanism. It raises interrupt to the firmware after the mailbox
message has been written to SRAM where the TX/RX rings are defined.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index 1441e9a252c2..6947dd081a0e 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -1445,6 +1445,15 @@ wakeup-interrupt-controller {
 			};
 		};
 
+		ap2apm_mailbox: mailbox@17610000 {
+			compatible = "google,gs101-mbox";
+			reg = <0x17610000 0x1000>;
+			clocks = <&cmu_apm CLK_GOUT_APM_MAILBOX_APM_AP_PCLK>;
+			clock-names = "pclk";
+			interrupts = <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH 0>;
+			#mbox-cells = <0>;
+		};
+
 		pinctrl_gsactrl: pinctrl@17940000 {
 			compatible = "google,gs101-pinctrl";
 			reg = <0x17940000 0x00001000>;

-- 
2.47.1.613.gc27f4b7a9f-goog


