Return-Path: <devicetree+bounces-256563-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B610ED3984F
	for <lists+devicetree@lfdr.de>; Sun, 18 Jan 2026 18:08:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3453C30019D1
	for <lists+devicetree@lfdr.de>; Sun, 18 Jan 2026 17:08:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3262D23D7E0;
	Sun, 18 Jan 2026 17:08:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SFPD61ZL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88FAD23EAB4
	for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 17:07:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768756080; cv=none; b=Ffafb+IeuQVjG95OsJtKQzAfTWzxg5++3QAte+DO8aLo04MGYVrsko/RWR/dkuIiL8sEHhtZrw+p1OeZxOJqIuqaHTUibzIkyXQsAXxSMKmb/gLHaoTfBvWhXeUV8kh79dNkTrk7Had2mblOxRX7Hrz9UFEMEjhrBcou1yqjLqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768756080; c=relaxed/simple;
	bh=wqJVTf+gmqQxz2b5iZXHl+d4EPQymaMDdRoZo/w/TXg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RtJfj9QnJ5/7bGGBsJgoeYEJD899hkJ6fR88KB4LgP6NysnzJfvF/fsr7GbLS/17sidIyJIn8TaYsBm1GY1Vy2+8m/mtNLNGoHYyOAHdwMC4NLXWtpHelkGcdmBZb6fJZt9i5dOZCOqKy73pBeeEFA7rE1fJFUsFK6Cwb4QGZWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SFPD61ZL; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-47ee76e8656so40861565e9.0
        for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 09:07:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768756077; x=1769360877; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LzZkrvjzl8CZXzuYp4FhKjj0g1M3FRzGDlc7LV5XfLI=;
        b=SFPD61ZLctQO5g9gq4cNw+MIY71ZCIqhLvVmkH7HBEnAk8znpNzsXKkXBoPfrdrbO7
         B24FSVjMMdirKvJ8aTZAaLoT83kfZ3mju2LMSb/LQ8yp7ECD9Zh58zSt0OMwW7xEdNc8
         M2iJJKpvmQBaH7j8hlQVNcByQKZEn+/SOopm8HmEIiU8axw2EYzDEVW9XdgnxHlstnxu
         FcqUd+jZB3bZgZR/uLazIqCQbVHqqw5akmSiD/6Pyk80EdQs5LxMWe1QizXh+SMJGc+p
         +z55Bq7HUQyrepCrESOmkzM7Hy8SNqAPOq2YbFKQPSgbDBKfNqo2f5/DohM9JLuD3OA+
         4J9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768756077; x=1769360877;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LzZkrvjzl8CZXzuYp4FhKjj0g1M3FRzGDlc7LV5XfLI=;
        b=OHaGoIs14PQuQeuOGnzLx2KZFX979Scl6j/VuzSaP1UIOJJQEotGEkL6o7qptEEjn5
         +aVP5F80k2/yDSDoo+TW9Z9PDEB/r/Yw8WOajUv4sZs3Mc95zx8RGZUeB9BTU+b6raAS
         wJsdv5flly8gdieAbXTsS4ouqZAclix2khO4qO3XZCfOjT1evzbneZZqCb4Sa8+22Qye
         LXHd+rm0Hd7+jJbPeDdp6szFAVG5wQgDGdzNmhEgJ4h0pvSI3PwD/YyuWvpqNuKODWxL
         jKLb7Ayagdxo7ptrSrx2g5tqYAB8wEZ+Mbct+LlPQ7CzQkZ/9SYxmpRtgbZillnQU87V
         7adw==
X-Forwarded-Encrypted: i=1; AJvYcCXm2spTnvh0IEayskinI3yFLThY9kfajfXQkv+UahQS5E+0Drvnzh5UPu/LpY5meQQjN0VucQ2o0jci@vger.kernel.org
X-Gm-Message-State: AOJu0YyGMcE+1eKrhO3D02yebk39c1dId0GuSqLu/i+HWPMkgWYMqb+u
	7gApIskRpegWfBZlX9MPxfkUli2oxsGurqDg/P9avrWRA7760QRc76Zg5zSgzI/h
X-Gm-Gg: AY/fxX6PuRbCTz33j6MTzOolv/hTmAfUY+pc3ZkNSWYU9QNsAKjH9DLJtUGy5lzx/Tq
	9xweKZ/PYsWnDZhYojjf8zG62I74vyL+SPHx/yJL0dr9E7iQOzrTZG64GT+t7twSbi75RK/KDoC
	RKeUbABZcMac6ToHzin4hfgXzCUDA8zMmoQDiv/T3ZpoC1H4cu1T8t6k/N+vNXu9wDRLRuiXd6T
	0ZOUi2h8fCZB6habkfqd0V22IE8Z7da/qhQNj5JWkO01jrCIohXCk6cxeZ+ic3N7adfYsM2hOSC
	MjGU4/ZJmQnT9oHHVUimEshz71QHxJ+slnCMrayDIs9OpbjS+woa++pQi2z7/yjiebRDgYdMYzF
	DR7axmZ4Nd1tT/pQP8KWO1q1RV2vbNnOvb9WgkvE5kWAEU0XG+ORVzgaa06iJfmjQTnmpCUfexy
	PBJBTGSdjnUNU2lbn1EDRB85crm+1OssX1wTipM5jXzrM=
X-Received: by 2002:a05:600c:4e93:b0:46e:6d5f:f68 with SMTP id 5b1f17b1804b1-4801e30b737mr113177375e9.12.1768756076408;
        Sun, 18 Jan 2026 09:07:56 -0800 (PST)
Received: from anton.local (vps-58d0fbce.vps.ovh.net. [51.178.29.162])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4801fe03b56sm66590995e9.4.2026.01.18.09.07.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jan 2026 09:07:56 -0800 (PST)
Date: Sun, 18 Jan 2026 21:07:51 +0400
From: "Anton D. Stavinskii" <stavinsky@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Chen Wang <unicorn_wang@outlook.com>, 
	Inochi Amaoto <inochiama@gmail.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, linux-sound@vger.kernel.org, 
	devicetree@vger.kernel.org, sophgo@lists.linux.dev, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH v2 1/7] dt-bindings: sound: sophgo: add CV1800B I2S/TDM
 controller binding
Message-ID: <aW0SikDtd0HIrT4v@anton.local>
Mail-Followup-To: Krzysztof Kozlowski <krzk@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen Wang <unicorn_wang@outlook.com>, Inochi Amaoto <inochiama@gmail.com>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
	sophgo@lists.linux.dev, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
References: <20260118-cv1800b-i2s-driver-v2-0-d10055f68368@gmail.com>
 <20260118-cv1800b-i2s-driver-v2-1-d10055f68368@gmail.com>
 <20260118-famous-magnificent-peccary-474ba8@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260118-famous-magnificent-peccary-474ba8@quoll>

On Sun, Jan 18, 2026 at 11:14:34AM +0400, Krzysztof Kozlowski wrote:
> 
> Please use subject prefixes matching the subsystem. You can get them for
> example with 'git log --oneline -- DIRECTORY_OR_FILE' on the directory
> your patch is touching. For bindings, the preferred subjects are
> explained here:
> https://www.kernel.org/doc/html/latest/devicetree/bindings/submitting-patches.html#i-for-patch-submitters

dt-bindings: sound: sophgo,cv1800b: add I2S/TDM controller

Is this anyhow better? Also in the documentation directory should go
first but I didn't find such examples in git follow. 

Thanks. 


