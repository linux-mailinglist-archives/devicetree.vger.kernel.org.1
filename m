Return-Path: <devicetree+bounces-144666-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AB281A2ECDD
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 13:52:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0F8AA18887E1
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 12:52:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 796D42236FF;
	Mon, 10 Feb 2025 12:52:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cKdY4cam"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9885A222577
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 12:52:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739191927; cv=none; b=uQk+IzG4urf2nYBfhfeJZ3hVXxC1cXJEP0uKd8CaVVphBV07e9o2AndHcLqJsb+UBk+KcIPeaEMS9/MoOWiq7WwFj1S4jWa4Ql4sAUDLngktTyBr+x8Mr8eezaY+qCI/zk3DgxW+vBmbbIQyjPk+dSgZlsxbS+E3/hAxEeNKGlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739191927; c=relaxed/simple;
	bh=vV55kam7n89g+tJ4rn0KN8LW0wJxU903cCYlBxbrzus=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tc5NvTiKNjzfy3sRLODrPl2GpIdwXUdwTr097yyda//XnQiZjRzY9em3zjRMMtOfWxsnyEWq1NQtqppj5r6j4m66TEcew+GCOlg9jJYnaJ8b3oMMleZbsZDLPM+figMj057KNPwL4EtrAF/BSk4ca49KCXMPjp+8FCbJbSs78JI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cKdY4cam; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5de6e26d4e4so2739780a12.1
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 04:52:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739191924; x=1739796724; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zqD1g4YKIN7d8Jic4AmC6WlJ69pwzDTn8w0IL9Ra7Bs=;
        b=cKdY4camDS2OqMDEMCO/C/SYIfgfGgISDn16nz32JNJjbUDmYT1fd43kteB7hjr5Sn
         TrK3vSj519TU1G6n/UqFRj0EOtzJujDPv4O4SM3mbkssE8tTbRuComl9QWM9udMAvLyG
         9arzXHQjZED7DlTkHDt2oCKZ5WDWazv0GmWc02/xQyhfNLypWq4ZOjin1OgpdrIxM5wU
         9qm9//KrbtLp2DpTC7Sqq7Zli0GAPV2rSRyk8eJBKpjFrcWrCC13DbRuJZnTmTJN7+I7
         Vr4ajG5QjaZW5mvK5Qn0E1jxmp5xAiRXjzxaDa4wZvugj0PzJqYqxg4CkD42tj7UpTox
         iJfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739191924; x=1739796724;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zqD1g4YKIN7d8Jic4AmC6WlJ69pwzDTn8w0IL9Ra7Bs=;
        b=LFHMYhSUYgdm+SM79paJBxR7YAV1NOBv/vJyl0/TwNuZgp3gvMLEhLRwN3HCG8t5Y2
         tFwFOKB6MZCmJI/R9LJX3WBB9dNc/unUfBkFWcnC1xHN4leYyLzFXzOBRenpMpLLkZN+
         cKLu3TllCz2KPonmZe+8v+/6RDWtL6lBFbpDfHC5JRyxSIwGtqRLU+DH0sRcDitlMfnp
         d6XXSYQckbXtlhlFDLKE7WY14hTuhdn15hUwDmx0KaUWk9D/56LVHGwyQom5cVIaNk/H
         +srRd0ctCnfCQfFk1ym8Vya72yJnrZfhXrlSgsJT3ZZiyiCtYOpmYSKUi4tmat5Ru5xW
         R/QQ==
X-Forwarded-Encrypted: i=1; AJvYcCUoNVPQ8oL/bNrRF2U/yj6hFD2ahI6/uVqsOsjkgcv1v6rZ8OflzYVY4hqog1MIuSSAkPdY3KXP8Bwq@vger.kernel.org
X-Gm-Message-State: AOJu0YwnJlA6GEwy86AnsERY9UmbCnQnFP7nuCrgCUyfEQ4dA89LJoSS
	yJniiEmDAh3OmKJ/p1FLBEsMUV8Nvo1Rlxx18m8O/jXCnp9Evi+jNT/IZIstlxA=
X-Gm-Gg: ASbGncv3X7Is8iO2GlXRlSMsRCZ2u0Yf/1GAEIgU3VqhD/Q/rHEyw26ngviYFpgIWrT
	25D9xsvQM81OYohFy8lEvja8umtwLdsMiU40LcOVWleJ6WDp6fDnWmXPbw5Wui9QE4/ZOWgcDXq
	iOPlaiGbywPqSSVoj2dHH+nlfNimj+V3HKhb7wgXF5PgqAIJS2twZAAuTNqHbe23rvHxDltsuxM
	fnFEy1qFr6YswCAvwybUcVAMQ2MBjj5Kn88pAEFC2R77/AQgiL1ZmS8p806kWkhHHst5fQSKrXu
	q29ykATM9HKItjujllIbmmbRhajjvrxplO1cyr7E1YIKtLRkC3NDUth9LfEqTn8KQz7drGaOWDg
	=
X-Google-Smtp-Source: AGHT+IEcs4lV823LwIXgoykf1sI1un5zsoFBvpa5yONNWVKm+6SAtdOLZFSfcwD/mDii+zqT48mO9A==
X-Received: by 2002:a17:907:2cc6:b0:ab7:cf4d:9b2d with SMTP id a640c23a62f3a-ab7cf4d9d89mr171928666b.30.1739191923919;
        Mon, 10 Feb 2025 04:52:03 -0800 (PST)
Received: from puffmais.c.googlers.com (30.171.91.34.bc.googleusercontent.com. [34.91.171.30])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab7ceae3a3bsm85819266b.129.2025.02.10.04.52.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 04:52:03 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 10 Feb 2025 12:52:03 +0000
Subject: [PATCH v2 2/3] arm64: dts: exynos: gs101: align poweroff writes
 with downstream
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250210-gs101-renppt-dts-v2-2-fb33fda6fc4b@linaro.org>
References: <20250210-gs101-renppt-dts-v2-0-fb33fda6fc4b@linaro.org>
In-Reply-To: <20250210-gs101-renppt-dts-v2-0-fb33fda6fc4b@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0

For power off, downstream only clears bit 8 and leaves all other bits
untouched, whereas this here ends up setting bit 8 and clearing all
others, due to how sysconf-poweroff parses the DT.

I noticed this discrepancy while debugging some reboot related
differences between up- and downstream and it's useful to align the
behaviour here.

Note: for reboot downstream seems to be incorrectly writing 0x00000002
and not just setting bit 1 (which is the only R/W bit in this
register), so we keep that one as-is here.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index e78dcd506a5c..86741994bb7c 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -1401,7 +1401,8 @@ pmu_system_controller: system-controller@17460000 {
 			poweroff: syscon-poweroff {
 				compatible = "syscon-poweroff";
 				offset = <0x3e9c>; /* PAD_CTRL_PWR_HOLD */
-				mask = <0x100>; /* reset value */
+				mask = <0x00000100>;
+				value = <0x0>;
 			};
 
 			reboot: syscon-reboot {

-- 
2.48.1.502.g6dc24dfdaf-goog


