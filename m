Return-Path: <devicetree+bounces-120980-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9958C9C4CCF
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2024 03:53:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4DB6A1F217FA
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2024 02:53:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0230C19F489;
	Tue, 12 Nov 2024 02:53:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Lqu8lYgo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219F919C578
	for <devicetree@vger.kernel.org>; Tue, 12 Nov 2024 02:53:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731379992; cv=none; b=CsYOLlurbJFu38IkkBNhsZLhRWY4+ZkQyHdJ+qZcW9/JpIAhtsHFrS1zS5muR7f+saw6gYEa1QopJnjgY8bFAIszDSqlDwZ0AENeUyp6SYyqnG6jRTVNAyIKiSQitngY03w1WikOuqejWfnUZsw8AXorfljj+NQlfM1i5J+7GYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731379992; c=relaxed/simple;
	bh=zRjmLB73FoKBtKABZdlS/4UbbMfV+Vfzmmt8HeVipXQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=EOO9xwtigES0EF42xXMvud0c0ubCua75rInr6dpBw8C7lW8G1cw0UDRjXTLt+KOuZq/zZEfGdKsl3E/+gU+XJQFyuhqtPAAHwgJm3Iy0efXb+uer2e4mXMIqOO1m52rFkjrFG+Ih/LdNbzTdskR9RtajbOBjUJHqie5svWkkZIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Lqu8lYgo; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-37d808ae924so3162846f8f.0
        for <devicetree@vger.kernel.org>; Mon, 11 Nov 2024 18:53:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731379989; x=1731984789; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=18HziUDPDuk5Q3iAQWZEK5eNd/SL/SlFF3wmf8V8Iy0=;
        b=Lqu8lYgon0Nq8So+W0/5o1+x1R+gSkfX0n7AIybPobVjScKZ1Mcg4SYVBmAeN4lgK6
         wVbPiydPR2O96dmmnZpUrToHwITFwm10NRWWtTpeEeTWSaTdT+iKcXtySuX7LmLW2SZ4
         WxHod6+D+7eROJAIyWidGwHjOm7Ld58SeVsKK1blkHhBV2isAeRbk6GddOg4sWpK/E37
         zD/HNA1m7IdHKCfU4MiWPrh/4V/NnUMfd2AJvYphzJm1Er7ECCIfYCR08z1e5RhqM+jv
         0oBOzQ4RFWOSG66DRBxxl5x/FI+e2F5bgomkHcq4i+vnhlUVzpysurINI1GDoIp9LrEB
         ftlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731379989; x=1731984789;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=18HziUDPDuk5Q3iAQWZEK5eNd/SL/SlFF3wmf8V8Iy0=;
        b=a+iJ0JbDOCeO0fuM+ZDvTZTgVksUV4IAf/Gcow9FUWr7xExZJ0ADD31/WhP8NW2HSS
         +qGcaVEWoAEnmdCqdqVakOdZN+nqRR+3jAr4IkcYfdUdSFjKOdYd8YP4ZiLwUL7WzEOQ
         5pJZ2cT9tbCG80dB7ZOw+wK7aMNiYPBUPMOgsMnhciAi/qClgR7yhg0uKsuqFftXhYji
         9qUzby3vfOnKZAVYuEgNekjdusUUFsdVNPdeLeaL/EXcLvQBfSG9LCtNWgn/y37bSZsW
         H8dZctGJVDaDofi6UnMaP5Gg61GBLyJOmaCCmdEyG3WKH580pgVFMLUc0Kzxv+pja8eN
         /+0w==
X-Forwarded-Encrypted: i=1; AJvYcCV4i2BafqymIDWgbpEqUcEdmqqllaM3zY7NFnC0YAOMwlQr48tBt/ZB7+U/20Y0HA2QuIRpG/uoS0Wo@vger.kernel.org
X-Gm-Message-State: AOJu0YwT+YWlT71eYBkE2bZSZK9NeqT9AmS+wYkDwV/x/bPjvNNaNOmT
	l+yzuUXGb2Dnulh3odRY4v8Cmrlmfg/eNXinHcGI9/wIReEdcBpfmK+kV0NDW0E=
