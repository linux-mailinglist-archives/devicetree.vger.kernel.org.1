Return-Path: <devicetree+bounces-264701-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sMwCOsRRjGmukgAAu9opvQ
	(envelope-from <devicetree+bounces-264701-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 10:54:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7014C123059
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 10:54:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EF330301E9AC
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 09:50:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF4003570B2;
	Wed, 11 Feb 2026 09:50:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="RM4jNTIs";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="YeQcXP+Q"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CFFA35FF75
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 09:50:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770803403; cv=none; b=jszPgteraLoWjYg0vtihU0mYsSHFkhwNpuyFQo6zV49wuMuWhcAKhh9Rfq0XGuejilpZjM01wVom6gIauPeCYlTxNIuevgxeNf7EuFi+AQQdxznUBQ2sViK0b+Aih2VyLwInAdKIl7QwojnGocTMDs9AYhYSQ4n9AS2PVRDJEes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770803403; c=relaxed/simple;
	bh=p+9Mz1V92ADmyMCcfSLuQ4l6/dlIQJQ9jq0UZ0sAfq0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KETEDmj1u6lxXKTQHBv2jhqCrsumpyFgP6Om21l8Ubr/24V3UqnifQ2Kmzpimr/7r+KvewDKUr6pxWmeqzoYGTLebzg73Ew6wu8+lFuSuLiYxuLMqmq2ZJ0rGhji+w3R35svodH7WMRN0fhVu/nJi/cOtMRaQozYoS3q5yVivCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=RM4jNTIs; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=YeQcXP+Q; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1770803401;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+EffqP6+wrHAj97z7BAWDhUHSAE9exzpLHL2JCVAtt0=;
	b=RM4jNTIsmz343mrKFRlJHGpH8uHrza9/JGk1hwkRM6Ifez1WVe6CxmEXQ3ABR6hMQUqmuM
	GzY5nPPpvoCJkucmGbOVEbA+i7+9D5ttmDzOaXNsrjQIfB0RnC8JtcXHmQIuhZDGhKI7NZ
	kyJO5P/LB07tKVO9AbC9rdlXTiXdp0U=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-97-KpWBK4AFOVuXBdiJEh8coA-1; Wed, 11 Feb 2026 04:50:00 -0500
X-MC-Unique: KpWBK4AFOVuXBdiJEh8coA-1
X-Mimecast-MFC-AGG-ID: KpWBK4AFOVuXBdiJEh8coA_1770803399
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-47edf8ba319so17656085e9.2
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 01:50:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1770803399; x=1771408199; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+EffqP6+wrHAj97z7BAWDhUHSAE9exzpLHL2JCVAtt0=;
        b=YeQcXP+QaTt5zBZ39m2dDH/wLZhQ8MKrKjz/HG3+22SkY5/ZtvEog1QQsNw8Frx/Ku
         BUosB7E8QMSffTpFsv5rOoQZCdoMAg7GHbJslu8rD0ZRqsKePeiqDIBLlhM+WzW51SiM
         IdzMEqc+ZRQJaeQ5vpmtzjQ7hlauPNobWIlzXHN95NWfmBiNbOlEt9YTxhvF7QPJQyGH
         r7Ewi/pSzR61/RgBzO85oqefNNW4aQvRrWsKa3q6Og+nKwT3eaOO5FMzFyGQ+sSRgRZ+
         nqWNvvFPyEXrneKbqr7pt0sr9iRb1GriZNZ4hS4chvjlZxgplXuycPUqyQUvuEJRkQzK
         K16w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770803399; x=1771408199;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+EffqP6+wrHAj97z7BAWDhUHSAE9exzpLHL2JCVAtt0=;
        b=p8dLnt+1wA2VHsYoIHwxWs8Egtc1ImF2dj+o8xhch0ZZAdJXqqJU3XxlDtUrWnkCw8
         2ux3JJlPsz91GL04ECdccn0UGZ+1gOSWBHMqn8roQ0BzHtyQb/HNkW3eyfegYyYGL+Tm
         iZDAoKkXfU5RVrgLnwB3shzHQ5444giSkLqMQEqt3y8oXRx3rYN85iBDH40MY6+Ox7Xl
         NmmNUEsP8pvSbqwSXim20gi0xXxSgc4NmMIzbAKUGMY0sN4NaWxS47lFLN5hUac9TTqp
         5BJ1KAqV+y8xRyII0eUeUWQfwB4s/ZG3bvj84MHNUqOBuLn2/gzadFHKRBTRiPYsDojq
         cCyQ==
X-Forwarded-Encrypted: i=1; AJvYcCVfqhZBCleUTY5UdcpIgzuuYR1aMbgTEOgfZmg3wf4JtiTv2SPv1AONNhpvFdGF84h+b0XuecPpfyOR@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/3tHLUPZCw/XrKoQISA4zfsifAsa/4bOMLs9qwvCMGMvLu720
	2Tp6D390tVV4OTDRytW9upWcRq52hlQltCDUahYY6wiOlupaR1rXKLOP1wqzLPiaJv1Sa7AACgW
	RzCny7gIDg2buDthAbqvDa+jZiZzYj2Eq62K7V8Qmbj07zKeDpN5OrOBPXBfChXI=
X-Gm-Gg: AZuq6aJZwOWD8oAdk4fUHl5HLQVcI0SToJZ7V09jqm6QDZVO2CkkolDOaSVXC//D3qX
	T1CTlwElkr5ZAEoBfT/395vhi2msGh6giQ+MLLjmlyvechx/fwQsm/FBtpZ3Z+hn9YYq2movYqV
	h1MlAr0TLL7CT+7XDUgeZlU713pMVbJ0Kpzz3n83Lxu6oW97svRV9IMBJX1ckToP/w3JRLNMm8b
	boTiNX2wSQ73x3K9bZulw/w6vJY+vbH6CImBf2EsLF2JGdCh9aNhqmoxda8zIswDklFquadPbkY
	sTHKE5yg+IVAmStTbBRhOLLYTwfGCaV2B4LVb6BHFWqy6qV4pkFj7z5qYCy3K6WUqRRtTaV5dIG
	TiMajvaNwmeEznnlVbAMULAd35A==
X-Received: by 2002:a05:600c:8b6f:b0:477:7975:30ea with SMTP id 5b1f17b1804b1-48320236963mr253144835e9.29.1770803399020;
        Wed, 11 Feb 2026 01:49:59 -0800 (PST)
X-Received: by 2002:a05:600c:8b6f:b0:477:7975:30ea with SMTP id 5b1f17b1804b1-48320236963mr253144465e9.29.1770803398594;
        Wed, 11 Feb 2026 01:49:58 -0800 (PST)
Received: from [192.168.88.32] ([212.105.155.220])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4836131d4e8sm2908695e9.31.2026.02.11.01.49.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Feb 2026 01:49:58 -0800 (PST)
Message-ID: <d6393a14-fe50-426d-9dd8-5a33b2af0a0d@redhat.com>
Date: Wed, 11 Feb 2026 10:49:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v14 0/4] net: dsa: initial support for MaxLinear
 MxL862xx switches
