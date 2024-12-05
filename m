Return-Path: <devicetree+bounces-127330-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BCBD19E52BD
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 11:44:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7DE662838C0
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 10:44:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA2BC206F3B;
	Thu,  5 Dec 2024 10:42:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="L7j8QVgD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80B56206F17
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 10:42:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733395333; cv=none; b=NkNHlskaWlUzV3KJOQJjPmeLmWcSgt+nnVXEhpDmo9+Ez//1dg9Dw06sfOQAu3InyafiM4mHNthBRhARXbTMuHQbxqlM6k9+H+ZryQaug09suXJ7WQtbsOW3s9kK77dg4dgJukaU9GFgWn7G+YV7Z5qy0/KFK/Fm13/Oabs+RDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733395333; c=relaxed/simple;
	bh=lBjSO4XZQcFnEk/bAzX1s58M9esiJswkbspXoeJzI6s=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=OQwjewiixgU9EqkDbQNIxGjDgaM3irvKtZyg8znj7/9tE6Db2gf39oPojIDdHzEFLoUQVp6C1sxtJ023RshGtV/sollmG7QQQHmVlyp9fKDesQUIwOo1xh4B6oIIUCJ5r4wVG0tUFFuhQQZwruxuV7I3WkuBxJolYttOHlWkiBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=L7j8QVgD; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-38625aa01b3so16794f8f.3
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 02:42:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733395330; x=1734000130; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FnoZGxzHG6LZDyvVjX+CssXgRHCJAKynJ1wSQcpNHJ0=;
        b=L7j8QVgD4ePArRob4XZ4StNT6RNHNYc2feivBhj+XBFzzGbkDnbHBju+nZNkc9U7uc
         5SuthXhG2KGt/HIRqRzaFb25EySmrsU2F+v5PiwEiuBo2OMhkAv+1iydzsLLrTQZkqyS
         M8dMKMopfh6Xb5fFKHNqOmkG2Vz0UatQidUOha3Yr8fEmtPr8iCTU7FxYBum7K7La3mN
         MAf5qGYyxQQ8HDQ8WEEvvxDDBSxiQx6k2+R/xJOWK0D5L/Iz9Ps06d2Y/zwsG9UXceLN
         d19kNgmfVUFkCQ3U9KH2MmjtKmce/EKuYOtaZsxgiqknMoyChAzlNBOch9Itj1VaydyQ
         WT1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733395330; x=1734000130;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FnoZGxzHG6LZDyvVjX+CssXgRHCJAKynJ1wSQcpNHJ0=;
        b=fYgJ5oe1MIsZxwNjuN7+Po0bJP/OJ18DlcPAX5t3799/9tP4lA7IKZMn+Fw1rFyZk1
         u6We6dqYpGjlxdoerqYn492xUpbQWe7eMkyJHSRfr+b6kVI5Sr6kqiIDeWYWaRXKs7r3
         4Fhrkfcg7GVbfopiw2NkVazMZIbJzSTYLa6D6ZYSyaGS0Bvyj09UfD690nSqbA0kQFyG
         uqlWKuzCw+WD7C8rFf80ye7Qm3ZiF9IK88XeEDYbAMhmiU3+I1gI6bt0FsGj2CeozqKf
         /Q8NlyKsj1ZemyoXNe514Qpowz7Pu6Mtb7k5QC0i3S2sT/ZN8y1fwerR2TRf6qYXXkjU
         Ys4A==
X-Forwarded-Encrypted: i=1; AJvYcCXQPhA11f8h4FDxFgupAp764JyZD/fK83dQ04c1WJ5yd9BKSCwE85GJwWp0SqZiCgAPpLBv5j/LyhNr@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6zgqk7WIQU71SlqYL9YY60K8LK9ALer8/TEqfUFkJUvCS/nPf
	tc7XDPN2u6jAJz2HHqYp9/Iu+Dhz8abdygEZzov6+tQgEQSNlr0QdVc/bEN0490=
X-Gm-Gg: ASbGncvstTQwKW+dF91dauDgM0yyZ/hZDsEgXx+mbv8BI5ArCAtccvcL/dBC/AcDCiA
	exPQuMjUUoFJXkdyZamDtqLhKxgeATIFk4mY0oSCAPM837sTvUC+CcBuYzQ+YcLmSkIktl+SDcW
	9Hhi1/Ul2l/KXh+ZSH1XwMJN7zUBxfyPBuH5WMHso4yzE6dEmqf9R4GwzqNwK3YVvgpeMaMkOur
	SVfliF3MfEDQ0Cngg4MuenNC96UqUok+p6WyN83TQjH1G33+7YOcQkPQOE3qa/rvQ==
X-Google-Smtp-Source: AGHT+IGz3GjcyfBhQ5HlqLVmhmG7Qtmhnbj9BaPJEz/QzVaC6xVbnrbhQALk4UuX4nKmsjVBEJ+aKg==
X-Received: by 2002:a5d:6d82:0:b0:385:e8e7:d0ac with SMTP id ffacd0b85a97d-385fde34d9bmr2947632f8f.13.1733395329824;
        Thu, 05 Dec 2024 02:42:09 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3861ecf406csm1662701f8f.3.2024.12.05.02.42.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Dec 2024 02:42:09 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>, 
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Magnus Damm <magnus.damm@gmail.com>, 
 Heiko Stuebner <heiko@sntech.de>, 
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, 
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Paul Cercueil <paul@crapouillou.net>, 
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
 Shengjiu Wang <shengjiu.wang@gmail.com>, Xiubo Li <Xiubo.Lee@gmail.com>, 
 Nicolin Chen <nicoleotsuka@gmail.com>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, 
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, 
 Adrien Grassein <adrien.grassein@gmail.com>, Adam Ford <aford173@gmail.com>, 
 Geert Uytterhoeven <geert+renesas@glider.be>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev, 
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-mips@vger.kernel.org, alsa-devel@alsa-project.org, 
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org
In-Reply-To: <cover.1727438777.git.geert+renesas@glider.be>
References: <cover.1727438777.git.geert+renesas@glider.be>
Subject: Re: (subset) [PATCH treewide 00/11] ASoC: Clean up
 {hp,mic}-det-gpio handling
Message-Id: <173339532775.70936.4554643874403091214.b4-ty@linaro.org>
Date: Thu, 05 Dec 2024 11:42:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Fri, 27 Sep 2024 14:42:15 +0200, Geert Uytterhoeven wrote:
> 	Hi all,
> 
> The "gpio" suffix for GPIO consumers was deprecated a while ago, in
> favor of the "gpios" suffix.  However, there are still several users of
> the "hp-det-gpio" and "mic-det-gpio" properties, in DT bindings,
> drivers, and DT source files.
> 
> [...]

Applied, thanks!

[03/11] ARM: dts: marvell: mmp2-olpc-xo-1-75: Switch to {hp,mic}-det-gpios
        https://git.kernel.org/krzk/linux-dt/c/62f95d8a4920706e94759a8f5e34677528530cf1
[08/11] arm64: dts: uniphier: Switch to hp-det-gpios
        https://git.kernel.org/krzk/linux-dt/c/751df73d825b3f7e6cad42ed333c28096635784d

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


