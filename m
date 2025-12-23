Return-Path: <devicetree+bounces-249205-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD76CD9D51
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 16:46:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E2C3330A280A
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 15:39:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A169834E770;
	Tue, 23 Dec 2025 15:29:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="cLax2bY+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E87D42D3A69
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 15:29:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766503768; cv=none; b=C9ioqAqZaVZw5en3JvtAPo4VMsEzeSb0jy1r5Vr5NCGt50aLHszH43HCJx3H+VCCTBQukfMYv9vwGa3AZ6Deat+29iMB7SEQPR/EMmSuSYGT6Zo/7OjHkxTbcIY4GRFzcaAkJy6y1cQRogB9ee66cubvDzHluxA7c/dJPNHGU8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766503768; c=relaxed/simple;
	bh=J3Ux6KfmhKmVgyLO5VYVS8zBuR2bX/I0/MfIw/LAZ8o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aZ1En/BIprveQ937eEYuSO6XApuxdZg6R3Hbic5RRU0MrgO11dg6h2PB5Isz/vciJyzTqJnN7EFaode6571VD/fPX1iMXxemzUfD7vlSZNttOM2n0cERdFkPr/qz7j1jHDA+nGdX90jvIJSScYOOcKDmMgA1GdsWt6Fy+YeafPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=cLax2bY+; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-477b198f4bcso33708435e9.3
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 07:29:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1766503765; x=1767108565; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=KU2jR3iD71XyPNeJB6Z0f1sjv8gA+ESxHLWTu3Zqx2A=;
        b=cLax2bY+nqPZ2zW1yoNStNqZB0J7RvhbDINYMmSNot1/ncLinjhKWmv7ZTpBZgLT70
         /gES+aPI8ChI3np23Fq2xLAXu/uv9eFVyOtguudeaoEqoW+1uTvhjr0TQhKYao5qP7N3
         lb6qKODdh+4a/1mimcHbDOyYje3JwUTTTwklI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766503765; x=1767108565;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KU2jR3iD71XyPNeJB6Z0f1sjv8gA+ESxHLWTu3Zqx2A=;
        b=QUGvD9TwmwzknRRR6Tzd+NE9HABU6LO1Kt2sM4krJmmhJWOUIKQQqnBFE9+ZyxZPKp
         W1q2KCxMKT6t4T89WBtGTDnpZBNycE5dNorqZGq0pZnU2QgJ1IWDT3UeRT/By7gdqQEs
         RbPf+gytcYoRibX5LCJXSVP+uFWV5MYyCCyH15zcJ2SntOUDuKTBMVA9/we1lJ25l1kg
         YNgUwOrM6+6Ea4VICf0HU6NQyirru9WU6OMH95SwlR/ErxVUYlHIU2z+8thYYfrVF1vV
         aO5mXSF7qoODtzn8pA3AequDemsa68LPGKX2YLFmGd1AiWWFF1efXgr3zIbbQ0PDEvxE
         +n5w==
X-Forwarded-Encrypted: i=1; AJvYcCV07gai+qM0HwPT7aSkH6LAqlvBBR4Al83IcS1Vi0ZnTwUNXKkoP2XprnjYTHaFPmKfRgCmui4p/At4@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3mKygqguzVlqqhg6OOpY4ev3xwP75hFjKjWjxUfX/XSq3QAIS
	tO7LaoyCe7mArivReiNRhWco0bujMjBLGEzgd6ST0MF/5QzmV0E5Bj2ope8mvRJGzw==
X-Gm-Gg: AY/fxX7h97/+eCC2/R/K7hwJtCEQrrnW2dwTR7PZcXJErDKRnh4t4ZiPRiFgbdX2n/5
	3qIWKhabiVMTFTFJqvf2IeVFPBhFQ1FSoZP73OsBT6DKDpZwSd8Hhy+NJz+onXMlnzQrsCtkHv/
	UmR8exyEP+YyQeikXHgM4Ycgb9dB7HGAALGvax3GUaF+iiP+mzdR3uguNzBx2XMEK0KrLUDEhwi
	YjxEabnYqGwVl84AoKS0glP28s8oL0qN4/64gRZEm3Yek7AG6G9vmGNOyYw2rJA7prDPir6zNqM
	RIPM2Rp7iYOKvasei35q+UvcjEj9eNCGs/Wzxw8ilWXitm1huhY57yWVUP93wKSdOm73bmaXtvo
	Bpace1nJXS4xXwWb+cEcvdIIiMW2vMX0yPsYGFOQMylBLIhtNFJSVn2uOCSUQNfbHYsXg6q5X2n
	87dVXw1uXfjM5RTgdqvw==
X-Google-Smtp-Source: AGHT+IG/0CMavtTslZpbI5j2xnemhkhT+LYz90KZrJXqfzvE0jdXgerJdltJj03OeHUtFpEK624zOg==
X-Received: by 2002:a05:600c:4506:b0:477:9392:8557 with SMTP id 5b1f17b1804b1-47d1957711fmr143504525e9.18.1766503765317;
        Tue, 23 Dec 2025 07:29:25 -0800 (PST)
Received: from google.com ([37.228.206.31])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d193cbc0bsm248425045e9.11.2025.12.23.07.29.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 07:29:24 -0800 (PST)
Date: Tue, 23 Dec 2025 15:29:22 +0000
From: Fabio Baltieri <fabiobaltieri@chromium.org>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Benson Leung <bleung@chromium.org>,
	Guenter Roeck <groeck@chromium.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>, Simon Glass <sjg@chromium.org>,
	linux-input@vger.kernel.org, devicetree@vger.kernel.org,
	chrome-platform@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 3/3] dt-bindings: google,cros-ec-keyb: add fn-key and
 f-keymap props
Message-ID: <aUq1UuFHE9B9zHIz@google.com>
References: <20251209154706.529784-1-fabiobaltieri@chromium.org>
 <20251209154706.529784-4-fabiobaltieri@chromium.org>
 <20251209192243.GA963693-robh@kernel.org>
 <aTm1PVLrS7Ra0OTF@google.com>
 <2gd2npolfpo5jruwraamwpn3wurm7w447jnwsbcfonmhos2owf@ejrqiz3qdxj4>
 <aUFPKni-iFkxQQGu@google.com>
 <nx4lo6qfyfoxha7poyipa2hjc2vogp6twxbcap2555aj4y56gg@ddhkfh7eifvm>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <nx4lo6qfyfoxha7poyipa2hjc2vogp6twxbcap2555aj4y56gg@ddhkfh7eifvm>

On Wed, Dec 17, 2025 at 10:05:45AM -0800, Dmitry Torokhov wrote:
> > Had a look at the tegra-kbc driver as you suggested, first thing it
> > seems like the fn-key functionality there is dead code since 2013,
> > `use_fn_map` could only be enabled with platform data, not OF, and that
> > has been removed in 3a495aeada2b, as it stands kbc->use_fn_map can only
> > be false. I could send a patch to rip off that code if you want me to,
> > clearly it hasn't been used in a while (unless I'm missing something).
> 
> I guess you are right, we shoudl clean that up. We have another newer
> driver that uses the same approach:
> 
> drivers/input/keyboard/pinephone-keyboard.c

Alright I'll look into it and rework a v2 with the extended map, checked
the code again and I see your arguments, sounds reasonable.

Cheers,
Fabio

-- 
Fabio Baltieri

