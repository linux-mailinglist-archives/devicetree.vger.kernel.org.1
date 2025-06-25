Return-Path: <devicetree+bounces-189397-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E5677AE7BFF
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 11:17:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5E47C7B12E5
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 09:16:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A969299951;
	Wed, 25 Jun 2025 09:13:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="KncfVZip"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3847029B22F
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 09:13:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750842795; cv=none; b=V/3d3li3afq05jKTp+871pjUv5taHBfwhAhv+KiwZ2UOzgAqf44k2aAZlfZ3VjMk8VjixOdo4GGh34P7tB0a6Q09YVFu5IN0peIVGlinCm3VgiutGmzuy4YT6IVeIOEFsK2dupUYcMEFjuZu94rj0kYlFuAMNv68v0HKIZPT1SQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750842795; c=relaxed/simple;
	bh=rCMJF5cY6TSLNwLvNZ8Vo7vwwOm7NqQ5k6GlrWG6fQ8=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=inKzUe6Ntfqt1/2/89H/sd5hWbAOB+vt9+qZwECExYyheA5zgx94WQXHM09LGlwuTXVmorwBgFW6/GFiGN+L7R0AfUSUmNjMzG6hlHbD+x4B37oVEVYfV2DzDw/aV1h6yc8HZmsECaFVXC1omcp1gdSFVbI6u8IKdWr8hnfVtxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=KncfVZip; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-ae0a0cd709bso143858566b.0
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 02:13:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750842793; x=1751447593; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7JDb40b+XMsoFH3hVYMNJlvkxxFd1SJzzC2buHHkiRA=;
        b=KncfVZipjxwz/ktQpE9/TY5Hr3f0hn1wRaDsM+yFDiiiBdxc3dwpxtZQeBFh4EU/N/
         LQWwf2YHD7zxh6haBXf8sw20o7KIfNc06mXYgfWxJRUL+qTp8OOnA338lTk9aRfSgSqh
         e0vPfOCDBLYosDaBsWXXvVMkh9L9V/K7r4FGI2GazIOlgIvYzgnNqde90xD4QRjiAP/T
         qcWkTBSTv/mdNuftFMJdnMZ9vljTdtaxZV0dgXS8tX8Tv4KIxc5y12t447pjs8Rl3ipJ
         Az2nSuVaQptB/CNB4NfWJMkvlf1xZLvZt3PoWWCAy0DqgWk0fWfdJsVByW+LcUucECLO
         LKbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750842793; x=1751447593;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7JDb40b+XMsoFH3hVYMNJlvkxxFd1SJzzC2buHHkiRA=;
        b=HRdGIGIzrUPsfQlGYodaKUYodhU3hkCQ8jp0dK0zf47J0vaXyWYoXTDp1MVcCcq3JK
         9BAk5c2I2FN/bu7DEg6mgiAk5DbbGmXZBOKRiYLQHOdMbREHyZa8xMnt23XxAPh+eH19
         jmNVhGXQusVO4TqalDVPzI/2Crw6yMewjVDrvLW1xYKsKl12EyNKHCH2AGkeR5dKlhbU
         1/Pgr0g3NfXr5VDTov0yvLplyhmmBU3QJsCJ/5OQDIqDU/L88CEWGvOZwRbKQyXvp0As
         ZjWXv2usFCI/ycZXXqNxHFSf7ttyzV3SI9QK+dBLaxnfV0FvnjxULf8yNFMuKqhOKLQw
         FUIQ==
X-Forwarded-Encrypted: i=1; AJvYcCVgq03j30r+aqtB5xDMI+i5vlQlk5t9p6ZvI/0Mw1K2weuLcINzt4/RqtwpxULoBLbPW+yZEzQFXxwW@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0Q785jB962kuuRcUb3gefTN7vTpJ0uHnKbGBgyi7XceKU1vkh
	r+gPeQyaiU1cKWEU7Bu+T456IE5uklTzhJg5zf0CKf0cn/zvpAkILFYruGQAWh6l+xw=
