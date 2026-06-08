Return-Path: <devicetree+bounces-308560-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9ldnEwBQJ2rNugIAu9opvQ
	(envelope-from <devicetree+bounces-308560-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 01:28:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D327265B29B
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 01:27:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=mH3TM8Zk;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308560-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-308560-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4D5AF3028155
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 23:27:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E79A833F8C3;
	Mon,  8 Jun 2026 23:27:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f175.google.com (mail-dy1-f175.google.com [74.125.82.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2FEB337BA4
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 23:27:56 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780961277; cv=pass; b=W6YBbrqBZjragKjL0stALWFpmqbA4ODgtmfA68Akb5noyD5SkSUw5QeYTgn69RpgrzyFB3DPSVGQtUUBxMVPkNule7Ym3hv+Z8gBJHYYV5ljiRE8hdIlPrNL0njB5gamnT2ir182HE2zBOt6jMIp+gfeOhEBmOwSnYCx4xM6hEc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780961277; c=relaxed/simple;
	bh=37N48hBsVSHlJ1BfuHRgKHdqsWk9adNv1YLls6cyK4s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jtKnXVDXmvClmClgnFeYRMUi3E6DwoDRbCpf5jtYAo8gATpHS62klqKQB5SmUnu1U/3EiUkFbTIgtuC7qc+M0NsMZkJng1OokIUvQz35iqzYY+6ej53HZKXdiwg73xCg7eNOfl0uDdrEjX26c+mI9gjXq3ZAGBJKYAvZ8SOrZK0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mH3TM8Zk; arc=pass smtp.client-ip=74.125.82.175
Received: by mail-dy1-f175.google.com with SMTP id 5a478bee46e88-304c520fe9aso7946781eec.0
        for <devicetree@vger.kernel.org>; Mon, 08 Jun 2026 16:27:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1780961276; cv=none;
        d=google.com; s=arc-20240605;
        b=KO2UBfLCauGR5Y0fUsxf7Th7Got5bVqG+KsXR7tYIxBXluKa81bgZjxSFJdzHuvSGP
         86Zrpl1jk/mYqjQdBp/3PYluwGd0Q+KIKU2YrjTA3IMqwTMA/OwIca21iIle9CYewwaI
         SBJ1rU5XrkxqpS5/5FLbYbwAI74Xxgso+1hskB6+yhLs8DsGZ9L99MuNS6/iZiL01Dn7
         7oL8NMyxlPvIdy3+AZVUROi0hEASnDrcExVE8mkvhTTVvlGnz+oJIjVwZyUIORdZMUvG
         NCjub8s32ovhlNSG2bB3UElIbSxjiS9SyEPM8pU2mu+7M4ZptRf4PJaqKQcGCiOmH2Xw
         SQ0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=37N48hBsVSHlJ1BfuHRgKHdqsWk9adNv1YLls6cyK4s=;
        fh=7NfnnmYdTRy82OnnLHNobbs0APhRil14djCzWYXdOmk=;
        b=QlI79fxZsv7GZ/XFbFEa+vvBYKnJRBBVh8agOtWPcgg9Z5eMgOaPTxs7pqijwnQeeR
         xizlVNcY3kbgvs5VJ6plSKQ1gj/MEb53778K0wzFhwzqzmJMeYcrsjCDeUQq2FGtqP3n
         /xewnnbVmun46Z7Q5IY4vl8B1SdYTDEP3hqaOhCO9JtGKYsiw2vGHXolY4nkNkMVepDB
         pJWG3kauO7ajiYealVAaUu/L3MQMlhjdcMOzewLi44gow6bNsGtlYBOnPxdIsDQ4ZHTf
         y6a1LV7fCf77VmPeJRfKZwRh6dzJXZ3kj6zzwN4C8YEwcNH/hRktUzOaBLAv/E+Ccary
         z7cg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780961276; x=1781566076; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=37N48hBsVSHlJ1BfuHRgKHdqsWk9adNv1YLls6cyK4s=;
        b=mH3TM8ZkMa/LQbgaaTu514J4l+waCs5Pf/HRs6/kDuXY8YnLVbj9e90lils/q4jQft
         kkyfeVsYFm7irERhwYMZTaRTntl2ZuvXAPuzlKM2wzg97+L3cq+GbarrJEqN8ve+j3QQ
         g4y7dOleOG5PMiwiLjYAysOX3Ayf7UXRzgZ5EKhkiuhNW+C29Q3mpwztY1upe/YZxXSG
         TQocvT9Zi2Vzh+e/OR8GDYzmE9INcE2XJdoqxc3lull4hJRfLREAvosMhGkWxjg/oVkC
         v7yacluTzddbUvoaE4njq/pnkBWncAySttoyPB4MKi+3njNhgOig8b37NI/u4tMJtTNh
         82wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780961276; x=1781566076;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=37N48hBsVSHlJ1BfuHRgKHdqsWk9adNv1YLls6cyK4s=;
        b=nR5L6cNhtQCGF5nYNkhXEx/oGcNplYqG8Y2HsO2yaa3JMBF7FwjRGARA//64zpNo0a
         vi+VqOw8/frxML2hZGuGhLnxjdJqdid21ED6bHg/pSqqOTcfVlA2Vx0t0zTJU6AWhpo6
         +hWTYc9yQsEDPvP2WMshfPsFP0V13JR4+scCE7xCJ0YvNgW8C84jN3lmq4K7tBZSO7jR
         eJ/85EReWqW+IyCssMOfoboKlaaOse2ilrG7kYdljEAK2jqjE3DtwPtelwg+waIKpTmJ
         D8RjJwty+7CBjrv1lAzuj/SLCZSqxgmplXJmjjMVXq+lvCimW7F8ClYuthSXiKl3HJEZ
         rkPg==
X-Forwarded-Encrypted: i=1; AFNElJ/DczFb8DsKVClgEJrdzIFkeHEUghKonT78z9mDFC++7PYUwDCTDh9qGbdX47KjOrVPpKA8rz2fSNcE@vger.kernel.org
X-Gm-Message-State: AOJu0Ywf6CWbhvrNYO3SbavD++ZsOLucb79LJ8QCEQ1qv0qsOoLv5NDU
	5Hmf7Mqp6suMT5N/YYYkxWUtL2uJgVF/7K9U+gIIIQnU2sCa7e/rM2n7G6o8EqSdox6xJs1WzQV
	ZUat2uVm332rhWJWzCSqm7gx14etaQCM=
X-Gm-Gg: Acq92OE0SCJaBPWh/eqES+rkdoHYj56/LfTJkRL46CIxXSscB9cm5Te0NbL0ZBxa++D
	GacbFPqYvRQwSRg/2EGXXT5RBLx0qiNv8VoNKg1UVIrwPMKrM9L15IwiXG3/EdOdWmhkwdoTbRQ
	nBRd7otOIXWFy723OrDBtGeSw8q8EhIV0fSrHISZlZCSaFaS2Oq1ALHd93oMMtgOpa4YEFUKc8m
	dhmUYAprT0L6pLfSqrvkpHy0JFHfOwiSMo7sd8+jIQJ1JBQgFplv3yrGjZoA964vrYVVJuMufp0
	aCJFd363V4YPwFpmKGlXmAvtU8Qw7eM6qviaZWS9WQwY6NM63Bm166KnAqZFeFmMT2WkEbWqMNK
	TTW1vow==
X-Received: by 2002:a05:7300:fd14:b0:2f1:6252:f8fe with SMTP id
 5a478bee46e88-3077b357c3amr9913759eec.3.1780961275699; Mon, 08 Jun 2026
 16:27:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260607234343.22109-1-kimjinseob88@gmail.com> <20260608-catnap-thinness-e25c9b8983c3@spud>
In-Reply-To: <20260608-catnap-thinness-e25c9b8983c3@spud>
From: Kim Jinseob <kimjinseob88@gmail.com>
Date: Tue, 9 Jun 2026 08:27:44 +0900
X-Gm-Features: AVVi8Ce0REUbYLB0vBxw1K6HuQCVLf-o9NEPZkSMeMK0OsqgRRaqFSEyfQexrfE
Message-ID: <CALMSewLUvaYuag-8j2v=YoJQ=y9SZySrScZv51F8Ot7bdtXhdQ@mail.gmail.com>
Subject: Re: [PATCH RFC v4 0/6] iio: add Open Sensor Fusion IIO driver
To: Conor Dooley <conor@kernel.org>
Cc: Jonathan Cameron <jic23@kernel.org>, linux-iio@vger.kernel.org, 
	David Lechner <dlechner@baylibre.com>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andriy.shevchenko@intel.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:conor@kernel.org,m:jic23@kernel.org,m:linux-iio@vger.kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andriy.shevchenko@intel.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-doc@vger.kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-308560-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[kimjinseob88@gmail.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kimjinseob88@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D327265B29B

> Other than the fact that new revisions must not be sent as a diff on top
> of a prior revision, please stop sending new versions without actually
> replying to my v1 comments.

You are right, sorry for the noise.

I made a process mistake here. I prepared v4 on top of the previously sent
series instead of preparing it as a full standalone replacement series from
the proper base. I will not ask you to review v4 in that form, and I will
prepare the next revision as a full series from a clean base.

I also should have answered your protocol versioning questions directly before
sending another revision.

> What does "v0" mean here? Is the data format not complete yet?
> Are versions of the protocol likely to be backwards compatible?
> Will the device identify what version of the protocol it implements?

The current OSF wire header starts with a fixed 4-byte magic, "OSF0", at a
fixed offset. The same header also carries explicit protocol_major and
protocol_minor fields at fixed offsets.

For the currently supported firmware and driver, protocol_major is 0. The "0"
in "OSF0" is intended to denote the current major wire-format revision, not
the Linux driver identity.

The binding is intended for devices implementing this discoverable OSF header
layout. The driver currently supports protocol major version 0. Minor version
changes are intended to be backward compatible. Incompatible wire-format
changes require a new protocol_major value.

If a future major revision cannot be discovered using the same fixed header
layout, or is not compatible with this binding, it should use a new compatible
string.

I will spell this out in the binding commit message and documentation in the
next revision.

Jinseob

