Return-Path: <devicetree+bounces-272446-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aP3nOaU2rGkbnAEAu9opvQ
	(envelope-from <devicetree+bounces-272446-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 15:31:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6263822C2B4
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 15:31:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F35CC301E98C
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 14:30:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3DF92E282B;
	Sat,  7 Mar 2026 14:30:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="i/wcu+Ce"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B30E02BEFEE
	for <devicetree@vger.kernel.org>; Sat,  7 Mar 2026 14:30:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772893857; cv=none; b=nTFA893UpXNvLIXl5vm0R1Oyess/40eKtBWWMgrySG6U0/TNEBGoPaDpM4wNfyUpqiZ09vqcmBt4a9r2ERVvy9dsk1eFu3Cx/ejLDzBkgmCoeEpWC7/gTrIq+6lzA74fYe31ppTDaZY58Rfhpgta5WUFt3SkrhCbzkLgQuIY1qI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772893857; c=relaxed/simple;
	bh=rjG3r04eLpPztW5jLD6sPPC2gU4cZe1HwShupMNUyTI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NlWtsXGH0oqRqxZdfHQxL/0MedC5T1HEl35Sd9gmGX/9KgzcH7yeLc4N3fhiCyKoeEkv9D1bVNuEHZW0lv67IcYTWUmm1z00h7omua5mDEWHrEUVdd6ID3YmG5JvlcKslF3UlGvxVxqsxHkP0QONQqa8ONIGVHNhNF0qS0mFmbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=i/wcu+Ce; arc=none smtp.client-ip=209.85.222.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-8cd751a4e93so57963085a.0
        for <devicetree@vger.kernel.org>; Sat, 07 Mar 2026 06:30:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1772893856; x=1773498656; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZuAHly0ED4Nxo1iGo0eqHkUi7nPY8vgZtVUsYNCIxXU=;
        b=i/wcu+CeYr9WsqsKRqSJm105lnJmXzhUneZ2LXC6+exRrS8owU9VF5J6L43qM7bazm
         5YAxn9CuoQL/SlE7pJQAV2PpnhUv5YTuwAYqQQCohZz96yXslxyg/Ag/9Y6P9hpaDAyY
         mJD1TGp2jPJsXK9hcGQY9oBvLEBDmHvDFdlVCp3BEYc9X5/1kudqq2a4SoW2tN0QC+n/
         D6aAtfdEt8PQdyyGaBAeScwXmm8fNpnJJQDOqXaxzNj6FroTq2YA7/bo4VpHCK29Lkvr
         azKfXuMBWQ6WVB9RJIO6u2wBD3YGoM4vVlZiCNAq70nGORcGqGw+nPiEFZroouwYWDki
         T2gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772893856; x=1773498656;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZuAHly0ED4Nxo1iGo0eqHkUi7nPY8vgZtVUsYNCIxXU=;
        b=FTN3NBK7jiYjWWU/E7g1pYHp9zowaaVBrtbM9ybqPLVWLU24KFl1cSE7k38+lgH8Cu
         fR6Z+iyK2GEca2aiqMfCPqrBak1MU+5936xvk9ldYXzv45FLsO2e/bqZt1U5BFs7L1Fz
         K7+3Twv3BTn8fB5BMrlQy+41wnjR3Yg02TwBf+Mq78vVjAW15eH4k0AabVorulmP4GST
         ZmlABY9VksOUuRGrmoSfIVhbMlJbRn/gENNKyL+A5TPrHKvBZ/HO7QKjxdp789PUwmcJ
         jXIITudOgZko1vOmq7lwGAJJ40O1+Ae5KnZ6cKxOpP3RSXxmh1Blwbqwya6bCOrzKcwu
         b5Dw==
X-Gm-Message-State: AOJu0YzRcfyPkbVYfvyehFxrGXRGMVtq6ZytpKu9+0StVui//XoQ1q6W
	Y9AX9nv+juNHAIChCS4ACC5Bh90AK89dkw7U1P4k0pwgWohoQvTpsg3JxxHbLMagsW4=
X-Gm-Gg: ATEYQzx+cd3GCB0z1jUEGiFA+nptoD88/XF/TGOXCRWkjWu+wCaDgpYodjPzEyLUBfu
	bv7kpbK54NO/E0b25ExoEKr4tpxpIuOGyU5D5exQ5xjH3kTkBKmfj90zaR7/0W3Ea3oVA3h8ZKt
	+GZBX0k8i09ENYEW4ELIncaDixrwBbLAXtX8yr2TYeDEhzaOvpxlIHrnHhiq3H1/Bfpnhx+dDXR
	9Y/pk4Bxp3Q+lVl440DGpR1TQpE+ltYz+jzc7RUh0Esbu4z5r60Icsx+yGA6UTQz5X29YYgEyKm
	HHZTrlUPSYWY+uN02zRtT+0RRqb48feSXoiqhJ/16Vk2UiV4MixMIrMq8399W+djgrsHE2JJeyk
	ZnjWJwIEB5n9r/0VYLnc7dyiiPkY8tmLzKPLTZai6cTSMZ3sA2XpmG4jnsGP7rtjUuG6pM83rzf
	tNKxiSVGv993NGG9k+J/F6B8bJnQ2exQ==
X-Received: by 2002:a05:622a:15d4:b0:4fc:8ed0:d4a4 with SMTP id d75a77b69052e-508f4979a66mr69234281cf.64.1772893855568;
        Sat, 07 Mar 2026 06:30:55 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.98])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-508fd904d51sm21915021cf.4.2026.03.07.06.30.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Mar 2026 06:30:55 -0800 (PST)
Message-ID: <13a56dce-00ed-439a-ab6f-178a5205bb37@tuxon.dev>
Date: Sat, 7 Mar 2026 16:30:51 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/5] dt-bindings: arm: atmel,at91sam9260-pit: convert
 to DT schema
To: Akhila YS <akhilayalmati@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Conor Dooley <conor.dooley@microchip.com>
References: <20260227-arm-microchip-v4-0-7e2ae1c5b5d6@gmail.com>
 <20260227-arm-microchip-v4-2-7e2ae1c5b5d6@gmail.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260227-arm-microchip-v4-2-7e2ae1c5b5d6@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 6263822C2B4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[tuxon.dev:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272446-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[tuxon.dev];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,microchip.com,bootlin.com];
	DKIM_TRACE(0.00)[tuxon.dev:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.972];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,tuxon.dev:dkim,tuxon.dev:email,tuxon.dev:mid]
X-Rspamd-Action: no action



On 2/27/26 17:14, Akhila YS wrote:
> Convert Atmel Periodic interval timer (PIT) binding to YAML format.
> 
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Akhila YS <akhilayalmati@gmail.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>

