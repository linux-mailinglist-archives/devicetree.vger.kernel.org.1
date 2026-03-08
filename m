Return-Path: <devicetree+bounces-272592-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iMfQApCerWl75AEAu9opvQ
	(envelope-from <devicetree+bounces-272592-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 17:06:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 745C223103C
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 17:06:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EFD02300FB71
	for <lists+devicetree@lfdr.de>; Sun,  8 Mar 2026 16:06:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AAFB31328C;
	Sun,  8 Mar 2026 16:06:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="I8pZ9D50"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B889C285C80
	for <devicetree@vger.kernel.org>; Sun,  8 Mar 2026 16:06:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772985987; cv=none; b=tMWrTPAwk1DXmgmMNtcG4cYgSNis4x8R1rgV/w+9wYSwZio+aCT7dHsbaWYckXNC2gzT47LkDQBKx/6yipi9Q3Xpj75n2WvGEm2fBAKIV+UAIuYy7K16aGxOQrnPeT2kKle3lkkrzx2OlSXSdJQKPQDOJUUqv6e4tb5/bbOIUmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772985987; c=relaxed/simple;
	bh=gJZ+q3YD6LONyc7m2ciY9V6qsSwawGkHbIDpc3vZxFI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=g4mTOpe8VeYwUsaOOyivNl48UmbB7hTko+1FKvRacgCB4w79xETBfdCG5t4+fWpa9W98mTvxDHQ30HF5vs+KCv27i/sG294/bUDaz344UpTdMxoUjaMXzwPO6S3FkU+PoOXpJD0m9NilIkbFZ7z5GEl+qZXdDp3cy3J4SWa66m0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=I8pZ9D50; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-439bcec8613so5309102f8f.3
        for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 09:06:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1772985983; x=1773590783; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0+oeMLB3/japs3sjO+LPad0LBSfq76o6HaAy/Tr8FiQ=;
        b=I8pZ9D509TlhOSAS7Jrrok2/ln0pwedIGOfqm/GrrKkLVxcfjP4VO1QMAGensdO6yz
         UZ/puwARIbXnNATyeE69MnEMZqhUUqtKRHdQVtGwlB5E09fGuqNiL0z+SJou0ISoPx1x
         BU0rRBx/cEksDYr9FO4IUUmAdwy1Y+nKrrbAcq5UpAoLRB6A6XDoPpg/bDFSvAIfbE4Q
         UUJ7Pjg6GXoQCti8dB9cF+BL2B0I7eqUY+aHBbVwvUqKA27cBz4dETfht5UAjolNCfk7
         ONDjja0+r1HK9xHrwFYbSY2mowDG9qHIwcMPCvDZL10HwsV1Q3y9jyWFHOXU3TEOpYJh
         O8tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772985983; x=1773590783;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0+oeMLB3/japs3sjO+LPad0LBSfq76o6HaAy/Tr8FiQ=;
        b=HdJOAjo5nyor3e2oWzBv0Y+xQ2rAeW3V5idKowjs5YDBagDyBuiTPnhkE6m5xj+82a
         rcDAYkwWMlEuCc3C4B+sVhX3eYjzj0v5qONO+9BIDAQbRk6JQawGB4gLi3okVGGzIM2/
         2d1bdQAaup1WMn9D7AmXVaN+jNvgIJgjYTk6lb6BX0GKfyaxaBfrUP+OA2X2eMZpS2lZ
         0ZpdxblomoibPU/mD5egZrcCTFhWaNkn7ypCb2IDqK64y9Ei0z6mgUwUi2HagU5WRD05
         4NVpnJgkon6U0MiIUioSFcQLWGLSdMbAum9HuVLVrHU/Uqos2ByRxl89IGLuzIEYX6F3
         hUkw==
X-Forwarded-Encrypted: i=1; AJvYcCX78pldavmTPWMOkrOW3FfrT/iMxZlYQ8DUoZafw5siVsXnw38A17PuELRbIS3cfUdq1n6gupvmIyWY@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+NBRO9ZpntIOM998i1+RX/PeKbH73eZGHUwaKvRMYxEjicyMA
	mpo2bKjrk/Q1CYQy/IaEGh4vln/PxvmvTnZTe4rUM8J4tvTaFhhD2qy1btFbblvLwC0=
X-Gm-Gg: ATEYQzxvI7qawjks3hHYRSlIXUrWFCv3tqY4gpCNqHymvZbnmQZNr8yto7CN3JwpzyW
	ucfpoNIqwUskHGQzSRt5ZiJzp7Azklk8xA4bDnn2Utzdbp7hTKi4CXiCGLnbeSjDL5Y+fmh+8xI
	Npnlt07TsqWQXLuTW8bW5yeQHPFuumUVjC7adiSBCPzqWweMpeW9uJNv1mY45bvRwnwDbxZ+Pyi
	/xu5h1Slp4hxsNGoA8O0nU+Xj83028a36f2g0j3DgVcxneVLnpO2VSQco5IkxFjQZeDjlQmySA9
	ZVWMgNaR9xUCxB8JPalfT4DhDuiB6jb8w4xcvm2Tk4dIAFY87L6y9//t0z/hPnTCJ05oy3GJN3K
	haedRUbPgqObVUVtFwydkL6/1ULcVQDQejpOl9vtMzkRtNbxUsiEBh0L/5MzeQ4GUCDxFHVHtdD
	Za3B6wc793UjNjMVDqzc/V83wIGN3+cw==
X-Received: by 2002:a05:600c:1c0d:b0:485:38fc:7069 with SMTP id 5b1f17b1804b1-48538fc72d5mr34821405e9.23.1772985982454;
        Sun, 08 Mar 2026 09:06:22 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.98])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48536150e61sm70428805e9.1.2026.03.08.09.06.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Mar 2026 09:06:21 -0700 (PDT)
Message-ID: <0d324ec5-a13d-4fdd-818d-85eea60773b9@tuxon.dev>
Date: Sun, 8 Mar 2026 18:06:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/5] arm: dts: at91: remove unused
 #address-cells/#size-cells from sam9x60 udc node
To: Charan Pedumuru <charan.pedumuru@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Herve Codina <herve.codina@bootlin.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260307-atmel-usb-v3-0-3dc48fe772be@gmail.com>
 <20260307-atmel-usb-v3-1-3dc48fe772be@gmail.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260307-atmel-usb-v3-1-3dc48fe772be@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 745C223103C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[tuxon.dev:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272592-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[tuxon.dev];
	FREEMAIL_TO(0.00)[gmail.com,linuxfoundation.org,kernel.org,bootlin.com,microchip.com];
	DKIM_TRACE(0.00)[tuxon.dev:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.969];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action



On 3/7/26 11:16, Charan Pedumuru wrote:
> The UDC node does not define any child nodes, so the "#address-cells" and
> "#size-cells" properties are unnecessary. Remove these unused properties
> to simplify the devicetree node and keep it consistent with DT conventions.
> 
> Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>

Applied to at91-dt, thanks!

