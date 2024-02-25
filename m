Return-Path: <devicetree+bounces-45692-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A74A2862B98
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 17:13:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 44CA01F219BD
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 16:13:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A9411C29C;
	Sun, 25 Feb 2024 16:11:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kct1azZu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E8B617BC2
	for <devicetree@vger.kernel.org>; Sun, 25 Feb 2024 16:11:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708877472; cv=none; b=To23BfD6sHUOlyyE09miHURoijOnnNtU3hQ++cV85uvWCE7gnNQcBEN+xNEXh352OffcJzRl4ol4+reW3eZSxCo8ez8XHM1SG+xdpk1qySZ7G+OVMXLF5IIsVNojR6Yujea7HZi3yjup0c1SEkOdAgDyav8ZmMnYV/ifZ+mISmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708877472; c=relaxed/simple;
	bh=cU+ktrd9n1YdiXM1Kh/vgAaMqYKS0NvqKmr3Z7+AuMU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=NCDNWj7i1JPQ9QEOFcPz40l2xJKAL5Vf6gcFyKu76aCl2jPd6NYPvemhtSJd59PoQmgP3aPippbObya84ZMb38OhbB2ue7o77zVefcqALY7XeQ9I6rJJ0O8iT+m4NmPz0Ywae8DLHWZrH6YqHbSbr/JC5K30LcGRadcHVWAMZdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kct1azZu; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2d244b28b95so24105631fa.0
        for <devicetree@vger.kernel.org>; Sun, 25 Feb 2024 08:11:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708877468; x=1709482268; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4KXVaOKFr5kvye95hXniuMdgC2oHUvYmqm0J4NG2OIs=;
        b=kct1azZuNZxGpkqxvTy7dbvBPVPOhtsIwwCCmYpacmIRLhtEFFNbx6lGmv489CTbBi
         4AT5qYVyHDzNQRm1g0+Ux9xsAsmrIfM6HXK07ofOoo4BLHZvJVzbGag1fSZ33GQtloY4
         gmCgEJOTRqlErRQLjg/1nDLaE22GjYIdgruRTiuSL5AjoUVMFtVATWIZ+iuCK+1YaaSL
         ARHXBdLcmIhhQUQPmIN8X1rAbC/ZC9h6vKl0T4B0Q/F59rfFw6T76wYatzFn1eP8b7XR
         E9wV0FuBpDZSI0TbLkQMPSlOkbSl87Pcx2P1zuXCXn/wfxJNQC4YVbsWIMdVq7DkN9yZ
         RkZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708877468; x=1709482268;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4KXVaOKFr5kvye95hXniuMdgC2oHUvYmqm0J4NG2OIs=;
        b=d2nhin79HShP8PY3GS5MdhIXQ+jR6Y2otaFTbVV6MatP8kDzWReiIJXtgcJbp1h4yP
         ZQwswUNsge+nCXSZx7hVsSHX8uJ4MLnW+6g9plgdEvcEpPKN+xYLEJHVXGZKjCh74cfz
         YTxVyfNMYWS0wpuIwUpq/3DU7ERIX2J0NhZ5L0HmnTNhjrcHkoNFyALgWZARE4FPfXVr
         ELmSlAZTJCScMdChVFG0FQKT6B9JXcbbqhD4exzXfxA1nwqQILCzofLwhzdXxSD/0IC5
         G0+VG1lk2bQ7DLIa5niOq1Opa86sbG8qwZ7AhTGPV4qWt3b2gPdHBq3otprtbJBupf3X
         mXCA==
X-Forwarded-Encrypted: i=1; AJvYcCVGmVDi7JfST08qQladHwLMt28+LAqtC5zH+xEED0NtNYzOJ8Z+3HPYrayR3K25amyFS5181wgT5q5llz4d9rgY3olnHOkgj+t60g==
X-Gm-Message-State: AOJu0Yz8eJ54YoYFaIOKNyM9pzNxeF9OD1B5UNfBaZNH0Y89b/cWioET
	2uQQ1rcaWgzWiL6tiEeW2RxFZ8W6IqzBfUmJ2j5llepI7TAUFk3LQDp7spPE444=
X-Google-Smtp-Source: AGHT+IGBSbDT8sCsvS0w3yvOiCct9/Bh/XM1WMHea5PKYhnydcn6owioy2ov2Yd8mpPObPaj6UGyvg==
X-Received: by 2002:a05:651c:220a:b0:2d2:4374:b71 with SMTP id y10-20020a05651c220a00b002d243740b71mr3393789ljq.11.1708877468468;
        Sun, 25 Feb 2024 08:11:08 -0800 (PST)
Received: from [127.0.1.1] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id n21-20020a2e7215000000b002d2697570fcsm579184ljc.93.2024.02.25.08.11.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Feb 2024 08:11:08 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, 
 Sam Protsenko <semen.protsenko@linaro.org>
Cc: Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Tomasz Figa <tomasz.figa@gmail.com>, 
 linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20240224202053.25313-10-semen.protsenko@linaro.org>
References: <20240224202053.25313-1-semen.protsenko@linaro.org>
 <20240224202053.25313-10-semen.protsenko@linaro.org>
Subject: Re: (subset) [PATCH v3 09/15] clk: samsung: Keep CPU clock chip
 specific data in a dedicated struct
Message-Id: <170887746655.215710.9580664950836563273.b4-ty@linaro.org>
Date: Sun, 25 Feb 2024 17:11:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4


On Sat, 24 Feb 2024 14:20:47 -0600, Sam Protsenko wrote:
> Keep chip specific data in the data structure, don't mix it with code.
> It makes it easier to add more chip specific data further. Having all
> chip specific data in the table eliminates possible code bloat when
> adding more rate handlers for new chips, and also makes it possible to
> keep some other chip related data in that array.
> 
> No functional change.
> 
> [...]

Applied, thanks!

[09/15] clk: samsung: Keep CPU clock chip specific data in a dedicated struct
        https://git.kernel.org/krzk/linux/c/9c746e5afdc3f784593c903d4be3d418f75d7787

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


