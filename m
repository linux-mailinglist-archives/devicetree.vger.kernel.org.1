Return-Path: <devicetree+bounces-263443-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yO2iBhglhmlSKAQAu9opvQ
	(envelope-from <devicetree+bounces-263443-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 18:30:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C93C10104F
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 18:29:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 56A953040330
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 17:29:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0F6441C2F6;
	Fri,  6 Feb 2026 17:29:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FAlnoLPS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com [209.85.221.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DD3241B34B
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 17:29:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770398955; cv=none; b=JEoNw9WUR5oSiUSYFby4zn3yxOowNyCLq9Axklac7fGvFatSsEXwSwmbKhQDX2pU5EAeT7qzP8DuNP2k7RfuUqsBGAfXpAZp0JhSe9JAEku2nHlmqgdOehozRmzSUrYOd585yhBS1ZGNzs+WOC6SVYWaLQJBbecEChT8z3lnn2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770398955; c=relaxed/simple;
	bh=X4OCnQEpeJBorGqYXoi+7J81mCo8rWEmlgZBzdUxnPw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LOL+kIun3X1C2v6uQFb84fF7lj22tuG7Xv/BtK797/n/fe4IrCDzgJ8ZiT5/cSEUacis7Ce5HrIBcgdVdCWHGTW1T/gr3dJ2szDseSP1FH5DUEACJcrz5KXBNpagBziqQ1K92GVZ2VvKw1NvGo5+Js9yz/mSFciBFLEfdW+uvjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FAlnoLPS; arc=none smtp.client-ip=209.85.221.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f68.google.com with SMTP id ffacd0b85a97d-436234ef0f0so1280474f8f.1
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 09:29:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770398954; x=1771003754; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xxB3vH0iuOXdnI22F4EJHvjyJ371rVhhdGFC5x7FW5o=;
        b=FAlnoLPSlM8dtR82duwvTKydAMNVEJ7Bc4wOmX8xhb9085zI3CzfT5/HmfpvjLr9Ts
         Hm77f7JOfB3lqeefu/AGkeSSUKRSZ2uYBZYRo0+opD3k23ZwJHa3rzZyTuPcBGYJS6XO
         VBgy9TYCmjjOcOymRhLR8GeTOyWBJIOi2QtlmK+wkfM6gR0350m4n8RKlSL/Dmf/ONIa
         Y89qkcXLPoFNesVkYVIfSBIhfKshsuNn1dvSxmD3HA2F5h7wQ+EJCVaYAOTlBhSEAkKO
         d6FpYOtT/nIoyGY4PStK2aW+e8fg06UrBsYmir5v4vb1s7UZTO550QaP7nPcMB2A3npj
         8rpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770398954; x=1771003754;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xxB3vH0iuOXdnI22F4EJHvjyJ371rVhhdGFC5x7FW5o=;
        b=lKdzvNrTIX+gPXJMkQqEKrIE7TfAJgo7q1FEUFuMKGx4P0C1ArfEa7Nkhptm0SW+x1
         G/ZZBqs36pya7HC8ChaTOB8aDQM2LKbdH6tzJt0JI8UN56Uw8VHm9TNr9FDpPm1Uou6r
         qVtkdtZd74faBUMjfU+262lQUA3dR7EBUAKybO5V4LLKylFUkdLPPC+28E/mNtchIdwp
         u86uh7pkCry97FRPvBt/pxh2rHnw/9mLkKurIaXwx7ThdRwHQ2Kd+vGKdD8d/P29LPhE
         D6KQwGvsGwYpj0tSG1QYk+eeg4LnTc0hVeQcOPLletuOg5xOkFwqiCa0Jbgc6amrc932
         hvyg==
X-Forwarded-Encrypted: i=1; AJvYcCVuQ4D2y8GsimeNPoED9ZRcJaVSoUUU5vgQaD5mg5A13OFN3NNu7N+7GFc0fYX4qrYSMHaNcYzcEK8g@vger.kernel.org
X-Gm-Message-State: AOJu0YzbTT4k2NhyoxQ/aoOzicikvqNexVwGJ9CTeMoxhCEycsSx8fCC
	KZAY8Bwj+1MCpcxRfFEV/VsKk6NJGddZvG/ToQKcSXo4mKVW407ih1MA
X-Gm-Gg: AZuq6aKnSxEl3Kb7XdcDk8tHc1mWq/r2vMBdSZsjXEcCrIzd3/ClE+GsigbfyegbEoh
	rSZt/VB9dCmu8C98J/2inp4D/psibhttvtup/cinAEO0ue32+sbek19W/PGm3NtSKUJBWLsajXb
	vYI/HC10yqUUWacpmFOO/XVulX50v5mgjbiZzbSOiQkv4dfXcyWO8ZVkJ4wu8wxzB3F6hElGx06
	cmG3R5xG3CvJMJvJ1tSEb52HIjhYLX4qFZuuTIlCozwSeddOQd3/PUwZ5zfzDL8sHhrP5yYsXzk
	NgXNx34GA9uPEaPoV0ZJk8phvoMpTfuN3wNx4d9Jsijr9D5KiD2K/LjlL8/VNTJgwhUl0C0FTFl
	+ooOBwi6dEchYdvHxND/LgANbcCg3xj/Wfe7y22sMbLIEFsJexlBT6ly8PHxSq8hICBNMj6FpDs
	45
X-Received: by 2002:a05:6000:1445:b0:432:5c43:76 with SMTP id ffacd0b85a97d-4362967e34bmr4965535f8f.39.1770398953684;
        Fri, 06 Feb 2026 09:29:13 -0800 (PST)
Received: from xeon ([188.163.112.49])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43629734268sm6846033f8f.24.2026.02.06.09.29.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 09:29:13 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	Dixit Parmar <dixitparmar19@gmail.com>,
	Tony Lindgren <tony@atomide.com>
Cc: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-input@vger.kernel.org,
	linux-leds@vger.kernel.org
Subject: [PATCH v2 04/11] dt-bindings: iio: adc: cpcap-adc: document Mot ADC
Date: Fri,  6 Feb 2026 19:28:38 +0200
Message-ID: <20260206172845.145407-5-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260206172845.145407-1-clamor95@gmail.com>
References: <20260206172845.145407-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263443-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,baylibre.com,analog.com,gmail.com,atomide.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.990];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 8C93C10104F
X-Rspamd-Action: no action

Add compatible for ADC used in Mot board. Separate compatible is required
since ADC in the Mot board uses a unique set of configurations.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../devicetree/bindings/iio/adc/motorola,cpcap-adc.yaml          | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/motorola,cpcap-adc.yaml b/Documentation/devicetree/bindings/iio/adc/motorola,cpcap-adc.yaml
index 9ceb6f18c854..1f77da7f8e06 100644
--- a/Documentation/devicetree/bindings/iio/adc/motorola,cpcap-adc.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/motorola,cpcap-adc.yaml
@@ -19,6 +19,7 @@ properties:
     enum:
       - motorola,cpcap-adc
       - motorola,mapphone-cpcap-adc
+      - motorola,mot-cpcap-adc
 
   interrupts:
     maxItems: 1
-- 
2.51.0


