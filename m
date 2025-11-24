Return-Path: <devicetree+bounces-241736-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A1364C81C04
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 18:00:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2338D3ABBD0
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 16:58:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C72833168EC;
	Mon, 24 Nov 2025 16:58:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ScZdq11e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4E59316196
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 16:58:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764003509; cv=none; b=kqM3XVElIMoq7biQYKl6TXW0fK6oG6omMDmR7n/NJ8526soGQTENOjDD3HWOprgkkQwscECCJ80LXPPoo2UtWsOPPoiLNfCU69XNnp3UQOcGdx+eGJRaOlP6ArdHNrrIBDzneXjcWrutABrZqqBefudfzznMxdi1GNIt1SYMW0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764003509; c=relaxed/simple;
	bh=mzIkqaZYWn0NPCfAXhc6sYEViAsZnALq97AMGCDXm6Q=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=CJHbvxMs/mRIGwSZzncxP0roT1xJ50WwoKVuAcT23sWvwCWuHtrMI+nbDfD87/XUMWEFrgPelCYarrKa+OJDwZerT5RBwe3h9TX6oQmUv9Xitazrz7lXEbdsO+4NMCna2p5N/ux3BrT1cFLWdDyQhABLiQCmo58HDh/IS7gbujg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ScZdq11e; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-42b3377aaf2so2653883f8f.2
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 08:58:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764003506; x=1764608306; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yTJo7Ag5Rh1YYyTzRB5qqC3xfHvME3432kS9IzmBK20=;
        b=ScZdq11eUCmBK1JIQOjqOlNRl0M1SUO+U3V/168Tpc6DBPSI3vDeDi8iSm56xEpkNQ
         dSg1ShYAx4xR0A69g3nDXyjNJo6lxHbVfhvB/7GWW+OZUyuNrCCko7BjPT0fDzVJqZfd
         Q4z+dpQwp0/ruXJls7NThBIMtfNXr+T8eGLtmW5KH6jqnYAIGP06PxgzzWSMzHJRNOix
         g6kTlA4J9Jg/bkEHkl6bhbRhSJa4fXBIaHyw1wm6JTQPzYP2NTL0/05YrEY8IC7j4iuW
         n1pgY0+3ZugY5/IOfEEczBSQVH0dJjXtPp5h54LFDdrWdJKAnKlHKvI0gHk0JlqO5LvG
         kVSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764003506; x=1764608306;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yTJo7Ag5Rh1YYyTzRB5qqC3xfHvME3432kS9IzmBK20=;
        b=nemDCFrhXH1s+wklH0Jek7uiABoVsu3xxwgFts/u8QzapxMMKQdY0CxbJ/vbPg2iny
         8QXC+l68X0uz/xDA6zY9Y8rnktRzlRHJBk0AQ02XSA/5kykm4njTJZcCnKyMXfdfCryq
         BL/G1yoBTY8dihF6bouQb5/FdV2oVvaxG4J1chrwxbm80eWD0qvP+1Acc+XudN0rIMXf
         FeDXVWj/+cEm28wud86aYIKrWx3RswHXun9RIEEw9BEV9n6rqHkXT4DkF9wh7ppB1uLq
         K+YAmd/SfuRsLAyhL61V5zOBt5l4XlzcKNpeN/fLkJ7rveiOhx5kwQbuYsH41I8q6aHJ
         OuLQ==
X-Forwarded-Encrypted: i=1; AJvYcCXChZemFr0O7U3g8y+xJJ+7LS67JoNyRrEF7pmrQTx0fNQdyRaOqmzDaFl98i8RMFy6viQQVt4O0eqc@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8XgHJg8RsxnWpTOY6CdJKMmeR14meJVUhSZsIx91bKbSRvrAc
	jOX06fvWexZzmcNYigGGLAxaBw38YZLbwMzezdnku9ViprMoB5/EHuX/4SfpvIKMn3g=
