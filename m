Return-Path: <devicetree+bounces-136325-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 20DA2A04C9F
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 23:47:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BF551188589D
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 22:47:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AE2F19D093;
	Tue,  7 Jan 2025 22:47:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="kObDAehc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394F686330
	for <devicetree@vger.kernel.org>; Tue,  7 Jan 2025 22:46:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736290022; cv=none; b=O72lnFoUrjiK1FrwinlsCyiWLpz7LV/Q0uaZNFq6AJVkbcY9QUnnfe/EigLKBpzrbj47bQngq1auVWoFQHYVdhwXYqjccvIpgZwNeiaL/UBoJwx/ylCO0hUWbcbuquVJfNXKKZK4oEAQj/J7+NDm9Ws+lAiWngif03Ux5dmN9Cs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736290022; c=relaxed/simple;
	bh=HiKSV+qYlrcxWm34gNMXj+pXauBB7CRb/Gor0TsVzh0=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=KmQmXI54CvET6IpLF1GskwaCW7HWNiVcbacZG1oqzHDbPmQ+wn2KHmqiTruq9NRS0nkLqPQOLU3qbooyFkOmOGxmzVS7JNfe1iD5V0nzbvpgZNBIFEisacjUCgJ5/M452/HjvVEy9qYDSaoTk6l+bPy6jvOSJ5oOnVQDzHHF95I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=kObDAehc; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-2ee8aa26415so23628050a91.1
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2025 14:46:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1736290019; x=1736894819; darn=vger.kernel.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=VhhOsxIrAZXRQSyguOLlB0hClyT00aHuDw3Nc1/4jp8=;
        b=kObDAehc8KBDx4nAhuC0Q0fTT+xNiXN/zOjSqARo2lOIJat14ZdMT6zyIOFPXeThdd
         v+KfUb3/UtoNe9f93lyihak0+HrVB+Om6nE/7xj7PfE9wPOZ04Wn5cbKKrcLNbyk3RL9
         7zqAm2i/iNvtwapci9L1DcdyGM2dy/9FJJ8yHbpR1ZSSb9YULoLT0QBvvTIoN8iaE6+K
         +KiCWtq5sI3AoFsPtMzP3hwC/Y808tOqofz5E0TESUatbbqoQ+spQTirHvYnK1EUJA0y
         W7cJK+7mQ+vuufnJOlvQuiPy9P9E9ruFAGQgudtOmYkTrax6fvLwGPUmclldrFwuQ0mV
         jdFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736290019; x=1736894819;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VhhOsxIrAZXRQSyguOLlB0hClyT00aHuDw3Nc1/4jp8=;
        b=A9KdJpkoR0DLJ2goKmcT211EwdwQyRvHFSwNoW9LBYN+xCDq0a9zsV68uUh5nGV6aN
         kXHO9zVpP9K1EKy0OLJu/adWxOOLeMtJGmO387w/r9U6/BwGjIhn7sKm+nc3HCgDMKGm
         /CnaJ8KfEQwHFTs4PFe3T1ml84eJQPg2X/MApMVvRqv1dyiLuTlIu0qOBY+dob7yx2zq
         IT4j3VAxT5jtZuSI2ptd7jRqCszGRADxZTxMh825Dx83wQsPpK1/IGfwRdkXHED9GahG
         ZbbGOjHCX9wG3Tfthsw2QV08IEHj1M0RiFSDRaOVB/qFBGz+nsv5v+A0GnYh8UxPf7p2
         P1nA==
X-Gm-Message-State: AOJu0YzjNO9Y06MSOJcP49fK3ZACiDO1AQ5Iwz6WUoBmtCHtT/4z54eu
	Y6m2z21z9VnubeRi/L+QyP2+OnB9mZaJXHGVLgzeNadq06GS/id77+ImKCnWc9GheA5KLk8sRZf
	n
