Return-Path: <devicetree+bounces-177309-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E43EAB6FAE
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 17:26:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7DD944E11EF
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 15:21:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CF3627CCCB;
	Wed, 14 May 2025 15:18:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="reYG6Zsr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83F951DE4CC
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 15:18:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747235898; cv=none; b=TaBzfDGfG82ZNJ8/Xry/bozqv4d0QoSNUxhJWFtrCKjqbtdijNN5kay/shFlsgFYyW9EErB3UY3wUkhVdvzAgOF/d8EjaOyLYzoAqZ3hUmmjsUpKv3Jh7HKj3/MWonwW9DLZ4jIWWMK3YDg8boY5JsBbjirI308nPeNV52q/xQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747235898; c=relaxed/simple;
	bh=C9vW3ZpWsTJr8CCtHVm79z9iZPxDP+IcYZlvq3V8dGQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nW2L1imYq5cOx1SrGsvmbydzef7kZK1RIZMmZWPgcUu6Abv8e+sDMjIdTGpnTTMnwBBqy49Ppm+raz/0yHSf2bNykGVYmPVzdwWuowCGi2rXYMEJBLvQhDiwtVgGJKjm9WDDH5AbeHZsmG7LWWxLZ71KzKEtTQiiHucFmyDM0ZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=reYG6Zsr; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-442ea95f738so18950535e9.3
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 08:18:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747235894; x=1747840694; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=e5Jd0rTH8gnYXw6/kC+uxiJyVYaTlWxJa+SnxvsOCx4=;
        b=reYG6Zsreahse12l/VDquXqp4o+W0bo+2q97+ITDbs/m1JmaPtO7wE6S/uw0/U6YyR
         5cezvcQEZRRsMjKldubTEFWL0+nUNK5+yooqRmj8rQN1j4HyFmjAL8KN21kuFI3QTUE0
         2t4NiPQELGAb6ctTfwwb8SJPyfHkZbFONhiC6OttLcGhyo1XifkQcWS+w0iInWwwexI2
         n8t0lxSm8Wmck79hTXoWCTdTjXnrUsOs5rjwn0WpfGMIyzrM4OzXNEppUVncIAvNc40i
         3JJC+EqTKV0WHyCxDIvanTBXFVYhU4CBo4wyQeSbKik+12GkFTai7Xlb6xednBCwX19L
         1K2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747235894; x=1747840694;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=e5Jd0rTH8gnYXw6/kC+uxiJyVYaTlWxJa+SnxvsOCx4=;
        b=o9KiI7UbN9e+KURNwCh3UlWO8hyD/6r438dS03zXEZq9tYk6Nka5V/7tCr4LqMNBom
         XFpBh5p2f7GWiAZuWDq5/EWbwPLD8vfQQo/k3GTQQjHun8x/FfMvNPSaDEWaSo4Gta8D
         Xy93M+2q2vM3Sk4/0WoXz3Xg6WjMSZ1SOzJG8ZbnqkMBa3914R6muMoAdAkxCsOcZ56a
         E/dKQyzoi59sQeEAF5wkH31sQcgjTTwUd62C0rq+leUKM0f8k0cohvDaQ7DmYt/TM/Hd
         HO6zuAjybN2ghalww3j64tZGgNFkpkQzou0b7+epCzkDumuWulFi8xwiVssg4djlyLOn
         folg==
X-Forwarded-Encrypted: i=1; AJvYcCXlI5yZhHaMMMukwyyAuki8H7kZ5EDXawlddPUxgLPc6yXxKrrXtKU3aa5aCm+8tYXG72XAtj+ExmFq@vger.kernel.org
X-Gm-Message-State: AOJu0YwLIG/DqdUPosicEFGEVmQfj7DW8ZOahxMyYAzzrEqaNNQNoqnB
	h2Ea8/hTnFTsSOSTTnCouNV+zECUJxqs8bTvKzc+TmRDcbjYwqFeBb9q1yKsRC8=
X-Gm-Gg: ASbGnctmOTweLv9QlnbV+io3+1mKf3HN3D0Q+9h9OOayUASTSeJXFbI7I3HEALhqqjF
	SaQ9Aaa82VP220nHMZPRLqHAO0cioXeBNKfg+VEcnfTiIRmB/b9kvSasA8bHYr7XeRc2IG/iDaK
	8hNHFeRx/IUN4z+9BL8S3hxjr8yap+KdJwNsHLymMY1T9lbbvQpSdDBgmaC68DiuSUIb5sb14r9
	JfP/Q6yoRuLqjgiHGVjkeXBPpMvGSHlWuMDLhQojepF3c+TD/xSyx7T4PNtzpg7hRMz7vzBVzXG
	EI7uozpIyVKSBs2S01vti6khEVOA6SOmysWK335uPacg07MwhKk+By5NLd5ZnZwJsdVfdbFhFAy
	+xrQtPMdq4CSx8g==
X-Google-Smtp-Source: AGHT+IGRB2abpUoZIymw7STMdE0tZK4TYpFBtxfd/eNvtOKPon1N5dnBR2moKCQCWe3KVsOdcRBdjg==
X-Received: by 2002:a05:600c:a40a:b0:442:f4a3:8c5c with SMTP id 5b1f17b1804b1-442f4a38df5mr31188215e9.10.1747235893683;
        Wed, 14 May 2025 08:18:13 -0700 (PDT)
Received: from mai.linaro.org (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442f3380544sm34936385e9.13.2025.05.14.08.18.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 08:18:13 -0700 (PDT)
Date: Wed, 14 May 2025 17:18:11 +0200
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: Pinkesh Vaghela <pinkesh.vaghela@einfochips.com>
Cc: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Min Lin <linmin@eswincomputing.com>,
	Pritesh Patel <pritesh.patel@einfochips.com>,
	Yangyu Chen <cyy@cyyself.name>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Yu Chien Peter Lin <peterlin@andestech.com>,
	Charlie Jenkins <charlie@rivosinc.com>,
	Kanak Shilledar <kanakshilledar@gmail.com>,
	Darshan Prajapati <darshan.prajapati@einfochips.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>, Aradhya Bhatia <a-bhatia1@ti.com>,
	rafal@milecki.pl, Anup Patel <anup@brainfault.org>,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 08/10] dt-bindings: timer: Add ESWIN EIC7700 CLINT
Message-ID: <aCS0M5uczXMr7WSY@mai.linaro.org>
References: <20250410152519.1358964-1-pinkesh.vaghela@einfochips.com>
 <20250410152519.1358964-9-pinkesh.vaghela@einfochips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250410152519.1358964-9-pinkesh.vaghela@einfochips.com>

On Thu, Apr 10, 2025 at 08:55:17PM +0530, Pinkesh Vaghela wrote:
> From: Darshan Prajapati <darshan.prajapati@einfochips.com>
> 
> Add compatible string for ESWIN EIC7700 CLINT.
> 
> Signed-off-by: Darshan Prajapati <darshan.prajapati@einfochips.com>
> Reviewed-by: Samuel Holland <samuel.holland@sifive.com>
> Signed-off-by: Pinkesh Vaghela <pinkesh.vaghela@einfochips.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> ---

Applied, thanks

-- 

 <http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