X-Gm-Gg: ASbGncsV3NE5D9RSfU/Hql4xWGv2dmU+LeEh/9zL7mLw3fuG/Oxk8IiO02E/v7vLYRs
	O9ptfbUZ4GvWajzF6fEYHViZoqIHev/Xm0cnsf52vf/PebIxoLyn8ShrPpSQvzSBlFNCfWtlCMF
	asXV8BidPSrd3/phFQrMm9sxoFr/E18ZXeORb7+Y+fzlsTJf+tn1PacG19kz2biZecdKeLrIPQ8
	7XqrSgaGiViYboLKCHQ1hoTivXw0AlmDA0jdcmDnp2HwPMRBwAgZAHePcPgm9wvp2kV8vzEEK5v
	y9NPeAKpr6jdRay/r/Y8ELJXXQczGxWIHYruF7rzstGMKGTiOLfaUUHrQKYVEcTaNZq6adC7Kps
	islEF+TMHzyDCPTSjmeSmMq7+bYXLEVgvHw+efc+Q6x3oJP6CGjxRYp8W6eT8JPkCX6EE/1H86A
	iF8kj1hDyfvxHcJMid3PE8duipv1ZqzuvrqPbJKlMrfA==
X-Google-Smtp-Source: AGHT+IEYt+7gqBmSSxDw8oqYvg2HN9dgXWjs0bNrU1ocMijbefqOJSUkx6pNNwHfyRGDyKSx1gSW1w==
X-Received: by 2002:a05:6000:1a8f:b0:42b:5567:857b with SMTP id ffacd0b85a97d-42cc1d19e16mr12827554f8f.48.1764003506122;
        Mon, 24 Nov 2025 08:58:26 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7fb9022sm29398499f8f.36.2025.11.24.08.58.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 08:58:25 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Georg Gottleuber <ggo@tuxedocomputers.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Ettore Chimenti <ettore.chimenti@linaro.org>, 
 Srinivas Kandagatla <srini@kernel.org>, stefan.schmidt@linaro.org, 
 stephan.gerhold@linaro.org, wse@tuxedocomputers.com, cs@tuxedo.de
In-Reply-To: <20251121142623.251118-1-ggo@tuxedocomputers.com>
References: <20251121142623.251118-1-ggo@tuxedocomputers.com>
Subject: Re: (subset) [PATCH v3 0/7] Add TUXEDO Elite 14 Gen1 (X1E78100)
Message-Id: <176400350522.514667.5379863973279531790.b4-ty@linaro.org>
Date: Mon, 24 Nov 2025 17:58:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3

Hi,

On Fri, 21 Nov 2025 15:26:12 +0100, Georg Gottleuber wrote:
> Initial support for TUXEDO Elite 14 Gen1 laptop. It is based on Qualcomm
> Snapdragon X Elite SoC (X1E78100).
> 
> Changes in v3:
> - add DisplayPort audio to dts
> - add el2.dtb to Makefile
> - change dts firmware paths
> - fix dt-binding (x1e78100 instead of x1e80100)
> - improve commit message for elite14gen1 dt-bindings
> - remove smb2360_1 from dts (only one USB-C port is present)
> - remove "VA MIC BIAS1" from dts
> - remove regulator-always-on from vreg_edp_3p3 (display) in dts
> - rename vendor prefix of ASL Xiamen Technology to asl-tek
> - sort dts
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/7] dt-bindings: vendor-prefixes: Add ASL Xiamen Technology
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/ee4f232dd1ff8e11a18c6dab6f7a3a89eee62436
[2/7] dt-bindings: display: bridge: simple: document the ASL CS5263 DP-to-HDMI bridge
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/0eebd421ac09686f9646ea635ee8920d55ee5d26
[3/7] drm/bridge: simple: add ASL CS5263 DP-to-HDMI bridge
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/d525f967e7a40c08af3e752281ede72e9922b87f

-- 
Neil


