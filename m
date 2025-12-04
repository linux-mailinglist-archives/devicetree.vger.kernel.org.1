Return-Path: <devicetree+bounces-244294-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 591FBCA3612
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 12:05:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 58AC73028C36
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 11:05:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7378831A06F;
	Thu,  4 Dec 2025 11:05:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="O25p+d58";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="po30Ij9h"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A900019AD8B
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 11:05:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764846305; cv=none; b=sYHZT34A8u+hNnEHp9j8Sf7RZILetReQZ0itySi44Ot9dGpsvKWC36UXq00jIo4w+yy4+DpJOhDRcuCueXDxqjlGABlYtpRrkBIayHiDaYmV+PE2ea57qOc2V5ass4zptFEVQILzGiFngjZtOli/lvJt7+g5girlArrJ1Sgjv+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764846305; c=relaxed/simple;
	bh=FdreTvf1w6SbCYIXQ3yPiXixekkBuUPqS8ciJpRvAUw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=s3qKqlY6vOVG/vV0RoAKo1qWLtcnVxHhoV+z2O+gkZGTAmCzzvdfgZ7P0tgJGFoE87pJsQ7vOYJYMvKzqHJ63sJP3AJMMWFYkjBT+w5YAbJZYqEqd7zp+PvMku8feKEhNyRoUS7fy9jA6rqj14E7ZtVAwjub1kD2mHPQ8xIEHG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=O25p+d58; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=po30Ij9h; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1764846301;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=fFLIr5RpOZwQW/XBO4InL4XCa+kmzOLYpY3+ymKRjT4=;
	b=O25p+d58z3dcVtUCtJV1p3fOuFqG/BsjAXy4LPfeb5iaGpyUglm1kr/Auw4pYSOZ+tozJ5
	/J1vci9ko2QFCxuI2+vb0NRz9T1fYDdRxkl5ctXxjNPk2Ygv8T1KMbCi5sYMQR3r66oYNy
	NRH+YOBe+/jbB9rhFxKjPb99yidEe0I=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-205-k9ilYqTMOa-l6bPJq4rvlA-1; Thu, 04 Dec 2025 06:05:00 -0500
X-MC-Unique: k9ilYqTMOa-l6bPJq4rvlA-1
X-Mimecast-MFC-AGG-ID: k9ilYqTMOa-l6bPJq4rvlA_1764846299
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-477b8a667bcso7867095e9.2
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 03:05:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1764846299; x=1765451099; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fFLIr5RpOZwQW/XBO4InL4XCa+kmzOLYpY3+ymKRjT4=;
        b=po30Ij9hp7XWRX6lJQjWGq6gZP97dTEkaKukrbZxiA4G4438qSfQ3+9W3rsLLWc3LX
         GRm536ffSnI1J0HCwxGh/F/ZZDmvKJd2xB2Vt1eBlkEZ6simHP2z0dW6RC/W0AJDoJ8X
         hQe8Oi2kGvDbGu25axWijkuJ6SIEWrhPsVTbtItNji3+mkp9ltNnHJWTyTsmGbas4J80
         T2I9USs4LImcHkn5pgFawmJWZFGmi3X21ViGTgwnO2Pb6k33yOzt2ayI2UcAmJwyuXzn
         po67P1C3BLXz68nj2qeOpMxtVnLw400SY74yeZX7ZsXeOpqm9u81C6Ve2QAT8CxVmiXm
         g5jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764846299; x=1765451099;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fFLIr5RpOZwQW/XBO4InL4XCa+kmzOLYpY3+ymKRjT4=;
        b=w1wiy0snP4S63/uQGbqdcekUvn5ogFr7VtEyZJaWruB9l+6KXZc+F8gctntIlpxJdZ
         +Vtn2pgHmNqzRqzIy6wuNJ3yxaYS7nAc34TDXOk+DKiSEODIrWrmd0sAeECh7gqeuYen
         PSFGsyIdnlvFviuVVW+QTmKUHpGeJb0K4/M7fXD3kU3qZ2oY8pw9GLw6vrkemeCvkVSl
         qTz7PS097WW9ojJaraK+yIC1TOBBfQWtwheLtfANin2rdBIBJxNwVkrJQJrhj7DPB4nA
         dwqrcWgB7hMfn+sS4iBp//EUcVbCB3Wq0QcUDD1GrAAOMmammX57xtcojs44zWrj2uHT
         bKfw==
