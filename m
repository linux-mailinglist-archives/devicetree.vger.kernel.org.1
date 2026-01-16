Return-Path: <devicetree+bounces-256100-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B813D3207E
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 14:44:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F05FF315C899
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 13:39:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65205284B3E;
	Fri, 16 Jan 2026 13:39:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="xnLQe1an"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 579A0252904
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 13:39:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768570743; cv=none; b=JTS7tpeMdCTzDmp8xb5RRH8pXM/hFn/Ka0Fim4jK7uLNo1k0jmxv/IgiSBaUcPnHdMBzR83zgGqN6sEVi1mw/HUlRkxRZJBELpTJe0pKuzzEw1J13+VUEXpVoh3A0swqoX3r23wkxTEpehO9GevLXEesxMO9nSzRvELSWoqf2Z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768570743; c=relaxed/simple;
	bh=vsB3iMV+9fUeGQu62KaTOVPfdptcCf+K+X8N9tzPOGw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Nd2apAzE4zDkxsx33pDlv4fKGHLFqoIfyBIMbToHHp9Zvhk+5euLbXhHaAchXkvaWeFwWPPLWRrsuKb70MJJttKlzgPW3pjZElUj+JQQKjcEklFMcYbrc8/vkNbKB/D7F2W5JJtarp/mxgCDlW2cL3S/V7JWevmqcE5BDdbYHMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=xnLQe1an; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-64b83949fdaso3177456a12.2
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 05:39:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1768570740; x=1769175540; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0U2+jzP6CDDUjkiod/PKOvsjawQoDL6waWdd/pZu0PQ=;
        b=xnLQe1ant3l9SZi28ySzLGJm6v/PKRtbGgESeIzZPELRgwS2TPpls46gT1G/00LG4n
         PUGrXwsm4kMt9AIN4XzHKFkpGHVhVWJaRCzj6Y7/l7vx6asUdTlALDycki+rP6J9xT4f
         qQp00xJVhO1lh5ZiPXXyegbC/tBQDla9RbqEKjEaYqbNGp/aoTi6d4asMTmaQbHHfCxJ
         CTD6emvFw4xiRQ/Bjum7e8r2FVudlmclgf6MNH/DBl7E9ddFtT+FPkx0O0FL7cS9MFFF
         MDwBW6k8UkTs3igeRLNzhYYnt5t4rnClQ9g/mhZDfi79awBl5ycf24B8Qqq09kaMHvs8
         5Jgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768570740; x=1769175540;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0U2+jzP6CDDUjkiod/PKOvsjawQoDL6waWdd/pZu0PQ=;
        b=gSvvy0++9DcnkkFQA1Ru5WDniar+YNPIrrE4B4YqJyTW5sXeUkwtB5A2REss0GkNOu
         59xK/gG+h5VIksx+/4ryiS1pIwRQQquCbslc6V3IxuvIpLKcawylrP448X0+rIodboSL
         AU25f9J7BqcvYtvJyax4LjRJI8/y99YJe0Oe21pYz0/xBeyWOFjzFcd8N5igDMxtb3La
         WfCxWqCa1E9kIK2aAr2qquoVvqZTwmMUt6XZpINhJ5JzPDsBMSWZ+7kRBXE782LcP0+Z
         OpLh7id8jaME7/1GyPgLIhpbNg7I2igeixZP3SqpMuUeeUG+Pz7ULq/DHVXHocDAjMOQ
         U7Xg==
X-Forwarded-Encrypted: i=1; AJvYcCVvEj+xRcsbn1QP7DQky7p9S4Zee4divdKaIQ1RjJwtezEb5A8oRrTGiBs8QGmEKukszUUe3MwyfQ0Q@vger.kernel.org
X-Gm-Message-State: AOJu0Yz91fXXW1W3fafpGKAWqII3TQGFjPMzg5zF/7CGzHI7Oejb9de+
	WwY/9Gsbzpo6ycGXdPno7e6uTonON8nEh6BGKl4QwY7L0IAdHLsACC/2K7ojluc4YIg=
X-Gm-Gg: AY/fxX7zzBQfG+TB1tA/ozgl2OSXIffXoxYYBGEXh1SNszC2tQc9xACQMuj5pjB/RA7
	dT40tJISqKraoTh1feSb6WAFa2pYs5g587nIoXlozKc5L07wBVaPW+SP3X0Qixpie++334W2LRM
	G19Zqm8luKJ/cG7m/z5obsCAdqWwgEiV+weSofmGHYfS0qIXrOwIqb9fRrHY6oY0k53guUJwi06
	7k3UBCiSNGI9PIaCACEr4OTQFel1xPYtVbv8Lv9zagOpkJVkRPjYMghWYQEhNBpfjVS2exMNBal
	qVas+kI6udUXVkmWgv3/ZNB2tnDf5/OvFvkc31kkPR1v2UHCl0kgnGyjK69/i+OylUpgXb9kz0j
	49ujtnCx8Vtq1ivGSQSOvGX4bZzflRujO6qKsyumnCjCgsXnt8FplrGH/cNYjm1dyfPQWGMUMi4
	aK5frStj9c56uFVBkAfz2JjAIphkpeVUZYejUSHNcfUj8nwVJkuwqts3sNxuUsQKAQ
