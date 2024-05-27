Return-Path: <devicetree+bounces-69526-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B35438D00C7
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 15:00:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D6A9C1C22F7E
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 13:00:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA91516ABD8;
	Mon, 27 May 2024 12:57:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="NCGdLl2U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF493161322
	for <devicetree@vger.kernel.org>; Mon, 27 May 2024 12:56:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716814621; cv=none; b=lzLGvdh/aK8aIGjo/HbvvZhI3bbX6ZP8L5k3BPC/Yx5eW+9VadRztbOfFS6+xlBqYlfPRBWwikJQKTq7u6axpyvJBlCs1fhygOmVwPBeA8/5OoARUXcAT4f0PRMWIfv7BaaZ10affO43cY13tI7JC1o+tSv7QIIQ6i85CT+PpyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716814621; c=relaxed/simple;
	bh=5HRN0uySTbXzAR0E0YuiCY7MSCjAshlJdQKIwXJNbPw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LWob72r+8f1cxMwfTkspxC7JuzKQUAtuRVt0dBf4HxrnuKmM7JcuHbhNvQbYUPd22Y5LLr3WukFVoM4xwu7kJoN4bkx7skMKLy+vboEa0lhheateqZDWCzFYsXNe5uJgJ0VPSkiADgG1W2ri/8iLS+K/HyrdcwrwFNBq0MsnS/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=NCGdLl2U; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4202959b060so79062705e9.2
        for <devicetree@vger.kernel.org>; Mon, 27 May 2024 05:56:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1716814618; x=1717419418; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QuUzMPXK2TvIeksirOClV3y0gwUsumvq4ceT4dAhqug=;
        b=NCGdLl2UJoMHYOaG/1TMXvvPwgiQjz/4MdexC2uT2Rc7MA4KHy5Afw31jMlVDC2iPv
         ImET8iM186Waaej+zSlfqCSpzljz1fxHUPjzpv04TNdu/k0fcuTXg7KCbDL1tZyfzxCj
         GULMTYrjLC9BrGVwIPR0yYGhtp9gwzHndsMULz3elEyII1MdPWXynnWbphQfiG0b8Pgu
         v3Zj70xgB/oufuGbGtmaG2w9MqFwvVSZwGfwtjnRH0nLJakdDc1igAUujNi1zl+9D0tl
         C96jHzQgR7ucr9RPGZ0kLoH/mWr/iL1coGfVyCR2dWrgZMwWrcA9hLx8hY5N9lFYj4EW
         PZ4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716814618; x=1717419418;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QuUzMPXK2TvIeksirOClV3y0gwUsumvq4ceT4dAhqug=;
        b=p8/fxU0sSgvGIM+OncWT8cqcavfNfoTxjX50ISEv4prjlBQEOyQTjBLtU/SrkN3bKp
         yyp+mKDSpOmfF9rmgYZDFPZliENy8h59g/6ShFinAOMKesoFwg2qdepLel9PzQg3tqEj
         gSZYE79k3Rn0oD36vumqAcW6ptRxA2P15peXvuhOrsorxabjdxKey3EOMxsJCUJYOqrP
         XAZNUSoSDxNHwFjwZ+rbs8b1J0hz9LLw6g+841tZJznJZLIKZ/BDLJap2u8SMEZAkyQ1
         wcGK9G7YnSEiFQaheO1U45hmgJpklzss9lt1L58soYR628eIwxaHryEznlvTXStAsebI
         aieA==
X-Forwarded-Encrypted: i=1; AJvYcCWjvGk10vqbbSbGgeN8o4ZVirhRXLiDdP41dviDuojzjPmYsFjhFgmWnHGWAhAahQxQ4UJOBuxfcL1yVgmMEVsxcgfadHjwd78AZQ==
X-Gm-Message-State: AOJu0YxyvFlM21kGM8FC+54DiAMzSXTy0j6fhwEe/hQSet1liXmQSRjU
	kiG/cynbmHFtZC8YM8tW3eS0Sz8OpGwlA1Ncu43izzuoBcASqh/nLF1JBcZIgTw=
