Return-Path: <devicetree+bounces-223985-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ECBFBBFF43
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 03:26:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ECB8C3BCCB7
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 01:26:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA64E1FC0FC;
	Tue,  7 Oct 2025 01:26:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="S0dVm77e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3DDE1FBEB0
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 01:26:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759800374; cv=none; b=ncvt29Z00WeNsoVE/qZJ88HI105ChHEu5C2OVQdk++o9/rs6nwIOgUJCumcIEK6lu9DPh/AKJQ+kNL0cqdibDKpKroFZ9+mIyorbezv2R7TQG9BD9x75y7A/qY1psszwLoi9BaitgmPBuc0LXmrti/Pv60DNfdk8hZwXOjbZX3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759800374; c=relaxed/simple;
	bh=16DquKhHf4rKURRSNctoiZxsdCnEHoGlUqmScEx09GE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Sc36hqcJbA18sVnWdhsoBEwKN9uOe1EGnK1hnHZTvOnMFRRkBVpkwlo4Uu9zxZcPWH8+Q1TGMrCQ5qi3RmnMBfwYOicLpAf4P9dVhkTCpAqiT418Diwtw0kEstEpbO451ydl0gtXhruMOg5V7zhEVk6nuo/l5VQ7SyAAqY+wToI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=S0dVm77e; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-46e4473d7f6so34387775e9.1
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 18:26:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759800371; x=1760405171; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oSNduwIg7jI6jqDFPflXbxR6x1FoXK0RkqCfhQ+iHV4=;
        b=S0dVm77eoTZP1SINrrdGH3u9KkYmYstgGSLMvi6VbH5zztldflqG5ErMqizS6X4ocl
         ng8uWjJOBEtIyFCbXUHbRZdnYeBPzKYNZZKUvrmTZX5qHN2FeYYR27VxIGVk26uxdKKP
         YqjI8NS/AvSj2l3c3KDGsG677K3VF8tEMWIa9rk2LZwpMkp/CxquvCX6Ow4JbKWJjdox
         0ncGTFvkYT2e+AIdC/wzPE59GbijlVrJsyHamujulHk+tiGudrM/rfCRchrFF8U+JLts
         DSTHFIpIE/doTAauq7KLTcKYid+peWzYDid1D1uMY8+BQdvJAER9fyu9ArfiHjm9z1Pn
         hlfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759800371; x=1760405171;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oSNduwIg7jI6jqDFPflXbxR6x1FoXK0RkqCfhQ+iHV4=;
        b=cQrqvoV8hhJmcn5zPzUKTzuYte673qLTDHPAzlnQzUiqT5cScEeQGxv4TqDopr5Ox/
         JksRq/ZFHuOATtM6zIo/xUXqfOO8mm93YtYS98NGTWUKL7R+modb7PQ339ubhw+n0Chj
         4x9xZ/fcd8G9LQGjnKe1JsAR1cNBhkWYLI8HNH7qV01srOXxNu1UCJLpvxFc25ylUxFX
         7llBeRZRPMNknjR3T0yNEG8iFKWbB/O140W9Dy4Gp/YdP+0rRgV5FnQQHXlZ6s898J54
         yn66vVPCZ9rSgkSSYlxUxLXzkgQgVhK7d+9TR/k0nnBy5dqXCLwx8GXKNoG/XjQ4dHYR
         6hLQ==
X-Forwarded-Encrypted: i=1; AJvYcCUzhQ3tJRaO6hFgQdZoR3NrBX018xKNKOi0Q+XKaTo8RAB5oEQf+tINs3grPuVmYunpRgDsjmOWZcxK@vger.kernel.org
X-Gm-Message-State: AOJu0Yy30LtnDwGLTzGEGVv8J7OyKgPxtDWvyvwzy6KI2Og930WC6A90
	xbvPULe266io7/vlrBNldoz1z30l8p6SKK7vlEVcDjx0+KAyksTr38HzvN4TKmORH1f9zplbuaK
	JstTL
