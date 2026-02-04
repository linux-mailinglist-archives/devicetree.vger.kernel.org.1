Return-Path: <devicetree+bounces-262797-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OL6NCFikg2kLqQMAu9opvQ
	(envelope-from <devicetree+bounces-262797-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 20:56:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id B6516EC4AE
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 20:56:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0A9A43006132
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 19:56:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E276D38BF7C;
	Wed,  4 Feb 2026 19:56:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gCwza7Kb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com [209.85.161.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76A182868B2
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 19:56:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770234963; cv=none; b=ohX6hY8vE7RURi4mIV5nF2EzTzXGqRp3sxBxg6UVcaKE4yTrYbuoxk0iFKZkIdIKUWTkMtOysiD1CKrWc/Rpp8hZjg6S7JF1Hf4tLEKAr4Emfv2DchozKCq4EQbRiyWh5tMAnWYO3R26+dsydMTW7qRQlNULiKNsBLDS6knziCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770234963; c=relaxed/simple;
	bh=3NDWXRvp3bOH5uDpdF2dWjTXaRUpUL5GMkQZL19fToQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=M/Lhe9747CmK4kE4nuoU/tlBGub1LNhyFEuTfT93Wp8oegYPfsNzRc3VIAxgf9Uk/8GdpiyMpMOMM9mY+uSx/0Otll8i+EqcfcoDVKSVttwrrokhxnBjBlkf/WT+gAdrv12ong26D9m5dr84BeGoASvuSq6yHeRwmurRmmdRqaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gCwza7Kb; arc=none smtp.client-ip=209.85.161.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f54.google.com with SMTP id 006d021491bc7-662fca4503cso110215eaf.0
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 11:56:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770234962; x=1770839762; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=EoVIylDAVZrd8Tz0UIElqhuu5mPz/+IoA2HCapCZgms=;
        b=gCwza7KbzmY/wyZcSLKoLo/a3vvbpKNg41Otzr/DP9BlXueUVOLnSBpQub/xnDn37I
         1Y/SAJtldegal9skWlxqLwJ/piSJCN6qRzftzjbQFPx5BCdxLeMOFuNTh+YNTzYw3mr/
         5fDR7TkfmBdgkgMOJpXS+UohD88PQB0wcyLPJQhULN1D9M1oP1fKAMNQDoqdPPdZmffA
         s0qZgv8FP7467m83IYdmz/CAzf9Kva/tvzHEDOLkWl9tOnVRUtlxq7DGKKhwQMe5snEe
         g5wwEqSHZCQI1Lnpzq8ZRScQUc9KMZID8W0nWbK5nq2a3lm9seTHCHsCnqb65H7tMxF+
         5mlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770234962; x=1770839762;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EoVIylDAVZrd8Tz0UIElqhuu5mPz/+IoA2HCapCZgms=;
        b=n0Sg8M0zmiCWEwEqttYcrXWpaH57/E2eK0M8ZBJSh/PQ5o5xKlKhST9k7Oil+ddWJj
         oRQaeFiMPSUBfG07BOAn3MAC86EH6Z15R2ndpqe/Axh3M6S6xjJn0b2h8HpcoydxP4Ag
         pRqN5IeRja9Kf5+toQFKTPT1VQSUWfSHLFgg9IpPeIoSrMgEjC9dBJnY09xzAyC17Fjc
         24dj3RlykUr3rpLAV0cV9JDoxeth2jAuQHaoVvgBrTQKM2Jsg2s9j0bJPACWbPw5xIJQ
         vBNU7DChdVUF5qbzVjlyyeDBJIkfV70RrmRRkzSP9UvA+ZMldBk8gEF0wdTHMy+unKqH
         Sktg==
X-Forwarded-Encrypted: i=1; AJvYcCUJHkdXpS8KcOBATDCqVN3AUNQgGCsafdFB5Bo5KsZx6gQQc9iMvsrE1UC0P5pyF+yysGC5N51/WS8t@vger.kernel.org
X-Gm-Message-State: AOJu0YyHwkFbYIVdKpbkUYBB49Q8n5slm5t/pBEa3jyGHQOt1L7L8u3d
	WOZ713o8FTSkQxDzFKZPnRL/YOO/IgxqLmG/NAj4e6PvCXrkWYbdLEJMKW4oI0FV
X-Gm-Gg: AZuq6aJf8mpmo/SXU47VUEaGzScdMUQrp5P8N5twuXxqGXy4xWc/c0fEwrlz+axxf6L
	KJ2y1v7nBfyqELQiORyE9eJZ3CxjIYqiTo1/3aeNW9clTxuB4cbfMa2mYOg6Zh7+YAfYdiXE0YK
	LszCSyvgbHj+eBexlB5jbpHniQkTzEyDdOlssTJax5mbH3OmViFJhePBEVfpYR1nFguyglQrxC8
	0Dt9ZBydnul1HMqwOIyFRkq/xNjR6cV5fQEuyqtB2WxubcHhmk+jo9DihTS/Pm9YxteGx30adqr
	pkjVZLL5mPvGuVbKIm0zEAaK4oHXJdhLTVu7TnDCWkWM2gLX1EQ+THFLBt26dhirZVh9dWKdVEJ
	5RUXAQCB/L8oSsMlYICm49fBWP4kR9i0RfA6s4pARXgrl8SuPTGSliuRJzhupTp1A8L54duIUsN
	7XU5NLpcCfcM9LqdoyEeY4qzAqLD6qM6gO6aQ5ZZQFuxPsIIUSGOguW6h6Khcn
X-Received: by 2002:a17:90b:5808:b0:32e:3829:a71c with SMTP id 98e67ed59e1d1-35487106ed6mr3599333a91.16.1770228730352;
        Wed, 04 Feb 2026 10:12:10 -0800 (PST)
Received: from ?IPV6:2600:1700:e321:62f0:da43:aeff:fecc:bfd5? ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-354890960a0sm1485953a91.4.2026.02.04.10.12.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Feb 2026 10:12:09 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Message-ID: <ec538467-9068-4ad5-b788-e60f593253be@roeck-us.net>
Date: Wed, 4 Feb 2026 10:12:07 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: hwmon: pmbus: mpq8785: add MPQ8786 support
To: Conor Dooley <conor@kernel.org>, carl.lee@amd.com
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Charles Hsu <ythsu0511@gmail.com>,
 linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, peter.shen@amd.com, colin.huang2@amd.com
References: <20260203-dt-bindings-hwmon-pmbus-mpq8785-add-mpq8786-support-v1-1-67b041e2f762@amd.com>
 <20260204-sanction-lunacy-903e96c447e4@spud>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 np3900V20aS7eD9K8GTU0TGC1pyz6IVJwIE=
In-Reply-To: <20260204-sanction-lunacy-903e96c447e4@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org,amd.com];
	TAGGED_FROM(0.00)[bounces-262797-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[roeck-us.net];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,roeck-us.net:mid]
X-Rspamd-Queue-Id: B6516EC4AE
X-Rspamd-Action: no action

On 2/4/26 09:52, Conor Dooley wrote:
> On Tue, Feb 03, 2026 at 04:15:18PM +0800, Carl Lee via B4 Relay wrote:
>> From: Carl Lee <carl.lee@amd.com>
>>
>> Add device type support for MPQ8786
> 
> This doesn't seem very helpful on it's own, where's the corresponding
> driver change?
> 
For whatever reason not sent as series.

https://patchwork.kernel.org/project/linux-hwmon/patch/20260203-hwmon-pmbus-mpq8785-add-support-for-mpq8786-v1-1-9ff8c7c50242@amd.com/

Guenter

>>
>> Signed-off-by: Carl Lee <carl.lee@amd.com>
>> ---
>>   Documentation/devicetree/bindings/hwmon/pmbus/mps,mpq8785.yaml | 5 ++++-
>>   1 file changed, 4 insertions(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/hwmon/pmbus/mps,mpq8785.yaml b/Documentation/devicetree/bindings/hwmon/pmbus/mps,mpq8785.yaml
>> index 90970a0433e9..aec7397a29f9 100644
>> --- a/Documentation/devicetree/bindings/hwmon/pmbus/mps,mpq8785.yaml
>> +++ b/Documentation/devicetree/bindings/hwmon/pmbus/mps,mpq8785.yaml
>> @@ -19,6 +19,7 @@ properties:
>>         - mps,mpm3695-25
>>         - mps,mpm82504
>>         - mps,mpq8785
>> +      - mps,mpq8786
>>   
>>     reg:
>>       maxItems: 1
>> @@ -52,7 +53,9 @@ allOf:
>>     - if:
>>         properties:
>>           compatible:
>> -          const: mps,mpq8785
>> +          enum:
>> +            - mps,mpq8785
>> +            - mps,mpq8786
>>       then:
>>         properties:
>>           mps,vout-fb-divider-ratio-permille:
>>
>> ---
>> base-commit: 4c87cdd0328495759f6e9f9f4e1e53ef8032a76f
>> change-id: 20260203-dt-bindings-hwmon-pmbus-mpq8785-add-mpq8786-support-f48049e8411e
>>
>> Best regards,
>> -- 
>> Carl Lee <carl.lee@amd.com>
>>
>>


