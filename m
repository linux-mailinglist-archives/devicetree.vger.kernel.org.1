Return-Path: <devicetree+bounces-160164-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 85FE0A6DAA0
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 14:01:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 16AAB16B113
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 13:01:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EB8125E83E;
	Mon, 24 Mar 2025 13:01:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mFAdZV+b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337FCBA53
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 13:01:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742821265; cv=none; b=QCMkxhofJXBkUDr+3u7S7zGthTEH3M1CkOV4oD6Px2X66QrGLAvsdfZepP63HvOQHNhsoUl4KELq46mPDaOtQTs0684jluNEuvNKfg2nCuU76+rucoQW0TeTcatMsZ0MRreJc1fbPKgNhto3V4ax2+YTYx0DozYXgJZEks1eNOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742821265; c=relaxed/simple;
	bh=e+asD1/kySHtQyB/lOfwPMKIM/FlqM0vMt5Kru0ld6g=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=HKFkxJW2ZcYdrRy3QmZyGJCJ92gcQuMxJxrTGFG3Wl75/Ku2t1pgM583/qkgR/50vjOczlTzwOAunZb+7j2Q/g+3M2WxJQ2uCtzsa1U4vUFGiUKrSyEatG/OtmfJNHGtWKdV0y2YrU4GV6z16Jen4Yoy5we0lWs8ljNKe/UpABo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mFAdZV+b; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43d0618746bso28687055e9.2
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 06:01:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742821262; x=1743426062; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=f+jNjLycT3ZQAOIz+8wQ7nvfI7CnYsytMJ+JsnPa5OA=;
        b=mFAdZV+bDi0iz6bwZ5pecxN6/FbGc1z70UReMoutX/Y7slqZlANgGqfy5xmCQ7J5hU
         RYVOwq4y0RjQRUeUDKL1SzFeQMfwhfXx1OgIXPS4rEF1ps7VTsWElZprHtwLMHtJxhAi
         8/TB/2swa6ZGLt/lnKjduRH4LQoa2j2JHIJ3+UxZrMGMJwcScQFCT6a8CwTo3IsTokHB
         QDN6pWogktBClYzCL8a/oov8+31azCFMNEu2xAp4dkdQfO7VKgiatblWfbLq8y8Z32+W
         YMnGSWHREtP7pfMmtk7viqkYmUeE2qC8/LujxL67Ww3WV2v34PX8uBhTewZVOyNYBc3V
         EdNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742821262; x=1743426062;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=f+jNjLycT3ZQAOIz+8wQ7nvfI7CnYsytMJ+JsnPa5OA=;
        b=jQ02WdoC3Z59C++KPqMf/tHywLfdwxGJ7vdBhKCbaaGwXkOHXF0NOlATtmbvr3B7Zg
         oTP0sOq/ArKuRTw6Y/ewVTml6tKWgWgR7FKDV4TIDW7j24cbJwacvo9diCMsfFgFOFAX
         eUaP+aXwF9tnPU+ZZpERdrNv1rBDWBhLTto+BocbcUamu3KdGuh/wyPmv+UN5Ts0E571
         C6hi885uHTr1Mltkspt8kgZoKKZ7ukdZKZzv4t3OlOetoiCNUtp14oiGloW06rHim10L
         Ajwx7CsrVxMDHvBW42qpLzQt8d+N2Z4xXU8xS2f1BbDkO8DbdDeEvf/HE0OaXAhn7F6o
         O5CA==
X-Forwarded-Encrypted: i=1; AJvYcCW+elGWuw1f1085OZoQ9rajNd1Sw6z31XOojYmYMlXP/7lPCoyxBTpyYolBkl8VIwQQcgi8NArF+VfP@vger.kernel.org
X-Gm-Message-State: AOJu0YzRdhY7eAt85bXozrSrRtvHrC/px3MNi4EBg9CULYS2uHBig9hP
	1g37HZdDH0HSp3z7jb5W8VhAOF3/maB7WpFOKfUPCLPyqOGVhxBnBqTBvfeDIJ0=
X-Gm-Gg: ASbGnctAmQc8smnlHfkcO9lyc24lpNxU7JHvkmDsto2LjTV+pgPsZFTTaFGWBuOT7rH
	t8NvyitNLOqhpTcN/NPlwH1AN97TNV88wntxCTuIOm7Rhl0h4RYPQ1FgHva4ZlsE7GsKs2Gl44f
	11UIe7HDFLbNg8tK3NQdIdVcs7Lmh7oSqZw7fcXtX7QvAym4xa9G8oJBx1UQnHVAO60t8yCqTk8
	TflY8tCl26SMZlJo25bS6/Lwm+nvq35j+Y9R7oHYvw7koowof5tNVcUTeMzmZnB5qUOhCYm//gH
	9V43qUNcs1oz/TM0aHSmdgFs61y12iYVZyumA+iudxbjMbu362/+QLOPVQ91nyo0OodF4w==
X-Google-Smtp-Source: AGHT+IGz9IBknBvdoHaX2dPjOfY7K08ie1Ra/SNOt48wwrRqkVCUOOGWrJ8G2YTKz1/+6y2ctou0Eg==
X-Received: by 2002:a05:600c:299:b0:43d:94:cfe6 with SMTP id 5b1f17b1804b1-43d509f5a52mr93992365e9.16.1742821262372;
        Mon, 24 Mar 2025 06:01:02 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d4fdbd1c7sm122275975e9.40.2025.03.24.06.01.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Mar 2025 06:01:01 -0700 (PDT)
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
Subject: [PATCH v4 0/6] ASoC: wcd938x: enable t14s audio headset
Date: Mon, 24 Mar 2025 13:00:51 +0000
Message-Id: <20250324130057.4855-1-srinivas.kandagatla@linaro.org>
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

Changes since v3:
	- rearranged mux deselct to do better error handling.
	- reused mux_state for gpios as well.
	- removed tested by on bindings

Changes since v2:
	- udpated bindings as suggested by Rob and Krzysztof
	- cleaned up swap_gnd_mic callback
	- updated mux gpio to use dev_err_probe.
	- added Tested-by and reviewed-by tags 

Changes since v1:
	- moved to using mux-controls.
	- fixed typo in regulator naming.

Srinivas Kandagatla (6):
  dt-bindings: mux: add optional regulator binding to gpio mux
  mux: gpio: add optional regulator support
  ASoC: codecs: wcd-mbhc: cleanup swap_gnd_mic api
  ASoC: dt-bindings: wcd93xx: add bindings for audio mux controlling hp
  ASoC: codecs: wcd938x: add mux control support for hp audio mux
  arm64: dts: qcom: x1e78100-t14s: Enable audio headset support

 .../devicetree/bindings/mux/gpio-mux.yaml     |  4 ++
 .../bindings/sound/qcom,wcd938x.yaml          |  6 +++
 .../qcom/x1e78100-lenovo-thinkpad-t14s.dtsi   | 25 ++++++++++
 drivers/mux/gpio.c                            |  5 ++
 sound/soc/codecs/Kconfig                      |  1 +
 sound/soc/codecs/wcd-mbhc-v2.c                |  2 +-
 sound/soc/codecs/wcd-mbhc-v2.h                |  2 +-
 sound/soc/codecs/wcd937x.c                    |  2 +-
 sound/soc/codecs/wcd938x.c                    | 50 +++++++++++++++----
 sound/soc/codecs/wcd939x.c                    |  2 +-
 10 files changed, 84 insertions(+), 15 deletions(-)

-- 
2.39.5


