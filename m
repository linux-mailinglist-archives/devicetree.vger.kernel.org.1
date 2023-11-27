Return-Path: <devicetree+bounces-19113-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C9527F9B8C
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 09:19:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 670181C2098A
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 08:19:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 201B912E58;
	Mon, 27 Nov 2023 08:19:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QphDvuiw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10E5013D
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 00:19:07 -0800 (PST)
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2c50305c5c4so50640401fa.1
        for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 00:19:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701073145; x=1701677945; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P0HbzSFHktdmLOX25jug4aYGWz0JCpvccscLtTAHhqA=;
        b=QphDvuiwQjGHdTXhqUBiB2JEVlMOJZSHVDOL20dEKq+VU3gcwo7gkyMuDgSS6b5iUy
         Ztx4McJ8qqLhGFucGM1d3sjHRWv7Ptf5ITPdaK+3P6eG9A/STs51B0sHsSFDSyKU9WbB
         o9+AYOZtRnYWuvBgv2fQg6COVD1GFehFEqVhFssyxS9fraUVC4ycM1KCj5t/V7H+Dx4l
         zZYpUG38gcWUw9CVzNL02XJYYp+5e22UmIWq0JM0CjmiuhNCof3jjj+NmfjFiSptYOGp
         1msPi0e52b/ccp+SRlDzLRa9qw5uhvFtnmI9HZFYQocEvjKz6Wwlicch1arUs7Dd0Gyt
         46oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701073145; x=1701677945;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P0HbzSFHktdmLOX25jug4aYGWz0JCpvccscLtTAHhqA=;
        b=M4gK7D46nzgvFwwWmKIVnvZ9VbbrIppaATg344yOQpb246x12C1TtcOGr1vnKv04YP
         p+peCF3XMMgrA3yv5x4rgKdXoF3jFZ+ThnNLFlP3Pehrc9ql99aRpR9qhsCnLNtGwzMl
         9K+n+bLj/FnQmzcRNb8bG3LBxCOasEzXUBkREC3cAz0DNw80ZZKWarx5oiTmbONZmlaq
         2j5fchgasaQ2szgmoQUWB9tob3tN/yKQjiR/i/o6IGPqOa+dzUoLGVlRqvZ5fTE75cgi
         EIWwSuleNcSESoAyKU17Yievjxp3DTxABmE465JzucjEs9p+UfCAymkIWfoAvfFndKvO
         WGIg==
X-Gm-Message-State: AOJu0YyNYkwpEnu/84r8isbCeik5KSzWi0S6S5IyLJ5J3FU8O/KSmthl
	VdXL23Gs/ThZPfluLbHkkR+6cQ==
X-Google-Smtp-Source: AGHT+IEuMirGebq4a6v9lO8Go4zAoGpsFpnVjJ30a4fq7OT4bnU7eMDXEQmoxjW6cmOOXG5zErDs5Q==
X-Received: by 2002:a2e:3207:0:b0:2c5:15dc:ba99 with SMTP id y7-20020a2e3207000000b002c515dcba99mr6829008ljy.51.1701073145285;
        Mon, 27 Nov 2023 00:19:05 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id be7-20020a05600c1e8700b00405442edc69sm13516568wmb.14.2023.11.27.00.19.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Nov 2023 00:19:04 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Jerome Brunet <jbrunet@baylibre.com>, linux-amlogic@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Viacheslav Bocharov <adeep@lexina.in>
In-Reply-To: <20231102061233.3113249-1-adeep@lexina.in>
References: <20231102061233.3113249-1-adeep@lexina.in>
Subject: Re: [PATCH] arm64: dts: meson-axg: jethub-jxx add support for
 EEPROM
Message-Id: <170107314458.1083800.6313353700407370845.b4-ty@linaro.org>
Date: Mon, 27 Nov 2023 09:19:04 +0100
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

On Thu, 02 Nov 2023 09:12:33 +0300, Viacheslav Bocharov wrote:
> Add dts node for EEPROM placed on baseboard in JetHub D1+ devices.
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.8/arm64-dt)

[1/1] arm64: dts: meson-axg: jethub-jxx add support for EEPROM
      https://git.kernel.org/amlogic/c/bee505184fd5543b9e901a37523e39fd1db06860

These changes has been applied on the intermediate git tree [1].

The v6.8/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
for inclusion in their intermediate git branches in order to be sent to Linus during
the next merge window, or sooner if it's a set of fixes.

In the cases of fixes, those will be merged in the current release candidate
kernel and as soon they appear on the Linux master branch they will be
backported to the previous Stable and Long-Stable kernels [2].

The intermediate git branches are merged daily in the linux-next tree [3],
people are encouraged testing these pre-release kernels and report issues on the
relevant mailing-lists.

If problems are discovered on those changes, please submit a signed-off-by revert
patch followed by a corrective changeset.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git
[2] https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git
[3] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git

-- 
Neil


