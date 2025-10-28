Return-Path: <devicetree+bounces-232345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A73C16B8D
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 21:04:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9599C3BCCE5
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 20:04:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9531434CFA3;
	Tue, 28 Oct 2025 20:04:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="h+Bmfa28"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com [209.85.218.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E586425784E
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 20:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761681876; cv=none; b=NnhvdS8vQ0Hl3kVm0B7RJ9aOml+HNsvHRTk14UHhxqd3KVu16QNkk6cOeESqjGjawYGU1mDNUHzY6OKFwGVPrRjXNJNh2qWu9IouJksKy/rUW3nW+Q6SFOAsqHXnawszlTOuxYOrlyQpKKwqy+ygFVcYyqhljEJ+w1JyhWuBaEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761681876; c=relaxed/simple;
	bh=vAZZEnOdgS1AUmXqY5sOihJ3Tuxrzj0U95cUcgfeOcA=;
	h=Mime-Version:In-Reply-To:References:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rtrXjYbbVR3cEHEETljvJNZ48cRlagkgfbw0mo5oXLEWuPNTXEGY3I4lybhoxS4PY0J3BjehpcrYy2+gqqDbzmT7yY3bwkWnoe+1f6bikH/3tnZzBJGZeXhjBlA83Mj2wMmqIVKKRA+6LPK/8f6YX/p08JUgI9ZqgrsZgSO2eBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=h+Bmfa28; arc=none smtp.client-ip=209.85.218.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f68.google.com with SMTP id a640c23a62f3a-b6d78062424so1364744966b.1
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 13:04:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761681873; x=1762286673; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mvFLFLPPs3+yk89H/w8+G4zuqCvw2dmeY+SAI1xVWLk=;
        b=h+Bmfa28wluNF+d7Kf+t6tJwpSqE5nH7EkNHplmYQ1zYoThmPZVOJx3suHKs6YGabt
         uPWehLNob1TjEFzMU7qNBxTFN6VzLIW7GA37vRlPbLg4TguhQmy4dcjJf9bisg6xrLva
         7Pp/6D5crHfkhIhaAGr7KVnNBa6zT1/SGXrwokntaYYI+PnVR1AXu0Zop6HKoOjYX+4O
         magC5ehBbyGmY09SoAKF3VktSGDlii87T346pj/F6GTtaIYAf8TmA0Onz/jUAv1N02+w
         mP/3xLuF/kKMUeokIIPoCcU2koz/u4q3noHOXjwossFun6wqukpdtbWO6vTal3Sjy4f3
         OUCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761681873; x=1762286673;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mvFLFLPPs3+yk89H/w8+G4zuqCvw2dmeY+SAI1xVWLk=;
        b=aeIwDjklBbMGOl4gP/4LzKEMV02J4JKyzq/5fwgRzwJXFTggYC8ZfC5+venHogHtin
         BTJWyQBgV3zs21McZ4oF3WPGFgFdULvsFt3L817C94ZS7ZjU4rDuLj9/9rPTnQFf9KqZ
         1m33bMSg+lhF5Hqq+H+53eKxqhG44NlO6txpkbXiac87DJKqjONv+EySVy6BWGg7vo8M
         b6MNdTid/NDpY2xUU9WD9IByfdvNo1eVUSIhIKGqr9X/VHUwSgEIsJkzE8wq//Xr79sh
         gLNpoYIfftH1A6cYBSCa9bkUPFvD7oCi+zEn9qXbOS5l9XfCh/4gphA0Xzz+V9+hN4K2
         fDQg==
X-Forwarded-Encrypted: i=1; AJvYcCVm2u9DlvacqMq+HGdPjRURWzOw1u90Lpocd8ZJS6r5o/Dddo9SBSqnTYeKTmG5CQzitOMIyx4Zg/xg@vger.kernel.org
X-Gm-Message-State: AOJu0YwfJOSEwNfMdgFwsZW2N13vMWWMWxLuRJw3AOGZ2z0JEbJAaPsy
	HYcdhwF+bthKXdt8qHYuYtg+2LQAc0ZcycOK4ISSck5hjbwcAc6Dx5+9ZpMQdO6eSAATxwiP/cQ
	5PZFu6iK83eNV5XSsi/Z0QHiWMH0gGvo=
X-Gm-Gg: ASbGncvbYqXqkCtYcasoXaxPeS3Sc+erujA1ZCA8ftUqIzt2yUC7+ddPIYEfFeoCWmy
	Ul668hhTRBZSUO+0Cj34xKHfvMe+B0WbEQS85vkda+CR6dlwPyfrQ4SbkK7B4TMmFyQXd/kXAUP
	jzCyL/ycuixdKel419cLdabgi56UqIOzOC52f/IFGdfRjrOcNpuxCA1bfpgSoK4juVxwR4Z9hAh
	jZ/lZKZt9JvCbJ+8EdA2t3fKFTZuKLfqxGFvSBT7QCehRi8RVMOq174g6M=
X-Google-Smtp-Source: AGHT+IFDjK8MLECJT0dENFGiL0Jo9FVPnXuxQmfyQEo4KDojw6waYKY+p+k6inRp9kz678PqRBf337s8mwUojDmyf/Q=
X-Received: by 2002:a17:907:3d8c:b0:b6d:75eb:fe67 with SMTP id
 a640c23a62f3a-b703d59b4demr22265066b.61.1761681873248; Tue, 28 Oct 2025
 13:04:33 -0700 (PDT)
Received: from 724652696919 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 28 Oct 2025 13:04:32 -0700
Received: from 724652696919 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 28 Oct 2025 13:04:31 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
In-Reply-To: <20251028-semicolon-audacity-dd5bdd418207@spud>
References: <20251028-semicolon-audacity-dd5bdd418207@spud>
From: Coia Prant <coiaprant@gmail.com>
Date: Tue, 28 Oct 2025 13:04:32 -0700
X-Gm-Features: AWmQ_blF2frbmtiB74GgTBUwzGzFsZ-ptZ4Fky8q-UuBPD1Lp75A76H2Sef8qTk
Message-ID: <CALj3r0hWzH+pmkbJe7DdqEzwqcpSQdkfPFtv3S7m-H8gZp0A6w@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: vendor-prefixes: Add NineTripod
To: Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Dragan Simic <dsimic@manjaro.org>, 
	Jonas Karlman <jonas@kwiboo.se>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

There won't be any problems at the moment.

Just out of habit (because when writing code, variable names cannot
begin with a number)
There may be some misimplemented parsers that cannot do this.

As a practical matter, the branch of openwrt has added support for
this board in advance, and openwrt uses the DTS name to initialize
some default settings such as LEDs and bridge

I'm not sure if he will affect the version that has been released.
But maybe it's not a big problem.

If you feel that there is no problem, I can send a new set of patches
to fix this problem.

Thanks

2025-10-28 19:46 (GMT+00:00), Conor Dooley <conor@kernel.org> said:
> On Tue, Oct 28, 2025 at 12:38:10PM -0700, Coia Prant wrote:
> At first, it was to avoid problems with the beginning of numbers.
> What problems does starting with a number produce?
> Given that it is already used by downstream projects, we have retained
> this to ensure that users can seamlessly migrate to the mainline
> version.
> What's the actual impact of changing it from "nine" to "9" for
> downstream users? This is a board vendor, probably nothing is even
> interacting with the board-level compatible at all programmatically?
> Please don't top post.
> Thanks.
>
> 2025-10-28 19:35 (GMT+00:00), Conor Dooley  said:
> On Sun, Oct 26, 2025 at 10:36:44PM +0800, Coia Prant wrote:
> Add NineTripod to the vendor prefixes.
>
> Signed-off-by: Coia Prant
> ---
> Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
> 1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index f1d188200..37687737e 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -1124,6 +1124,8 @@ patternProperties:
> description: National Instruments
> "^nicera,.*":
> description: Nippon Ceramic Co., Ltd.
> +  "^ninetripod,.*":
> Why ninetripod instead of 9tripod? That's what the company uses and in
> the marketing fluff for the boards.
> +    description: Shenzhen 9Tripod Innovation and Development CO., LTD.
> "^nintendo,.*":
> description: Nintendo
> "^nlt,.*":
> --
> 2.47.3
>

