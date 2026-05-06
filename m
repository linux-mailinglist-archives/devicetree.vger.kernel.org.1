Return-Path: <devicetree+bounces-293680-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0MUbEoWa+2ladAMAu9opvQ
	(envelope-from <devicetree+bounces-293680-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 06 May 2026 21:46:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EA3D84DFF2A
	for <lists+devicetree@lfdr.de>; Wed, 06 May 2026 21:46:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3BB9C3014C1D
	for <lists+devicetree@lfdr.de>; Wed,  6 May 2026 19:45:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65D8133D512;
	Wed,  6 May 2026 19:45:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TPcrVRgr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CFFF33B969
	for <devicetree@vger.kernel.org>; Wed,  6 May 2026 19:44:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778096700; cv=none; b=cTVeWuluzWdjXyH0LcOPTFPixDCF/GLZkFnc9O4JgDNNSG4enkf/VNS/8ufbUy0FXgHZesjVfPu8pvbu3bZ+caCJSADrkDrVzT9J8NNVBmsdaD60fMmsyakIQq0D/iU4eyuANcfU/YZb1yDhC0+3Xuamx/7TOy1rfjfn1wypgeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778096700; c=relaxed/simple;
	bh=JqGLpdLb1snUOwfA8YpmEoiA3kJOIkemImw8Vx+HEYI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Pl2ttSoh4BrUC9MYtK22YgwiPb2Ms39EnFCpsv2U1ZJEekMEiE2OxzMZTPWVsrk2szpxTLLllgYMwFEg82FLMxHAoNR7traN06euXvgu7fT4Bl8FzhI1CwuZlyjtbSLT+IEJGoSXCthM57MRwS5sqN8rFEB5wn1yuPuVrQooSaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TPcrVRgr; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-449de065cb3so77831f8f.2
        for <devicetree@vger.kernel.org>; Wed, 06 May 2026 12:44:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778096697; x=1778701497; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JqGLpdLb1snUOwfA8YpmEoiA3kJOIkemImw8Vx+HEYI=;
        b=TPcrVRgrQMVeUMCwOBfBsqipaLdXeSwBqVF+Yn50WCStqGRCd++wYEed6t8Lkx5aLK
         MBj8pQ2zK6lGizkdP8aI7HYklEyyZrgwKf7nTATr/ScKh0zdpjHSZgLOYjxBMhDz8rrF
         W3n8TVmqzKhg13HxTltxestQ3/LVYEZ204uofb1ooGgaa8+ZUe5w9JNUssQ/7zrixikX
         JKMm2QbCAg1CDRbidhiMdIJBdZEmdTWcIYcFEfquKB2bhvGB+dy7gzKnafGQey0HPBxN
         bZt+6TBlkg0SP7zLn0cUICFwcViH9g7soI2NN7RKfksgARI0B00l81TJw8zaz4JwDnPF
         Xl9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778096697; x=1778701497;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JqGLpdLb1snUOwfA8YpmEoiA3kJOIkemImw8Vx+HEYI=;
        b=SW8Th1Fbi7ULM4DS/KJy6OVurvelR9pMUAgc33DGRYJo5bFiKzV6lTY6mLBqodfjIi
         GDEI5ZbCaM78Sre8KSKYkuGphlVhhjC/xRBqtPG6acIpTEGlt65DAAAbnPb00jB9SRCt
         E8GRap3K3Qo6QV6F79JsvNVeginu89iFZjh1todXKRuLHwc2I23GQnZttIB1o6tXDBqZ
         uw3k6wXZphJ1J8lSrk49vZEYAzUhVHmfTxGu85iiYtbt0xay4pg6wjzuu/3BfuduHKRN
         T/b3mwJZYRaaGTNRASv7lKLjLHg1TCBC4GDa2MzW6lm8t5TFNz1ZmmjoKUsJouL/MARe
         dv+g==
X-Forwarded-Encrypted: i=1; AFNElJ87YtF+kJQXaZyG16PXyWIACPnHq5YtLB0a+dI9fP309zsiJ4C2+0Pr81Yq0JeIAO6Uvj8q+kT2WSFj@vger.kernel.org
X-Gm-Message-State: AOJu0YzbHJxi54aFb30GuwvZzxWq5P9g+mtG7D2mk20/tgOJjDAMIpfH
	dxbqVt8XGYTPonrEsxIcCzEAk3F6RrMqR58C8/BPp98WtXDEWUc0+WsB
X-Gm-Gg: AeBDievZojdaBSKIw4kAeG3GLL5MeXMoyd16NTY4ty6RNnsykIa+F6kKrCZ/amwz/Il
	+tLXTmBPbEDGu5Cinw3A/L7l9VnUAdMJtCjsu2Lxnf1q2DVsx/NmCPUR+wfMduEF5hycMuz8HUs
	jxuJaqXsrGamfYIWlwy7lNUHjHa9U4I0CGszLueuWElD0FTmb3SjisdkMPQrSyvcyXcw0T4k9ys
	BsyPA2MLIMjW046TAlf9/ZeG/ZCOC/Yk/JtiI7JRjqITqunIXJWZ8heDwv9adptAD5ZLXrev7lt
	PbNj9hCdlJ/Jgd7InvNj0icKD5QmrpmLezKeRpF4jcsAxqTiUwz1/bHH0zho08dR3kjMQNBS2ig
	W6Sk8zGFijgJICWz4/UulTuLeEUNBzOMscDMX1BeATMUAormAt/G+ZNOfFRAFGXdv2M5RtpUArn
	SLy6l0OhPvhJMyDUv05noiPAhDq4L0ORErEa5hH6I71GbYK0S2TW9Jxo3wv72cSjd4XS98qwFpr
	ZtO6tdvb3o9clj+3ZtlpgAC5uzSIfi58+p0lMc=
X-Received: by 2002:a05:6000:454b:b0:452:6aaf:76cb with SMTP id ffacd0b85a97d-4526aaf7700mr2060260f8f.1.1778096696657;
        Wed, 06 May 2026 12:44:56 -0700 (PDT)
Received: from ?IPV6:2a06:5906:2639:e200:6958:e55d:575e:c24c? ([2a06:5906:2639:e200:6958:e55d:575e:c24c])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45054b03d4csm15073323f8f.22.2026.05.06.12.44.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 May 2026 12:44:56 -0700 (PDT)
Message-ID: <ae4df358-4f61-429d-b8be-2f63823f05b3@gmail.com>
Date: Wed, 6 May 2026 20:44:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH v2 1/4] i2c: rust: add smbus_read_byte_data and
 smbus_read_word_data
