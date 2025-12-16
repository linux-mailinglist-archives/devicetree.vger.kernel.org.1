Return-Path: <devicetree+bounces-246815-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A4352CC053A
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 01:17:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 819DA301AB0A
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 00:17:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A3582192E4;
	Tue, 16 Dec 2025 00:17:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OjAYzX4o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184C71EEA55
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 00:17:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765844257; cv=none; b=LDlvApx3mNHq5dO+j1VOslSHWYsEQ47jp1MyhOfOGDvrNUaxoe8smai4Eo+dGjLQRTYdyL/uYalR6PDL/cXDxA5J/wPt2TOBhx4MBM+nrM2IMUFsij2KHdKYGhpeZeB1/WE9OEasQlJdauBWef1YUQgX+9iBQ5c270AutNY+ybs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765844257; c=relaxed/simple;
	bh=mTmj1jdfHOdIMYPAHU+dvpw7n+E9lZhdCrAyMgKDFso=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rxHwhAq/n8FmM+Xey2y29X8P8B1BCI412ZI7/6HyHJKhG+TFNol4zu0jEywgX131SKQKJLbSUWn9S9r3BIlgna3L9rNh8hxSo4djwFpx0WUEKOnq11uVRW9hNNVxMAPsA7mZtuTs8y90JfSnLbdawFnB9YtjM4HVaM9cza9FXS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OjAYzX4o; arc=none smtp.client-ip=209.85.219.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-88a2e3bd3cdso24442986d6.0
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 16:17:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765844255; x=1766449055; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZAni9vw9bM4a0/vG4k1qlAtVBjYsYT+icrQF7zoNQoQ=;
        b=OjAYzX4oDv01Lx4jm+xGqJgDMnj4c+G/C6yKTQ1u6N3/+VIYrf6qnlK25/X+A/9vlY
         FHj4kd8qP8Q1POz6akc7qC9+Xot6IknbAVgrZapAgsV1sv9HmSooaLAVSwVQBdF4klXz
         T+8yKzmqM6Zxyhv00R62ochXFSDbG3YB1A11l18SRfORGzMi5UuK7RvgXdk/S9h+S8M/
         YCQfFWYvUgmzykuKfXJ6IYNDWhNmy27ihVgJ4QdIAWxh7OY5VihgivD41iM+9IL/skOC
         YUfbhorzJKB97HU6GQ3e3CT3+fALYieAKqOHiNLfm9TTJYCd7uDeHFemFdCMcliaM7+/
         xyKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765844255; x=1766449055;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZAni9vw9bM4a0/vG4k1qlAtVBjYsYT+icrQF7zoNQoQ=;
        b=BN8UsZK8WS2qWe5ur3Cb9YRBN6neRY6JkodtBYWVNeYH15WyxHmLtha8glLD88zUj8
         u97Nd9IkTJi2Co4RNy6o84aBV5NqP3o9r6VMXDj1QMZ8G72Kf9AxZKjYNj9xsCR7dSbw
         dNOqSDGkrAL7CiU0eh3inh1gFowENZIuHcljRyzUjlhfqw9At64Y3uA4pBmoHMG3ndk8
         Q8UaMpbz/zbGOH6WxYCkGDZTETfMattUdzUzchZqdC9iENyiB5G+BRcTZ3cGStBmc2Vb
         bggEz/IswL0NvV1L18ui0RsNwgHbcG8If4iKTwJ0vI6HQWTlcxAgI1lPSfeI8MdMNhrK
         K3Mw==
X-Forwarded-Encrypted: i=1; AJvYcCWiB0xpZN0sLGh9ba7QHSeGjBsNXhHmc9fy1dvMAeDcFuXnVmCgZJR8SSCkMbD4Te/kYw7/vJXRPt+U@vger.kernel.org
X-Gm-Message-State: AOJu0YwLTX4v1s0pjdAkOlZ3gcM9K4E75lNDeynrdcidOyy5LMC5g77P
	4ZDzroOpmZlXmlpOxGfmwQ/zdow2xD/gAOE7S/LLVpov1dQ16Nx2LLGk
X-Gm-Gg: AY/fxX7m8L503eaEASYZ6Pj4DiuFuzNWJhqkggWZ71rantXoHE8Dl9u7tIirBuVVCa2
	FLJ7CO9lfybXlah8Px2Y3lO2zOowN/KsXmdp9guxBxbcX9ZEuBCvAt2/Prs5EM7oajc5Y/1gex0
	C4ulrfKSFTXG5UqkZmCaZ3hZ+OubQq0v7FRbCiCejsPOen3uoJyvUIHNbixs2kJH2LTfZttQc4I
	fdY4knjUrq3kC0YU0VTs3zP3WdA2fvlymX2xByzeGanluvLA9JSJ7cgbjL9ZjDjSuIF5FTAOQTr
	UrYjjhp9vFueP8oLCqG8aOSh7DNhbbtNxqLVPuQaSdJlH23RKUee8RWFh73ozezkLiDfW34DScl
	kljfScYX3jbs36+1RqmRqdtt6A6gUBGpnjzSSkf/UeZAvILVRa+EeWmCjNMWNNfAf+5AGXLknDY
	648IMg96JhSlNqrE3rx5eseBedujReTVZYQgnMyqLtDhgGssL9aQk/ec02Q0s5t6VJ/lB2NM/BV
	gA=
X-Google-Smtp-Source: AGHT+IFWh2JLyJ2LTqt6Bp0sKXAXVL3or5O0tmtQEfLdoCiSv8wpxmTuGniSqmn12VribN+HuF5xGw==
X-Received: by 2002:a05:6214:16d1:b0:888:804f:3098 with SMTP id 6a1803df08f44-888804f30acmr156982856d6.3.1765844254932;
        Mon, 15 Dec 2025 16:17:34 -0800 (PST)
Received: from localhost (bras-base-toroon21-grc-75-184-144-58-243.dsl.bell.ca. [184.144.58.243])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88993b41f86sm62937096d6.3.2025.12.15.16.17.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 16:17:34 -0800 (PST)
Date: Mon, 15 Dec 2025 19:18:00 -0500
From: Richard Acayan <mailingradian@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Tianshu Qiu <tian.shu.qiu@intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-media@vger.kernel.org,
	Robert Mader <robert.mader@collabora.com>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Subject: Re: [PATCH v4 1/5] dt-bindings: media: i2c: Add Sony IMX355
Message-ID: <aUClOOVd7jxBg0yA@rdacayan>
References: <20251211014846.16602-1-mailingradian@gmail.com>
 <20251211014846.16602-2-mailingradian@gmail.com>
 <fedeaca3-5549-4d57-8f13-f0ac58d1e4d0@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fedeaca3-5549-4d57-8f13-f0ac58d1e4d0@kernel.org>

On Thu, Dec 11, 2025 at 06:05:28AM +0100, Krzysztof Kozlowski wrote:
> On 11/12/2025 02:48, Richard Acayan wrote:
> co> +
> > +  port:
> > +    $ref: /schemas/graph.yaml#/$defs/port-base
> > +    additionalProperties: false
> > +
> > +    properties:
> > +      endpoint:
> > +        $ref: /schemas/media/video-interfaces.yaml
> > +        unevaluatedProperties: false
> > +
> > +        data-lanes:
> > +          items:
> > +            - const: 0
> > +            - const: 1
> > +            - const: 2
> > +            - const: 3
> 
> Obviously untested code but another thought: why do you need data-lanes
> if they are fixed? They are implied by the compatible.

Oh, I just added it when mirroring the other endpoint. It can be removed
from dt-bindings and DTS.

