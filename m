Return-Path: <devicetree+bounces-123810-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD9B9D614A
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 16:27:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9F5A5281885
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 15:27:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3D4682485;
	Fri, 22 Nov 2024 15:27:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DSvCcagp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3F772E3EE
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 15:26:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732289221; cv=none; b=mrBAsl74siALflH5UcDZA2jIWLjcS7DnyAHzymz/oI+t+NXd+3ATUzOFmSjAzxP4uJYojBIgV3tn8azBbC3uf/5HQN4ex7HSkGPtQm1XKElecXGRz+Au4urgnq8Oe5mU5iikmgnOHTBZPuVRDbxGDZQvP3HdUTOppMWQk+ojUuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732289221; c=relaxed/simple;
	bh=x9zFP16tBrHH9xSkf8S0RBI7TMoKsT82+3CNcTn2s4k=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=BbMlvLtTBIlkH+9+VAuF7KXw/+DhFyBmdtpRyoth1MyboXdLtAwu02c7HRn99JvY9vU+zmzheRcrVuee3ZKoL+OEufUa0G1TK0htpibUa2nIbEl4LpNzSS0xylWjnvtUEz0K/c4auFmdPgRr7cNCUfdrgLH7eKVRCvI4p+Q/Wmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DSvCcagp; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43158124a54so1945095e9.3
        for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 07:26:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732289218; x=1732894018; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NSSJQjcv7zn+uurioKg3Uus+PDCo5xRKMv88bHaqE24=;
        b=DSvCcagp2JlkJtmVxV2NTulrK8nErx7CbrERwUK2Ti38DFk4MB7+W/vYJDGmq6zZAl
         sCqRON3KP+gs3zKN5/p2Diw0k8uiu4aA1hkfvEZ8eUYs7ed4wHZLOPUtzg41VNw24g8i
         dUP8RNoR22q/C2Xfglja2/aJriPEUnFac14RVffsoKwQJUnBqvmHgrrqDDYG4PnUKfoX
         68bFEWkYtOGm220tU+MaCEGFZqLfclhqS/EZky72lxEAB3xY+rdFn6SdseXfBdO2UBdG
         qFYIslaE8ktpa1WWvxV4j32kfkhq1352OM5AiveP318+1IBt+2guOzeTEIthKQxxB3UO
         hIlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732289218; x=1732894018;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NSSJQjcv7zn+uurioKg3Uus+PDCo5xRKMv88bHaqE24=;
        b=QxpdFf1Bkd2sw2y8ZNP+cNHVvgInmsSHLVazDLB75sjSoYUgu8530wO53ZPW55vlIT
         Y1qnq2O5KuxNCH6skoCdNxYTonACaDrgvxjY0GXrz7OQ1oZpxZcXLOn/7j8jb1l6hcWe
         UF1sWV8n3k/gvo74Sya9qrLeD1Ow/Cf9iLT2s8guGKAsEPFE8t+hNUEeAV4yLOc0HW2t
         ULOIrqBrP/mFPcMxWGnQ5nFHBixUbOuPXFFwQkmrEb5RjZhS+d4OrGAilV9XnwHmS3xv
         9nEw1cP64gDCL8laR3fTLACMCxtc7xX7XGiA2GTZXsoNFUka98fhB9ASfT4oTHVMP0Or
         2YZg==
X-Forwarded-Encrypted: i=1; AJvYcCXhPsxF5u01TGKIEasE7fODWpAcl9HKkxm9AkSK/VWJP1RdBuE/+k7zKH0zngszk9ubPQj8L69mnINp@vger.kernel.org
X-Gm-Message-State: AOJu0YzuZYQOtc4Kl8YgShuzio9vIkDzfGeDhS+Tg57DGueETQUWcSBQ
	h9b8+R0xwsPMCGMd1N7HjkJnzZayfJ7OF0DYnCVDnMvxiits84mzS2FArshhZxA=
X-Gm-Gg: ASbGncuXn50TMofrCL0GcZGvBShPwRXdNYMvM6xlFJAG5NApTVi5Mzds3/AEigO3kKv
	waYoxm+7bfY90MhjDKE3CgXACxejkGAO6nUgRXGKceQQeVzRhbuz2a5enNxDkMQXldT1plnfJH7
	sTf/n+98OnZqbwMC4swY0LwAmPcUwXm17IucIWplNvigNCJ3HGggUuXJlevgZ/dmxdSOF/E9tXu
	fWkR6pkarNOC+0vGFR0t6UwE2rR272Glx4E0kIZCi6XizKd5X1MCA2mlI1TYdYzeQ==
