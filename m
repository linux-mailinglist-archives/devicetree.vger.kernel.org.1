Return-Path: <devicetree+bounces-29210-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A9A8821F60
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 17:18:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0F0891F22740
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 16:18:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63B9214F62;
	Tue,  2 Jan 2024 16:18:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b="Eebx0Vvo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C639314F60
	for <devicetree@vger.kernel.org>; Tue,  2 Jan 2024 16:18:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=easyb.ch
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-555daab65b0so1038701a12.0
        for <devicetree@vger.kernel.org>; Tue, 02 Jan 2024 08:18:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=easyb-ch.20230601.gappssmtp.com; s=20230601; t=1704212322; x=1704817122; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AK39mKKFpj4484b33ot/DtFluDWhKNvbgmlLtz4KmTg=;
        b=Eebx0VvosFlh+FhzJTScXFVeaRNVTJr/IHy2POm+vTfAaTwuCDjOjNg/AL+LnZd90u
         GhxDkntD3obTjJ3CiAxbtrSzhaKg1u6pe5s1fAbImfuxOguHuJZZKllPiMrWf4IRp4tc
         YXd5vcRpHeGuWLnjZ/ALmSK31CpOAcmWQVwpjlk/XB0Wl85LUo0x1stIijOJvLdMvOIP
         8ccCUSebufmHtaeTTzrob8C3G1XOXhBaxCB120Wj9l21pOqoIR9hNFYzyJyWQN8jNKSC
         TDbkm1JHn7Et0CZeByU5XZwzUQ1vyR7Xj0mJ4fYnN9VhWebSa+qZRyS9pgXYJQ3d2f8A
         26Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704212322; x=1704817122;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AK39mKKFpj4484b33ot/DtFluDWhKNvbgmlLtz4KmTg=;
        b=KL7Bdysv4DRG8CQ0LiV+znAV1q+u5gsGS/vbMEc9ncBbU+6K1qxvagqlt5BMw7Jpsc
         ryzQgE1UnS8SSH4uoej73Ei+YLSQZWz+BGt86+L3wGXbQlz5HMLGkfAQCNBlrHCAJyjv
         oQ3l1xlhaGIKkwj1DjY3yp6b98/AhlsJ9ben8hCVXeidTaT0SeBzMIttDOJNBO0iC+YS
         yUTkwgitbU8UXDYMufMVA728FWpLZYCI3drXAR7N7H6aq0DsrEkQYFgxDzhaYo0ih7dV
         VnBm5muJ2VCqhFpvtSBxue6U2zk0vXwrPNG685syV0X4DAVuBor92cZp0ibFDnsIB3rN
         +Gbw==
X-Gm-Message-State: AOJu0YwajnSOU2kWS3E9bnmayzMIAneyZ/WKzOeFY4XBpmrkjO44NIf+
	a1Ogwqg1ZiQUAjnAO1MUfw7vMemAKg0euA==
X-Google-Smtp-Source: AGHT+IFkEUSHclWLMmNvocNvT6r3BYQbOlDeQqrx4PcfcjUwNpe1HxozeIdKG4JExExi3i02BP1n9w==
X-Received: by 2002:a50:d74f:0:b0:54c:6fc0:483a with SMTP id i15-20020a50d74f000000b0054c6fc0483amr20387267edj.2.1704212321729;
        Tue, 02 Jan 2024 08:18:41 -0800 (PST)
Received: from fraxinus.easyland ([77.109.191.117])
        by smtp.gmail.com with ESMTPSA id h12-20020a0564020e0c00b005561a8c2badsm3969191edh.83.2024.01.02.08.18.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jan 2024 08:18:41 -0800 (PST)
From: ezra@easyb.ch
X-Google-Original-From: ezra.buehler@husqvarna.com
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Rob Herring <robh+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org
Cc: Reto Schneider <reto.schneider@husqvarnagroup.com>,
	Michael Zimmermann <michael.zimmermann@grandcentrix.net>,
	devicetree@vger.kernel.org,
	Ezra Buehler <ezra.buehler@husqvarnagroup.com>
Subject: [PATCH v1 0/2] ARM: dts: at91: gardena-smart-gateway: Use DMA for serial ports
Date: Tue,  2 Jan 2024 17:18:37 +0100
Message-Id: <20240102161839.702625-1-ezra.buehler@husqvarna.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Ezra Buehler <ezra.buehler@husqvarnagroup.com>

On our AT91SAM9G25-based GARDENA smart Gateway we have been experiencing
various problems which we were able to trace back to unreliable UART
communication. Enabling DMA for the serial ports resolved these issues.

Ezra Buehler (2):
  ARM: dts: at91: at91sam9x5ek: Use DMA for DBGU serial port
  ARM: dts: at91: gardena-smart-gateway: Use DMA for USART3

 .../boot/dts/microchip/at91sam9g25-gardena-smart-gateway.dts    | 2 ++
 arch/arm/boot/dts/microchip/at91sam9x5ek.dtsi                   | 2 ++
 2 files changed, 4 insertions(+)

--
2.39.2

