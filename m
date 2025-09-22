Return-Path: <devicetree+bounces-220253-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DC18B93857
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 00:51:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2616F161D6D
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 22:51:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07DE2221F00;
	Mon, 22 Sep 2025 22:51:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ISu5aJij"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7684F8F49
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 22:51:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758581490; cv=none; b=arfu5mx22krlDW7ij8NbaeNDDx2IDGzdJ2Qall7pxWl65QiHhAvqezboH+nRFga96oTrW3k34y7lIm7N4An/dvu1X3gQl8kUhX2lbIbhUlTXWENthagbB0qPXQ08/JjRDIlNkW82EjjToVwcfqM3gTgNvKqfLX/XDmsYMwC4NZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758581490; c=relaxed/simple;
	bh=2g8jlSV13FfZ6qkhuqv9628GiY9q1dcdi6cGOpwivkc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RwlDGFkA+NSN9sxo+2mB2rWxCNewJu7KhJ5Zc2xgpZsti9SkQMqFykCj8xaf2Z8pqXTI3qhwGhH5x3/XGtZ3BNGhRODZ52MI+8j0snLPnUbfRZOT4PvgUzd66e9p4K9xmPCViGq15plHDHKO2lYQff+ftCJ39FCThUHBtr71Vl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=google.com; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ISu5aJij; arc=none smtp.client-ip=209.85.160.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f176.google.com with SMTP id d75a77b69052e-4b78657a35aso192051cf.0
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 15:51:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1758581488; x=1759186288; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rsFqUYLoEXoD5J7mOVBIukerFwBJh/oFQEJX3GcFNXs=;
        b=ISu5aJijxQd/gRp4zpvPRDLffWmLbD+naeEQHBr7kNM+XEun7bxbeTWrEUmWmFk4qS
         b75dL8Roxrh8Qy4JGeCmNocMMU/iwYFxCliWnx+mmYot/CeouahsHZH1PzIz8T/MnY3I
         SMvKgT0hr4cSvHY5vYG9syqWNQhnBy9hnl7Tk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758581488; x=1759186288;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rsFqUYLoEXoD5J7mOVBIukerFwBJh/oFQEJX3GcFNXs=;
        b=Tnc9F81GPBcJd8wE04ylSf9PyaF6dDCvRepTvkQk9+rgfQeu9PPTZYZUwW3/k8sOE8
         eXeH2ihBLrmUHxq6qXELZnclcm7585PYtwiz8IQHzXHKO60yuzWKsuojVPHUCdeN/woI
         7Y3GmrF/o4LNnMF6zHb4q9h3izOZX+MQeCxkfsEOr8zdI6OPQTrIzr1ojrvejI4pyt0N
         oi7h+pHUIGYoeVzSyTF/7WjjmgdJqG9GwKM5XmdbnPPiRRZwPIZ4yVORfaT7ec7yKt1+
         yagzmlHFgHtOUXtki2/Ieyfy1JbLzlkiAOziikcOf0ykrlUYlk6QZDx+Zlljx0u7d4yd
         0btw==
X-Forwarded-Encrypted: i=1; AJvYcCWlhc6pAPFBXRrE9VfWwzMuXW9DO3xeoHczEVHnAjPQYFoZU991CGxDnLM998ubiuJom5tekEdtHAUM@vger.kernel.org
X-Gm-Message-State: AOJu0YxKRXGF079OvSRSs67T7haZajKiu5FyY7jl1upa487kq1IWWDNs
	9UQ/m7pPeBLFLhbuaQeLihQwh9jO98j5bWhAgYLwIBncbAXJ7anN650ShSpK9R5QBuxWAbP4a3V
	XjhTseyeko2IxrUbYugX5cf6RPsM9IfZfhvF8g4Em
X-Gm-Gg: ASbGncvyyQbA1akbqv8vNExuzg0+kCIEShH4nvFhOUvThOCuMm5nQfQW7JbI5fM9UcW
	tF9zB/zGG+vopZ59tinH/J84/laL3DPH7bilMJbHQsV88rPpQnnE+jAUHsf3tL81nyQ3S03lzSI
	+pHspYYJ5W9gw/fXWby8rIeRC18VQ4HiDQeTcOSO1p9rxhKqoslso5WTIzeF5ixWKAAeGlPtUzb
	ZNb
X-Google-Smtp-Source: AGHT+IG18k04i6yd+3w9+a4LF8r3bj/68nzAYS3FJRGyOwOiHFPA+oaENwNeQlDYdFKOGHnIPYNxxRKsOoNLzUX4L7k=
X-Received: by 2002:ac8:5f89:0:b0:4b7:9b06:ca9f with SMTP id
 d75a77b69052e-4d34fd300e7mr1230171cf.2.1758581487970; Mon, 22 Sep 2025
 15:51:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250922-b4-ddr-bindings-v7-0-b3dd20e54db6@gmail.com> <20250922-b4-ddr-bindings-v7-2-b3dd20e54db6@gmail.com>
In-Reply-To: <20250922-b4-ddr-bindings-v7-2-b3dd20e54db6@gmail.com>
From: Julius Werner <jwerner@chromium.org>
Date: Mon, 22 Sep 2025 15:51:15 -0700
X-Gm-Features: AS18NWBZljaWhB_nmi4xcbYeOCnxdVtC_xiK4EoqJwWbbbZzXiw46pHjGIXlGuI
Message-ID: <CAODwPW9Js2AjSzQrvRFMK3xHXjbb6qV2bGEj3GhYWpDELniyCQ@mail.gmail.com>
Subject: Re: [PATCH v7 2/7] dt-bindings: memory: introduce DDR4
To: =?UTF-8?Q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Julius Werner <jwerner@chromium.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, 
	=?UTF-8?Q?Cl=C3=A9ment_Le_Goffic?= <clement.legoffic@foss.st.com>
Content-Type: text/plain; charset="UTF-8"

> +      - pattern: "^ddr4-[0-9a-f]{4},[a-z]{1,10},[0-9a-f]{2}$"

I don't really understand why there can only be up to 10 characters in
the module part number. I also don't understand why you wrote "20
bytes (10 chars)" for this in the previous patch. Are you assuming
that module part numbers are UTF16LE? According to my reading of the
spec, it sounds like they're supposed to be plain ASCII, i.e. 20 bytes
should be able to contain up to 20 chars.

