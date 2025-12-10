Return-Path: <devicetree+bounces-245650-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C9709CB3B50
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 19:01:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C4F12302C4F3
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 18:00:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C37A31A05B;
	Wed, 10 Dec 2025 18:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="JInx26C1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB4154C79
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 18:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765389635; cv=none; b=ej1TpIqFmzteUCFivKzI82a4PFx3IbRnnKkERQuGc1oAm909tm035+JuKGIR7nvjVEDs5VJvsp+sjrn9RiRzxd+cmBHZs1qqU7irixsq/nfHpGWcsQOqz1sp+yXOAl+1sdt3XWYxqXS0mzz0KKAw/mWdlGRY81iM36Yh4L84txI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765389635; c=relaxed/simple;
	bh=a+WgLV8Me8he8vsaz9WjfiuVCZvCj6zKFhsOIiTYBLs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YmgW+bq1+JqLFBj31q8xz88a08bGkgRMWJhHbglXrjyCKyTaLy4QSWfrQa4YCD45NcPIg4agYVAqrG9j63HB15OZ8RuatJmVQGoEK5HOAHmwJAQpImEz5/UVoJj0UQ3QbrksEZzJcZtxI3RJ46Bi69GmGx+tozvZ4FbGM1sGeoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=JInx26C1; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-42e2e6aa22fso10549f8f.2
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 10:00:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1765389632; x=1765994432; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vNo6uQ8AO0yOaAEJTUC3/zvI8C5HZVj+hKvmdCETuYM=;
        b=JInx26C1T9J4bIK8XSvC0fuP1epZ1mBZq02rYH0f/BaN3cbM6qusuYxq4pKQ3dllxp
         xQsWKTr4XHbPLFgWXWcTOptPq26oOiG1D69YNKH3V/I3A30ohO5ByoJaLTAuPQtqKJnW
         X+prjUObi70W7zv4fMdlW04mPK63PaT0bgeJA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765389632; x=1765994432;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vNo6uQ8AO0yOaAEJTUC3/zvI8C5HZVj+hKvmdCETuYM=;
        b=wZg6vLvqn7/X/0FvSinIyFuqFV7Y9dWN9ekcBFgSrm2FrVfzAgIUrthHqO+l1ycGdr
         b/tREFGl+NpyNgpLArzBLNqpJqW8Q5pulWnBtp8jdfGAdCb6p3ucN1JlgyN0vRfaB4Sw
         wHSP/LokgxSYx+4mkDoxMIub7L5Phiy7HBkddTxT1esd0BghhYv2FPQLdMhJWeON3PK8
         UGF9xpBjLMSXXbuJKy9PTOSM9iit+aOhFBizxc89DPjiVb/NeCpEnSJOnQYcTlkZMbWP
         DHdSokfqmNISq0JbMuF3jXEDOi5b6lYseVDjBlcEpeKLRocaXTGewybhNEr1O07THxn0
         TXJw==
X-Forwarded-Encrypted: i=1; AJvYcCXqbxt6XHx5WvQMKOyC4d8jbjN6XyFQag9FjTpOq+QxI0UlznlgglpxpSL62q5LaQZajfouysi6jut6@vger.kernel.org
X-Gm-Message-State: AOJu0YxHetJ+QqfW7clpHlpu1znx6fGgCeVfhVegN6ySdwpHxcJNvLVV
	JVpOM6VjY8Om+qu4/tApdaIaiHoK6xLIbaoXvAbIkRaRS8KVjHnmHelvc4iq5Xc2Lg==
X-Gm-Gg: AY/fxX7C9E8JTvQTd2Xbb+aWVv81egGPJmYPiWQFJLKauY8KChUQ93P2K/FIFzQ2xfO
	8tqfy/VBcO+BoUylLOIa5BSvxpOZu1AnSNzoWSRoOEuJ/JhET/UOVkd4Z4yrmhMism8eaWJFW3h
	lKG7aNHg3C22r8uB8w1aBYy0qjxXcQQRnzoj4LK7Nq7nr03OpAy3zOh7vnezKHtpR8FrPHZljKf
	or34t7vsEwdGvxePPDJ6Ot0Hd1oj7cmRdiBaQQ8tkpNV9gKHmkPwYGucLqLEApJkaNNCbFtxyoO
	FbokKmmvV+MmLLRAu9aFVAfdLFi0udvbQeBGj4/l3KtKAoUTUUnsSkWJotorM/lNyu11lfEQGvA
	la8FsX11Xwm7dYEesVmNcMIsURgQfKbuYpRsqqKjBTxztr/ejW3o+HP5L33heGExW9a4ycVWhk+
	rVhx1CDwmImIRNanHmCw==
X-Google-Smtp-Source: AGHT+IGPESWqtdwT/XRTR5/RmcuAb3YXC3b7FMypahW+beW9pJZ9LM1+rqVviz4PyBnlnycCgdJNOQ==
X-Received: by 2002:a05:6000:608:b0:429:b9bc:e826 with SMTP id ffacd0b85a97d-42fa3b079c1mr3929886f8f.53.1765389632184;
        Wed, 10 Dec 2025 10:00:32 -0800 (PST)
Received: from google.com ([37.228.206.31])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42fa8b8601csm291118f8f.22.2025.12.10.10.00.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Dec 2025 10:00:31 -0800 (PST)
Date: Wed, 10 Dec 2025 18:00:29 +0000
From: Fabio Baltieri <fabiobaltieri@chromium.org>
To: Rob Herring <robh@kernel.org>
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Benson Leung <bleung@chromium.org>,
	Guenter Roeck <groeck@chromium.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>, Simon Glass <sjg@chromium.org>,
	linux-input@vger.kernel.org, devicetree@vger.kernel.org,
	chrome-platform@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 3/3] dt-bindings: google,cros-ec-keyb: add fn-key and
 f-keymap props
Message-ID: <aTm1PVLrS7Ra0OTF@google.com>
References: <20251209154706.529784-1-fabiobaltieri@chromium.org>
 <20251209154706.529784-4-fabiobaltieri@chromium.org>
 <20251209192243.GA963693-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251209192243.GA963693-robh@kernel.org>

Hey Rob, thanks for the review.

On Tue, Dec 09, 2025 at 01:22:43PM -0600, Rob Herring wrote:
> On Tue, Dec 09, 2025 at 03:47:06PM +0000, Fabio Baltieri wrote:
> > +  fn-key:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description: |
> > +      An u32 containing the coordinate of the Fn key, use the MATRIX_KEY(row,
> > +      col, code) macro, code is ignored.
> > +
> > +  fn-keymap:
> 
> If keymap is linux,keymap, then this should perhaps be linux,fn-keymap. 
> Depends if we still think linux,keymap is Linux specific?

I'm open for suggestions, trying to understand the pattern, these are
specific to this binding I think if anything they should be
google,fn-key and google,fn-keymap, similarly to the existing
google,needs-ghost-filter -- no idea why function-row-physmap was not
prefixed but I guess it slipped in and now it's not worth changing it.

Would it make sense?

Thanks,
Fabio

-- 
Fabio Baltieri

