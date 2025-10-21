Return-Path: <devicetree+bounces-229206-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E2241BF4F44
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 09:27:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 41D76425C94
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 07:27:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A04D4279918;
	Tue, 21 Oct 2025 07:26:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="MTrjUrKG"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F23B327B331
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 07:26:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761031616; cv=none; b=Sc2Q/YvGL0ja7EWsSyv78B3b99D7kbcRdHKaHHj7pkP8Uvn0nwzrUMRg41NmZyZdaI0WlPfrULuHPA2MOq0YyXhhOf7Mhq5My8L6hM4RNNsq24K9p9N9VcQ13v+qJU3YioTccuSr1Py4uY1/XU//esmu/DHmxmqb6452RJk9oEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761031616; c=relaxed/simple;
	bh=8fNE3NX1DUD2apr4HvgC0SPEdbANrnlUs0eoTh5oeGk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SxwLSsd0nbNS0d1FmaDlvaXCsg5xRpUMZzDFmRnVFQDIlZ1QWq+BmM/Xudn0OCBrZk2AtQkJsjg+loYw7ec0dQp83QPTCZkSpEwDXKw+L+gvhU1K3MzTLbyvReNFX8WN7qu8sa926QjB0JeKwCplDbmyFgC3OMToUELxnFc+sLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=MTrjUrKG; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1761031614;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=EJDvXzMxMi1pDcKxo2a9jJgMq2W5icRpzq+zghF2eEk=;
	b=MTrjUrKGivUZmx1L9y7bte6AamEnSpi/tBXUBwKttrZA8LSVMApHEjGN3eg6FfJuJmFQkx
	BfiQogJHY3f5k/3fDE6iIzLmT8FKgLNIAq+V4+g3tbA8J7Rlk4np3cgz7R0QhEVdfH+FG+
	/wG2JIY6bjDBRd31DX89NjoyYnOZtV8=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-31-bsReO0EdPPyeRLqf33LCjA-1; Tue, 21 Oct 2025 03:26:52 -0400
X-MC-Unique: bsReO0EdPPyeRLqf33LCjA-1
X-Mimecast-MFC-AGG-ID: bsReO0EdPPyeRLqf33LCjA_1761031611
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-47113dfdd20so16385495e9.1
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 00:26:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761031611; x=1761636411;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EJDvXzMxMi1pDcKxo2a9jJgMq2W5icRpzq+zghF2eEk=;
        b=bKKZdtEOvdv2eyh7g+hAaAzrPuIJyvplJV55QuRcXVGK4YPbxMqc87mYdp7zGlODgL
         24ue+NEwud3cLStVIf/Khw0bAwjVqVTI1VixOsGDrqw0HeHr/b8TAdv6qPhlSl7nuWI7
         PIWReBU5UQ0eOqrk+6WL5/RAHIFrr7CzK5KpBvR2BnouT71/89MC98oSLDz/+Ei5KoW3
         6Ipa7MfWEtPah3KLOPyRTvTSZ86/YpyLQRNFwWrmyeswUhSZQ5ZdS3RD4gGK+hNuviDh
         mMOyQ1sgfiE9/cCE0WgZZN4ix821Ymy3XoNo2rcUbnbJZ9h51UdKEodgoYxoHtnwEfq/
         8f8g==
X-Forwarded-Encrypted: i=1; AJvYcCVPfbr89PWHwvr2lAMv7J7f9YhVg9s30swy8s1UWWQtihWsscfO30QXXAG/quPXRaSqSCAx1wXUR9In@vger.kernel.org
X-Gm-Message-State: AOJu0Yyzb0V/Ng5/x/O0uxmLDczJBN0QuWq7OLMwz7knJiZ2MAnEjHYi
	ZP4jxUxscjE2CBgAeLUApNMtsCCTVuMVZkunIncDZrH57o0vGX2HcCucdDjlDKnwVRhZX/vrl88
	KnOBdTQ0HsHOR61S4zhYhikAypF/7/mx1+H0S533M6funkj5vqg5QPYtmzoRexCM=
