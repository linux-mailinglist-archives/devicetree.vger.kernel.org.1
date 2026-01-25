Return-Path: <devicetree+bounces-259216-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id fiJDNh+qdWlYHQEAu9opvQ
	(envelope-from <devicetree+bounces-259216-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 06:29:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD3B7FC9F
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 06:29:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3F01F3002508
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 05:29:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9003C220F3E;
	Sun, 25 Jan 2026 05:28:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CTewf1v9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f194.google.com (mail-dy1-f194.google.com [74.125.82.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 400771C6FF5
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 05:28:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769318937; cv=none; b=OLJ5h+CIMC9nZULNY2WzrEVCxe1ggnFwsqj1Tdg0tUQl0BXbrqsdNOUxkPl/RD5qU1avUEC6IUlp1RjYNCecdaIeWKSlHTcrmHl85lmNgFdJmLKJT5x0A71GLp2V1VNACA4xEENz5C1jRGWAjcyrL9zDGEPDvDpB7EifgzRp0Os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769318937; c=relaxed/simple;
	bh=mUoDWOZFX2QFCGblT3FmWE9mkkOr/I9fos4XR43aXb8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=K/k7+iBpH2iAgO/f4UNB+WSvaav94S7JKpriKyi4WuNAEy+y8ma9rMLaIffoMve/hlgILVwtl40gKBB+dcDB7Iu5/pztiAd0OoHkCHA5Dr2KEo6ikIzpzhfSQ+0ysGiaP6ft4O/eE+nqRAR+HdsMRZ3Avz9kArMcrWRUxNkj7NU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CTewf1v9; arc=none smtp.client-ip=74.125.82.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f194.google.com with SMTP id 5a478bee46e88-2b7381d2d95so1231199eec.0
        for <devicetree@vger.kernel.org>; Sat, 24 Jan 2026 21:28:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769318935; x=1769923735; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LsS12VfkA2nBzlw4DSH3X8PhObfJEVs7+ihgzzJpKqM=;
        b=CTewf1v93dOZvbBqFo4MJvlMcrL4VBZcNWtLWBBOQiaui+u795aLpet3jtXD2lG90l
         H4eZwcXWfQOetlnTCkyIjocDeB5Erf69OqGPwaQyBQKDnZlDDo6uJlS7Z+uQiKNhpTa/
         cXkLy3GhZlg0+xGklcOA9WKrYKJH+bGLuwpCfY4q1udjTGOgyYxXM7qJ8TrWAwMhH8cq
         JuciqyWjkfVZGHpQwYb7zmOwA64pzQLC726WU9edDmy73BB0lGiNFvAmUhzppuQoFtqk
         MMhpDh8iT7JaMVf0Yb5e92MMAI9yAR2zfZO0bg+wyEX0pbNlyGDXQ7V6/uTZa34+so5k
         5Oog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769318935; x=1769923735;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LsS12VfkA2nBzlw4DSH3X8PhObfJEVs7+ihgzzJpKqM=;
        b=u3mZfCXyH5iDeeQU12zpBmionh1aCtORbkZ8/QaB5UaAovYpNeg5aE7YkSyD5F1zne
         5BH/3TpQgKn2LGFODtClS4+IrR64OtSUq3IUB9DN/uNox+wwvkbQFAAIn+OVsz7quHLJ
         RFHto+naMgu4cx0mCuIif5RIiAnpS94oGjSZoKAASeOERgtawFQ8kmcXh8Eqv5pjWkOu
         taHsGgO313PQjobA1pI4SJveycQve8Pf5VKJ/AGt/Pf/9re6rOSz/kfx14mONw2B6nuD
         CeJypH+i3fxS4gklqGpgRtvpoQWF8COxz1naf+0QxwQzANf024T+rWptJKzLXf6FqTAF
         fzyg==
X-Forwarded-Encrypted: i=1; AJvYcCV/YVUOQlfiXMlK2DuRby67YCf3TQzRyYiaj7uPgfMO7SS0Znkb+Th3rdrMSE83M3m7TstH7SiW3Ra4@vger.kernel.org
X-Gm-Message-State: AOJu0YwjxzXVfb+3BWGwUtJHaEdeBi/CGucxgFo9YnV3s50NZFw/M4x8
	SmQir1DEZtce9ErLyj1+3EMWwWoHeG67IHcVOxhelhDdymJ2DlPjakLZ
X-Gm-Gg: AZuq6aLLY32HRqD2LW9yqNyrjw27RR7RGgs1WK7V/eX78WyN2r0slrZYa/3X3UAxlTb
	FuOcUS7I6BXjbM3yS/JMmulhDfpitRrfuZHOz/gofwDKNOWd5M0uy9Mk3L1r9aB1ljMvtJg6hjT
	fDkF9MiZD00vpItTfTnnAXlyzF98SF/AQt6jzP4NPW4YykKIlCYn4d/GHrnxF+HAGzdjPCoAZsj
	bDWINXCPHHm1hkdcFWoIi5YkZignzwGRIa930wXwP1n6AUuYvW1pOH/idPZ4uqy+fDscdUhvT5i
	22apZJyX6sqJVsURjYycnHgd/5TfAdDdUnZCv/I1bTi+SOr9rWbNW5hhbFy70U2m7rzEU54qY7I
	jVBJ6WfB8n0O4Fcth2k3WcjRgxoS3DYBiPMZpNMAUO0HWocfk8QAoFF1JJ4nHwhUSHrAy+bdbod
	u6GQUwxdNOIj8mhXSc/3/MvLYSZKrWj3LSxj0zZNYp/p/FD7MxkB2j
X-Received: by 2002:a05:7300:a887:b0:2ae:5431:948 with SMTP id 5a478bee46e88-2b7638ab9a8mr333016eec.7.1769318935185;
        Sat, 24 Jan 2026 21:28:55 -0800 (PST)
Received: from google.com ([2a00:79e0:2ebe:8:106d:a8a0:84b7:2d62])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b73a6919dfsm8940978eec.4.2026.01.24.21.28.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Jan 2026 21:28:54 -0800 (PST)
Date: Sat, 24 Jan 2026 21:28:51 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
	Fabio Estevam <festevam@gmail.com>, Andreas Kemnade <andreas@kemnade.info>, 
	linux-input@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 1/1] dt-bindings: input: touchscreen: tsc2007:
 document '#io-channel-cells'
Message-ID: <prk7r3ckjun77pawdkxpxukg5bv4bj3mv4stjkbyx3dbltnni2@cwy5nqp7e25s>
References: <20260122193549.29858-1-clamor95@gmail.com>
 <20260122193549.29858-2-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260122193549.29858-2-clamor95@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-259216-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,nxp.com,gmail.com,kemnade.info,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitrytorokhov@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DBD3B7FC9F
X-Rspamd-Action: no action

On Thu, Jan 22, 2026 at 09:35:49PM +0200, Svyatoslav Ryhel wrote:
> The tsc2007 can be used not only as resistive touchscreen controller but
> also as a ADC IIO sensor. The second use case requires '#io-channel-cells'
> property, hence add it.
> 
> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>

Applied, thank you.

-- 
Dmitry

