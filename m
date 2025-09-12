Return-Path: <devicetree+bounces-216632-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B67B556AA
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 20:57:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1552A5C3F8B
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 18:57:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A81E335BAF;
	Fri, 12 Sep 2025 18:56:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Jzuj39fe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE86E334731
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 18:56:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757703405; cv=none; b=CoPDHLLN7edYZI/IhZjnGefuQ/GRi1JqliJbqOY5IBE8q1SfBvqX6gb5q6qKWaEnGBUgz0xZgnQKmMup5rzr3UQaw0MmZEULh6fI879PWS1aIg+WD4xcqVn7TYrmmSEIh1GcRPNexMWDjnBHI9v731deUotFmQj+DnOfcAI//mQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757703405; c=relaxed/simple;
	bh=0Xt49gx4Fga27GDHGP5oVfZ80/pMMmJ14v4effs8D6g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qJRV4R/VrYKrOLURMGO646hUg8K9hAaruptUQC39rKv4lCHQzvBVGUzGYc7MD6/5woJ4FxVoR7j51fD5opHFyYqJFwbEA3IxIxPLMNfwd+lu1QlOXjbu1HTc72Ku+vqTBsN0YGGBd569X+vyaakbkI8Qv9X06SHtczUi1dtPlPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Jzuj39fe; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-b046fc9f359so342430666b.0
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 11:56:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757703401; x=1758308201; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xM+ipYHU+2/zIuxWyzBu2YEkmL4BjEzXCcXCaE5zzvo=;
        b=Jzuj39fe0k6iZsODBPC7xVzkGgm8OEQ6nINRclYPc60B5aRlankAbCa+XFDmG8UCXE
         1v+d2qS14UBSDkfjGVAp8JPgT5lGIf1fm/3bMQtZyQ7V7pliuUOobU2P4cNQFQg7Vw5b
         vweMApY1tRYQSscDlkoXkxkXvqLRb6KtQY+AkKQWFJaEG4X94jUkFKWeMypnd38jIxyf
         IiWyKM4plaUGyP2J84P2h0eQBeNMFWPRQ0q/P8u7HzIUFsSOKso/YzMABTqZHyJwX3yq
         mBMetYaHV8BodxHyFeVu47c9a+qiuCIsJ2AHldNm0WltdDjJOp1AXSTVdgqfFqzgCReW
         vBLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757703401; x=1758308201;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xM+ipYHU+2/zIuxWyzBu2YEkmL4BjEzXCcXCaE5zzvo=;
        b=ttdJ8rCqvq1l2iispYl79mwNpqV+XJYyY8pnULtlCWpDcky5Vw43Pthlz5uWnUtJXn
         gdCL0YqaLS/vrTYCqmoLwugZPLp1KxwQecq5CcxfigyBpr00wwQYlwYODrZzyKozKWlM
         7WiTSSu6wQqgf5axsOSsy/3CCx10pTmqZT9/J3ciQME3S3exfeEX6Uni3BA/LQUVxp6w
         STkm3IVpMeubFxhc4k+HPGeu+axNUvduFNcJ1rb6Rt3Xk0JC7c0jZDVdahXmPi1sCbXR
         ARto9L3GLSMgAyuLAo+lON1haEwP6OoC6N+2zm19cNcl8hZOek+AIe6qLxeiydvYSxPc
         gVEw==
X-Forwarded-Encrypted: i=1; AJvYcCXhUF1uLmCPOH3w9EjhgP+75J/PR3KPcHqxH1MHV8qGB2I/cqp3Q9nASM2EBybiYVN13YySd/LXDsaV@vger.kernel.org
X-Gm-Message-State: AOJu0YwsFO+NmxZN+qlwte0+Bkut17znplBTOfk94fzZRdkmd+DRICY5
	1rce1gTKfgtHgR80cH/+JzBlFnU34A8ZWT+Ll1zmeIOk0vxlrApP7Azw