X-Forwarded-Encrypted: i=1; AJvYcCWBDcrW1VdGAofGDFoZHJxrDQ4yAy4F8rKZ1jG+4MfklQQ58aVv6n+zNIq+Ff1mLWIhze13qcNr7oHA@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6BmpokYxGAAV9yAYSv/e18TWvcGmyPOvkJGej3wbmEeeI+/QF
	FofxTV2PMvgwpx2yEwlQGFPxnat/NJYsLhyKsvHi4CbXdUmmceNk3hXk+2+xTUWDvoq4IbhS4wI
	10RF4wq8bpSUoU778GGk+Kh7Q9JfG2hanHPXeUqS8t3Bb/BJR7gu0DFFRP3n4efY=
X-Gm-Gg: ASbGncsHilzY2t0Z3Ei1QsP+9EDnXOq7tMXLYyoEg+CNBh9khCQq1RPj7j7DGGlgsEE
	N3Sm6l5XQAVPh3i8NE2Y39NnPTl8LUAVgW4XNiB/XtykhH+ZkzjFZ+U9EDOE5HKsPEcqMAsqL4O
	HPT1t2H1JeNvMEHD0tnew1yw2F3kzGJWpt3yE0k4delB/I5mz6MlLnjYXZSfM94V7IQ/Ey1IAQp
	i5RhEfskj0VocrZQRCK3rabY0Vc2Uba7eMoD6eDZgVahhHNuqLUkIxmdbIjrlaxHn6dz8y6BlSO
	yCLvNkXIG0epmZnr1SnW4xhS7K52Z6IimOAvuYS8iSm5X4ojJVKGD+RY4b65WCalCCC+WfJgqgc
	6H1iktyRZ8bNY
X-Received: by 2002:a05:600c:6288:b0:477:fad:acd9 with SMTP id 5b1f17b1804b1-4792f39cb7bmr23778095e9.34.1764846298965;
        Thu, 04 Dec 2025 03:04:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFUHIXCO9+fsfECkCmm9xg1Y8sdapnLLcOqNS0qdhtA99YvTLXjlgg6DzeN9hxFmVcV4ihIeA==
X-Received: by 2002:a05:600c:6288:b0:477:fad:acd9 with SMTP id 5b1f17b1804b1-4792f39cb7bmr23777655e9.34.1764846298566;
        Thu, 04 Dec 2025 03:04:58 -0800 (PST)
Received: from [192.168.88.32] ([212.105.153.24])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42f7cbff352sm2594915f8f.17.2025.12.04.03.04.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Dec 2025 03:04:58 -0800 (PST)
Message-ID: <f63784dd-a4af-4023-894c-a8e4082b4f6f@redhat.com>
Date: Thu, 4 Dec 2025 12:04:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [net-next,PATCH v2 1/3] dt-bindings: net: realtek,rtl82xx: Keep
 property list sorted
To: Marek Vasut <marek.vasut@mailbox.org>, netdev@vger.kernel.org
Cc: "David S. Miller" <davem@davemloft.net>,
 Aleksander Jan Bajkowski <olek2@wp.pl>, Andrew Lunn <andrew@lunn.ch>,
 Conor Dooley <conor+dt@kernel.org>, Eric Dumazet <edumazet@google.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>, Ivan Galkin <ivan.galkin@axis.com>,
 Jakub Kicinski <kuba@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Michael Klein <michael@fossekall.de>, Rob Herring <robh@kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, devicetree@vger.kernel.org
References: <20251203210857.113328-1-marek.vasut@mailbox.org>
Content-Language: en-US
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20251203210857.113328-1-marek.vasut@mailbox.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/3/25 10:08 PM, Marek Vasut wrote:
> Sort the documented properties alphabetically, no functional change.
> 
> Signed-off-by: Marek Vasut <marek.vasut@mailbox.org>
Linux tagged 6.18 final, so net-next is closed for new code submissions
per the announcement at
https://lore.kernel.org/20251130174502.3908e3ee@kernel.org


