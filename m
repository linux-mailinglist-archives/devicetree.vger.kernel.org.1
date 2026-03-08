Return-Path: <devicetree+bounces-272606-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +hjkA+iyrWk/6QEAu9opvQ
	(envelope-from <devicetree+bounces-272606-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 18:33:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 329BD2316FB
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 18:33:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0EC9C300A508
	for <lists+devicetree@lfdr.de>; Sun,  8 Mar 2026 17:33:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB0653559CF;
	Sun,  8 Mar 2026 17:33:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="yqkAQXht"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A44C2F60A7
	for <devicetree@vger.kernel.org>; Sun,  8 Mar 2026 17:33:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772991204; cv=none; b=iP4loIcOVCJhzmllAzq0DemtO4jwkR52Eqys6O+dtpkRhO5q/x/r6NKtiQYpgOsi3gI47wha8si9mwGUU5u1fvaa71gUdrzzq32OYByVDjh3QkxZ8p8Xrsxx46Cbi/7VQqkMJezp7bgqtqkDdMw2Hiu5OHGeXeQhXzodFhtGWyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772991204; c=relaxed/simple;
	bh=mUMp90urU2smYO/9qSB4myeg8wLSBmUovYNVfjwBMU4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tBLyfELEdV+utKb6Hhy77VGnHmx7dNAqT0appyu3mtzwCqW++QjxBLFiMm47x6EZq+7tt6Gr/IXQPh/6srfczQmdVOER+hLJuT+ykTANxFyErBrKFtafPWGk2m4yySjJA7QV8rrc/9WpMCCLG85aFOZF9hAxmfcwmEytp6F1v+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=yqkAQXht; arc=none smtp.client-ip=209.85.210.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f42.google.com with SMTP id 46e09a7af769-7d73be007a1so1361468a34.0
        for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 10:33:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1772991201; x=1773596001; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mUMp90urU2smYO/9qSB4myeg8wLSBmUovYNVfjwBMU4=;
        b=yqkAQXhtcFcjW/bg9YEPSMWcPHYjN9L2pW0lxgUa6rG5zXqVd6R+IcHblzWSHgKqRe
         qojNfM+ff8grWQovOAfvKy2P7qGq6QMHm83qjulDy6Pjgc4JsdiEgLNejmMqmg11bTF9
         nMVIUd0qshHBCy6tn9qI0SbhBs+wVM1Yh+bOtSUsygwOhNLIkttVTmGpAjJvn1j8G0zP
         uVwXZwBxoYvzgpjYyg83kavJgF5pQEY0sJwwYOxkBGSU9JechZwafCHymGroMqByn+5B
         fcEsaBo1gJiFQErRskpfq+oNuRUODFYRZgE7oWXdmlsSeY25MWunxEwwem3JrJG7vz4S
         8cEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772991201; x=1773596001;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mUMp90urU2smYO/9qSB4myeg8wLSBmUovYNVfjwBMU4=;
        b=WN9mZv6lmG/yTWfy30qvzJ3F4QCFH49JrioT7nxeGLZ46X0EoJ7RTRJYzx2S29Xtbs
         9y+fP/cVEPXN2DY1A5RKF5C6V2MtVxedUT9Gcsv/6HdJCoP6udD2AewIYIbcJ2gP7Ndj
         Vt7gMI338H8tXy/hFNJA5OeNe4QMuRuIKl9fgi+Y/eKr9YM8n4BuKB/y60gKWQbYFsk6
         fzO00v4j/wg/rNUGR+pVyoKn6hJjVwwuet+mzHcsAgk/vWgR0g1xlx9orfJK2toyC+0j
         CiSrFhK+qR43Nwd5Pgyre6mp8bOm7/EKNW+GwMjtzo+Amq79jBa0nntRvSeCvYZ5+x5m
         4a9g==
X-Forwarded-Encrypted: i=1; AJvYcCWMenMIE4SQFyAk1NAfycl+4iwzCfcL60hAB6GvuPb2OER8CuGsiGKhTMtofYTrDp5qLurlnNTeaiZU@vger.kernel.org
X-Gm-Message-State: AOJu0YxWTPMc75lArPh0xoZ86xKX6685XoNlsSySMaYlDQRFQ5lzrCSh
	H7yMDmN6SQe92pBpWtsg9njLB6gx41P2wt7qQTpMAI1zjXUZy0zJ02KeqwZRGoKWoAY=
X-Gm-Gg: ATEYQzzgQjpLKBrv9CneunBF7Jvs7pauD03GQYG0V/bzSIG7ZJnBRRUIEmWHQenSB6q
	G0L9bSwuqmiCHFAj5LdznJuibnhmfl+8IKh5B0onLusVS6GVxTUh1Kj3/RcIlCILb6aYxF2hDHK
	R1RuKkb+NHn5U5+XxP7VygymhfEO+3qqRpVWtDhSWOCYQT5AhgHYrzKpzueUrvop/Mpaob/SU9j
	3cOdkIpfg128r4E9rilgQREaLGqhNJFM8oG79KRLiserHWXUNj24pGiugb3xUKwwd7SmvRPl7k2
	dDs5r2t5h3L3TVD+LVrhaGs5tpP/IBe8owkNUwajGyYr193yS9ebGE6gQNGjSIN2+gNFPVr2VSd
	v8TUu/nEWnX+3Bc/m79zHjHjhqzaNoWwKX9t2I7oH21AIGTrs3UGYoZvN3t767weqfl8f8x6bje
	x2eCzVDg/8b7mgRZ2Zrkbuz3+b5Hsm86HGc43QcbtveJlQ114wcTnRvlHH3ssRW+26edEh2Zvzr
	w==
X-Received: by 2002:a05:6830:d04:b0:7cf:d168:2107 with SMTP id 46e09a7af769-7d727081459mr5346472a34.36.1772991201453;
        Sun, 08 Mar 2026 10:33:21 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:500:a7b4:e550:6d81:e067? ([2600:8803:e7e4:500:a7b4:e550:6d81:e067])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d74062da77sm2129323a34.18.2026.03.08.10.33.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Mar 2026 10:33:20 -0700 (PDT)
Message-ID: <f789045c-4c6f-4201-bd26-5bda587b5384@baylibre.com>
Date: Sun, 8 Mar 2026 12:33:20 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] iio: proximity: add driver for ST VL53L1X ToF sensor
To: Sirat <email@sirat.me>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, jic23@kernel.org,
 nuno.sa@analog.com, andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-kernel@vger.kernel.org
