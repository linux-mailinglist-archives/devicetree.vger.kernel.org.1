Return-Path: <devicetree+bounces-276663-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qBgPA8tJuWmK+QEAu9opvQ
	(envelope-from <devicetree+bounces-276663-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 13:32:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 215C12A9ECE
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 13:32:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1053030086AF
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 12:29:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF5C43C276F;
	Tue, 17 Mar 2026 12:29:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="OvcrnOtL";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="S+Q2nC5t"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B3B33C198E
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 12:29:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773750592; cv=none; b=Q2fZCuW+kvoG7C/T68C6u1g0l7jS1l/cE6trxM6j88hAc9XstvZ7fH9hxulnVOwKrmDyAy3T/DdZPO7lBn3JAg/wakxDvMnkZbWcCMvlFq0DVPHowhxTZmUJnQeSQH2wtBUoPSedG85kUU8j6mNHqjP7cT/Um7LREScBfQuwKJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773750592; c=relaxed/simple;
	bh=ek/OTR9TzEQG8GC6iLctNmmeEw1KAmo/SHR2qgOxncE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SiLHgHLa5697GHENU/FHap8ip7kMYq1bxCU2RPbNLMNPp8cgUMNRjCky8ED98DqejtIqe+S1YD0NVd5RGVluTrIDGW0oJCDKDLC8APaEWfPVv35bH88sZF9bssLGco/xNDjEuYxc7zpkp1OEzG0YURGo7z8J7CFW+q/M3ausiMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=OvcrnOtL; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=S+Q2nC5t; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1773750590;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Iuoj/plf+Uktw7AJq60yvpOQvb8+oLR4qq5/10wEIF8=;
	b=OvcrnOtLwm0vGCxTRGmdwC9dqWRlpvxlbceJTVo5U0SL5Q/VsIYBgzsozInUo/QjkDoIah
	7LLkatdrjbeziW0pfdr2rgMBE4sLTReLUg4270a9aomDPqf0Jc1chkJhBBHbqa7edHuZz+
	kEf1jdarUssp2KbMPXvGcmCC/+Wgltc=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-696--yCbAQBnMrmONUE676DYow-1; Tue, 17 Mar 2026 08:29:49 -0400
X-MC-Unique: -yCbAQBnMrmONUE676DYow-1
X-Mimecast-MFC-AGG-ID: -yCbAQBnMrmONUE676DYow_1773750588
Received: by mail-wm1-f71.google.com with SMTP id 5b1f17b1804b1-4852ccff333so65633315e9.2
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 05:29:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1773750588; x=1774355388; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Iuoj/plf+Uktw7AJq60yvpOQvb8+oLR4qq5/10wEIF8=;
        b=S+Q2nC5tRug3lyi3CeNQipOUbFsWpsjt1v3HD0F8S1mEsjet+sDDHFjQU6FBQvleM/
         vMeAo9XJjwcNiS7sLObZ+Kjichh3JDv/maPJZhT41+sq2aL91Kp4zmj/HbGAgKDCCdb1
         3A6hUQEnEbMyf4hQayLuvq1mCBEWi6lakZoIqUHrAAvu+XUelsxwtcNbo/y26QVX6MOL
         ZuxDq87035HRO4QWMRK5ieq0wRocZ8EUUKJua8AIDouQ4DlWAsy7sELd57RsxDpsnQ6C
         Bhl6MZVS18pWKwX2O+ZwZ6/YY9j6Oo+Np0hViOfoeQRorBT46oFD618hiOtshwq5/fYn
         OC2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773750588; x=1774355388;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Iuoj/plf+Uktw7AJq60yvpOQvb8+oLR4qq5/10wEIF8=;
        b=j1m8VfKCmrlkQWp+ozHi3W+KH27A79P+ik6OjRKHeuwvIbFAQGatCHynfmZVr8yv0y
         pilTX8zb5v9o8BkeZ7bQEpeaYK7IwdMlHIbJ6QKFI+nxkaxCIeKDzQ9qV/CogNYuDAVe
         OxFti88WZE6LL981xo5KydpXSf4BK1VgzocoWAthc81iEbPH2PKQbcFm/pf4/8EwF4Ra
         A9qjrTMboow6BglXxV+z8PgWJvs50ZbsAisjVOumb02yEbbwxVRmCy9dyl9lZ0aUPKsf
         5R8z0dJyvPaWPivTQuZOOoZF2z4POVWnjWchoGWt08iXJZybgaRwVw/tlkTv+RWf17QG
         FdNg==
X-Forwarded-Encrypted: i=1; AJvYcCXU0i8mYc7laTXMKUrBqikF/0Y39HkYKC9Bhn1iXCuM0cn/+VHzTZ8QUSYfpP3FosdvOKc9o5nkf6u1@vger.kernel.org
X-Gm-Message-State: AOJu0YzyFZgljGFc1Uf2e8Njm2PbDQyLb7VRDF+F3hVeXhXrEG6ydyfm
	9o5Tx9ZHr26JA3Ffu3CCE0puMPfrw081oouQ+li5drD/id/FWqSXtH27Dh67aslSaVq8scJ57jG
	qlLBQvXht6HiRAAYSOAqUZOcz5labRKfeHe8BSIfKCMApGi50mdSKkrrdU3v098118yn0Gdw=
X-Gm-Gg: ATEYQzyYLZ1KVKr85gsgj3Ya9rz+gZOpIoFG3LK2T2qs/gYQolBNARIj0UBRHG7Ypsg
	UW6VlUhph+JOwRXYJs1xU+X6t1I0qfbJpymHMcQ858VVKXdU9Ey24dQqFuIGfgCj8ToQYJ8rc04
	PL9EqlJBEWTiEuwf8vHxAEZaIY7c30lQbUuYlcz7SavcVSVBBXK7uopxlJN0jD4O3xzK6PE+wLZ
	BVPko5QFkRpr/c1AkiP3WRTEGy5JfmzJ3GZ1ZUPgxYWoYHWhjatylErac6DSTJv2yIBAU6FvxNx
	EL+cEYSWrGony+gUd3Yqc6dkCsOwOHva55APBOyO8vupofCVB0qxMXG/w68KFO8gsuyo+9CRGFI
	Vi5/cPSuYIf62LSGOtKTFRhsMJG6jZMXxOOg3YBzcXvN8aiydYIwNI9k=
X-Received: by 2002:a05:600c:c162:b0:485:3fd1:992c with SMTP id 5b1f17b1804b1-485566d2fe7mr271290285e9.1.1773750588000;
        Tue, 17 Mar 2026 05:29:48 -0700 (PDT)
X-Received: by 2002:a05:600c:c162:b0:485:3fd1:992c with SMTP id 5b1f17b1804b1-485566d2fe7mr271289565e9.1.1773750587509;
        Tue, 17 Mar 2026 05:29:47 -0700 (PDT)
Received: from [192.168.88.32] ([216.128.11.95])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4856eaa3b66sm73020775e9.11.2026.03.17.05.29.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2026 05:29:47 -0700 (PDT)
Message-ID: <fb33e9ec-d93c-45f2-aacb-7633beca7805@redhat.com>
Date: Tue, 17 Mar 2026 13:29:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v3 2/3] net: macb: add safeguards for jumbo frame
 larger than 10240
