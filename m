Return-Path: <devicetree+bounces-264185-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YVFhAaCTimlzMAAAu9opvQ
	(envelope-from <devicetree+bounces-264185-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 03:10:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F0C611627A
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 03:10:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 05AD0301A380
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 02:10:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA3DA2C1589;
	Tue, 10 Feb 2026 02:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XlKHJ73C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com [209.85.222.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202A02C08BB
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 02:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770689435; cv=none; b=RmAXsMKaZuGD+8vl3CftAfED3iFo0Yc2vnawrltl7aiYrg4YXhHAUzBNkXJqmQejzw5AJDcwFxaIJMMMnha7LhCj126akmUDMYGXVzyIvXvwbHPJEHqvygGzY8sPk/Kqfb4cQn9QDfcsnGemYC6E2zrspIVjcbXndqiTzxL+0yM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770689435; c=relaxed/simple;
	bh=/ICsutzuX+LZ7m9I9aGGUYOr30MrEuyQKRWLfJGcBKY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=hBv1/1Auu+jGvZiU5bmnNqxPgAZEzk9avfc9BnAf80ZwO2fLFIh0w8ikljjxgAqCWiTjGWYVwjm4KO2pC+7TV+Aa/hKjddzHPAFDenqA6L2M8eCOD/tf76PhJpnFH40k4zYUaVcrvOCYv/LkO2DI/UwACdBHqRbRn80WgClvPqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XlKHJ73C; arc=none smtp.client-ip=209.85.222.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f195.google.com with SMTP id af79cd13be357-8c711959442so496584785a.0
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 18:10:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770689433; x=1771294233; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KSA2DfHeEWFn2IlLoxdyjrJ3c05oOywysXab7NEt2VI=;
        b=XlKHJ73CP4vdolQ9yW1Fn8hGpe3X/rRPl/BWaDyw6QvOWjzPSiUmHaHnCndZsQ50cY
         10YCyvW7Ms4JBzcUQaqXwFC4xLuWYQlEUM2tsPpPobI0C9kK6mhSok8kvrmkW79H347g
         LSrhT+KmZoRdIcsp9DUDnVWQEzGWROxdQmPw/j9Ar7Ej3tLfN28v21PpdUnGcGDv1XXy
         ubw+XDDtiDoKwE87nWpbNnD9SgnrzHnucsuoD7+5edKsjeic2eN8QPgvSmTHpfpOepXF
         ldmZgjXPMuytafAWYyTeWco+1gZHA/If698UR0Y4WXlRgLqKlhqpM6LMZcYnqRYVS1w5
         2F0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770689433; x=1771294233;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KSA2DfHeEWFn2IlLoxdyjrJ3c05oOywysXab7NEt2VI=;
        b=dJJqWXtlrufSiAawBYsJwtA17ELPVKWOY7BylLjxj+fHl0CxGR+jGf03CDNk7lpbJF
         nMyT4UE/5yPRz2GYecwmu/kbMKZ5bT8OuFOb5q5QGRb4wKATWCEWglGnY4p9M2LxD8sB
         jO1CPBkhRvI/2gxJTXrZUzOcrp8ASLxHcTuNfzbdlUiEdNWvuLy9Gmke63PYFogWGPFc
         u7eVZYlCj8a8iqP4M+py21Lu7WcVxPLq4MiDX6o1UyJilaw0UQ5w3Mvvjg0xZ/SZx/Gt
         SXfyK/DgLqLXg6EP5oFOwFkbM0dGypZSUZIEZQjYH706RT1tUi5GOcPaoQLgJFoGsn4b
         WDtg==
X-Forwarded-Encrypted: i=1; AJvYcCWGDHM9qADu75qBquBiO2ZpuPi+OldjJk0ij3HAAXgE4L0RPyAKzGeZCYLNv9HvCBszZW/IynrO9O7M@vger.kernel.org
X-Gm-Message-State: AOJu0Yxp2usrBidlf+gq6xbtgu9vbOf+HX2Gce9Em1sh719HLZnsWR4s
	0+/ffMZlOPBBdetZfCCHflIvGrbY7BOUYZzkjw3KaC2oW3M0OXAWskCE
X-Gm-Gg: AZuq6aLMX84m+2MxSSluuK6yIhZB1iTWTPIdueEUUaMxyeHpImPz/8A2JhX7Z7HyVbj
	jRC6ZH6PQj0C92xlL85Ed4+H70zNhqO7xWYATGYGmYtgG2qMO0D8Es+BtFu+3XA6BKx0ugwS8AZ
	AU8zo3VoxKkFI9rM4cddA3un9GURuxO5mwq/wJZien/iyhND7Fio06d7Pj8ySeVVJSxVoSoA9LZ
	OYruYOVwJAYTG6+h84ypKrfkZwGM+XWKL6ySFbL7wYmwqdor+CLysmsu7ooKYHx42EQDD+V04cW
	ch7rmHX8ll0JgNDXS/zDXPYoHCh28zRG/qwQMsfZp1s/n2oyAEhktSOEqSVy/8Vv+XS05HuJfQ1
	vydhR0+bQihHo3DkJDOSfsQXNTzbGGDORNFr3S6yVDX/nrRhwrDadsIaTLDsAeIusO441018ls7
	S9zavod8HdocjnGaUyD1G/A0+tM23EmS3VCjHUHNz/0w3NOetYsTTKs7x449C1ZouwK0HSjgemu
	ns=
X-Received: by 2002:a05:620a:450e:b0:8bb:a037:fd90 with SMTP id af79cd13be357-8cb1eefbc2fmr108292385a.12.1770689433095;
        Mon, 09 Feb 2026 18:10:33 -0800 (PST)
Received: from localhost (bras-base-toroon21-grc-75-184-144-58-243.dsl.bell.ca. [184.144.58.243])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8caf9a1575asm1009087385a.32.2026.02.09.18.10.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 18:10:32 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Linus Walleij <linusw@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH 0/3] SDM670 LPASS LPI pin controller support
Date: Mon,  9 Feb 2026 21:11:06 -0500
Message-ID: <20260210021109.11906-1-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-264185-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 9F0C611627A
X-Rspamd-Action: no action

This adds support for the LPASS LPI pin controller on SDM670, which
controls some audio pins (e.g. TDM or PDM busses). The ADSP patches are
not sent yet.

Richard Acayan (3):
  dt-bindings: pinctrl: qcom: Add SDM670 LPI pinctrl
  pinctrl: qcom: add sdm670 lpi tlmm
  arm64: dts: qcom: sdm670: add lpi pinctrl

 .../qcom,sdm670-lpass-lpi-pinctrl.yaml        |  81 ++++++++
 arch/arm64/boot/dts/qcom/sdm670.dtsi          |  74 ++++++++
 drivers/pinctrl/qcom/Kconfig                  |  10 +
 drivers/pinctrl/qcom/Makefile                 |   1 +
 .../pinctrl/qcom/pinctrl-sdm670-lpass-lpi.c   | 174 ++++++++++++++++++
 5 files changed, 340 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,sdm670-lpass-lpi-pinctrl.yaml
 create mode 100644 drivers/pinctrl/qcom/pinctrl-sdm670-lpass-lpi.c

-- 
2.53.0