X-Received: by 2002:a05:6402:2804:b0:64b:6a7b:5996 with SMTP id 4fb4d7f45d1cf-65452cd951bmr2448309a12.30.1768570739730;
        Fri, 16 Jan 2026 05:38:59 -0800 (PST)
Received: from [172.16.240.99] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-654534c8b7fsm2495528a12.27.2026.01.16.05.38.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 05:38:59 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH 0/4] Add CCI support for Milos, enable on Fairphone (Gen.
 6)
Date: Fri, 16 Jan 2026 14:38:54 +0100
Message-Id: <20260116-milos-cci-v1-0-28e01128da9c@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/z2NQQqDMBBFrxJm3QHHioZcpbjQZNIONNomKoJ49
 wYtLmbxPn/e3yBxFE5g1AaRF0kyDhnopsC+uuHJKC4zlEVZF1TUGOQ9JrRW0De+clqXxLqB3P9
 E9rIerkd7cuTvnJXTGULfJUY7hiCTUQOvE/61x/+1Z9QZ07XWBWtR8rmKeuf9ndhrsxC0+/4DF
 rAbmMMAAAA=
X-Change-ID: 20260106-milos-cci-f7f4d8821e87
To: Bartosz Golaszewski <brgl@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Loic Poulain <loic.poulain@oss.qualcomm.com>, 
 Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768570739; l=2024;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=vsB3iMV+9fUeGQu62KaTOVPfdptcCf+K+X8N9tzPOGw=;
 b=jnLHxzy0FYbwtafB7PRM9AC9uGpEoNZJfuMcbB439ob1GKP+fonMo6eQtInrwGDpvG6BcUC0e
 egB1s7v5wyiDWZgq4PEh/deFSSlKnwSb59RUZlrLlHfMofOvhxT7A93
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add the compatible strings for the CCI busses on Milos, and the EEPROMs
found on the Fairphone (Gen. 6) camera modules, and add them to the
milos dtsi and device dts.

This series soft-depends on https://lore.kernel.org/linux-arm-msm/20260116-milos-camcc-icc-v1-0-400b7fcd156a@fairphone.com/T/

The patches can be applied without the dependency, but the final dts
patches should probably only land once the other series has been fully
applied, otherwise the CCI busses cannot actually be used (unless some
other component turns on the mmss_noc) and you get a kernel warning like
the following:

[  291.055839] ------------[ cut here ]------------
[  291.055860] cam_cc_camss_top_gdsc status stuck at 'off'
[  291.055878] WARNING: drivers/clk/qcom/gdsc.c:178 at gdsc_toggle_logic+0x138/0x144, CPU#4: hexdump/1995

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Luca Weiss (4):
      dt-bindings: eeprom: at24: Add compatible for Puya P24C128F
      dt-bindings: i2c: qcom-cci: Document Milos compatible
      arm64: dts: qcom: milos: Add CCI busses
      arm64: dts: qcom: milos-fairphone-fp6: Add camera EEPROMs on CCI busses

 Documentation/devicetree/bindings/eeprom/at24.yaml |   1 +
 .../devicetree/bindings/i2c/qcom,i2c-cci.yaml      |  18 ++
 arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts   |  50 ++++++
 arch/arm64/boot/dts/qcom/milos.dtsi                | 194 +++++++++++++++++++++
 4 files changed, 263 insertions(+)
---
base-commit: ef1c7b875741bef0ff37ae8ab8a9aaf407dc141c
change-id: 20260106-milos-cci-f7f4d8821e87
prerequisite-change-id: 20260116-milos-camcc-icc-d41bdff31ef8:v1
prerequisite-patch-id: fc79344d381fea48318bbf62ce7c16b5687df074
prerequisite-patch-id: 323271b304b98b6ac0e98032f355de26c8e4fa6b
prerequisite-patch-id: ba8a70f210c54a14c69a60c26eea22d384b0397f
prerequisite-patch-id: de6e7d9f90ce4d8b37342e5198f042edee4b81a4
prerequisite-patch-id: aa3dc6c12366d6574b7e85808fcb107deddb8435

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


