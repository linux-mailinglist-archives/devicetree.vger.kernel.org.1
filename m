Return-Path: <devicetree+bounces-137398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1359FA08E18
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 11:36:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 071DD1695DA
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 10:36:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C70CE20B207;
	Fri, 10 Jan 2025 10:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bFHCi1is"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D88A120A5E8
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 10:36:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736505382; cv=none; b=eVTbXa9uuZjTjemXSlFaroDMlnGsL1dGEhJ8XodwHIhMLOXyIv+bZs9t+mF9qhLy2lQT1f2cI8Ku8jz/AB8aT7HHQfTkKoccqWQ+kT1z97KqQ7QqKzaQLRfsbw7rzjbyoNPQwWNfHscqTDuokyIpDSHH5Pjw7gqEzOcv9Z1UJX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736505382; c=relaxed/simple;
	bh=c7+vcsTPYllQIUGiRzsKcKLFWoAy4SYQC64rpcf8a00=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=ESUi1KPAPJgqDYsp5bXkyHia9OWSdbtzAntTotW++CIitizHF0TaW7t/xPgySO81B0+vg03rq5IJ/tM3ESyX67oFACdD5g5jODA5EGZxnxjRehH6kpid7ld7mTRl81sbZ6T1SbQ1f4LUJrWkudoe5T5UXuMKDfm5Plq0NqSd9M4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bFHCi1is; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-43623f0c574so14248365e9.2
        for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 02:36:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736505378; x=1737110178; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3Y0BXHAAPshQws/LJx60LVwGPmYfrXUNKlTm1qn+ElY=;
        b=bFHCi1is/WEcrB61A8mXTU9bkmSlHYIJMPMNZfx3GSMIuurPJwS2JMy+Wt54CkdF6X
         QL+BsRCqBqi5Dx9VzgGyxccueWftx0NGwFpimzPbSOXoiiVnDWVlzDSYRFfEYBEboaEr
         sY2Z8wQI1J/wQV6spiEZ/vumQL/sX8UcdU2F6iFlZtmpgtM43Hka1Rb9kSiXoSf2WVpw
         O9k9sDlZbvmz5xdUNfJMg0c7uGukF+eJkrLq4F4zOkjq1sUeEO8eyUa4F1OrW3GgwPTO
         R/2AGJNZVdAnpEnDtdRjI4IFJhBPRYmCKSwrH+MbO0xN8RPDWTsz0ic9y2EtUbMVmmiu
         vOyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736505378; x=1737110178;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3Y0BXHAAPshQws/LJx60LVwGPmYfrXUNKlTm1qn+ElY=;
        b=OXV5+MkwmYcNihI/+8f9a/VdjJ1WVxtBaMANwYIp8D01Inu2rbjn7taG/00jjKp5iP
         01u0UKZtCLRoQolbrSvExyArJJQy3p1C0NiIYlwjHTyXqFBZoRSzuuEUQGJoTouo/cxe
         ExngQE7Gx6aQQg/hqwD1J5/tB1Jz3CzzSxwi8rUUYrAv9DPpTUCgKL7Xb+bC3osRm6Xy
         JGHB0K17h0ux6FM6akGdRQo0ZOdALjUKT5p7LWzwVOsnn/kRFZSjwnDBbhZ3VfPpBN/k
         thyTKo4PkTiVCevbyWqs4CFjMzmtBEkRSt8ToMQnYF4p5z873m2x3ySgJ+ZdwYD3vFkV
         phbg==
X-Forwarded-Encrypted: i=1; AJvYcCUmTAoX0q9lrroTRAfFd72JCwZmecrTwVUjWUZBj97WyiStrH+mJbbXRymrxqpp6NjLsuZBbdMH4+fs@vger.kernel.org
X-Gm-Message-State: AOJu0YyeqV3Cgx8sSFMfkIybi3svYlcPh8Xq8KXlLvfrnn3C0zenZiJv
	THBhxhQpXm4PafyRTpw8qN0vHayn/dTRXoNBuqA+RGiff5bM/Xh4Eblwy6/17birgXA6imAKnXc
	T
X-Gm-Gg: ASbGnctl++5NbmqPU0n5eg3gvIpHuTcTu0OXAyzCbu/OkZbCBa3z0RnOT12td1ZsB97
	vWaKNFK7d/s8dd66XGQ6rTWZ9aRuRW8klvx5Gqjl9M5xnfceELXdO4iacJtA6EukmYZgxKtA7ge
	t+whomjkFiw1rT/dIZfVOxtzrPnrPr2SwrEiHhNsyQPHVNXFY/A83KD2eTa/JyXHfxYLM5DG2Oq
	bobexUNh2Ja+STNoYPE9Qk4OnmIiJ0Y6ZYrT9VF7Qhijxrr4qE9NkO4S9MRuO6EdP3fzq8O3ijM
	Tw==
X-Google-Smtp-Source: AGHT+IG4GCwLQDeOn74wIO9+fAMcuMItLAOjMbXsvhH1X12OsoMZ1Y1+6KM8YmJddlOJ/78JEy0t+g==
X-Received: by 2002:a05:6000:4102:b0:38a:8b0a:78a6 with SMTP id ffacd0b85a97d-38a8b0a7a2fmr5240809f8f.41.1736505378096;
        Fri, 10 Jan 2025 02:36:18 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436e9df958dsm47906125e9.17.2025.01.10.02.36.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jan 2025 02:36:17 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v2 0/2] arm64: dts: qcom: sm8650: rework CPU & GPU thermal
 zones
