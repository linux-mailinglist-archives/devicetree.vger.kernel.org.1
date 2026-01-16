Return-Path: <devicetree+bounces-256197-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D247AD338A2
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 17:40:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8AF453013EA2
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 16:37:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B640034A3CD;
	Fri, 16 Jan 2026 16:37:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="U2I2ZWEG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A7D7279DB4
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 16:37:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768581422; cv=none; b=VN+7nofQY79why3xufUZ3Z3VyW4GcL2Hp2Y+hBgZPrBy/2fjcoh6sVstO+h7dzG+rG3AMum9HbRsfk7xOIJEX5rF2UUQXHaQZ5Y4H0qA69Ck135FSHfXKM99fc/QeDBDFVhEiCBxSfWTOmJp0IEqBG2Oreou5cVFG6UbX/1Sgoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768581422; c=relaxed/simple;
	bh=QWBkRfwB8Hr5ZYz5LgytniStVTiOIbPJUP3+7CjjuN8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=B2kgFQtqTeFq3E7wilLZ/WVXCkzVWLECe67DsfvzVnGBSNutco8ePA+wMoR9s8FlNMgDvK6f3rsLBGNGYp8CPGaJ8rgnLYYEAt33lJPtaWMxwgtTpHFUdabla51Ukt8VUhc1MR/iiq1ByLVtqzrl7ecPYJMJsxHss9C9A+No9AI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=U2I2ZWEG; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4801d1daf53so12881345e9.2
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 08:37:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768581419; x=1769186219; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=48KuNuVL+hUtBLNGVEMj2Qm1+3zVCGJSobWiMMU5h1w=;
        b=U2I2ZWEGvTO1/AKWq0DkIemaD80Y9kL63MjsBrQiuKHDplZ5wO+/bJGlyod4XpnG6J
         nOjs2wrJ845TX5MXxpWK1AqNG92cKbgHqoxJphrX7cXUiUa62/ppI2PK/oFLuyrpV6yQ
         h4swJ/ueYhMizQfxpmFENS0K2Gfh6nNhUdhUSsnaLqPnUSzK0h6smDZITfcFwi1Q2eoJ
         KsuRq7GYATtZfFx87ahVPjJg1VbWuQxM+F7PS6scM0JDmRf8IWUGPr3nwARtvczEb4pZ
         6tr/Mqf/NgU4ZciULUnC2kSgnJBs4vzREX+99/KhibbpyD8/Lhx6r46kEHllUdKNKntf
         viVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768581419; x=1769186219;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=48KuNuVL+hUtBLNGVEMj2Qm1+3zVCGJSobWiMMU5h1w=;
        b=gmTZ3mpD5EwuJmHR3FW2C0SJB+FzOBABopYCIvbg2syg/GD2q/A79C+cXXUWCmCPSY
         7ru+pgBqt9aGdgGserewrBvIs63W7j89YiFsJn4B5Mct5uXtrRufw0tHG09HEes96KhM
         wFKW8BUyiEl/KuwshFd2PJvPxSBaEn0DOVOsYJMyHOR9uxq/lHgfhGg25IHMOq+FBlgt
         OzbMtW4AWzFzGbPe6I3uKr36mSAQ0nVAjo5q0LJ0l4sWJ/bV0hMlVQpIKEVeSYYHKtlb
         BmF7NgtPLWcJ4MJH2KUGFrjtul/+sngY0FoOjAw1T4NcWgBdVKnWyfccsP95KhQbesiW
         MEpw==
X-Forwarded-Encrypted: i=1; AJvYcCVuFAeh9bcTU1y8pU5+QAZBY5rP6GBzrc5NRkmY9HIpCeDiVcAyFYEh43s1ypXWleLP4q/xL0HydkOq@vger.kernel.org
X-Gm-Message-State: AOJu0YxF8lAuz02fFDuID28MPYmzNzUVzBipoyXYwjIwMarYXRLxwtnU
	0IoV601/YHdEg20faVzmqAUFmEKlF6j0BlKuo+sVPdO5XAdB591FHXeytFt2nQ==
X-Gm-Gg: AY/fxX7oWZWJ3+xftN6KO4mP6tKkEQpa+YTzjhPIerqIQeGvNVO0cj4mDIWW8fqgs6x
	VuSCYC/+npiIzE+EycCuf7Kjo4DcLLHR5FxNc3ccJq5hIbaOql7+WSQZvIt36Tx0HH+XDojFmd1
	q+OoWu7o+EYIXwHTZLfmR85IFiyWulq9Akjt4n0G7fTA8HEjG4dWgX02hz2cgeGxGt5Uq14yXYd
	gChDqbpY/TtYyIXG7SBC495pTw6bYrjDZrqA9Wk54/SroKURUq/RoATY/IkukLdN8tJPZF9LvWa
	0uSKOxgK++D8NNOGBTOhBvgHQVQhMTMwoaoA9a2gK6A7JlZFqbKeuxRvmofnqISPnbSgv5I/J1M
	wcF2bLfcqhnUtB6vE2xvV0SQD47LvSVMcBvoyJvCRrG3zRzlENCz04yUbQTCHyHkj4OEEE1Z6t1
	QyZS8HQYzfHRNLamQVp20Pk+5B1ljOjUu7Bzke35liTZW24H26vXBCFdpY0Vx90z60
