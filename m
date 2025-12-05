Return-Path: <devicetree+bounces-244845-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2126BCA95D8
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 22:16:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D0F02301E16B
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 21:16:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9E0D1F2BA4;
	Fri,  5 Dec 2025 21:16:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NAS4QhMw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C6540855
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 21:16:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764969408; cv=none; b=ZcwmiT5NlcqrFacwrnZyjVyysWC2lYpng0X1vsZrTdoQwd+JoQ+t71UnO6oJR1StihYcneFJ/fCygSex8EJrKBXOJARF6IFYEeMKJ1eNSkUDccJ2Vhq6UbTn5W9P3EjOpcVG9n+Rp6YjfDNqrvXGlNOYMc677qnuBCn274leXtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764969408; c=relaxed/simple;
	bh=tcwMF1u7d3ohgpmS2mxHfc4wRFvpiyjj0O/l4GKooTY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ibyw+sAfyMkCy5+1cxQruTDuQ9uRshvCCdUS89qxnQcKhfcrKQQJXx12+APsrjfSykJ5eFzgaDpJxXhIvnZxH8OgIHU3SpDyXW1c1J23ISsyuIX6FcK+oYGWrEn3de3QVrKAAvBrt928uWK/QLHH0k1Cvl7MPtMMQVYoYJcmivw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NAS4QhMw; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-477563e28a3so19255645e9.1
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 13:16:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764969405; x=1765574205; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6Nxf+UbxVML8lqm9dUwCL46TJXN3lpM/MynhhK+ht9M=;
        b=NAS4QhMwzen90LiRI6lX/N6fRfB3dyCpOZ1dpTw19Ngw5VbLV4WzhPxCToPzpgVP/Q
         swDRV5W4epy0JrsnkBr3XPitt4+aL3nn6nYy8ixG0OB0Yq+rv3JO/OF5E9tEP0AMnOO+
         vT6KIq2XG6Z4oGWG8Q3WyikgHP/ooSUhCKFx+XHybYXHQPo3yg/qr7Un6/9kj1mWORZ2
         8qU2cu33U1ipSJ8KECmAl/RZw+JWrx8H0Ex+ODVXRhc9G0fGR169U5JyaJ9umxM8s0h/
         o/HAvwgpimLI9phexHWOAO2ESvmoQzarQegt4sbc7YHOj+rz+x66Fp8ovc/MtAmR5DHO
         vuNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764969405; x=1765574205;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6Nxf+UbxVML8lqm9dUwCL46TJXN3lpM/MynhhK+ht9M=;
        b=iPvWOec7g2qMH8mUI72EuGpKgX7JRj9d/AxbMGRbsvQeJ5JzH8iaP2hOQKy3wNPTfA
         Kuc6nEvssgo274OziXArDTWIxSExaq8AqJIW9Sj0bsYvq3/kPf17MRdOF6ZSL/0hWGf5
         jk4qs5kqmXKs8h51SPR9ngNtFfowJO9rZzK9vk6Urm/rtQSzn6zXyVIIARNAHjyLSDib
         8JW2kJsxDokgArRc9aQydM4qNLwVyXgz0LeHDAUU+0PJwV9HQ5D390gPn1fzri4JRjKT
         yPZCRZexiHqjtrW56yClBvbVVNpPvx0HDlmj42xkb9k0tpUTcljiHCP5IABxkz+yO0E5
         6QiA==
X-Forwarded-Encrypted: i=1; AJvYcCWkclbSw4GuDWxq8atzXnR1iKoltsK63Gvi1YLB0vFdHQPIX0HDel88uaMh2zlga2143Z3jAqYs7+sV@vger.kernel.org
X-Gm-Message-State: AOJu0YyhNzYJhmBq7VQ7CF3mmvE7f4xOLD07snkyiKBtbM5K5hLB/fCc
	xARXBBYtDYPCUaH50KCqKHOEaioDJCix5bLLT9RdOrD5R41dw0ZjCncd
