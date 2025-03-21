Return-Path: <devicetree+bounces-159710-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 02059A6BD71
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 15:47:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BBE221798C4
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 14:46:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5D101D61A2;
	Fri, 21 Mar 2025 14:45:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="NIhgSJe0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7B5578F44
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 14:45:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742568352; cv=none; b=kwRYC2fMItV3xNeGLfAvhABZVcHfSPzZVkKrPbB3RxsfBjG+jMVgrjlhljg+L2x/B5pJouW69X2fy4wWHE0RJ/5OiMCThIZZYD0fgrlibkTnle2bolFHoHVJ9XYfW2TPejTaClLoHXQoOgJEgH7V2f9o7gFTQjQDtcEzbOs74Vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742568352; c=relaxed/simple;
	bh=0k4WlE/9Tyqofqq6qU4Rq2nzt306TPjVYhaNxs0Bvcs=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=PuKnqzTf8lnmnpLp6Bjw8aApVou0NJ5aRAFEZMmUJhi0gByn83FjsCa/UlkWiomykENvyUdHlQBuKybkEb9hGFajxRBq2YdzBz2LTi5zT/cPT9pCwK1QRlPqV+fiXtFmUmb6iBMHE1WqGTbCaDpaLwUicKCSqckWRt/OmIBLzxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=NIhgSJe0; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-ac25d2b2354so352707966b.1
        for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 07:45:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1742568348; x=1743173148; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UfREiEIegsjqq2j/Wuwqi5NQffLWKjGNHk3ynXc28wY=;
        b=NIhgSJe0xnaf5jKCrMK6BSd/D305UgFcyZWpz2rODjKRvWY/LVKabDP5NufS4q8DQP
         HhMQxKdx9bNlng21gmeUj8ayfmnxRJ6V/SwuDqvE+m5E1CbJdYOmjdVHSaGxVhLDAjsI
         TyDoCfIrLgnJ0PcAD/s5R7gR2GFxwKO4VsaL7AoJLLMy6zwrxN87vBj2jn3NXVHIcRTj
         pUaYOBTQ5JsZWCJSopidjlZR/SrPY1t0HUR+ErwHMgdQB8rhH3Qa49aHflUAwFFTIzwZ
         J5A7CsxZymW8XRsSdBigvmODl52Q5zjwp58hqVLHtlejyLq5rdkJbU5HGIWGgDX/h7+z
         5MYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742568348; x=1743173148;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UfREiEIegsjqq2j/Wuwqi5NQffLWKjGNHk3ynXc28wY=;
        b=JkAIdRtLJOuacgTmh7zDieYKNVg7/+0a1dVDlItRXSV24YgfurA+ZQ68LFDQzPfZPo
         btMjwO6hILU008WYf+47kxXeZjw680z8VmBxjZHHfUnI/wMglat/grMDrVulORe19fyU
         vANe6/4VCGk0JCyF+yVL4oaC0tZ9pcVPkILLsntYdjBUDx8fzaredPDBN9t/TWpFUTM6
         ZF5YZup5h1yjvJ8N4y8VxMXhjG8jkrYqpseGfK11duV/lPpgCyW50oHzZFXRKupdpjUN
         U6rv3qXUrNQyQ53UG4ao6nip9f89aMvwJGAo1iWoYQDG/2DfHftF9dh5S4S6yfrHgo90
         6PMA==
X-Forwarded-Encrypted: i=1; AJvYcCUEaivZWU+ZvHjoJwZ5zQo962rgnXPQ7wL0sSRv4EIbAXLrriP3KwvGhBdNuPi2+X2+XR0INHlxTMFE@vger.kernel.org
X-Gm-Message-State: AOJu0YygY/1K07+7Xa6c3txBu6O5B/hj0tCXSMnn5OUoua5ih9C3E3ND
	C1ccQYHQ2smQFwbwGi/Xv5mgAcB7xCqR2MAqLHYqYxEhM9V7GsIhsq7NAC6SB6E=
X-Gm-Gg: ASbGncswR8FkaqAx1yffEwQ9W0lCi/lHHKP6WTqxI4WEo18lCMLRxBXzgpfgnW9YCsl
	DHDeuE77W4ClMAfuJLqT/2hy4EOjy1Vot/8IMP9twVoz9ZiTgvFVFkDArGbZ7STfH0ghLYdb38n
	6ACene/iz02rq5nddZAZDyElyavQrZyrz+kx/b5RT97LdMTQAjPEfoyIQqS44H9ns4YlbVVg7Li
	rVuKPa8S5mC/w/PAhyuyKafxMQsuhdi6CfM5Vls1y6ircLjrLm0126pi11gweuG2guDNCELENND
	VL0uT76s+ojg2LP2XKAAzk1LMoldbSWq7wdSZgz4R34qZcJc6Fm9r1DYA4DbXSMaC4v0sO48lwY
	Zoz4cb7oGHiJCXaOJJw==
X-Google-Smtp-Source: AGHT+IG5MlM9CgB175VZ3Vc4RH0qB2s7BEDKyYcPQFBlPYs47o+HPbEy2dUQI25i+CYb4c4VAAdkLQ==
X-Received: by 2002:a17:907:ba0c:b0:ac0:6e7d:cd0b with SMTP id a640c23a62f3a-ac3f2268607mr442093266b.34.1742568347928;
        Fri, 21 Mar 2025 07:45:47 -0700 (PDT)
Received: from [100.64.0.4] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3efb648acsm168092466b.98.2025.03.21.07.45.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Mar 2025 07:45:47 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH 0/3] Add video clock controller for SM6350
Date: Fri, 21 Mar 2025 15:44:58 +0100
Message-Id: <20250321-sm6350-videocc-v1-0-c5ce1f1483ee@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGp73WcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDYyND3eJcM2NTA92yzJTU/ORkXbPU5JQky8QkI3NTMyWgpoKi1LTMCrC
 B0bG1tQB8vXnyYAAAAA==
X-Change-ID: 20250321-sm6350-videocc-6ecdb9ab2756
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2

The driver for the SM6350 videocc has been lying around in some branches
of my git tree for a long time, let's upstream it. It doesn't get any
better by letting it age!

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Konrad Dybcio (2):
      dt-bindings: clock: add SM6350 QCOM video clock bindings
      clk: qcom: Add video clock controller driver for SM6350

Luca Weiss (1):
      arm64: dts: qcom: sm6350: Add video clock controller

 .../devicetree/bindings/clock/qcom,videocc.yaml    |  20 ++
 arch/arm64/boot/dts/qcom/sm6350.dtsi               |  14 +
 drivers/clk/qcom/Kconfig                           |   9 +
 drivers/clk/qcom/Makefile                          |   1 +
 drivers/clk/qcom/videocc-sm6350.c                  | 355 +++++++++++++++++++++
 include/dt-bindings/clock/qcom,sm6350-videocc.h    |  27 ++
 6 files changed, 426 insertions(+)
---
base-commit: 73b8c1dbc2508188e383023080ce6a582ff5f279
change-id: 20250321-sm6350-videocc-6ecdb9ab2756

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


