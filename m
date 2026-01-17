Return-Path: <devicetree+bounces-256313-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A53BD38AB5
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 01:29:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 743093016ACD
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 00:29:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF93919D07E;
	Sat, 17 Jan 2026 00:29:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TNEnnQI6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f45.google.com (mail-dl1-f45.google.com [74.125.82.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F86415B0EC
	for <devicetree@vger.kernel.org>; Sat, 17 Jan 2026 00:29:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768609754; cv=none; b=HpafJC1Ch6WrxHkN+3w933lNI7s/TV/qm+wggVkwYq8vjvesq8eVq4l0hGUFli0rjlTa2mwiOZ/O1d4M6tvfnwT0/Mt8sZ8aDU9yemucSS0UyAB12/QSbajYbk90QcPQ0lsJxYZcfIDhGL5ofVK9LCgMQomB3iMnIxv3VJeLPaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768609754; c=relaxed/simple;
	bh=1zm9T7CaI8B5xZXNRoBq9Dn2BczVK6uVcN3FJffFlDo=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CVmeDjaQ2Bkam8SmXFkvZralh3t8XR0wFtkZBMoGZuGRjznwnP2zZdpOcipflJ6YEyziWqDmYpttYbQMCvqtRwkfD8E4rjG368AvWsM4BzGvtsgqD4Z6bb+VUytDZnKg7rQOFYcEeLXC6H0Z6raCHZaHlrG8+Qt08Kw1lPWciWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TNEnnQI6; arc=none smtp.client-ip=74.125.82.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f45.google.com with SMTP id a92af1059eb24-1233b172f02so3229928c88.0
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 16:29:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768609752; x=1769214552; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mGO1cK4mQ9XzEnYxq1fxs9vwo2P1CEDeSbovMGFFZdo=;
        b=TNEnnQI6bFcVQLxCbJ/UByzVd75R4ftFaXqX7+rHX/BK3pNbQ4IEPqLhOjhnxT3PDU
         K358zQxewchMNcFawdY0VtENnFNnvCWjp3XHGrm9EeD+FdWZuz9aXvwcj2YcvxRfe3bZ
         Do3H44htCMSOQX8E6CcCtg3q7DzJHaZyp7pf0mhjNMMdIQXhJd1S5wGrcAAYGKbkxV4H
         jwgQaOT4IQSlTvfWMaZEX4h+Oo852RPXbGuFpGQB6UjVsEbtQIKNbmBKpiql6bFM7ZRx
         SSfk+TdKylrs5rLgsyf4/wq15wrHQVltvpbSvn3wx56FdXhzjTZ9WVasuv1jSf7Jze9c
         vMtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768609752; x=1769214552;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=mGO1cK4mQ9XzEnYxq1fxs9vwo2P1CEDeSbovMGFFZdo=;
        b=t/urhbjiXkmYclp4oEvtSC/IxOh0BBTDWqkHwt6qeyibA3A0RnQjQOonaKnRVcWFRW
         FT21m5obe3EqJwlpati8Vv9G+X7fpta/tlQvmHaVkj7e0GcULIGbPqiMRLc8Kb+DQZsK
         ubhAFVjhqbNWffm0blAbJixZ8VIrznqnkShTgVybRIvQyjBbgaoIGk+rDFNXWPX87XCw
         tfiByhQSjX8X7fdlJoADuu83VH/r6f41GNycWxXm3qKsXE/2ikReyJS3wtpRb0ffL1LQ
         YurbSbwwgWLVHt2iYQu6DOQds09/yYke71dZ9iJlNdsu2chxrUiyZ8H65oIb0pXbEWjt
         njig==
X-Forwarded-Encrypted: i=1; AJvYcCUdpWhpLKghP8m6qXfL7RhigLfQG7ASi6xoxf+l+2mbTKtufsD/Wffi2brIIaRXZ8qd+JCyufOP08ie@vger.kernel.org
X-Gm-Message-State: AOJu0YwZFFKWpynF+RDVlHTJsS62VnMXcNdt4Wtk9nIbKl5GBrK+VGsb
	KW1ZJ653Gfd3h6zvMKgJuBS5JUMmLMmdY8WmSWJ56OeLQDFu38WzwcoS
X-Gm-Gg: AY/fxX6iJ7z41JnMZne7t0djkY8p3QzYIk0bD5UFf525B/unt5cJQqt2teAL94ys7cs
	YpP1Zv3JZ8gRfzY7s5ibfWlnnVweNzeYRzdfTM6e67CHS6hVMuTeyYEacy6XUFLjFpqwQh5jLvx
	GDlrmJHTuB6dAVIJOGYkZ3OXQFIwB7B+0s9hJUxUj766XfnLBer6nscPOUD2R7iprRbnYoxBYIv
	AXyHhpOcSP1p6C9K/miligqMjcLTu8FrJvgC1vF1HpRu1Ma5j3n81cj6itXukRbdT8tumbWgwp0
	p04qef7s5PHuJUVIVWgLWgpYZgrqCRf/hGxASGwifc95rU2hqnp1DFtBbVNrUfCS5mwyqXl6Bdh
	DUg9kuzmvKO+hPqCTVrtdG6sddmnlPYrzzjFAOAZTc3rb1asE8/Z+//teHrQWM+LeYZB70lVkP4
	MgHMeXTLakpg==
X-Received: by 2002:a05:7022:4181:b0:11b:2138:4758 with SMTP id a92af1059eb24-1244a6f4633mr4974776c88.21.1768609752297;
        Fri, 16 Jan 2026 16:29:12 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1244ac58140sm4235676c88.4.2026.01.16.16.29.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 16:29:11 -0800 (PST)
Date: Sat, 17 Jan 2026 08:29:06 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Inochi Amaoto <inochiama@gmail.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen Wang <unicorn_wang@outlook.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, linux-sound@vger.kernel.org, 
	devicetree@vger.kernel.org, sophgo@lists.linux.dev, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH 0/8] ASoC: sophgo: add CV1800 AIAO mux and I2S support
Message-ID: <aWrXr1aXB3YUPisg@inochi.infowork>
References: <20260115-cv1800b-i2s-driver-v1-0-e8b22b8578ab@gmail.com>
 <aWl4fvKsUZDg9dwj@inochi.infowork>
 <aWpyLQ6FR8_RsD1n@anton.local>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aWpyLQ6FR8_RsD1n@anton.local>

On Fri, Jan 16, 2026 at 09:25:51PM +0400, Anton D. Stavinskii wrote:
> > On Thu, Jan 15, 2026 at 11:17:37PM +0400, Anton D. Stavinskii wrote:
> > > This patch series adds basic audio support for Sophgo CV1800B, 
> > > as used on boards such as the Milk-V Duo. 
> > > The series introduces an AIAO audio mux driver, 
> > > an I2S controller driver, corresponding DT bindings, 
> > > and DTS updates to wire the components together.
> > > 
> > 
> > I haven't see your mux driver, is it missed?
> 
> That was bad copy paste from original version. 
> Thanks for noticing this. Will update the cover letter.
> I want to not overcomplicate already big patch series.
> So multiplexing will be done later. 
> > 
> 
> > Thanks for your patch, for all the patchs, I hope you write a
> > meaningful comment for the patch, at least for now I found it
> > is nothing in your comment.
> 
> Thank you for a great help with that series. Do you mean
> I need to add more meaningful comments for each commit or the 
> cover letter is not describing everything clear enough? 
> Anyway will do my best in the second version. 

For each commit, the cover letter is OK.

Regards,
Inochi

> > 
> > Also, the patch 8 should not in this patch and should be a
> > separate patch.
> 
> Yes I've missed this thing. I will remove the last commit 
> and move codecs nodes to the base dtsi file. 
> 

