Return-Path: <devicetree+bounces-259070-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +HN5EC2gc2lqxgAAu9opvQ
	(envelope-from <devicetree+bounces-259070-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 17:22:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C797E786A0
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 17:22:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E62093037745
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 16:15:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55AA1314A61;
	Fri, 23 Jan 2026 16:14:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="m8sS4H2I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B2DE310652
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 16:14:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769184885; cv=none; b=Y0EvrBSjaxkGvnc7YicrQXYLkfEqvNkOICl3BjbWIRazfk9MrZbhIsrmhET1YMNAPD24i0FJEf0yDxewR4ZhgHFPRvkrKWzpeWgltulLI3vBoyBaqEt/srxM1Td7xHGA1C2K+VtP4cBveWvcxsR0W1lWPjCWKY8v7geGZHKTowM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769184885; c=relaxed/simple;
	bh=04fVH+Ybh/xOhNmHGiUOXfPQ1KtKmvbSXs3LJi9XWQU=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=c7qEnYM/xWpX7kyb533dMDJfEAZ4pb2Ij7DKq552mmmb7bgi/gHcm16jdTor2xDWLt3XfMzUJqeYeIcD0Acy0qXvNdjXeT9Hmu1LR29v6RBrsYL+ihwkzP+lnahvZlGQyHCKlv/y3OxmgaPbqO2DF11EFUz1PHSwg9xwyLgkaD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=m8sS4H2I; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-47ee301a06aso27475165e9.0
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 08:14:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769184882; x=1769789682; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8ZZlt0wXGEeAJMNmrtm9rEmgb+VoKNl+2Pu9hilzxa8=;
        b=m8sS4H2IhkURVj7K4opc9WYKWxtHLGt7gxdtFfE2zOdBz9tEel7HgvKV18ekgN9cae
         zNLM767VvznXCdDiQfDOZiJ9ckLShSHeFM6psdkyyBT6Ezp2ziiLCjp8vwD1d+fzH6ux
         yMh2qd8et6Eyyk6L5b67JFD4ULBh5nu9bV2C8sI7FqO4Z3U2E2GikkGa1QAvQKxswpFN
         KKuG2TnwAZZKxOtrqLVuUMXKAMAOtdc0CYcSe5n0zP0RH54telVzIZds/5p/Pw0o9Zp0
         feRrctfNp3aR93/FLOUqAxLgcKshUgB7zsOhjn0vq+MPtvUPlWsGRtOkMbkB3fUMV9N1
         +pLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769184882; x=1769789682;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8ZZlt0wXGEeAJMNmrtm9rEmgb+VoKNl+2Pu9hilzxa8=;
        b=Bo3C5nIDbLv5N6cNbAwWq1B7i5cwILT1JRUN6dONbOSPTYTxBLAf6tAnrVBHNkcru4
         TcY966BYiJYTzje1vt9paz7EUPjbqrAPjLKgy9yqN2/xuyUaioSIhJISscd/hiiSNw/v
         uleLuLKyq6Cwdi2Vr9T3oqeguS314jC87KXm1PzfeVJ6QUBAaYRrmisqrCDGdz+9opHm
         BY11GznM0NQ61VZMjblFltpbA0soqTsZ9xahgqxAEY/l3qYTjKlaRhr46ZNIb+my6Tyf
         lBs4yVszzewqyzcO2RrRJoBz5IEwCaZcnOHJBPiammwbGcJst5kcM/1XYEHNXnuJmPAL
         NzSg==
X-Forwarded-Encrypted: i=1; AJvYcCUyOqQ9/BJnN9ZU5cU1Pa5xpTvkn4VUWltu7BnBeGTNmUwyhMxsuNCBOD6QXEQa4W8pr2CynbMghUF4@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0S9MCoGBso7fqpuUkWPwicg1yFg4w9ePApU+glxPzvsAHV7Zm
	ZH3CaeTSD/lsfgK9c6ZLbrGjr7q8TNnWqHCQb3EiHtBnysSVoQY9BFHr
X-Gm-Gg: AZuq6aJUFGozh/ory94bIifVj7f9LF4pfWqHXg0xwucV3VP0jUQvkM6EStykLeYO+nZ
	m/L2AjMkL+u9OvJPcVmWC5+wp44MVvjS9vZ0CPDr+u1qrO2Nsms8LpuPAIAiPCje0XCXQu61VSL
	Pnx7dlP0v+Vs9aE4t/G7r+clik+Rw1lDlJ7tRIz8V/F9MQY6MWfozjGonhSTieY3ekG5Y6eUH0x
	itXRyhtIIHW9H1t2nGbxXI13ogDtWJpidFLvza56u/Pf6AFQCOjvGG74jLsZbuUC4pdifWB0Nqo
	7RRfqpTKpkfB87vNwM6pV3U4HubWGjm/2RZomSXb//lHn4n7UJF0AFb5baUvDgFAGCx3EOdcfAU
	XvkT+CXoGpNpO1wfcfpWmm4MwD/yTPsmgQtd/pQVj8tPkT1227DH0omapGNw0dpuHmiHNTdSTLB
	9iVS/L9tp3pLq/e5A/BLQLQiaLGwQFaaYx3TWDNuTLSteN5wNNaBujq75pEPlT0XWw2iM4zitiQ
	dib
X-Received: by 2002:a05:600c:8b6e:b0:480:462e:d640 with SMTP id 5b1f17b1804b1-4804c9cfef1mr59266115e9.36.1769184881426;
        Fri, 23 Jan 2026 08:14:41 -0800 (PST)
Received: from RDEALENC-L01.ad.analog.com ([24.206.116.131])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4804dbe1fb8sm24330765e9.20.2026.01.23.08.14.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 08:14:40 -0800 (PST)
From: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
X-Google-Original-From: Rodrigo Alencar <rdealenc@rdealenc-l01.ad.analog.com>
Date: Fri, 23 Jan 2026 16:14:33 +0000
To: rodrigo.alencar@analog.com, linux-kernel@vger.kernel.org, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, linux-doc@vger.kernel.org
Cc: Jonathan Cameron <jic23@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, Andy Shevchenko <andy@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>
Subject: Re: [PATCH v5 2/8] iio: core: add fixed point parsing with 64-bit
 parts
Message-ID: <3rtccxcqpxkwq54jjbl7l6rq3xm3ibsnlh5s7hiymo4okir7dg@ky43houswpjg>
References: <20260123-adf41513-iio-driver-v5-0-2dce812a2dda@analog.com>
 <20260123-adf41513-iio-driver-v5-2-2dce812a2dda@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260123-adf41513-iio-driver-v5-2-2dce812a2dda@analog.com>
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
	TAGGED_FROM(0.00)[bounces-259070-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[455rodrigoalencar@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[analog.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C797E786A0
X-Rspamd-Action: no action

On 26/01/23 03:53PM, Rodrigo Alencar via B4 Relay wrote:
> From: Rodrigo Alencar <rodrigo.alencar@analog.com>
> 
> Add iio_str_to_fixpoint64() function that leverages simple_strtoull()
> to parse numbers from a string.
> A helper function __iio_str_to_fixpoint64() replaces
> __iio_str_to_fixpoint() implementation, extending its usage for
> 64-bit fixed-point parsing.
> 
> Signed-off-by: Rodrigo Alencar <rodrigo.alencar@analog.com>

...
> +static int __iio_str_to_fixpoint64(const char *str, u64 fract_mult,
> +				   s64 *integer, s64 *fract, bool scale_db)
> +{
> +	u64 i = 0, f = 0;
> +	char *end;
> +	int digit_count, precision = ffs(fract_mult);

I've just noted that I should have used ffs64() here. 

kind regards,

Rodrigo Alencar

