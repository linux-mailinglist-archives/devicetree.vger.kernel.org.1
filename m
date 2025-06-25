Return-Path: <devicetree+bounces-189405-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B9881AE7C54
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 11:20:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 837311C21FFC
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 09:20:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EED982DAFD3;
	Wed, 25 Jun 2025 09:14:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="PEAwIMFR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F84D29A30A
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 09:13:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750842840; cv=none; b=OTeHr4mup3iQODOab8EV91XYxlLEHiuANILHCE634/eNj7wtcPQrLR4GPm/j/uDXyuxr9CrxjKBsNWrFfjjjFfp6DRsIPmt1UfJhvL+LsFGNJd5UfOPC+7wsOpLMXl3cy0Fgv9RsU4wKWz7HvWvkRhKNb65od5TucBJEP7hmLm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750842840; c=relaxed/simple;
	bh=PKLM5z8HYLwWW1nVnJ8iYHU35YL96Qjrdd3whIJP6XA=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=uheMIEhl5IwS+dVAIMnGFkzWULoNiUyrLvdH3nFl5zgfqbCRA5IR3Zdum4crEt9iJoKrFJpR1aKMnxnPR1CcvjxIO7XKZgk/z2y42twTcOJwB0TXLi3/s0FmeQmWouJL13IG6QAOZRTCKHBR/5y22r2SuTKb1/mf8VSu4/Fg+Sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=PEAwIMFR; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-addcea380eeso1031458466b.0
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 02:13:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750842836; x=1751447636; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=B1K2B61uVyO/2lRhe5zWoehWYG2JsOIpk6BRaE/2jgA=;
        b=PEAwIMFRguw/FYoVWC7uDAyQCtGDF4QjAXnNP3SjPE5UNdEbBJ6mJiEsGxj6SVYq6+
         dXtZ/D319+jFFkowQx5zZ1tB06PObu11kECZTs8j5t6qG0lzeAYOjXOe1OHcyMhDMPE0
         VsqI3gIM+huqY3s0Y59QtkRU60vrW7DHkMmi14zFuhr91iUU+ED6okFamYip8JjhT0ye
         qU2tdepo6Jy7LQOQnXssEBsni9UHqehmTkxOeqVxOmZN2tKcQLWDqcrC8KMpcviYX3Mu
         t/Sqd6kJ8XpMe/plLQy7Kcx+4C2fudrDmRYXuOCR65vA7Uh//XaJy40zN6NBjnkNNItW
         044Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750842836; x=1751447636;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B1K2B61uVyO/2lRhe5zWoehWYG2JsOIpk6BRaE/2jgA=;
        b=SeOvLGZKOLGRvYq/XPDUKf3JCph0Eay7JjI4Wg8pG4tzWFMAHUT8V7kGlaemtM5mNp
         Btab9/eWqbwbRA1u+Uo5ZI25/C+PYSXEMje7MmwCMNUCexL3nh32jSIRNwwnjUxtOpLA
         LsF0WPGZofepL60NrYjlr638nvegFIjmHOE1qcWhCQvDrtcCYFObSu/2w/HtKcNbV7yK
         uAtLIpeUbAygrWSBZsVAtu8Aa2ljXoFQII5PHDOSjXjUHvDQjjj47nK+QNUWCYCd/50O
         /pMQgKQAgLzJTSh+RZyvf8vy0z0PuzD9ZoM+HfGGTofraK5OCrkOXtwa7EsjpfyVNE2N
         aq8g==
X-Forwarded-Encrypted: i=1; AJvYcCUDgfMoG0L8YM0C76x5PoZFJis3uKtXQSM7jXC3p9TGYGYCvcytpeS6eX4dIoMdnD5feCy3geJNjtB3@vger.kernel.org
X-Gm-Message-State: AOJu0YzEfWfVEr32UbgUeshrDoQUruoKIk4JSrzgnzhn5QYAxnsnWSAH
	xszXdcHj8vAica8qqn2BEndjcbkcvp9xVhUAZX7S/HdazhEoTZtAUGRHClxWtoopP+g=
X-Gm-Gg: ASbGncty/VhO4hZxQrm64zmFDWLg1dI5OQ8uere/oDDHo3cyZK/tyLeuuKoGDSW94K3
	XpWkcfOT6Jyy/BGVpcBIfcGeQamcmrRZ92YBiivm8edRT3uzxUISQJ3AcrS6d3BLmu7k9keB2b8
	/Er4XGYn4Ikyeqp5SjeY2Oo9rjDkH1IH7+0UfBrcHFR5FAe+mxUMwV/BmnUL0UV8OfzwM2YBsQK
	5yCQ9Y+8V/KXXD+3pH+PwZiNqnlx33TJzzhYa1hZYcStigilCB+0WfuMg+SFgkPxYITV+i1x7N2
	9eAh7W4D0Y29VfY74ZJdOtVI+oiNnpx9Mpt9lSLZTpsjk3hTbNjm9/4cVLpicNG62hoHhASoiGC
	v/XVMaPVQxKPCnsc8dWd2WbfRnQVaLVVr
X-Google-Smtp-Source: AGHT+IEnvvlxg5zImm2CwlaXhVKngXovCQ34eglnTXqsp9GxyjoXHSBIovNct13ikzXkLc8ruauPZA==
X-Received: by 2002:a17:906:cada:b0:ae0:1fdf:ea5c with SMTP id a640c23a62f3a-ae0be9bfb7emr229165066b.38.1750842836377;
        Wed, 25 Jun 2025 02:13:56 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae0bf33b108sm106422566b.115.2025.06.25.02.13.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 02:13:55 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH 0/2] Add interconnect driver for SM7635
Date: Wed, 25 Jun 2025 11:13:46 +0200
Message-Id: <20250625-sm7635-icc-v1-0-8b49200416b0@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMq9W2gC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDMyMD3eJcczNjU93M5GTdVBNL01SDVDMzQwNLJaCGgqLUtMwKsGHRsbW
 1AD48/rNcAAAA
X-Change-ID: 20250620-sm7635-icc-e495e0e66109
To: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750842835; l=919;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=PKLM5z8HYLwWW1nVnJ8iYHU35YL96Qjrdd3whIJP6XA=;
 b=HbpQ0Bkh1IyDcOAGxoeQ21uGhUCyUGAG8vC/54JVr5dQDP2OIyzDXnLSG3Io6s8DO5yRhyWDk
 Q55InYHP23+ANw2V2XdGq09yqv8mxDao7fNamFOEsJ17aTeHy4vVYv/
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add documentation and driver for the interconnect on the SM7635 SoC.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Luca Weiss (2):
      dt-bindings: interconnect: document the RPMh Network-On-Chip Interconnect in Qualcomm SM7635 SoC
      interconnect: qcom: Add SM7635 interconnect provider driver

 .../bindings/interconnect/qcom,sm7635-rpmh.yaml    |  136 ++
 drivers/interconnect/qcom/Kconfig                  |    9 +
 drivers/interconnect/qcom/Makefile                 |    2 +
 drivers/interconnect/qcom/sm7635.c                 | 1554 ++++++++++++++++++++
 drivers/interconnect/qcom/sm7635.h                 |  130 ++
 .../dt-bindings/interconnect/qcom,sm7635-rpmh.h    |  141 ++
 6 files changed, 1972 insertions(+)
---
base-commit: 19272b37aa4f83ca52bdf9c16d5d81bdd1354494
change-id: 20250620-sm7635-icc-e495e0e66109

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


