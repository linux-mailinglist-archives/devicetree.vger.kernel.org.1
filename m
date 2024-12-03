Return-Path: <devicetree+bounces-126509-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 999329E1B35
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 12:44:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6E271B299A5
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 10:50:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D94C01E2318;
	Tue,  3 Dec 2024 10:50:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ervDszXz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f181.google.com (mail-il1-f181.google.com [209.85.166.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 646161E048F
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 10:50:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733223009; cv=none; b=T48IddkOwRA8F8hJBZ6xa46jXARBcCvcbKyU67FkOCpYW/5RXVmOA9K0mhknLhDMgqpgJP7CbgWaZolbblD/80q6b6m7Bvv95t8XyEmqk76hXZsSnwPx3WFO3pJyzE0ermMMPFuklPQgYUdCWoPT/18rYfQdWtbIrpVMkrCBgwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733223009; c=relaxed/simple;
	bh=SYIWnqJvjU3tc6h0oX3EV+CMP9T1xXjaW/rfL4UV7+U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OArIPUeJkmgYf2qq7Ewr5RQ+yEKCWAC9hwEfh5sW/2098QnDU1rGmr6dW4qeXpLC0vr+rdaQrDajrVhbsEcH4utyRUKd25rKRYRS/0sa1dVuKAKzNssdvEbjG6Eika9dlQYqsPFOUcthqGZOezQDhmWvamSdoWYJgZJuJjMQeIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ervDszXz; arc=none smtp.client-ip=209.85.166.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-il1-f181.google.com with SMTP id e9e14a558f8ab-3a791bfae0bso17859995ab.0
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 02:50:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733223007; x=1733827807; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=aRrhib0Kqa3gpxvZj/IdJvVp2U0qRI/cEqmhWx+o3pQ=;
        b=ervDszXzSOz/XxfPlJBE6PNFd20zc/WA8prU1VazxuF5YJysXp8GN4G17MdiK1FaqK
         4FN18dhWYwr0t4Iuo+3S7WH8Awha2+iiBik6F/5XxF36LQkLc/PEcuVg3ujV3xDvwxV3
         fgiD4U+IiKVz1OfszToEw1SwGYNgdlPCnNJZIo9+ZAmWAbYHbdwX6XZhZ7FhGrqKpUxU
         WahFXWQN6gF8jYU7a2W5sF6MDoIITxJJl7ZAwrFi9lfc7Jv+xiQdqfhuztu6UcShtUb/
         Q9CRIP5xLi6Gl1Aa4FGi2lqAe75m9Yn3fCVvyyxfcmsfNLVyrb2oAvfarHW6lmAhxc6V
         Gkng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733223007; x=1733827807;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aRrhib0Kqa3gpxvZj/IdJvVp2U0qRI/cEqmhWx+o3pQ=;
        b=DJI7e/zBJclDGFhFeBr75iAxpnc8c4HcvBcRu5ZW+07kCA8SVrAyN9Iso2rYSPSYqw
         DvdKio18zlgFwB/2Du07dS7m2VvBdJcXBBDNyACpuBFmFToX147gwTswZ1a0jTKM9gbX
         E/kP6SQuYmm+DgytTKCPpPqEDygEk49zTzCtYF3kKk1tWWqHajSoN3XTnmB8zbwygXJB
         SWmZy2sM2+nyp/f+FJvXj+gFSO+yuDJv88zd23bxGme6pDfzETYdBxw8lrQWGV+vijvr
         iWtzKeajNsyJV64HKaMiBiybmVS7gIZN36DPgYyfir/kVhSi/kmrb1QeglU8K9t6ctYm
         2G/g==
X-Forwarded-Encrypted: i=1; AJvYcCUYEJKN1hoCHn0bnvJVDNJWSYde8J0KeVOk1k9rIgHl7Z+Rz5b3VJYpS/eL4yTATK8RB5wAoN/FGMj/@vger.kernel.org
X-Gm-Message-State: AOJu0Yyu06xjHdFxS53kinEd9+B27ZiicLm3l0RfkDSNxxGTVQbJxv2H
	L01f2vPOYewSbvoy6IYOG/w2xBgzSfkVS7ua2AMSkngQ+TSfndbSHlHEIv56FsA=
X-Gm-Gg: ASbGncv/Ap2VZzB2CuS3ZLnmf/ardH9MpUvVRoOFzpJ7glyVw4eAK7YoFDm4FS2ttXd
	zFb/0mSutflYOSKFLCWjtYV4p4/YclG/T+gkXtVxy7dNyBlNiTeTo+3RC9LGRH3HpnisFlzuL2Y
	DhpmIOQSXGimiVM1pIqWbqUcoCdtkxTeCcbWbFjI1v0BCjO/+vzHNISWuadzjHVQ3YaFWGOuJz0
	nStV5y9k7z0oJC4AQ+merlIBZC9gprc2yeuGWIPFtEs0bzLTbt/
X-Google-Smtp-Source: AGHT+IGl+KT43heBkxQ+hPgOKgFg2afkW/MI5pautzzaAO1WnCw2DNgd33igWPgCxY5ufydlibjV4w==
X-Received: by 2002:a05:6e02:1a85:b0:3a7:a738:d9c8 with SMTP id e9e14a558f8ab-3a7f9a295cemr28002915ab.2.1733223007571;
        Tue, 03 Dec 2024 02:50:07 -0800 (PST)
Received: from localhost ([122.172.86.146])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7fc9c3a0733sm8082097a12.75.2024.12.03.02.50.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 02:50:07 -0800 (PST)
Date: Tue, 3 Dec 2024 16:20:04 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Christian Marangi <ansuelsmth@gmail.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	upstream@airoha.com
Subject: Re: [PATCH v4 1/2] dt-bindings: cpufreq: Document support for Airoha
 EN7581 CPUFreq
Message-ID: <20241203105004.fo4huxnbkl2jiu3n@vireshk-i7>
References: <20241202151228.32609-1-ansuelsmth@gmail.com>
 <CAPDyKFqrY7uLD8ATqH0LghmkHgApQSsGtvGkOTd8UVazGu0_uA@mail.gmail.com>
 <674dd60f.7b0a0220.2ba255.7b7a@mx.google.com>
 <20241202205738.GA3149730-robh@kernel.org>
 <CAPDyKFo6j__CoReyAbeLJkA8JJQhJVc=umNesQRZKm-RxFHCwA@mail.gmail.com>
 <674ee1dc.050a0220.13fa34.f758@mx.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <674ee1dc.050a0220.13fa34.f758@mx.google.com>

On 03-12-24, 11:47, Christian Marangi wrote:
> Ok to summarize
> 
> - cpu node: use perf for PD
> - cpufreq node change node name to power-domain
> - Fix OPP format (already done)
> 
> Did I miss anything? It's strange these case weren't catch by
> dt_binding_check. Sorry, wasn't aware of all these common name.

Please also run "scripts/checkpatch.pl --strict" if you haven't already, I think
I saw some inconsistencies in the second patch.

-- 
viresh

