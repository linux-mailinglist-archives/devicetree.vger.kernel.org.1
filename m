Return-Path: <devicetree+bounces-143723-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B566A2B385
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 21:43:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 055A71888FF9
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 20:43:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 634D81D9A48;
	Thu,  6 Feb 2025 20:43:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="VpdvU9Qi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7319A1D90D9
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 20:43:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738874627; cv=none; b=gEQGicpW8Phof3OrGdVuXmAS3Bb42CVFWWHKcv9fMNYUgGJC1sjXc8VqX+N5PHt4VW2p41i+5T0czF6VLG4461i5SS3dh5Hm4fzOdu0i+QasUeODTgsWV3qWX0nLzNFiTW6wfK8UvOJEwWb2yXheC9WX4ehC8c41rCne/jtoNag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738874627; c=relaxed/simple;
	bh=ghMXVxcLYuC3amakcAM+2RrFtMQq4/vF5UL/FgqkJjk=;
	h=MIME-Version:In-Reply-To:References:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=g3AqjI36P4TYAjH876fh/J2ubUpLMizJy5tcr0uKmJSoY8WckGVqdJVTJv5YKSLML9aC4LnTqObu+DOIQxaPutNFvnXAvS9cUwE6TjVCglk4djwAooDB6nifbEjBwxP8sJKM4HPbIVa48NXikgrb6aQ2uW82fs0u0eP2dYvUndA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=VpdvU9Qi; arc=none smtp.client-ip=209.85.222.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qk1-f178.google.com with SMTP id af79cd13be357-7b6f53c12adso112616185a.1
        for <devicetree@vger.kernel.org>; Thu, 06 Feb 2025 12:43:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1738874623; x=1739479423; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ghMXVxcLYuC3amakcAM+2RrFtMQq4/vF5UL/FgqkJjk=;
        b=VpdvU9Qi4JF1wHvut91sAo2uH9unLgmKOBEfJRN8Kk4VvYj+U6zot43hjvvgfT1tJW
         9CQ87LtUodSUD25bSJOLppkguLXy85C6GEo84/grB4ZOdi3BOb9jN5Sxf9JAlOJsbhy1
         EPxam1tWwLJ2VvbT4EIQmcTXugM4yabxL6G+k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738874623; x=1739479423;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ghMXVxcLYuC3amakcAM+2RrFtMQq4/vF5UL/FgqkJjk=;
        b=QEs5Y7QLjxOL2CNc2GEkWjlJwuCZPr7tvRtnyHBpQuyPG52IBtVAFralTBjmD95LDl
         xoPD1v9GRidmk5300vgxm2eI++b6pdjCTpIdlE/M20PKNBFDFSScAUJjjGFr9lxyPCHp
         Bxqy2Qq3lG9j5LlNIMzcbv+3Lc3wiDWdmgxIyilEVZY9A6M7pj1xKBMH6iascQWhx3U2
         rG2cpxTiv10WWz8SzptOkbvFCn0ykqegxSRu8t/sJ1hVyhsThjQFu24QROiB8J9iQBgu
         tULcjAU5qY6tAHoorcD+X6NwFFfgMtn95brAj9TGqXl5+u/WR22Na8jUe8FJiqB3C8zl
         uIBw==
X-Forwarded-Encrypted: i=1; AJvYcCVoR/x835/vP4q0DMMcQVDeHp6d1m9vatt03s/CDQ8oK2wp2aSbr+yGQn33LMe42bMkTW0CgBk558vQ@vger.kernel.org
X-Gm-Message-State: AOJu0YwzfKLuA9pQEkt+u5fLus4Z6ShQeIA7lvrA51NzjmOHS9Y6PfIa
	fa2BgMCjX2ygPB+1rKaktqR49zxqFLWqHGpl+2XD8aWl/2XW+JwZJCnf7Wc+ZZ3XGA4qZ+wUN53
	P+jT6HktGotFkrdFX6B/IecUowSbXxzdKgi9P
