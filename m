Return-Path: <devicetree+bounces-235987-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 852A4C3EEE8
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 09:20:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 041BD1881AFC
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 08:20:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E1BA30F537;
	Fri,  7 Nov 2025 08:20:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KN+jDjtG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C3C5295516
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 08:20:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762503628; cv=none; b=EHYRWMeuT5s3FefZbbNRGjLYTls2vVPzMap0AaANm/g7YUKRia5HYjohkeOEHNXSxVZSzN70Y7KaKCXjVZ41Zo8jelYsTcG2atz3xEKIAnP5jDJiNfjsbThEREDdhBhRUgn6MiksSIuNBcYX57ELPRfWSgj08gtx3LIvUD4caWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762503628; c=relaxed/simple;
	bh=gI7Fuup8i1amPEK0YbxklMM9F668JXoIpmY3C3wbz1w=;
	h=Message-ID:Date:From:To:Cc:Subject:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RQTgwgX3c3qvtOe/93/MaXLSdRQWXG4D/aY7gkZYBuLkPkxGXf8AzCu6uX7ZYdx3b79TIIsAl4fw7f8g+dpe1rHRAvFAXjmvMSnpSip0sE941NnPjyejlh2I8hQxoVjwhHj4nQBnPwMr7sRIwsnFCkD6W39BvrITRD61ZREYdu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KN+jDjtG; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4711b95226dso4172805e9.0
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 00:20:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762503625; x=1763108425; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=vk1MffHR0aoVhf3k27Pk0Lpr77G2pGMlsaZ4lNRFHLQ=;
        b=KN+jDjtGpuSjebdC9tHtkw4+Fs+1jV1c+sZAHsBRfBt++dKygtma4OmUoNDqTWw8Jr
         kmKLmzGAr7Ap94QTl8WFlpphN8zi/+UhYMWkw7TAWmTVIZQmjVbweZm5deb037Dnud1P
         IZ+uB3fWsowVUaVKClU+cxi2BuLjG6+7d+9u75bumiCeV9ck5502uZnODbfzx1FlfKhT
         BuZjArNZTOPUdI1u7e/YTMIM+vCqcPeXPqQrzLwL/Rqc57KnE5ADme1es0aMVViPbKQt
         Kv6KTpMgffAqu+KvwLukU+h7HU16jUj0jroqQ5IjnWv+lHyfsG10XIm9P7G2l8QqSvOq
         luHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762503625; x=1763108425;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vk1MffHR0aoVhf3k27Pk0Lpr77G2pGMlsaZ4lNRFHLQ=;
        b=S+MWxd7CoVbZNxN+BvdY4za4OSZEgIl/+Gac8UhKzje9Uqz/xgyi+j+pzVQBi99baw
         hhFFivBaBd2wb7jKkEnbetiUgsDhq6NkI9hUBTlRxmko2Z012cT3p6g7cPJODpSIbxr2
         NXSmztLqCIo6HREEfc7CffiDizIxY7oCQ91bJ+lCdfozP41UdKEx33lZ04sGZc4kXqQR
         LvzVQGi5M/dOFCH44xnnDy+V7vETUKUPLgTl+H1StF0EDwTd5VOewyGSmxjXlTTbwKlb
         rJW06cVwjPQLGuZFmk9u2jpcSGXKk1KAYY5kyVi3GMKhzoQLA0bWumM1DeAKZmKXE4On
         tEUg==
X-Forwarded-Encrypted: i=1; AJvYcCVXiPYXi6B6Qc+p8k3eS4nbH5+oMQScc3mGmt5dzUiIg2wXfSnvc7SunBVZiHnhNlpeBXTyuwxxWJRb@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6vYQXWn26vfxrTyqBfa4eXhwS+4FWFPfcM402p6FX9g9PXBt9
	/iDunH495qa5Xt/VOaYHXz8nNwiJGuPQJ/Qj3BSkaKAoLKy4xe7sTCqZ
X-Gm-Gg: ASbGncukLxYs6cMqev4l4Jv9ES0VyX8XJc7qoz6h//6CiYFXPuqY8cWgVNmmiBDKpmW
	uYboXP4j7I5i5oMPq+uH8joIMDaZXLYkmTTz5enejiAV1Kg+Y4QcSUlrD2FjJXj5RUzYgUg3ZnG
	RynpAF31UdU0iwzw06ixemCbLLUVn4mA+PPIIVA7hCUf0NSNOuU5z1Zukdtc4GrRe4ZT9rxMxrd
	EhR1AhiarWTdtHOlOR8wQFc45YNrCpbQvJwTMOWa0gksgGo5yefBuC9CkrxuFVh/SjbLFYxOIYL
	UyaTLsifa6KWwJt+AKii5l0NQmW5GNHFEcMwCSqsOuiYVjyrCJDD2onmtT2BoPWU21tm/+6ccpx
	TJ065qUZGLVLdXSPNVoM+GvlRlkaSicna97Xyeqm4dlByWgyFIZxYOY0Sge0VEA4MvcaN15RtSP
	0Yza0XX12iMBZr6OArwO6QMvUCMBFEQaYcMa/1IMk=
