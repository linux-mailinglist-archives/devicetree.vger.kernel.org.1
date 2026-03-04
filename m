Return-Path: <devicetree+bounces-270966-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wE0aCqMGqGmEnQAAu9opvQ
	(envelope-from <devicetree+bounces-270966-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 11:17:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EECB1FE2C2
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 11:17:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1D7DD30055FE
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 10:17:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C53539FCDF;
	Wed,  4 Mar 2026 10:17:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="F+FSwpMX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2E75332638
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 10:16:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772619421; cv=none; b=gpRD7oWP53xfKe5RFhBPfihzXwdvfpdogq203HFhw+d5SuWL+3v1wq51JuM+TMllNrvy8l0tzmsQPr0GyZMWGyIZltm2sDh4aH6wmORINWBfUdjEz5IOHIlNto/4mG0L8K/gt/iKVZ9ocnHM3UfSYHKcYptQryCt4+72CW+uHeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772619421; c=relaxed/simple;
	bh=e78qIDzHbDTqXVogJF+UVOVMy75B++Q+8NZ/1KY9TUY=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=jPvUXH6n8RjLGd0MSiiyQIcDObenIjFG1PLEZGo6FqRd9jD38rkGP56l3yUihvBnWNvqzLJ5rfpAujJ2Ip0AJF0TyT+Pdf3xQccChTJkkExINIf0mxm8+dLPCX8DU6+0buRrf6fp+A0eUvWSAvSh5ThzV69mS/Jhv6o87s9qTcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=F+FSwpMX; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-480706554beso72348175e9.1
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 02:16:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772619418; x=1773224218; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hYB3YNu9CO7wLt2ZT8Xt9m7azMQTOfSk/ijLWaYuruI=;
        b=F+FSwpMXpboj5Xote2ENRoHs8jokK6NZkRGnHXH4Qy3cV3lBdhiex5fHH9wNHAjdhK
         yqGvfBGwjpHrGAR+l6wgHNZa77l96PQY1fJWo2xhuCVwQp6WrSo/kVUGJtLRM+lpwMlz
         tP+31aj1JPS+X4nRNiTwhltna0Em727kkN2S2Iw7DmoBsbn1CDPDOHgMd18NfKRPRqk8
         0TvYXo1BoWGnRr73ONsX444mo+GUDtdoixmN6R+5aBXYazoDMqyRZ9QHPbl3AT1nnCk1
         +/K1DTBEv0BP29zEOeRkYIjutxE2ZIuX7lhUCht8CRZhQInAqHabKMqS5C73FREKZnDG
         otzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772619418; x=1773224218;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hYB3YNu9CO7wLt2ZT8Xt9m7azMQTOfSk/ijLWaYuruI=;
        b=li9xW2Y3yZJNKfGC05kPgSlSXVW0ttJ8BxMoTssOkWIcxvMK/TQJALWSTe8Yc/QXck
         mxFlKVEM1zyBVbLDp1XyQwoOP9i5k8l0iitlzKry7HgCzSA3oiGG05TXW3VGedO+VK8C
         fIl21dFqGIXLCLz57J2Zc651vrwOYJEylktjVJ4xB4bqbFZEE+uAaYRNGQK01VuoG/9V
         rJhhT+xc85sUTzL046tpFSznz6BRUEDuaYygNDxnMoPk0lmuKmZhW3Ty+wJX8XybzVhL
         jTPCBr/bdLt0+3fvkFo7oo8TvSZVCURvgUiPSeJB0sdHWA00mb8XbmJ24z5UGecceCew
         BpPA==
X-Forwarded-Encrypted: i=1; AJvYcCU+OgatVCy2lV1TQfqj2Tmi+W6CTp32MewGwhdJyIH3bm5uT2xn6ugymHMGe04C9QXubFXYGWHDLsvc@vger.kernel.org
X-Gm-Message-State: AOJu0YwoiyYg1d5/936EBVYd3V8DFtZ47sPXt83v7JBLOcylQPLZCm9/
	3nCsgY6dRAkwB46dcuIAFPpN6MWWmwuTPX3HauRzMlb8icqnxtfjJQCJ
X-Gm-Gg: ATEYQzy4NasUEZnlxsiyFmv7ZuUMBA+UGr/h8RgzpDA2QHXU5jErrRZ8KYRkTyUOqem
	WAjQ8+yhL5Arv0IonFqLx+ksaXMrHZdexQ0XGweVNbPwHdTxpW+ACuKhY5h5baafVdpMhI15/aQ
	UTwupSl1SkW/Zr7Gfb3BSDGM6vhP9FhMAj6aNBcUSK+s6lUEpchKAc5kNa17349ns9K8eWGcYyZ
	ZM6WeeFUtB7nZ4kKHWSdmqsd9fKC1lQUyobHDY6kpghkmpj6mKVhO6foUfAm7uTz7ZVEL1+xv0+
	p38nAqIrkIdAjAdNQLtJ6wTPyuqQ10Hwd8PsuqZvTfMR/FC/H2Y7k+ws/I6+do1qLGrJwfoIt+U
	11wTWt8sG2Zy2cQRog6Jqe9nFmS2DWcaLd6Q+pOGtr+59DiM1YE/4pOfj+DWka7S/FHIYTmR2xu
	i8y9CfJyqEkQDZyC/OLJUVAQGcMfzOAZf+ucuXZgqTYg5nVIS2ginBugeQEJQQoaTP
X-Received: by 2002:a05:600c:a51:b0:47d:3ffa:5f03 with SMTP id 5b1f17b1804b1-48519886ca3mr23059915e9.21.1772619417522;
        Wed, 04 Mar 2026 02:16:57 -0800 (PST)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48518839ae7sm36391845e9.1.2026.03.04.02.16.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 02:16:57 -0800 (PST)
Date: Wed, 4 Mar 2026 10:16:55 +0000
From: David Laight <david.laight.linux@gmail.com>
To: Rodrigo Alencar via B4 Relay
 <devnull+rodrigo.alencar.analog.com@kernel.org>
Cc: rodrigo.alencar@analog.com, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-doc@vger.kernel.org, Jonathan Cameron <jic23@kernel.org>, David
 Lechner <dlechner@baylibre.com>, Andy Shevchenko <andy@kernel.org>,
 Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich
 <Michael.Hennerich@analog.com>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH v8 02/10] lib: kstrtox: add kstrntoull() helper
Message-ID: <20260304101655.620df7ee@pumpkin>
In-Reply-To: <20260303-adf41513-iio-driver-v8-2-8dd2417cc465@analog.com>
References: <20260303-adf41513-iio-driver-v8-0-8dd2417cc465@analog.com>
	<20260303-adf41513-iio-driver-v8-2-8dd2417cc465@analog.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 2EECB1FE2C2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270966-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[davidlaightlinux@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[analog.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Tue, 03 Mar 2026 13:27:07 +0000
Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org> wrote:

> From: Rodrigo Alencar <rodrigo.alencar@analog.com>
> 
> Add kstrntoull() function, which converts a string to an ULL with a max
> character limit. The function is an alternative integer parsing function
> that does not require a null-terminated string. It becomes a better option
> over simple_strtoull() or kstrtoull() when parsing integers from a buffer
> with custom delimiters without having to create temporary copies.
> The function is consumed inside the implementation _kstrtoull(),
> promoting reuse.

If you've got custom delimiters use a function that returns a pointer
to the character that terminated the conversion.
They save you having to find the delimiter as well as taking a copy.

	David


