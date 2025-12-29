Return-Path: <devicetree+bounces-250251-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 2602BCE73EC
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 16:46:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9C04D300101D
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 15:46:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DD2432AAC5;
	Mon, 29 Dec 2025 15:39:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="H73NCP0E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B5CA2C15A3
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 15:39:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767022774; cv=none; b=jn3OKwhN7dkSp6rDDavOx2fO7rvCZYogPqG1c3Qbrsh2/scgRi/XR5XjymqKzX+jw/LR11cGXJ1y3aMiIBa5ZR5lnzBc+btuRTypn5z14XMNKa5/wHJBlJa66YvyssgJcmzgh5fK+Q0QIZDJpHfFm7MQTwqLR/esd5xvlhq+tyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767022774; c=relaxed/simple;
	bh=RcDGedmXwSRUgRLTsRrQXPhrzcqVDmty+VallOtpd/8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=U/f/uDmi5pSrVYtNZcx321FGpn2r2tLgxIyXIPBPlGNVfOfDnGa3bjzvsovxXhs+YhhzjtzW8JDgUOMzB8en9YviRNZ0d938hGWIZaqDMqNGntdoun1nkXoLVjA/xRIAzGOqpUZaZmw/ucSC8+rZkQDx9BI2DAu0RFV7fKpCV4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=H73NCP0E; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-47aa03d3326so58511025e9.3
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 07:39:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1767022771; x=1767627571; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=SGYWl17fxV3/QSiEObh01QR9aeCd8OVP6SgH7H57To8=;
        b=H73NCP0E4n/FY1Kx285YMugsoVY8U/mFz5cVF0U06c7i85Nw/xDnpx2Vx/16uMVev+
         QvLdBGUg6Aap+ry57wq95W7xVFXS2at+0gXp0QgI7iF8CEq8BJitlxIEMY7ZMaUHiZYj
         hsvFpRWFn5eqKqKgMOWejeQ0tPVSrIHhnvZL4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767022771; x=1767627571;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SGYWl17fxV3/QSiEObh01QR9aeCd8OVP6SgH7H57To8=;
        b=pxrZ+jquXZ85VA/xxK4fRqzmFnkGNGrHjlXWKFIqlNWRETB5FGLlAlCaGgHBAQvLr1
         0YL24dlb4UyXvb5jnyHQX6eDrKho3s7g3WKj/y169Tz/zLK9C07st9+uv0hpeVHd4UYS
         0I0LFxPWBaHzNsTVQbX8rY2s+PENzXYs5WGkUHPZf17yYqgmO7ap+3RfePS9KF+bV7P1
         G4J667x+MqmbXAi6k7+ch5TtbV1MrVC6lCSYbWwL01XrDx/LAp6L+380dpTKp6jYAm0A
         /CoBKcR7mQEa8lG7TlbxlExUAa/tFdUAAi0KeEaOjRZFOmLLNSPueQPr1UefaoMgWXMA
         AbvA==
X-Forwarded-Encrypted: i=1; AJvYcCVa/wuyWDl1+l9Hcu2YWi7pP+IJ6bBLSF1HPAGgJ/vok30jJ08wievxdZ8W3deMKyH/X0XQTC3pRMNQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3ktwxUGHaMj+22BJpWSDHZHprDzOoyXE5nbvTy90dyvd1MCoE
	ZA6wBHUvgx+BW56/5YrEyZtkNgQfMFe2N5Y2glxGtMafGUeGHyu3WDA3ezSXUMk8VA==
X-Gm-Gg: AY/fxX7nXtFLv3S9jmYtY0J4fO4Anxxnhqs+pJcG80AjzJ3ZmBFvJuryk11vGnBUebo
	ndzGS0QXIA2CChv/OYIizyHXL/fx39gUeoRBwTklfFZCc5pEEsXudYuBGdvpfzVV2lTYj10I2+y
	Q0opKssozITh0DfWSeVl0UEgbSgO0bx8jKnidQncH5VNkkiYa/jFrQPOAe1RF1LMp7IhM3tIw8i
	SCc0SRRrwGIQrBPcb+iuhHA69uhLcnor9I9PwIXvMOoU9qeNoFOFnuMnJ0+gC//6hU7HKKbjNgx
	nAwizqOysT9IFNYbXTeomU546N6CNDb5mhOoEqFmu5qIKM4NVgEv+QcMoMumH52ohm0xyhcl1Pa
	05sXEQGHqvaKr7IvHaT1xjs4PhSvJy9ZDJZWiCoH+ow2yDUf4MFR8vqvTsmny5uLJJT2yl/NZvc
	njL7/OtzsZXHLrtAZ4sg==
