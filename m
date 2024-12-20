Return-Path: <devicetree+bounces-132945-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7432C9F8CD2
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 07:39:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 77C44188D4B3
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 06:39:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D6D018A6B8;
	Fri, 20 Dec 2024 06:39:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="to/xTtYL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D596175D29
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 06:39:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734676753; cv=none; b=hjBe2pJ+aRyLrEWjjSiHzelaCUGuNbKfq9O/JjYjLfDH7vfZW1CLu7FlJrMH6kpi+szvWTmK1YqwFIUmW0BmuGChqjDSpS4vY+wuD1yvPsy36B/PURvLE/U7zgpmh0tkMvECpG3TyrfKTHlq+MO5kQVfOkzdaGd2a1KeEMVruYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734676753; c=relaxed/simple;
	bh=lYjTLSqGh6cFIpHRIQDXikLVUXa318JWO4n5ZhUJuBY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eA0qPbLNN0BdGPwEormaM7vHYl3YXackoDWKJbXDDg51lJQZl6KqnJydQNsKiC22Fc1ns9HhMpegDaeHEwphA8NZWbNt0AYC44rF58ARx9gUop0v51241OGuwISN3640uyXiFHVVC6K88/obvAiwpsjaw7iClEXT2B9h0nlMlg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=to/xTtYL; arc=none smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-2ee9a780de4so1035761a91.3
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 22:39:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734676752; x=1735281552; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=DX+s8SYjoLyT8V5e9PoQro4jGwH4zJksKdm1dnt49Ms=;
        b=to/xTtYLGcQLRMXWZoo0LtxOTMtxiEkPb+ZzPgFwBWAUHePEo34oNLnLhCRYlsQk1i
         41QsKDXTfwwUzdFwh5vG5Q5qWBYImj1U2dLbZ0H18pDmqI+azTDH8d1vAedqgvoTKiVj
         30AgEQwpdODJXw0UsuQj5TNgjg3Js2mviiCZzNIfE1639AYfvD1HvxyVUz40pBh/9E04
         CFIJq4GjyYOG10hzVzKchS5KJNKQ3LquiYQcS1HiG3j24TmyQSnwGfQAIfLNqhaSaRmE
         yP0Tnm5veZfqezwECbPWIVIxJuHEc1BpVdxUX2vNlTX2b8cz8w4TtZasQuyEKlnBtjfA
         f2bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734676752; x=1735281552;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DX+s8SYjoLyT8V5e9PoQro4jGwH4zJksKdm1dnt49Ms=;
        b=dboH6TkB/adH2uXGawsd6ak5+hK7bBTwPujOXhsIeaiMajq+Pxr6Sd33bXgGO4G5nE
         mXDyZrjmkxGnuL8/MsySvQXunWmXemhbpncz4w2nJRusosAa02K1ohDAqKFunz/qvQ6a
         jMEkFP4N6jv591fejARcvRopqPjhR845gG6FVKBnF2gUC7biNx1mTz92wbWA5hr0cOxb
         ToiXGidbKShLN1zYt15ronG7Ub1Kv7ncmzihQnX44+ADMphAhuexgtK3DGUXqf2gUIbT
         fMPB3SeNugc9vYhgY+x569D1adZxc0PTZdBRrgLfjfLDGvm2GveGZoi1EAedKMIePX4r
         KB4A==
X-Forwarded-Encrypted: i=1; AJvYcCX6R75KNBbF/DIEjtEPwxY4wdoL8di6WZyVUUXu3ROCK0VgdTaYz8EA2izycvB2xQYz9zExRAI970X7@vger.kernel.org
X-Gm-Message-State: AOJu0YxGpQIaM/vqi6KjaRNtwi4gNnoa5yoNMnCeQjDp7Q1k5+aFEiJA
	B+Iu9PF/tsuesRYWmCm8T+fAptf+dexbRVYhV0cpuAqL/ks3+Uw/9xmDpgXHgTo=
X-Gm-Gg: ASbGncseE8V5stHaOiAlDJ3RzIQnwKAUGkPdacxW+O/SMMwkkrkXfbszW9VAJmv1Iiq
	yvPqADl7Fox74Uud8Lmp/oIEMAbgbu/LFTnJq2UN58eecGCTxswZdPrsyE8oKnIX6gP5pfBfbIJ
	lUL9rLg3DvfTSTJ3bfiQYdE58LHl9nGuHXmYFIgqurlLqGwYCk4lSUB8w4Yp2PHijO7Mkl28cGA
	5mdN+slkr190F6Z4hikxNrzyXDL3HfxCRic7Ul1zxEyZqfuOiILGjBFpPs=
X-Google-Smtp-Source: AGHT+IHmdLCLVNBWI5BWwKKNhNvlrQ7mUVMYbsTuM9iwdeWGmXMlPqQG8bCfHySO5m70NUB4661tpQ==
X-Received: by 2002:a17:90b:4ec6:b0:2ee:cdea:ad91 with SMTP id 98e67ed59e1d1-2f452e2e460mr3213467a91.15.1734676751857;
        Thu, 19 Dec 2024 22:39:11 -0800 (PST)
Received: from localhost ([122.172.83.132])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2f2ed52cf35sm4432536a91.11.2024.12.19.22.39.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Dec 2024 22:39:11 -0800 (PST)
Date: Fri, 20 Dec 2024 12:09:09 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Nick Chan <towinchenmi@gmail.com>
Cc: Hector Martin <marcan@marcan.st>, Sven Peter <sven@svenpeter.dev>,
	Alyssa Rosenzweig <alyssa@rosenzweig.io>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Asahi Linux <asahi@lists.linux.dev>,
	Linux ARM Kernel Architecture <linux-arm-kernel@lists.infradead.org>,
	Linux power management <linux-pm@vger.kernel.org>,
	Devicetree <devicetree@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 0/7] Apple A7-A11, T2 SoC cpufreq support
Message-ID: <20241220063909.hrqrch5fy44nywl2@vireshk-i7>
References: <20241218182834.22334-1-towinchenmi@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241218182834.22334-1-towinchenmi@gmail.com>

On 19-12-24, 02:25, Nick Chan wrote:
> This series add driver support for cpufreq Apple A7-A11, T2 SoCs.
> Device Tree nodes will be included in another series.
> 
> Changes since v2:
> - Use NSEC_PER_USEC instead of 1000 as multplier.
> 
> v2: https://lore.kernel.org/asahi/20241212070344.3858-1-towinchenmi@gmail.com/T

Applied. Thanks.

-- 
viresh

