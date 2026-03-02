Return-Path: <devicetree+bounces-270127-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YItICF27pWnNFQAAu9opvQ
	(envelope-from <devicetree+bounces-270127-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 17:31:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AD7D1DCDAC
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 17:31:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0C97D3086F21
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 16:24:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC8AD30ACF2;
	Mon,  2 Mar 2026 16:24:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="NKTC15BE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222DE2E7BD9
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 16:24:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772468669; cv=none; b=KjVi1RWNipFm+cof88OMevHQ8/4NIIg2a5tATlVP1y/unJQ8DYmDC/UOfKcvmz7iXd4TvgqAPQZbpcPMmFMFe238w2Exo+BBWaCB68NqB/z9UdRRCHARBzOh0nEBUVUhZ0hU+HKrMDFiGM2m6qk7DBAV7iUkDgEwLPKERZ46uyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772468669; c=relaxed/simple;
	bh=KUpWza/RBTivHIVw5LUpXLgkwpdnHe3OOe19SRvS6UA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jl0F/yPfQB1NPcNX9uxkcwe13hxbcCU8zev21uJ/W30aAVpjUQSPuyWp+HRWG3HOqhCnCPGqikrgD4vuL8/9fIzbxs6mp80b54bPtYYYT0g4g3GwnRAq+PawZi58j+x6Ndepn0HvW4qHTo5OgGbXd8HsQI9aml4Qyw5hQmYzA8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=NKTC15BE; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-b8fb3c4bbc4so702913566b.2
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 08:24:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1772468666; x=1773073466; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LfssTx/ZoY0j/RX1wDHgwFfkiRU0VpOe21pXTWl5HWI=;
        b=NKTC15BEIE8R3SGXehqnGvOjZfdwwyZg/2C8QL19QtkSnF96tqwXqD9TwSFV9eTjCN
         QxC293PUiugrGOSbGiG26yPfraFdND7XJi9s1P6rcXLRhbl6Zflyospw2NvcLPBFpNxB
         BUvKnB5CV534IYhehKLGzLfE5WvSr3AhpphuI+ROQwg61yQz+piVe7uofTwzCjX74T9W
         LG8S56NSeX5Su4n5HcXSp6MhacNMUiAgzErF0QJagNg/gtZTOUsKHDm5H6RbYg19wWXD
         JCGrYNNMcfyjRr+jSSon69VLyFTSIsPMXqnIXW1fmNO+Y6zqZJeGfcY9cPLYnVdqiKCQ
         IBBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772468666; x=1773073466;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LfssTx/ZoY0j/RX1wDHgwFfkiRU0VpOe21pXTWl5HWI=;
        b=E3t7pXycYxeW1Hp2IgitkwTbIGeIMAPrilUDsqiKpsOJcc7IDO14ORxkf9dGwmpwih
         G0/6zpxcFNoS2w1tvEkrQYhod2ES68I0uTa0/OfBj38YypOYTn6tFu1ipJOs5kErHEOY
         G2mIm2uxd4OSJl5yZ/7UOyXFirhNyyAPgGCZKumltX/4/jk8W9lX43N3ru0Wo36MKfoJ
         YiVcJZP1tbWqVlg1SE9bu5yR6CLE48zpQXtEXfTENWL/yUzJczPCBkWpWrqgI4tpz0ZY
         wDTRNHVxVjxkaFw04OXQfI3V6u7Hv5KkU1BTTY0wBbLfZ0mfaQZAknV7iU/raRPI/sbn
         h62w==
X-Forwarded-Encrypted: i=1; AJvYcCUoA+t6kAmsjB7bovyb7RUqxWCt6Syg4P29fEyPkKvDUD17GGM6KRs0THwyjzaRLYyz1uHhPPtpVsJ+@vger.kernel.org
X-Gm-Message-State: AOJu0YzS5cnYqW7JrovxbuRuvCdAGsgelsGWUGm1Xyw6hiklnFyN50rh
	L2pAV3w3jb0EawFPTafzCbCYyPihLSx6l8zpR6PWJFILylIqn+15P43fQjIIJ6ovdmc=
X-Gm-Gg: ATEYQzyE5U2hkQMfGM6CrSCqQRpUYgL8AihD2itOjR8+Xkjpbaj2XID6ltmmGAY2nT0
	bsaqfyJQkxBvu6Lil4mUVj9DnEJtXrdQxYNE1YiAzc8LlZiMAv6uhtN8SsC/eaOVxDj/hYH32BL
	mmNFQ365H+ysMxUYp7fgK1Fk81IR8sq7GJd/CNK4gPYR8lpvkSSphjpW2bx2whzcHKlCkudb9qr
	8UaeSjA2G4v3A0ZYvIBMb+t8RC7WkFbIZaWgAq6bY+0FfuiFoG28/zzZkqNmD7BgCwJCiWTtmki
	7susdIuJYCKL6ZMX85JTT9Ab2u9CyUMAALCix8DBFAer7RctehJJQkJkX2SOKKXIunOuQ7qeU3R
	14aQbVjpYo05g7svmUrDVT3rHiLgpW50LM0SU+0gAfi9sqsc7OoCNUlzpjJttN5YY03byWvGSUN
	2TAshpk4mPqERArhxUSV5gGoSrv3Or9kqPlrJK
X-Received: by 2002:a17:907:847:b0:b88:4efd:6cbf with SMTP id a640c23a62f3a-b9376365c63mr912505766b.12.1772468666419;
        Mon, 02 Mar 2026 08:24:26 -0800 (PST)
Received: from [172.19.170.194] ([213.233.104.147])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b935ac66feesm489214566b.21.2026.03.02.08.24.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2026 08:24:25 -0800 (PST)
Message-ID: <dc69a0c1-15e9-41fb-91a8-01d4b4188b3d@tuxon.dev>
Date: Mon, 2 Mar 2026 18:24:22 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 12/15] PCI: rzg3s-host: Add support for RZ/G3E PCIe
 controller
To: John Madieu <john.madieu.xa@bp.renesas.com>,
 claudiu.beznea.uj@bp.renesas.com, lpieralisi@kernel.org,
 kwilczynski@kernel.org, mani@kernel.org, geert+renesas@glider.be,
 krzk+dt@kernel.org
Cc: robh@kernel.org, bhelgaas@google.com, conor+dt@kernel.org,
 magnus.damm@gmail.com, biju.das.jz@bp.renesas.com,
 linux-pci@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, john.madieu@gmail.com
References: <20260227153236.55988-1-john.madieu.xa@bp.renesas.com>
 <20260227153236.55988-13-john.madieu.xa@bp.renesas.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260227153236.55988-13-john.madieu.xa@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 6AD7D1DCDAC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[tuxon.dev:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-270127-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[tuxon.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,google.com,gmail.com,bp.renesas.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[tuxon.dev:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action



On 2/27/26 17:32, John Madieu wrote:
> Add support for the PCIe controller found in RZ/G3E SoCs to the existing
> RZ/G3S PCIe host driver. The RZ/G3E PCIe controller is similar to the
> RZ/G3S's, with the following key differences:
> 
>   - Supports PCIe Gen3 (8.0 GT/s) link speeds alongside Gen2 (5.0 GT/s)
>   - Uses a different reset control mechanism via AXI registers instead
>     of the Linux reset framework
>   - Requires specific SYSC configuration for link state control and
>     Root Complex mode selection
> 
> Signed-off-by: John Madieu<john.madieu.xa@bp.renesas.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>