X-Gm-Gg: ASbGnctDY/cAng5ZJiuS4WFj2nDTodQ7+1k9uGDajBcw4MiWW7ap2abjM3JgWxwtDqC
	dejprGdHESqIU7dI/Vq13Jj0xU6hqSVoN99iPaN1fYMC0hVGJLWfS8DUfn2zjG/WdHUwF27T0u0
	IrC50SKD1om18xbLF8MpkCsTjoRXaOtDvBXz4dEAgS+K8ysIJvWjU7MuzSK0VgLV8YznQ/Dzgfv
	fb+Z4bAw9FpbfaBHx/orOWODeTlQyICHqw/Z9PWNUDpSqQnDz8ZeUYFQXwgiS1JOqrVuenQRIGJ
	dgiZ10Igv5itmKeSA8sfYggQ4jNr9J3QRts/1G8iTrnv3mhOgb1bCeGy0+0Howa0PL00GMDZt7Q
	fFboRNj4gpAROjIO+VAE+O5qbBUqBvMj2RZBYub2rHenEBqg=
X-Received: by 2002:a05:600c:540c:b0:471:12be:743 with SMTP id 5b1f17b1804b1-471178a3f93mr118161575e9.15.1761031610911;
        Tue, 21 Oct 2025 00:26:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFkWSWmUORa+H15T+v49lrEDk0detT0U6yn7DgHaIoUivTMeJ3869JPfks9PXOdp64Mjfcqeg==
X-Received: by 2002:a05:600c:540c:b0:471:12be:743 with SMTP id 5b1f17b1804b1-471178a3f93mr118161325e9.15.1761031610532;
        Tue, 21 Oct 2025 00:26:50 -0700 (PDT)
Received: from ?IPV6:2a0d:3344:2712:7e10:4d59:d956:544f:d65c? ([2a0d:3344:2712:7e10:4d59:d956:544f:d65c])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4715257d916sm176481805e9.4.2025.10.21.00.26.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Oct 2025 00:26:49 -0700 (PDT)
Message-ID: <11ffb7d0-4e52-496e-84c7-0d93bf03e4cf@redhat.com>
Date: Tue, 21 Oct 2025 09:26:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next 6/8] net: enetc: add basic support for the ENETC
 with pseudo MAC for i.MX94
To: Wei Fang <wei.fang@nxp.com>, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, claudiu.manoil@nxp.com, vladimir.oltean@nxp.com,
 xiaoning.wang@nxp.com, Frank.Li@nxp.com, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 richardcochran@gmail.com
Cc: imx@lists.linux.dev, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20251016102020.3218579-1-wei.fang@nxp.com>
 <20251016102020.3218579-7-wei.fang@nxp.com>
Content-Language: en-US
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20251016102020.3218579-7-wei.fang@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/16/25 12:20 PM, Wei Fang wrote:
> @@ -635,28 +649,10 @@ static void enetc4_pl_mac_config(struct phylink_config *config, unsigned int mod
>  
>  static void enetc4_set_port_speed(struct enetc_ndev_priv *priv, int speed)
>  {
> -	u32 old_speed = priv->speed;
> -	u32 val;
> -
> -	if (speed == old_speed)
> -		return;
> -
> -	val = enetc_port_rd(&priv->si->hw, ENETC4_PCR);
> -	val &= ~PCR_PSPEED;
> -
> -	switch (speed) {
> -	case SPEED_100:
> -	case SPEED_1000:
> -	case SPEED_2500:
> -	case SPEED_10000:
> -		val |= (PCR_PSPEED & PCR_PSPEED_VAL(speed));
> -		break;
> -	case SPEED_10:
> -	default:
> -		val |= (PCR_PSPEED & PCR_PSPEED_VAL(SPEED_10));
> -	}
> +	u32 val = enetc_port_rd(&priv->si->hw, ENETC4_PCR);
>  
>  	priv->speed = speed;
> +	val = u32_replace_bits(val, PCR_PSPEED_VAL(speed), PCR_PSPEED);
>  	enetc_port_wr(&priv->si->hw, ENETC4_PCR, val);
>  }

The above chunk looks unrelated from the rest of this patch. Perhaps
worth moving to a separate patch in this series? Or add some comments
explaining why it's needed.

Thanks,

Paolo


