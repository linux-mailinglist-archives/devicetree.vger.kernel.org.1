Return-Path: <devicetree+bounces-127173-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F0FE9E4C46
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 03:33:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5CE1116A51C
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 02:33:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90521187848;
	Thu,  5 Dec 2024 02:33:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xnEOumgz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE4E2F9F8
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 02:33:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733366031; cv=none; b=tt1oqopXcmUZD/1N6GXY3YmDWt/Mj8O7LU05TcBQy00GKiQ448kC2Hy1PjvUgIAqUiQxZocYYoh7CpBbV6vdWfVCctGMFM1V+vFGp7E4PbhAZXXVhKtr+NkzcDshZcbmmr087RcGO+ON2m29rYYt/M0GokVZFPznAVVc1fMiMmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733366031; c=relaxed/simple;
	bh=jpl9iVOYWeTiM6kCN3P64k/PHIdrq2ziUsX8zdUfXa4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=p7g1FW3ktOwp+lUTzPuFHsQULyTAJFR2NVDTwtP+OZ7CmPeo4bNTgVKSrNghidYGga+rv6z+PcqHGVx314a8vQK+CUTI/xiHXABzLAZI3DKb89R9vwRsYbrJZLzoJvshbapH3XGtlLHdYW14fTlpn0e90AOoy1QcP5ANEp/XmGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xnEOumgz; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-434a10588f3so2638545e9.1
        for <devicetree@vger.kernel.org>; Wed, 04 Dec 2024 18:33:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733366027; x=1733970827; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LEvSg5n9dPi25fVhvj+TfkDWWQ8DpWSUc0fAXy4y1N8=;
        b=xnEOumgzs87VUtt8xN8gVEOeFcrc5lUREn41aCvYTsk7FU1GHd7feedvLt2NHseiiN
         cik3i880J+9mc38lBEN2RR/KhmB8+hFjsCGCibyXi8JEexZh3H+xuyGvHVcna2cZQBLt
         JmClvzxoAyn9dg1Ja8hbWrtpffdRCUBMos/rOitmhfz84Tn3kQ94Yrf341eXW9dCSueB
         Tm9xiwnceU9zUH7HQq/igN6lqHGGKU/YpED3KR9ezKMUUol9PFq6u4EXbFs43H36857y
         c4pMsdcvjz+oEOeeMpG+DY3FN0ZpUvv9PwtQhF2XMxH3rOFVPnXfExFWW0JF6Hf+LSkb
         VVgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733366027; x=1733970827;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LEvSg5n9dPi25fVhvj+TfkDWWQ8DpWSUc0fAXy4y1N8=;
        b=sFmLtzltoC4AroaIX9g9hqlR9OLYXh9UQoumTGEHhecXhJStXIv0yzg0znfPth4kW+
         RnoWTpaVtTv9PyDRS/tX3ylgcBDESul4lOieYuVgYLsD9k2u2HVRbe5IHTntyI6gSDwa
         aAbfveITHTprIRbxQRpgdXJ9V/6cqjXEDtrKMZNKG1y7bHOlBkRf29cpjyCC/afRvxol
         4zbdynKYgQ7Coz9pwja3dcyRxD9XhUfZtdaxGUH7AAC88rcQOUBdrGg2pW9YXbnYT+J7
         GUbOHgFZaIsR7X1HAcwZkrkXbbzZyRClR4m8TVMPEo57r2x/grq+tgjIqWwsCRrXbCqY
         buPQ==
X-Forwarded-Encrypted: i=1; AJvYcCWEwZ5wzYleBYRMrNYUZoifrWFS1I53Jcg2gsfUzTRqVFWumnXbA0WeYpTORTIuCjm6b+FD9TjNEICn@vger.kernel.org
X-Gm-Message-State: AOJu0YwN3wdUD/UL3jqVURzXV3iAfJgEWKrlFt1T4KypLsJw5lQj319W
	dtXppbSWeqv6ySyCBsuIoCooTp9eGr1GZdAKuvnwuh2A6SlpmmJbLAR3s/Mi8VA=
X-Gm-Gg: ASbGncvdtwr3jCpRg2dEfelskLKhrn60pSvroqmup4aMv4+C66CKIUCoyJyJPDESiRP
	1+kgm+naGQ4jlVX89Fn/8JWYVgt5JkkcUJ6CXpbL/pjPUzt67WZUHEoC5RSgQJR9ZibzzapNdTy
	VQiEClfSfg5n4DM/RkNqbI4yud/cdzyxdr9PustHsgXLq2PSS9efA2U2f1E/BGYENu4ONgvr27F
	IcnobWh1HMuSSfs7cZdmWq2UDDFFuCqgoksqc9ujK7dLdVAyu6aCm58ud4oLOfFpyDk
X-Google-Smtp-Source: AGHT+IHh2by/doGLjpPWCzeNRn54791OntfvKje7jWHAMUb5dn6DTgMFuSYzcKySXVmKinBfVAjamw==
X-Received: by 2002:a5d:5f46:0:b0:385:f349:ffe7 with SMTP id ffacd0b85a97d-38607ab5c9bmr5625677f8f.2.1733366026988;
        Wed, 04 Dec 2024 18:33:46 -0800 (PST)
Received: from localhost.localdomain ([2.222.231.247])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434d5273440sm44444325e9.18.2024.12.04.18.33.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 18:33:46 -0800 (PST)
From: Alexey Klimov <alexey.klimov@linaro.org>
To: broonie@kernel.org,
	konradybcio@kernel.org,
	andersson@kernel.org,
	srinivas.kandagatla@linaro.org
Cc: tiwai@suse.com,
	lgirdwood@gmail.com,
	perex@perex.cz,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dmitry.baryshkov@linaro.org,
	linux-sound@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/3] db845c/rb3: add i2s playback support
Date: Thu,  5 Dec 2024 02:33:41 +0000
Message-ID: <20241205023344.2232529-1-alexey.klimov@linaro.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There are i2s signals provided in low-speed connector on such boards
as required by 96boards spec. Looks like it is possible to actually
playback something via these pins after adding missing parts here
and there.

I tested simple widely available cheap DACs like UDA1334 and PCM5102A
and they works just fine without need for mclk. I guess any DAC that
can handle 48 kHz and 16bit will do.

In theory db845 can work without mezzanine board and this provides
one more use-case to playback sound and not all mezzanines have cosy
audio connectors.

After staring at
https://patchwork.kernel.org/project/linux-arm-kernel/patch/20210621074152.306362-1-judyhsiao@chromium.org/
I suspect that this might not gonna fly since it requires dummy codec.
Or maybe specific half-dummy qcom codec for such use-case is required to
verify hw parameters. Couldn't say.

Alexey Klimov (3):
  ASoC: qcom: common: set codecless link to be a backend
  ASoC: qcom: sdm845: add handling of secondary MI2S clock
  arm64: dts: qcom: sdm845-db845c: add i2s playback support via LS1
    connector

 arch/arm64/boot/dts/qcom/sdm845-db845c.dts | 43 +++++++++++++++++++++-
 sound/soc/qcom/common.c                    |  4 ++
 sound/soc/qcom/sdm845.c                    |  5 ++-
 3 files changed, 48 insertions(+), 4 deletions(-)

-- 
2.45.2


