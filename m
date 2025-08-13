Return-Path: <devicetree+bounces-204309-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C38B24F05
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 18:11:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 155021C276B8
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 16:04:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 502CE2951A0;
	Wed, 13 Aug 2025 15:59:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YDfo4FZN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83C631A23AF
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 15:59:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755100790; cv=none; b=XgTCFwVaxUqmswLX3nyUZzp+a2zcGspKUjR7St0C7rCBC+cu74sI0jlOHGnsHbfhFbs6Ai0+e9QbxMErqsOdts82MIm1bcOCQ0AkvTX357AIsO32X5wgK8JRSSCR4aqmuCVpHRcLzwWaTEv+ichJLBqA4FLQrBc+/QJqsje/PI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755100790; c=relaxed/simple;
	bh=/qYPPKBlrG9dz7XnTQ47Gxgxyj09Tr1mn2SGbuLLBxg=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Ik5xw0hlQIchk9Up3lhcgtfxhrdqlj7TSWNDhmJ+5JSmr0ghVNVP1tOhABMbdRRE9ST8jQKVeTRsuQYivpFnApdw5aEdfuSoDds95wsagccGpE37Ackx1K1iTBajstitTxyGmzjCtFVh+UtSnIDflTBSz4DtXqF5XS+I2j5BI40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YDfo4FZN; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-459fdc391c6so39618015e9.3
        for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 08:59:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755100787; x=1755705587; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SQ1rMzjjUaxRG6WCweLf96r9aR3lywHbW1p265j14M4=;
        b=YDfo4FZN/OqNkm7nLXuXLoGuOCtRE6KyjKYdNEkSSxiSKnRYFJDJj2zUds9hxVS21M
         vAYRFTXt3X4Jjky2BN3dWjTGMij9ycRib4SGZh0qJM3QO0wdIpj5xXPhuBM/LsXmlU4B
         z8v3DFb+hyIffsz9vsSPeIXT2pF0HuM/e6RqFpPoaJCQHDdD3pH8nzReUR9nZENHxfZn
         BRS2T9xWPGNkBkwfdBSyDdImCAk5k7GN7RBTTavRCjXdBht8t0SEg6oajSRwwFxsnSni
         PlAtCjGbIN7KLItEyZSoKgSrTjVIdooAOVy3SQeFlAzVWkuE6Cl8iS3MFIicBcht5dHD
         ylfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755100787; x=1755705587;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SQ1rMzjjUaxRG6WCweLf96r9aR3lywHbW1p265j14M4=;
        b=WztZb7OVKkWHGyhD3TdTGYaJbrGA0teZ3mmLaYsXyPDMYQZhVEX90KxNdjjapIJNwD
         OSuJVzYzMM1kiTRDu7byPmKG2qoAIiYF6dp8e7yOJIpmCQTiLRjIcvXB/PYQlFNC5m66
         VzEy3BLAEkXX8PotujwMs6vTk3qLFsYdWTQsSkYfMzOUnYmY0eMEQW9IpcqKzpJCiHdX
         BJbC6A8nQ1+5I650LCYeb+JiZk//+TakozjwktgjMPe7wpU1gJs+CTSYIgAq64n9zRfm
         kMohNIN3WRfC91l+gO1DX8rHhkeYuhOU/5j2hL7ZjFM3upGqZdNC+f+etZ0ftK6QMfmp
         tJHg==
X-Forwarded-Encrypted: i=1; AJvYcCWX72iW8hKHEgDVErAtxGyUdIcP9gs00wTewnI7iuyCc+Q5K/ntB8Zx+ncoGQQ48xLPWeofzguahrvi@vger.kernel.org
X-Gm-Message-State: AOJu0Yw66kkCK6BEOKb7wtxuWviZWlpN9l07TUQYLDluhdWWjkrFHG2f
	MSjor1Jhi/J+gnuPEFrPoqYCDtil83VtOUXA3TIUV7R0O46QfN+EHlxDQIPQRpV5oQw=