X-Gm-Gg: ASbGnctIiPlwIrs6lvjxN2mEaihITOnhcyWXVXLXZUa1WWQ6Vq0QAKe0lF7iODRzIDl
	JyUo0KYnUTTLJYKlUHcfpDcDCobpPlrgwjjq2mBx6WE+BwD/+bKPJ0z0vdnijyzrpHFiqIwOg/M
	aSiu+lOwqnKzVnss2hrdaHQzIM0d2MRMo80TM0gCqiHqPUO+BZYj3Wo3HkDhVovzbHA8NX6nOmH
	WFUrh7+AWPZ6q5clxMblOo4B4bEHNY9ue3WkLOUFYJCwGjkS+sPh1y7b4/AQdnuvoFvJCCQPw7A
	Qtsl1xSX0auoOdM+s/aZVNRmw8ZLN5NbtPe2ryhR8FGSSu2hT4fvTwheLHa1nDWcafU60CrBg9y
	GR+PU4j3vL0Mk0o1mvkzk24ljY60ejMX5
X-Google-Smtp-Source: AGHT+IHytBgJSzxPG2M0B0pHjNve8tu+c9ENTWBqtwZam8LKZyOcUSplxme61y1UP3dKjhu+DHVnjw==
X-Received: by 2002:a17:907:7f2a:b0:ae0:a351:6208 with SMTP id a640c23a62f3a-ae0a715cf32mr592579266b.1.1750842792529;
        Wed, 25 Jun 2025 02:13:12 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae0a93f5e96sm272499466b.74.2025.06.25.02.13.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 02:13:12 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH 0/4] Add RPMh and TCSR clock support for SM7635
Date: Wed, 25 Jun 2025 11:12:46 +0200
Message-Id: <20250625-sm7635-clocks-misc-v1-0-45fea645d39b@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAI69W2gC/x3MSQqAMAxA0atI1gZiS52uIi5KjRocaUAE8e4Wl
 2/x/wPKUVihzR6IfInKsScUeQZh9vvEKEMyGDKOSkOoW1Vah2E9wqK4iQak0brGD7Ul9pDCM/I
 o9z/t+vf9ACXX+NhkAAAA
X-Change-ID: 20250620-sm7635-clocks-misc-0f359ad830ea
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750842791; l=897;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=rCMJF5cY6TSLNwLvNZ8Vo7vwwOm7NqQ5k6GlrWG6fQ8=;
 b=i5VJrCDxMfUXV0muX3ixGkMAukjuxYAe5nADAwWzlBfOfZjXRZvdIU+v2u71LqJCEcH5xer6Z
 1vGynEloSFrBpWyZHl9TpByd4VQxjmhqFem6M/nZkbrVKFHnMU71Pdq
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add support in the RPMh and TCSR clock drivers for the SM7635 SoC.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Luca Weiss (4):
      dt-bindings: clock: qcom: Document the SM7635 RPMH Clock Controller
      clk: qcom: rpmh: Add support for RPMH clocks on SM7635
      dt-bindings: clock: qcom: document the SM7635 TCSR Clock Controller
      clk: qcom: tcsrcc-sm8650: Add support for SM7635 SoC

 .../devicetree/bindings/clock/qcom,rpmhcc.yaml     |  1 +
 .../bindings/clock/qcom,sm8550-tcsr.yaml           |  1 +
 drivers/clk/qcom/clk-rpmh.c                        | 26 ++++++++++++++++++++++
 drivers/clk/qcom/tcsrcc-sm8650.c                   |  8 +++++++
 4 files changed, 36 insertions(+)
---
base-commit: 19272b37aa4f83ca52bdf9c16d5d81bdd1354494
change-id: 20250620-sm7635-clocks-misc-0f359ad830ea

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


