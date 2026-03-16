Return-Path: <devicetree+bounces-276159-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sDTDJfn5t2n1XgEAu9opvQ
	(envelope-from <devicetree+bounces-276159-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 13:39:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D1EC299957
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 13:39:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3D2EB301A929
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 12:38:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70FDF3947AB;
	Mon, 16 Mar 2026 12:38:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NBvfEHOs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 436BE3890E5
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 12:38:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773664725; cv=none; b=kYeEoGP5I/EOByj3XDToPHl4Nh6QejQR5Pypqso/WCb/f7EmxhwR6PLXJiTojQ+W/isy4Ou77z5QthJIpgB+b5adbbRTy3r/Ia7Op9qchYxrsBZ1+UjjBXXkIXuGFlHSeFVJt1opvuAFSeAsjAZPXWCxMoa7qhs9p2EUfR59BBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773664725; c=relaxed/simple;
	bh=pBvUzLH0uz26jQRAjkurWhWn8KmiumiD3Cbz8sGkBMI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y0rmOFP8hzz3MOQ5eJo9u8YWII3IUWrkZgoNYIfw/DyehbYXrEKCUmGEdsJtV6Fz7Dtefqsd2ZsVbbUL4/x0ArXkolxiX2FUOsN4im3DmC8PcHC+MccyzTu0+fSsaLLv5Gv5/MyVdvZM+Zog0k1b11ctejQ9pjJsq7KWIdtMCuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NBvfEHOs; arc=none smtp.client-ip=209.85.219.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-899ed41208fso59217916d6.1
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 05:38:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773664723; x=1774269523; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=pBvUzLH0uz26jQRAjkurWhWn8KmiumiD3Cbz8sGkBMI=;
        b=NBvfEHOs2VyPLidQ/RfqELN6tTVVxu1jtkxc4pOW6KilsLltLHGEJpcgoOiEEY3gXs
         fnlkvLqWlNCV/gCj6oBlyT8afDjQ7DeSa56/82b0sNLfN2r5gtmq4E40ivodrHZk4uVd
         CZCYhJa05eG5AD/lpRCVOZR5npxtJSYis5ODA9UGc9D92/l4Amt7vdbVEl/CQSfZt3jE
         HndcmlggPNCy/m8SzsWxQVI/RIVffa5sZkRsdxImCltGyu71nKgojfXmI2RffRN39R2o
         679eBVTSXMUJNVIAG1SwXZuPIZV/BHs9GuwOUwP3QmLc2M2JhgBCZxyPaf+F8j1Y42fN
         R74A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773664723; x=1774269523;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pBvUzLH0uz26jQRAjkurWhWn8KmiumiD3Cbz8sGkBMI=;
        b=WLBi2VkoQrzLrNqnr2OOZvr+akBHHKxwDmZsUZctsukfGkPJBvKKwQ/JVBbp8dmMPM
         TjkD64jx0/62fg1yATMFNVVQMKKA8+fW0eF1LsqUvSBspw9o0iZd0uKym0dZY2s84n/R
         yHKyIQD+QNkJNUnd5oXNUKQi0KX9FerKmvTFWJ2JShjPLKo0afj513iBHHAiUr62aTLL
         p2owiwHJoKnVW2XbWRNh2mAQjPO4YaHQqIA0dkVPwV6mXS3y528UezMyEt5hXCKaDCs1
         I1uN5EbF0LQLwYQM/WSrklreLh9K1x/3XzCTOZ5T31aR1FX+l8GWdBAowZZGUbE1aSGL
         OPug==
X-Forwarded-Encrypted: i=1; AJvYcCWDlmkMdrR4QNLAPBLkjAnKzl0/INXh8di6rHioOAMnaTxL4uWfcT9O5R2i/XiToMHsLumiZflSCJNX@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9VE9/Xs+sOcMilbs1Ln8u8T/LB6In6fIJDAlwNur75QMkz8/X
	RmTkMlUFsCCowl1pzS0lBMZ/K7lGqJo4iZ3Is1zvitxy9oW7GsCp9YsE
X-Gm-Gg: ATEYQzz7lw9A5TzD53C6gb33g52r2V2Gh56MFc6URh3giy9xah2AF5YuGH0jpXT/tTZ
	ipqd+WkPgMzxYP41emEN8EtFJECqMa/aHtTQ3n2AWYO0GeNeWYp/BVrRMOnnnJ1g+QGJNlaaWsS
	je8JfDupJwFQZ+Cjnlj8KykeS8MNh8jUmJ70teftbt9iFeFoSb+LZK4T611IHifBeN9rMzEBOnt
	MaTdZLvq+LcCcjq7Ix014iU0vmpO4s3skWYtHbTPcq3GMld6XB9ObFoC3CrnSAgVgtMqtgrzAz5
	c/rMAMdBAseTiLI5+onB9vRToweqgoaABzrsdlExKF/EpZi2HoE6sCWbJe7w+01aWqhovJEZGy9
	vRRAAqixOipOsT5spv/My0Mh+cmw50E8zTUJSHuT9eh+QLH5eFqjTLiJGY1vmXOu+SJphA2VifA
	PqA04u8R699UUu9aUMIXFazL1qqgVs2kE5rB35SHV20itMrZEG9WOpSBla
X-Received: by 2002:a05:6214:300f:b0:89a:1bd:233 with SMTP id 6a1803df08f44-89a81d4518fmr193199906d6.1.1773664723207;
        Mon, 16 Mar 2026 05:38:43 -0700 (PDT)
Received: from sleek (d-23-244-200-70.nh.cpe.atlanticbb.net. [23.244.200.70])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89a65d0a7b6sm121853296d6.44.2026.03.16.05.38.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2026 05:38:42 -0700 (PDT)
Date: Mon, 16 Mar 2026 08:38:40 -0400
From: Joshua Milas <josh.milas@gmail.com>
To: Michael Opdenacker <michael.opdenacker@rootcommit.com>
Cc: tglx@linutronix.de, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, unicorn_wang@outlook.com, inochiama@gmail.com,
	paul.walmsley@sifive.com, samuel.holland@sifive.com,
	palmer@dabbelt.com, aou@eecs.berkeley.edu, alex@ghiti.fr,
	alexander.sverdlin@gmail.com, rabenda.cn@gmail.com,
	thomas.bonnefille@bootlin.com, chao.wei@sophgo.com,
	liujingqi@lanxincomputing.com, devicetree@vger.kernel.org,
	sophgo@lists.linux.dev, linux-riscv@lists.infradead.org
Subject: Re: [PATCH v3 2/5] arm64: dts: sophgo: add initial Milk-V Duo S
 board support
Message-ID: <abf50DaYQCmrx_BG@sleek>
References: <20251029001052.36774-1-josh.milas@gmail.com>
 <20251029001052.36774-3-josh.milas@gmail.com>
 <4b1b2580-63ce-4ce8-b4a9-1763d3d3a253@rootcommit.com>
 <6e4bf564-07e9-44a3-a18f-69bc716ca575@rootcommit.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6e4bf564-07e9-44a3-a18f-69bc716ca575@rootcommit.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276159-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_CC(0.00)[linutronix.de,kernel.org,outlook.com,gmail.com,sifive.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,bootlin.com,sophgo.com,lanxincomputing.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joshmilas@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1D1EC299957
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Michael,

Not sure what is going on with your eth or i2c as I donyt see those errors,
let me try testing the riscv side as I have been running most of my tests
on the arm64 side and have not run the riscv tests in a bit.

I used pins 3/5 for i2c4 using `i2cdetect -y -a -r 4`. It seems the docs
might have SDA and SCL reversed, unless my i2c test device has it
backwards I have SCL connected to pin 3 and SDA connected to pin 5.

I am using an SD card variant and have not touched emmc myself.

Take care,
- Joshua Milas

