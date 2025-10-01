Return-Path: <devicetree+bounces-222912-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC9EBAF5DA
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 09:14:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9FCD417FCE5
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 07:14:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23EAA26C3B6;
	Wed,  1 Oct 2025 07:14:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cvhcmhwp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C2E926A1CF
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 07:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759302876; cv=none; b=WXEbtkciapf9TEebrl4BhBNUFLZguQCmwWh5VaZ2vfyg1TM6P28aEBVuhTrqovZtlCU0DlbK1Lake0KV6WV2czGp+aegTOIz0zSYsvzaNrwNNmnoUSfVOFVF97iY5KjodjuxkXINKiiossxFLjK1wcD/RwJezmlX4Dc7Y4nhfkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759302876; c=relaxed/simple;
	bh=EaHPOxmssSF62mBpn0FDhyXBbBjLH2p8NwaZdyrsCZ4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=ltXf8XxOKgqhS0u3iyOO/gjKB8b1RiA3hXAqSAWy3Z8t/lhfVpBJ2GFDXQM1MlVoJvqz/k5fp2ddFzd09MacjuuU3Y2+m1zFEdGfpxJnC/8l6LYcaKUGTETB4bOn/uJUHu0IF+VWMsevGZ70u1OJ4DCzv+XWKEwSwMC6NzKhCCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cvhcmhwp; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-46e4f2696bdso46202925e9.0
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 00:14:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759302873; x=1759907673; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6kf5dynhRLldJCNs2IEg0+64rtOtAeTZkEe5n/sgM2Y=;
        b=cvhcmhwpN+CYHFwKc8FacSSWta7oQtQQGV1BvRf/+y0O5n4yZn1Wg9hWpkOzJu/Kva
         kuAHfaw92L7Lbuz/SrEL3X4sMr+8BqMsHEOXufraq289vGvqv44FU/byk5xsIP8RtHfo
         +FlrVB+/jfrY2zUnAs5tM/6SyCGaXvtHpMAumfe5/BNh3v5TcI6XX4uT/RbzPuhoz0O6
         6gESww+Not2HjrXS2g5Ryvc0X/U93ePms6yQhzRznvagp9Fin9knCkJ8As1ZDnZTn9aU
         xlLFNRAKiDd+Tt90/h6pLIg2e3mGVh38wJPsGE5Zvmp3bzhggHb4Ex/aIj++R7AX3S5l
         vh0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759302873; x=1759907673;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6kf5dynhRLldJCNs2IEg0+64rtOtAeTZkEe5n/sgM2Y=;
        b=nDPlwxiLyFKHsNodvppM6X8C2f173oQ+fkD953ZbQ3rADEmnRmRtul+UUGi7JhXF2D
         ry7jL4yPhCRGK+fUe/BghCI9sx12oyxiQpOWuCV+uFkSkpCvSfmQdOt0/sjWciCcdfuH
         2xlDai8sQdLcTy4sI1zsBaCES1R4oW31xxABoMkNO0SqefmZBUXP2KzEiuhFnU1kOiQp
         MmDJEvC7chcTNYt1htYGnM2qveBs3acfzf0rJj98DmYvSn8WE6aTTVrtlu4yj85w9fTp
         HMyAVxPu4ONDDyotJqwgws0l9N/nVoa3Q8N09LQAg1czjrZOLQbRiijW2fHt/4/yv3pN
         s3pQ==
X-Forwarded-Encrypted: i=1; AJvYcCVn9riNk03Ol/YdaYJ1nZ93BgEheDEj3ZQwnyptxFKVZFBI/eHF5+xpLpa8Bu1ZoZdUPqGbC57r8ILm@vger.kernel.org
X-Gm-Message-State: AOJu0YydKbNkpicblGDYHpT8Eh//eVLKkxMlcZtU5nt7CFxbsQA/aHCy
	qCEpt2+CSpxEPQsDQLy5ASALoL/QVeoGGpNxrD2gsHAGR8M5f/3QQaG2TFOuJ0J/Mfo=
X-Gm-Gg: ASbGncsSgjgc//MQ7L3ehsHbO1bvBHTwU+GESFDxswrXM5wV0SyHmIqiLf+wSTXuqVR
	j3LFQO+xEul6dRhOoNxCrr3dh0/xHULbzXDT5JElHMDWDEOJVo/Hay/iM8iZwh3w1hczz1Ta9C/
	i/bJtVT3zrkhRhKxK/D22OgCNHwBgkorSxErLhbKJs8yg6AwxN94Fh3OcncBwMcCYuh6RrT7dFz
	Kt+GCw8OhcYNEY1yYr/gmr5bdKyJfMfN4iD8lgPTSG/lftdoVIel9YgS1hjQd5paApSaW2T8TTF
	KAujUSU6FFPoOJFSad0QffSXftwp+5vlSmrFmMzJ0XWAsfat1C7HJXV7ieR7Pi07Si67fVdClN0
	9bSj+9Z44BXUaIynF/7A9bEx5Ek4T3dm5slfVrr99USl6uPM9/QoguHjCAX3ew7JKomw=
X-Google-Smtp-Source: AGHT+IFowAj7Hze66bm6j+kw015O7nlbY2diRFniCjTtOMsjXtusPU50OP7bOKSBUfU7OwfjEU6VXQ==
X-Received: by 2002:a05:600c:8206:b0:45b:88d6:8db5 with SMTP id 5b1f17b1804b1-46e612192d5mr21887525e9.12.1759302872517;
        Wed, 01 Oct 2025 00:14:32 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e619b7e37sm25185825e9.1.2025.10.01.00.14.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 00:14:32 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: dri-devel@lists.freedesktop.org, 
 Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: Conor Dooley <conor+dt@kernel.org>, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>, 
 David Airlie <airlied@gmail.com>, 
 Jessica Zhang <jessica.zhang@oss.qualcomm.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>, 
 Simona Vetter <simona@ffwll.ch>, Thomas Zimmermann <tzimmermann@suse.de>, 
 devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
In-Reply-To: <20250904205541.186001-1-marek.vasut+renesas@mailbox.org>
References: <20250904205541.186001-1-marek.vasut+renesas@mailbox.org>
Subject: Re: [PATCH] drm/panel: ilitek-ili9881c: Turn
 ILI9881C_COMMAND_INSTR() parameters lowercase
Message-Id: <175930287176.425863.10274979935592534719.b4-ty@linaro.org>
Date: Wed, 01 Oct 2025 09:14:31 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2

Hi,

On Thu, 04 Sep 2025 22:55:15 +0200, Marek Vasut wrote:
> Make all ILI9881C_COMMAND_INSTR() parameters consistently lowercase.
> No functional change.
> 
> 

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/1] drm/panel: ilitek-ili9881c: Turn ILI9881C_COMMAND_INSTR() parameters lowercase
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/02b6babf22eb60d86b4030f08204f6e7853da4e0

-- 
Neil


