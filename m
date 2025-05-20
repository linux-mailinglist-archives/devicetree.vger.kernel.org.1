Return-Path: <devicetree+bounces-178757-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A9AABD13F
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 09:59:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DB1D6175C57
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 07:59:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC27A25E47E;
	Tue, 20 May 2025 07:59:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="XItTF/Eb"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD4525E464
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 07:59:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747727950; cv=none; b=rAnukjXQ3jvtHm3UbSuFXc9pesHgLHtH75Dx5+Wg96/7TFh6rX4dd3p31pfr/MQeVTjINQns0Vz0zNzchP8Kh0NU3yVUQyWsJao8lYVcdVwXtHcvZNIrppmx0Rnq+7WBPIIw+Q76LTkoNW9UgLf458aDHm6TyWp4nQQ+DbUq4dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747727950; c=relaxed/simple;
	bh=Ln8Xsvd3N5Hw4TUt2qHdWEqSjFP3Z+J968tVF6I37Jc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WVKzSHENG5EUCuk/lF62qM0UuPu7fCRqQ0fWU4jA39J+BYKniETfpTop10/l7yyywsYvxfFXniZey814QdxBv8MO6GwHznWGly4YlW1T+Ft+uZCj1H6NQvXs6GvPFKdzG7ouoookimuasTWwaAlUkMoWcbb4dL9bn2rf1WhuLPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=XItTF/Eb; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1747727948;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xu6VvED+PoElv/mNcoKB85P9VgSxTAqocoeIrFfvu/o=;
	b=XItTF/Eb7Mlzv3wJyXD1v85C4OFZ0y4eRZGrzOTbepkrb7aQUFjz852ak7L0HHWO02keAj
	ZAepk8Kcew7JfnRlgD1HNSP/x80YrcoVr/79sKsTf137Mj0L/qn02guEZaof0RerlBZEw0
	g3bF2h1NZFVS/SAJ+3affTnySX213Jw=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-92-WII5lpPsOTyrdDMutTXwPQ-1; Tue, 20 May 2025 03:59:06 -0400
X-MC-Unique: WII5lpPsOTyrdDMutTXwPQ-1
X-Mimecast-MFC-AGG-ID: WII5lpPsOTyrdDMutTXwPQ_1747727945
Received: by mail-wr1-f69.google.com with SMTP id ffacd0b85a97d-3a36a4c70b4so890082f8f.1
        for <devicetree@vger.kernel.org>; Tue, 20 May 2025 00:59:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747727945; x=1748332745;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xu6VvED+PoElv/mNcoKB85P9VgSxTAqocoeIrFfvu/o=;
        b=OK9xRrPxNYtey2CcVo/bPWI4oRwJ4LOyNcR+Fg0EVg2Vlb6uZuzBU/d3dTff8n1u4Q
         W4LOSdsNzsgHW5ZgaXJoqk1oiLLG0aOLxGjY2MkLy4XwGA6EnkGQPbhPY4tYX9TrbmC2
         hMe5QAwpEEPg7aTGHMLmtE8X0HDVdDWmcdfUGBVZubripdAsCaepsHciv6+jdUZ6D99W
         wKtOxj+MeZQ0A8m91a9+GScGtPdH1xyfhnsk32o+Gmbc9wZvENabByj1ZkzZHFSWEw9+
         dMt0Ze7U0+I/NugDX3YRtoza2FxLrcDvJOk8fbyaLYHZbqko1+e4mmcZQNhCsUK8a4Dv
         Rhlw==
X-Forwarded-Encrypted: i=1; AJvYcCWBETF0l5kiIyANaeJypimrdT1Om7VM3vvF6C35YvRas97qjqCOEBL1JS/2iq7LRLZugKQoP8UNOA+Q@vger.kernel.org
X-Gm-Message-State: AOJu0YzzYTBokmrOSZFg/TaaUlLtzxE7bSnVpDKhJvmfEcjWWpN6vqEP
	8g1YmTUQdKyitZ6Mt5AP2KVvoqQ3NU45OA61YH6iBIKTFYDh3iAaIKnuUQ/pjpP1IqttcRtRA9u
	Xo3FeWrhd0LEUlRdEIDBRQnRVsjf93jx1WEEdt92ApICImzbjNt5AV4tFyixgY+w=
X-Gm-Gg: ASbGncuPSDrc4N4oJ6xUbF6vzWj6Tr2wP63QayJ9KvGKVUUNCm2Pog/YOtYBjfsJoGg
	Ol1J7dB1AITW3ret+sEAx9sz1sqHvf73BdSb0IKd9kvqEFAre+6mrd4WLSgdDKmcF9BnWrC+CDb
	2R0j3sFLVZGAqVK5pqJtZakGjuCpu4w0twasld2qIvXNrsTGe+neBWqZfD/8rKmr/+SicIbEaY2
	Ndo0m31fMb2xXWcLDgrOuFEECKCO1jMyLeigzB10PFf+1P3/mSzO//aL0cGiFZYtTUnMKXL1GIM
	s7Min5aydp6YeckkBxuY6/Rxx+HtxNZOr0Nx61o7Q5TTfhcq0tdpK634dkc=
X-Received: by 2002:a05:6000:2908:b0:3a3:6c9e:1691 with SMTP id ffacd0b85a97d-3a36c9e17ffmr6618046f8f.53.1747727945392;
        Tue, 20 May 2025 00:59:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHc5/i5xy+aD6gy/JpszOV8ylA+VdUGvB4VOQl1RBojQXejgZiG2fyh3K00wLwDiPqS0pH1Mg==
X-Received: by 2002:a05:6000:2908:b0:3a3:6c9e:1691 with SMTP id ffacd0b85a97d-3a36c9e17ffmr6618016f8f.53.1747727945006;
        Tue, 20 May 2025 00:59:05 -0700 (PDT)
Received: from ?IPV6:2a0d:3344:244f:5710:ef42:9a8d:40c2:f2db? ([2a0d:3344:244f:5710:ef42:9a8d:40c2:f2db])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a35ca5a8c4sm15274792f8f.27.2025.05.20.00.59.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 May 2025 00:59:04 -0700 (PDT)
Message-ID: <a202f5ff-2ead-457d-8f1a-9f7ab5cc9243@redhat.com>
Date: Tue, 20 May 2025 09:59:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: net: Convert socfpga-dwmac bindings to yaml
To: Matthew Gerlach <matthew.gerlach@altera.com>, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, mturquette@baylibre.com,
 richardcochran@gmail.com, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Mun Yew Tham <mun.yew.tham@altera.com>
References: <20250513152237.21541-1-matthew.gerlach@altera.com>
Content-Language: en-US
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20250513152237.21541-1-matthew.gerlach@altera.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 5/13/25 5:22 PM, Matthew Gerlach wrote:
> From: Mun Yew Tham <mun.yew.tham@altera.com>
> 
> Convert the bindings for socfpga-dwmac to yaml.
> 
> Signed-off-by: Mun Yew Tham <mun.yew.tham@altera.com>
> Signed-off-by: Matthew Gerlach <matthew.gerlach@altera.com>

Rob, Krzysztof, Conor: looks good?

Thanks,

Paolo


