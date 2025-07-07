Return-Path: <devicetree+bounces-193826-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D11AFBE0A
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 00:02:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 75DFE16613D
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 22:02:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CD7B28CF61;
	Mon,  7 Jul 2025 22:02:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="rDVrAfrC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA64528A1EA
	for <devicetree@vger.kernel.org>; Mon,  7 Jul 2025 22:02:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751925739; cv=none; b=pm4yvi6TpXqkcs2/pTSTs1DalsTtIk6ERYM9WKO+M+N+/kauMigYzE45PTVjgU+gJhJKKk3IX5VsXg64hI+QqunnRDNr4vsXGrGKef10UYGzkyJH9pmgf0QNi8iV9fWTqmTmAq29+g1O3ty1/NgUA/sND47o5X2B8Pw6ptJj8g4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751925739; c=relaxed/simple;
	bh=M5CKuRv5NLhRjmqjKZwutyQJJfBH+MYMBM/Ul0kGuFA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Desi5j+qD+uMGHXaQpXSHxuOiP71g9UhA+AuXNmOAHs9zs0ylEFYT5fn7pdLBSBTd98PP4U5JpJM+qOG0E0R7O2s7JbZysbYmYJIxlMsqtsi99af4tYunvA+yPbtl81N1f3lIgeHPaGKz39/vnCXKdlZOVxGQCmF9O3KFKdm76g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=rDVrAfrC; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-234fcadde3eso54183715ad.0
        for <devicetree@vger.kernel.org>; Mon, 07 Jul 2025 15:02:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1751925737; x=1752530537; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iMU0RXTncBQjVBF/K4IRgwydOyiiWJEg1TYIRfHWA68=;
        b=rDVrAfrCOyRYGsEZfy+QI0QWn51zHFTZcYb+/9qjX8eCoOuqsMSI6czsUjUJkRcM2g
         9Qnp3epWgrxYkddWTVb28DEqWj1+P2x2oB5bRGF+A+cSz4DIdTm8Ew0hDLwVrkr95NYj
         hAvzgAj2J/O1tGZTHzon8AnhWqVWamRQBgNclNPtYUMkrAQD3OUQh8WlUfb2B94HgsZJ
         JlnicNLhwDQFRTG418/EGOTBpYEvtZVaCHDpKTwSuoc2ypdy3pADhoTGOWSK5/fsu0SS
         bCeh5QuiWrxoGZRgXBmM5Cyj9LApq7yEGPH28Dqme81V005+AGzLaiELMseEwtzQ3SAu
         d+XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751925737; x=1752530537;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iMU0RXTncBQjVBF/K4IRgwydOyiiWJEg1TYIRfHWA68=;
        b=qGhoiel1xWHhSqnl5YJ52qhCbbapAmd/+pWI55GfhAsuuT6b0u+o9FcVUG+Ybzt04w
         V1ENf3bB5ruq4vc2GR8Y9cwgK8yX3HbcXq3vR6Sd0ETIIU5kj+bMR/MQW4zCs9lc0zxW
         F1z66ZyQg/eIBoBCR1gan40SP+ZAdLmEVbfVxPrmNe4zNHU9QonRZBFWqoJ1aSDzfK0n
         TUozhoYSJeFzfsW79N8iuBKofkOe5uOaqU4RkGNj+uXR/ADgGbRPpUWVwb0pqsIda6GM
         6V8vlThT6YtPNObNRpvf9yO1UrkQbQ1rjAKrM7dqxNnbPsMEvAtDzW9U8/9jccQZO6ty
         YeXg==
X-Forwarded-Encrypted: i=1; AJvYcCXwIHoW/dOxAZs/fiE1gFjOGfI2Fvrs5PLG0Zz0w1+Jwi9bV3Pp79M3Bciwne21oGFUKmsSyPM0WBQE@vger.kernel.org
X-Gm-Message-State: AOJu0YzLBJbLCEdG7+7dQ4PEKxJ3TpXfSIAuGVBmBK5e7gLIkpcAKXUP
	YtZJZu7anNTtwqFFOZZEfoPpIvPGIut2IQoaOUTaEJ0zDvzEfkGxGpd9htevcBD46yE=
X-Gm-Gg: ASbGncu6A8ZW/LsF6vBGIsvh3c73mjQgYGXvOCRVY2cqLVsI5eUnYfAiDJ0Is+c+wDm
	3GrRFfL5Do6sFjtL01nNSSTaSCbQpyygk/FHebjoYeCoJtN/FIoVIKLDob+OEPl2XL+E5nYMNMf
	rza45wI2Gvc9IurD+6kZYiHUHr/RfDAp1GUOuJppuf9/e4VSB0p1G+yjWzSx+VVnvfiW8Kiz/ZY
	PfF/pyhxBg4c/8ZFWdnmW/AadhdtruV2I1aYMLa5HdzTpDtnRMGxhRSpUcQfcfo0HP9OBf6vFUh
	RmyeajEF4GOOLmf3Tk61llLOi+N0CEioQRXuWAQkYfRV/hikaLUnkp5OauFW
X-Google-Smtp-Source: AGHT+IF3ndJoSXBRWTscm4ArK+g7LkuzRAE2xYB7+hLKI3vLBOrqbLkXRpnWS+dMztiRe4cFppAyPw==
X-Received: by 2002:a17:903:2b06:b0:234:db06:ac0 with SMTP id d9443c01a7336-23c875c0237mr213191825ad.45.1751925737144;
        Mon, 07 Jul 2025 15:02:17 -0700 (PDT)
Received: from localhost ([71.212.208.158])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23c8455ebb0sm92692555ad.120.2025.07.07.15.02.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jul 2025 15:02:15 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: tony@atomide.com, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, Albin Tornqvist <albin.tornqvist@codiax.se>
Cc: linux-omap@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20250624114839.1465115-2-albin.tornqvist@codiax.se>
References: <20250624114839.1465115-1-albin.tornqvist@codiax.se>
 <20250624114839.1465115-2-albin.tornqvist@codiax.se>
Subject: Re: [PATCH] arm: dts: ti: omap: Fixup pinheader typo
Message-Id: <175192573551.520018.5675346389036429336.b4-ty@baylibre.com>
Date: Mon, 07 Jul 2025 15:02:15 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3-dev-d7477


On Tue, 24 Jun 2025 13:48:39 +0200, Albin Tornqvist wrote:
> This commit fixes a typo introduced in commit
> ee368a10d0df ("ARM: dts: am335x-boneblack.dts: unique gpio-line-names").
> gpio0_7 is located on the P9 header on the BBB.
> This was verified with a BeagleBone Black by toggling the pin and
> checking with a multimeter that it corresponds to pin 42 on the P9
> header.
> 
> [...]

Applied, thanks!

[1/1] arm: dts: ti: omap: Fixup pinheader typo
      commit: a3a4be32b69c99fc20a66e0de83b91f8c882bf4c

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>