X-Google-Smtp-Source: AGHT+IGJB5ZsSLC2u1Z4q1HAsl72ckalfloa+xFlguKroTcNmO1dLgG5OexQdjx1VxTq9j2GcMXX5w==
X-Received: by 2002:a7b:c40e:0:b0:41f:f447:e874 with SMTP id 5b1f17b1804b1-421089dd42dmr74918735e9.24.1716814618422;
        Mon, 27 May 2024 05:56:58 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:75a:e000:c322:131e:ff9d:ef41])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42100f64f98sm138753635e9.24.2024.05.27.05.56.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 05:56:58 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 27 May 2024 14:55:04 +0200
Subject: [PATCH v10 14/15] arm64: defconfig: enable SHM Bridge support for
 the TZ memory allocator
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240527-shm-bridge-v10-14-ce7afaa58d3a@linaro.org>
References: <20240527-shm-bridge-v10-0-ce7afaa58d3a@linaro.org>
In-Reply-To: <20240527-shm-bridge-v10-0-ce7afaa58d3a@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Robert Marko <robimarko@gmail.com>, 
 Das Srinagesh <quic_gurus@quicinc.com>, 
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
 Maximilian Luz <luzmaximilian@gmail.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Srini Kandagatla <srinivas.kandagatla@linaro.org>, 
 Arnd Bergmann <arnd@arndb.de>, Elliot Berman <quic_eberman@quicinc.com>, 
 Alex Elder <elder@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 kernel@quicinc.com, Andrew Halaney <ahalaney@redhat.com>, 
 Deepti Jaggi <quic_djaggi@quicinc.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=965;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=pRRbSAz9HRVSjdsCtG4IzYxw4K0oD5yM6sEMVlvvnmA=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBmVIMLuwyNGQ6RYhhHrvJ6X9iSxcmQCOdCr4LAp
 I1j4givqlmJAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCZlSDCwAKCRARpy6gFHHX
 cnbbD/0bd46zJvVShSTrtDYMSL9yNZgkFVgUuXfwRQss5ouoEtSYGkygROaw6Tdmkrcs63Fmt78
 sWAgIBODmGUdvwOEP+GIGXgmvD0qCN8dTTh508keQ8h3ittw5ZCcUenR2uL+Ke6Ckiq4Sfki/5J
 LnJNGOKZRlPNwnq8k8A6MprtU8Sp9uw/hg/O2LogGL5EpLRjOnjhPt1NUKrxL9XNrXeOhEnC2MO
 2KG3e+Bi6+2n9bNLbwxRWyeSStIzvneLDqvHiBn4kZU9+3BLt3LpaLMbCcNENZEXVr/GRgNC6xk
 Ch+/ASpi5OVYtzFBORjGyQkrByfJfjJBe/B0VDZdj6sgwWzGMqySARHZc1B8ANHCMDd4XWUDVlQ
 KQ/FgDzCLpWQo/lM+tRIuBELgjEQgfIC5JrIcIkKVyprJwHAm//YE761bcHauSI8reJDYuVt3U9
 BZ4MoC0pMaOW2I5yKoCb9nUMg0XX+59V0fmhaaVaJRs1O+hmEqqsPIUtK/GOT7hhT+zoIoVRMWl
 Q2z/U8JZWbQBXFtfgYsQcnk8L1AxwnAJn4PduNhFNHno/J4c3SxoG2cZTIN/POFJWmDB3HwEAq5
 Mou7KKbGYZKN+tV0AVGXG7ORxzaPwbMs2cR33l+WoyRrbmzKSE45JREbCo9gNVt0KeA3cd6PTy7
 cMcAWUu1Gz6EgQQ==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Enable SHM Bridge support in the Qualcomm TrustZone allocator by default
as even on architectures that don't support it, we automatically fall
back to the generic allocator.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Tested-by: Andrew Halaney <ahalaney@redhat.com> # sc8280xp-lenovo-thinkpad-x13s
Tested-by: Deepti Jaggi <quic_djaggi@quicinc.com> #sa8775p-ride
Reviewed-by: Elliot Berman <quic_eberman@quicinc.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 57a9abe78ee4..8ce4beef2ac4 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -256,6 +256,7 @@ CONFIG_GOOGLE_CBMEM=m
 CONFIG_GOOGLE_COREBOOT_TABLE=m
 CONFIG_EFI_CAPSULE_LOADER=y
 CONFIG_IMX_SCU=y
+CONFIG_QCOM_TZMEM_MODE_SHMBRIDGE=y
 CONFIG_QCOM_QSEECOM=y
 CONFIG_QCOM_QSEECOM_UEFISECAPP=y
 CONFIG_GNSS=m

-- 
2.43.0