X-Google-Smtp-Source: AGHT+IGL9/l4Wh51n1IEmZ0N4L+un86qojg08+mjCXuOQLbVmBX3DScjqJZmlLRaN8nzzGwPzwboVQ==
X-Received: by 2002:a05:600c:3b14:b0:42c:bfd6:9d2f with SMTP id 5b1f17b1804b1-433ce413f46mr12556385e9.1.1732289218240;
        Fri, 22 Nov 2024 07:26:58 -0800 (PST)
Received: from [127.0.1.1] ([178.197.211.167])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-433b45d4c68sm93002935e9.22.2024.11.22.07.26.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Nov 2024 07:26:57 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 0/4] arm64: dts: qcom: sm8750: CDSP and modem
Date: Fri, 22 Nov 2024 16:26:47 +0100
Message-Id: <20241122-b4-sm8750-cdsp-v1-0-9a69a889d1b7@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALeiQGcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxNDQyMj3SQT3eJcC3NTA93klOICXWOLRLNkIzMT40TjFCWgpoKi1LTMCrC
 B0bG1tQASpFa5YAAAAA==
X-Change-ID: 20241122-b4-sm8750-cdsp-38a6c2643a3d
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=826;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=x9zFP16tBrHH9xSkf8S0RBI7TMoKsT82+3CNcTn2s4k=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnQKK5HHV8g8InXLUJms+ZSeldpQbcSUFB3Qdbb
 YXJf0U0U0WJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ0CiuQAKCRDBN2bmhouD
 11dXD/4jM4QMA69CdbhOAhv1Jp9t6kafQwna0hQurWzAiYY//epyQsTvJUnCtiyz8paLO5TOwOF
 L7EXClf6L7qcHtgBNfW224M2VeRzNyGExNwELdDyXMvI5sXWGjqAwoYa+I/Rl3uUzXjlWxisFOj
 fmHrPZHTdLxyfSAwWBGg0v2pSNa1moy8gVaxz4EnZlbIjXA11bQqoBKLMvfHoa9Ced3YbvHePIM
 S6fGiFwp2fMwbiTdFHGPFGz3JBGw1Nrp4JWslHMnjVOlIl5jfW/ZHNSrzE0YBwEHTYfLhEECsLd
 eGi3eb64YUaaAhjfiI8TLhR1ck5dZnvp+OJGnnn2Iyt9P6K+Kzb1P77Y+qeGGjPzGYK6WgQfaUq
 nbPQuBkxLfDqM22zuGMAilaDk1G5WS/sHsAsDtCyMdJCjsHPLfeWch8LMHXkQiyitDqWiypHpP5
 uhXmOI211TQhgmZIcgjT7f5bxBmSEADG+M8F5BrCjj7xm6xn28oANpAe9K1LG4nsJOWRLWqi7HK
 8Nh4NkCjV6UpGEkt/AYGo4XhhovDkpnhUumDHBMrwnIajXAm8tCjfUXckTHyMMyAEW8tDzUge+5
 KQoYAANS+vGqitVGOBom8U3JEWT2j3/pKmtmnJ15igNhwib/tG8SyIfjA3VdMPcNTVV4SRtKD33
 kp8FdEmlnc7vtJg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Hi,

Context of this depends on my audio patches:
https://lore.kernel.org/all/20241101-sm8750-audio-v1-0-730aec176459@linaro.org/

Best regards,
Krzysztof

---
Krzysztof Kozlowski (4):
      arm64: dts: qcom: sm8750: Add CDSP
      arm64: dts: qcom: sm8750: Add Modem / MPSS
      arm64: dts: qcom: sm8750-mtp: Enable CDSP and mention MPSS
      arm64: dts: qcom: sm8750-qrd: Enable CDSP and mention MPSS

 arch/arm64/boot/dts/qcom/sm8750-mtp.dts |  15 ++
 arch/arm64/boot/dts/qcom/sm8750-qrd.dts |  14 ++
 arch/arm64/boot/dts/qcom/sm8750.dtsi    | 286 ++++++++++++++++++++++++++++++++
 3 files changed, 315 insertions(+)
---
base-commit: 9c09904fa09686ebb44c64857744d5521c81acf2
change-id: 20241122-b4-sm8750-cdsp-38a6c2643a3d

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