X-Gm-Gg: ASbGncvo37S4ywtCx7we8Rk5sLc6kSnP37ywAvWUK7RGG13dhLKMTRLcWHYnXQlIrww
	JgPR1RRY0/u+5iscSbrSj0UL6RKmM+sBGWpY6kqK9ErFwM12OUZwevhIjGnydrlgwOpnLGdPjQY
	hjA07eTGblRo9kK6DxSx56sV7xAbajzgfXZvntwQa0upbqhx38babVBRYW1LdZ7YDtQWI7GejF2
	5/iQcMFOPYm540sM8AuRTJq5lHzmKIConZPU6hCq5Wiy2nGxpqIdVXElFFsE2otPxw1dv5bsUJ9
	b1KPIfsa2urcrNRjCn6Z2jSLwUp8/NAwavC9SHeKAJtWG0QkCJOmd1wNkDPf8+KYaj7E7NAbxYB
	AbQO6tLcOVEacVt/kiRV9jyfOI4jUT3BT1txoPQ==
X-Google-Smtp-Source: AGHT+IHG6lZ32FvdGBp8r8n09hmjRzv5/vc8Zz1hxpmCIsBYuCp0GWkoINQdirIQ9l798DTeqs04yQ==
X-Received: by 2002:a05:600c:4450:b0:459:e06b:afc3 with SMTP id 5b1f17b1804b1-45a1659c9e0mr31143255e9.1.1755100786495;
        Wed, 13 Aug 2025 08:59:46 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:4537:5d58:c08d:204b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45a1a517c26sm7087755e9.7.2025.08.13.08.59.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 08:59:46 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Subject: [PATCH 0/9] arm64: dts: qcom: x1: Disable audio codecs by default
Date: Wed, 13 Aug 2025 17:58:57 +0200
Message-Id: <20250813-x1e80100-disable-audio-codecs-v1-0-af82d9576f80@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEG2nGgC/x3MQQrCMBAF0KuUWTswSQ0EryIuYvLTDkgjGZRC6
 d0NLt/mHWToCqPbdFDHV03bNuAuE+U1bQtYyzB58UGim3l3iOJEuKil5wucPkUb51aQjVF9iDU
 jzddA43h3VN3///1xnj/qQx/9bwAAAA==
X-Change-ID: 20250813-x1e80100-disable-audio-codecs-ef258fcea345
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Johan Hovold <johan@kernel.org>
X-Mailer: b4 0.14.2

Currently, the macro audio codecs are enabled by default in x1e80100.dtsi.
However, they do not probe without the ADSP remoteproc, which is disabled
by default. Also, not all boards make use of all the audio codecs, e.g.
there are several boards with just two speakers. In this case, the
&lpass_wsa2macro is not used.

Disable the audio codecs by default in x1e80100.dtsi and enable only the
used macros for each device.

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
Stephan Gerhold (9):
      arm64: dts: qcom: x1-asus-zenbook-a14: Explicitly enable used audio codecs
      arm64: dts: qcom: x1-crd: Explicitly enable used audio codecs
      arm64: dts: qcom: x1e001de-devkit: Explicitly enable used audio codecs
      arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s: Explicitly enable used audio codecs
      arm64: dts: qcom: x1e80100-hp-omnibook-x14: Explicitly enable used audio codecs
      arm64: dts: qcom: x1e80100-lenovo-yoga-slim7x: Explicitly enable used audio codecs
      arm64: dts: qcom: x1e80100-microsoft-romulus: Explicitly enable used audio codecs
      arm64: dts: qcom: x1e80100-qcp: Explicitly enable used audio codecs
      arm64: dts: qcom: x1e80100: Disable audio codecs by default

 arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi    | 16 ++++++++++++++++
 arch/arm64/boot/dts/qcom/x1-crd.dtsi                 | 20 ++++++++++++++++++++
 arch/arm64/boot/dts/qcom/x1e001de-devkit.dts         | 13 +++++++++++++
 .../boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi | 16 ++++++++++++++++
 .../arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts | 16 ++++++++++++++++
 .../boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts    | 12 ++++++++++++
 .../boot/dts/qcom/x1e80100-microsoft-romulus.dtsi    | 16 ++++++++++++++++
 arch/arm64/boot/dts/qcom/x1e80100-qcp.dts            | 19 +++++++++++++++++++
 arch/arm64/boot/dts/qcom/x1e80100.dtsi               | 12 ++++++++++++
 9 files changed, 140 insertions(+)
---
base-commit: 33a21dab19b31540dfeb06dde02e55129a10aec4
change-id: 20250813-x1e80100-disable-audio-codecs-ef258fcea345

Best regards,
-- 
Stephan Gerhold <stephan.gerhold@linaro.org>


