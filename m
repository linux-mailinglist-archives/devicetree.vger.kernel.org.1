Return-Path: <devicetree+bounces-272732-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aFPQCot7rmnoFAIAu9opvQ
	(envelope-from <devicetree+bounces-272732-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 08:49:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AEF3F235044
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 08:49:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 45A71300D33B
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 07:45:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3EB7369965;
	Mon,  9 Mar 2026 07:45:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DqAlTyUv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9402B36920D
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 07:45:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.222.179
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773042310; cv=pass; b=jQ2+T+3e9Wzfd9vhbvBbONKpUg6GzAPYJD9NIlxKflp6/KS5CEq+ceUNNuCklmGZIBJAQeFU/wk6EiO39mXznRj/rBXmhhGcyGPJeTe7K8nWRtNOOAtKNbK8doBJriIzScmdWjhjTdxR6TAhDsxOQaRhOlls/l0eEZM/bA9kCGM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773042310; c=relaxed/simple;
	bh=6mDtFQtIV7hWPkA02q2hxE8rclBrjnmuzHeD/PSKnVE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=j3WCVzCNfL1XyHGKESCg3TYp/Mf5uNZPauQ4gEQ9n4vwhJZj+x8S4DwfO/ICUJ5DWFcJKKuchk4FEcnjpk9i1dYUqZn6P5CvCaL24aRFj5R69HnztjC3Tffgy79J5+f4lKctPcf4CJZYJwrRDcu31yAxlymaare7OhNnUBzbD4Y=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DqAlTyUv; arc=pass smtp.client-ip=209.85.222.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-8cd7ecedf2cso119650685a.3
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 00:45:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773042308; cv=none;
        d=google.com; s=arc-20240605;
        b=KyjvRlnarmMV3uMniygXNp7xQBcUE4y1yr9/tQ34lIZjzNGdv7cRuOfXfnXGHB6/OA
         0bxnJaN6ff3r8OWvHWf95S8xkWaWIWI8dMhhvHqF7E7BUYVMOasKibxHHVXO4MBwPsQN
         U/qKUUvmlEuBkUrMjXMlLj7nvrdi1SDGI4sImEJ8m3oYqhw/UXYKQ3HziG6x6PMIpB+V
         mLo2ENni8S9M+4ztLBpK4XEPmXsHzgKHiTKpBjNDm9qx0Ypd99U4whM8IYqSi+qoAhvZ
         qKnWvJR0si4CvVNDvoCFA3ppyNZvmYmWb+93IfkYSoueyKEAVxuAJiwNQz0Z1uJFyuzJ
         GPKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=6mDtFQtIV7hWPkA02q2hxE8rclBrjnmuzHeD/PSKnVE=;
        fh=K7nRGBmO7ymu0G3fFpldmhwg9WlL3H1S6NIvlt+/8DQ=;
        b=R/PCvM6yf3fhrbE45yK1rFHHU+Tr5322Dmn2/PnJZnogVY2Jp+tNjAua/ubWhcVbwn
         BfWbwZRtaAU7ZNTysu38SLPc42Bkxpuxe+9bAw56pOdcdYGWqzME29KCpLbScY4uGIZD
         SAAXswmut6Ih1LnJhJOjWp6P+AGzwGSL7OxlJmTv38EXbN+YvXwhoEIwlGoEi/z7nf65
         eT/8WbLsDKIL3hieeKzW2lNbZXgZmo+2rgP7f7dwTiFctqx1iMUcBwmrDdSwF1S0ZD7/
         IJ8eM73yIXlnBPqaQE6qqHlAGJOXM/Fw6InKwMPsD8ftE2E/RKDqgqwIJ9fvypY+rvR7
         mGww==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773042308; x=1773647108; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6mDtFQtIV7hWPkA02q2hxE8rclBrjnmuzHeD/PSKnVE=;
        b=DqAlTyUvkcq1yqYqGjGoxq32ZPIk2yBF3/gkjSVXC3BlTy7ivILTGXaL3bae+Jp1FS
         kyIqW9Fg9w0gxTdmuKd+UbZC2zgBkGVI5nC8INBgQXrrc4aSdq1iUH2rZIUFFD30wPMA
         KvQvMt15jCR6JIxmcw1CKNdSCsXRq1ooePvmjnQ0w6mJozDv/eFpi8Zc33KqJvKHsoJ+
         RmVkM928so+xOlcbDd1TIcrE8uYVRenxigQE+DL6bXXdLeW7D1mCXZPyCOPwvPpJ3Vo2
         zMSgXAd90eoRjpX4oTuabfTjvh9wYNBrSTP33JBLSZMKNSwtE3pcmLaUHMRASm5NppeX
         O4EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773042308; x=1773647108;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6mDtFQtIV7hWPkA02q2hxE8rclBrjnmuzHeD/PSKnVE=;
        b=ZqKQCg8kS8h2uau0YnxVZ7UZnYXQLfuOQ+zrPyB4ANFgYKdO4qZaC7t9/ZuMULchEv
         efhkE1kZDBuV0za2hkTqQn7iS8zjaJGgxfphHYG/AYdqRsVdg4gQN1DoV/zKkOs+W/Bm
         14YSkwz4mwOoJavub6odzP7/1T65JF+xMn+Y52X5K2USIpblQT6QKVlAB07mt94Kn8UL
         9WmsVy20fx4v1ibeU4Rag6ELVGmxaJgPpZU80N2FVZEGQM5vtA5wPJzMy/cCKAGh3Cz8
         NaAZx6mK10C3cO2+r3rujQaxEq3jPGDSnkyysqw22FuUXKXFoSlNdHL4e8L4Xl0LOJaL
         JPGA==
X-Forwarded-Encrypted: i=1; AJvYcCWmzPwvk+8W9+cma9lm7scoTN52nD295BFMBr5/6Dt8LsCzrTeGZu4s8dkPvJhUbmD0ggdR0y2ZKQih@vger.kernel.org
X-Gm-Message-State: AOJu0YyAlBi8+Y6t3gWMnZJedAC08s8HVCI4SFTtU8/g2gPvsw0jKSYF
	1kp/cxObNMNu76t1oRVdXOd0ecNKTDQSpQPyaLBYjJrSowvj4UAYcahiQin6lei8mrki+9+MNG9
	6p3KlGQiNX71a4Rbx6dWcxokk9FkHCnE=
X-Gm-Gg: ATEYQzziZSy0hfVzNAHSxy2/aoskPYPjNJpWUFjanvLowPxhfXBgT45TuuuHnuoja+h
	y1TD56QQWjZV7+jchXYZIazm2EO5h1HAlvRSsYTuJ7MmwaXckWRO1ETTf9maAKIsIB8q9OsI87I
	bVEfRPsg/tCN9F3yDLWuLAhG5dMGMNYDFTX+v1LO4GWwkCwTZNhHgpLbbZL6N88OsVsIXUlt/GY
	puwa89KWGjLZ/77NalJO2NzMDKX74ejubqxmy6btm9E4MeNL+OIBxsKuugRKrI+WzgGNkCCNE/C
	b8wWsUdTJX32u0SFTQeE34J5hEFFrdvatrTvJJFsg2onnR+lrB2H1sqjg8yHacuXa38=
X-Received: by 2002:a05:620a:1a93:b0:8cd:8072:8722 with SMTP id
 af79cd13be357-8cd80728affmr542236185a.0.1773042308458; Mon, 09 Mar 2026
 00:45:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260308131412.1102749-1-julianbraha@gmail.com> <2026030845-chastise-briskness-3317@gregkh>
In-Reply-To: <2026030845-chastise-briskness-3317@gregkh>
From: Max Filippov <jcmvbkbc@gmail.com>
Date: Mon, 9 Mar 2026 00:44:57 -0700
X-Gm-Features: AaiRm50F4EdiuatwMyJUQSJnjLtoBuBq23eYvbRM47sOLulCLkJhaUvU5Sr25xE
Message-ID: <CAMo8BfLAS_SEr2kFu+kj3gLTDkTxfXJ3fdc8Mgt4PP9yjUr8ZQ@mail.gmail.com>
Subject: Re: [PATCH] drivers/tty/serial: move ESP32 UART drivers into staging
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Julian Braha <julianbraha@gmail.com>, rdunlap@infradead.org, 
	ilpo.jarvinen@linux.intel.com, conor+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, jirislaby@kernel.org, 
	linux-serial@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: AEF3F235044
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272732-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,infradead.org,linux.intel.com,kernel.org,linaro.org,vger.kernel.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.981];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jcmvbkbc@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linuxfoundation.org:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,mail.gmail.com:mid]
X-Rspamd-Action: no action

On Sun, Mar 8, 2026 at 7:16=E2=80=AFAM Greg KH <gregkh@linuxfoundation.org>=
 wrote:
> On Sun, Mar 08, 2026 at 01:14:12PM +0000, Julian Braha wrote:
> > These drivers were added about 3 years ago, and depend on the
> > XTENSA_PLATFORM_ESP32 config option which has never existed,
> > so no device can actually use them.
> > They can only be compiled with COMPILE_TEST.
> >
> > As you can see, this config option is still undefined
> > in the downstream tree:
> > https://github.com/search?q=3Drepo%3Ajcmvbkbc%2Flinux-xtensa%20XTENSA_P=
LATFORM_ESP32&type=3Dcode
> >
> > I propose moving these drivers into staging
> > until there is a device that can boot the mainline kernel and use them.
>
> Why not just delete them?

I agree, it should go. I haven't had a chance to get back to it in 2 years,
and it doesn't look like I will any time soon.

--=20
Thanks.
-- Max

