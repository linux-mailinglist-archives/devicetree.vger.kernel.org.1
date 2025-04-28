Return-Path: <devicetree+bounces-171362-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DA86A9E8A4
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 08:57:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BD5651897CF1
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 06:57:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC5F81D5146;
	Mon, 28 Apr 2025 06:57:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BTMUUgkd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D121757F3
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 06:57:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745823459; cv=none; b=eq66Vv53YegHEfsWAVs2nQbPXPdThyHwQrZ80wJwOKDpxuYnF8fhGRvtcNvDA4MPWRyRdtSGysUdpkKh2ACMadxHCXE3tCulsYEoiGlkg8dOrJLErwj/L+putu2jX8wNmvhWrDqFiJ6ODdiUSooA/6KHZ68D+Ta7fzlO3E6iq2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745823459; c=relaxed/simple;
	bh=d4XFv9AM2KzoklohKn4qQQWEUfY2HK2Ojc07GQWCCU0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=ipWvbbeAyzDNsiF+TbowhCMHThyvA79MAQt0S1i77E6yzQwyGFAoi2Lj/Q6fXFAz6QR4lCt5yVeWPPmBpwncYto3V3xkZY5fwOG1UmVfSsO6cf+4SRK2+UEA4lKvEDDfoq8L08nUqSGO7MqSABK/hVqOWU+Fnhovyxl0fk04Jog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BTMUUgkd; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5f819da7eadso10610a12.0
        for <devicetree@vger.kernel.org>; Sun, 27 Apr 2025 23:57:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745823456; x=1746428256; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5+ortHNrfOvVi3JtuuibxSl/bmwTJ5xWjzQLpGiIwY0=;
        b=BTMUUgkd+v8IIPzvt+5P5kyH2sC5Igo2jIQ64GKuejDk7mQjFMKzsZbGHUlTLLTMNn
         rqtb4zkYLhASdIiNvINmjR4kRCAmrSSTM19m39Zjkx2BkU2zIWYO3Ji5fsGm6ujWOfjZ
         5+JpEIMpF780H0bapcyC5NJlnM0t5h6jm4iAhYH2RCmFz1kADG4r24Ig2GObHkmPdWAr
         pB7VoPdfwXZBDNm3gOTmS+q+Ik/7FmpIehiOXiHOL1SzanL5NkwXNX3y8ceolyHSbHQw
         vtFjGkdgIpSVytA7f9O2F9yB0OkKDSGTV6NtBTm+jUSanjSfbHfzbH48frpyn83wCFgb
         QiVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745823456; x=1746428256;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5+ortHNrfOvVi3JtuuibxSl/bmwTJ5xWjzQLpGiIwY0=;
        b=TvOWtuM+plsYIJOPZpg65jjnv6iC1SxdRqyjotJkdObOnlYzIzJ1xgO6Xo7cHyMGV4
         OIGtEBV7OaDcFo9IqTaJuu26bWbrxlJeV2sDw9DH92OMjNbeofLeJ8SPSXeu0415mSvM
         wrQpw73IImA5migMKD4u/f4PPo9eoancruNiv1m7xDuprDMLYR2W8XMIY0K+uNOJY9cc
         JoW4Ent4buQSx8xr2Cg4Vmsfo1gbsCF6uLZ+hDlUUCu3aWNmwZC6mi4zGunlQTG2bu7k
         Mr+uR7e9xQNuDTbgmyIpfJEaGmh+Kh41Nsu9eiXoVCZznKqfqjWJIkqGV15ErN6MkCT4
         sVgw==
X-Gm-Message-State: AOJu0Yxlwzr7EegusEsFHzw5sjiLW4UUDpvluxUowm0DxvJOP2iF+i4a
	6k8iE+gMiAT7+yFgPdWttPfE8O8v1szAd3EZHJ54OdeQay1uz8qBrpM9BZCjkLg=
X-Gm-Gg: ASbGncs3AvOfW3v7uSMbjbNpeGRHuXtZqAoUkyyAr3DcZjWCsPfoQjZ7jy7bcwBpRhs
	MFPs6NxFDwynMCaZv2kNovQaOm2c8qjATKywY3eqBJ9LzMVMtTw4vjBf7pN9N94nEFUd9p7Fn0H
	aGmNViwjFCFyhx9fxVNAcvCikNE1DWQADifcUUVWj6B9TPObhXPYPulmFHSpF//+08udLzSLdVD
	BRH4rjicXlItP8cC7k81bUTyEpSua2KNrwGIBRSjNGVSuIL30sJGkmw4mlnjCLZGW+UXcZYkT9T
	i6F8p+TZHfMW5ZivpL0j4irdUb+ln2W/JKU4UyJM9Cgd073Kbj5FMfzW6kI=
X-Google-Smtp-Source: AGHT+IGPXwdKcilrH0EaY87ltjYS5IfxJmMxGOJymVoJWkuZjfIeQ+m0X5W+e8qJFuxvTNyVzNvW2g==
X-Received: by 2002:a17:907:2d94:b0:ac7:2aa0:309b with SMTP id a640c23a62f3a-ace7102a77emr346405166b.1.1745823456326;
        Sun, 27 Apr 2025 23:57:36 -0700 (PDT)
Received: from [192.168.1.28] ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6e41b2fcsm569109166b.26.2025.04.27.23.57.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Apr 2025 23:57:35 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alexey Charkov <alchark@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Conor Dooley <conor.dooley@microchip.com>
In-Reply-To: <20250425-apc_paper_binding-v5-0-3aef49e97332@gmail.com>
References: <20250425-apc_paper_binding-v5-0-3aef49e97332@gmail.com>
Subject: Re: [PATCH v5 0/2] ARM: vt8500: Add VIA APC Rock/Paper board
Message-Id: <174582345507.19754.6996971204397782519.b4-ty@linaro.org>
Date: Mon, 28 Apr 2025 08:57:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Fri, 25 Apr 2025 19:02:21 +0400, Alexey Charkov wrote:
> Add binding and DTS for the WM8950 based VIA APC Rock board. Paper
> is the same board for all intents and purposes, so reflect it only
> in the binding description.
> 
> Split the series from v1 into several chunks by topic so as not to
> spam all the subsystems with unrelated changes, per Rob's suggestion
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: vt8500: Add VIA APC Rock/Paper boards
      https://git.kernel.org/krzk/linux-dt/c/5ff150fc3755516937e7b1747722687ad4f75eae
[2/2] ARM: dts: vt8500: Add VIA APC Rock/Paper board
      https://git.kernel.org/krzk/linux-dt/c/927e1b7ac361fa1a76fb29caa21853c9d8ba315a

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


