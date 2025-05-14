Return-Path: <devicetree+bounces-177078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 97ECFAB6616
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 10:34:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2B0E61B6287D
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 08:34:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8D4C2206B6;
	Wed, 14 May 2025 08:34:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="D2BhP+AC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00B4B21C190
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 08:34:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747211678; cv=none; b=OlkPVzvs3Sou6V4oR323piu6t6PR8A1babKOBssnAkrDuq7hj9VdewV2ufAgvQVKoJFRNll/1MhWRXzbDcV2CprehgNFJIqGXrTtd52t1nYG22j2Yx+WRa4GOBIXpp0wDE6hqa1pAnZwNQEQZVffHS/1sH6W3BqFFHPrIEuUreg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747211678; c=relaxed/simple;
	bh=DSWauo+U3o9231cQ5RDfCfsPrf+JknAFg22x5w5WXXo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fOI5QlRpXrP4swxqzQhxIpdB3xVctq7xodrCgKFT24OVlD/Td0NRwyoT/n3rSwIhVCkiQPunWxSdoxs2kR8gYaKFjMaLbTI+rw2zVovA8nMGTO65ScLPZ3UglQA1fw2FN8GEqwdfSHTYN9lcpFB4B/QkKWdOA8qTWnBWYVyiksc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=D2BhP+AC; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3a20257c815so3565421f8f.3
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 01:34:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747211675; x=1747816475; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Lpk15JvnYp3a2l2oLG5xWFRwRjCqy1khehzteRsCvek=;
        b=D2BhP+AC1Kl6+Jzut7RbxJR5gbAiSm3QfPVP1nedhbndS+Xveu3Jxlb00lLHsk6tjB
         4UA8ivJC7807dJagm4/FD6SmId+GXLcwqWVAnyv6+4F+RRCr5wziekosOVHMlJTWfpW3
         AYhy951VPeWQcgiLPeOZq2CHhg/f4aN2vhFOlvLYzAyDJrvSYeUQ+OTbVaz1MHgx3PUj
         dkygIhrVMqVVWaCcwUWZZjeNngJNBp0w5gE0yLembeDPyWworRtiHD1nnSf7SKlzbB7G
         /EsBayeKxYpOQklo4COa/izwbVPy0JGNp56WPfc61O+2FMxaOp7L5/hODIWYIre9gKM/
         ybqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747211675; x=1747816475;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Lpk15JvnYp3a2l2oLG5xWFRwRjCqy1khehzteRsCvek=;
        b=e0BbvOZ1M15Dzk1DDtneHqXkUXe3fOWQM9IDEyJhVC4GgzedlEncU8dXzddruW9CQ3
         vonDLiRwBtnsaDHH2p3fXXN0HXM8xsGUDS/IljVxvKxMb8GYGh6fqPFZKoFjRqXS4YaQ
         0no3UN5duA7sGLkfjT/+uPLre3IcjT4KJTDqv/1MPuu4vBuhq1qL3xYkkyVw04teSaVD
         GcOAiAkWHxZTT0ZcuYeekCqeLP27VMAMeT3UI37n0d23JZwCaqCKCGUGih3R7xNnCY0B
         u9TVyBAw7A+nOGqPBrPhc3u8cdy3KJeiT00xSB75rSMKRqxvyGwxMIisOtlpqVFsLSpf
         vodA==
X-Forwarded-Encrypted: i=1; AJvYcCUaSPiKBA2+BBY7hLScZNubnMd1GgEXYR+4ymBu/dvz99qyO3+rwRRoYAPqplhINWLkQwd29gr3m66E@vger.kernel.org
X-Gm-Message-State: AOJu0YzzSv8Hywt8gBx46DqtJ9wiRolEfEh0Q7Fw24wDpW3/03iVxXcQ
	PlBvAAJ6dzDi/4ocnaSmyeEcQ8RDKfoD+0qh6zXterGBotUEd3Tfqe14rOCg61Q=
X-Gm-Gg: ASbGncv0WwcUxfj2vpDNYQtpRh0FX7SwMTGPkrxyvZJ4NSL2AOCp2mXwFIkQMqrgJzt
	RrhXUOCnmQeoI3rcHTJeYsruKf/MaYJv14kYNeDHsH6n1cdI1mNoyO6N/at/cYG9C8/TiU9vZoK
	hhMwF2/vcaNk+r7DbOLpRXqeCayz+f/2/m8LSFv2/Af3OXFRTIslWv2Q25vixKwOLqQp1tcFMIO
	DdmaAyleOZVr1R43tL9yygmEIgRV289F1ZPrtWIKI1DqaN52vZk2RbTYMw2qIq9hOTwbE4Zetth
	StBsph1BPeQJBBOEvXPL3Iub+2+VG471CbqbRdGFqAMgZTZ1ftelhACnH+trbSmHJ5/FTiJNMWr
	Rp5ieh3f5BpyOfA==
X-Google-Smtp-Source: AGHT+IF4qjjU+HY8IfZOPpCU5WcWafIwqSU4OR3ehg6IR33UyrDws9inQGF3IDNUyKOx0epG8/Qluw==
X-Received: by 2002:a5d:5889:0:b0:3a0:88e4:3d2f with SMTP id ffacd0b85a97d-3a34968f999mr1902249f8f.5.1747211675277;
        Wed, 14 May 2025 01:34:35 -0700 (PDT)
Received: from mai.linaro.org (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a1f58ecb46sm19060940f8f.30.2025.05.14.01.34.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 01:34:34 -0700 (PDT)
Date: Wed, 14 May 2025 10:34:32 +0200
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: "Christian Marangi (Ansuel)" <ansuelsmth@gmail.com>
Cc: ALOK TIWARI <alok.a.tiwari@oracle.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 2/2] thermal: Add support for Airoha EN7581 thermal
 sensor
Message-ID: <aCRVmDk54EX2L20J@mai.linaro.org>
References: <20250510172509.2547273-1-ansuelsmth@gmail.com>
 <20250510172509.2547273-2-ansuelsmth@gmail.com>
 <084240c5-48aa-406a-9bbe-2f349f9c2509@oracle.com>
 <CA+_ehUy+WSzRre+64KxeJKtOb_Et8HO=oMV+fNrGF5HHLzh3MA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CA+_ehUy+WSzRre+64KxeJKtOb_Et8HO=oMV+fNrGF5HHLzh3MA@mail.gmail.com>

[ ... ]

> 
> Thanks a lot for the spelling check. I can send a follow-up or resend this...
> 
> Don't know what Daniel prefers.

Whatever you want, a patch on top or a v8

-- 

 <http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

