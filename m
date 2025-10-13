Return-Path: <devicetree+bounces-225780-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F14A9BD0FBB
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 02:22:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A3A914E43E8
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 00:22:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58C6519C556;
	Mon, 13 Oct 2025 00:22:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rOjzvtUw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEBB015DBC1
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 00:22:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760314961; cv=none; b=F/VB2DyFZk69IK51eejE/NJVu5OxPVo8mKrrxFnKD4E/WSQ9eL+Re3gUc/sfltPFLHzLAHWpKKOZTx4OkbllJbetfWXUMh2A0tG4vWLEz84moASZykOHcsWqJ5i3m7QZSudeNpxk7rKyXSAsYLyZhRiHg7Vvnuhl5n9kUb9JzmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760314961; c=relaxed/simple;
	bh=+dTERHXHwlz9Q3on1s7pnMr9sQk3vgyQfbNftxESlcE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=slpSS1BQkk/SgXTLuQCDzPFvxvI3TYdE1Uv41nbbLm9bIKIM6OIQBnjPKnoiSpBtXVfVhasEbiUCDfUQNEX1A5vUyOGotVJUxlN70w6rCqRSdaZbetoBZzC2ESPinvvTC0mQnpBVBQqbYM/8HqrLLONLTJmaJDFUvkC9YGQE3OY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rOjzvtUw; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-267fa729a63so6385865ad.3
        for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 17:22:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760314959; x=1760919759; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UVqRhIZigralax4KbuXiwcZcRbWu9Ae0Ahc/RkKiB+M=;
        b=rOjzvtUwp/yh9Kh5vxsDTCOVN1ux7BeMhZj/iu2ZIEnG2yKMWynzfeKQxi2boBYZfo
         iP2Pf1lS60xMi8jpDyGch6iZwU9MEF44nvhQfNGgfA0G/Dwp3ttyk3EDLU+acZ6exYtH
         4aVdXAeCAmtF0lxf9aByTpE9GktHtboLp9G+sm8Kv8bwhpBU28rX2W/DbnEtjugt6Quv
         63sMOKRUEWSP+fekAEhzeMk4TD8gUZ3qMPo8pNBfc+pZV62k9cmtEF0mbuy8Qm6CcZbP
         2oh/hvaInb/P+yP99xor92f38GTeiLu9588d/tvNTrl09qY19pbRy0eWaKfLk7JIIw9B
         I4SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760314959; x=1760919759;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UVqRhIZigralax4KbuXiwcZcRbWu9Ae0Ahc/RkKiB+M=;
        b=OtKbKLZVjkOt+QTTG2Kffn41jB+uu1dwFL0ZAnoTkQNLB+Sfpo849gw85qOF6FHO67
         an1gI4C6jyNX0owhhCtjrwLItPw1Jx9yoCtNkWDDqxvOsxUEENEVr3mptCiL/gMvvZhj
         k9D6wpY1/TLCQTAZfTaWLMva1NvGPi5fLsDCoBIAOmy6xv7Nfeg2m2mLdBdA8QrCVq00
         SgdHzlnPXnTJMELM13PYl4TibblsfMvAd0f4SigJUcQMPmCZb27LfMXASsv1C9gOdnZH
         LYUumhITSegscMx0buFINd0BrEOXpJzqjlLwULp/4evWSTFIP5giVnSa2KlDJDc6kapn
         YoeQ==
X-Forwarded-Encrypted: i=1; AJvYcCWyJzI2VcaNvSpCTQpY4RSWF3BRegvy09hueJ7a3QyGEb0MxEzmWz4flIXV7PWCqegkhnCPi0Ez3kxN@vger.kernel.org
X-Gm-Message-State: AOJu0YyH3wGi06KuD72rFSG/Pyk94qGW4MbevNBBghazTXVJmYr0TXLC
	sj47wsfXsSroR7ECfWBwsz9eq7bKq5csbUJo+H/9e/2knHrqEqwe91nSRYlW8pqC6Ek=
X-Gm-Gg: ASbGncs7ZVaExgRXnmY1SOTCY7Cv2ai+lujVAdylQ9BdK+85UGHR+//xJQWiP+Q3pQg
	raF5VvGBFwtzT9W8DsPxjezchgV01FyRKqQT7E53/JwDufn+eokB04zRC6lZ1eIN/nul+d1xVJc
	dJ1QsvykC6gYXReuERtLDTiUlYVYZBo4y4C2LJs45ScAWkXBMjf8fHKPDabVW5DW2/yPAM5mSpx
	fAifniuAUuU271dE2I417gX1IcZh/mjrI5kqw/U9poVjYuiXT3JDjP4hFF6FrMoVvQPhZkKiS5i
	SaTMfbnXCUd7qTMsrDtpsNhx+Cb/034XgQvj0W1zkfnjAMR1Xae8fABKUmmaOxHlgmst/3k9zXA
	6WeJhZsNC77wYdkUHABpg++dSuqf2c+gqzR2a0BAPgYtcpKDeeFsTacWVC/9ODPHivvv6DYc=
X-Google-Smtp-Source: AGHT+IFK4ci2TGNbmqypL/3bygm/UTzER4LfBfP1yAru/4qRR98/cUW50Jp7i5jycMDRBEjIp5poiQ==
X-Received: by 2002:a17:902:c404:b0:277:c230:bfca with SMTP id d9443c01a7336-290273e17bfmr142190255ad.4.1760314959008;
        Sun, 12 Oct 2025 17:22:39 -0700 (PDT)
Received: from [127.0.1.1] ([121.134.152.93])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034f05bcasm115840285ad.84.2025.10.12.17.22.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Oct 2025 17:22:38 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Tomasz Figa <tomasz.figa@gmail.com>, 
 Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Cc: linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20250914114457.2610013-1-ivo.ivanov.ivanov1@gmail.com>
References: <20250914114457.2610013-1-ivo.ivanov.ivanov1@gmail.com>
Subject: Re: [PATCH v1 0/3] pinctrl: samsung: add exynos8890 SoC pinctrl
Message-Id: <176031495194.9871.10054397457165667570.b4-ty@linaro.org>
Date: Mon, 13 Oct 2025 02:22:31 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3


On Sun, 14 Sep 2025 14:44:54 +0300, Ivaylo Ivanov wrote:
> Hey folks,
> 
> This patchset adds pinctrl support for the exynos8890 SoC.
> 
> Best regards,
> Ivaylo
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: pinctrl: samsung: add exynos8890 compatible
      https://git.kernel.org/pinctrl/samsung/c/9be3b7bb7ddd4e8ed466f41c6f43de34424aeb8c
[2/3] dt-bindings: pinctrl: samsung: add exynos8890-wakeup-eint compatible
      https://git.kernel.org/pinctrl/samsung/c/f416d35e6522f0c08d4e866e5d6930bfd504e645
[3/3] pinctrl: samsung: add exynos8890 SoC pinctrl configuration
      https://git.kernel.org/pinctrl/samsung/c/5b6b7d39cee69373dc61ca22164d616e4faf60c6

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