X-Gm-Gg: ASbGncs6FATJgrg9zugpiEJNTNUpo8lJI1ldNdxSOd/YLila4hcstgLtx2axElQ3fQ8
	Cl+qFI8QoAoFeg2Ou9AHiIfSSSOnuUhOBnfGDq2G6HIioK209O+g5ymttcIy8+6TzOA+Ap7YiJ/
	vlADVL9hLdHkjsdB5i+oGdU54ut8we+PbaBjnvrB3f96pmf7wL0JiHTLnjseSa24+7+b5iOILDD
	XOoksB4iTEKYIcjO6SzD7vJ0dKemVqyzOZqm3sw0eIl54YDhcLWV0voalmMLfXSyhD88jwV8tVb
	PV78+LRF/aabKIr5hg4/tBApnZQ3AOwALc7nwL6IdecWZV/lCpwZYDOCr5XlYyQ7PIHIXAUkV3f
	uhNHwTxvz7LO7zoNXasw8/EKn9RHv2TqdKYL9j7ikumPyHdvhYKS/Rxvq23LbIxNPE+wt2D6oHf
	RvzZzFCSz5Pj/uEZu//wwgMqDuW3zP046TyccRwQ0lQcZbSIExZZq3W96UYM8pocqvtT3FIHKiX
	rOu833PM8eusq0/4KEtv3gijjWCpY1fjm+8VDIvRtWqD/KiRrcM1w==
X-Google-Smtp-Source: AGHT+IFZChau8OMeC1OLCqeCPNebVKaNk3vumCCd23Bu0iJLrPIjbfoD1uBKQKJb6ckkVpzXZJNNzw==
X-Received: by 2002:a05:600c:5306:b0:46e:59bd:f7e2 with SMTP id 5b1f17b1804b1-47939e22a9emr7139775e9.11.1764969405296;
        Fri, 05 Dec 2025 13:16:45 -0800 (PST)
Received: from ?IPV6:2003:ea:8f47:b600:41b3:37ed:a502:9002? (p200300ea8f47b60041b337eda5029002.dip0.t-ipconnect.de. [2003:ea:8f47:b600:41b3:37ed:a502:9002])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42f7d222506sm11795875f8f.28.2025.12.05.13.16.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Dec 2025 13:16:44 -0800 (PST)
Message-ID: <10441fbd-8022-402e-8551-e0f8ec0449f0@gmail.com>
Date: Fri, 5 Dec 2025 22:16:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC] powerpc: switch two fixed phy links to full duplex
To: Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Madhavan Srinivasan
 <maddy@linux.ibm.com>, Michael Ellerman <mpe@ellerman.id.au>,
 Nicholas Piggin <npiggin@gmail.com>,
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 Pantelis Antoniou <pantelis.antoniou@gmail.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
References: <64533952-1299-4ae2-860d-b34b97a24d98@gmail.com>
 <5d302153-c7f6-48dc-95cc-0dc4f25045c6@lunn.ch>
Content-Language: en-US
From: Heiner Kallweit <hkallweit1@gmail.com>
In-Reply-To: <5d302153-c7f6-48dc-95cc-0dc4f25045c6@lunn.ch>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/5/2025 6:50 PM, Andrew Lunn wrote:
> On Fri, Dec 05, 2025 at 06:21:50PM +0100, Heiner Kallweit wrote:
>> These two fixed links are the only ones in-kernel specifying half duplex.
>> If these could be switched to full duplex, then half duplex handling
>> could be removed from phylib fixed phy, phylink, swphy.
>>
>> The SoC MAC's are capable of full duplex, fs_enet MAC driver is as well.
>> Anything that would keep us from switching to full duplex?
> 
> What do we know about the device on the other end of the link? Maybe
> that is what is limiting it to 10Half?
> 
I found no hint that anything is connected to this ethernet port on
the two boards. Hard to find any information because the boards are
>15yrs old. Seems this are dummy entries, just to let fs_enet load.

> 	Andrew

Heiner

