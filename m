Return-Path: <devicetree+bounces-248301-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F4D6CD0EE6
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 17:41:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 919BE30150E1
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 16:41:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AC663396E0;
	Fri, 19 Dec 2025 16:41:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="zaDPtlaD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com [209.85.218.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0FC33DED3
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 16:41:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766162488; cv=none; b=VtXXoUllM3zb4Ej8+Ob2emmiayzH29aLCJbpAdaoLB8ZZOdxxNCk/NlWpyLRrqbJ51X2h+c6PliHAe6q4yzVPRhcMWZIlO8FDo7C2S/uMczyYJAjpfOfMuHsvXGHCN7T7nKfoUpMeG5hTBpjMkUlQ2Sk8HaHL7Iuc+Iesx0ZKXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766162488; c=relaxed/simple;
	bh=ucfG3/xpPbSz5u5wmkm8abE5HIantGt2GhrnIFQVyic=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=AaJekmyZ4e/Z7VfrenAviDL2J9manVxJiWL5hJJvX9ZgxySOUAMJz9xS+TlCwEUGtXzNQ5IVYlc7mN3AxAojQEeQC+aD/LeEfgY6yGB3sJ7NK1r/YzpXFrqOHLDBZJNaJqi+zkkQN2PReAPX9Dvig8hcw/jqqn6xEF2LjFbatSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=zaDPtlaD; arc=none smtp.client-ip=209.85.218.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f65.google.com with SMTP id a640c23a62f3a-b7a72874af1so352138666b.3
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 08:41:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1766162479; x=1766767279; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=t2kzU44j8jBSDtGQe926o+4fjeshGhfwHjfNhdVR/KY=;
        b=zaDPtlaDLE4j+7b8J028SHtCdDwtkYv8/RF8abcK3g9jXsqzNJN0NqRdJ2cZsR1iMn
         QPRnXN9mlDRIX6o2+vpBPgdt1DrOeEkf8JVN8iFO5HdbXCi6FQCrG03XzrOyc+N629ID
         LmlDMxyrMd1FOL46g51H5MUtTq65Vo2uZxo4SxpDENqzqs2wgcxhPyES6c1xXNNe0aQ6
         F7ZbYLaVNy66c2ne9wIOMMfgrcb2uI3gcVzYSXAqNoLtT1gSsdp3GYPNPhUvvsJ3Ec7N
         rFbG2HQ+blETW/VYRl4HiLIhLWGBrFhMCJY20iax46paOI4s1GVzyHo5mOYZaETqT7E3
         Bg3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766162479; x=1766767279;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t2kzU44j8jBSDtGQe926o+4fjeshGhfwHjfNhdVR/KY=;
        b=VAbOORXf5MarIB4WEfVhRPfjhnUzcnnRcGdnXIqe6ejWOgwU2ZLQM8j9SfLuLBltrr
         J0woUZVvQcn7QI2UaD3kHKHB1BUOgN494Nt87VwBgH5mOa+RmlewFCZnF4VGMa2wR45A
         YNwVPjr4vr/D1RbR9astVz1w3DXosZbv86fQ9hEezrKGkwSz90CZ25bZwgApE7D7QRQb
         4zN5QKr0E6cqWDDbxGXKe35Hpodpal4AK6C4fJiu3ZVjfMUYagX7Q5nOIU/inEwQA5Jq
         a2iZbfT74fv/aaVFDmLHwiyQTH7UzOqc3DwwvJrozVaqi0Nn3UtWtqCI7mWl1WbaWs+J
         zBig==
X-Forwarded-Encrypted: i=1; AJvYcCVIOqIGh48FWYeXrxzMB/N5zmpSr6W0WIyXhWIYzscAZs0F+5PGEyL+Vth8SA6tCk1se1R6EqAJjTZU@vger.kernel.org
X-Gm-Message-State: AOJu0YyLGfzxcaMkJVlvy7rH1Ej7o0cyppDCe+WyxAhM1nSetE4yzjCg
	8ltgCtO5yKqwtbj5VhEcK09K0iFTOnF57vqehNgxjgh/3f4ifgpCXZfocfBX/NeUZHI=
