Return-Path: <devicetree+bounces-51715-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C45988801BF
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 17:16:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7F6C2284493
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 16:16:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5AB484FA0;
	Tue, 19 Mar 2024 16:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mM19I7B0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 978C783CDD
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 16:13:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710864834; cv=none; b=MH9Wbbg3P8Qp/HtwDVEgYLJgTrCP0l0ORccuQo5kdgw9u/N1VkLD1n1v+jKqsDPCGt9YXfpgllbg8XFWxc4vTpzWkWpJOHrwhhI2myw4G4R00r2v63vvzqMUURXP9WVN3Bw/8oz1R5H5R5qO4f9i0tlt6ySK8eqb9o/QV3cFZB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710864834; c=relaxed/simple;
	bh=u1ZVG1vb251umGVVGSjsqNgaJ0s0mxnhyWZRF2dWthk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YnraDbVIASO4edeanIOpqVyMlLFKojoq65QE8B0K1ya4YYtF0HgFRQbTngKSUnQSHsRLgVIgVviEqPiH5zPKuIzWex85E3ZlnhOcbHrukZDyYxXPQ+tW7EDvhZnsFHVSp0eBMBa0K+T+9wfR/0AmepBwRs02pOk+ilgwAGHSsDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mM19I7B0; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-513c8b72b24so6462798e87.3
        for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 09:13:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710864831; x=1711469631; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YSt/QwsSNK6R88wyvHQPMXYPOqcm9u8wO8J+pd+6N3Y=;
        b=mM19I7B0q0hXTIUsgFerSzUk9fQPB4mC1XSQ1NqhGZgPHDzOToDi2/Zo8hq78KFkn0
         6UyZPg2kgEfHYuvXm5fhpD9FWTVM4a4urljEB0kBq+NxsQy9cyvSJHjfzX0qau1NAlbi
         BAoJmpVCAZ6TVAyREkaFy2NtwDxbsdInQoeV8qWYx0vOyGMrh7AdeM8f8Fp21WuYyiYU
         eAtBjZvOxPBQF4ztHvUJgjdG4kQ5z0uRzRaAamjCm5Fi6/0+pP8UGN3WGBo5fgMplONj
         p6LBtaJ6TbXcwJOynXmKXemmtqEj/xyY84ufgenN8S+O9+s1TzGC9SfjlmmUn18IEw8Q
         ibAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710864831; x=1711469631;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YSt/QwsSNK6R88wyvHQPMXYPOqcm9u8wO8J+pd+6N3Y=;
        b=a8BrgZnZ7sBzLSKolChl2j5NkBt9USFf/CQd4IKsn1J+LQc937OJ0BWANDUzPzgN70
         BMFqS03tkQpOGeOqNFJQyxDzka56RW5Pw/2dRJNd6uVnsH/xaJYAad84CGm4GXDC/Vru
         DMJFUL0p9TnbPazp5PIeOZtByWA0wc0vSnair9tEKRu4p5Yw0HIYB7+BLz5mmOaJXnkX
         VQ8jvVpWCtnSIcmlpGV8QwrIE8vLvLnPtXHuTAMFVqNkYzjNL3Y3jlPnnhFqxjgHRp+Z
         YAv82jv3/bIiCjpSflRT+7gDTjX1mFjBspknXSm/LqfH9syumgMgsPvgMzlyKIIh+D5B
         006w==
X-Forwarded-Encrypted: i=1; AJvYcCVqsDEgLaU++qwk38nSdEetV0MmHkEnidgFuzu1GCWcdjFT6/czDPSVEBeYFD1PnZkneAFFeyLo4B12UJxpd/Y1UUWkzbGB5OnS+A==
X-Gm-Message-State: AOJu0YzyXtZdzIZnZ90iaa72rD9aAdpWGltIN/Uu9jOl+3iNjJtJGi+Q
	Tqql2dBSnmXJcWKJZU1c1woTOcbUaS4enbO9MoIotp87TGRhWMq+0Fjdazhvle+T+BS9M1OW2z3
	BFAc=
X-Google-Smtp-Source: AGHT+IF+gHowUPvuwqfFEqeYtKZsfqBiTFk0t57xPZBp0c4tjgfIDIPrN5OVTWWxzpe9nwtqlz1ErA==
X-Received: by 2002:ac2:5e3a:0:b0:513:de14:b66b with SMTP id o26-20020ac25e3a000000b00513de14b66bmr1955439lfg.24.1710864830880;
        Tue, 19 Mar 2024 09:13:50 -0700 (PDT)
Received: from [127.0.1.1] (netpanel-87-246-222-29.pol.akademiki.lublin.pl. [87.246.222.29])
        by smtp.gmail.com with ESMTPSA id dx9-20020a0565122c0900b00513ee207982sm607686lfb.198.2024.03.19.09.13.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Mar 2024 09:13:50 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Tue, 19 Mar 2024 17:13:42 +0100
Subject: [PATCH 12/31] arm64: dts: qcom: pmx75: Remove thermal zone polling
 delays
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240319-topic-msm-polling-cleanup-v1-12-e0aee1dbcd78@linaro.org>
References: <20240319-topic-msm-polling-cleanup-v1-0-e0aee1dbcd78@linaro.org>
In-Reply-To: <20240319-topic-msm-polling-cleanup-v1-0-e0aee1dbcd78@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.13-dev-0438c

All of the thermal zone suppliers are interrupt-driven, remove the
bogus and unnecessary polling that only wastes CPU time.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/pmx75.dtsi | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/pmx75.dtsi b/arch/arm64/boot/dts/qcom/pmx75.dtsi
index 373e45f63dff..84ea94e3b394 100644
--- a/arch/arm64/boot/dts/qcom/pmx75.dtsi
+++ b/arch/arm64/boot/dts/qcom/pmx75.dtsi
@@ -9,9 +9,6 @@
 / {
 	thermal-zones {
 		pmx75-thermal {
-			polling-delay-passive = <100>;
-			polling-delay = <0>;
-
 			thermal-sensors = <&pmx75_temp_alarm>;
 
 			trips {

-- 
2.40.1