X-Gm-Gg: ASbGncssRK29OfwZE5WFTIBzmRT8V4Z38XHRiHlS9qosl2BzvCUR0+eEGIyY4bICDqN
	CGKDcVfYtS+6sce2nivSeRqiHUL5ElkAxd8nrAjr/fkSnxZHz64pCWZXVlR8BTeoXMGGCDB2S7N
	t/oeeKa25Tvdl1lPxCriOf407MTd2/cNXk48iRHumLxVj2r9jwaTmLvjJQY5XJ2hsay5apAz135
	fzGJaNswE/nIerhrHEhtpNpOTDnnTsY2NC91hYxKFwjelZgqNGbgi4PCUBCwl+9oMvj5tbrC2y7
	6euj9+p3cyl86HQzfOCOHA4/lhAeYrLCX3rIxYnmKHoqVoa4gRWBK7OYMuRjPhrRVBdvjwQumQS
	EdX7BjZSRHxoj1ow+fip7xPV6uW0j/4+7uEr9MKq1ztmNHzt4V8zsmNnHetn1l8BXDlU=
X-Google-Smtp-Source: AGHT+IEqCjJVNQ+4Qs4Y8SQUQR2vF3o2dNkE/MGT5wV1/bzYlB/WElOfwkhccFVlq2M0O2ZMoNgvfw==
X-Received: by 2002:a05:600c:350b:b0:459:e398:ed89 with SMTP id 5b1f17b1804b1-46e710fe3a0mr87258455e9.1.1759800370875;
        Mon, 06 Oct 2025 18:26:10 -0700 (PDT)
Received: from orion.home ([2a02:c7c:7259:a00:22ae:baa0:7d1a:8c1f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46fa2d52a71sm7410915e9.1.2025.10.06.18.26.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 18:26:09 -0700 (PDT)
From: Alexey Klimov <alexey.klimov@linaro.org>
Subject: [PATCH 0/2] Sndcard compatible for qrb2210/qcm2290
Date: Tue, 07 Oct 2025 02:26:06 +0100
Message-Id: <20251007-qrb2210-qcm2290-sndcard-v1-0-8222141bca79@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAC9s5GgC/x3MwQqDMAyA4VeRnBdIM8twrzJ2iG10OdjNFEQQ3
 33F43f4/wOqummFZ3eA62bVvqUh3DpIHymzouVmYOIYiB64+sgcCNe0MA+EteQknjFL7LmPInq
 foNU/18n26/x6n+cfXO2mxmkAAAA=
X-Change-ID: 20251007-qrb2210-qcm2290-sndcard-da54245aae3f
To: Srinivas Kandagatla <srini@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Alexey Klimov <alexey.klimov@linaro.org>
X-Mailer: b4 0.14.2

This is a small patch series that serves as a preparation for
adding HDMI audio playback support on QRB2210 RB1 board.
The patches here are for sound subsystem. The other series
will focus on qcom DT files.

The previous series where one of the patches here were taken from is
https://lore.kernel.org/linux-sound/20250302-rb1_hdmi_sound_first-v1-0-81a87ae1503c@linaro.org/
and sndcard compable patch was added as new one. Both are basically
done as new ones.

Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
Alexey Klimov (2):
      dt-bindings: sound: qcom,sm8250: add QRB2210 and RB1 soundcards
      ASoC: qcom: sm8250: add qrb2210-sndcard compatible string

 Documentation/devicetree/bindings/sound/qcom,sm8250.yaml | 5 +++++
 sound/soc/qcom/sm8250.c                                  | 1 +
 2 files changed, 6 insertions(+)
---
base-commit: 4a71531471926e3c391665ee9c42f4e0295a4585
change-id: 20251007-qrb2210-qcm2290-sndcard-da54245aae3f

Best regards,
-- 
Alexey Klimov <alexey.klimov@linaro.org>