To: Vladimir Oltean <olteanv@gmail.com>, Daniel Golle <daniel@makrotopia.org>
Cc: Andrew Lunn <andrew@lunn.ch>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiner Kallweit <hkallweit1@gmail.com>,
 Russell King <linux@armlinux.org.uk>, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Frank Wunderlich <frankwu@gmx.de>,
 Chad Monroe <chad@monroe.io>, Cezary Wilmanski
 <cezary.wilmanski@adtran.com>, Liang Xu <lxu@maxlinear.com>,
 John Crispin <john@phrozen.org>
References: <cover.1770433307.git.daniel@makrotopia.org>
 <20260207214733.m2zvh6ozo7vsc5hj@skbuf>
Content-Language: en-US
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20260207214733.m2zvh6ozo7vsc5hj@skbuf>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264701-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,makrotopia.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[lunn.ch,davemloft.net,google.com,kernel.org,gmail.com,armlinux.org.uk,vger.kernel.org,gmx.de,monroe.io,adtran.com,maxlinear.com,phrozen.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pabeni@redhat.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[redhat.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7014C123059
X-Rspamd-Action: no action

On 2/7/26 10:47 PM, Vladimir Oltean wrote:
> On Sat, Feb 07, 2026 at 03:06:48AM +0000, Daniel Golle wrote:
>> This series adds very basic DSA support for the MaxLinear MxL86252
>> (5x 2500Base-T PHYs) and MxL86282 (8x 2500Base-T PHYs) switches.
>> In addition to the 2.5G TP ports both switches also come with two
>> SerDes interfaces which can be used either to connect external PHYs
>> or SFP cages, or as CPU port when using the switch with this DSA driver.
> 
> For the entire set:
> 
> Reviewed-by: Vladimir Oltean <olteanv@gmail.com>
> 
> with some minor comments I'll leave in individual patches, which I'd
> like you to address.
> 
> I don't want to put anybody in a bad spot, but given what time it is,
> this set should get at least _some_ time in net-next before the upcoming
> net-next PR, to allow for some reaction time in case of some unexpected
> reports like from static analysis or similar. 

As I'm wrapping-up the PR right now, and the series is not applied yet,
I fear the above is not going to happen.

Since a driver is involved (as opposed to the core stack) and there will
be the usual release cycle to address issues before the code lands in an
official release, I tend to think this series should still be merged -
unless someone voices strong and valid concerns _very soon_.

Thanks,

Paolo

So it would be good,
> because of that, for the fixups as a result of my comments to be
> separate patches rather than a new version.