X-Gm-Gg: ASbGnctd6W6rqnmSsGRpJyBsBInB1LFBYVrRdsRMB5VSOd9GGBc7C7WOQFxF/Tj9vaG
	NfPKQ9GJ1FPGyI53VwURqfVMLGKjrFn94w8tGw3R1l1YHN1vIwouzLkhMSu0zKwbhPLUQnSVNOn
	MaEq03qbw949RIgBypPeZ9KMdz
X-Google-Smtp-Source: AGHT+IGIi7KHGakyYrhAS6Nm6sSDzZzym1yivy6eswLvWosFcy/m0lzamEPvxM2Mp6Z9Nh8JG+b4sn+mv4BnqJ62Jhc=
X-Received: by 2002:a05:620a:f15:b0:7b6:dc74:829f with SMTP id
 af79cd13be357-7c047ba4996mr111088585a.7.1738874623312; Thu, 06 Feb 2025
 12:43:43 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 6 Feb 2025 12:43:42 -0800
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 6 Feb 2025 12:43:42 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <74527323-31ff-4ed0-b19f-e535f26abf2b@oss.qualcomm.com>
References: <20250205233016.1600517-1-swboyd@chromium.org> <20250205233016.1600517-2-swboyd@chromium.org>
 <74527323-31ff-4ed0-b19f-e535f26abf2b@oss.qualcomm.com>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.12.dev1+gaa8c22fdeedb
Date: Thu, 6 Feb 2025 12:43:42 -0800
X-Gm-Features: AWEUYZk9G69zlKfea1G0cVv2Pso0fG2dCEq5z01lgx0Eou9Uj4laycjO7Oq51wY
Message-ID: <CAE-0n50DXcAXQMaLtsamvxHjUrkJVBz42G6gtgKgW9Rh=qd31Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: chrome: Add binding for ChromeOS Pogo
 pin connector
To: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
	Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	patches@lists.linux.dev, cros-qcom-dts-watchers@chromium.org, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Benson Leung <bleung@chromium.org>, devicetree@vger.kernel.org, 
	chrome-platform@lists.linux.dev, Pin-yen Lin <treapking@chromium.org>
Content-Type: text/plain; charset="UTF-8"

Quoting Konrad Dybcio (2025-02-06 03:30:50)
> On 6.02.2025 12:30 AM, Stephen Boyd wrote:
> > diff --git a/Documentation/devicetree/bindings/chrome/google,pogo-pin-connector.yaml b/Documentation/devicetree/bindings/chrome/google,pogo-pin-connector.yaml
> > new file mode 100644
> > index 000000000000..622e171b6b08
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/chrome/google,pogo-pin-connector.yaml
> > @@ -0,0 +1,68 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/chrome/google,pogo-pin-connector.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Google Pogo Pin Connector
>
> This looks like a very generic piece of hw.. many boards (esp. convertibles)
> do the same thing, with 4 or 5 pins on the bottom of the device.

Yes, connectors are basically just pins :-)

>
> But of course hw manufacturers being hw manufacturers, many different kinds
> of signals go through such connectors - if it's not USB then it's perhaps
> I2C or some variation thereof

Right, and I doubt they call them "pogo".

>
> IMO, we could perhaps add this to usb-connector.yaml as "usb-custom-connector"
> or so

Do you have a device that could use such a generic binding? I can't
really design something in the abstract without two or more concrete use
cases. Coming up with something generic looks like a quagmire, because
as you say the signals going through the pins could be anything: i2c,
1-wire, etc.

At least this is a vendor prefixed binding, meaning a generic binding
could supersede this one later. The risk of accepting this binding is
low because it can be replaced by a more generic one at a later date.

I will move the file to usb/ so that it is more likely to be seen, but
I'm hesitant to sign up to work on any sort of generic binding for USB2
plus an extra pin used for who knows what.