X-Google-Smtp-Source: AGHT+IEVLaEMFOvPeZc0Oi0rUOFMOQBnNHP+rsaefCysI5BwrUTSziTcZsuRefMyYxTThj9ZiHILoA==
X-Received: by 2002:a05:600c:4ba2:b0:477:4345:7c59 with SMTP id 5b1f17b1804b1-4776bcc9886mr12696425e9.40.1762503624631;
        Fri, 07 Nov 2025 00:20:24 -0800 (PST)
Received: from Ansuel-XPS. (93-34-90-37.ip49.fastwebnet.it. [93.34.90.37])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47767749916sm70627205e9.4.2025.11.07.00.20.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Nov 2025 00:20:24 -0800 (PST)
Message-ID: <690dabc8.7b0a0220.35db7d.1d97@mx.google.com>
X-Google-Original-Message-ID: <aQ2rxvM3JXcFbuaF@Ansuel-XPS.>
Date: Fri, 7 Nov 2025 09:20:22 +0100
From: Christian Marangi <ansuelsmth@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Felix Fietkau <nbd@nbd.name>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 4/5] dt-bindings: clock: airoha: Document support for
 AN7583 clock
References: <20251106195935.1767696-1-ansuelsmth@gmail.com>
 <20251106195935.1767696-5-ansuelsmth@gmail.com>
 <20251107-fancy-premium-lynx-dc9bbd@kuoka>
 <690da391.5d0a0220.33eed5.80b7@mx.google.com>
 <ab520621-b11d-4763-a7b7-fe7dfafdca6c@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ab520621-b11d-4763-a7b7-fe7dfafdca6c@kernel.org>

On Fri, Nov 07, 2025 at 09:12:48AM +0100, Krzysztof Kozlowski wrote:
> On 07/11/2025 08:45, Christian Marangi wrote:
> > On Fri, Nov 07, 2025 at 08:42:15AM +0100, Krzysztof Kozlowski wrote:
> >> On Thu, Nov 06, 2025 at 08:59:31PM +0100, Christian Marangi wrote:
> >>> Document support for Airoha AN7583 clock based on the EN7523
> >>> clock schema.
> >>>
> >>> Add additional binding for additional clock and reset lines.
> >>>
> >>> Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> >>> ---
> >>>  .../bindings/clock/airoha,en7523-scu.yaml     |  5 +-
> >>>  include/dt-bindings/clock/en7523-clk.h        |  3 +
> >>>  .../dt-bindings/reset/airoha,an7583-reset.h   | 62 +++++++++++++++++++
> >>>  3 files changed, 69 insertions(+), 1 deletion(-)
> >>>  create mode 100644 include/dt-bindings/reset/airoha,an7583-reset.h
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/clock/airoha,en7523-scu.yaml b/Documentation/devicetree/bindings/clock/airoha,en7523-scu.yaml
> >>> index fe2c5c1baf43..2d53b96356c5 100644
> >>> --- a/Documentation/devicetree/bindings/clock/airoha,en7523-scu.yaml
> >>> +++ b/Documentation/devicetree/bindings/clock/airoha,en7523-scu.yaml
> >>> @@ -30,6 +30,7 @@ properties:
> >>>    compatible:
> >>>      items:
> >>>        - enum:
> >>> +          - airoha,an7583-scu
> >>
> >> That's random order. Keep it sorted.
> >>
> >> Best regards,
> >> Krzysztof
> >>
> > 
> > Hi Krzysztof,
> > 
> > I was also not cetrain on the correct order.
> 
> Why? The rule was expressed on mailing list many, many times and only
> Sunxi or maybe one more SoC does it differently.
> 
> > 
> > We have En7523 and en7581 and then An7583.
> > 
> > So should I put it at last following the number order or the
> > alphabetical order?
> All such lists or enumerations are ordered alphanumerically.
>

Ok so I think the proposed order follows alphanumerically order.

           - airoha,An7583-scu
           - airoha,En7523-scu
           - airoha,En7581-scu

Maybe the A vs E was confusing?

The confusion was if I should have ordered for the number

so

- en7523
- en7581
- an7583

or the normaly way

- an7583
- en7523
- en7581

But since it's alphanumerically, it should be correct.

-- 
	Ansuel

