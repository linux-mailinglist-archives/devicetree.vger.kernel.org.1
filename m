Return-Path: <devicetree+bounces-226654-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 48912BDA531
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 17:24:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 74E49584E2C
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 15:16:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 210242773F7;
	Tue, 14 Oct 2025 15:16:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PF4M0m0o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 949BE2C0292
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 15:16:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760455005; cv=none; b=nP4gzD63rOyxpS6DZ38Yv3y3cHJyCpvrMeDzt4JzmP1bFUHrk3oP5chrBmwQNJ4ugumLC1OwcgMu1q5GfwzA4kx+sitg2rkM532nCzomRdjOSjvBYmskwAEJKoF4Nd9iR8hZXXkBA4TDPM50zauZk1uXFSeWv3pedfmfEmi3MmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760455005; c=relaxed/simple;
	bh=jTNDcxqogKVaZtvPP9YOb8ee/Iyh6X79+4lxjhYUQz8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WJWDJhjoUOLO0Rvc7kwcRMaBUBrOeyCpHiRPvPUWrCqLtVLXrka30rVFjIAtpayoRqHfqEQeE49pNiqXdN9VbQJrOuwNfdxY8pwGKz5hs5L1kB2ki2UarOAlTuhW14hhFg7B49xa4L1ddCkCdBbnPZGNVTOSFbGYekaVx+4vVAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PF4M0m0o; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-7841da939deso4852435b3a.2
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 08:16:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760455003; x=1761059803; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1Aftt5GDndW+QmwWYyCYRVm3iyK5ExICkKwljxAsMHQ=;
        b=PF4M0m0oKH0NTF++WbMmCI08mVlAkrwy17vAlBqnhVZaukdF0Bg34TCX5/QTZnq29d
         3P1WH50SdOV5c7Z7oyS1yiHAC1fnW1vCwCGhlVVPz8GPNiP80RWbmwK0ZhOQ+vUlhcLb
         q1EWAHWRAftTbkmgG8s6zBOLZbF2AsRlKKAlUOp+kL/pXSRGwH9G9AgcrTbUgT2eH/UX
         VLkNayRVkL2KMNEtbPhy8f8UW1HEar7JQLx10G946ovCDT4Fl0lemdxAgSqXJFc1OXkm
         daY7xDbrnO854MYm0GY3HxlsjKsckTYU1MHjitWqCZ4WSS1GIa1JYLx9kbUfHqYG54GR
         r6rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760455003; x=1761059803;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1Aftt5GDndW+QmwWYyCYRVm3iyK5ExICkKwljxAsMHQ=;
        b=wk6YfFwjM7VO3N5Qb12H1XdHjyuHJfqSeChYL1DBK83zbJO/6uRXR0N19CMLk4a57+
         OVHIM0ckL3Uucc8CIjDcRFi68GCyBlPHl22wWslw3u/0qvdu9TRp3F3yJDtPNGck5bz2
         vIHJVGps6kLr+nWuN8WYyjI99i+rKdNyXmMXqWWJj0wn5+l/ASAlCoNWVnMw3Owwj23T
         6fBGyDbECMU9IT3uKjLxMjW7k4EZVk7/drbclGCB4ajGXIr2MsVa3ZXjK6vYgBieLTsL
         DGhyLpDISs7bfw6RKU4sMAjRQ0Esq94qbnpP9GCDeOaq2dEJ8WLzzfdvHv2eC84yu33L
         t9Ug==
X-Forwarded-Encrypted: i=1; AJvYcCUxYAKLYf0but4dsblLFcyq6qRoe5uNauv9szpm943yKrubUAUUp9n4MwBUtgllXNBjVH1Vl+SocxGo@vger.kernel.org
X-Gm-Message-State: AOJu0YzNbPDjk5+3twg/0sgjGAAKeZy4SFH4VKtxenAbgWRyNg0NR3gb
	Zn0G0opD0/p2ITAVSMOyJyqPTPtikUAiqz31IkHQThiYEmm+4Igmofkq
X-Gm-Gg: ASbGncu6MWnm1wIQ5wkA3/BrBkcW6euLnjgq8jgAK97FDpqZ5cCQwVsbvMoRv9dybOc
	e2jHkzeeLl0iXv1+WTmo/FiNqFZCYBLfBCJs0RToBajPLzyLpSsEsg2VjAOcCO7qXMlkrtUxb90
	EDLgQv9u/5fBgMeIZAXLZZ0xZOxVr/yOP8CwnDvj8CiyDntkn+55jSSefrKonSKzotiRKQgo3JO
	+6L0U0ySa5WAQWPVDv5D1Shee/GoeG7YrWIWDNLRnUPvQVDz3Rlcu8E0zo1NnglPs2eutF8aMWq
	Y661203LF4RjOIzwCLCVF+0DdaHankm/QwCnnKS4LIWjkAiuZU4D4MwpP7nCEXe2I6vmA40h1Cc
	UhrRJw5lgwqlTv9Fc0ed14+iGwdLjDj7Dx2bk7Nj1KS68N/w7HKgYT9LbBjUL7/BG08CXjCbELw
	g=
X-Google-Smtp-Source: AGHT+IHcO0k1gdRh9Ik7VrSifzpnxsBG8UUPfwEIqiLV67RhkTa/m4Z90iP6pclDPdHI+s5aAf32eQ==
X-Received: by 2002:a17:903:11cf:b0:269:96db:939 with SMTP id d9443c01a7336-2902741f404mr296208995ad.58.1760455002711;
        Tue, 14 Oct 2025 08:16:42 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034f08e2dsm166399205ad.74.2025.10.14.08.16.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 08:16:42 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Tue, 14 Oct 2025 08:16:41 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Cosmo Chou <chou.cosmo@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	corbet@lwn.net, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
	linux-doc@vger.kernel.org, cosmo.chou@quantatw.com,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: trivial-devices: add mps,mp9945
Message-ID: <9ea2885a-0b86-4166-9a24-e7aa7918be23@roeck-us.net>
References: <20251009205458.396368-1-chou.cosmo@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251009205458.396368-1-chou.cosmo@gmail.com>

On Fri, Oct 10, 2025 at 04:54:57AM +0800, Cosmo Chou wrote:
> Add dt-bindings for MPS mp9945 controller.
> 
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Cosmo Chou <chou.cosmo@gmail.com>

Applied.

Thanks,
Guenter

