Return-Path: <devicetree+bounces-21641-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 39437804C37
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 09:27:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E932FB20B1A
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 08:27:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 146793C099;
	Tue,  5 Dec 2023 08:26:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="H8gM2SMV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E386C0
	for <devicetree@vger.kernel.org>; Tue,  5 Dec 2023 00:26:54 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-40838915cecso55067365e9.2
        for <devicetree@vger.kernel.org>; Tue, 05 Dec 2023 00:26:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701764812; x=1702369612; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9ONp2xeZJwWnYurG8deLTSE0gkCza6RtQu4dgCKPeQ4=;
        b=H8gM2SMVANO1E4Q7UGtfnmVkPXdk2XZtvC+KfCOVLx/kRXHxQUZiwuSma4YJyWEZKH
         ZkdOJqNNgx1g9eQI6AD3aNaP4nQ4ZZPikOZpN8kPQa/y8NqBzDzS2WUQ0uk6jRT1OTew
         ZhC/BOgDEutOi22MC1YdUT6kh9KGGGq8HQfiBJHiKvGFAMbwziYMilE9kcHtSePIokt1
         iJE1kWRqPMzy+KhauXdOUGyGfs0F5ZX9EACRreDkoVtrQPk9x/I/0TewqA1q7kl8542P
         ywQXQnuoJ/+wwzAJpNr9AU53T8Ai8Pw1ac9md4JRLt+BwWOVhFbkEAn3nO1xf52lxEGk
         Vl1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701764812; x=1702369612;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9ONp2xeZJwWnYurG8deLTSE0gkCza6RtQu4dgCKPeQ4=;
        b=SLTQ4I5TfaSHNi17LaZe6cNRBTJ3jAr1/PR50Yeqlotk2iJ1/MgnB9IFIOC7iVh0RW
         YjyX0H4npgnarPlZ7Def8JsA17cWVX4HSwgvaUQ2Ki9FX0Fh2jzNb9FFNCueuInh/BPJ
         PgKqibBjjxuaWUpk6JO1gHjHQSH+2whDoQkjvckHyBzJ87jCY8txPWymb35THk1htL5n
         Y5DYMYRO3EqZSc3yD3h5pnNgCT43v4Xij/r7/pHFdfUYgF6/XC5x9LkWEQtboD6RSlVC
         b+nsD2/PaSa9v0jXxF8lh0ja3h8bUjKpzpuo/SUEq6IlUMJJ2uMR+UTuFefROZT1bGzJ
         u0lg==
X-Gm-Message-State: AOJu0Yy8nCumOVggRZ3LSMun6A503uzSP4Qi/lI30eTqgXwHa/atFux1
	G3IT4hihDSY8Rn+fCqTU9s2P7w==
X-Google-Smtp-Source: AGHT+IH7wgiY+RXSlX5gVy/D8OdYWT70nRrboj3nA4gpJE5NsI9UJv5ilLIdET+CbMek0Lds1Rb+Aw==
X-Received: by 2002:a05:600c:ac1:b0:40b:5e59:daa1 with SMTP id c1-20020a05600c0ac100b0040b5e59daa1mr236001wmr.180.1701764812446;
        Tue, 05 Dec 2023 00:26:52 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id d4-20020a05600c3ac400b0040b538047b4sm21329282wms.3.2023.12.05.00.26.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Dec 2023 00:26:52 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Sam Ravnborg <sam@ravnborg.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, Tony Lindgren <tony@atomide.com>
Cc: Carl Philipp Klemm <philipp@uvos.xyz>, 
 Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>, 
 Merlijn Wajer <merlijn@wizzup.org>, Pavel Machek <pavel@ucw.cz>, 
 Sebastian Reichel <sre@kernel.org>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org
In-Reply-To: <20231127051547.15023-1-tony@atomide.com>
References: <20231127051547.15023-1-tony@atomide.com>
Subject: Re: [PATCH 1/2] dt-bindings: display: simple: Add boe,bp101wx1-100
 panel
Message-Id: <170176481142.4073725.17752464155243136680.b4-ty@linaro.org>
Date: Tue, 05 Dec 2023 09:26:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3

Hi,

On Mon, 27 Nov 2023 07:15:43 +0200, Tony Lindgren wrote:
> This panel is found on Motorola mapphone tablets mz615 to mz617.
> 
> 

Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-next)

[1/2] dt-bindings: display: simple: Add boe,bp101wx1-100 panel
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=4777dded21717c31d2d8471bccaf7c0ff58feaa4
[2/2] drm/panel: simple: Add BOE BP101WX1-100 panel
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=eeaddab4c14beb02157db5ca8f9e074066759bfd

-- 
Neil


