Return-Path: <devicetree+bounces-258779-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2AhQKeMwc2mTswAAu9opvQ
	(envelope-from <devicetree+bounces-258779-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 09:27:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E697672752
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 09:27:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D2AC4302D5FF
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 08:23:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0D3334DB5F;
	Fri, 23 Jan 2026 08:23:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="gAJc21XA";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="OduvjbgJ"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 673D3314D1D
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 08:23:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769156626; cv=none; b=tA87uOMQ6ROpJtTL7SaBD+c6nepNDhJC8wJkV97e4RekAoXRNO89nqbgDtc81JVioxyTxaFlxmpsWb18zENdrkzpVLX83soRQxqpk2Jyo7WMrC7O+FBW8oZWapHi04/dwL1M6c6Q2sfk/8m7SZhNzlbUkdcWk/BPSkbOJ9GjxU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769156626; c=relaxed/simple;
	bh=sk3MTCTd7WHqwWe4zDqa/m3KB8fQqAO1HvbuEq5+7vM=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=DRYnsQZCIkupYoord+lYcxJHZCgseehNqAWg/5NfpCWK6UXRUhFmHX/Y6o2NyH9tOOYAmDYAxzOXV/qmARMDxG/Uh2FAPNrxIIdrMtvc9rHnAQ2x0e7D+wuV6SxSQgnL6/oKNkiR9WLt5xyxyanF35tkVfZWke4nFj42fj2oSjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=gAJc21XA; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=OduvjbgJ; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1769156621;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=CD+T1KpcisOIdjn7OKGY4SJv7GT2lLztb8OPYUclLjw=;
	b=gAJc21XAeqUpLjWuxbFYLUChHHe9jNpzbyO+guoo0LT2xgdqeC3XS2dl9mZ5aZlj+/uyxD
	VJ2WA+albS7srsQSKTIZ+6ASmUWtTJUxek+GLYkkA4PzGsVQWFW4A7FNRD097FCAURJvJ6
	6fSc7bpnnMg3igtW4I0bXSan8fG9KSc=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-628-85gzAQGtPe2tadkHQ3PVNQ-1; Fri, 23 Jan 2026 03:23:40 -0500
X-MC-Unique: 85gzAQGtPe2tadkHQ3PVNQ-1
X-Mimecast-MFC-AGG-ID: 85gzAQGtPe2tadkHQ3PVNQ_1769156619
Received: by mail-wr1-f69.google.com with SMTP id ffacd0b85a97d-430fcf10287so1721614f8f.0
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 00:23:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1769156619; x=1769761419; darn=vger.kernel.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=CD+T1KpcisOIdjn7OKGY4SJv7GT2lLztb8OPYUclLjw=;
        b=OduvjbgJyJmBU74KsGbPTa/R+JFDf/EmNtCQ/9vegC79V67azvXXWQXXmtXgSfX4BF
         c2zkFG43cZ+C96Z6+h1iFzpLCalkXlCHhdMKtCtWeeU69SYDMoaYhxLT+9dp+CI+kx32
         xKtf4Kpc0QjcgnbsAOLk4Q6Ve6O99f+RFXgpyO6iLOGCKvhGiTEU8ZxQtOSoXEFLoGJN
         Wu2wGmy7wGFIjuziPUMdXQA7dHmtvLqd/pX0tnAXQPUbn6wMFjVfuREZ8/mCKj06qTwl
         7kOrvebiru1JjDBUTu2Hzobw4cw549v/FFtGm8p0zsWIroznW0R9eZRIrGNYTR+D8LTS
         zesA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769156619; x=1769761419;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CD+T1KpcisOIdjn7OKGY4SJv7GT2lLztb8OPYUclLjw=;
        b=a/VTH08QS7DMnRG+wp/KmQ6QfWqjpm3vG+KRb3/6dl3s0Bq1oa8wWjTQP2ePQ6NXkN
         I6/PyAJYi4auKnR57bFVz2CIgk/bNdS8q7lyYx4Vz45YHcRn6Qhyy1NEkrMTEWsQuZeh
         Kr7EQzHv9lBUvvnJ0t9p6V0eiExLsNqk83tAsduSxn8M6ocj46twUC08y578LzbzWm2y
         BExjF6zmOYhopFoO3GCFQGGi5NIQQ4AsdfqqnWOgv8Riaam5jSdNoLd0dg8WTiJNjsjT
         186M2ry1DqOtpJWqlX+YgRwhkV3qGQLEcY4Bq3FOSxEK4EXhon5R5yzRiw9MJhbByIRL
         ImDg==
X-Forwarded-Encrypted: i=1; AJvYcCWZRJga0dqOXKRFwh4A3TlvTfUuvCVxntrCTZDdPKmchTn2XsHViBAHBfaF449R9ETQux4IwBw8NxPB@vger.kernel.org
X-Gm-Message-State: AOJu0YzHGIwJsY2N5vq/2lQ5fMcrFbb9VPohxddgqUzgNN0u07qqwfUA
	9L2OZxzCOY3Tl3p4zKt8GIl5pHKHgAcudWw5xl9DTvJlmSNlozN7vV4jD43c262uCC/JIZ6d+bu
	FV8EwKe6hJTRPvBCXPW/yCHQBkZ1odMJVTOcdpQf3MJ5RKrc9k8JspvrS785zwNQ=
X-Gm-Gg: AZuq6aLtBWFTafuEXnM1w/EpthC/ZkroT1V08NQQ8n+Mb9YoEYDarUi0CXMjf6L14bt
	MEJpc2L1YHf9rHGBWxIVP7lfFv1Sa4w03xiDKMyYUqH5+nKrwJEaVl7V19rz0IaQI7duhSiKy5Q
	sU2SI8Zs/jrvgqHHX+h7Utj0A3iyKyM6JvxMhFAztuLzKb0t8wwTmlc93IvFa8cI23Pa+KGa/CB
	WeEEkQJ5yuVGQ8pza8ParFo8rjK5IDS+Tt5DDuDCd/JQqEKCImnvV+vPyhIgYx5cgHJCJ534pQS
	6E89naCZDkYCehYvX3L4F6zpVN9a4rzIJKQumD/GamFmZtbKt1SgKXSHGNHOubc1iruepmGWSTa
	XV+6AeBptzd4hUpX3ul7SWUYJmjvRHDsXIX8IegXpAlv8pG5ggVYZ7B++LD7i8OONQTw2
X-Received: by 2002:a05:6000:144a:b0:435:9653:e151 with SMTP id ffacd0b85a97d-435b1587d3bmr3552711f8f.3.1769156619030;
        Fri, 23 Jan 2026 00:23:39 -0800 (PST)
X-Received: by 2002:a05:6000:144a:b0:435:9653:e151 with SMTP id ffacd0b85a97d-435b1587d3bmr3552677f8f.3.1769156618637;
        Fri, 23 Jan 2026 00:23:38 -0800 (PST)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435b1c24bedsm4756198f8f.17.2026.01.23.00.23.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 00:23:38 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Yixun Lan <dlan@gentoo.org>, Guodong Xu <guodong@riscstar.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Alex Elder <elder@riscstar.com>, Lee Jones <lee@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Troy Mitchell <troy.mitchell@linux.spacemit.com>,
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 spacemit@lists.linux.dev, devicetree@vger.kernel.org
Subject: Re: [PATCH 0/4] regulator: spacemit-p1: Fix voltage ranges and
 support board power tree
In-Reply-To: <20260122101122-GYA63789@gentoo.org>
References: <20260122-spacemit-p1-v1-0-309be27fbff9@riscstar.com>
 <20260122101122-GYA63789@gentoo.org>
Date: Fri, 23 Jan 2026 09:23:36 +0100
Message-ID: <87qzrgenzr.fsf@ocarina.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,riscstar.com,linux.spacemit.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	TAGGED_FROM(0.00)[bounces-258779-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[javierm@redhat.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.997];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E697672752
X-Rspamd-Action: no action

Yixun Lan <dlan@gentoo.org> writes:

Hello Yixun and Guodong,

> Hi Guodong,
>
> On 17:43 Thu 22 Jan     , Guodong Xu wrote:
>> This series fixes hardware voltage constraints and enables flexible power
>> tree configurations for the SpacemiT P1 PMIC.
>> 
>> Patch 1, n_voltages is corrected to match hardware register widths, as the
>> previous values prevented regulators from reaching higher operational
>> voltages (e.g., 3.3V on LDOs).
>> 
>> Patch 2-4, hardcoded supply assumptions are replaced with explicit
>> devicetree properties. PMIC supply connections are board-design decisions.
>> Moving this to DT allows supporting varied topologies without driver
>> modifications.
>> 
>> Note: Patch 3 introduces a bisect breakage by transitioning to
>> pin-specific supply names. Probe failures will occur on existing board
>> (K1 Bananapi F3) until Patch 4 updates the corresponding DTS file.
> This patch bring system-wide change that not only affect Bananapi F3..
>
> Please also provide fix for other boards, I think you may not be able
> to test all boards, but make sure the patches are available, so people
> who interested can test, P.S I can help on milkv jupiter board
>

I can also help testing on the milkv jupiter board.

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