X-Google-Smtp-Source: AGHT+IGXBhvjg18rNz8X8SGfiBMEM8XCIEey0FZ/8rDRwsOHEf6SS9kM97100SW+eFpnCAGUW2ZRsQ==
X-Received: by 2002:a05:6000:784:b0:382:5af:e993 with SMTP id ffacd0b85a97d-38205afeb31mr2179145f8f.54.1731379989367;
        Mon, 11 Nov 2024 18:53:09 -0800 (PST)
Received: from localhost.localdomain ([2.222.231.247])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381ed999e0csm14056380f8f.59.2024.11.11.18.53.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Nov 2024 18:53:08 -0800 (PST)
From: Alexey Klimov <alexey.klimov@linaro.org>
To: andersson@kernel.org,
	konradybcio@kernel.org,
	linux-arm-msm@vger.kernel.org
Cc: linux-sound@vger.kernel.org,
	srinivas.kandagatla@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dmitry.baryshkov@linaro.org,
	krzysztof.kozlowski@linaro.org,
	caleb.connolly@linaro.org,
	a39.skl@gmail.com,
	konrad.dybcio@oss.qualcomm.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 0/4] qrb4210-rb2: add HDMI audio playback support
Date: Tue, 12 Nov 2024 02:53:02 +0000
Message-ID: <20241112025306.712122-1-alexey.klimov@linaro.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Rebased on top of today's -next and re-tested.

Changes in v5:
-- drop MI2S clock in sm8250 patch (seems to be merged);
-- fix gpio-ranges in lpass_tlmm (Dmitry);
-- added reviewed-by tags from Konrad and Dmitry.

URL to previous series:
https://lore.kernel.org/linux-sound/20241101005925.186696-1-alexey.klimov@linaro.org/

Changes in v4 (or since v3):
-- cleaned doubled spaces in the last patch as suggested by Konrad;
-- added Reviewed-by tag to patch 4.

Changes since v2:
-- added tags, updated commit messages, added Cc;
-- updated LT9611 -> LT9611UXC comment in qrb4210-rb2.dts;
-- updated addresses in DT to 8 hex digits as requested by Dmitry;
-- added lpass pinctrl to sm6115.dtsi as suggested by Dmitry;
-- added lpass pinctrl override and pins description to sm4250.dtsi,
pins are the property of sm4250;
-- verified with make dtbs_check as suggested by Krzysztof and Rob's bot.
-- dropped two patches (they seem to be merged):
[PATCH v2 1/7] ASoC: dt-bindings: qcom,sm8250: add qrb4210-rb2-sndcard
[PATCH v2 2/7] ASoC: qcom: sm8250: add qrb4210-rb2-sndcard compatible string
-- stopped Cc-ing out-of-date emails.

Changes since v1:
-- removed handling of MI2S clock in sm2450_snd_shutdown(): setting clock rate
   and disabling it causes audio delay on playback start;
-- removed empty sound { } node from sm6115.dtsi as suggested by Krzysztof;
-- moved lpi_i2s2_active pins description to qrb423310 board-specific file
   as suggested by Dmitry Baryshkov;
-- moved q6asmdai DAIs to apr soc node as suggested by Konrad Dybcio;
-- lpass_tlmm is not disabled;
-- lpass_tlmm node moved to sm4250.dtsi;
-- kept MultiMedia DAIs as is, without them the sound card driver doesn't initialise;
-- added some reviewed-by tags.

Alexey Klimov (4):
  arm64: dts: qcom: sm6115: add apr and its services
  arm64: dts: qcom: sm6115: add LPASS LPI pin controller
  arm64: dts: qcom: sm4250: add LPASS LPI pin controller
  arm64: dts: qcom: qrb4210-rb2: add HDMI audio playback support

 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 59 ++++++++++++++++
 arch/arm64/boot/dts/qcom/sm4250.dtsi     | 39 +++++++++++
 arch/arm64/boot/dts/qcom/sm6115.dtsi     | 87 ++++++++++++++++++++++++
 3 files changed, 185 insertions(+)

-- 
2.45.2


