Return-Path: <devicetree+bounces-43309-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A035C859EDC
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 09:54:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5C162281C61
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 08:54:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56190219E9;
	Mon, 19 Feb 2024 08:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="noilCPqv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B21120DFC
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 08:54:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708332874; cv=none; b=TZKQ//Gd9Df0msMSRwm8iB73iOiSHPLcIEgjzMtcJSkPp8hX+ASSBI38GuJx0zj6Hn1C+qpxVux13yXybFjgTob7gKHfu6MwRB886v7JV01nOM7LF92JsQkgXlfdP3oyNHAr5nvZ9w516+C9wkliCrw2qEgR6vxP7ljEif5lapQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708332874; c=relaxed/simple;
	bh=uZFARFhmG8EDBb9HCOFvSw+S/vv/kTbG8wqp5aJSotY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=F+GZzFX+MR4V4V+bO9+QIizcNhQEayZ5RD7zanqqypAsqk/2c1hnGT6TEnXJj4KOZoMm0cWJOyEdBuI268lzNd0a/uobpfeqW3uAUhdvBuK9kmUB5OeC1i1SOpRt79ce6czYqCUn5n1Bx6gxUxbKYVObFV0Yvq2qn/PVU/O7Gj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=noilCPqv; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2d22d0f8ad1so15787051fa.2
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 00:54:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708332871; x=1708937671; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/TjtoHHVJwBCBgF4vkxUuzybe9FB5c5TV1bOCfwn0jE=;
        b=noilCPqv+zFdQoEF3kFwR6GMi5eBPVrifzrlzCJNy/D09WV1t1HGeI1F3a21a+/osW
         RwzXtXr/T6xEnmgrx9PRVeFwPEERd4lRvhDRlZ8N+9T/b3R2hMyVYZNLp3FUUxOALZqn
         C8vTAWN1wP7t+PKHKcrt0nSPs+Fq/ls80ecngtSXehXsjFMSyH2l+r4iAfgsGZ5g1a0q
         A3OTPqK/37J9RuZQv0KZh0ScpIZfcoFV5nwqAmr5fQIsTG79tbP1GopZgv4+QkYph5zq
         qIyoQbyF2FM+P889fC7hlrQd6q4xYPwaBg2D6/g1/ysKwFgOdePrhx/jr3WDmCYBVAUr
         gTaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708332871; x=1708937671;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/TjtoHHVJwBCBgF4vkxUuzybe9FB5c5TV1bOCfwn0jE=;
        b=jjzIIdDEEcYH/OhmJzWG7JQeTUkp1jcq2EqPUdH8DlfwwlNEkTHwWS8hEeLZ3rvArk
         zwJlzh3s0okgtTr4wm+DETvEncymriDr1sUbn+gOAYSm02dJ+TgSN5NMPbxjAGLXgAal
         rCkLKuE0XRdk5nMWTI1XmxSqOSjANqGsQINfMlYP2m9+fWMQrojzD0H/txRUa5ARHZ9J
         jboxY+a6lqTUqK8dRGtj7L9rAutN2KQBDXJDgRiApo/+U0ZgPmq+Gw2gvupzVxlNDZSn
         JlQSJwfjXQ8UiNzNwetzDTC+ZeZuvlz4ozBMFSa3bYk5pZiobwfkxI6P6NACsXBWp3dQ
         sTug==
X-Forwarded-Encrypted: i=1; AJvYcCUNAHF7us535xuyCK1CZbYRnoKtFFhqlShtMGwb8rXEs4IG9wFhGTYcajUY2xmGL890FBsG2pxXhPZMzZeQ6RNQbsX3QprLuYl5Nw==
X-Gm-Message-State: AOJu0YygYmtzZhleBkUUcydoYAr6K06g+Mv++LHjPtVF0bqiI0Ng3ZDE
	jNmJBddEJIF4rjVt9KBuxHFdYIH2Ogj1tdDmGEJULpPHzHHTV/Y0Bz8mLs9ty+E=
X-Google-Smtp-Source: AGHT+IEffHf+TRXcEYf5qMLMOrMRRF7qdm+gvz+nuZYixXROVudQLHmb7QAOcaN2s/Igl0azgsf5ZA==
X-Received: by 2002:a05:6512:1052:b0:512:ab7e:6ba8 with SMTP id c18-20020a056512105200b00512ab7e6ba8mr2810169lfb.21.1708332870681;
        Mon, 19 Feb 2024 00:54:30 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id f5-20020a7bc8c5000000b00410bca333b7sm10516716wml.27.2024.02.19.00.54.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Feb 2024 00:54:30 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: AML <linux-amlogic@lists.infradead.org>, 
 DT <devicetree@vger.kernel.org>, Marc Gonzalez <mgonzalez@freebox.fr>
Cc: Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Pierre-Hugues Husson <phhusson@freebox.fr>
In-Reply-To: <77edaf7e-aeb5-4fc0-8b69-85dcddfd5a58@freebox.fr>
References: <77edaf7e-aeb5-4fc0-8b69-85dcddfd5a58@freebox.fr>
Subject: Re: [PATCH v2 0/4] Add support for Freebox fbx8am boards
Message-Id: <170833286959.1749763.5981999865888937241.b4-ty@linaro.org>
Date: Mon, 19 Feb 2024 09:54:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4

Hi,

On Mon, 12 Feb 2024 18:47:33 +0100, Marc Gonzalez wrote:
> Add support for Freebox fbx8am boards
> 
> Marc Gonzalez (4):
>    dt-bindings: vendor-prefixes: add freebox
>    dt-bindings: arm: amlogic: add fbx8am binding
>    arm64: dts: amlogic: add fbx8am board
>    arm64: dts: amlogic: add fbx8am DT overlays
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.9/arm64-dt)

[1/4] dt-bindings: vendor-prefixes: add freebox
      https://git.kernel.org/amlogic/c/fedeacff9611917231d710382e7ccb518cd440a6
[2/4] dt-bindings: arm: amlogic: add fbx8am binding
      https://git.kernel.org/amlogic/c/beee431b3257334e450999ebe77636bb18ca87e7
[3/4] arm64: dts: amlogic: add fbx8am board
      https://git.kernel.org/amlogic/c/acbe5b6b0fb74197ebff06a62abcfec9858c23ae
[4/4] arm64: dts: amlogic: add fbx8am DT overlays
      https://git.kernel.org/amlogic/c/13636d5502204e671398470962babbfb46bc2721

These changes has been applied on the intermediate git tree [1].

The v6.9/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
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