X-Google-Smtp-Source: AGHT+IFl14WZKwhPmiisq47nhuqUJz7ve89LSx2Bze9QplnBFGeno8tXs3tel78LX13pZskSo/9nSA==
X-Received: by 2002:a05:600c:4f15:b0:477:b734:8c41 with SMTP id 5b1f17b1804b1-47d19538dfbmr400115935e9.1.1767022770807;
        Mon, 29 Dec 2025 07:39:30 -0800 (PST)
Received: from google.com ([37.228.206.31])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43277b0efefsm29752839f8f.25.2025.12.29.07.39.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 07:39:30 -0800 (PST)
Date: Mon, 29 Dec 2025 15:39:28 +0000
From: Fabio Baltieri <fabiobaltieri@chromium.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Benson Leung <bleung@chromium.org>,
	Guenter Roeck <groeck@chromium.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>, Simon Glass <sjg@chromium.org>,
	linux-input@vger.kernel.org, devicetree@vger.kernel.org,
	chrome-platform@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] dt-bindings: google,cros-ec-keyb: add
 use-fn-overlay prop
Message-ID: <aVKgsGwb9Rqteekj@google.com>
References: <20251224152238.485415-1-fabiobaltieri@chromium.org>
 <20251224152238.485415-3-fabiobaltieri@chromium.org>
 <20251227-laughing-white-dalmatian-f9d98a@quoll>
 <aU__uxDmeUq20Mg3@google.com>
 <0c01fa63-670f-4c82-aa74-dc855cb12a78@kernel.org>
 <aVKDJhVuOz-V9tb2@google.com>
 <c539aa2a-e9be-40e7-9b75-1723bdaf0a39@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c539aa2a-e9be-40e7-9b75-1723bdaf0a39@kernel.org>

On Mon, Dec 29, 2025 at 03:59:44PM +0100, Krzysztof Kozlowski wrote:
> On 29/12/2025 14:33, Fabio Baltieri wrote:
> > On Mon, Dec 29, 2025 at 01:49:05PM +0100, Krzysztof Kozlowski wrote:
> >> On 27/12/2025 16:48, Fabio Baltieri wrote:
> >>> On Sat, Dec 27, 2025 at 01:44:26PM +0100, Krzysztof Kozlowski wrote:
> >>>>> diff --git a/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml b/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
> >>>>> index fefaaf46a240..437575cdf352 100644
> >>>>> --- a/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
> >>>>> +++ b/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
> >>>>> @@ -44,6 +44,14 @@ properties:
> >>>>>        where the lower 16 bits are reserved. This property is specified only
> >>>>>        when the keyboard has a custom design for the top row keys.
> >>>>>  
> >>>>> +  google,use-fn-overlay:
> >>>>> +    description: |
> >>>>> +      Use a function key overlay. This allows defining an extra set of codes
> >>>>
> >>>> What is a function key overlay? Overlays are DT term and therefore are
> >>>> not suitable for bindings.
> >>>
> >>> Ok, guess I can rename it to `use-fn-key` or `use-fn-layer`, open to
> >>> suggestions really.
> >>
> >> Use as Linux should use? Then it's software, so not suitable for DT.
> > 
> > Sorry I'm not sure how I understand the comment, this describes how the
> > driver handles a keyboard with Fn keys, the codes are defined in the DT
> 
> Exactly. The purpose of DT is not to describe how driver should handle
> anything.
> 
> See also DTS101 from this year's ELCE.

Sure so I guess this falls into the "describe the hardware feature"
category, so is the suggestion to rename it to something like
"has-fn-key"? That would be the hardware feature.