X-Gm-Gg: ASbGnctoCsSOSi8p+HnhpS8XKBFE2z9hJ7nlo2sOwiPDiDubqW0/Ts1NzViKnpV1P9Z
	FWnU3HYc2IVFWSwC+kWgsvcW3z5OknX2B/n4+t8wudEjSYo0X1X1O8K67uxGZkN8bUDk49iEOeG
	yeHAsbiimy+mKEgFQkLaIeSWSal1G8UNP8VVpH+6DVvOwERt+L6NIhCwWR081Ke6Owp1wUN/BFo
	eXq64rFJwtDCuSgqBqM2KRAyGIbQ4QjNxq+5y/rKHhtw1V0mDciV0vQWuOe43gOmggk9mxZWeTY
	rqJKk41rC1KJ6kdvw6IV0DjRTDYfd0ndH95Lx4tGL7bWPkBCG1q4OETE9meLdf1BDCLGhzZbCnh
	HqiArfrCSeXF1oSe0uETQCr5RUFHyA6o=
X-Google-Smtp-Source: AGHT+IEKbOSU552YwKqD51OsR7VHeOMlnG2WqL8z7x5cuMmm/YvURX8Xxm5wd1EUb0s6sCfbpssjJw==
X-Received: by 2002:a17:907:96ac:b0:ae3:b2b7:7f2f with SMTP id a640c23a62f3a-b07c381bc8fmr437907366b.40.1757703401054;
        Fri, 12 Sep 2025 11:56:41 -0700 (PDT)
Received: from [127.0.1.1] ([46.53.240.27])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-b07b30da310sm418184566b.20.2025.09.12.11.56.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 11:56:40 -0700 (PDT)
From: Dzmitry Sankouski <dsankouski@gmail.com>
Date: Fri, 12 Sep 2025 21:56:35 +0300
Subject: [PATCH v2 1/2] arm64: dts: qcom: sdm845-starqltechn: fix slpi
 reserved mem
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250912-starqltechn_slpi-v2-1-5ca5ddbbe7b4@gmail.com>
References: <20250912-starqltechn_slpi-v2-0-5ca5ddbbe7b4@gmail.com>
In-Reply-To: <20250912-starqltechn_slpi-v2-0-5ca5ddbbe7b4@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Dzmitry Sankouski <dsankouski@gmail.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757703398; l=1213;
 i=dsankouski@gmail.com; s=20240619; h=from:subject:message-id;
 bh=0Xt49gx4Fga27GDHGP5oVfZ80/pMMmJ14v4effs8D6g=;
 b=c4l2LAbU7QZdU8ESgq3fxLwvG/NFvCFENNKgOX9n/caJL6FtjasD4R9DgOMhYeG7awTO5vJq2
 V16OmDMGd9wD3LLe/jqLiJQbqt/6tyBJK45tsGqyN5Gfpa61TVW+VmZ
X-Developer-Key: i=dsankouski@gmail.com; a=ed25519;
 pk=YJcXFcN1EWrzBYuiE2yi5Mn6WLn6L1H71J+f7X8fMag=

When adding adsp reserved mem, slpi reserved memory was shrunk
according to vendor kernel log:

`Removed memory: created DMA memory pool at 0x0000000096700000, size 15 M`

However, kernel failed to load firmware with 15MiB reserved region:

`[   14.885885] qcom_q6v5_pas 5c00000.remoteproc: segment outside memory range`

Increase slpi reserved region to 16MiB.

Fixes: 58782c229e3e ("arm64: dts: qcom: sdm845-starqltechn: add initial sound support")
Signed-off-by: Dzmitry Sankouski <dsankouski@gmail.com>
---
Changes in v2:
- fix commit message to be more clear
---
 arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts b/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
index 9eeb4b807465..32ce666fc57e 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
@@ -118,7 +118,7 @@ removed_region: removed-region@88f00000 {
 		};
 
 		slpi_mem: slpi@96700000 {
-			reg = <0 0x96700000 0 0xf00000>;
+			reg = <0 0x96700000 0 0x1000000>;
 			no-map;
 		};
 

-- 
2.39.5