To: Muchamad Coirul Anwar <muchamadcoirulanwar@gmail.com>,
 Igor Korotin <igor.korotin@linux.dev>
Cc: jic23@kernel.org, linux-iio@vger.kernel.org,
 rust-for-linux@vger.kernel.org, devicetree@vger.kernel.org,
 branstj@gmail.com, lars@metafoo.de, ojeda@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, linux-kernel@vger.kernel.org
References: <20260429132234.30514-1-muchamadcoirulanwar@gmail.com>
 <20260429132234.30514-2-muchamadcoirulanwar@gmail.com>
 <5f126a59-9f03-44e3-b4cd-27f70bd9840b@linux.dev>
 <CAO26r3R_TxwMwLoJMqjAG0pd2P__V-WmGkTcrZFt6CQwa2y1cA@mail.gmail.com>
Content-Language: en-US
From: Igor Korotin <igor.korotin.linux@gmail.com>
In-Reply-To: <CAO26r3R_TxwMwLoJMqjAG0pd2P__V-WmGkTcrZFt6CQwa2y1cA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: EA3D84DFF2A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-293680-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,linux.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com,metafoo.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[igorkorotinlinux@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]

On 5/6/2026 8:46 AM, Muchamad Coirul Anwar wrote:
> Quick question on logistics: would you prefer the Io trait patches as
> a separate series, or bundled as prerequisites in my v3 for the AS5600
> driver?

Bundled patch is pretty fine by me

Thanks
Igor

