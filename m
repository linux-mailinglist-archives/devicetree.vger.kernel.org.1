Return-Path: <devicetree+bounces-229575-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 762CEBF9E44
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 05:59:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1C68A3BBE3D
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 03:59:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 308512D6E64;
	Wed, 22 Oct 2025 03:58:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ci/T0A5V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C28052D5C67
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 03:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761105536; cv=none; b=jY7c+Fwb+sMUML9daky/KMly2iuV+arvjkHRO3VnU8LydU+aG1IFJgBfmcLG7yNxQQY0qKgSXXR6nuc5rakVEdL8zKxqpm7U0uutfytbnkm5P/k8lp0GqiaR1xOy7KF8CCuLsAUAeIagOymfYJ2AP6+OW4kE83+5UmMMPfHK2r8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761105536; c=relaxed/simple;
	bh=VkwRwoyvKaQ5QVA7JKJ0O3zkd+6+dznsjpyKtm6MHtE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=HtqBXM+ZBcJWlVTdnTa+n+Uej4wpivqL6mx4hLfQ6GQkCNYZQ2oLlqOq31GeCrutD8B+ysuFoO/djkIqxAotclVv+FvUZPHYHsVtLKQsFRH+Mvcnwv1fTPFMWUHuk4BsVRSGYZeG3PgdcgAmOvkt9cl0Aa/jBe7wzEio5LR+ZFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ci/T0A5V; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3ee130237a8so4076128f8f.0
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 20:58:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761105532; x=1761710332; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=O2ZSDEAy1hrlTsCtb6+Des1vPZi3/b+xnBthz/KUkPk=;
        b=ci/T0A5Vje/VYkRvOVaHE/DxhSklRucuUpkXLEgbY+grV8AYie+j/4bh+yiZ/yZ7t8
         G/eHYFEml6NAEW+jnMXb9R13mXKKTnI4a5WfW+ZORpvuWgL/gJJctqAcG3hHOjVEOxdr
         PEWPt66pHhMlLhWVgHEuoBdc1XG1YVYBIj4vxSdlsaYPhpKzWK0WRbUE7O84Lcix/EK7
         fa6+vT1TJNNIM/fbDH6h5sU+Y0ANBQ2E2WfnQXs//HYMe+n3K7SvampE+ht32fgal8Xy
         o5tj3sQ+CxeF847pqzDm83686GLwoLeVCLbQGzAkXXFhPQBWsHk9gnwAdamDQJ6Af/q1
         kpmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761105532; x=1761710332;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O2ZSDEAy1hrlTsCtb6+Des1vPZi3/b+xnBthz/KUkPk=;
        b=eJcIRww2L28yzzAoC0zGtJPBNlng1s8aiOCC+n1yGU+jWYw3VtuzGs21VCXSj5j3C1
         dkDY/fbJfs0DroaZsOncaSWBQalPLstTp7vFRA1IbNh/7yu49LAk4dl9cv/d56EvRgQ6
         MxygaOSFaiue/X4EUa7WxAEGQd4bgiKe5Th0q50TvDhEcCcYXstgqQetiq/E+lB6CUhM
         xCs8Dxa/+EFC1S8ToHZ/GNlea5DnjfzwBJZL7becYhD71N/agu01O1te2mDWihjAt0GD
         K330YSGCAiW2rHvrMTsuv/ZrNEOIcaqDKONiUXdXH26dvxVnN98VaTDB36GbixfZJsL1
         PTjQ==
X-Forwarded-Encrypted: i=1; AJvYcCWFh7mY1+sEpcYFK6bl+roDfq3xy8VLh4/jgQ93fo09arM++gl8c5ko0ETgM/WTF4c63MGzO9lxkRSR@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9Xa8uFu9rts1Rg/mnwOATVtiNDNY6p6o28TLJGA3kqXs7xFbq
	JpGfmUPlKMY7xQhACn/OoKFVpzgHQgqNPUt9UPyUlME0ILQ7bnThSlCT5KEqMC/zEcI=
