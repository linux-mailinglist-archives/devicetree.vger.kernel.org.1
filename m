Return-Path: <devicetree+bounces-6447-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 586277BB693
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 13:39:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7ED55282224
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 11:39:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE6D11C6B0;
	Fri,  6 Oct 2023 11:39:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="v2HtZ0NR"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4FD11C68F
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 11:39:04 +0000 (UTC)
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 940B7D6
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 04:39:00 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-405361bb94eso19505545e9.0
        for <devicetree@vger.kernel.org>; Fri, 06 Oct 2023 04:39:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696592339; x=1697197139; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4lXCeX/nmRFaPa+W/SmSphBLmC5PqiBtH5lIkBBz74w=;
        b=v2HtZ0NRf5Yc3Qf6QSvYMEwwY96J3+J9QZuQwWUB5SFkQqTnmWoI+ISd1Rm9h1T6pJ
         sOEZYv8zW5YtaL8PL2Y2jqlbSANPlbZgt+4lSP54pzqG7Y6sjvYiOXgFp8zrSq5Dv0MF
         ZorPj4NiXT7j4ZT2/M2KySGb6SfwLLojZTtu/wQ0O3/Y492+wqW+xyK74eyqO/Z/IzH8
         N/3CYyIOi+vsEuMn0sN1KqibERIQ/cGUTZydhm1JUpkYNRwwIxa2ksLoNJCY6DV7oH/C
         Masnjo2qn7JuO2pOrFIs7CkdlpBg53K/ygFCz58GIQ3i+N6jv3DvmU9snpT/98Sqwqdp
         35ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696592339; x=1697197139;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4lXCeX/nmRFaPa+W/SmSphBLmC5PqiBtH5lIkBBz74w=;
        b=L9aKpzHpBlDN/FmQNDwe/f+fbRwDe6uBbQCE6eEsZF2+rI7IcYcKc8ZdUPAMr7RIMd
         VkNtUTQ/DpP5Yk0SgYb8zJyCcSpstH6+qKJQxYV7J+yPqWLW3P2ZIzruJvoCKI+bLryM
         rX4T1p7snxXrCOD+a1eA+fa8aZ1npq1Z7hvUZ4J3tyMc2ZJSfsz41DOw2aNOGPSVkoyq
         PdTVfvABrYZDieBU4ISq6Fl68bHF4mvZ+7Xof+HWVRS9yi644GeHOVDonBxyKrKIqbkR
         lMJ+9Cx7/j/5LKFefqa+zpzBYCza4c0l2+UPGOFtyF2XaegZP7JFE8FsntvRu0jzj870
         DLAg==
X-Gm-Message-State: AOJu0YwP9KO2ltSjumjZN8anAAJbazYh2IkvoklafI55Skk7qhUbv0e0
	0zjgXg8jNJDjryXl84bX2Ys6wg==
X-Google-Smtp-Source: AGHT+IGLqMrlBobTtK4ubGlWM7ey7sxhWNYax4656ew/AmwVJYYvVcHii1oOhmdar1qG9oSo3EgJ6g==
X-Received: by 2002:a05:600c:294a:b0:3f5:fff8:d4f3 with SMTP id n10-20020a05600c294a00b003f5fff8d4f3mr7527680wmd.7.1696592338825;
        Fri, 06 Oct 2023 04:38:58 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id p13-20020a5d68cd000000b0031ae8d86af4sm1442191wrw.103.2023.10.06.04.38.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Oct 2023 04:38:58 -0700 (PDT)
From: neil.armstrong@linaro.org
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jerome Brunet <jbrunet@baylibre.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Da Xue <da.xue@libretech.co>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-amlogic@lists.infradead.org
Subject: Re: (subset) [PATCH 0/2] arm64: dts: amlogic: add libretech cottonwood support
Date: Fri,  6 Oct 2023 13:38:55 +0200
Message-Id: <169659226645.1467422.5247587231855706519.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231002141020.2403652-1-jbrunet@baylibre.com>
References: <20231002141020.2403652-1-jbrunet@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Neil Armstrong <neil.armstrong@linaro.org>

Hi,

On Mon, 02 Oct 2023 16:10:18 +0200, Jerome Brunet wrote:
> This patchset adds support for the Libretech cottonwood board family.
> The 2 boards are based on the same PCB, with an RPi B form factor.
> 
> The "Alta" board uses an a311d while the "Solitude" variant uses an s905d3.
> 
> This patchset depends on the usb support for the gl3510 [0]
> Without it, there will be dt check warnings and usb may not come up properly.
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.7/arm64-dt)

[1/2] dt-bindings: arm: amlogic: add libretech cottonwood support
      https://git.kernel.org/amlogic/c/7eb73b8abdae401ac70fd7d463df118a4a2404a9

These changes has been applied on the intermediate git tree [1].

The v6.7/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
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

