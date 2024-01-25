Return-Path: <devicetree+bounces-35083-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CF9183C45D
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 15:10:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2F0721F23D33
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 14:10:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 662FC6310D;
	Thu, 25 Jan 2024 14:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="My6ult1q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B19845B5B2
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 14:10:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706191833; cv=none; b=aPAkKc2s0HfXWE4PfVd6ZLgZsyajK1ch6el3Cm/rBNpy1OWiJbvNuDqh/4DxMSgP8YitTunmUL1cLY530ks4Hj0J2nO4VQh7avhHvbLmJpe393/DqoPmeXPXr2J9MTOKvpiVurMJ+xUEWXYkCeIO7vI2Qgdn0upBuplswpY1MwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706191833; c=relaxed/simple;
	bh=GFWuoyj6kM7mp555UokZjvMLSAMuQRKEdo1HvImE3Ag=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=h8ePyxEOYDlgriO13FzwrlRKTI7J+fWT44ElJ76DJQauG/XEHzCTRHQGaqnEgTFv4gxo+fCgCtcykaQ427R8SFevgh5LSdslm2XF1JtwQ2vdc69imJTeuCsPNLMG5S73mjRckDq6PhYEGr19MvMPWclUiggCCYn+rrgUT50t8eI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=My6ult1q; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-40ea5653f6bso70373655e9.3
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 06:10:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706191830; x=1706796630; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=GFWuoyj6kM7mp555UokZjvMLSAMuQRKEdo1HvImE3Ag=;
        b=My6ult1qxuHJC4zQbM+ddki4s3sam6r+Z7V/qGRxai///ckiTozhu8R57mNR+nTd3w
         iEG8uM08ypE+wrOSgNdDAwUg0rqKUqLw7tWvNL/fV2ABQcLtbY+XmevQA/UacWzROHwP
         VvB+OvyiJK5UmrU/lvYkNi0ufqHpWn1rKhUS9Wk8+Yz90egnJ2v5p+SFxeLTKBUz4RpE
         iz+pAHEi+Tw5J/mTdPT0u9miPN0nykAA1KfX75vZnJugVUs1vojIQTyMSNJwVZMpWWJQ
         PcT+uql/bQTkMbEj754Z6iSi2o8JhJy+jB+L36OkS7P3Eo4X/TxdFFXFUvpAoGfMYpMG
         crVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706191830; x=1706796630;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GFWuoyj6kM7mp555UokZjvMLSAMuQRKEdo1HvImE3Ag=;
        b=WuLEiIUZe2d3lPMQxmon2MPoTpU4naZrS89lahGfa5Qe6J4LUHa+UB3phL00qcdN64
         kOYMcYWRqKPevIl/Kgv9MRUYgRlnG7ZnOr4hnOBaFZRWjMRHgdznkMisXekPshGVDWH9
         hXh/Pyfz2N++ZXtqInjO5cxRz96FTluZLkkm5NzzPIDhEKUJvNF8BKt4u/z0S0GS1U+F
         UXhnZh3bmkKJBXZ5rwSetnfwVswuZJBDRqYE5nAGF/1J83tP14OBR1z468CNKu85cdkp
         URnBhYelsZLtTUqXa/nkZhvreRQVUPN2++WLbVLRVMsxEva5M1yAhgsCB0Jj2KSIfyFO
         /u4w==
X-Gm-Message-State: AOJu0YzoSVc+rR9uZs88oQ8Bpdt96lsMU8tFfftX/qM0yDmRml8Xlc8i
	EqXYU3kbtmRIg6fhyrN1PtKpEnICqDMdrHe8uYc1xt1fur49g4+mCZzU59+ebtY=
X-Google-Smtp-Source: AGHT+IGRsQ095n/697hTcPYLtlxQazA8W1CfVIDPw5ka1a4U1RywC5HxBmgzKgKf82JR6cjwd/lP8g==
X-Received: by 2002:a05:600c:19c7:b0:40d:5cd2:5027 with SMTP id u7-20020a05600c19c700b0040d5cd25027mr532830wmq.61.1706191829992;
        Thu, 25 Jan 2024 06:10:29 -0800 (PST)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id t10-20020a05600c450a00b0040d8ff79fd8sm2781090wmo.7.2024.01.25.06.10.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 06:10:29 -0800 (PST)
Message-ID: <9a8bf6f17a0f8b4e31a6d59c1adb735823f579aa.camel@linaro.org>
Subject: Re: [PATCH 2/2] arm64: dts: exynos: gs101: sysreg_peric1 needs a
 clock
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: linux-kernel@vger.kernel.org, robh+dt@kernel.org, 
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 alim.akhtar@samsung.com,  peter.griffin@linaro.org
Cc: kernel-team@android.com, tudor.ambarus@linaro.org,
 willmcvicker@google.com,  daniel.lezcano@linaro.org, tglx@linutronix.de,
 devicetree@vger.kernel.org,  linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org
Date: Thu, 25 Jan 2024 14:10:28 +0000
In-Reply-To: <20240125140139.3616119-2-andre.draszik@linaro.org>
References: <20240125140139.3616119-1-andre.draszik@linaro.org>
	 <20240125140139.3616119-2-andre.draszik@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.1-1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

> [PATCH v2] arm64: dts: exynos: gs101: sysreg_peric0 needs a clock

Sorry for copy/paste error in the subject :-(

I've sent an update in https://lore.kernel.org/all/20240125140644.3617587-1=
-andre.draszik@linaro.org/

Cheers,
Andre'



