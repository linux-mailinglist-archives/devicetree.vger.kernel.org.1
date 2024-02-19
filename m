Return-Path: <devicetree+bounces-43311-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C4931859EDF
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 09:54:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0310B1C2218B
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 08:54:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D29A2232B;
	Mon, 19 Feb 2024 08:54:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="knxk53Z0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3917721370
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 08:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708332876; cv=none; b=lxpXDFW9FW/bjatq+WUYDjMW35Odj+VwL+cYGwwKE3wnlQOpHtPGklMlKE/gnaUMGD+mSz6JbnixZr4236yrzIQSXwTHV8hJUkcQLWt1GA4mbLdp2+ny3KE7HZsxLuDMU1nEyRm6Y7mIhN2TcTn03K4MBIdyW3F10Ny1Jq/E7pQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708332876; c=relaxed/simple;
	bh=OEXaAvnQF2wy6Nj5AeTjBBzEUkTiz+ixQG56tPLM5U0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=q0vfOiIQahNAzn84rSZ4sOSgQ77ruALlbB4pt2KKhOpy3b8AL1Fp3UoFvlT+RpknAao7WmInsMIh8oQN6Wruiub5viufFx8Kuely8kXFS5TRh2UgbZtUFwagbuX3hh8vvPrXsaT2pUu3VtoP7oq8kuMD1qYkLdTDuGeHymYExJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=knxk53Z0; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-512bce554a5so188140e87.3
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 00:54:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708332872; x=1708937672; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=22Yt75fVfsEL7mA144l/kMA/h2fIbqb72OW3O39FRkg=;
        b=knxk53Z0FAPjpOsIMAR9HNmtDyi4WAkYPv9sS6mSyIYs/u5NUS7hAdkssGKwQEXezj
         pGQlRwPRK/qyTM1GxSs5Fmi9vCe6+0AxVPqcEjrAa4ai86LlFrp96u4SEkAAOP9M33Fu
         MogMcmfWI8IlcWf0xuVHkMVXUJa22v8RO7RtF2VOavcGOmcW46bjMVx1Zu+2wBy7ORVr
         PuyoWkrJzXr9uGxbroLkX3mfFmMRP3ukI4URFG9EsjBTSjJ1NCNUwitQV9q3Dp++mAfI
         xadlTCh/BekPUPWwBK0UtMs1iIYwXDKE8zhwKC+8jeydQEvo0dmO+Kn6WauAhwVPWPBP
         5yXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708332872; x=1708937672;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=22Yt75fVfsEL7mA144l/kMA/h2fIbqb72OW3O39FRkg=;
        b=Snx8u9GfQeBjxSYfwho0CkHQ9OjjugikGyonmBXT7wfMKDxcpTmRV48fQkkjPNzHBq
         JITrwzuMu/OTVBv8t4Za6qDNLAXsYGWxP/iI2l2DUWeTOeYTPNgT1F0ZPC1VOiyIsRtm
         REg34iZcIXPYmx0Tk6MgBG4gvCMGOEiHHYX274/tV3S39LSC6jhc7IDOlN1mt/u3TVAd
         15PE6VPhGZkMkum4kRbhjM3S9y1y0x3lHd6Tc3j/DXSkHhw13nGZl473OFqTimRXn5LY
         T30oRMwvc+QLbcBuBnE3bpxar33ilCc+iN1z1K97P6JvC0oIzNgKfF/Tm3qopTa5xFGj
         Aa/Q==
X-Forwarded-Encrypted: i=1; AJvYcCWMsbi6nYIAjb7QSFqCzzMbSHMO7pofexnb5GhCks2TBaaKKEf62NDVQ+wltykjWkCn5hJ41cNp1voFasVm+ISGbGY4pO2i/9k3KQ==
X-Gm-Message-State: AOJu0YwHqwlqLfXO0JcMs4wSEB1acd+WXOBUFMCSmEtWRYX75kuYt7QI
	B+uKmTgbQO99+3vccLOBXM3MNizl+JZfrrKNe295LmwtbzMOhqcHMLSFjbPN7s4=
X-Google-Smtp-Source: AGHT+IEhBJtr8HJXpxu3ixn4sc8EZXWyTbhE3RUOTjq4ZkWMI1AY/AUQw/AAthgBEoEb2+pWdxcZ2g==
X-Received: by 2002:a19:ac48:0:b0:512:ba54:6ce9 with SMTP id r8-20020a19ac48000000b00512ba546ce9mr539662lfc.67.1708332872499;
        Mon, 19 Feb 2024 00:54:32 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id f5-20020a7bc8c5000000b00410bca333b7sm10516716wml.27.2024.02.19.00.54.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Feb 2024 00:54:32 -0800 (PST)
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
In-Reply-To: <07f7a695-18a0-4211-82e9-b1e2c7166969@freebox.fr>
References: <07f7a695-18a0-4211-82e9-b1e2c7166969@freebox.fr>
Subject: Re: [PATCH v3 0/4] Add support for Freebox fbx8am boards
Message-Id: <170833287175.1749763.7592258625709220992.b4-ty@linaro.org>
Date: Mon, 19 Feb 2024 09:54:31 +0100
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

On Tue, 13 Feb 2024 18:11:12 +0100, Marc Gonzalez wrote:
> Add support for Freebox fbx8am boards
> 
> v3:
> - order board binding alphabetically (Conor D)
> - replace underscores with dashes in DT node names (Krzysztof K)
> - Merge overlays in the build for coverage (Rob H)
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


