Return-Path: <devicetree+bounces-84370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 74BD492BE58
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 17:29:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2F111284459
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 15:29:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A656019D8BB;
	Tue,  9 Jul 2024 15:28:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yLtiPau6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1364819CD0A
	for <devicetree@vger.kernel.org>; Tue,  9 Jul 2024 15:28:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720538928; cv=none; b=TJlSPEflaKjjsMqkhT4mxpcB/XXSMvJtTAtot6hPVCC0yjsysiRPfDtbTjLMu4DkaHd6Po0ImzjGrOAwqLipb2FAtDxoRS4wXX0hdzx11HJDZQ32wgryXfIpMrGB6hFRdOVuo0qKC5qh3dqcwYEYurfvgNSIn3uKq5W7LiC/QNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720538928; c=relaxed/simple;
	bh=4ztXr0pYL5TO1gtMd+rtNuWMHPlgOlNGjjPwwANhHVw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=OpdL0Go1F4iLpQ6zOkQlGKnRhe3gjqccFS2+fcZ3gUaMBYfSk9wDT/GTpHWXoY02XVYf2jYTytnjMT0MR8YEzUh2cU1w4XwskeWcaJ4gz1aeshDgRR+/tUEdJmsKdMME+vl14ngsqgXPzOZ5BnLja5/lfskybItYihzTUJ7Dvso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yLtiPau6; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-367a081d1cdso3017404f8f.1
        for <devicetree@vger.kernel.org>; Tue, 09 Jul 2024 08:28:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720538925; x=1721143725; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qggsgys4NITMh2ghLGb9NlRQPBQp9UFrf0DAdDJLM1A=;
        b=yLtiPau6x9Yc0W00g2VSls+WVNo0WbQDGPiuZaWLoM9zWnLbu5WM0SBClnpmMLHZIn
         hQ+Gko8o6Y4Ffx2HYt/VN+eR3u4qjwtcQacPH5C/MSQ3fuW4SU4C/EGl48L3fS+psppY
         fObZFmgEGEAvwwtKuq5eUtiEeM0GzYvTt0os/CfTbDhVMNL+mIWGTYZpUjXTmyItXPPN
         V7zRsP+VD2/tWx8Xn7X/QPT2HEHJfmfG2zqF2smWtOLbrcJ4UfdpiV00aNsTSViiczmo
         9P02uGuoC7HxhB9bjquz7lMW6mWDybaqPEYuCN6G22pnJT7wRj9QioyXNxHqUhg7Rize
         2f1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720538925; x=1721143725;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qggsgys4NITMh2ghLGb9NlRQPBQp9UFrf0DAdDJLM1A=;
        b=u9RXF6JOuIgoBn/PyxtaV3WM2mLcztLxetpP08m9ScVG/KFvlm28KtGd5rxxmsilqx
         cr1TxFVYpVTzELicQOCUHI60EwJ+ruuBLFNsDiHA2ShDNF86x4Fq9RSAv8HH2UGR/X07
         RI/mL37KQyzuzprxNHYRgMkUmkEEvOVsA8pxK9gpjO6OdYxwFrWrxPfzNiGpra/8C+2U
         BKUxSr/1zMC/h2ujiVMAlkLOiAgcoU3vHn/rgoxMAXl9KUPIBK684Ot8/JMgBHfeFNfa
         9QP+ceL/EAqoc3NSVX4b2DBCNKTa5KItLhK42rlTV8nht27PNKBB0u5zNajFCIiMLTZd
         gDzg==
X-Gm-Message-State: AOJu0YzAcQCR3C6nS/EU6mw1qoT8k635//b+cgjX4kwIBhqSCIF/8a6F
	8WCJKY3x/qm2VlgfASl8jg7SZsR4DFhEGpF01RE6ktls7+UaL4WA4zNTtVdpa78=
X-Google-Smtp-Source: AGHT+IEVPnUlGz4qBOpMvn0Cp+wRKUUvSpZGFqyVY/8mj8sAm5oAs73VACcPAdVUmONzXpqsQCIfmQ==
X-Received: by 2002:adf:e412:0:b0:367:9bc8:8c0a with SMTP id ffacd0b85a97d-367cead844bmr1967042f8f.64.1720538925370;
        Tue, 09 Jul 2024 08:28:45 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-367cdfab748sm2849119f8f.111.2024.07.09.08.28.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jul 2024 08:28:45 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Jianxin Pan <jianxin.pan@amlogic.com>, Ulf Hansson <ulf.hansson@linaro.org>, 
 Xianwei Zhao <xianwei.zhao@amlogic.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, Hongyu Chen <hongyu.chen1@amlogic.com>
In-Reply-To: <20240627-a5_secpower-v1-0-1f47dde1270c@amlogic.com>
References: <20240627-a5_secpower-v1-0-1f47dde1270c@amlogic.com>
Subject: Re: (subset) [PATCH 0/3] Power: A5: add power domain driver
Message-Id: <172053892457.1166789.8670207814900707876.b4-ty@linaro.org>
Date: Tue, 09 Jul 2024 17:28:44 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0

Hi,

On Thu, 27 Jun 2024 19:47:50 +0800, Xianwei Zhao wrote:
> Add power controller driver support for Amlogic A5 SoC.
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.11/arm64-dt)

[3/3] arm64: dts: amlogic: a5: add power domain controller node
      https://git.kernel.org/amlogic/c/c087cd0ef1b0c2adfabd216e28dfed242b5f4f07

These changes has been applied on the intermediate git tree [1].

The v6.11/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
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


