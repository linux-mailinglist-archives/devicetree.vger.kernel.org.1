Return-Path: <devicetree+bounces-187777-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C51FAE156B
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 10:06:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 20E0616CE41
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 08:06:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5161233738;
	Fri, 20 Jun 2025 08:06:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="MLZARYUw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11283229B07
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 08:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750406795; cv=none; b=BgTXqsWx0zJkJpT3a/Xn3EWDyZFBvkZINIhAEL6avNw/rtbh4AJD/9YscKePbuxqE3+/Tk+Hj9xSib7iuhTqrxKPbxcg9B0v53kJEOXnGMFEceu/RambbUX6p1lliDI5i+GkiCB5li/AztxHwJikEahCJfD8RsIJbX2fl6ugSng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750406795; c=relaxed/simple;
	bh=2GMl15IcDzSLUs4dQKt3zl70qRcqD67Weh9prpPTYRw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ARVkMMfYpzDkxGDd9mJjccSf3Qp2VtTWd+IiBa8CsiYL1fOEMfal6zgi6tqXNLjWNyJhfAtGZnSG3RPqfyVSqE1x0MFFDtQTvXOE0iSzfHWyR1UBcJarBHKzCxDZ3Yct9edDA7wt4UVC3m+S5eYnEj3h6r5bgwD6K+A/JFU38gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=MLZARYUw; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-451d7b50815so12076345e9.2
        for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 01:06:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1750406792; x=1751011592; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=glG83oErz5ct/gt3NB4AwDuDkSFMT8IuwCqf35S7MTQ=;
        b=MLZARYUwTEMR4EqDk0mgGj/5aQ+0hvOm0QFdCJnA3LCk8cYLi4Tij3KrYqyNM3sNfC
         8lUP5CR73VSwbfMVC+z2OfnYJlKZ9jG6cpJwH3WVyxo8cIqjwCoSIl5I4O7qtq/Irey3
         v1uruKYw+yTwkGUKKMis4YNszMPZ7VfQwhdSA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750406792; x=1751011592;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=glG83oErz5ct/gt3NB4AwDuDkSFMT8IuwCqf35S7MTQ=;
        b=XrRrA0FsVfRM3tXLxK2ZfGdzvTj8UV1Fs9Z+Yp2m56yBaud5AvwOUuYWpumcZPB/r0
         mrrDyKEXmdxWT9R3yV4WkZ+lvx9iplZ26rhA1oWRysyFcSjw3zDAwfysZ87N825LP+Kj
         130KfT2hvCpdwPCDESGCCY1wPgPsa9RNJg0Y7P15Eq8LA1Ra+UqUUqhoNpwZRDPbWqpT
         rtimg1jhPCcsrO96RB6PsQ2Nwp2syEm0FSAXyelBsZEMgIon+09GsJk2CcZSS2WCvxoI
         qLxqvsbY/Ts5xT1O+sKthTZmNII54O2ztBwbbLOlLsOOOqbvr+eRpESxXRJdSdrUSar1
         ZS0w==
X-Forwarded-Encrypted: i=1; AJvYcCUFMhVb/WXgQXNbLoZN6nkgq7hZm2C21Q2yYXtlh+RODZBl0eKQuPF34Byz7BNxEjlI7RLOfdltoMhk@vger.kernel.org
X-Gm-Message-State: AOJu0YzkElJbFmsb7xHLewOvH2WnqjUN0w3Mw1VJM7InnpLLbMdmshaq
	KP2MTpDeiNFiBsfx0Mq2nqq4qiFODPc8/817FWbJvxYDT0Ks+MRlGDs/JcvxXMFO3dc=
X-Gm-Gg: ASbGncuaX5sdotfkyKkzYwBWzrs1xecxLUfdUKiHt9W0TSH3XP0p248me4F2XO6l7zr
	cEQyAr4oot5bzAoCk8Gd5N7zHiZD85ihqGOYsmajHSbr2kNIz4QzmfYwo124T0Jfy8P8570sQLg
	uHYjnBUH47IIOJaKidWUg2SdhiyYlaxjhtOIek2C59fsno+my5y8v1MQCwinQum1scGeImImbE2
	MXDvhV1Qxg1cVU9ZJK0Lk03mTEhj+gPKNRDoZr3En8MCpYBUpixowVOtPsg5KQcXzSQf/TWKsav
	wPmOHASUWGkamA1L6ETqxfrZBGZU5MKudnH2rrcJhvzPCu4ZOTpdc4oDReVlxa7aS5DkJtMMkAA
	wfEKqzBCt33nQbAi8lR5KFl1jk0FnRegohfgbuMY7iwsln6U9U15t/ddvSQnvH/I=
X-Google-Smtp-Source: AGHT+IEvnp0x9nPi4w5DLvc1NncQW3DwrucsQPHAIzJHhVTF2FdHwkuDd/b3JKHhFP9x5StRdmgfuA==
X-Received: by 2002:a05:600c:5494:b0:450:cd50:3c64 with SMTP id 5b1f17b1804b1-45365a00582mr15702545e9.31.1750406792385;
        Fri, 20 Jun 2025 01:06:32 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2.196.43.224])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4535ebd02basm50137905e9.39.2025.06.20.01.06.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Jun 2025 01:06:32 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: michael@amarulasolutions.com,
	linux-amarula@amarulasolutions.com,
	Frank Li <Frank.Li@nxp.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v6 1/5] ARM: dts: imx28: add pwm7 muxing options
Date: Fri, 20 Jun 2025 10:06:17 +0200
Message-ID: <20250620080626.3580397-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250620080626.3580397-1-dario.binacchi@amarulasolutions.com>
References: <20250620080626.3580397-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add alternative pinmuxing for pwm7.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Reviewed-by: Frank Li <Frank.Li@nxp.com>

---

(no changes since v5)

Changes in v5:
- Add Reviewed-by tag of Frank Li

Changes in v3:
- Add commit body

 arch/arm/boot/dts/nxp/mxs/imx28.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/mxs/imx28.dtsi b/arch/arm/boot/dts/nxp/mxs/imx28.dtsi
index bbea8b77386f..ece46d0e7c7f 100644
--- a/arch/arm/boot/dts/nxp/mxs/imx28.dtsi
+++ b/arch/arm/boot/dts/nxp/mxs/imx28.dtsi
@@ -755,6 +755,16 @@ MX28_PAD_PWM4__PWM_4
 					fsl,pull-up = <MXS_PULL_DISABLE>;
 				};
 
+				pwm7_pins_a: pwm7@0 {
+					reg = <0>;
+					fsl,pinmux-ids = <
+						MX28_PAD_SAIF1_SDATA0__PWM_7
+					>;
+					fsl,drive-strength = <MXS_DRIVE_4mA>;
+					fsl,voltage = <MXS_VOLTAGE_HIGH>;
+					fsl,pull-up = <MXS_PULL_DISABLE>;
+				};
+
 				lcdif_24bit_pins_a: lcdif-24bit@0 {
 					reg = <0>;
 					fsl,pinmux-ids = <
-- 
2.43.0