References: <20260303090253.42076-1-email@sirat.me>
 <20260303090253.42076-3-email@sirat.me>
 <3181de17-d3f6-479e-9500-f5d552bb4151@baylibre.com>
 <CANn+LW+uLQuoRbN4UMq1-pVcsJqzc0sMQNGwfwuSrTR-pNdLog@mail.gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <CANn+LW+uLQuoRbN4UMq1-pVcsJqzc0sMQNGwfwuSrTR-pNdLog@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 329BD2316FB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	TAGGED_FROM(0.00)[bounces-272606-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.978];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,baylibre.com:mid,baylibre.com:email]
X-Rspamd-Action: no action

On 3/8/26 6:04 AM, Sirat wrote:
> On Sat, Mar 7, 2026 at 11:17 PM David Lechner <dlechner@baylibre.com> wrote:
>>
>> On 3/3/26 3:02 AM, Siratul Islam wrote:
>>> Add support for the STMicroelectronics VL53L1X Time-of-Flight
>>> ranging sensor with I2C interface.
>>>
>>
>> ...
>>
> Hi, Thank you for reviewing the patch! Please find my responses below.
>>
To save everyone's time, you should not bother to respond to comments that
you agree with. We will be able to see in the changelog what you did.

It's not meant to be rude, we just get way too many emails every day.


