Return-Path: <devicetree+bounces-89827-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 49529942E1E
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 14:22:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0571E28177E
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 12:22:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2E8D1AE877;
	Wed, 31 Jul 2024 12:20:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="lcLgK2bw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1AD32E40E
	for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 12:20:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722428410; cv=none; b=f94BlkSf3X/3HOX1xsCKxKboJSnL/X22slVjOVvYxQi6yBjqqu1vtNNasp1dCyzwlQS5DhSN4AERbPvfHAAMfQFmuG6AdYjrA6h5HnJdPSq1Xt1PH50i/zSs/swB81mj1I2DqF9nrn9lHbJ8sHqduWIiK2AJxMV+dNbjgJj3ZZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722428410; c=relaxed/simple;
	bh=VLyIEhkLnhz9rx8+f5UQQQG3xPqtwVjtpvKYHmmZm3A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cxPuB/DbXhjWAtDOM4p+i99YVClDg//JKx740K84dvU1TONIIRZ9K34vXAyr370mtOF8Y+xMIER50w4OVbCgM+fQnr1Cs3Q56kbY1rgROU1eJ+SnNdQ1AS7qJgCvKBx0N99c6/ItGYM0XKmnfFNC4gX/gFU4tHppL9GiwOM+eVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=lcLgK2bw; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-52efba36802so9646641e87.2
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 05:20:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1722428407; x=1723033207; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=nOIxnk7407zYgmcLnWaUjuP+BwjeEvDM3LSUzPdgUOk=;
        b=lcLgK2bwjT7dSj4YRuCAfOC8fe0caPTnrwZNL5tqKqeGpe1wiXBk8+cOCHC2X39j2r
         F32ITX27th9hXIrMt7fv0+/mpimU1anYHH3g1nfcI/LCKSkWlq/mu6z/Ncy13vaOYY5l
         tO/BrBhHp7XM4hTwu5wrJYyAkhXrxlJbKargpbeorD+91VrjRkJ6fjOo5Z36/N5+osYV
         VwypqvdUCtGWVblB8kZkIDA8t+vmntQds0SnMrcgCAyFJMyT55n7BjL7wWKR14w9qMXX
         039AThqwj9dplPOBxBM0dJJJ1pRB3fgC0AZG67yYtbubS/JL1O/1Txt95qLgb9HHQNZO
         nseg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722428407; x=1723033207;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nOIxnk7407zYgmcLnWaUjuP+BwjeEvDM3LSUzPdgUOk=;
        b=wu4eR9OsOyI+Q5K3yuKawBITopK8bdfG/vXD1uzMZhduAqGVuqRLzMpu2hKOf/27Rp
         9X5szxCEcOBtYm+5LL9cRBHXGwQ0WYNJThUkX5SMwkODd2KJo9WKLSvenI2xMh8OZvJt
         0GaAG9WTpzkzkigAZML8Mxfm+qdsrdmnFBME9UCLL1vrf+jEnulmOuo+ZbsIGlo7FDPD
         5NVDjuJOTVzoqdkmBiZ2h0+VPU7zU36qikE4GcmraZtH/JwFpd7EkaK5WT01MsiAnLHm
         kVgBR6XzLgsqERWrSbjopTpZftZGpuvCyIoKhWa3QqgtwFHFuCFHnlErtklUe56NctTX
         G3Fg==
X-Forwarded-Encrypted: i=1; AJvYcCUrBGAraig7zijwVt8+g6rJyx2yfOcZSnc9tCqLD647VmweMIZ3gjtPun4Ize43WgK+XXCSOQzpdfImvki1Yvpt0z4nA+EKUhD6dw==
X-Gm-Message-State: AOJu0YwEW5QruR9Y+fc86Mid+d1mtvCAF8D973d9drzjTVxusjABP+TF
	l3YQPw4nUsFy27uiIJiCvK5aUGXaZVPGby6uHZkLzaSLeejBg6/OxsE5eycnaS4=
X-Google-Smtp-Source: AGHT+IHyNIB5ow4TlUDHNH1tkbFmcks/+EVzVky0lfsDx0PedtHsujag8S9TeJckFJO9ghO9Oafw5A==
X-Received: by 2002:ac2:5b89:0:b0:52c:db0a:a550 with SMTP id 2adb3069b0e04-5309b2bcbe0mr9592703e87.42.1722428406890;
        Wed, 31 Jul 2024 05:20:06 -0700 (PDT)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5ac631b04e1sm8624673a12.12.2024.07.31.05.20.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jul 2024 05:20:06 -0700 (PDT)
Date: Wed, 31 Jul 2024 14:20:05 +0200
From: Andrew Jones <ajones@ventanamicro.com>
To: Alexandre Ghiti <alexghiti@rivosinc.com>
Cc: Jonathan Corbet <corbet@lwn.net>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Andrea Parri <parri.andrea@gmail.com>, 
	Nathan Chancellor <nathan@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Ingo Molnar <mingo@redhat.com>, Will Deacon <will@kernel.org>, Waiman Long <longman@redhat.com>, 
	Boqun Feng <boqun.feng@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	Leonardo Bras <leobras@redhat.com>, Guo Ren <guoren@kernel.org>, linux-doc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-arch@vger.kernel.org
Subject: Re: [PATCH v4 08/13] riscv: Implement xchg8/16() using Zabha
Message-ID: <20240731-60c5ad3ae9ec128886aed802@orel>
References: <20240731072405.197046-1-alexghiti@rivosinc.com>
 <20240731072405.197046-9-alexghiti@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240731072405.197046-9-alexghiti@rivosinc.com>

On Wed, Jul 31, 2024 at 09:24:00AM GMT, Alexandre Ghiti wrote:
> This adds runtime support for Zabha in xchg8/16() operations.
> 
> Signed-off-by: Alexandre Ghiti <alexghiti@rivosinc.com>
> ---
>  arch/riscv/include/asm/cmpxchg.h | 65 ++++++++++++++++++++------------
>  1 file changed, 41 insertions(+), 24 deletions(-)
>

Reviewed-by: Andrew Jones <ajones@ventanamicro.com>

