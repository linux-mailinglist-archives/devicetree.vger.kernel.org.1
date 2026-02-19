Return-Path: <devicetree+bounces-266687-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QOixEVIzl2kcvgIAu9opvQ
	(envelope-from <devicetree+bounces-266687-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 16:59:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 59020160722
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 16:59:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 877073002D21
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 15:59:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F43734A765;
	Thu, 19 Feb 2026 15:59:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="e/cS9kyw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f52.google.com (mail-dl1-f52.google.com [74.125.82.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 096A428466C
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 15:59:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771516749; cv=none; b=SEYa8IXHDKlnJ/dsdFJ4qcE4ND9jwzeCkqULT3gJw3ess5tD/5baG3Qcr3xDrzfY6Ynr46kiePVPUqzA3Alm+/v96WxGHWxDkdO1I21UtV8fbQy1Cc1fvL82HXIHalMi2mG+H16a5MsPINdQ+2MUYqkMTWmlRYvesR0PTPqpW+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771516749; c=relaxed/simple;
	bh=md4dM66yWhEM21TjB0SCUhCN5aOTgO4UZoBLYWZFZNw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kbOxtPbYEunm1KVNnbPM0c71RQ6IHP9syuMTk14VGr4djoPRVntlly6YDP553Kz3zjIFg4kt4/yvI/hd3ZU0jv9V4IgLFKlg6LUnStRSKccBBoOuF4GdM+Pq+iuAy2s6ig6a1g/n/ax6zxaWIlhtk8foMxvFAANUuLPOGANarTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=e/cS9kyw; arc=none smtp.client-ip=74.125.82.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f52.google.com with SMTP id a92af1059eb24-1273349c56bso1357393c88.0
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 07:59:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771516747; x=1772121547; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=HUXICjn/Tm3hLhU+d+kNXmsakx8ZYNJ9mL8MuV5zR+M=;
        b=e/cS9kyw84yEl2QB7HDPg1GDJqiaLjv9QkawQ7BMkXggSdO5Vzti44lvBGAK5reBo+
         20Mno6jSgL5T1Z1tlaA21FRQWr9O4ESH9McJXIEJmidcKYHAK8WjwWnwQWmZHa9CIo4z
         bqNDBIAyOrm/aboLD773yB62sonUMIhrHgWR7sM9Shh3KRt7T1Qon+tJf5Qo2CrzLhS6
         4pBYNh8HBEmTVXywTvU2j9fj2zf5IWm9yXHK2GIMVsZFN3KhqNdYqPOPngfwJtpQ+VgU
         ai9Utd1z9BNAh1K7iYgJTe69NRAobhbUDfE2FZWfUOEfMO1A1YrpIQaZg21dBeY5ULvc
         AtJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771516747; x=1772121547;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HUXICjn/Tm3hLhU+d+kNXmsakx8ZYNJ9mL8MuV5zR+M=;
        b=upM/qGLPi0b6eNtH5/isgFSuGIJJjhUl3lfkB/MgVTMZJmHKf1nZ09UejKaSHRA6dv
         YD00K5tJwUGNRVNJiLXXpZiFirkjM2p4H5Phao4FKsBE5X3/2mn/Z8uz5g/mEtJGWmwn
         clThbCbjPmWAA/SvDq8MmdvitYI3ZD9eXJAz0nY6XK+0N2odzLonvea9rZQVkWrTqRRv
         r4XDA5a+BA/bdbLryqxi1uC0rJjjC/4ixC+Yuiu15eT89/qkpamQvjbR0Qfi9jICOBZT
         Ka2dZ7aFGd4HPYUzb1zE5mtrxxFGc26TQi9LHKZUs3mXWGO/RzKc+TeJoSxlloE1yd8k
         wyEg==
X-Forwarded-Encrypted: i=1; AJvYcCV/mam80wOGHrqG1KHnS2TTTs19Azk606OU7WPOb8M5YmKqRbkaL2l3SU1HXy8r6BWplZHaTf0OtSFf@vger.kernel.org
X-Gm-Message-State: AOJu0YwGWu6fvhhLT0ZfKvFqTOm2qRI26A5/vFcwMyXGUXdQVDFm583a
	oUPACD0j5oHLzgJG2tLM6ew8sRHCoi3fm0/gwYWLCjxLQTHc4Tfo0JJY
X-Gm-Gg: AZuq6aK8NbmUH/TP0wGscbd0gii7fCqKJ+RRVow3VamAiswE5akhi186Z1bQ2U8R+J5
	NP9jDqefJKmm2ClskaINUqVWkfKxDpcDPmR24tDQZe0Io94LGm5sb+W4Fx/X/JbaRbC2BJ4AV8I
	x5FA4L3nJEiQuQ1dcdGUQAOLh1RWUqhspUx4neqcoII79LS7jC2hlZ+x2PBZP9Pwz+K5PBXuWXe
	1KQ7j5mQNA57tUHBWvK7IbjkUmYArtf1vp1+qNioXZzhW218CkuGvKXIRPhJVZ7v4W8ifnfkEyD
	KMd0EIq6NdiOGgg6vZF2Qm4oRulGM637bIDYGgASFzv7His+iQzrkOSl8wSntH2VBiC7zwCZ0TC
	+KkkKk1oZZUSXsWLE5UQxjag7PSLvW4NbJANRj16FQkzKxlBiwH7xQGAJRb/U3AYgE4fp7og94W
	J84ml2DxFtcpvZwZPznHCZa0/+C2dorvXPGge7RLs2xmOZwnlmvbQZkcJbxBuQJL6ASOvY6r0eF
	7TCXItk/QA=
X-Received: by 2002:a05:7022:6883:b0:11f:2c9e:87f8 with SMTP id a92af1059eb24-12741bd5b7amr8787847c88.34.1771516746939;
        Thu, 19 Feb 2026 07:59:06 -0800 (PST)
Received: from ?IPV6:2600:1700:e321:62f0:da43:aeff:fecc:bfd5? ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-12742c6dc70sm22178216c88.8.2026.02.19.07.59.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Feb 2026 07:59:06 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Message-ID: <d18824f8-6b54-4732-95f4-24f70eb02e37@roeck-us.net>
Date: Thu, 19 Feb 2026 07:59:04 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 2/3] hwmon: (ina2xx) Make it easier to add more devices
To: Ian Ray <ian.ray@gehealthcare.com>, Jonathan Corbet <corbet@lwn.net>,
 Shuah Khan <skhan@linuxfoundation.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: =?UTF-8?B?QmVuY2UgQ3PDs2vDoXM=?= <bence98@sch.bme.hu>,
 =?UTF-8?Q?Toma=C5=BE_Zaman?= <tomaz@mono.si>, linux-hwmon@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org