X-Received: by 2002:a05:600c:3f18:b0:46e:35a0:3587 with SMTP id 5b1f17b1804b1-48022aa9f8amr29851285e9.27.1768581419332;
        Fri, 16 Jan 2026 08:36:59 -0800 (PST)
Received: from localhost (brnt-04-b2-v4wan-170138-cust2432.vm7.cable.virginm.net. [94.175.9.129])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47f428acd0csm105991455e9.6.2026.01.16.08.36.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 08:36:58 -0800 (PST)
Date: Fri, 16 Jan 2026 16:36:57 +0000
From: Stafford Horne <shorne@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
	LKML <linux-kernel@vger.kernel.org>,
	Linux OpenRISC <linux-openrisc@vger.kernel.org>,
	devicetree <devicetree@vger.kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: (subset) [PATCH v6 0/6] OpenRISC de0 nano single and multicore
 boards
Message-ID: <aWppKQRWATsSuDeX@antec>
References: <20260115151014.3956805-1-shorne@gmail.com>
 <176849165027.29734.708711779514578942.b4-ty@oss.qualcomm.com>
 <aWonvu4xgqIGBGmI@antec>
 <56e0c7bf-8f51-47b4-9ec7-edcf1b815c06@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <56e0c7bf-8f51-47b4-9ec7-edcf1b815c06@kernel.org>

On Fri, Jan 16, 2026 at 01:02:15PM +0100, Krzysztof Kozlowski wrote:
> On 16/01/2026 12:57, Stafford Horne wrote:
> > On Thu, Jan 15, 2026 at 04:40:53PM +0100, Bartosz Golaszewski wrote:
> >>
> >> On Thu, 15 Jan 2026 15:09:56 +0000, Stafford Horne wrote:
> >>> Since v5:
> >>>  - Adjust dt-binding patch based on suggestions from Geert and Krzysztof.
> >>>  - Add reviewed-by's on the dt-binding patch.
> >>> Since v4:
> >>>  - Rebased the series on linux-next to allow patches to be incremental.
> >>>  - Rewrote the dt-bindings patch as an incremental patch, Due to this I
> >>>    dropped reviewed-by's.
> >>>  - Added acked-by to the IPI fix patch.
> >>> Since v3:
> >>>  - Switch order of gpio-mmio driver and bindings patches to patch binding
> >>>    first before driver.  Suggested by Krzysztof.
> >>>  - Removed example form binding suggested by Krzysztof.
> >>>  - Added Reviewed-by's from Geert and Linus W.
> >>> Since v2:
> >>>  - Fixup (replace) gpio-mmio patch to update driver compatible list and just add
> >>>    opencores,gpio to mmio-gpio bindings.  Discussed with Geert and Linus W
> >>>    because the 8-bit opencores,gpio is not the same as the 32-bit broadcom
> >>>    chip. [1].
> >>>  - Update new device trees to use proper ordering, remove debug options, remove
> >>>    unneeded "status" properties.  Suggested by Geert.
> >>> Since v1:
> >>>  - Use proper schema in gpio-mmio suggsted by Conor Dooley
> >>>  - Remove 0 clock-frequency definitions in dtsi file
> >>>
> >>> [...]
> >>
> >> Applied, thanks!
> >>
> >> [1/6] dt-bindings: gpio-mmio: Correct opencores GPIO
> >>       commit: b2b8d247ad8ee1abe860598cae70e2dbe8a09128
> >> [2/6] gpio: mmio: Add compatible for opencores GPIO
> >>       commit: 3a6a36a3fc4e18e202eaf6c258553b5a17b91677
> > 
> > Thanks, now that these commits are on gpio-next I would like to apply the rest
> > of the patches to my openrisc/for-next branch.  Since the other patches depend
> > on the GPIO patches for system functionality, do you think it would be safe for
> > me to merge the gpio-next branch into my branch?
> 
> They do not depend, unless I missed something. DTS cannot depend on
> drivers because it is an independent (huh, so circular logic) hardware
> description. It's also more explained in maintainer-soc-profile and DT
> submitting patches document.
> 
> There is no single dependency here and you should never pull gpio-next
> or any other subsystem driver into your DTS branches.
>
> > 
> > It seems a bit messy, Maybe I should just wait for the next cycle.  But if you
> 
> There is no mess, you do not have to wait for anything. Please follow
> standard rules like we follow for all other SoC-based architectures
> (arm, arm64, riscv).
> 
> What happens when you apply *independently* DTS? What is broken, which
> was not broken so far? What features stop working? What existing DTS is
> affected? What existing code is doing worse than before?

Hi Krzysztof,

You are right, there is no build time dependency here only a dependency at
runtime.  Also the dtbs_check will warn about missing "opencores,gpio" bindings
for the new soc devicestrees on my branch.  Now, I understand that is no issue.

I was overthinking this, I will just apply the remaining bits to the OpenRISC
queue as per the maintainer-soc-profile.  Thanks for pointing that out.

Thanks,

-Stafford

> > have any suggestions of experience with this any comments would be appreciated.
> > 
> > -Stafford
> 
> 
> Best regards,
> Krzysztof

