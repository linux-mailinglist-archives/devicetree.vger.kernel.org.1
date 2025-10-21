Return-Path: <devicetree+bounces-229203-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B7321BF4E49
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 09:16:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DD39A4681EC
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 07:14:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C0882741A6;
	Tue, 21 Oct 2025 07:14:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="dlqOc8So"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BEF7272E7C
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 07:14:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761030887; cv=none; b=pKn5iZ6lvaeaxySLI9uh2/tQb8O558wVERU3XiWU/7OtCC2iQ/KjquP8R9e6DgSZbHtvRyCwbbgpvKJiD1BhbsQzDili3nnlsn0VPUoiR56XrJxyaGk0CQlulSpMD4kzR/QDMjkuDkGRgt+5nY9NlqxtR7Kg4Pj/pFcWWPyZKVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761030887; c=relaxed/simple;
	bh=+B2pxE/i3SpbGCZgmKAbV6E4BQeWooWjeCR64E75cc0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Cfh0fFyfk15MZmglP+BLfPr0bjVOa2G498MWgmuCz3+gMg72pi0utDTc9boG8yZquzJDp7bAkZTurtVDvKWWAPKR33ol+ZRP27f+rMYngm+pZq01ns+xwhrdWFQMbqfoX+K1xPzON02SJY8kVf9ssWiOd2R0oox1z8I1P0STn4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=dlqOc8So; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1761030884;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=P3VpVCv3g+Sg2rw7HqhbXAeRhRk3VZinAbv22WqGX9s=;
	b=dlqOc8SoLM3BjFwxx+1Uopefp5Xa7IEDlYE07gOB+H3+SM1dmi1Pi2uE2m+JDjExGJjb71
	hYTYjR7+0ayCDfW3PbjCnCcN0o9YLNry2HmklKaIZK1XPYOIG940tMJZ2UCMqDFHFjq2Pb
	c8khxafkDJ1v+FyvRXXXEFihEW4um68=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-311-Xj3AwHAPM2C10qpxyogZ2A-1; Tue, 21 Oct 2025 03:14:41 -0400
X-MC-Unique: Xj3AwHAPM2C10qpxyogZ2A-1
X-Mimecast-MFC-AGG-ID: Xj3AwHAPM2C10qpxyogZ2A_1761030881
Received: by mail-wm1-f71.google.com with SMTP id 5b1f17b1804b1-47114018621so25767245e9.3
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 00:14:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761030881; x=1761635681;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=P3VpVCv3g+Sg2rw7HqhbXAeRhRk3VZinAbv22WqGX9s=;
        b=XNh/+m12hfRQMuD20EbXBd9RYOrFxdIWVACJVw4euZvdVx04V4r0zv8Kjj0ifcM20O
         jp5BofIZPB7fbspEE1E6Hn2HeHJ/fSa/WS13PRA1b380RDZWVcxlafZB41NZH/B70x8c
         JX96S2nVocp4jhV4N6JQ/bT1JsFwvv+iAFCa9HreAbjXAzdEtk7/af6uMx+k1pPBStF/
         ITfO3m+6u5omOi4UCRviP2bxmLrTC81uAH/EStyWLsIpZwEb24sJ49/7GgY18uNWL8kc
         Er9RIWTN3A2J8MrrAXB7DFtlDxLG3Oj0kugSS30SVSkGU5Z+nDsVx8o434s3B+xlnKcG
         M2Mg==
X-Forwarded-Encrypted: i=1; AJvYcCVf4M4s92WU2B+1TcHkcJXwI21mnJQ5+2axmSeD5+lz/Vl8r+vfo01N4PnF2gB3QqGHY2UfxCwjnnoR@vger.kernel.org
X-Gm-Message-State: AOJu0Yzx3khm+TOcvYWC40v0XewrvC8OKO4BoRzDsKY6GEn2nGhM0nZ3
	eVnOffGdBbG89EIddLGjEZEGni13G6VmzLAka610f4rbtWAb+bl5ZSW3BY4tflC88Mh2h8XSE2b
	Cn3bKZqjjaeMfWWbOeZ3xhuKl8elJMAhq82SiE7MQ8CA9oW6Pm/NG8ycWKeJWHIs=
