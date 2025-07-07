Return-Path: <devicetree+bounces-193616-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F37EAFB075
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 11:57:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8A5A617719D
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 09:57:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3ED212951D3;
	Mon,  7 Jul 2025 09:57:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="CkzlkaDS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BA07292B51
	for <devicetree@vger.kernel.org>; Mon,  7 Jul 2025 09:57:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751882226; cv=none; b=OC1cht6LntG5J+OujX7qD72/wTz/pN4jGSoOgHjGbRL56EQJ9j/ycW+Z1OdYdDutjsOP8sNyO7i9z75414FWCT3HVK8vvkVRuwdEwVRSlL41HGUe8xGmnlcLeNeIGB/+QyxWJBSVLZg9xik6eXWWE5Q9zycZoLnOkx7c2gNL34g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751882226; c=relaxed/simple;
	bh=58ZfGXq5HliUApxwu0tCwXNooa/9w1FGf0esQaJhPOU=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=c8VseVU8x/GKNRzHrbqSKNLJrlMn1K1hMiZWGFJQNHCKUAGTdhgMz09C8ziLQClS+mzrB/TymCYCjyza9vQfywZaI/B+torAPULP+PLbdWhRGzj91i1CRkokaSStyurd+s0uQH9nj0DNT9tGdCajyMmWC0zovFqcFWQDdmGmuYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=CkzlkaDS; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-606b58241c9so4560639a12.3
        for <devicetree@vger.kernel.org>; Mon, 07 Jul 2025 02:57:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1751882222; x=1752487022; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ODEVf5zXYu0yH/oCoUjJ1b0O3E3Qx4wf8X/BiLQdvvE=;
        b=CkzlkaDSHWgFPkzUuWbqSWxfY28RE+ODAcJInkuPJZo2qybcc0SXwHZ2NwzlxSNFcY
         uC+IoBh88Ke2MooK3HDhp+X/1ueS5ttavd7CaGax2ma+6pB3bWNMg9xrk0vlLFym0lam
         gZQJfe5kS9dBqabcvsO1UrUwxJcV5DSmLBrQOhHtL7l5mqZIOC5y/JEQEISzR/B72m0+
         tyI6aTRKkZ4XRmeuaVVOpzDJzzb0bzywjYABOm66RtlJo5ivlXyd1CH9IOL9Uqy+cD7Y
         1McIoHK7y17X6d0SGtOSLJ3Sdk1fiSlUYDliVdCQjq6U4GLuy3yMB/qx+DJvNBoSKgQE
         FDeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751882222; x=1752487022;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ODEVf5zXYu0yH/oCoUjJ1b0O3E3Qx4wf8X/BiLQdvvE=;
        b=WzbGKGaSWOh5ZfKtUR14yWP7/aIhrjAfCDvQu1R7wicaboOH4B6SjbcQJLRr9emela
         0t6lncIljICQduyujQP7524WXTxewLyRc41U+S/JNXt8l0hiHsOz4PffNoS/l3uUI03T
         1Lp9Z1z7BGjqfGroSuKCDJLFhQ+dsJDz1PyeP8sFss2TVDSIp80QfTp1lD/n1pL232+V
         23JAWVbRJGUjFdXux1ZgdIKakRAoKVYS6h4uTXq/Pa1+wEBxYxIVOkzRC3o/c64s8DAh
         lKSZn5Nymd6+WqPe5vL1PrhPYPUDV8MwL6LhgCwjBZj3wkqciFSntcO+/CAle9u+qCxw
         NmlQ==
X-Forwarded-Encrypted: i=1; AJvYcCWw7IDfgjLJ8syHOJA/Uffmw2RjjQMbI1nVKYCAPtGV7idiF1HEDuQojaOXnHzsPCOVD12T4Id0kOCn@vger.kernel.org
X-Gm-Message-State: AOJu0YwfPL0IQrkLm4j8/Y10nOz82f0LfL4QGVm/+bA61jkBPwcGJ7XE
	+Gjmvp8Od44fLkr8IZZhhVIxlqq63KDm5fKWUCQ5E4O2eCUi0KHR5DFiV7/JgAmTlGM=
