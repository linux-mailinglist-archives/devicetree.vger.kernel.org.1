Return-Path: <devicetree+bounces-161197-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 31FD7A72D4B
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 11:06:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E8730188A58A
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 10:07:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3297120E01F;
	Thu, 27 Mar 2025 10:06:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JSW/2Sau"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E1020CCCD
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 10:06:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743070004; cv=none; b=fa7qZmlz8FgFQFa48BHxmyYdVGnS2skuzB9MHN2DYXUiDnARRRFC5o35u5mpgXsdadyIx5w6J5YsCu7F2uuEwQCuZs6naM9X++QD498RCZ7D5QWqCGPqZ7MoziVBHhI2OrJE4v9aHOVW2yYzQBr6VjLNTPXu+Ghn6NBIDtD8H80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743070004; c=relaxed/simple;
	bh=8S9e6bRbJzlf32iYNYG1VHGj9YP7JA4gMmMOneOUa0Y=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=W4jWt4SyiKGwX7NulZN8o5qCysqVZuJtUv5FEvMaE8+xAZxufNqT04ebHoi+S7ULITf7926YM7JGQg5HYaViwMXWbPtKBT42TEpwb9rzHRC1yJqJzV4NRJiOKNIosx/JdVd2H310+K40aK3feNt29bSgFMLDToo4yjDHMQKSbJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JSW/2Sau; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3913cf69784so515760f8f.1
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 03:06:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743070000; x=1743674800; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3+M4GNUUBAuIh9X1Zg/lIAFPSa4InwqS6apGLD7pPwU=;
        b=JSW/2Sau+9vnGzsRJ/rShVFtS2xCJYCd7IMYrCmnXsgzt6appo8e9rpTGtqyI6mdaP
         JsV9tBG2BmzLchmspOONtcap7CGw+zC4/4dqGXkSm4OIKVfP0CPHfHZjcRsO42/HBm53
         b+lxs3BewC/Obydi3EoirwnBFEIMh8M8jwLZpOd6e6v/8XPVWEur3v4vJ8G3+ffBPdyo
         ATEaXd/ys3bLWCx6waTqeLklQ9ZlKltAhKHWbYBV8O0rYyFG9Qd+e7Jvvd3LRYMJzBq4
         /L26oVg0uIbQ/BI3fDTs8EBzuXaPNxTaMDrtVZHrPCkkv6pQoha2G4UiS0dhfNUwALJZ
         HjsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743070000; x=1743674800;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3+M4GNUUBAuIh9X1Zg/lIAFPSa4InwqS6apGLD7pPwU=;
        b=A9MZQibNh+cTyxB8WGZVD55ajcGOq3cOHpd6FNWgQDMoAzZXQ5glAmbTkloLFiIquT
         +/wE3X8eCbYYUGDeeP3KOzIxch12N2qK30eXg9jTm3zYARvdCEZ/ORVBPjgB/jyNSYP8
         Bdh+EjBrk4V9y/BuouRgzxiyzI+aRycFij/9Qwf7ecgK0vuvEjNj5scDjWlg7E6HbWAw
         wC6uPQJaOO5w5bEj5thbdb1XGmh2QSwrJKpVdrsAxdScj02WW1mFNP9ku+0ATMc5Gi/X
         S2J8pjRBU2D9SiqrCnLKpgqEpZPD3CwDsK2MfLYisCkdsW+fsv/9Jx3LopBLhtMWWTYi
         54Yw==
X-Forwarded-Encrypted: i=1; AJvYcCXvwPLAZtpTHLcZagfslXfOSRvKS8gEVy0vXj7+TeOuNoZf2QwbvXHjDpJS50gEPbszM99fxlc+YGLJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1fJCyTC88VKvvr+GqZkFGQmPicJTkLgyDRYfEawhuroG7wQI/
	GzP56vExWmWUTWHnsFwO/OYPoB64qkSmnrEIEwmr3I5BvdLIsZ4vCYOio8DyiCE=
X-Gm-Gg: ASbGnct+oPeMyd+6VbJ5nyoAT/RZVKSaJ7jrEuLEVd6chYQrIlkFklOL1oi4hviWn0z
	mAZ3fwC+MSBE4eI4Ezd4+A3V8WLJ+GC6JFF7u0+j02jr+S7MlbHIGtDk5/aogD1rPu5EncoD+nE
	1US86jw01zNUPpzvilzufPFYxpyVBUewzvGYlfSlk2w/cm34IWBLz2wwSMX7VQuwMNN7mTdlmNU
	VXEjT2SE3VoVknYUotvOjX5bTCq8SCz/s/YL0sLIYbmP3mPTTu/gV16SwbIIN6yZPw+Qc1kd1K+
	usehCqFs22zzicixRkPtenguoIycnWaQpXdhRFossXe951Hj/ktGb8Kt8FB4yKH0wxCusQ==
X-Google-Smtp-Source: AGHT+IGF5C8wwArWoaTnvg18E6/GcMnWhwo06yT5gdG8w6E8bc9L3nKzs7+GFZLtwrNmL7hDXvjOFw==
X-Received: by 2002:a05:6000:1889:b0:391:3124:f287 with SMTP id ffacd0b85a97d-39ad174b759mr2590951f8f.16.1743070000129;
        Thu, 27 Mar 2025 03:06:40 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39ac3ce3dd1sm10843204f8f.88.2025.03.27.03.06.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 03:06:39 -0700 (PDT)
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
Subject: [PATCH v6 0/6] ASoC: wcd938x: enable t14s audio headset
Date: Thu, 27 Mar 2025 10:06:27 +0000
Message-Id: <20250327100633.11530-1-srinivas.kandagatla@linaro.org>
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

Merge strategy:
- mux bindings and mux patches can go independently
- ASoC codec patches with bindings can go independently.
- dts needs can go in parallel to Codec bindings.

Changes since v5:
	- add flag to check if mux is selected or not and conditionally
	 do deselect.
	Also proposed mux exclusive apis https://lkml.org/lkml/2025/3/26/955
	However, this patchset can go as it is without exclusive apis
	We cal always do the cleanup later.

Changes since v4:
	- do not rely on as-is idle mux state, exclusively get mux

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
 .../bindings/sound/qcom,wcd938x.yaml          |  6 ++
 .../qcom/x1e78100-lenovo-thinkpad-t14s.dtsi   | 25 ++++++++
 drivers/mux/gpio.c                            |  5 ++
 sound/soc/codecs/Kconfig                      |  1 +
 sound/soc/codecs/wcd-mbhc-v2.c                |  2 +-
 sound/soc/codecs/wcd-mbhc-v2.h                |  2 +-
 sound/soc/codecs/wcd937x.c                    |  2 +-
 sound/soc/codecs/wcd938x.c                    | 57 +++++++++++++++----
 sound/soc/codecs/wcd939x.c                    |  2 +-
 10 files changed, 90 insertions(+), 16 deletions(-)

-- 
2.39.5


