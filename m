Return-Path: <devicetree+bounces-246148-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ACC94CB9019
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 15:52:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1F7D730596AA
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 14:52:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47A0D305E1B;
	Fri, 12 Dec 2025 14:52:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UE3mfPyP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9691C2DF14A
	for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 14:52:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765551123; cv=none; b=qurMnRaz7xMitw2+ug09vdUXS4Dccs8+/I+dq0hMIukxspBPTVAKmZWTmPW65WtJ9BOvFwMXex5jX6awdwqW4FPWDMS6ZRBbRXgiEKdZq5wNQEvatChwxTA5Wjws7aW0O1BFpVq+U4gTmyrqkMNO11WnlRkwmiP1+LhAy4s77AA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765551123; c=relaxed/simple;
	bh=UqY+yiLaQuiVuCXEZUTKHeKvJK1tzjeO8F5/j9gYSMw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bMV4A0SA7GmmzUrFZOJXo/4dViImzilg+pp6o4tIVhzCtT2tMHT8TYeGQlL83WQl5WqYltK3d1zwSM3a32t8iUL3Isw9fkLQKgXofDw3J8gfyGlEJi/Ac9z7Gtovo1IZh6brPWPJsSQv1WdWsAyPDLJeKQXj7TOmsW5OzcPe04E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UE3mfPyP; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-64981b544a1so1730521a12.1
        for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 06:52:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765551120; x=1766155920; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9bdq+s2ZwfYVuONhzydOJ97RjH0CLzXEFqbGidtolnQ=;
        b=UE3mfPyPVfhnsKnzrSUYaBqyJE6s2OqDA5DKwRkIowRm+9HmRHAnI9r4JqstPNVXF2
         mKkfLrODPGcTWh8IZAFdBewx87NaFaYaf1iP3RVG9/ohswjnoecMaMukDknX07Xa8mYM
         Ns+g96+8mZkEUsHKbzupgN34ajpS9rbWjb3EFsFmEY9U7Ye+hdtxeT8J5Xb9dsH1ei7T
         80JNnKMVL4f59/lN1zYslb479YmF8U25ugPWDWBbHQItkfmkNceh0je3hl2HRUyerQJK
         WELAJk5V+ufdSM0wIc3iLBBzPaTH75j9J6OcMWLjEN2H2yfxPkPYk1Q7SNlN8FYtHKaZ
         gB0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765551120; x=1766155920;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9bdq+s2ZwfYVuONhzydOJ97RjH0CLzXEFqbGidtolnQ=;
        b=E2u6UovaRTIyUExeP1W9rfPhtX7EfoKp9w2AqOKIbOzF/YUplTFSAdf/VLhx0WQoB6
         Odloie9sY2hWSZOwPposFYR4RmKZj3KkdviVJG8KDTOj27qdYL/ENHIRspEKGiAo25ud
         9MWxib+1eiFDRv5Q7kqRwI/T5Q1glAdMkSv+rxVRvdWCHaOcIziBXvjvSxT1HtziAGMc
         pkH3Wdu4ilRy2GOhcApFEMrViCxHE5aKp3zi49in4ckV/5eB+W7EHK6WLjbD8EazYzpg
         4l4Fnl9TgmPe1D+mQ6hQWKda51Iq6dak/HjVBp+QTa4tUylznm4GLNPpPc/EwLq6jnRT
         okvA==
X-Forwarded-Encrypted: i=1; AJvYcCXu0+0qNW+3TyTd7AGjwEQPobrFcaIL6c7Em7CLmlPUTUse8LU02VvNXB+Ejo9+MI2+tdS5d2sXYg+I@vger.kernel.org
X-Gm-Message-State: AOJu0YwjqX9tSa1w9wC09Ygvqy/Sy2do+kmIlpbkZelevrhO9A3uHkMY
	pQOP8iZuC6VuyyaNaUfNQa2F1BllCAD32iXQtoAzeP2vveG6u9Mbs4nf
X-Gm-Gg: AY/fxX4j7XLN/qGFfm6E/qgWc2rpsSrMxrBJryNlEf219uAnnWE54gUPujXHV5ZKSKB
	oLpTJZjbQNpVrLb5NEsdGWzOY5JOyhDC+BEEaJMLosOlCk6fDstjNE97vX7DVFQM1y6EKIr4x2c
	bkqDHZAacNn7DhbnUQ0MpRszBluXZS3GMbu7pzB6HPe1+mGrOMRMZgpvOlbjbmbmBmqXc4Q1GLn
	w8eh21B8ySNqtj73Sbn/lxV58mspTbA7cg59JGqziUCjnHAQbca7k/gYqDHiliSPrxb0JoZKg/D
	pSByEwVoyDETMUHaluX9sG3AE2IzPjHYLSIN/zQOWkVNJ1NmekKF27Plb0YSEwyVKk7FJYBKvLH
	AFxdbKyiRSadEAntWdCaEJTcdYpRY3X93xqOzLMyM8yiXpS7aU2MhfrdnAFnc7Qp11Auj0v7TB0
	jycb1Q6K2+Kew=