X-Gm-Gg: AY/fxX77Mpyu/ddTzeVgUYbgpR08v6AvbIJgnOtGIDSqo23vKk93okkeXQuTR5ZM6wT
	E0l1HpLwMkTjhKpffXXnRr7MPB8QQWOy7Ij2x786xR8IPNgQMh9pqbtaZI1UlmwPww/rJPKgM6p
	2xl2LacMxSTlGrXAWItwogRs/vSgfUyxyLj4B1RyzrgxqRfsIwBwmFX+0UMyes6odTCTzXyrYhO
	U4F1H6EYfNiFZKkOov2CFUzb6sLZY8JE8OZOJYXIM3/B3H5QvPL5udFDVmP4OczTtaSzzStLOwx
	axu66GC6oMdsLkt8jxdc8G5le9MyUCu79rfbbvNGhb19hNAPwXaJInYfJ9dusIGDux7T6VKuOe/
	J0eewAtutxHmnolnH9tXa88Th+/uxvlquz6sM6/yZ0wc+qwP5FoDg0RkLQ3tTHp6n0vwT/CflMN
	3QK/IrwBy8Yqsi5nK+/012mkGLocLuvWPNIWsJYysYltgp7DZ5J1XKcKYboGt2MNHDGoQ7ejk8D
	/lEgB2XU+T6Z/TPYx7n3COpJ9BKyGMuC0c=
X-Google-Smtp-Source: AGHT+IEaFbfo58dESu/7UUTqBgyeHYsfx7xP4W4fAJTOuAdSjlywqklvueTJX6xzQc9E0FRh5v+ocg==
X-Received: by 2002:a17:906:6a25:b0:b73:9b49:2dc7 with SMTP id a640c23a62f3a-b8037183ebfmr324320966b.52.1766162478678;
        Fri, 19 Dec 2025 08:41:18 -0800 (PST)
Received: from [192.168.178.182] (2001-1c00-3b89-c600-71a4-084f-6409-1447.cable.dynamic.v6.ziggo.nl. [2001:1c00:3b89:c600:71a4:84f:6409:1447])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f4ef1fsm270073866b.64.2025.12.19.08.41.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 08:41:18 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH RFC 0/6] Attempt to bring up display on Milos SoC
Date: Fri, 19 Dec 2025 17:41:06 +0100
Message-Id: <20251219-milos-mdss-v1-0-4537a916bdf9@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACKARWkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDI0NL3dzMnPxi3dyU4mLdtEQDczNjM0tjc3NTJaCGgqLUtMwKsGHRSkF
 uzkqxtbUAXpnMk2EAAAA=
X-Change-ID: 20251219-milos-mdss-fa0763693775
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Rob Clark <robin.clark@oss.qualcomm.com>, 
 Dmitry Baryshkov <lumag@kernel.org>, 
 Abhinav Kumar <abhinav.kumar@linux.dev>, 
 Jessica Zhang <jessica.zhang@oss.qualcomm.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
 devicetree@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766162477; l=3814;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=ucfG3/xpPbSz5u5wmkm8abE5HIantGt2GhrnIFQVyic=;
 b=6kFDJkb27+1S/KM6JtihyCmbtRfH48KsMI4CJJ+vZfiHNxUP/S4L+J3+uHLZNu3O/bEmA1LN6
 5ms4n3cr1YuDx9lAahnXN5ZpgXhIzqSkw4Z5VGf6d3ucTmnay9J+m/s
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Hi all,

This is a very WIP RFC series that attempts to add display support for
Milos, in particular on The Fairphone (Gen. 6) using the SM7635.

I have excluded sending panel driver and dt-bindings to reduce the patch
count, since they should not be relevant for now.

The data in the patches is mostly derived from the downstream msm-6.1
kernel for this SoC, named "volcano" downstream.