X-Gm-Gg: ASbGncvMFPpqLIDqbhFEIe2aJ73cD9XfIsWae8QOs2/ZGE1EDJshkR7t81t67UCTEj9
	r7M2GtL9rJd3OuBuW8ge1TydGUf9WySN8IBDmOEf8S+gB8ufojrKmQy45gGeT/GImIYU30RQ/rb
	NHeJ77UQwpdlkkIGr23RX6RuR9HR8eYXFuYbXl4BZCLJkQPJTN38lucysdJAxVCiD/s0v+VKl8w
	6yQm4AdFPmAdYpM9rqvhszIBl+xrXR/mm4iKEIFi1keVtjnBalaVy+g/nmmmk44RP69MgIcaAog
	wzLzR5nR7AkqbJXwqZ6emE6bJXxfgE8WJdOE828TSL3hAYY/f7TtzEY1VbEbyROXHaJI8et5YAv
	knB6xlPPKXXrNO1gg5qdvw1nDaw6/3c/bTa/BjopZqzqBolCnoQPmW2glM/YJswdf4jdNZ0NLIG
	mzKoAJxw==
X-Google-Smtp-Source: AGHT+IGUG+W0wf+mP42MvzRZOU9r8TQGApLm+D0SYiWzeMUaEK7m1AadbWpswXMeOq5qzD8NLou4HA==
X-Received: by 2002:a05:6000:612:b0:411:f07a:67fb with SMTP id ffacd0b85a97d-42704e0ed95mr12103418f8f.55.1761105532102;
        Tue, 21 Oct 2025 20:58:52 -0700 (PDT)
Received: from orion.home ([2a02:c7c:7259:a00:11f4:2b3f:7c5a:5c10])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-427f009a6c5sm23637639f8f.28.2025.10.21.20.58.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 20:58:51 -0700 (PDT)
From: Alexey Klimov <alexey.klimov@linaro.org>
Subject: [PATCH v2 0/2] Sndcard compatible for qrb2210/qcm2290
Date: Wed, 22 Oct 2025 04:58:48 +0100
Message-Id: <20251022-qrb2210-qcm2290-sndcard-v2-0-32e9e269a825@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHhW+GgC/4WNQQ6CMBBFr0Jm7Zh2LEFceQ/DYmgLNNFWpoZoC
 He3cgGX7//891fIXoLPcKlWEL+EHFIsQIcK7MRx9BhcYSBFtVaqwVl6Iq1wtg+iVmGOzrI4dFw
 bMjWzPw1Q1k/xQ3jv5ltXeAr5leSzHy36l/53LhoVnql0RveWm/Z6D5ElHZOM0G3b9gUW/Strv
 wAAAA==
X-Change-ID: 20251007-qrb2210-qcm2290-sndcard-da54245aae3f
To: Srinivas Kandagatla <srini@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Alexey Klimov <alexey.klimov@linaro.org>, 
 Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: b4 0.14.2

This is a small patch series that serves as a preparation for
adding HDMI audio playback support on QRB2210 RB1 board.
The patches here are for sound subsystem. The other series
will focus on qcom DT files.

The original series where one of the patches here were taken from is
https://lore.kernel.org/linux-sound/20250302-rb1_hdmi_sound_first-v1-0-81a87ae1503c@linaro.org/
and sndcard compable patch was added as new one.

Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
Changes in v2:
- rewrote commit description and subjects/titles where applicable;
- switched to SoC-level compatible for qrb2210 sndcard, therefore adjusted
  DT schema changes;
- Link to v1: https://lore.kernel.org/r/20251007-qrb2210-qcm2290-sndcard-v1-0-8222141bca79@linaro.org

---
Alexey Klimov (2):
      ASoC: dt-bindings: qcom,sm8250: add QRB2210 soundcard
      ASoC: qcom: sm8250: add qrb2210-sndcard compatible string

 Documentation/devicetree/bindings/sound/qcom,sm8250.yaml | 1 +
 sound/soc/qcom/sm8250.c                                  | 1 +
 2 files changed, 2 insertions(+)
---
base-commit: fe45352cd106ae41b5ad3f0066c2e54dbb2dfd70
change-id: 20251007-qrb2210-qcm2290-sndcard-da54245aae3f

Best regards,
-- 
Alexey Klimov <alexey.klimov@linaro.org>