X-Gm-Gg: ASbGncvyFjYnFKldhmXlbo3Dm9zmXjWc18JAF9JOP8EpiO6NVuHNfq3AYGn/5nh0ik0
	SO7BojhrL4Jiwbnbom7dJdGrCJ9DuCl8DGFWmR47yaFfPv8qauPw+1/eR0vDfkLJy/iY/dHrInU
	yK4YovR19B1h4QFZRdW9B47bLemlwNfbei6Vh0OyuzMM+8b3u0IPJo36axYmye3ZKJ9opeb6iEL
	zzw4V9n6Rl6UXCORwaHgCbSV1LxBnUYGcCLWAqu2lx9Fd3miZFmGwN/RzjoqE0dkT2zathN13+0
	OvaUMX4iaiD4Evf3gdbDu2U1AZdYwEMGQ+oLmmq6LXg/GdLUsLzUuXiY6DqYHXXMhu/EUVHYerR
	NFyuOqbYlITiKFBmsXds+tG4ahb5KUI9t0co/H1i9fWU=
X-Google-Smtp-Source: AGHT+IGZ95rMuA2Wn1IQaIyHUgRgWlbpUIuXzYBujf+9D//LAmIETPS+IQZyFCmoipIJ+gohRL4NQg==
X-Received: by 2002:a05:6402:d0d:b0:60c:4a96:423a with SMTP id 4fb4d7f45d1cf-60fd6d504e4mr9543330a12.18.1751882222225;
        Mon, 07 Jul 2025 02:57:02 -0700 (PDT)
Received: from otso.local (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60fca6641fbsm5235815a12.3.2025.07.07.02.57.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jul 2025 02:57:01 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH v2 0/4] Add RPMh and TCSR clock support for Milos (SM7635)
Date: Mon, 07 Jul 2025 11:56:36 +0200
Message-Id: <20250707-sm7635-clocks-misc-v2-0-b49f19055768@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANWZa2gC/22NQQ6CMBBFr0Jm7ZjSUhRX3sOwqGUqE4WSjiEaw
 t2tJO5cvpf89xcQSkwCp2KBRDMLxzGD3hXgezfeCLnLDFppq2qtUIZDbSz6R/R3wYHFowrGNq4
 7GkUO8nBKFPi1RS9t5p7lGdN7+5jLr/3l7L/cXKLCygZydWU701zPwXGa+jjS3scB2nVdP8y4T
 yq4AAAA
X-Change-ID: 20250620-sm7635-clocks-misc-0f359ad830ea
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751882221; l=1169;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=58ZfGXq5HliUApxwu0tCwXNooa/9w1FGf0esQaJhPOU=;
 b=+qWmgG+A7sZEea6VSnoAqFep+mSdABlWvwutydJ/nj2l3sV3wTqA8VZ4NK8OmD1XSu47kkMKg
 b14o+/g1z3cAQoJJvs75BQVX+Exk4IdHgAOUqAYt2d15JahfmKekkk8
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add support in the RPMh and TCSR clock drivers for the Milos SoC.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Changes in v2:
- Rebrand SM7635 to Milos as requested: https://lore.kernel.org/linux-arm-msm/aGMI1Zv6D+K+vWZL@hu-bjorande-lv.qualcomm.com/
- Pick up tags from Konrad
- Link to v1: https://lore.kernel.org/r/20250625-sm7635-clocks-misc-v1-0-45fea645d39b@fairphone.com

---
Luca Weiss (4):
      dt-bindings: clock: qcom: Document the Milos RPMH Clock Controller
      clk: qcom: rpmh: Add support for RPMH clocks on Milos
      dt-bindings: clock: qcom: document the Milos TCSR Clock Controller
      clk: qcom: tcsrcc-sm8650: Add support for Milos SoC

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


