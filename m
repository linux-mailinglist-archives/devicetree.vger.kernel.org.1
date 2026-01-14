Return-Path: <devicetree+bounces-254865-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FECCD1D60D
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 10:09:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9BF4130719CA
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 08:57:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B678737FF70;
	Wed, 14 Jan 2026 08:57:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="mfJeh2W8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4739F37C0F9
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 08:57:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768381051; cv=none; b=OaqCmlWz7O1kE5iVFUjXwY7GAGq/pAKvST7fsURap1wNKYm94HmD0JeGG+dkg36B2gCtM/WbtpAReG10aH7cGm8Hp6dS4aXQ8aVJsBjL6tPA0jK6IXohAixver7evT19zWGTYjpGN4yXT5rn6lWne3MxmA4vcBphU8cjVjmLulQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768381051; c=relaxed/simple;
	bh=F8VqL2mrsfl/1p9zR/dSxMnGMq0rUfHJkw5M2BNwhJw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=EwYjiveoyp5Bo2WX8SAYZzfSTnSYaVhEPbpg7RXnQ9Y0ZGpJo5lCqw7f7L+jXE58LWniYfN15qubim32xIYJ/IkUlYBUb1xLVhgoNvZYJylDtzmftsjSqll0dI+9mUEa6M72wjEa1HbtAbBmMPg5Wxw8UQeBmIqFsAhCM5VP/40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=mfJeh2W8; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-47ee3da7447so3034295e9.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 00:57:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1768381042; x=1768985842; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=e1dp7x1TdxmlhWgtnOwQPYR6NPaurAoP493Ro32X3eg=;
        b=mfJeh2W8P91kNtci1ETQleuMGaMgm1XL2BRbe2UWDheqwpk2fKKu2hPRMm+CCgODmE
         BbxPqH2JgCEfH2e9r1NpfdpVG93533uT1ItU5qOV4iujEdbeWaBVILhrLrGLn+pT8SEQ
         bp2GOCkDjJNIQ4nLH6u7SHazYttSAAdvcNTxAEAduS4GTqLONxTA78kx+JJJxrZERdD2
         tf/nGrDGEzUwH6DGhqKkFlmSWR9/j7DlNo2kzcJh9YaNqOnGYd3oJOU4/ldUJIdHIBDU
         dGpqrI6R8l1CFNqCYIyomANwF6ROz41tb+Q8kjNVMTq7RhoK1b+jgIUw7kw7FvnTDFVY
         W2ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768381042; x=1768985842;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e1dp7x1TdxmlhWgtnOwQPYR6NPaurAoP493Ro32X3eg=;
        b=A8L26MOK0L22gYdCBq/lxl3QwBgwo4wJh45lQoDfVJdjVnm/ywRArEQp3PWibcOlZY
         ezRx6zcfkb3eqCR1cLvbwj3KnN9L5xuodjxbBW3WPyCP39wbd/QhP6eWEgZSb92SrRzg
         coN6ViL1AsrwfCezNHEV0Dce+msbDl5JKKsbtgst5CDAij1GZ/bGBX6XTFSXOI3QDdqA
         qCqgbsUPWwk6QwxWLTIEtzAfALdrWiyikgHuEUjni48mdeIGhUaqAwR0hLXbLgpMWWaL
         fBjBtThqfv2zaFlY3C1vrms2WMXxzo0kycg0T6wqxsI1c4UdqBaIodsAwRnkw/hIOPj0
         PpKA==
X-Gm-Message-State: AOJu0YyXfWmn37o1WLI2nShR6ussVykyKPYkvoVeGHCFQqkOKPFTFs7U
	IWwhGmAJG02XyYvLQU3n8WrhXYj4vKR5ql//DXZso2qjX8DIQWYOKwCE57MsFHvPyUA=
X-Gm-Gg: AY/fxX6HosW3tOcS1H2M84R//qTXRUU8cA8k49vL6yYsSUFTh5HFr8UifUmxuBLhenr
	aFRLlhhfLORgOV37qaXv9F1yJwPFfHwVtxsQIkcxyfS4dRfkccTJhWBp/IOSCzBWK2Pi3Cnr9lh
	Qi9ZPkrH8vhZO90j+gWAYrj18eyiV+t7r+EYL7tSndzJ97DM6FhwEeQAHFglP2nYooomeowHC5r
	dvBNebzzl208+8kvWeMc3VpH2WVN7u/C+1UaG1cXK5OL6KvZVlzCC55v8xOC01GgEULzZSnTcOn
	ECA6RnimDcNwbvtmKGiRwy8EYIfh2Z0J1yqHY6VRcr4bq3x3vH+iguVR6Mp6tM1LIgOFzaxHWlD
	krUlX19xFMcA947lKlNRqJI80r9Xrug+GWDJH94YREZzu5qTiLylQTBluKycArpMKO1SES8gnjV
	DQPRwuvN/0xQ==
