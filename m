Return-Path: <devicetree+bounces-125827-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D97D9DF6B5
	for <lists+devicetree@lfdr.de>; Sun,  1 Dec 2024 18:48:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CF10AB216BE
	for <lists+devicetree@lfdr.de>; Sun,  1 Dec 2024 17:48:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57B6B1D95A1;
	Sun,  1 Dec 2024 17:47:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="gEDtk9Vn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A985C1D90DF
	for <devicetree@vger.kernel.org>; Sun,  1 Dec 2024 17:47:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733075250; cv=none; b=DUtHNG+HOwWM07pyu2eY3dVPFn2VHZJL0AYMCPh/tnUuo38cJq5gK+v3CwBHaU+pfb4u2miKmwlPWjaA1uAqm0FgOmfUzJ20uFSVOT2h4qq5AsGfqsGNwhELrT1Mgt4kAZx35dLwoHa2ijcxpooHSY2XnVTF8tlc8OTNeXyCylM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733075250; c=relaxed/simple;
	bh=SAZvMBJQuptH86PltCTHVI2tDobwe7nMav/Upl/Cf2w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XJI4OOgmiXSQwTPOxl4IWCr11znWnNJ95EGyPP0hWnWdhHV8JmDf/AOsoOjy6jSu6es3ygZHQkybhTf875OVmP+QaZkGvUQg9IbqswN3V8ZrG6CQFGGNxnAmX2+ivp3tff4AV1HyS/eh01w4BlUoP1cCz5gVVk6xlYdxfpR/doI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=gEDtk9Vn; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-aa51d32fa69so550099966b.2
        for <devicetree@vger.kernel.org>; Sun, 01 Dec 2024 09:47:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1733075245; x=1733680045; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UdCZTLlLc9wAxF7wv9T8uwvI64qeiIyF1MUa7CbWwfE=;
        b=gEDtk9VnBvuQX6Fb42ZIWmLdDpPgPbVjgzqAnFs8nMsLhkhNfgDGdz6qPdS3GIKVK8
         +Xcu4071JjXATRAZUH3068lyINgoPXOP9i1zza6PW/XcQ+GYmBwWltWu3Mwb3weV5v1x
         a4/SZtFoGmphwicsI08RIMeqiAx1Vvz7RuDoA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733075245; x=1733680045;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UdCZTLlLc9wAxF7wv9T8uwvI64qeiIyF1MUa7CbWwfE=;
        b=rXS/+zeUoQRb4e8MBcMFAMw++651wf57xH3j3bzxzF6RyLqNfNbzQQx535LqvEGF3h
         XMBEthyFS1f8JSdmXDxZNW2vmONC1VrE1VRes67OkkZdm/FGF21okBFGI8CGYezxfFwW
         FoudshByEUwyX0ikqI5wzpC+gcd9uZrrpT1JDazbLs213rldJ4H7UXgL/HKpeBnpso1+
         1M3OiqIeo7l2uY9NM9v3vz6LS3D3XoAmWOdYkr6H3a1tbDZXrg4cvmyI+k9hWxfPGi5J
         sCy+MpicFM7Y9kOfdF1PMJHAIulE2oEdZaHywyhK6T0aO0SGGBd4hIYLNl0fDuVw6UjX
         QNzw==
X-Forwarded-Encrypted: i=1; AJvYcCVn78wnqfUNs51ULQOZL71P3kV7ap3z9W0UE0+hLbrzk3bcpQpcObAmmSTvLucRZIraBJxLkOkqdkKc@vger.kernel.org
X-Gm-Message-State: AOJu0YwYB0xSFZgbkdS99AHFiTssRt5raaD4kN65Y0a4KMd2chqFuMfP
	0F6vqQgBJzbKr19FftHcKPbNIgsQDu3EgOk2ZHPnOz/fhmWf24yXhys40Nf8LrM=
X-Gm-Gg: ASbGncuJr5p4xvokr5Fo0b2W64wYj/QjLH+w+Kpbra9f2bb6dqsISQeheit32CsrVgh
	1cc6Hy/zMYEuWNU/24Up2JaHUxtSukhPEGGFPowIAg2VMAFLaW8gLSxl1T4S8FqfkYeaKA2yTIL
	wj7Ng5CW+VrCW9J2Ze/b25Akvub2Ox+qln86HtRv/ae2aoz9ED0GOKhd/wY+CWTLroZ4gap3RtE
	bwfcoYhUUSmkkl93IKojxTkWddcgYgtp7kZlisemBb8nsImCewtCurHiD89l056bDLibUqYUEXt
	Rtmz7ZK7od0vNHI69rluc5yMA14SKC8fsw9NsN7ISyTiP80ZTflaaXJSpEVpC+uhs1K1OAaqihK
	UedujyLldUjcgYupO
X-Google-Smtp-Source: AGHT+IF3ozv+j8XMyBjfOQVkJHdfyEzrE1dxQCNDxUlGdrVm5RNwVlOhcKaS/di184NLxV0j1TYOVA==
X-Received: by 2002:a17:906:2922:b0:aa5:639d:7cdb with SMTP id a640c23a62f3a-aa580f0ddfcmr1431249666b.22.1733075244684;
        Sun, 01 Dec 2024 09:47:24 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-54-94-193.retail.telecomitalia.it. [82.54.94.193])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa59990a78esm415220066b.163.2024.12.01.09.47.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Dec 2024 09:47:23 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 04/18] arm64: dts: imx8mm: add anatop clocks
Date: Sun,  1 Dec 2024 18:46:04 +0100
Message-ID: <20241201174639.742000-5-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241201174639.742000-1-dario.binacchi@amarulasolutions.com>
References: <20241201174639.742000-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add clocks to anatop node.

Add the bindings definitions for the anatop node. The patch is
preparatory for future developments.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

 - Added in v4

---

(no changes since v1)

 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 4de3bf22902b..597041a05073 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -600,6 +600,8 @@ anatop: clock-controller@30360000 {
 				compatible = "fsl,imx8mm-anatop";
 				reg = <0x30360000 0x10000>;
 				#clock-cells = <1>;
+				clocks = <&osc_32k>, <&osc_24m>;
+				clock-names = "osc_32k", "osc_24m";
 			};
 
 			snvs: snvs@30370000 {
-- 
2.43.0


