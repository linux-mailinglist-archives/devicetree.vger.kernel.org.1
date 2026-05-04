Return-Path: <devicetree+bounces-292623-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sPOILaaU+GnRwgIAu9opvQ
	(envelope-from <devicetree+bounces-292623-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 04 May 2026 14:44:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1655A4BD1BB
	for <lists+devicetree@lfdr.de>; Mon, 04 May 2026 14:44:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A20C23016EC6
	for <lists+devicetree@lfdr.de>; Mon,  4 May 2026 12:44:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C7943D646D;
	Mon,  4 May 2026 12:44:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yq3gNxEf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15C313D5654
	for <devicetree@vger.kernel.org>; Mon,  4 May 2026 12:44:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777898657; cv=none; b=NL16dYNFhDT6SlE3irB6yq0G3kxU5P5ivWO4XqtkQOruemLgzNW8Zt1XZbkuEmv1kKaFDeIaIIKOfvmGI7hrBTFQP+5UvAwuEcAUFJASfcxU6+NWR0e016SSa/HuAyOttbOEzi1Y9qYFL7+/sZx5DrQq6ETT2bOkR1LvqF4p3nQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777898657; c=relaxed/simple;
	bh=yCcphKvnwTUiTEv7sjOuFCJ5PKZf1jMXBA3E07scdAc=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=NY7MA/hKLlv47rUrfQgXxnWyyzpcBVnHx+eefP5NrLzk6Btidjw5P1VNzA8/MZ5fFt5zYNRdMoJrICFKz9oDj1FApbJO6gqjWxFyeahviFPp7ygYtcLUnT5Z86U5RADLgmzsjyhluqwjCzov0/zt/b74Ga1/03UBiGrn4wMCOsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yq3gNxEf; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-44e5624c053so510545f8f.2
        for <devicetree@vger.kernel.org>; Mon, 04 May 2026 05:44:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1777898649; x=1778503449; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EnhpeIdCT3WsP+0TRkiY1dGzaPyKSainNtPuKfGYNRo=;
        b=yq3gNxEfga6VN4tjwFs74vkGlRziUCQwTiDyuIB6MUEfMvVpEAZgiDQFw2pz3j1gtr
         0QWaR5WZxlpeCYgknAVHxnZLNgkK7NwAN86O8MZznTnZFHBnA6729Ns74Vb8CkaVcwI3
         HkZwqz4r7JIa5lgTLWmTNW8H1zdminz+r4z42OPVIzKYqjtRfYumuhHeeQwNOX0dZo26
         4iAu0SZfzktUxF49uO9upnWGun1wSSwN8NAlbj9RhQL+t6v12sNCFI73kyMpYc7eVYAl
         qMBiIzklDdHHQG0ioI0+/8rioH7xlvtyIG3ICSztdkfa0223f2IYut5kGxNjb+dUvl9w
         eoBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777898649; x=1778503449;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EnhpeIdCT3WsP+0TRkiY1dGzaPyKSainNtPuKfGYNRo=;
        b=Q3Jy+eoanT5Qp8lO5eXTAB2HUAmh6n7l2zGw2grGIjoiCMQoMQfSMS19tHNt6uFbgg
         Ruf9c/3FB14gGDToEx6Jo3ar1+3VTnPfAfbcidQe4QxdhNhZZbKoMfrJxkIG4PeSRHT7
         fw0Pi2bdzW/spaL42cMUl7RoX0bDI+f4P+cB4PpwBt2lMfTkkZ/aoEQNQHV+9i0nqpRT
         EwXxpAYuUQQntgQM0Vh/k5jgasguk/JtZiArpQ9KehMzhJmb9aIERyi+jjktiEbSY5jN
         07/5/R/pmaeqEoMR2HfNu7qYXF6tsqU1Ece+9EMeAAqeuJ1PehqQoPh8kcjuc0rpZThD
         iRBQ==
X-Forwarded-Encrypted: i=1; AFNElJ/aqFRbzD1yxAyY16Cwirm5ARHHdnXl0+Kgk/r5FPrNxxsr0PnKczlkrjutP/K7zre/TlrCCGP0s3wX@vger.kernel.org
X-Gm-Message-State: AOJu0YyOZkGmuQD1WqgRL/kUZirzHXTYbBNY7eINpuWSLo/Zn4knKt5E
	IG10q0qfmXpDaxAKfc8AIHABilkyPYRTVNthH/+8AbgJrK1CTtutdnYj8UTv9mxycys=
X-Gm-Gg: AeBDiet6IFxLezVrGfpXgHwepKeKg9ZBme0+K3AZcJqyXZbE4xYCCtWjH48f4Cco3kf
	nvaWbePhrvgwqg39xiNrYCvctXcu5EmVHSPuwPZk/4qP80pl/uBa1wWz/3UBkI/f/l1OG7noRk4
	33W0P4o2XgH1v7cJPveAOLAnAbLJYEmozP2eQTWP4QwSa/l+Ipv64qKXjqSmDAFiUTUAznHJjIf
	0ewSYm6Nf8PxOYUy3P3VQUi6kkn9Sv3ca7nMR8veBMbqOwT9DHB/sjDITpUzoHNX9hpdIaWL4bc
	O6iwAVm2gaC0BNSBrl2oB/xJj2VJIe8BnaOK3/NNGIRxh8GtK82Nr+tm1ivQcxvpKo/i59ONvCq
	V99w5X8wJZUNDPEZkMaCjVXHZb4v0YSGW99wSTNP8RgwSEFoFXOyX8b/YWc+4A5ZT82QemHxrhl
	/JbSbMAAg+pY8q/CqTzoe1A0ZflAi4HiNk44Fy36qTZtTxifaodeQaQ/k=
X-Received: by 2002:a05:6000:24ca:b0:43f:e2b7:7160 with SMTP id ffacd0b85a97d-44bb2f28236mr14377074f8f.4.1777898648447;
        Mon, 04 May 2026 05:44:08 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:106d:1080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-44a986aab44sm26919443f8f.29.2026.05.04.05.44.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 May 2026 05:44:08 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v3 0/2] regulator: add support for SGM3804 Dual Output
 driver
