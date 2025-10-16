Return-Path: <devicetree+bounces-227887-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 57868BE56E7
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 22:46:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D18A154667D
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 20:45:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 651072E173D;
	Thu, 16 Oct 2025 20:45:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Sc3seehl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D502D2E0910
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 20:45:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760647550; cv=none; b=ao1cZ9aA3gLRVY4bZLpn0SioHHUeMq/phne1yCXds/+Ewku76j8VQ9szaMvWiiLndY7iU8ke1xfFcR1ee6ueiAG5tDiF3U3uQJBnNs4umBJP8mwcC67yLWPaWQOfiGqqm4RyAB3E7bGJL2XelkuHE9kHCGLTrJIFG/UPCKqbL6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760647550; c=relaxed/simple;
	bh=vuWYntITigM17Uxos/gnhh7/TGTP6biLwyfnGBAXwc4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lU1iXUxZ62syxeJIRK4KNYHl8YmA3BP+6RtBTDKwJ84mK04WJukJ0pB5ChgkQGgO7qtEGECBUfM1gTH/xprw4r9vbyl8XTRhFevgVkC++10mkDBWUQ246bLgdUVVsDx95ahA4rCdn4PXSdGSGKmyGowrG4ibJzeVXXNOyTELmAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Sc3seehl; arc=none smtp.client-ip=209.85.216.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-33bda2306c5so106431a91.0
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 13:45:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760647548; x=1761252348; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KacH2S0aPS0z8R+x32QNIGxVbnPy5l4NrAbTjwCBOnk=;
        b=Sc3seehlAFFnyih+zDchRbExcYOtRqcambMNU0voht6lTgyeG9F+kEO64hU/MrgsV5
         Bs+/HstyyEiESwo/e7GJs3LIFnJKq1fuGnxjnUypEIrMqlrl6TQUvlDPAQtyuf8pqcDE
         X4VmiyEGiAJwdpomhOAdBNE+XCkCwPjTw5I+zMX29bpqILdAES3HOZkYOqWJ/f5E8RLa
         eOTmmUABkQbvSz7IipsZbZLYeqMPqqY9cBRval1xVmuU0NAVQxPlrlr8BCXu0MsUXVl0
         8Al02p7CTDJJmd8+7Mo1C0uD3rYhKaL402nkfhwJwW9lWwfJ942EN+sfljvcAnJNW/3f
         KDTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760647548; x=1761252348;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KacH2S0aPS0z8R+x32QNIGxVbnPy5l4NrAbTjwCBOnk=;
        b=Bp8UiYdMOHMwMap/nKUsS2ueaRB7eBWsuRLr2AL/B8xjH+efVNuqF0bw7tXgKb5M7k
         kvvg4x4RvydadS6A1N1bSEfwDBNEVRkDcWUCfxZAyVRmzjvvUrKcv7NCSnzdWmUNMPC3
         fND6OGrFCTtw4l1CvoxJPcKlIFFazr5X+ns1suPxUHUjA6uC1556eKC4ihf0CVkUuEZe
         tXZygbfDHsjvPY+4HRE6hQVYF6xNccBPgF1OUAjxOss4XylfHzMiC5rU7R3TAiRVxmoJ
         Pi3K9AEl5lPqWE7CZ4bynSTzK0xpaeit+EiiUT3NAsyub4dK7CU1LAHSoN8ctJoVPRR9
         RV6g==
X-Gm-Message-State: AOJu0YxJ4MqggbGymK8UDgoXS295vdJV0aotb09FyR/Y/8+4vR2QZpVL
	29Rfux/0XObcT4ul5INToHulUYn7GCkRg9o4HXNNuAKr9mn1T7VgBLOo
X-Gm-Gg: ASbGncutgnV2S7vtDe0+Y0ab5tRR9v72KjLmqvLzTqO9qVy9wI0cB2VpSKVbRwqkitU
	bQKD7qwQo9yUw4pa/Xa9ABFVV6aej4dtFHSGKExd3PTRW2h+3Hg8RnpHqFaun1mcYovBApdrS4f
	VpihtToU6fphyYZhrZ+ofSSKPIjAqQ5WdLVHP7W7w2wQLYqmzMtL8jtmjT7xuFBnhaCPKtMXZhi
	mOa95jW/b6LpFIOuSTprui0n6qFQ/+KcAwI+hRXkCj0Jn3BdEraij6Mt+9fHPHraAM/bx9LX9ql
	mUArqF8/MDCOToDUBbu/RcUH/PVgiFWc0qqUFxyMkoB3kJ0fScjL0I34iHzR39BRCt1pa070wRj
	IzNw2n1Qz0ZUotruXpmiXOYcaZiSV/HYff5sbIknHk8M+atpn3IawRX9NB+z8Hate6IUAm5dNUd
	AHSLCQ6Yf2nvRv
X-Google-Smtp-Source: AGHT+IHVzP7A1c3K/jJLirP2tUltPrRMNAxAH1YDsuuq4Mu78bpBc8QWu/jyNpybBNXUbtk+WWslYQ==
X-Received: by 2002:a17:90b:3fcc:b0:33b:cb9c:6f71 with SMTP id 98e67ed59e1d1-33bcf85a9f4mr1194137a91.1.1760647548158;
        Thu, 16 Oct 2025 13:45:48 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33bae2739a6sm1616142a91.3.2025.10.16.13.45.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 13:45:47 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Thu, 16 Oct 2025 13:45:46 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>
Cc: devicetree@vger.kernel.org, linux-hwmon@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH 2/3] hwmon: (adt7410): Add OF match table
Message-ID: <f05e4643-c80a-4a64-a0c7-19b5ee3f1000@roeck-us.net>
References: <20251015-dev-add-adt7422-v1-0-7cf72d3253ad@analog.com>
 <20251015-dev-add-adt7422-v1-2-7cf72d3253ad@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251015-dev-add-adt7422-v1-2-7cf72d3253ad@analog.com>

On Wed, Oct 15, 2025 at 03:52:20PM +0100, Nuno Sá wrote:
> From: Nuno Sá <nuno.sa@analog.com>
> 
> Add a struct of_device_id match table to the driver.
> 
> While at it, make sure to properly include mod_devicetable.h which is
> also needed for struct i2c_device_id.
> 
> Signed-off-by: Nuno Sá <nuno.sa@analog.com>

Applied.

Thanks,
Guenter

