Return-Path: <devicetree+bounces-205781-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D30BDB2A198
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 14:31:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B5BC44E2CD4
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 12:31:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 207843218AC;
	Mon, 18 Aug 2025 12:28:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="apkXGnNX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39BC33218A1
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 12:28:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755520139; cv=none; b=C3tkS3lUOiXj61FIHpGCLalhZQIzVO9w6Q4eoz4dDWYpuDvMoeK3JMw3AqLJqMCvNrK/IyZw0yYIDqSfXpjYdpqDJaV30HdWksfTNOzwEZqLwnj+VKorFhaoOA5LQZObRNsHCm6SeKlx9G6cYVxqv1Gj10yAh0VgC7YfqVNGOdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755520139; c=relaxed/simple;
	bh=NQlTT8wrBf6/5TXR7NEJIm2qofkpWCiqbqPMT/ijYsM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aXlnUDsSzpmVY4LKUd13MpSGORQKN4PKzS6e46u82bU1CLFa08MzrOjeWx0bkd1Baxq2xB0LJiOVjfuHXBNyDVt/+XdMfxgDelsAX+zm9RwjVcdi36c/tNPp4Qekyqqptq8GQWPpL+j+bTGJ/jdGhWN5gRNG5KDuV+/oRj/Dwg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=apkXGnNX; arc=none smtp.client-ip=209.85.219.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-e934724e512so1236531276.2
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 05:28:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1755520136; x=1756124936; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NQlTT8wrBf6/5TXR7NEJIm2qofkpWCiqbqPMT/ijYsM=;
        b=apkXGnNXgGl7aZxSKibTdp0qeTPDTjWudLdbIDXHjAoMM9924TTUZQFW9AuxSMVXtt
         rl9Amti5ULwkeK4fcGv5CTV/3fIpDQzZZyCIHX6B7kZ9s681OyGUkigJIHkDj0RkBB1J
         nj3+vaku01NR1/y8Q5j/ZFTJT6QLouWVAYJp5Kc0xo2PDbwbV72r4EKhQI9XUaTYa1/C
         6vSEloZOCMUFA5C7yfXG1EzwMgPeD6dZ0pO8bx6FfVHPF45Xj5PCQkVEGjTgcPYjAU7c
         PSrNrqMWG+KjN8fZneGUn4hZMKjtw6TT+CsyCYg6HVYuCuvMtqXLahRPOTkzHdP420bf
         s+Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755520136; x=1756124936;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NQlTT8wrBf6/5TXR7NEJIm2qofkpWCiqbqPMT/ijYsM=;
        b=Auby0JLOzzUM4tuguzFVcCnEkJQFJ9YiikuTVAulriXrXw/udQRnG0fTRtcWRfLPEr
         dc60D6we+o6tDIl5+zl/kCZVeha+WDblZfMvKNQHT3DBGD6cJ8x0h1QIo1CnDVFplOlD
         y5ZdZmLPbN5iVb/h2sEA5qagA88TIuCUWyZSrIBqbRqqRXu6nGS55Ucu3CKBcjWaXIbC
         OBcgOY/MyhwinPS0EyKqsaAfENhFrK51ipFrW97rCw/krjf8rlWcYgl2UsH5ZLcMDND9
         K6E5J/CjxD7+WPfVro0sB7m4yGeZsQvhTs5DjxcItaHCuQb/zmBRmKHHTMa854R1ByOU
         xayg==
X-Forwarded-Encrypted: i=1; AJvYcCUc0Jkih+yz1uQIZKGTX1ex50ZCfKGMLAsSnDvkY7C4CM0ettjMF1B84UDuRhcWmwkKTX9J0lFRp+Q6@vger.kernel.org
X-Gm-Message-State: AOJu0YwtLgUAWWwSyRZpt5xSTOYJ/IxOTQXqvz2+GmD2pPAvbleb3wxI
	KNwYHmPXGXghhNgc0XqU0aVt6F/yNwo5ZHH5MksvOkVZSzHwwSznekWLhtBafudgChiJw9nNWSr
	9Q8KY+UTj4tOJoozt+Opk1JfWSS76Yd0artqgopHOew==
X-Gm-Gg: ASbGnctVnLD3dC+6G8w3ueAq3yfcVIug0DN0kbzXjwiGMn9T7L6J+x8bL6lbCkhhfk8
	yx0s0x3YbjSRmyeshJM7z6fNseDYXnVGJ5FzsFJRRvgcD+cya8ms2onL4ELgjj7Z69eclqiCK2u
	nvrnLGS/LO3oG3zxAP/lAkGn2IaUBxjAUoblHmcBIFO2OhBmzmrlRujmLgVVeZ2GdQjjMspd09B
	QVUBg==
X-Google-Smtp-Source: AGHT+IFx20xElPVqlagxACjExJ+Sc5Ef/knSr80J9ZkH6gy2bssr57qeuBMFLMu09POyk3VR+IV54ktaJ+qDsdY+z6Q=
X-Received: by 2002:a05:6902:72c:b0:e93:4496:a2b9 with SMTP id
 3f1490d57ef6-e934496a74bmr9054970276.13.1755520135996; Mon, 18 Aug 2025
 05:28:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250815-working_dma_0701_v2-v4-0-62145ab6ea30@riscstar.com>
 <20250815-working_dma_0701_v2-v4-6-62145ab6ea30@riscstar.com> <34485B93B03EAD10+aJ7NVbe8aqjWBFd-@LT-Guozexi>
In-Reply-To: <34485B93B03EAD10+aJ7NVbe8aqjWBFd-@LT-Guozexi>
From: Guodong Xu <guodong@riscstar.com>
Date: Mon, 18 Aug 2025 20:28:45 +0800
X-Gm-Features: Ac12FXzcLxiREAyDvYqUpnp8Sh2Su74nBhalceLEh9KttzUfLjprws3CtQrXJOY
Message-ID: <CAH1PCMahKsCsgmZixartnu6Tq8Oo28bMVNfoAWjnFA2McOOU3Q@mail.gmail.com>
Subject: Re: [PATCH v4 6/8] riscv: dts: spacemit: Add PDMA node for K1 SoC
To: Troy Mitchell <troy.mitchell@linux.spacemit.com>
Cc: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, duje@dujemihanovic.xyz, Alex Elder <elder@riscstar.com>, 
	Vivian Wang <wangruikang@iscas.ac.cn>, dmaengine@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 15, 2025 at 2:04=E2=80=AFPM Troy Mitchell
<troy.mitchell@linux.spacemit.com> wrote:
>
> Thanks.
>
> Reviewed-by: Troy Mitchell <troy.mitchell@linux.spacemit.com>
>

Thanks Troy.

