Return-Path: <devicetree+bounces-195951-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 82CF7B03AA3
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 11:18:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7F1D73A566A
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 09:17:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E7EB240611;
	Mon, 14 Jul 2025 09:16:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=thegoodpenguin-co-uk.20230601.gappssmtp.com header.i=@thegoodpenguin-co-uk.20230601.gappssmtp.com header.b="lvdeWwVj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE510246797
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 09:16:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752484603; cv=none; b=cmrimwNeLehF5jkBPveKirv4Vx6+LpeiDLM/YojTgrsFSthA/Ti4Vjh84noSajy66ucDJfegl9u9nKcahShLiLMuUtPc4FE9Nyc2g6GTuuAHqiGhuCV3J/RiX5FKIWWLlMLPxIHDFPqz8Mvx9o+2FQkAQr7N4ObLs0tz3R6oGfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752484603; c=relaxed/simple;
	bh=nG2jwbcLk7SXQKXcTmNSqdZ+/DC2xEkEzu3JnMvQfYw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KAT/+1spIOuZyIWna6fJ3CXlDRXaGjIgV2x6ojks8yPmln6efs7UTux8OZRIewlppxRyh/jZJxFdqaB16KQ4EpPuhGWr+LzcAgTyl62jtjqqvIBAir+qouTZwOglFokgfVIlvNY4WCdmQavB1r4QFoGsYCC7mwfk1smlqdyb4Ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thegoodpenguin.co.uk; spf=pass smtp.mailfrom=thegoodpenguin.co.uk; dkim=pass (2048-bit key) header.d=thegoodpenguin-co-uk.20230601.gappssmtp.com header.i=@thegoodpenguin-co-uk.20230601.gappssmtp.com header.b=lvdeWwVj; arc=none smtp.client-ip=209.85.128.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thegoodpenguin.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thegoodpenguin.co.uk
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-711a3dda147so42007127b3.2
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 02:16:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thegoodpenguin-co-uk.20230601.gappssmtp.com; s=20230601; t=1752484601; x=1753089401; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=nG2jwbcLk7SXQKXcTmNSqdZ+/DC2xEkEzu3JnMvQfYw=;
        b=lvdeWwVjKR1Pf7nmoNWj3Dn90ESTbhWvKog7RDq9VtpFOsTClHn5MejmUsdBFqCTyU
         PApnZGWdkWbnOGsMx+VnXgXd8Azc6ijPCAiePwHefBCwVIEE7Uq0jkRJxqrdh11MiT8N
         yk382KQjVGqdCLWE0oZoWBmmzd4+LpDkuHZKIK2nrM0jswMxhGnmqqKXGsoc21iP3oer
         Bw/io/VZjAPsOmOYtgASop8OfKVBsONPS+v4Ltlxp/0llxov1WwmK5eSppqwUU51S0s7
         yYEtgjseZaAFmtUsN6oHWkNfiafLKn18F1RAg60G2mWQxEcAbSYruHyj+acEVNyngwxz
         XlTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752484601; x=1753089401;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nG2jwbcLk7SXQKXcTmNSqdZ+/DC2xEkEzu3JnMvQfYw=;
        b=vBzgxvzSHbIYFFEQrwJuykVlM8hznjSmRLAAF0Z9QnyQKqskKxk7d7s1kJLXsC9UNY
         mww8T0lUeBQQ7dBjhtnyqfInk0RZKEL9rWkIcWIlXrEw1JSnOWaqefRV259BJ4crWFBw
         liq98y2xIYdoknhCWpHL9qrWgckl4yZm9vwWuZs1qpTcqZKmgUh1B3jWTQeuaQqVhTlR
         TEEq8bNFqntQ+G/KCzsh2QJLYw2ctOCKVxA5aJuOirOBC8gxypAu01F1jkyt1Q3aT05p
         GItoqDU5xRcgZ0aD+rcHdzXj+tFH1BglHGAdt99D2ZXOE0lR0Qp4tXQN8XFrxU7S8Ge+
         /bfw==
X-Forwarded-Encrypted: i=1; AJvYcCVo91kk+0sPyRy+jVcYLdAi3b/aT0tuq+X8B5Tcr59fjmxqm8SUuTuUcBim3fusguukNJixQaEo1qwI@vger.kernel.org
X-Gm-Message-State: AOJu0YzcFe9APHaZjV9S/iTceJhcZ1dzEYAELBUAu4YNu3kcCgyjtkuu
	Wx8gIrXEYyE3et7zl3QP1I4M0QH827EMfzHucZti+Rons7tDf5WTb8iIkMYAi/3N3XCS2hfR2L+
	MlPwaa3veLGIQxBZoUoTUaqbNEqoaS13mgfflp606CQ==
X-Gm-Gg: ASbGncvrLKL9eHP+Cq5KynPl5V+vkhBvY3rp9eLPwyITt/dhecVloNhHoMTEubbsj44
	f39/ra/r17FaMx9S5fGZRcZG/cE373iUU77qs2+ew9I047rBMnLHnG9LsTVPpL6SiLOguX6V4si
	LjR13UK0AgLT+w8qk2qKm+SAmXG26UGeL4x5kELLVPkJ83ucAHhkB11WyOqIRgFTPLEqLsIn7uZ
	iHYe3jxm48WXIffBGHGaDWNsB7PfeXPFT1rBc651w==
X-Google-Smtp-Source: AGHT+IGGKVZL2gi3YF6dcBpVJCqmCTegzTcKiJ9fHmRZqlNYn7Bg2+Yd24bFWr79pSRo5RVmMmRv+MnI7JAH4UVwWPA=
X-Received: by 2002:a05:690c:ec6:b0:70d:fe09:9b18 with SMTP id
 00721157ae682-717d5c373a9mr204630517b3.2.1752484600812; Mon, 14 Jul 2025
 02:16:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250708-leds-is31fl3236a-v3-0-d68979b042dd@thegoodpenguin.co.uk>
 <20250708-leds-is31fl3236a-v3-2-d68979b042dd@thegoodpenguin.co.uk> <20250709-happy-gazelle-of-fascination-fe0fd4@krzk-bin>
In-Reply-To: <20250709-happy-gazelle-of-fascination-fe0fd4@krzk-bin>
From: Pawel Zalewski <pzalewski@thegoodpenguin.co.uk>
Date: Mon, 14 Jul 2025 10:16:29 +0100
X-Gm-Features: Ac12FXyAnSttrQTxfZ3hyjQUCceH_uU_FETUA29_qdO6yKKW6bWWhuKLl-Sbr54
Message-ID: <CAA6zWZKRA2Qn3ajN9f9o_oBTZAgrx22gP28A5CHgx=+0jFrOKg@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] dt-bindings: leds: is31fl32xx: convert the binding
 to yaml
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-leds@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Pavel Machek <pavel@ucw.cz>, devicetree@vger.kernel.org, 
	Lucca Fachinetti <luccafachinetti@gmail.com>
Content-Type: text/plain; charset="UTF-8"

> Driver as Linux driver or LED driver? If the first, then drop.
LED driver, might not be obvious, could change to controller,
however the datasheet refers to the device "LED driver".

> These should be people interested in this hardware, not subsystem
> maintainers.

I will let maintainers decide who should be included here perhaps ?

> Keep consistent quotes, either " or '. You made different choice for the
> same properties even...

Copied over from original poster, have not spotted that before, thanks.

> Pattern does not match entirely the reg constraints. 36 is 0x24.

Pattern allows for one or more hexadecimal values starting from 1,
so the second number should start from zero is the second error here.

Thanks !