X-Received: by 2002:a05:6000:2907:b0:431:771:a51f with SMTP id ffacd0b85a97d-4342d5cecc0mr1509239f8f.49.1768381042003;
        Wed, 14 Jan 2026 00:57:22 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:db84:c9f1:21bc:dca1])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-432dfa6dc4esm26892352f8f.23.2026.01.14.00.57.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 00:57:21 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
Subject: [PATCH v2 0/2] arm64: dts: amlogic: s4: mmc clock fixups
Date: Wed, 14 Jan 2026 09:56:52 +0100
Message-Id: <20260114-amlogic-s4-mmc-fixup-v2-0-7e9ab5f12286@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFRaZ2kC/4WNQQ6CMBBFr0Jm7Zi2GhVX3sOw6JQpTEIpaZVIC
 He3cgGX7//891fInIQz3KsVEs+SJY4FzKEC19uxY5S2MBhlLkrrE9owxE4c5jOG4NDL5z1hbWx
 7o1rRlRjKdEpcil37bAr3kl8xLfvLrH/pH+GsUaG2pL2zypPxD7LLIJT46GKAZtu2L5dF8ty7A
 AAA
X-Change-ID: 20260113-amlogic-s4-mmc-fixup-92ad8b90b7be
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Xianwei Zhao <xianwei.zhao@amlogic.com>, Nick Xie <nick@khadas.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Jerome Brunet <jbrunet@baylibre.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1102; i=jbrunet@baylibre.com;
 h=from:subject:message-id; bh=F8VqL2mrsfl/1p9zR/dSxMnGMq0rUfHJkw5M2BNwhJw=;
 b=owEBbQKS/ZANAwAKAeb8Dxw38tqFAcsmYgBpZ1pmEX0dBKj+m2U9h/ETeSvjMWpinjG1JERXz
 WiLvhC/IEmJAjMEAAEKAB0WIQT04VmuGPP1bV8btxvm/A8cN/LahQUCaWdaZgAKCRDm/A8cN/La
 hc0NEACGH2Oq4613xYHjGjiC/GeGt4ZdZIP8dBjR2lHAQvsuH7HUjJg3g93u09Ivod/i1UIoatA
 3Vyl19e9Ar8oBbCGmDvSL3R8K3aEeKO4mIyd8KAHjsF39T/WqUdMQWBnXkmK2UiywJtWaXSenXs
 yHtn1Ih8mskutxU76gqDqCOgLMhq/q2XSzu73qstZKAr2sGKbvJdELSypSGvU5ysTcE1jkebb3T
 EeYahLaWlwDCI1H2jM0FB3XMnp/QuztGkjrUOWQ8CR6CU3iV6kUPdFAcufE/n58nevJuVhnaUQo
 Fgdd/Tz5Gw3iJcUqvZSLgUrZbb1Cw545R3eYNMO3+Z/z5yDiQ5WgrWQkDzp7Iovu+4Bv4fwcDLJ
 a7oC1c3vHo7/YWYkhni1YBvwixoG+RSere788SxBfRqyOM9QV28QIBw8bSVonHehe+GiqoGWGu4
 EdXsEfZ1z01QRqDe6SaGtJQXzAGYko1MyTxh1450T4+q2az4WjnfAGhRjCh6Gwn1AFI0vBylZ6W
 2mPGdcKfvm13Xh4yVijhT0aF9637jTJZEcYkXYF0tSs2G1PV3PPNpAnIlHnSep1h3u0X2ws1qgx
 bIG1BY0R0z1PEbTGISPK6trLpFeVpfsvPrY/RkWcXai8EfhiqC6qExWmvUZR9qyHRJRoWj+SIuS
 yvZjavYxn5UQtvw==
X-Developer-Key: i=jbrunet@baylibre.com; a=openpgp;
 fpr=F29F26CF27BAE1A9719AE6BDC3C92AAF3E60AED9

The patchset aims to address the issue raised here [1] for MMC B.

While checking this issue, I've found that MMC A and C also appear to be
improperly described in this platform's DT. The 2nd change fixes that.

To be on the safe side, the MMC clock should also be assigned on the other
SoCs. More changes will follow once things are sorted out for s4.

[1]: https://lore.kernel.org/linux-amlogic/20260113011931.40424-1-nick@khadas.com/

Changes in v2:
- Collect Tested-by from Nick
- Fix some typos in the commit description
- Link to v1: https://lore.kernel.org/r/20260113-amlogic-s4-mmc-fixup-v1-0-1ab1fca0fb2f@baylibre.com

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
Jerome Brunet (2):
      arm64: dts: amlogic: s4: assign mmc b clock to 24MHz
      arm64: dts: amlogic: s4: fix mmc clock assignment

 arch/arm64/boot/dts/amlogic/meson-s4.dtsi | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)
---
base-commit: 8f0b4cce4481fb22653697cced8d0d04027cb1e8
change-id: 20260113-amlogic-s4-mmc-fixup-92ad8b90b7be

Best regards,
-- 
Jerome