References: <20260219130127.87901-1-ian.ray@gehealthcare.com>
 <20260219130127.87901-3-ian.ray@gehealthcare.com>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 xsFNBE6H1WcBEACu6jIcw5kZ5dGeJ7E7B2uweQR/4FGxH10/H1O1+ApmcQ9i87XdZQiB9cpN
 RYHA7RCEK2dh6dDccykQk3bC90xXMPg+O3R+C/SkwcnUak1UZaeK/SwQbq/t0tkMzYDRxfJ7
 nyFiKxUehbNF3r9qlJgPqONwX5vJy4/GvDHdddSCxV41P/ejsZ8PykxyJs98UWhF54tGRWFl
 7i1xvaDB9lN5WTLRKSO7wICuLiSz5WZHXMkyF4d+/O5ll7yz/o/JxK5vO/sduYDIlFTvBZDh
 gzaEtNf5tQjsjG4io8E0Yq0ViobLkS2RTNZT8ICq/Jmvl0SpbHRvYwa2DhNsK0YjHFQBB0FX
 IdhdUEzNefcNcYvqigJpdICoP2e4yJSyflHFO4dr0OrdnGLe1Zi/8Xo/2+M1dSSEt196rXaC
 kwu2KgIgmkRBb3cp2vIBBIIowU8W3qC1+w+RdMUrZxKGWJ3juwcgveJlzMpMZNyM1jobSXZ0
 VHGMNJ3MwXlrEFPXaYJgibcg6brM6wGfX/LBvc/haWw4yO24lT5eitm4UBdIy9pKkKmHHh7s
 jfZJkB5fWKVdoCv/omy6UyH6ykLOPFugl+hVL2Prf8xrXuZe1CMS7ID9Lc8FaL1ROIN/W8Vk
 BIsJMaWOhks//7d92Uf3EArDlDShwR2+D+AMon8NULuLBHiEUQARAQABzTJHdWVudGVyIFJv
 ZWNrIChMaW51eCBhY2NvdW50KSA8bGludXhAcm9lY2stdXMubmV0PsLBgQQTAQIAKwIbAwYL
 CQgHAwIGFQgCCQoLBBYCAwECHgECF4ACGQEFAmgrMyQFCSbODQkACgkQyx8mb86fmYGcWRAA
 oRwrk7V8fULqnGGpBIjp7pvR187Yzx+lhMGUHuM5H56TFEqeVwCMLWB2x1YRolYbY4MEFlQg
 VUFcfeW0OknSr1s6wtrtQm0gdkolM8OcCL9ptTHOg1mmXa4YpW8QJiL0AVtbpE9BroeWGl9v
 2TGILPm9mVp+GmMQgkNeCS7Jonq5f5pDUGumAMguWzMFEg+Imt9wr2YA7aGen7KPSqJeQPpj
 onPKhu7O/KJKkuC50ylxizHzmGx+IUSmOZxN950pZUFvVZH9CwhAAl+NYUtcF5ry/uSYG2U7
 DCvpzqOryJRemKN63qt1bjF6cltsXwxjKOw6CvdjJYA3n6xCWLuJ6yk6CAy1Ukh545NhgBAs
 rGGVkl6TUBi0ixL3EF3RWLa9IMDcHN32r7OBhw6vbul8HqyTFZWY2ksTvlTl+qG3zV6AJuzT
 WdXmbcKN+TdhO5XlxVlbZoCm7ViBj1+PvIFQZCnLAhqSd/DJlhaq8fFXx1dCUPgQDcD+wo65
 qulV/NijfU8bzFfEPgYP/3LP+BSAyFs33y/mdP8kbMxSCjnLEhimQMrSSo/To1Gxp5C97fw5
 3m1CaMILGKCmfI1B8iA8zd8ib7t1Rg0qCwcAnvsM36SkrID32GfFbv873bNskJCHAISK3Xkz
 qo7IYZmjk/IJGbsiGzxUhvicwkgKE9r7a1rOwU0ETofVZwEQALlLbQeBDTDbwQYrj0gbx3bq
 7kpKABxN2MqeuqGr02DpS9883d/t7ontxasXoEz2GTioevvRmllJlPQERVxM8gQoNg22twF7
 pB/zsrIjxkE9heE4wYfN1AyzT+AxgYN6f8hVQ7Nrc9XgZZe+8IkuW/Nf64KzNJXnSH4u6nJM
 J2+Dt274YoFcXR1nG76Q259mKwzbCukKbd6piL+VsT/qBrLhZe9Ivbjq5WMdkQKnP7gYKCAi
 pNVJC4enWfivZsYupMd9qn7Uv/oCZDYoBTdMSBUblaLMwlcjnPpOYK5rfHvC4opxl+P/Vzyz
 6WC2TLkPtKvYvXmdsI6rnEI4Uucg0Au/Ulg7aqqKhzGPIbVaL+U0Wk82nz6hz+WP2ggTrY1w
 ZlPlRt8WM9w6WfLf2j+PuGklj37m+KvaOEfLsF1v464dSpy1tQVHhhp8LFTxh/6RWkRIR2uF
 I4v3Xu/k5D0LhaZHpQ4C+xKsQxpTGuYh2tnRaRL14YMW1dlI3HfeB2gj7Yc8XdHh9vkpPyuT
 nY/ZsFbnvBtiw7GchKKri2gDhRb2QNNDyBnQn5mRFw7CyuFclAksOdV/sdpQnYlYcRQWOUGY
 HhQ5eqTRZjm9z+qQe/T0HQpmiPTqQcIaG/edgKVTUjITfA7AJMKLQHgp04Vylb+G6jocnQQX
 JqvvP09whbqrABEBAAHCwWUEGAECAA8CGwwFAmgrMyQFCSbODQkACgkQyx8mb86fmYHlgg/9
 H5JeDmB4jsreE9Bn621wZk7NMzxy9STxiVKSh8Mq4pb+IDu1RU2iLyetCY1TiJlcxnE362kj
 njrfAdqyPteHM+LU59NtEbGwrfcXdQoh4XdMuPA5ADetPLma3YiRa3VsVkLwpnR7ilgwQw6u
 dycEaOxQ7LUXCs0JaGVVP25Z2hMkHBwx6BlW6EZLNgzGI2rswSZ7SKcsBd1IRHVf0miwIFYy
 j/UEfAFNW+tbtKPNn3xZTLs3quQN7GdYLh+J0XxITpBZaFOpwEKV+VS36pSLnNl0T5wm0E/y
 scPJ0OVY7ly5Vm1nnoH4licaU5Y1nSkFR/j2douI5P7Cj687WuNMC6CcFd6j72kRfxklOqXw
 zvy+2NEcXyziiLXp84130yxAKXfluax9sZhhrhKT6VrD45S6N3HxJpXQ/RY/EX35neH2/F7B
 RgSloce2+zWfpELyS1qRkCUTt1tlGV2p+y2BPfXzrHn2vxvbhEn1QpQ6t+85FKN8YEhJEygJ
 F0WaMvQMNrk9UAUziVcUkLU52NS9SXqpVg8vgrO0JKx97IXFPcNh0DWsSj/0Y8HO/RDkGXYn
 FDMj7fZSPKyPQPmEHg+W/KzxSSfdgWIHF2QaQ0b2q1wOSec4Rti52ohmNSY+KNIW/zODhugJ
 np3900V20aS7eD9K8GTU0TGC1pyz6IVJwIE=
