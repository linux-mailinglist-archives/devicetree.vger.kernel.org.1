Return-Path: <devicetree+bounces-175062-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D6FAAFABA
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 14:58:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7EBCA3AD098
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 12:57:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D374E22A7FC;
	Thu,  8 May 2025 12:57:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="P5q6afpg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03A6522A1C0
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 12:57:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746709078; cv=none; b=GJgJreuhw/N+BBQAf6WhRpM8hyE7TVWfZGZXmrXxt7m0LlCKkOE6kVfPFxfYiggxevwmJ2zS7/xiEw5at1tOI+0DK7ogDdtmNDt4Q58CQJ7UvZtSo66jo0L+lA3fBcvzdhjp3b5YvfFzUMQpV2CdYyFFpcKPOVaL1Jvu0YIbz9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746709078; c=relaxed/simple;
	bh=fie8ocClExZ/oy9M+sB0ZEiqCjjIW+Pu/7pCGbHETXU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Igu9+/oicya7X08MkPvZ1AkPaKdC23Pq+OSlisdlnU/boEO5OQJRZkvZS859tu1l/KyTprCYk4MJBbIixHN0ycrsQpqlBcGgr5J1FZXnmOwiTORlZqVlhn37lZWN4qnLNTX3jQW5fyFAUeKeoVIgb6uTiMsYf1XTBw5J8RBqk6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=P5q6afpg; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-43cf7c2c351so900185e9.0
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 05:57:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746709075; x=1747313875; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GyfX9coirJq8Cdaxq/W+11Z0EprDF7VsHit7r1SH4b0=;
        b=P5q6afpgQqcbcquSjaWapD6Jfnidy/bHerAnQhp92Rv9w5QHyvw1EQdhcOAnMGTbTN
         lxTZFH8kziCGqLdotsuSX9ifMnrGDffbZ9OTlj8xgEOPUb9gRIuU1ncho8jpiOCCyKSk
         4ozCaUzTflpGYASma6JWjUhcWsSg5c9RoelcbG49bovnIUdFOHwKd2S4aryeY21jljlw
         b2DCouK28BOXg5w5rD5SUJDl5YmlesDpUJ/H9w2ie35jILfYO26em366xpJC0EQbvKfh
         hg43P+9uksSbKNUR7H/cvlT1FS4T0OT9S59A4gWkqh61YshKh6MRfj9CaaYAy1L1E3zw
         fzkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746709075; x=1747313875;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GyfX9coirJq8Cdaxq/W+11Z0EprDF7VsHit7r1SH4b0=;
        b=ZABirgsJELA5pcxJmN8xS7FDH+6Z/pYZSJgmsnk0CZe9pMquYMDXwODQJK33HybSS6
         rKgBJ6DaGVUEpRu9vPj8KrVOQP8wbbBeFDVh1TgLnUbuSVSzJPrpuB2BM95St2JRUwXf
         +ERLGIDdS57SFy1yt2sdJUuj7LHacP7bAZ4OcU3oXxNGYnXF9p3E3JcgqxC4+GQtVkH8
         Fs+C1xJPhJ1mATNIf7OePAzYOvXaRYp4C8KK2WVJyQsDPLUfaerSwoReZv+sAVnNhBXT
         efZyIO38Pr0Qs4FJa6YBN24CJIcICYXjptcvSTPcIMgBvP9zvglqHxucksXtB9jddgnl
         6TpQ==
X-Forwarded-Encrypted: i=1; AJvYcCUYhK/UL+g28j6j3GA55zqKqIOGrzerWtYMCPcRxeaghRY2irZgaZE679HqS6p/LGprkoZegEo7XVg4@vger.kernel.org
X-Gm-Message-State: AOJu0YyNw45dJlMQFwUVxcwj0N7GD5aBOckl1zG9qgv5hziYjSW22lBh
	ymueiU12KPQGaVFlc/I9VbbbIpW500CRanK/tP/Tz5hJVECjiWBma9pjM54jYz4=
X-Gm-Gg: ASbGnctRic5KhPtRqm3wW1U8dqoNGNR4oD1nEekdi873tY9GEU0E+qmNAGU1xuf2gKl
	6KqhUQCibCqnGJljTAEiOUwvdr/1SafBzDipO4pmGdl1fytiheN8aL/+zhlntPW/pk2zrBA2QmW
	PkKcHh2QuUcdl9C0nNIEhyxQiG4lRz4sTOtxZ/+P2AYjMNTbriR2q8owpaRiYPo2RgDYl7rq+Pi
	Ucchn2JLvDsky6utgPvGUnoRKdNlTGrr+lshUxxA4jhfP5MR8gJotEI0BC9M5cAx3VYoHYuGjD9
	IjK+6RVosr0AZDduZivdjxjZbxLuz1C2SwQnT/4OBPCgtOtTec9r0QWTYmo=
X-Google-Smtp-Source: AGHT+IEUVIi3T7YfyMxv2zjt1ItTGIIG2vX6ZluzfArIlt1K86WUAmIJcFc2kVGlurTkPNqOfZ9GHA==
X-Received: by 2002:a05:600c:1da8:b0:439:a1c7:7b3a with SMTP id 5b1f17b1804b1-441d44bbf97mr24647605e9.1.1746709074954;
        Thu, 08 May 2025 05:57:54 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442cd331221sm36183705e9.11.2025.05.08.05.57.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 May 2025 05:57:54 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: peda@axentia.se, broonie@kernel.org, andersson@kernel.org, 
 krzk+dt@kernel.org, srinivas.kandagatla@linaro.org
Cc: ivprusov@salutedevices.com, luca.ceresoli@bootlin.com, 
 zhoubinbin@loongson.cn, paulha@opensource.cirrus.com, lgirdwood@gmail.com, 
 robh@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org, 
 perex@perex.cz, tiwai@suse.com, dmitry.baryshkov@oss.qualcomm.com, 
 linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 johan+linaro@kernel.org, Christopher Obbard <christopher.obbard@linaro.org>
In-Reply-To: <20250327100633.11530-3-srinivas.kandagatla@linaro.org>
References: <20250327100633.11530-1-srinivas.kandagatla@linaro.org>
 <20250327100633.11530-3-srinivas.kandagatla@linaro.org>
Subject: Re: (subset) [PATCH v6 2/6] mux: gpio: add optional regulator
 support
Message-Id: <174670907339.90037.743394782268502286.b4-ty@linaro.org>
Date: Thu, 08 May 2025 14:57:53 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Thu, 27 Mar 2025 10:06:29 +0000, srinivas.kandagatla@linaro.org wrote:
> Some of the external muxes needs powering up using a regulator.
> This is the case with Lenovo T14s laptop which has a external audio mux
> to handle US/EURO headsets.
> 
> Add support to the driver to handle this optional regulator.
> 
> 
> [...]

Applied, thanks!

[2/6] mux: gpio: add optional regulator support
      https://git.kernel.org/krzk/linux/c/12d3c69ba2734b5908e0ac8ac2dcbd0cc28fef3a

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


