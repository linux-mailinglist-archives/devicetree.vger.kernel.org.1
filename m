Return-Path: <devicetree+bounces-112661-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C6D59A330B
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 04:55:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 119A3281991
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 02:55:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 528451547CA;
	Fri, 18 Oct 2024 02:54:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Akjjmvre"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CAD8126C03
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 02:54:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729220098; cv=none; b=YsWAjuy3uX2YxTIp8lW2rzZXqC4uaS5OyXmzcEOMm8usx9mxlijKesrcBEtaFeQAvx3kmSpuge7KURZ1u7KdeqT0MbfNP5cGfISYJ50jRq1u/6d0C7UVe/YqArJ2WXXSZkUKVUelJy/ZxBqUKIdU+/HZuseyPu9R1bvTdezoMtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729220098; c=relaxed/simple;
	bh=n8QGjegVRsMuoxCZEGmylSDsnFJMTMH0NrzMsCUnIP0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=VIZclgpf5H0GCd85srvDPpXrFHBfgTY6Mm7hGYHm1t5k74OjUk9s9+YW/zidIVZKjgt8aPI5q37+Sm6U18D90IHsZS1EjRZWRFUp/VggKzRK+YeMU1NOzeuqszCXZVRo31FwwBhRR62RpBGsn2K8r2QqUmrOg3NLvTtaBF1PbsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Akjjmvre; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-37d6a2aa748so1037188f8f.1
        for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 19:54:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729220095; x=1729824895; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=m1LotCQ1z2NEQ+5bFgi6Zyo58U+aBsfVFC+loNQpeww=;
        b=AkjjmvrecQsT56YU1yLV8GKgWDxe505X6mqTnJ+oG718KI7/zeDGxnlLdVTNQbX/DA
         Ev1MatfPgG12MK6nWptbB11ASHF2RVejEg4uf3vTF9nI7gy6/BpBNY2g4yG+q2slZWBa
         /8IuJMQGtSzrWD0ijqTT6GjpQE0p9/jWV7GG63XobRCGt2e4G3oaPWd70GfiKTBdujQy
         oOWxgVbaSEod+obkODUqd15dN8Es8uG9uCtay46+PLwxXF8fa5SsmffWRK/YAq3i2s/Z
         cjh8rDdaHdlFihUzscQP+z4g4P/W4P2f7PiWAnic7PLFmhvlT6FrH+lEXBuF2WTScpNb
         hedw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729220095; x=1729824895;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m1LotCQ1z2NEQ+5bFgi6Zyo58U+aBsfVFC+loNQpeww=;
        b=VC5IzzwZNM7UMHSmWCy8T3c6q4A18SHmbKlQ5hX7WSMDJ5oAMqW4tssh6WROd+taqd
         XQwlAdmXvcgSzlnJuNTOETxyW2IRI2zGlicazB3TP4KldI6lPHAtEu6zZafM4/P0zyJE
         A3HiBtNcXjuynd5dTINN9g12/xgsZZ3h5z4MPyGq4OtiRxMvUf4w3MVeyiXisZ1jkjlA
         vV3Fknmz12wa51h3wnkYiaocSksmK+VPGE00P//1q9k4dtteAJkuIxyOwv5vrZizANsW
         uMWWxMp20RCs+GHIoL6xfrhvvp9YOISDMHay3DZNkKwS9pXTAFDx4b2amwP5TYZrupx2
         qFeQ==
X-Forwarded-Encrypted: i=1; AJvYcCXChSsJKxN+LTENMyFUvy4TFwLZ27Wbq/1fOlNxImM064PtxsQlkFEmpcWTDFDyZZqlmJb2Z4Ep3Pmh@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+HsuMwhV2sVrprckf0l6xrlcPSANjMct35dk0J7KiehvQUuC+
	fycFoefjEKQtsNvlWfUmcsvKs2WvRs57wgLsin9vlaPTlGZXHcZd2cVB7btfr00=
X-Google-Smtp-Source: AGHT+IE08/qDHlnXCkBlFCtCmUwhii5YW2Lnw4NJgvIvWxqfM+3ed/YHb9Vb6kd1W+z23dzqqegv2g==
X-Received: by 2002:a05:6000:cc7:b0:37d:498a:a233 with SMTP id ffacd0b85a97d-37eab4ed47bmr463560f8f.43.1729220094695;
        Thu, 17 Oct 2024 19:54:54 -0700 (PDT)
Received: from localhost.localdomain ([2.125.184.148])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37ecf0ed599sm596135f8f.69.2024.10.17.19.54.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Oct 2024 19:54:53 -0700 (PDT)
From: Alexey Klimov <alexey.klimov@linaro.org>
To: linux-sound@vger.kernel.org,
	srinivas.kandagatla@linaro.org,
	broonie@kernel.org
Cc: lgirdwood@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andersson@kernel.org,
	konradybcio@kernel.org,
	perex@perex.cz,
	tiwai@suse.com,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	dmitry.baryshkov@linaro.org,
	krzysztof.kozlowski@linaro.org,
	caleb.connolly@linaro.org,
	linux-kernel@vger.kernel.org,
	a39.skl@gmail.com
Subject: [PATCH v3 0/5] rb4210-rb2: add HDMI audio playback support
Date: Fri, 18 Oct 2024 03:54:46 +0100
Message-ID: <20241018025452.1362293-1-alexey.klimov@linaro.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Rebased on top of -next, re-tested.

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
-- stopped Cc-ing out-of-date emails;

URL to previous series:
https://lore.kernel.org/linux-sound/20241002022015.867031-1-alexey.klimov@linaro.org/

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

Alexey Klimov (5):
  ASoC: qcom: sm8250: add handling of secondary MI2S clock
  arm64: dts: qcom: sm6115: add apr and its services
  arm64: dts: qcom: sm6115: add LPASS LPI pin controller
  arm64: dts: qcom: sm4250: add LPASS LPI pin controller
  arm64: dts: qcom: qrb4210-rb2: add HDMI audio playback support

 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 55 +++++++++++++++
 arch/arm64/boot/dts/qcom/sm4250.dtsi     | 39 +++++++++++
 arch/arm64/boot/dts/qcom/sm6115.dtsi     | 87 ++++++++++++++++++++++++
 sound/soc/qcom/sm8250.c                  |  8 +++
 4 files changed, 189 insertions(+)

-- 
2.45.2