In-Reply-To: <20260219130127.87901-3-ian.ray@gehealthcare.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266687-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[roeck-us.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gehealthcare.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 59020160722
X-Rspamd-Action: no action

On 2/19/26 05:01, Ian Ray wrote:
> * Make sysfs entries documentation easier to maintain.
> * Use multi-line enum.
> * Correct "has_power_average" comment.
> 
> Create a new "has_update_interval" member for chips which support
> averaging.
> 
> Signed-off-by: Ian Ray <ian.ray@gehealthcare.com>
> ---
>   Documentation/hwmon/ina2xx.rst | 12 ++++++++++--
>   drivers/hwmon/ina2xx.c         | 21 +++++++++++++++++----
>   2 files changed, 27 insertions(+), 6 deletions(-)
> 
> diff --git a/Documentation/hwmon/ina2xx.rst b/Documentation/hwmon/ina2xx.rst
> index a3860aae444c..a4ddf4bd2b08 100644
> --- a/Documentation/hwmon/ina2xx.rst
> +++ b/Documentation/hwmon/ina2xx.rst
> @@ -124,8 +124,16 @@ power1_input		Power(uW) measurement channel
>   shunt_resistor		Shunt resistance(uOhm) channel (not for ina260)
>   ======================= ===============================================
>   
> -Additional sysfs entries for ina226, ina230, ina231, ina260, and sy24655
> -------------------------------------------------------------------------
> +Additional sysfs entries
> +------------------------
> +
> +Additional entries are available for the following chips:
> +
> +  * ina226
> +  * ina230
> +  * ina231
> +  * ina260
> +  * sy24655
>   
>   ======================= ====================================================
>   curr1_lcrit		Critical low current
> diff --git a/drivers/hwmon/ina2xx.c b/drivers/hwmon/ina2xx.c
> index 69ac0468dee4..4bf609e25f8a 100644
> --- a/drivers/hwmon/ina2xx.c
> +++ b/drivers/hwmon/ina2xx.c
> @@ -46,9 +46,11 @@
>   #define INA2XX_CURRENT			0x04 /* readonly */
>   #define INA2XX_CALIBRATION		0x05
>   
> -/* INA226 register definitions */
> +/* INA2xx register definitions */

There was a reason for this. INA219 does not support those registers
or, more generically, they are only supported on chips supporting
alert limits.

>   #define INA226_MASK_ENABLE		0x06
>   #define INA226_ALERT_LIMIT		0x07
> +
> +/* INA226 register definitions */
>   #define INA226_DIE_ID			0xFF

That isn't even used, and the comment is wrong (at least INA230 and INA260
also support it). Might as well drop it.