Date: Mon, 04 May 2026 14:44:04 +0200
Message-Id: <20260504-topic-sm8650-ayaneo-pocket-s2-sgm3804-v3-0-c4783443890b@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJSU+GkC/5WOQQ6CMBBFr2K6dkwp0DauvIdx0ZYBqkJJi42Ec
 HcLbnSny5f8eW9mEtBbDOS4m4nHaIN1fYJ8vyOmVX2DYKvEhFHGacEkjG6wBkIneUlBTapHB4M
 zNxwhMAhNl0tagBS8qLUWDLUgyTV4rO1z65wvbw4PfUUzrvJ10dowOj9tj8Rs3f3bjBlQyCpZG
 cHTaclPd9sr7w7ON2SNRvahzemvWpa0gmdUGl6qktMv7bIsLyk388xEAQAA
X-Change-ID: 20260428-topic-sm8650-ayaneo-pocket-s2-sgm3804-8764fbb72eb7
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 KancyJoe <kancy2333@outlook.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.15.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=2017;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=yCcphKvnwTUiTEv7sjOuFCJ5PKZf1jMXBA3E07scdAc=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBp+JSW1I+KUzjP3aXoSfUlQZpTwvk4OhEpZyTZ5ltb
 KqmDhySJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCafiUlgAKCRB33NvayMhJ0Vx0EA
 Cob0LdWp99Bct9CY+vN29hnFu4/QADBAMA4OB8VsRoioez3mtM/j70BPWhq+QLBgyp10x+mV8Dmorg
 Qb2QTAesIG2HeTw/L2JDDdwPeuc2ImI4HL7NCanQkeR9aq5djSQSm/xFcvw7tjSL23lZtrKIn5BwE7
 J8KmmBxNTAOxAHCTlxr47DTkybzCqPJgv68wliHOdr7R0d2+C8ZLEem1UFLThq+w4rny2CdeK8A37B
 Q+c8RV9vsOupmsnwnhmosB5DmMnL3sPCTqUWKtGCM7hfSHOxQP9f7GVTzpG2q+Lpy2zBCShaG47IVJ
 KQ7JlwBoQkhIBtNF7exKMKX+rRNdHD5QXkT7Tqv2efx439voCcCNEtj/gH1Dp1ELy0FteRonSo2B0h
 ecX4Ur/foLHMs8cLfujpU4as+McQo9WSArNpOsAsGRzBxWEga7cLQRZXJmE3g1ZL+FktRwt/2LF0uA
 qnHLL2zj9dYwkj06i3ox/LoVRXXTOcFXtVTg+MZSE/EuE9eaKoo39BTx5aZF3dAvkO0WPS2RZIQ42w
 5aHc9nMKkM0BqaJS3UbhIB3GApR/HE6Ts1xwdCB/6dEB7QowF04pqWUUkRO4axMpeVpEJuTwQcnLlw
 YqJwi+4HvRJ4YXUSQCn7vrqNlMRT/Oe3Ity5QBxhGFBVokz7fESJw3v8t27Q==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-Rspamd-Queue-Id: 1655A4BD1BB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,outlook.com,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-292623-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,msgid.link:url,linaro.org:email,linaro.org:dkim,linaro.org:mid]

Add support for the SG Micro SGM3804 Single Inductor Dual Output
Buck/Boost Converter used to power LCD panels a provide positive
and negative power rails with configurable voltage and active
discharge function for each output.

The SGM3804 is powered by the enable GPIO pins inputs and only
supports I2C write messages. 
In order to add flexibility and simplify the driver, the
regmap cache is enabled and populated with default values
since we can't write registers when the 2 GPIOs are down.

This regulator is used to provide vsn and vsn power to the
Ayaneo Pocket S2 dual-DSI LCD panel.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v3:
- Change header in c++ comment block
- Switch to regcache dirty/only instead of custom handling
- Use GPIO_ASIS to avoid turning off regulator on boot
- Use gpio cansleep
- Add my MODULE_AUTHOR and reorder the signoff
- Link to v2: https://patch.msgid.link/20260430-topic-sm8650-ayaneo-pocket-s2-sgm3804-v2-0-76108c65a560@linaro.org

Changes in v2:
- Fixed bindings subject and gpios minItems
- Fixed regulator signed-off order
- Added second MODULE_AUTHOR entry
- Added more comments on how regmap cache is configured to work
- Link to v1: https://patch.msgid.link/20260428-topic-sm8650-ayaneo-pocket-s2-sgm3804-v1-0-1d8dc7620256@linaro.org

---
KancyJoe (1):
      regulator: add SGM3804 Dual Output driver

Neil Armstrong (1):
      regulator: dt-bindings: document the SGM3804 Dual Output regulator

 .../bindings/regulator/sgmicro,sgm3804.yaml        |  77 ++++++
 drivers/regulator/Kconfig                          |   7 +
 drivers/regulator/Makefile                         |   1 +
 drivers/regulator/sgm3804-regulator.c              | 297 +++++++++++++++++++++
 4 files changed, 382 insertions(+)
---
base-commit: 39704f00f747aba3144289870b5fd8ac230a9aaf
change-id: 20260428-topic-sm8650-ayaneo-pocket-s2-sgm3804-8764fbb72eb7

Best regards,
--  
Neil Armstrong <neil.armstrong@linaro.org>


