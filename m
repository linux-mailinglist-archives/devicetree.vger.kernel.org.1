Return-Path: <devicetree+bounces-159327-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C6F2CA6A59F
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 13:00:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 99F603B5373
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 11:56:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C746A21D3E2;
	Thu, 20 Mar 2025 11:56:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Qdxths+v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED74F1DDC2D
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 11:56:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742471803; cv=none; b=GmliKCDsgt2aPv1oMHGD7VETos52SQZU9XgAUAAKuXViUMO+jbf7O3Rx8+xSoMxHmhgVNg0MQc3+JlyElh4pkuJUUHkVysf1i6kc6mO+RMTcJtS/xzVls6C8YV3/XohtOl1EQr45tZluHWiC1/DB3aOL3Z/1gXrMEc/PgJcRrWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742471803; c=relaxed/simple;
	bh=BMShRTcWJEQSaIviUcz1ALmaZ6O0uj4o+VfvJ359y5E=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=CocslQuvJECu6/2Dt+S5hhfQAM9fv5KRgaWspDGK1bUymMWyMewwFd0M2mq+FcIM2wFymBsPVxYouwTwpA9BSpHj/P4heEJWMhgdiYPrkTfk6vNJIcqNA0dLmhYRwuV9ct9VCZtwbGXz6r+ancCV5kyv5Z+dWjcKitz3mH8QUE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Qdxths+v; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-43690d4605dso4247545e9.0
        for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 04:56:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742471800; x=1743076600; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BX8azcuPUPcGmYXdX3K49oOlARId2JPIzgFIvQ9dQ4g=;
        b=Qdxths+vOfIaseJUEsulczxWszpVXnki9fEhPVxKbaTIn84YNKsgTCXEKx7xkIgs8M
         k28IWfLxjLeTRf0SOcTGf08a2AAkb6LdI+6WYWZxkTrekAP57Bsn1qV22PeNscObkjAk
         qZXVfNdMOMASggAZD7FcHcIl40E4bhW9XyT4lbpEC6F+c6+HSI2/nKLoRP/ZURFAVJDA
         +7ZCi9y/hrbqVc5Jc/Fn9hKIBF19eJcoXafVOv1degNtNiwp7+w3qML1p7wkylTgwQa4
         RHx1KHWVZ2QPFaGGpk664pUObT8zcXkAh5f6O1+iQEl5hbqgs/W5w26iy/IDPMK3Q+3F
         ExWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742471800; x=1743076600;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BX8azcuPUPcGmYXdX3K49oOlARId2JPIzgFIvQ9dQ4g=;
        b=fVPWkIrf1VQrW/OhkpNcVxIniWqrnrtN9cNnTXKxwj1A+ZMZf2GMerNaszRHHQVc0P
         g245fVSig0EA/wG9hiVe7cOX8X/l/h38IinH1w7CDRaviHHWcPPA5ePcvoEuQT+he0GJ
         e6tD76KVZdSr/DfXj9QTLfkmmrgsbuBw+eDZpZzSXn6HIMUXbuV+J34y1AN9pW/Va5/k
         OJY3OHJE1AcbwwZ4H/RbfTDFid2fehqo1HaYg6ZwSQ9k1GSElNKPQciSzqR1TkbgNldb
         dECNpI6hJSmWwqsZOW6U6v7vH9CKDIhStAWD7o3SvKBnCfeyqympZvtxPLst3S7cPCzd
         7d9Q==
X-Forwarded-Encrypted: i=1; AJvYcCVYvS24EfSAr9xNAwzIv6pAgdXDH03BXlCWSOKeQgSRT0NIBb5W/sKycCAimYPXuqf4IAQc+id92qzy@vger.kernel.org
X-Gm-Message-State: AOJu0Yyqlz+e6aQrRJwwWxl7tgK2UEeIu+cjWDKqEmF9AWKGNji/KMqv
	zE84jDAYVU+IPfi4CrgbudLXUmxGZ2sdkWUEx6WEkTr+hT4GnizIV73e3DxXyNM=