https://gerrit-public.fairphone.software/plugins/gitiles/platform/vendor/qcom/proprietary/display-devicetree/+/refs/heads/odm/rc/target/15/fp6/display/volcano-sde-common.dtsi

While I'm fairly sure a good chunk of the data is correct (marked "OK"),
there's still many unknowns (marked "TODO" or similar) that you can
see in the patches.

Unfortunately it doesn't work yet, with the screen staying dark and
these errors appearing in dmesg repeatedly.

[    6.541696] [drm:dpu_encoder_frame_done_timeout:2727] [dpu error]enc33 frame done timeout
[    6.587091] [drm:_dpu_encoder_phys_cmd_wait_for_idle] *ERROR* id:33 pp:2 kickoff timeout 0 cnt 1 koff_cnt 1
[    6.587387] [drm:dpu_encoder_phys_cmd_prepare_for_kickoff] *ERROR* failed wait_for_idle: id:33 ret:-110 pp:2
[    6.589509] [drm:dpu_encoder_helper_hw_reset:1763] [dpu error]enc33 ctl 1 reset failure
[    6.637482] [drm:dpu_encoder_frame_done_timeout:2727] [dpu error]enc33 frame done timeout
[    6.680077] [drm:dpu_encoder_phys_cmd_wait_for_commit_done] *ERROR* failed wait_for_idle: id:33 ret:-110 intf:1
[    6.680356] [drm:dpu_kms_wait_for_commit_done:525] [dpu error]wait for commit done returned -110
[    6.684517] [drm:dpu_encoder_helper_hw_reset:1763] [dpu error]enc33 ctl 1 reset failure
[    6.729507] [drm:dpu_encoder_frame_done_timeout:2727] [dpu error]enc33 frame done timeout

The panel is the BOE BJ631JHM-T71-D900 with a Novatek NT37705 driver IC,
running in command mode (not video mode).

The vsync/TE pin should be configured correctly:

~ # cat /sys/kernel/debug/pinctrl/f100000.pinctrl/pinmux-pins | grep GPIO_129
pin 129 (GPIO_129): device ae94000.dsi.0 function mdp_vsync group gpio129

A full dmesg can be found at https://public.lucaweiss.eu/tmp/milos-mdss-log-2025-12-19.txt

Schematics of the device are also available if somebody wants to take a
look, starting on page 109:
https://www.fairphone.com/wp-content/uploads/2025/08/Fairphone-Gen.-6_-Information-on-how-to-repair-dispose-of-and-recycle-EN-NL-FR-DE.pdf

Please let me know if you have any ideas what could be wrong and how to
fix it. Thanks!

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Luca Weiss (6):
      soc: qcom: ubwc: Add config for Milos
      drm/msm/dsi: add support for DSI-PHY on Milos
      drm/msm: mdss: Add Milos support
      drm/msm/dpu: Add Milos support
      arm64: dts: qcom: milos: Add MDSS
      arm64: dts: qcom: milos-fairphone-fp6: Enable panel

 arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts   |  71 +++++-
 arch/arm64/boot/dts/qcom/milos.dtsi                | 211 ++++++++++++++-
 .../gpu/drm/msm/disp/dpu1/catalog/dpu_10_2_milos.h | 284 +++++++++++++++++++++
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c     |  22 ++
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h     |   1 +
 drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c            |   1 +
 drivers/gpu/drm/msm/dsi/phy/dsi_phy.c              |   2 +
 drivers/gpu/drm/msm/dsi/phy/dsi_phy.h              |   1 +
 drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c          |  24 ++
 drivers/gpu/drm/msm/msm_mdss.c                     |   5 +
 drivers/soc/qcom/ubwc_config.c                     |  12 +
 11 files changed, 627 insertions(+), 7 deletions(-)
---
base-commit: 167013d059d5c4a09d49068408044c7a65a26cee
change-id: 20251219-milos-mdss-fa0763693775

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


