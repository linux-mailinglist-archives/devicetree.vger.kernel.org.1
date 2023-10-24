Return-Path: <devicetree+bounces-11357-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A64C87D56CF
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 17:44:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2BA7DB210A0
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 15:44:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71B3B37CAF;
	Tue, 24 Oct 2023 15:44:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ScmlvgG8"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C21537C94
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 15:44:03 +0000 (UTC)
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0CD0C2;
	Tue, 24 Oct 2023 08:44:01 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-507a98517f3so6469148e87.0;
        Tue, 24 Oct 2023 08:44:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698162240; x=1698767040; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XDguG7Xq8V8PryI7yiEtGun4j+D8S+Cn/Pcsi3l4kaQ=;
        b=ScmlvgG8WjWuZIqjwGo2SrROm+A6lJaxGZIiCkCOwMT9X6tDendjHlmRc+F8Ku+w8A
         s7VoeTvy+g3FEL1eEIAwgx0J5m+f10dNc00s5++S+dIXQ1yzvVMv4C6dVC+Iw4HWn6g2
         cmK/PybNKR5C2papewlzt9q7VQCQkEMLA/J/AYoP6oa1n+Wk42FFWspxMkteoPgXUYQG
         zqR3dqhmz2R/cZYnTPyyN2VvZ9OLoI0mhcqjzmvKJuFF2jh8cFc2+QY4x5X/+Rn0zdxb
         cTzF4WPiObiT8IRzd9M1zhCwcJmR5ut4uzK1Wfor7Whjl46mlkbJ6xzmRZc5BFSmbWVH
         BXoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698162240; x=1698767040;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XDguG7Xq8V8PryI7yiEtGun4j+D8S+Cn/Pcsi3l4kaQ=;
        b=tXnGpbiVoPnCbpoQTW6QTjKwo7gcwhveCsXgeQjePSez65q/tiIrEphOQXgsuj5CPR
         mjiL+MPre7Kj1jLXvROd2o4z7rceRSyLAS/uO8d3x3i4eCrVcs2CEql60GSLqdlYA8Cm
         d09fVd0j3p63ARQUpnkufUkwS5+HlhYZhrWtVh8EaMsbXMl+uch1eziX437OpsiX8HNv
         ASCd+2aWWYMQXugAEkOaFgM4modz8lyPzPPiqQxO15xHpusvD5FbK+isybM9+Qs7uTF2
         BeJNbjHS/JtnxWjd80cNnM79IlYJeObdqx1M+QDmERe16aGK85SvBLi2Ruh3dOR9B7HY
         kFCg==
X-Gm-Message-State: AOJu0YwK5oluR0cMyTOwvqmCIFHqshZIi4tHsBLj68+0lztvXwmWGX71
	E0q4EihWNPo0ewyaZ6fbsK4KmehNdk0=
X-Google-Smtp-Source: AGHT+IGVwpFIBJ9q5uqjyKdBRMD61Y9x3mk/b+oNxyJZ+OcldptJiXy6YtOTv00OD5izJKVLpgn2Pw==
X-Received: by 2002:ac2:4142:0:b0:505:98a8:fa39 with SMTP id c2-20020ac24142000000b0050598a8fa39mr8774393lfi.18.1698162240007;
        Tue, 24 Oct 2023 08:44:00 -0700 (PDT)
Received: from debian.lan ([37.45.216.172])
        by smtp.googlemail.com with ESMTPSA id m1-20020ac24ac1000000b0050810b02cffsm102420lfp.22.2023.10.24.08.43.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 08:43:59 -0700 (PDT)
From: Dzmitry Sankouski <dsankouski@gmail.com>
To: 
Cc: Dzmitry Sankouski <dsankouski@gmail.com>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Subject: [PATCH v2 5/6] arm64: dts: qcom: starqltechn: disable crypto
Date: Tue, 24 Oct 2023 18:43:37 +0300
Message-Id: <20231024154338.407191-6-dsankouski@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20231024154338.407191-1-dsankouski@gmail.com>
References: <20231024154338.407191-1-dsankouski@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Disable the crypto block due to it causing an SError in qce_start() on
the starqltechn, which happens upon every boot when cryptomanager tests are
enabled.

Same problem is on Lenovo C630, see
commit 382e3e0eb6a8 ("arm64: dts: qcom: c630: disable crypto due to serror")

Signed-off-by: Dzmitry Sankouski <dsankouski@gmail.com>
Link: https://lore.kernel.org/r/20211105035235.2392-1-steev@kali.org
Cc: Andy Gross <agross@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-msm@vger.kernel.org

---

Changes in v2:
- none

 arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts b/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
index f2bc3c412a2f..0e2c7df2baa7 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
@@ -504,6 +504,11 @@ touchscreen@48 {
 	};
 };
 
+&crypto {
+	/* FIXME: qce_start triggers an SError */
+	status = "disable";
+};
+
 /* Modem/wifi*/
 &mss_pil {
 	status = "okay";
-- 
2.30.2