X-Gm-Gg: ASbGncvFwaFMvo0lS8qzin0EcJcMN8nw9Z5xHSezfJTJthpOw9LXdfnA3CUrbnSaANi
	EEuuF2NU3WES5TqekfkYEaoduuDfE03j8pFQ+5OztnYREnQ5Opi9vpm8034TmRCdPDCnMZ4TEnR
	UDD/+uqF/YsHu09DV2a7bcResdoEKrtQ3tsG9OUuNjXx+ecPqs+P6l/EfXlwlgHO4zIF1ioYn6o
	yw2tH/oTwYY3SsB28BpZPr7O+EqJh+VeXcwTen87RyVGTuY6Gw0lUx7Jl7Ww5aJq+v+W8D+Dvnj
	zKBSC3bmIxEHOh8UwDGW+2EddHUzH/M6jyjDhaOlGDiZt64Q/ozVkWXHK0D1iaEw6n+LgQ==
X-Google-Smtp-Source: AGHT+IFuA3/VMVKcDf3fFvwvPD1gU5PkZBOsrXrba5zDC7lgg5k/5Q4hY20InWuM7OSFEj3sUpm5YQ==
X-Received: by 2002:a05:6000:2cd:b0:391:2fe3:24ec with SMTP id ffacd0b85a97d-399739bc8c0mr6784071f8f.14.1742471800069;
        Thu, 20 Mar 2025 04:56:40 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-395c888117csm23257857f8f.44.2025.03.20.04.56.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Mar 2025 04:56:39 -0700 (PDT)
From: srinivas.kandagatla@linaro.org
To: peda@axentia.se,
	broonie@kernel.org,
	andersson@kernel.org,
	krzk+dt@kernel.org
Cc: ivprusov@salutedevices.com,
	luca.ceresoli@bootlin.com,
	zhoubinbin@loongson.cn,
	paulha@opensource.cirrus.com,
	lgirdwood@gmail.com,
	robh@kernel.org,
	conor+dt@kernel.org,
	konradybcio@kernel.org,
	perex@perex.cz,
	tiwai@suse.com,
	dmitry.baryshkov@oss.qualcomm.com,
	linux-sound@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	johan+linaro@kernel.org,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v2 0/5] ASoC: wcd938x: enable t14s audio headset
Date: Thu, 20 Mar 2025 11:56:28 +0000
Message-Id: <20250320115633.4248-1-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.39.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>

On Lenovo ThinkPad T14s, the headset is connected via a HiFi Switch to
support CTIA and OMTP headsets. This switch is used to minimise pop and
click during headset type switching.

This patchset adds required bindings and changes to codec and dts to   
tnable the regulator required to power this switch along with wiring up
gpio that control the headset switching.

Without this patchset, there will be lots of noise on headset and mic
will not we functional.
   

Changes since v1:
	- moved to using mux-controls.
	- fixed typo in regulator naming.

Srinivas Kandagatla (5):
  dt-bindings: mux: add optional regulator binding to gpio mux
  mux: gpio: add optional regulator support
  ASoC: dt-bindings: wcd93xx: add bindings for audio mux controlling hp
  ASoC: codecs: wcd938x: add mux control support for hp audio mux
  arm64: dts: qcom: x1e78100-t14s: Enable audio headset support

 .../devicetree/bindings/mux/gpio-mux.yaml     |  4 ++
 .../bindings/sound/qcom,wcd938x.yaml          |  7 +++-
 .../qcom/x1e78100-lenovo-thinkpad-t14s.dts    | 25 ++++++++++++
 drivers/mux/gpio.c                            |  8 ++++
 sound/soc/codecs/Kconfig                      |  2 +
 sound/soc/codecs/wcd938x.c                    | 38 +++++++++++++++----
 6 files changed, 75 insertions(+), 9 deletions(-)

-- 
2.39.5