Date: Fri, 10 Jan 2025 11:36:13 +0100
Message-Id: <20250110-topic-sm8650-thermal-cpu-idle-v2-0-5787ad79abbb@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAB34gGcC/42NQQ6CMBBFr0Jm7ZgOigFX3sOwaNoBJgFKpkg0p
 He3cgKX7+Xn/R0iq3CEe7GD8iZRwpyhPBXgBjv3jOIzQ2nKypC54BoWcRin+lYZXAfWyY7ollf
 ejYzE1FBNtrmyh9xYlDt5H/1nm3mQuAb9HHcb/ey/5Y3QYGctdYaInW8eo8xWwzloD21K6QvIE
 asXywAAAA==
X-Change-ID: 20250103-topic-sm8650-thermal-cpu-idle-1e19181a94ed
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2481;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=c7+vcsTPYllQIUGiRzsKcKLFWoAy4SYQC64rpcf8a00=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBngPgfUOTX6PvgQxFEV16OR3sXtw3xg8GRz81CfqXc
 ROXUu7qJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ4D4HwAKCRB33NvayMhJ0RuCD/
 9tbHrT1oJ4H+jNexZeD+Bt3YdA4kldysSYmfvan+9RzLpC92mYcO0OKaX3s3WCa1bdBBnjyrjPXJKX
 r2Ls2uGax5vBRDmWJC1dusU0P88l6hQOKcH0Y9RNFod42oUE9EwwzS6cD/pmueEWabuPgOwUovbHA2
 diA2b9glZIM6G7Jz9gSzPSYVRyL2iY6Zo1ib0d+by+NbcBnpC1zHyRZjXiIhjaDqMCSkR7bYEjenG7
 FTmNPhtzek46RsNKXTTXfA8c3B0D0n8m9eUNAPVh+blw8x/vWiviQ763K7X9KuNufQPGd0GkPYMBb4
 pJwJlH/MBoH5BYqqOjxOnxOB7S+zF2WBibvK2lz2v6J1b+NiS6bx4hgWtT+SH3So7Odg0WV5Omnd4A
 Jvv11au+59PbSRq64vsQZWCLGqypsRwHEeHkBday6ZriuJ7ydwcGBFp4dPQ2PaXH6oMJG846nbHDf1
 1qaKvhoEppa5lyFZCA4lbdFz5YfkSwk1UTpnNlPQYirYqMjj1ORioSgICPH17ElzgJUHdZcLn6MoW8
 /rS03hbKteCt3mSxnQsuB5FkeQVTCQbpeaSYNzdrWXvcyP519XfUmDhNX24ZvenNtr3cRYLua3lseo
 N0Qbsft0FB/MntYjCQp8ISmJiW4UBTjbfbLC2/Wa8FCpqQAvgglYhp8n4yxw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

On the SM8650 platform, the dynamic clock and voltage scaling (DCVS) for
the CPUs and GPU is handled by hardware & firmware using factory and
form-factor determined parameters in order to maximize frequency while
keeping the temperature way below the junction temperature where the SoC
would experience a thermal shutdown if not permanent damages.

On the other side, the High Level Ooperating System (HLOS), like Linux,
is able to adjust the CPU and GPU frequency using the internal SoC
temperature sensors (here tsens) and it's UP/LOW interrupts, but it
effectly does the same work twice in an less effective manner.

Let's take the Hardware & Firmware action in account and design the
thermal zones trip points and cooling devices mapping to use the HLOS
as a safety warant in case the platform experiences a temperature surge
to helpfully avoid a thermal shutdown and handle the scenario gracefully.

On the CPU side, the LMh hardware does the DCVS control loop, so
only keep the critical trip point that would do a software system
reboot as an emergency action to avoid the thermal shutdown.

On the GPU side, the GPU Management Unit (GMU) acts as the DCVS
control loop, but since we can't perform idle injection, let's
also set higher trip points temperatures closer to the junction
and thermal shutdown temperatures to reduce the GPU frequency only
as an emergency action before the thermal shutdown.

Those 2 changes optimizes the thermal management design by avoiding
concurrent thermal management, calculations & avoidable interrupts
by moving the HLOS management to a last resort emergency if the
Hardware & Firmwares fails to avoid a thermal shutdown.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v2:
- Drop idle injection
- only keep critical trip points
- reword commmit msg and cover letter
- Link to v1: https://lore.kernel.org/r/20250103-topic-sm8650-thermal-cpu-idle-v1-0-faa1f011ecd9@linaro.org

---
Neil Armstrong (2):
      arm64: dts: qcom: sm8650: drop cpu thermal passive trip points
      arm64: dts: qcom: sm8650: setup gpu thermal with higher temperatures

 arch/arm64/boot/dts/qcom/sm8650.dtsi | 228 ++++-------------------------------
 1 file changed, 24 insertions(+), 204 deletions(-)
---
base-commit: 8155b4ef3466f0e289e8fcc9e6e62f3f4dceeac2
change-id: 20250103-topic-sm8650-thermal-cpu-idle-1e19181a94ed

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