Either case, is that bike shedding really necessary ? The only really valuable
change in this patch is the introduction of has_update_interval. Please keep that
and drop the rest.

Thanks,
Guenter

>   
>   /* SY24655 register definitions */
> @@ -135,13 +137,19 @@ static const struct regmap_config ina2xx_regmap_config = {
>   	.writeable_reg = ina2xx_writeable_reg,
>   };
>   
> -enum ina2xx_ids { ina219, ina226, ina260, sy24655 };
> +enum ina2xx_ids {
> +	ina219,
> +	ina226,
> +	ina260,
> +	sy24655
> +};
>   
>   struct ina2xx_config {
>   	u16 config_default;
>   	bool has_alerts;	/* chip supports alerts and limits */
>   	bool has_ishunt;	/* chip has internal shunt resistor */
> -	bool has_power_average;	/* chip has internal shunt resistor */
> +	bool has_power_average;	/* chip supports average power */
> +	bool has_update_interval;
>   	int calibration_value;
>   	int shunt_div;
>   	int bus_voltage_shift;
> @@ -171,6 +179,7 @@ static const struct ina2xx_config ina2xx_config[] = {
>   		.has_alerts = false,
>   		.has_ishunt = false,
>   		.has_power_average = false,
> +		.has_update_interval = false,
>   	},
>   	[ina226] = {
>   		.config_default = INA226_CONFIG_DEFAULT,
> @@ -182,6 +191,7 @@ static const struct ina2xx_config ina2xx_config[] = {
>   		.has_alerts = true,
>   		.has_ishunt = false,
>   		.has_power_average = false,
> +		.has_update_interval = true,
>   	},
>   	[ina260] = {
>   		.config_default = INA260_CONFIG_DEFAULT,
> @@ -192,6 +202,7 @@ static const struct ina2xx_config ina2xx_config[] = {
>   		.has_alerts = true,
>   		.has_ishunt = true,
>   		.has_power_average = false,
> +		.has_update_interval = true,
>   	},
>   	[sy24655] = {
>   		.config_default = SY24655_CONFIG_DEFAULT,
> @@ -203,6 +214,7 @@ static const struct ina2xx_config ina2xx_config[] = {
>   		.has_alerts = true,
>   		.has_ishunt = false,
>   		.has_power_average = true,
> +		.has_update_interval = false,
>   	},
>   };
>   
> @@ -706,6 +718,7 @@ static umode_t ina2xx_is_visible(const void *_data, enum hwmon_sensor_types type
>   	const struct ina2xx_data *data = _data;
>   	bool has_alerts = data->config->has_alerts;
>   	bool has_power_average = data->config->has_power_average;
> +	bool has_update_interval = data->config->has_update_interval;
>   	enum ina2xx_ids chip = data->chip;
>   
>   	switch (type) {
> @@ -768,7 +781,7 @@ static umode_t ina2xx_is_visible(const void *_data, enum hwmon_sensor_types type
>   	case hwmon_chip:
>   		switch (attr) {
>   		case hwmon_chip_update_interval:
> -			if (chip == ina226 || chip == ina260)
> +			if (has_update_interval)
>   				return 0644;
>   			break;
>   		default:


