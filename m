Return-Path: <devicetree+bounces-222759-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 99572BAC946
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 12:59:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 34D6A192675E
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 10:59:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65D832FB080;
	Tue, 30 Sep 2025 10:59:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="YGfxW3Tk"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345202FA0ED
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 10:59:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759229953; cv=none; b=R99RrfRfofgFCnwi/w15hXFeolNIZQJvkr/r9fw87IzAp9RpzGfGc24EeJCVW9X8sUiPRWqGulN0NDWnlZ7jzhrUgWIkHRKUSSMHifFoOOfS+ua6TOcRi19AJowtcjoFG80FJo2Fu7vTFPO1SCRaPoiAcDKro3p/Ls1geumwqTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759229953; c=relaxed/simple;
	bh=aD5jGL56V2tce4m9N5SJnlY9Yue0hnBtWnJ3rC2zM6U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ApFl398OUacyg+U4hVTi+njqRVi5awyyor1WCY5uatPBUXjq27YLmpzm9v7pQDXxxkywt3iRswDR0tHwNb3PBVmislCRlqtldcSUdF2y1EdN8mXXQyYPWClR+jDcG1n5oX1nmrzSGmnhwEfjtj5oZ/fBKSg2y1/0x32gBJFYt4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=YGfxW3Tk; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1759229949;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=SVOA0Q0ymTDoBZOCl3mOf8HuY6BSBntN7jY80MGvrho=;
	b=YGfxW3TkKDx4jsZBZdCGT2UhLyGP9S3Y549+LvNki0jNZoCEv2Wma9MtnXUj2814owLEBr
	yl5Pqy9vkm8z1B39Iy6gPH44DafRhhraniG4pl44Fo28GdQEPSkqw55BaXrOssmph+jGwy
	keAIHsPSnK0wnWNoTqEoR+ndHSpsr/A=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-97-Fl7nNpAtNYCRTvWQQshryA-1; Tue, 30 Sep 2025 06:59:07 -0400
X-MC-Unique: Fl7nNpAtNYCRTvWQQshryA-1
X-Mimecast-MFC-AGG-ID: Fl7nNpAtNYCRTvWQQshryA_1759229947
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-46e3e177893so36104885e9.2
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 03:59:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759229946; x=1759834746;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SVOA0Q0ymTDoBZOCl3mOf8HuY6BSBntN7jY80MGvrho=;
        b=uT9Nj8G07VO7aQTIvTMi5WEqJD4XhRhBoRUfUnry7719qX3gE1r9u6CNckUVzZmiwE
         j7/s4WKSUytiyJwo455HHvie2LQYl6thPPhNWJgpqQy3MOZF0qNHgcdsRGO2J/Y6GSu8
         IiddIAkugDKKaMv3fJPh1c6ktqnCKh73dXT7gmCQmURH8IdxtviwQksm052nfAckPL7j
         1AyMuA1M4AUkNqfiPyGKr6ggCjG5/sgz6TXCKn/Ku7DFpgkmFwjLDOtldpqb0QwWHTUY
         kIEA+61jonP+h14wlgubyxD2+LOyxgpWxMSRuUBrLwRvxrqyZdmF5NbbA44bQe9nQLqO
         SUbw==
X-Forwarded-Encrypted: i=1; AJvYcCUdEXorb3xophSgpnDt4Z4toFkRCYJg6uWkP90vsrlIchUN+yoF9f69qNBICfiJgXgrQNMkVWZiL/zL@vger.kernel.org
X-Gm-Message-State: AOJu0YxbHYquMhPAY82w11Yo1qFC5TOanwdCx+Os4Z9w7Wmmp1+68+Z0
	U2QrfoOO1iPHjCZpptXzOb/YhWhMegb2w01z63VRgbMJ8em1CXug3NUa6NAmgJMJkMIb7OETIGT
	0zr/ECPnNdfWjKXEhy+jItgusX70n769jX/LaPAAcMwUlAe8FpRJKsdEom2j/csc=
X-Gm-Gg: ASbGncuXNt3/0Ka7bGFrwc2MeR1FgZOJZAjhf+nwc3/crZg5SRiSspWXgmwq3AQSXja
	QqpZ3MOKEUCT6xY8D2YkOtS9m7LOGC/IlRXj79v5n5MOb8+kAcgkE6y6ASwtHIZdqE9Tk8v8OO7
	iGL55NdNjK/Kvu7K8s84Ul1rqkYuTqthxIumnHRdIomCUj3QZUR0uifIpwcrYxDoFS94QEu65Vw
	0k0JYTdl2VmzIHkObB0g56osa7OH3z/kPFx+T+s8P/WcLPTKPF3eeryrmA21S/PJK78ei2xIvPc
	sqLm4flN2M4Mwke2P8AI/+E0Qy1KHQY50xYngTLHR1+EzZYCJFcHOvmX1RgXgbFxQCP6osDibWr
	t05JqTJv+jpAi1RVSqg==
X-Received: by 2002:a7b:cd98:0:b0:45c:b6fa:352e with SMTP id 5b1f17b1804b1-46e329fb852mr152040265e9.18.1759229946550;
        Tue, 30 Sep 2025 03:59:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFl75M5KM/nmhV85NmfLdPrO6RTkSlsYl+oX9QrpyA/JV+GEDplaQbfuu86mibd2UCwjkweEA==
X-Received: by 2002:a7b:cd98:0:b0:45c:b6fa:352e with SMTP id 5b1f17b1804b1-46e329fb852mr152040055e9.18.1759229946107;
        Tue, 30 Sep 2025 03:59:06 -0700 (PDT)
Received: from ?IPV6:2a0d:3344:2712:7e10:4d59:d956:544f:d65c? ([2a0d:3344:2712:7e10:4d59:d956:544f:d65c])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e2ab61eecsm263007585e9.20.2025.09.30.03.59.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Sep 2025 03:59:05 -0700 (PDT)
Message-ID: <b92d752d-b4c3-4f3b-8a2b-1c7162af63b7@redhat.com>
Date: Tue, 30 Sep 2025 12:59:04 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v12 2/5] net: phy: introduce
 PHY_INTERFACE_MODE_REVSGMII
To: David Yang <mmyangfl@gmail.com>, netdev@vger.kernel.org
Cc: Andrew Lunn <andrew@lunn.ch>, Vladimir Oltean <olteanv@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiner Kallweit <hkallweit1@gmail.com>,
 Russell King <linux@armlinux.org.uk>, Simon Horman <horms@kernel.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>
References: <20250926135057.2323738-1-mmyangfl@gmail.com>
 <20250926135057.2323738-3-mmyangfl@gmail.com>
Content-Language: en-US
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20250926135057.2323738-3-mmyangfl@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 9/26/25 3:50 PM, David Yang wrote:
> The "reverse SGMII" protocol name is an invention derived from
> "reverse MII" and "reverse RMII", this means: "behave like an SGMII
> PHY".
> 
> Signed-off-by: David Yang <mmyangfl@gmail.com>
> Reviewed-by: Maxime Chevallier <maxime.chevallier@bootlin.com>

My understanding is that Russell question on v11 is still pending:

https://lore.kernel.org/netdev/aNbWEdabqXIaoo2T@shell.armlinux.org.uk/

and the net-next PR for 6.18 is upcoming. Deferring to next cycle.

Cheers,

Paolo