X-Google-Smtp-Source: AGHT+IFGPQs3clltXIfWm+Vn8fLF+G/QkerjA1itJMxmint1Fsoag8kkKjn1NIkD84kir9MLUM6lug==
X-Received: by 2002:a17:907:60d0:b0:b70:b3cb:3b30 with SMTP id a640c23a62f3a-b7d23abe574mr221476166b.59.1765551119710;
        Fri, 12 Dec 2025 06:51:59 -0800 (PST)
Received: from eichest-laptop ([77.109.188.37])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7cfa5142efsm579431066b.38.2025.12.12.06.51.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Dec 2025 06:51:59 -0800 (PST)
Date: Fri, 12 Dec 2025 15:51:57 +0100
From: Stefan Eichenberger <eichest@gmail.com>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: hkallweit1@gmail.com, krzk+dt@kernel.org, linux-kernel@vger.kernel.org,
	rafael.beims@toradex.com, pabeni@redhat.com,
	ben.dooks@codethink.co.uk, netdev@vger.kernel.org,
	francesco.dolcini@toradex.com, edumazet@google.com,
	andrew+netdev@lunn.ch, conor+dt@kernel.org, linux@armlinux.org.uk,
	Stefan Eichenberger <stefan.eichenberger@toradex.com>,
	devicetree@vger.kernel.org, davem@davemloft.net,
	geert+renesas@glider.be, kuba@kernel.org
Subject: Re: [PATCH net-next v1 1/3] dt-bindings: net: micrel: Convert to
 YAML schema
Message-ID: <aTwsDUMDosM-aJk5@eichest-laptop>
References: <20251212084657.29239-1-eichest@gmail.com>
 <20251212084657.29239-2-eichest@gmail.com>
 <176553538695.3335118.18332220352949601890.robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <176553538695.3335118.18332220352949601890.robh@kernel.org>

On Fri, Dec 12, 2025 at 04:29:50AM -0600, Rob Herring (Arm) wrote:
> 
> On Fri, 12 Dec 2025 09:46:16 +0100, Stefan Eichenberger wrote:
> > From: Stefan Eichenberger <stefan.eichenberger@toradex.com>
> > 
> > Convert the devicetree bindings for the Micrel PHY to YAML schema. This
> > also combines the information from micrel.txt and micrel-ksz90x1.txt
> > into a single micrel.yaml file as this PHYs are from the same series.
> > Use yaml conditions to differentiate the properties that only apply to
> > specific PHY models.
> > 
> > Signed-off-by: Stefan Eichenberger <stefan.eichenberger@toradex.com>
> > ---
> >  .../bindings/net/micrel-ksz90x1.txt           | 228 --------
> >  .../devicetree/bindings/net/micrel.txt        |  57 --
> >  .../devicetree/bindings/net/micrel.yaml       | 527 ++++++++++++++++++
> >  3 files changed, 527 insertions(+), 285 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/net/micrel-ksz90x1.txt
> >  delete mode 100644 Documentation/devicetree/bindings/net/micrel.txt
> >  create mode 100644 Documentation/devicetree/bindings/net/micrel.yaml
> > 
> 
> My bot found errors running 'make dt_binding_check' on your patch:
> 
> yamllint warnings/errors:
> ./Documentation/devicetree/bindings/net/micrel.yaml:504:1: [warning] too many blank lines (2 > 1) (empty-lines)
> 
> dtschema/dtc warnings/errors:
> 
> doc reference errors (make refcheckdocs):
> 
> See https://patchwork.kernel.org/project/devicetree/patch/20251212084657.29239-2-eichest@gmail.com
> 
> The base for the series is generally the latest rc1. A different dependency
> should be noted in *this* patch.
> 
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
> 
> pip3 install dtschema --upgrade
> 
> Please check and re-submit after running the above command yourself. Note
> that DT_SCHEMA_FILES can be set to your schema file to speed up checking
> your schema. However, it must be unset to test all examples with your schema.

Thanks for the finding, I will fix it in the next version. Somehow, my
linter doesn't catch that even if I run it manually, sorry about that.

Regards,
Stefan

