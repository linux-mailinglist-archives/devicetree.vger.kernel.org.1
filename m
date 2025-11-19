Return-Path: <devicetree+bounces-240364-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id DC4DDC704E3
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 18:05:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B25A834A669
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 16:49:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E3B22FD670;
	Wed, 19 Nov 2025 16:49:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hCNSYBdV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 179762FC892
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 16:49:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763570952; cv=none; b=Hd2byrEAU3bgEZUR8sxi9tPOTULLXzezpGwRXGivz2xU5kDj3F+ZKOFgmMS+c2j2JfM/OdoOEPALWTr3K13TLojNogrZsBZG+xdRH1Kpf91rQZxHUy+zUg2bMoCBl+j39/LENHOVvIhTcIjgKMz7H34O5QtytvntR9Tg+vU4C+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763570952; c=relaxed/simple;
	bh=vlI5pcVj/wX6eyOTaoSyFq9KmSkUqGYX/bgIU1OrGD0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=U6f2klvm3OcqE5HKmBHgAk1sPgCn5CQ6VSyQYfmZDlYFqkaztWPL0+PTbJev3gkIQ9iW/pQU+BiZxlO3MnAGmqwwl+lgxgqByjsTBi0LxBmULjI22YAgc3VIr4MgnlK+sQs8VkQBiYQ/rT2hHWGuSmugkiiOLiSS4zPTBYs0ikw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hCNSYBdV; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-42b3d4d9ca6so5599012f8f.2
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 08:49:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763570948; x=1764175748; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W+BKTv32VzHjWL0NXMYpgvUxDlBNuCFA53q1tVGjGOw=;
        b=hCNSYBdVcTsX38vqwiydcNYahHUJq1xXz7MDNpfDLVv+bEjIMn9xBWB2H1lzc4ra3v
         O6+Y+EnEedyQtAmbKY8MkRWGgEsR6jBG8buAMQpCO3P9NigfPu2/9GICf2TlV1wkBRxo
         GkrEr5utxhLSVGssfyr6246DjwIu28f9rCLANHhZH4WVxz0JiElq15U3Xpps/6mYZCca
         vlAzczuXCn0y7iJ0b+BBKfZsfcYHQlQbuj9oB35WEeIutGeSLSAwjR+dsrIiF+ZGhEIQ
         Ow0i67KzaIMbHZqzRL/MZkMJLg4VTjfKJD8hUaAwA91LbY9vWOeEi3uU8YinZn+Xd2Is
         qIqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763570948; x=1764175748;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=W+BKTv32VzHjWL0NXMYpgvUxDlBNuCFA53q1tVGjGOw=;
        b=aBR50xCDHuRdXliikomjBZLDatBhs3ASNDdzhC+bwaFfzjzcAHmBT7Ygx9zzOYG5kN
         4wVjyvKj0sZLo5sUgsqvLLSwP9kzu5AtPDp7+RSwXo452nDJQIej6sqms/LFHfNRQb1b
         cV9sSfLhgjIWR8H1vjHxzAe4eWdhJd/LodMscCD6oHrXu1l5O5dVPXLwpQ0UH2ywfrnz
         T4uyJG3UEI4ettkkL8LczoRMF0DUv4u5XopxEJc6IKBwNqhwKG23YKG2VDecBJjPD2ur
         jLBztNfIFppRh8Ls59DTuBSEodJ9Xu04U6NKi0XAZR6PHHIwcRlK4jpALxBgjf52fu67
         rIxg==
X-Forwarded-Encrypted: i=1; AJvYcCVyzWAdc5HYCiNlWECxGnSCopTHInMFa/14YKBpolGf5K0CLf7jB4O8ylas+tkzH9zbTvnxkpfM2Hrf@vger.kernel.org
X-Gm-Message-State: AOJu0YwXUvjEmhp8qToMPX7rwj21tXs2KSNDGy7OMMomozgF/2+qUuJa
	y+B17smkg2n8HH2NxM7sMAgJ05GdEUT4sTkC4ynBOM2kIWKq+a9Ngtf5VzfZ5C2XtxA=
X-Gm-Gg: ASbGnct0hUq4yzZbT9g5HjayqjftrMtJSp2CsfwyCZt/9GgNLI4TBIaYsGYrgGtiATZ
	gYcdZFz2XIVucp+4qgG699A3Ath/gt0lm6kNaJ5my7kTBJqQcLTGHKAID6D1mQxaOj1dt5MRvEY
	haPmmUOQwqgTnKBdAWzyFz2/ThDpaoZMWa9LmasALguVN55HBRcEK6REqHbeJStSjn+gI/C5lVW
	nmPqs2+TcrmmDk7zcTgJnVTVCyu1uWCNsSPt0HlaD4m0wUrIqwklwsqGpKCD7QIVITmq3rqL061
	y72F5gjrLdtnzkhLBbt+FtCAB19/jJt2p9s1hO3kgXUCDXE34Bt6gHBZessqKGJyfbQnAkECWcg
	RG67NQN5RqVZbvvM9i84pw1DwiOKHfHDJuygn7PuCNbsii9ievymJg0rrTYbqPIpsd7H+FiXbLv
	L9os6Y6+KFT47i4xYLePQsiS4PKzfjjQG56uNAOYvWfw==
X-Google-Smtp-Source: AGHT+IGarLhroHkX7qTmCRjo26XJBz7LFy48hq3bSCrrSEHsmi3uQiS1f6ngL2AlJBr3sKmOqBWAhw==
X-Received: by 2002:a05:6000:200c:b0:42b:31a5:f032 with SMTP id ffacd0b85a97d-42b5934dad6mr21284526f8f.28.1763570948041;
        Wed, 19 Nov 2025 08:49:08 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7fa3592sm117957f8f.21.2025.11.19.08.49.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 08:49:07 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Jessica Zhang <jessica.zhang@oss.qualcomm.com>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Josua Mayer <josua@solid-run.com>
Cc: Jon Nettleton <jon@solid-run.com>, 
 Mikhail Anikin <mikhail.anikin@solid-run.com>, 
 Yazan Shhady <yazan.shhady@solid-run.com>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-input@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Conor Dooley <conor.dooley@microchip.com>
In-Reply-To: <20251117-imx8mp-hb-iiot-v3-0-bf1a4cf5fa8e@solid-run.com>
References: <20251117-imx8mp-hb-iiot-v3-0-bf1a4cf5fa8e@solid-run.com>
Subject: Re: (subset) [PATCH v3 00/11] arm64: dts: add description for
 solidrun imx8mp hummingboard-iiot
Message-Id: <176357094703.280640.18246985537228820663.b4-ty@linaro.org>
Date: Wed, 19 Nov 2025 17:49:07 +0100
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

On Mon, 17 Nov 2025 13:28:42 +0100, Josua Mayer wrote:
> This patchset mainl adds description for 3 SolidRun boards:
> - i.MX8MP Hummingboard IIoT
> - SolidSense N8 Compact
> - i.MX8MM Hummingboard Ripple
> 
> This includes dt bindings and a range of bug-fixes:
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[02/11] dt-bindings: display: panel: ronbo,rb070d30: panel-common ref
        https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/779640415ea28abb60bb7641d50f1d9cccaa4d73
[03/11] dt-bindings: panel: lvds: add Winstar WF70A8SYJHLNGA
        https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/72539c4b9e482f397cc9340bcd97bb7643c0692d
[05/11] drm/panel: ronbo-rb070d30: fix warning with gpio controllers that sleep
        https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/93f5a0dc2b7c2df71a93e0fc59edae474bb84c6f

-- 
Neil