X-Gm-Gg: ASbGncvQt6Nlw77mQoOeIVWm2hhXMTOGVXPWjF11T9qB8zi/XsMW8vF6kKi+oHeppH+
	jOvvo86e6xUmh3r0RAi5ZIZMrMW5vuHxAW6y2LNTkjcX/pw6BPdyj92XnOz498KkI4B65Vvfmxw
	d+jj4fL/56mx1MS8eSk3V46dez60IP57q1KuI+cyDPCRKQ9Kx1q8+odfHUm7gms0g8L9+H1D0TQ
	BRwkJ00k7F+hQhytmuLueCmuRp4xY+pxIQQkSCgYWjppfat7GB3d0s9O8q7tFF39R+WIn5qvLri
	ptBVqPwrtZ4LM1VRYDaB9qasLcS6AEcd0KH2+cDmJcXylygYyh8xvVqbDuP5KOgjGt1DA2lgVTW
	NY+IU4v31o4sch7n6OIWIi9rIoTBV1DpPVeJLiZLO8e3vR4E=
X-Received: by 2002:a05:600c:621b:b0:46e:48fd:a1a9 with SMTP id 5b1f17b1804b1-4711791fbbbmr122888525e9.33.1761030880631;
        Tue, 21 Oct 2025 00:14:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGAbONMD+QOMnDrNKO8RV6QYb7ZpSXAEjBfkQuhDaa4d7qoOlbgykLKNXPsi+4U3b+ujGw+cQ==
X-Received: by 2002:a05:600c:621b:b0:46e:48fd:a1a9 with SMTP id 5b1f17b1804b1-4711791fbbbmr122888225e9.33.1761030880241;
        Tue, 21 Oct 2025 00:14:40 -0700 (PDT)
Received: from ?IPV6:2a0d:3344:2712:7e10:4d59:d956:544f:d65c? ([2a0d:3344:2712:7e10:4d59:d956:544f:d65c])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-427f00b9f9dsm18907741f8f.39.2025.10.21.00.14.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Oct 2025 00:14:39 -0700 (PDT)
Message-ID: <be03d7a5-8839-4c84-9e16-b96e52f6983a@redhat.com>
Date: Tue, 21 Oct 2025 09:14:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next 0/8] net: enetc: Add i.MX94 ENETC support
To: Wei Fang <wei.fang@nxp.com>, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, claudiu.manoil@nxp.com, vladimir.oltean@nxp.com,
 xiaoning.wang@nxp.com, Frank.Li@nxp.com, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 richardcochran@gmail.com
Cc: imx@lists.linux.dev, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20251016102020.3218579-1-wei.fang@nxp.com>
Content-Language: en-US
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20251016102020.3218579-1-wei.fang@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/16/25 12:20 PM, Wei Fang wrote:
> i.MX94 NETC has two kinds of ENETCs, one is the same as i.MX95, which
> can be used as a standalone network port. The other one is an internal
> ENETC, it connects to the CPU port of NETC switch through the pseudo
> MAC. Also, i.MX94 have multiple PTP Timers, which is different from
> i.MX95. Any PTP Timer can be bound to a specified standalone ENETC by
> the IERB ETBCR registers. Currently, this patch only add ENETC support
> and Timer support for i.MX94. The switch will be added by a separate
> patch set.
> 
> ---
> Note that the DTS patch (patch 8/8) is just for referenece, it will be
> removed from this patch set when the dt-bindings patches have been
> reviewed. It will be sent for review by another thread in the future.

Note that such patch is (AFAICS) breaking Robert's tests. Including it
in this series will possibly/likely prevent (or at least slow down) acks
on the initial dst patches. I suggest omitting such patch in the next
iteration.

Thanks,

Paolo


