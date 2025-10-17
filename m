Return-Path: <devicetree+bounces-227970-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ADD4BE65F0
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 07:09:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E3CE51A60ED8
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 05:09:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFAA22FA0DB;
	Fri, 17 Oct 2025 05:09:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Uo2cbFwN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415723FCC
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 05:09:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760677747; cv=none; b=AQWmxusqb96jVa0IqYD5Tlf42C1wgcwXKcqUil5d9aFu3D/+nCbJX5gsdY576dkpWwHAFwWyRAVvNAefchQ/ujRX0PFk1HKNXTjWpqri15GmybDvSBDijPhLgL1SSkYtsjKrUKtdiU8TCWv/tMCHUSZeGnvkm47jDlvRrRAWSnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760677747; c=relaxed/simple;
	bh=hPhYcJBahqMqyJ9NZbktJ31yJvCBaD8L6HNgbzSSI04=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bOvqZumIGu7v9r0GV8D3s4OsSaxoQCFMRNsO7GBmJsakZp7elB0li6ElJaUJ9UC00gm5MvQ+cOdbeEVqrXv/CuNuoDTxXYjO4CMRRFOfbRoXK9ZVGsObSyaKoLo9VGqDSNLOf5um7Zy/RGZBpmknjsS/R5UojAf24SMPv4k6pbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Uo2cbFwN; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-781db5068b8so1294376b3a.0
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 22:09:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760677745; x=1761282545; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kQ55DkM8tzaRgU5i+eke6Xg0gqLmGe9Gfxt+VQ9ObUk=;
        b=Uo2cbFwNm2niVZ3Tz9pYhvZY2AzehOLpMd7+aKx3sx5qurKIKByB/Q2xkUaFMIOnAV
         ZoiEaP3fVrkntzFXbIRvQ3n6X7vF2Wqy0MKLlRqRWjLcUQI01vH0NlJ81LH+MI27roig
         DULygiaJq8xrNIRxcgviEz37ZxR5Zx1eWpiAraASPI1HD8A+rQPF7y2/oqckG3EeoOjc
         A1XSoONAKbDWfDm9js9zAQHO/bT33oCDlg0r4cNI0/whna/Cc420RRwO2AHoRAWkr3/m
         GJ5kNCKoJpP0vXxFq1JTLe3WbMdggheQLS7RqKfvUKbwLSQUMXLnYDaRZ2MPFbJvRy8i
         LswQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760677745; x=1761282545;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kQ55DkM8tzaRgU5i+eke6Xg0gqLmGe9Gfxt+VQ9ObUk=;
        b=LRGGE/q8NSSayUHByLfolOcmi5a0mUUlaTS3r59SEJhtzi9SgpxstZ1LgEZ+fMzmqO
         ChII1lNJU5njEz4W6CG2ceP7b4RC8+uTRrMQycPuyfOG3uyX/QjNAS+aWApnuk8Qrl2P
         0uSdwdxpJLtdKvAsUcvywrM4o2ALbU2kekjdshUGIcnIK5mzqoZ9xRKycv2xqu/GDRnx
         HPXmcFsuAV6IIy/h6TEV2OzjuzmwGf3j4w8sKiU6tXOM8/+UjoMUok1epCTFuR3YvonW
         KSjcw82KG5peYjtIPTUsna3faiLHB7mJVnwE5Y3aYgdWAp6JQ6Qdp5rX+6W09LExrqzx
         1rmg==
X-Forwarded-Encrypted: i=1; AJvYcCWyPrPgd3bZYFtM+aSxJcypQkdxUqDJI3nar1PznEMrJFzLxzPkzGtAgIPhjHfx7G8BGrK0eQmVwI4a@vger.kernel.org
X-Gm-Message-State: AOJu0Yzn0+d1zHQ56/Ypof01uZhnSP0ibwSxp3wq//2AuhgHetmEjClJ
	uezn3boWV8tUr2syZQa3CVCAqYHS9xiez18g6MecN7anOqjVCD3DmhBlzcFMdnmHd+I=