X-Gm-Gg: ASbGncu4dSe4sAGBhFTx3os5LOpVEHpWcRTOxEXWKeQluzE/5nvrqVNasjoj2iizVtb
	N4oe4g3mdxuNp48gH527mA5DXd83pxZVtOFynoVtx0pt0WNqLURX2wgTJSB/bbg1v7qWHgWmnx+
	tMCHMmnsFHxVHPd+wlriBszv7rfQF7N2wDiTlLayz9iUZg7pZYe/v5hdcm3UqsUpGjKg81RRQrp
	+yNnAA1NCsau7cgWYYWl0GRrNW6mMAAmkW3Ddv1q4h6i0gev47FVYU=
X-Google-Smtp-Source: AGHT+IEWLZ0aAO0tFLvsOPBDQKKeuyqMuH4W0nT1NxPlNJruhvsUZ/Ykoi06+2HvkLi5ZyYOcU4+/g==
X-Received: by 2002:a17:90b:4c8d:b0:2ee:5edc:489 with SMTP id 98e67ed59e1d1-2f548f5ed6cmr824480a91.26.1736290019527;
        Tue, 07 Jan 2025 14:46:59 -0800 (PST)
Received: from localhost ([97.126.182.119])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2f54a2df0b3sm49805a91.42.2025.01.07.14.46.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jan 2025 14:46:59 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Nishanth Menon <nm@ti.com>
Cc: devicetree@vger.kernel.org, Romain Naour <romain.naour@smile.fr>,
 linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org,
 conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 kristo@kernel.org, vigneshr@ti.com, Romain Naour <romain.naour@skf.com>,
 afd@ti.com, s-vadapalli@ti.com
Subject: Re: [PATCHv3 1/2] dt-bindings: mfd: syscon: Add
 ti,j721e-acspcie-proxy-ctrl compatible
In-Reply-To: <20250103212528.enq4ur5afxhwzh7n@outdoors>
References: <20241202143331.126800-1-romain.naour@smile.fr>
 <173344002250.407600.8303166891165540615.b4-ty@baylibre.com>
 <20250103212528.enq4ur5afxhwzh7n@outdoors>
Date: Tue, 07 Jan 2025 14:46:58 -0800
Message-ID: <7hr05eb5st.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Nishanth Menon <nm@ti.com> writes:

> On 15:07-20241205, Kevin Hilman wrote:
>> 
>> On Mon, 02 Dec 2024 15:33:30 +0100, Romain Naour wrote:
>> > The ACSPCIE_PROXY_CTRL registers within the CTRL_MMR space of TI's J721e
>> > SoC are used to drive the reference clock to the PCIe Endpoint device via
>> > the PAD IO Buffers. Add the compatible for allowing the PCIe driver to
>> > obtain the regmap for the ACSPCIE_CTRL register within the System
>> > Controller device-tree node in order to enable the PAD IO Buffers.
>> > 
>> > The Technical Reference Manual for J721e SoC with details of the
>> > ASCPCIE_CTRL registers is available at:
>> > https://www.ti.com/lit/zip/spruil1
>> > 
>> > [...]
>> 
>> Applied, thanks!
>> 
>> [1/2] dt-bindings: mfd: syscon: Add ti,j721e-acspcie-proxy-ctrl compatible
>>       commit: d8efc0b428856137608ffcbb6994da6041c9fe2a
>> [2/2] arm64: dts: ti: k3-j721e-beagleboneai64: Enable ACSPCIE output for PCIe1
>>       commit: 1d5e14a20dc60b440c60bec8489acfd45cdf7508
>> 
>> Best regards,
>> -- 
>> Kevin Hilman <khilman@baylibre.com>
>> 
> This will need a bit of fixup - See along the lines of the following.
> Additionally, we should be a bit careful about the dependency of dts
> mix up from two trees.

sorry, these should be going through your tree in the first place.  They
are now dropped from my tree, please go ahead and take them along with
Andrews fixup.  Sorry for complicating things.

Kevin

