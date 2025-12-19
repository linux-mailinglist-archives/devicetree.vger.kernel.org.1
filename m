Return-Path: <devicetree+bounces-248312-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BBA39CD0FB3
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 17:50:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BCD5D303D91C
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 16:50:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30AD33590B7;
	Fri, 19 Dec 2025 16:50:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nriwUDaa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f181.google.com (mail-dy1-f181.google.com [74.125.82.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 588C1358D39
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 16:50:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766163003; cv=none; b=ucgeie0EcR1sVbvHFGLqnuWhM3SGAG9EtdWsujw+p+58gUR6u+8nNrpArg9UEmWHfPUyX7mEtIBY8W/FArYNBZBU4pE19Ta6d/QdhNYIbgiAiGTKZ1bNQWcqE7jJEq76cgnWgz+fL0BMFTOMNLDggdOCD0RtWJ4E6GaNu2BTwYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766163003; c=relaxed/simple;
	bh=ru9IJQE9+ww/dM/p7QsMOU8/dAarNmlOzOiHd02gp1w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pAH0rPf+XZjQY/5pneHwfY5Qz4IP1nUI/lZsugO1dzS4NiE5GlKYjYoExpsChIedbK/snztcCNxE7Bo4W7bolXk/CLQFqCLjkBiFre9iy9sMPIMa3olE3cVOfqWquSiaaeakW0PL2D0M3OAl+WYUpM3zo2WJG+EUypuA9hH8zlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nriwUDaa; arc=none smtp.client-ip=74.125.82.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f181.google.com with SMTP id 5a478bee46e88-2ae24015dc0so2823110eec.1
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 08:50:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766163000; x=1766767800; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=abKin0XLy7cbeuJKUPVafCEbiJ8dnNbPxx208D/l2TI=;
        b=nriwUDaaQz9b6Qj/H/K5fDRGGMCX3Zh6NWk5nnqf81qFMPei9tO5tA9bggJ4V2YVKt
         VhFYykZc/Iv1mEYnUW0x6XopgaaA2FkY2cpK0/EvcJl8iEVsyav1EceJ8ROBUKOGW9+b
         3ak5b6EIiz0lQJhjYB3wO0NlOOO1JSgM4CXIpMfaca4XNcC+tfEJU5XNG6N3WzSt3ZRX
         IQH1BDh5Ih759Xwhf+zTxI+fMkFE8sKPvzkYNoEY50d5x3LtQI+gDNaUHYYFCxma+9IU
         2P6F02HojeLp7KKLAPOLTL6JIXn6dPC+ILmS/e3DCnqhsRK4VMvgjGLVjr7M8Y8dyKcm
         Z3uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766163000; x=1766767800;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=abKin0XLy7cbeuJKUPVafCEbiJ8dnNbPxx208D/l2TI=;
        b=NUInby4mVAt7ojS2+US7WDnY53yHWmWr+aolxz92IjSKZfhPTUswarS8s5uotN+wEg
         8Zihx5MMvTDYAbmMKT/uSYBmjHiRn60OD/Ztq+bYa7kuqfNRhK90BtVIHz8dN8k0BlYF
         nsD8YhKs8MWfuAL3CgVZwQpslGr69MdgcEng0pio8ldo8bNUGHAGxJwwUTNrNCeE6UPB
         dyB/pQ0Odz22jJD0ia9lBDB40ndMCknEPf5wI0MCHkX/2mAmYAxABsKnWC8FnI+kwkEx
         HzRDG7zj5oavFliWyFFfzV60T1UkgMrSG+rnDhI5vVG48pL4pvp32xMcrqhzVV84RcBp
         NBbw==
X-Forwarded-Encrypted: i=1; AJvYcCX1ChoE2EKLKV9GGjnm15T/jwz0FBcCv/xIQY9q0JIFfiXembyrRCOwXFnd5Q23dFUs4cC2ymjTTbNt@vger.kernel.org
X-Gm-Message-State: AOJu0YyzZoRP/U0Qo7Nn1vxqROibfCxCYWsHfYnZdh96co6FUAs5y5fl
	3AbX8HYotrYKfXqO8V2nvptd5E8z/TR933OA/j4KxRRLiFgUA+6yjzerpIShig==
X-Gm-Gg: AY/fxX4AQGApgvnl2aeYseoO6HnKukWGNYfmy+/X74y3TvZTvT7vtpKspXN/M5VVXdf
	fewjHzpwdzpTrzvzNFe+sbQ2TiO57Mq8YO8r78I2Hl9sNs91Q5T/ItnORsXPBCE5YD9vYRAng1p
	p8oLGpDu+1QKX1BPkhSjJ43a9o4QeDaGh+qIs6dHwdvR3IusShEqtvPD7MHG9KOhhmYj9clx1lQ
	/QplETh9pp1hX2QrNfdtWf/0fjtESxgnj8P6Focc+TEOGncLUiBYBlhvo1rkCTuSpDGgyAaa+4/
	4Bq+vWvkYqbOUDhOTEDNTCCkjE5QBbVgFqZOlOjPUUZcyXcjrzi+fFs0bEoJNUv2PFt+zRKIx0/
	GTH1sDzK+StJ8NnhG0GylBAghChCd6dike3k0p9He1I2QEXZK4fE5L2w//VEK8kinWrveKuwd3t
	j0V/NWK+9TD/rMDLxEwwrso19V
X-Google-Smtp-Source: AGHT+IHnkxb1HJgurtut7Ez1hF4iCE8k7yTVxjrhryrJzgeEvqIZ5Ob6FGIW0tLLqiXi6EpbmNEJQQ==
X-Received: by 2002:a05:7301:719e:b0:2af:f2c2:3bdb with SMTP id 5a478bee46e88-2b04cafa74cmr5767856eec.2.1766163000133;
        Fri, 19 Dec 2025 08:50:00 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b05ffad66fsm6729545eec.4.2025.12.19.08.49.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 08:49:59 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Fri, 19 Dec 2025 08:49:58 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Yuxi Wang <Yuxi.Wang@monolithicpower.com>
Cc: corbet@lwn.net, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, wyx137120466@gmail.com,
	linux-hwmon@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: hwmon: Add mps mp5926 driver bindings
Message-ID: <dc0f3e63-89a8-4f66-a6d7-d51043bd11d3@roeck-us.net>
References: <20251219055413.1661-1-Yuxi.Wang@monolithicpower.com>
 <20251219055413.1661-2-Yuxi.Wang@monolithicpower.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251219055413.1661-2-Yuxi.Wang@monolithicpower.com>

On Fri, Dec 19, 2025 at 01:54:12PM +0800, Yuxi Wang wrote:
> Add a device tree bindings for mp5926 device.
> 
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Yuxi Wang <Yuxi.Wang@monolithicpower.com>

Applied.

Thnaks,
Guenter

