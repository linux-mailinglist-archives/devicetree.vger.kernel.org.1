Return-Path: <devicetree+bounces-225790-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B4FEEBD1059
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 03:01:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A29BA4E456B
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 01:01:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58A471F91E3;
	Mon, 13 Oct 2025 01:01:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="r3HK5yee"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B26041F582E
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 01:01:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760317294; cv=none; b=l9zuxQX+pyj0hy1TzaWabMGUq4pHpuHCltoB36n+WzdyGSQSYwvEPy83T5mepe3Wq1b97CySPuhgyGmHk4/54LxzOa62MQ2DMCdH9M1/kdrN1KFlihivuzF01lBemvFwvaX3ceRXGZV64bYFG15Y4qThHp9oSrWUt2CFx/9yS/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760317294; c=relaxed/simple;
	bh=dhrLxPGTCnTlpUoyVGvUo2ddd4H0lO2MQd8iMkm24hk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=CPM5HBPGlMVTMyXtreQvp0s6IOr/yrJ5xIdlEiZRm6/3CmSLS4o/5jXLvuW1zz+16CCU0SsyUOsjxLfsvieKNGjliu/gQGRCgS+7ON15yjSTwxtORWf0Bf82OW6feIYpijV95XW4JkR4wTY0E6jltgQfggFdj3tyAejg2M4cBiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=r3HK5yee; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-26e81c17d60so8428675ad.0
        for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 18:01:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760317292; x=1760922092; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CeD0ycGia2aeOxgxjZnlT8Vbvac6TmHq5j7KmcNWbBg=;
        b=r3HK5yeedWMBhfa0sYr+F+SLA2HAqukwK1kkftd9moxEbAJo4Oj3nDf4Q40DsHMmJl
         7/hJoemEvN5jh5h/hXpyscpunQ4Nm2hLgM/yRdWfYMJ9rArtRgBF5KVujjzun7903gfx
         h5+8wJEMeFnK1lw+XYEeqm8tgXXvDp/ZaOiH2C+keKa2TsuOm9soFf2klWvLJF9yb4SW
         d+0ABNI+gwAvO0bse3699P17g1wc9Hyl1lCaxBTyv1IaLIoilgNk540WLyaDi49EYc0J
         02tJw9h13nrC/6wHqLO8XEr7NkO5kLQLtTmKOm8cIcmd4W5VYGSwlDKl1XNpv1YQ6gCD
         98Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760317292; x=1760922092;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CeD0ycGia2aeOxgxjZnlT8Vbvac6TmHq5j7KmcNWbBg=;
        b=sd0EfacwqmpsSba+zxE4bEexN7IB5+qKZq5XAZ1ViYpocCEDR7EqJ5u0SJtCyls0sb
         rjlcDFK+XmM+U2G4tGCwp+4n3WapDm8iPkABW7BaZiMdkD57Ps6M+gjoO/PEZraXwcXd
         HeBUh+hUDcVH1Ye+3pDLegoi4D+oRHsRe6xLMowqa4iiOW2tu5BjB9s1OonkQgfd7Onr
         5jwNtTb9ZeFjCPapiXRA5noJmraWERLVnIRJ2OteDxiDTzlH+bVg52+W/0PaRcj+D7tf
         9sWouibcSdm0yJABPaVkRlxX/GLRmc+QXRXUlrdw+yqFCBDmXdGJJqblEzxLehlan7oE
         Inwg==
X-Forwarded-Encrypted: i=1; AJvYcCUxj+MG0F0B1C6F/84lp6FiD62iyZkvDt4wq/KT5vroxf1BRG/WQ9BPWrm4KWJ3Fe1XTe/hskoovgQP@vger.kernel.org
X-Gm-Message-State: AOJu0YxtD+5UPldXAINFbV7iZ0KYIRh4AjLuZEvQ4FAcLERWmH9NudEr
	wpTcGw1qMHVP0zmd3U5E5xq6iwtya62ffQg625QJeY5sdb61PUmHtg+DTQB2ErL0fQI=
X-Gm-Gg: ASbGncvjrv9k2WBkPyKBbLMGotxz6Q4IaYBkzxty/6XYyB6iixrmNElCgAl4rDEvyRK
	NekagSBbb8EtUm9kt6sE6k8aEbQg7x0OP2L/NEZD4FZmgjQxuqJRp6u322wr0g+veHD9E8/Ei6D
	hfaAeIL2tw4ghpHPVuQsctjsbpxuNbSv4KIog9/KrxydL58wBGei4XXUFz6KqrYARtcbH5T8PxV
	xsQF1SCi0+csHZbMF0AeQSLjseWdFQrSfgGpD5PFJVo5LC/Q6R8ky4zuU150EgusRRwx+xHssh6
	vUd8Yv6jsosXNIU2n/UWWbt/fFJH/BJFm7+zPoRR6/GJfTpz8eEyucUtoy/jMuqdo22rC3HMVPR
	OcvvVo539aY+6scRd2tiiyZUSXMxYyDUgmoSEXz8R6z0GMm4LhR19HzButwioXKIBkl/QOHwZHz
	/kOrMI6g==
X-Google-Smtp-Source: AGHT+IHOaxNaAYL/G3bBHEMSSdgsFReOlc8/uFblf96ArsJ9WQV3cPQ/wzrsOXueFnV0tG611gnucQ==
X-Received: by 2002:a05:6a20:9383:b0:2df:b68d:f7e with SMTP id adf61e73a8af0-32da8461710mr14755652637.5.1760317291935;
        Sun, 12 Oct 2025 18:01:31 -0700 (PDT)
Received: from [127.0.1.1] ([121.134.152.93])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992d0e2ab3sm9512805b3a.64.2025.10.12.18.01.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Oct 2025 18:01:31 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: krzk@kernel.org, s.nawrocki@samsung.com, cw00.choi@samsung.com, 
 alim.akhtar@samsung.com, mturquette@baylibre.com, sboyd@kernel.org, 
 robh@kernel.org, conor+dt@kernel.org, sunyeal.hong@samsung.com, 
 shin.son@samsung.com, Raghav Sharma <raghav.s@samsung.com>
Cc: linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, chandan.vn@samsung.com, 
 dev.tailor@samsung.com, karthik.sun@samsung.com
In-Reply-To: <20250915095401.3699849-2-raghav.s@samsung.com>
References: <20250915095401.3699849-1-raghav.s@samsung.com>
 <CGME20250915094512epcas5p223e2eb264967508527f478eb2200be83@epcas5p2.samsung.com>
 <20250915095401.3699849-2-raghav.s@samsung.com>
Subject: Re: (subset) [PATCH v2 1/3] dt-bindings: clock: exynosautov920:
 add m2m clock definitions
Message-Id: <176031728689.32330.1215080941311408154.b4-ty@linaro.org>
Date: Mon, 13 Oct 2025 03:01:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3


On Mon, 15 Sep 2025 15:23:59 +0530, Raghav Sharma wrote:
> Add device tree clock binding definitions for CMU_M2M
> 
> 

Applied, thanks!

[1/3] dt-bindings: clock: exynosautov920: add m2m clock definitions
      https://git.kernel.org/krzk/linux/c/4914c17a76047ccbde24397cf9d406558183d756

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


