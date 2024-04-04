Return-Path: <devicetree+bounces-56326-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 075C68987DF
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 14:35:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DEE2F1C21DFA
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 12:35:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73CA4266D4;
	Thu,  4 Apr 2024 12:30:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TGMfSK4c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C127E18EA8
	for <devicetree@vger.kernel.org>; Thu,  4 Apr 2024 12:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712233825; cv=none; b=kL817FShRg3HX3SxwfRPzuRRdbaPhccOCLxi/oZsDPNWd8V0ikooRuqPApfg500cfVZ5Zj73aTGNWRFfToLpbOylBHj1qD9Q8woouY5eeILNgaQ2eDny6f1Su4P0Y6AAg36nDoVqP7JGcjrE+EmBhEoi0wqcK/QsgxDPh2y+Jv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712233825; c=relaxed/simple;
	bh=hMGCi5U/GTUr4s1TD2pXM9wRWDVE6D4wK5xdmE2YqBg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=n2zhoSgT0bFGvMcrT9sylKbifljpq85nqQ/vaNVyxhvuRdWwZQhbE+vmCVKOErPruU6d/mR/EO8H7TeK/O17oGAzNSIhpNNdj9UpPk8KNzps5SKNhSl2he7qn/1mM3wyxJH1SIMXkcFiLAKDBhoQqk/updBirjFNA8ZBPBx6y1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TGMfSK4c; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-516cdb21b34so744113e87.1
        for <devicetree@vger.kernel.org>; Thu, 04 Apr 2024 05:30:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712233822; x=1712838622; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X20l1OIbEglZq76t9YzipvH9/8wF8pWqOBX+VeO6mJ4=;
        b=TGMfSK4ciAXhlZwN9Hw9BKWPyBitGFbI9rBqnGcUjxFtEZpKc1hfHxYLZbVGmnRd3r
         LhaDVaC7ylco8IfsqX6N14ilVKuRIoCY/qTj7oz8zDVwtGClFGduq59c7ve+r7XW4KfP
         5RGajWt9QpMgGiuTsY4R4pTk1f9F7JHyWryr7ycu2Ta7zuT8gjZnjba6BHvG5xYl8m7W
         5baGQj63oAKDwyLGKOOEgjdlyMIt0bSaIezmlequmffOelRSsls6asYpAjaCHRpb+fZb
         cHzKgoYGGQeNMOHMzrZin+bvplbyyDKeh5tvnmP9EuEtl42qTLG/hTevIj7rPwjlAbI4
         kUHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712233822; x=1712838622;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X20l1OIbEglZq76t9YzipvH9/8wF8pWqOBX+VeO6mJ4=;
        b=ib5crC94JAfZVFRYzbEWvjQEYCo+DMP+reV/g414NGkbI6dyiNjHG9zUk7qNLwvmGR
         +fuxpoV7xTTkQK32t9J59c7a/7Hf8g/toCcAdbpUDI1ahENEJIHVAXQJo5ChZEZsvNTn
         hKseZsZrjgO2bMfDUnkIy69OiS67EmprsuM5EHB13gsuu/lA1s1p2X1VHuTixOsDnk/R
         LLqLdcvJoEavxtb2P549ScV9wilHMEJ3OGpZRoZuywt3px5Bd2sNM7n0S26QAtP5Mtfy
         c2t48QTn2SyFmN771ocrrjTrsqw35sTRGatUK8nqURHsWdLhFnNDyOM5oX1sCZuyxWbg
         et+Q==
X-Forwarded-Encrypted: i=1; AJvYcCWCpnuOjGzdGmIR7dP2VCT3CG42FRqbaDgr9WuALYe/qelMJCW7m2cytUV21NjXYIuPYfr7bT9pAYt8jPRN2QL5k005+3Obnf9Avg==
X-Gm-Message-State: AOJu0YyiSo2441wAFigSrpIxBZmvCll6k2QelIHEMoLYjKYnvPfwU2Bm
	rOFXAphP6oS8m08sYEmwhA6vZfw8jqxPYvBzKsPeIg3iOhN8YwBLCjuHdn3nZBM=
X-Google-Smtp-Source: AGHT+IFUb5zsg1JnqPSDM6WCJg3DgMPy79GM9WkgadXKzQqBbfSPE4iFlNdz1Kc4Oxni4f8yZOheig==
X-Received: by 2002:a05:6512:3707:b0:516:a115:4a4d with SMTP id z7-20020a056512370700b00516a1154a4dmr1578665lfr.68.1712233822050;
        Thu, 04 Apr 2024 05:30:22 -0700 (PDT)
Received: from eriador.lan (dzyjmhyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a00e:a300::227])
        by smtp.gmail.com with ESMTPSA id b19-20020a056512071300b00515abab7697sm2286667lfs.55.2024.04.04.05.30.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Apr 2024 05:30:21 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: dri-devel@lists.freedesktop.org,
	Adam Ford <aford173@gmail.com>
Cc: aford@beaconembedded.com,
	laurent.pinchart@ideasonboard.com,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH V2 1/2] drm/bridge: adv7511: Allow IRQ to share GPIO pins
Date: Thu,  4 Apr 2024 15:30:19 +0300
Message-ID: <171223381119.1231870.1373781151741394452.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240305004859.201085-1-aford173@gmail.com>
References: <20240305004859.201085-1-aford173@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Mon, 04 Mar 2024 18:48:57 -0600, Adam Ford wrote:
> The IRQ registration currently assumes that the GPIO is dedicated
> to it, but that may not necessarily be the case. If the board has
> another device sharing the GPIO, it won't be registered and the
> hot-plug detect fails to function.
> 
> Currently, the handler reads two registers and blindly
> assumes one of them caused the interrupt and returns IRQ_HANDLED
> unless there is an error. In order to properly do this, the IRQ
> handler needs to check if it needs to handle the IRQ and return
> IRQ_NONE if there is nothing to handle.  With the check added
> and the return code properly indicating whether or not it there
> was an IRQ, the IRQF_SHARED can be set to share a GPIO IRQ.
> 
> [...]

Applied to drm-misc-next, thanks!

[1/2] drm/bridge: adv7511: Allow IRQ to share GPIO pins
      commit: f3d9683346d6b1d6e24f57e954385995601594d4

Best regards,
-- 
With best wishes
Dmitry