To: Charles Perry <charles.perry@microchip.com>,
 =?UTF-8?Q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Cc: netdev@vger.kernel.org, Simon Horman <horms@kernel.org>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Nicolas Ferre <nicolas.ferre@microchip.com>,
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260313140610.3681752-1-charles.perry@microchip.com>
 <20260313140610.3681752-3-charles.perry@microchip.com>
 <DH4DORKIV5RB.3P7Z2RTRNCXH7@bootlin.com>
 <abhLO8fna/ioyd6O@bby-cbu-swbuild03.eng.microchip.com>
Content-Language: en-US
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <abhLO8fna/ioyd6O@bby-cbu-swbuild03.eng.microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276663-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[redhat.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pabeni@redhat.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 215C12A9ECE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/16/26 7:26 PM, Charles Perry wrote:
> On Mon, Mar 16, 2026 at 06:21:38PM +0100, Théo Lebrun wrote:
>> Hello Charles,
>>
>> On Fri Mar 13, 2026 at 3:06 PM CET, Charles Perry wrote:
>>> The RX buffers for GEM can have a maximum size of 16320 bytes
>>> (0xff in the RXBS field of the DMACFG register means 255*64 =
>>> 16320 bytes).
>>>
>>> The GEM IP has configurable maximum jumbo frame length that can go up to
>>> 16383. The actual value for this limit can be found in the
>>>        "jumbo_max_length" field (bits 0..13) of the DCFG2 register.
>>> Currently, the macb driver doesn't use the DCFG2 register when
>>> determining the max MTU, instead an hardcoded value (jumbo_max_len in
>>> struct macb_config) is used for each platform. Right now the maximum
>>> value for jumbo_max_len is 10240 (0x2800).
>>
>> If DCFG2 contains the value then we can runtime detect it. With that, we
>> could make the macb_config->jumbo_max_len attribute optional. Then
>> start dropping it from platforms where we know we can trust the DCFG2
>> value.
>>
> 
> Hello Théo,
> 
> That would be a good idea. We could use "jumbo_max_len == 0" as a way to
> signal that the DCFG2 register should be used for determining the max MTU.
> 
> However, that's a new feature and it doesn't belong in this patch. All I
> want to do in this patchset is put the real value of jumbo_max_length in
> the PIC64-HPSC macb_config and make sure the driver doesn't overflow when
> that's used.

FWIW, I agree that is better suited for a follow-up than for the initial
bring-up.

/P


