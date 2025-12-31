Return-Path: <devicetree+bounces-250750-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DB66ACEB8C8
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 09:35:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9BF6E302C20D
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 08:35:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC769312819;
	Wed, 31 Dec 2025 08:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=0x0f.com header.i=@0x0f.com header.b="eXmdPw4U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8123101BB
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 08:35:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767170123; cv=none; b=DAgAX4pdnGs+q1Blhi/1O7DwYErSzOcKnKwAfc+Tyx51Fya4CJasKnck/d/Qf+pjPW27QiPDuEpq77JPNMVvBhOLq4hnxiQLlSyFzdUPRITk+ODN2/76iNv3EsdxTJJFktBNmUbcFevntXRKFQkgkCcMV1CuH6WnElZ3SD5VN04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767170123; c=relaxed/simple;
	bh=lMKqMGemPPjdCG84b9FHntGq+a5h25At3ePNUELMt3s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cUV71y64dUlyE8U0qT2FhKfBdo9qa6AgDdMcxMyVJtqn86tXQXVCooy+jdOXmNGOe6aBW4gEiESSXUkJufBxE+epkJR6JHlS1OTbhjksFr5i/jN4KdfSuNnvm9rsR+5z4QjVRiWhsOL3CdpHZntX6RuVu3ZH/2XUYwDVbevyqcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0x0f.com; spf=pass smtp.mailfrom=0x0f.com; dkim=pass (1024-bit key) header.d=0x0f.com header.i=@0x0f.com header.b=eXmdPw4U; arc=none smtp.client-ip=209.85.216.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0x0f.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0x0f.com
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-34c27d14559so8351524a91.2
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 00:35:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google; t=1767170121; x=1767774921; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lMKqMGemPPjdCG84b9FHntGq+a5h25At3ePNUELMt3s=;
        b=eXmdPw4UEKXq8TUosOuNPzndYFJNaZ3bQehsnHE6XwhTlBKqadXlmGx4ugd0rmuJSj
         AuiIsFuBP8rSy+D9Cq3LHp0fnyw8dNDzzZ0UlUw8LqvLcSW8jb4CSBFh5fxLrHcDYt6H
         SjTrqmoAojPoxvMZ1Xwe+bR1pbxbsFlWGU1H8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767170121; x=1767774921;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lMKqMGemPPjdCG84b9FHntGq+a5h25At3ePNUELMt3s=;
        b=VFeGrZBr59CXFcuHIqO9eoWRmT9bF6neHkqKCRewTgozxMDoaCGh1gjctBmN7tfTW/
         L4VZ0FfdeRzfF2H/YwNToU9vBdrRq1AvDE4iNYkmQ7sorsjn2nUuEwTYOMy/OqabE3Jr
         T4xHNbDDllygPbwTfQ+5Kiz2vSdpk2H21TxQhapC2C2+YFq4XXTQ/seyNG/vATD3rsQD
         UmKo5mKBRRGSNsChx6yze4ajl5YWc0JmBY3yWjtxBZx9A0RsvC3cieRo8V3PcDHrwVvu
         aCHlMG8XLrVoDLFk48vXAdmix0D0UtyloxMq3TYGGOWjfWY7SVvHBU0b41q6iTu7xgRU
         FovA==
X-Forwarded-Encrypted: i=1; AJvYcCWM/mxFNRnCNE28LGsfLGV8nA2Ng9aTBqgA5tU80A9+YnonFRZtIAA2Kg1nwRzOqj4AYshW68Zme1QX@vger.kernel.org
X-Gm-Message-State: AOJu0YwvNPYIU83XC53QUzO83QaP1VK4Ex/7Uki6VNdWDMZteJaP2Opj
	ChaUH8YfljDShSYpPBwekIFXnrEcYwiyPXU9fPXIHuKIqvTpXvbdXkbI/zTQCRg8RZpIQOUsGYP
	oUBfpAjVaex25943utx5NuUorrUPAD3Iz2HS7FV/W3w==
X-Gm-Gg: AY/fxX5TC2Eeqj6812KkNJzP6JcW+NsZXegIsRp8WH69DoilWcIulHbsq6o0uL1+3wK
	/YQafJ3Niz5WwsMc71MCjMM5KSG5p87B4BG6iaVLdFKzL5PPvLtLtqXGpfDQNQidJNW/SY2i8W6
	NNXQLntmzh2Ky42FblpP1yGn3LCMSueoQyCBhiXQ2VqYx6NVFApVo4dNx9ZdVDDKLtjm+LRtlNu
	TOCNptfiNvmaHtaHOCLvmuHiHH6RF47oMhDDh3VOETtF+B36IU3VBcsAREajLOgwLzA1xbZ
X-Google-Smtp-Source: AGHT+IFoAaoYC/2jANrrzdlBpQP2Be6bS0pCmSsvTo1rvhbI3foA1mfq71+S0MT/S4+2Ark09EfKRcG1W6gnHMKK/Bg=
X-Received: by 2002:a17:90b:3f90:b0:340:bc27:97bd with SMTP id
 98e67ed59e1d1-34e92129212mr27573326a91.9.1767170121490; Wed, 31 Dec 2025
 00:35:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251231025502.1139168-1-daniel@0x0f.com> <20251231025502.1139168-4-daniel@0x0f.com>
 <ac0f8b8d-f6e4-4d60-9931-e820417c1abc@kernel.org>
In-Reply-To: <ac0f8b8d-f6e4-4d60-9931-e820417c1abc@kernel.org>
From: Daniel Palmer <daniel@0x0f.com>
Date: Wed, 31 Dec 2025 17:35:10 +0900
X-Gm-Features: AQt7F2pd6uk6EOEYDt0DN6OMY9Af8Mwtizy1eUP8vnmKR7fOg8OiJOk9tsIY_jY
Message-ID: <CAFr9PXn_-Ep9HzwTEErZ4Wmm9X8Q2ZkRP1LfmaAMhbYNfJVFuQ@mail.gmail.com>
Subject: Re: [PATCH 3/5] arm: dts: mstar: infinity: Correct opp table name
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: krzk+dt@kernel.org, romain.perier@gmail.com, robh@kernel.org, 
	conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Krzysztof,

On Wed, 31 Dec 2025 at 16:48, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> These two should be squashed. Don't align node names with bindings per node.

Sorry, I cannot parse what that means.

Looking at the example in
Documentation/devicetree/bindings/opp/opp-v2.yaml it looks like it
should just be called opp-table?

Cheers,

Daniel

