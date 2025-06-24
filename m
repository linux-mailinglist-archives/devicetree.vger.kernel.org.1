Return-Path: <devicetree+bounces-189030-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E3213AE66AB
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 15:37:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7BD20177D15
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 13:37:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E30B32C08A5;
	Tue, 24 Jun 2025 13:37:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="CZwLVjHV"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D36926A1C7
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 13:37:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750772241; cv=none; b=KiM5aul534r4OlU84L4175+BomIMhHssA05WHF88pCM50z8RSb+4pzBBHdnKqIEr2JZoPlBIDX5IQiOzcmR9crTQ9Rdhs/vbzYGyAfRmArvvrgIQhr4YW95wVwjD4rxmZTsWJe2yLtFATNUdtGz6o0fWei4i5sPEoTZ8DvbnNOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750772241; c=relaxed/simple;
	bh=w/IDMkNJyCUUzyRjdmPql/8lwhxsnPEA40uW7VzKY3k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BbMxRGriI75IZayS8slayQi2SrtDdq2JfANFdDK82OlDtufMCI0CCZoOalo6LtWqh/r7cpRV5KRfriUxo9Ndj9mRqQ2Rcbc+dcMU/2kDzY0XJ+QdlPZ6xAdSfcE++stLZWl8t88PTspHRAGwR2odoHqw/jkvBWDXFjZu8RN7nbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=CZwLVjHV; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1750772239;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kdLNi82PU1S92ENBnDfDaMCmZjF6GA2bHRYIMCa5Xtg=;
	b=CZwLVjHVxraU7h8CzE7F4dY+qYxZjBlszzfB2qNF8T7B5NH3cDWAwgmtvgng43I4APshJR
	93obTMNXzv64NccZ/+d1OyhW+NrfDcuyrZtTmzUt1DUluG0H0W1Pm+cg6Fby5rv17qZu5m
	6sOhi5UPy+JTI3voewjoeg1gAGclF+Y=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-470-8c-I0Lr7PJeAS-84CcXHgQ-1; Tue, 24 Jun 2025 09:37:17 -0400
X-MC-Unique: 8c-I0Lr7PJeAS-84CcXHgQ-1
X-Mimecast-MFC-AGG-ID: 8c-I0Lr7PJeAS-84CcXHgQ_1750772236
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-4530c186394so24001855e9.0
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 06:37:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750772236; x=1751377036;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kdLNi82PU1S92ENBnDfDaMCmZjF6GA2bHRYIMCa5Xtg=;
        b=qvHg/YN4aNEIYn63wRL0y0xJ1vFrseKBkokdYj41qzX6k5Ul6haXTCmyzvYTSlBLiW
         mf0UzymO5fE6EBCn7SGLyP5PEHFxUJ+aQX0gY5P3lM9LNg3nwkSpKh9D/4PHtELIRaGF
         V1Nt0/WiF3dfSe0/Ue4angorWsNniEhlQ9H/B9Di7lkGai4e15cA5233kXstFZZ1+2Qh
         MhG9Yl5z8SyFnCT5lHE5fUPvc0mXAi0y8A8OzvSn6+yyDF7FX217ppXjHnd1012ujFpA
         lz9xxRIk5gtQhaz1gE1WiDHUagYPodKzjMQoJk/eK4ZeMm7JYfwb5lZB0UFmK6uIP966
         HICw==
X-Forwarded-Encrypted: i=1; AJvYcCXEMV7x/i+Ve2DmQuWI5bnRkM0ZbkoJunnKtgHokLoJ9K4XjVgTbXcQ1/DJt4HAy8KIIBT8AjkJ+qjD@vger.kernel.org
X-Gm-Message-State: AOJu0YxGTyii9VHIfMuqAKuYJGvIK81YATYSM1Jl+tE+9zM5M0kIAbXU
	W/INBulXh07RF1rHAZaiAoHZRph/1GjSLLnzrvgYl0Tm+lKONqFfgS5nuEBspy6dXXUIHXc6Bgz
	TGEki6mKYXpPcS8xbnqx1y7EsbO4shayOgUWjeHa6qwylSPDK5WOMIEms5K8pR6Y=
X-Gm-Gg: ASbGncvHuzeOzndE907CGVTdnw0rdQ4Tcx5rCxl0vRtCUX/8qwqAGa2zUDJgybuJIiU
	pxdaqjBdcrheisf12jcBhn+gbM9B/g0ODVkMV1PriZZui96UPK1pfYRUJXsfcsFyO9GkrcC04CC
	1ysapzbF2zNdCm14/mBFVYvsDdiBvXS3bti2UiAcPzoDSRR+1qmTgH471H5G7CJP+Lqrh/q7yI2
	s46+lTLFT1IxYzSGqP42/6aiNI4q2lHo+aF2l0/U/FOjBgIQ96QDZspTatY1BcbPxbI1e3KatoV
	lGfT2OREUpjZ+fyTcqS5KGbe9FoycQ==
X-Received: by 2002:a05:600c:8b67:b0:453:6ca:16a6 with SMTP id 5b1f17b1804b1-453659c9b5cmr178056665e9.10.1750772236039;
        Tue, 24 Jun 2025 06:37:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFCDctwjBQaSlAXYgDwmWAr33weRLLnC8b8hgrnzKmiQvzZklRmZK8SJHQ3VS2Chx7RMg6ong==
X-Received: by 2002:a05:600c:8b67:b0:453:6ca:16a6 with SMTP id 5b1f17b1804b1-453659c9b5cmr178056295e9.10.1750772235622;
        Tue, 24 Jun 2025 06:37:15 -0700 (PDT)
Received: from ?IPV6:2a0d:3344:2445:d510::f39? ([2a0d:3344:2445:d510::f39])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-453646fd589sm142741035e9.26.2025.06.24.06.37.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Jun 2025 06:37:15 -0700 (PDT)
Message-ID: <17f789c6-cf64-4940-ac7b-0107b7b96031@redhat.com>
Date: Tue, 24 Jun 2025 15:37:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [net-next v13 04/11] net: mtip: The L2 switch driver for imx287
To: Lukasz Majewski <lukma@denx.de>, Andrew Lunn <andrew+netdev@lunn.ch>,
 davem@davemloft.net, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 Richard Cochran <richardcochran@gmail.com>, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 Stefan Wahren <wahrenst@gmx.net>, Simon Horman <horms@kernel.org>,
 Andrew Lunn <andrew@lunn.ch>
References: <20250622093756.2895000-1-lukma@denx.de>
 <20250622093756.2895000-5-lukma@denx.de>
Content-Language: en-US
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20250622093756.2895000-5-lukma@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 6/22/25 11:37 AM, Lukasz Majewski wrote:
> +static void mtip_adjust_link(struct net_device *dev)
> +{
> +	struct mtip_ndev_priv *priv = netdev_priv(dev);
> +	struct switch_enet_private *fep = priv->fep;
> +	struct phy_device *phy_dev;
> +	int status_change = 0, idx;
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&fep->hw_lock, flags);

The above kind of lock look incorrect. In later patch you use
spin_lock_bh(), and the context here is never irq.

Should be spin_lock_bh()

/P