X-Gm-Gg: ASbGncveIrvAn4tR/uqf6NFAkAaHAJsaCjnK6YyEwIMmeeVcBVYQ5u4cfEclvwzjR7z
	NMbksxyT9tPQFE467FMM7NXvwE5C+rCWLpdDXxzn8P6soavjZXSOaqyKaj5e7m74Dnj7HXoS8I0
	I9a8kPHqjk8dYxl9GBS66hk7L12mKKphvsx8pUN96GVL7wFgUXTVv1qNLPEY7PRBP/Lg0gGU17g
	h0j809FJe1iQWPMrbEr6Zj4A7FlictBHN6iU0/EK3KIGj+uWSs2OCfCS7Zq665ld96MhQN7zwX2
	HfN0ECgOY1rQocTlVR9ch0tZu236mDK49MhIGopJnQs974KjB3CigMxJGil0KoF/bw5mzcmKCBo
	BHMHOW/cc/H62O2HHOjeZafF8O/vJvQjLzn1ytMbVViLdqgdXfiO6Gk2Qq80GbdEi0NrYaBqVNk
	n9YQ==
X-Google-Smtp-Source: AGHT+IGVLyzmj++RqMMVihtjmmGd1jHdy2DiGxYxK8sK9GSZnnLKdl9JAGdP0GHlJpy4pu/1751zZA==
X-Received: by 2002:a05:6a21:99a4:b0:334:a784:304a with SMTP id adf61e73a8af0-334a8609160mr3483247637.33.1760677745414;
        Thu, 16 Oct 2025 22:09:05 -0700 (PDT)
Received: from localhost ([122.172.87.183])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992d0e3f89sm23882072b3a.66.2025.10.16.22.09.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 22:09:04 -0700 (PDT)
Date: Fri, 17 Oct 2025 10:39:02 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Hal Feng <hal.feng@starfivetech.com>
Cc: Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	"Rafael J . Wysocki" <rafael@kernel.org>, Emil Renner Berthing <emil.renner.berthing@canonical.com>, 
	Heinrich Schuchardt <heinrich.schuchardt@canonical.com>, E Shattow <e@freeshell.de>, Paul Walmsley <pjw@kernel.org>, 
	Albert Ou <aou@eecs.berkeley.edu>, devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 1/7] cpufreq: dt-platdev: Add JH7110S SOC to the
 allowlist
Message-ID: <jurnfpufll4twv2hfp2dv6qk6d3gr7gfmek5czigb5bcon636q@opb6hrdb424p>
References: <20251016080054.12484-1-hal.feng@starfivetech.com>
 <20251016080054.12484-2-hal.feng@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251016080054.12484-2-hal.feng@starfivetech.com>

On 16-10-25, 16:00, Hal Feng wrote:
> Add the compatible strings for supporting the generic
> cpufreq driver on the StarFive JH7110S SoC.
> 
> Signed-off-by: Hal Feng <hal.feng@starfivetech.com>
> ---
>  drivers/cpufreq/cpufreq-dt-platdev.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/cpufreq/cpufreq-dt-platdev.c b/drivers/cpufreq/cpufreq-dt-platdev.c
> index cd1816a12bb9..dc11b62399ad 100644
> --- a/drivers/cpufreq/cpufreq-dt-platdev.c
> +++ b/drivers/cpufreq/cpufreq-dt-platdev.c
> @@ -87,6 +87,7 @@ static const struct of_device_id allowlist[] __initconst = {
>  	{ .compatible = "st-ericsson,u9540", },
>  
>  	{ .compatible = "starfive,jh7110", },
> +	{ .compatible = "starfive,jh7110s", },
>  
>  	{ .compatible = "ti,omap2", },
>  	{ .compatible = "ti,omap4", },

Applied. Thanks.

-- 
viresh

