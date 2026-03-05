Return-Path: <devicetree+bounces-271584-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AOIJFEuKqWki+gAAu9opvQ
	(envelope-from <devicetree+bounces-271584-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 14:51:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EBAF3212C3F
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 14:51:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E6AC23101E13
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 13:48:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7E333A640A;
	Thu,  5 Mar 2026 13:48:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GVzYgefu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6B43A63F6
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 13:48:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772718501; cv=none; b=k5QIAOf9cimwuB6anPGjsir3w4ypbITfaLERc4r5xebcNWzbliQgbawGpU85pStwJ8GD9VgkJ3COY7E1Y1ZfuUsal9wOx8HT3H/ZZIq5zsnpdl4SQ1QjvMA7/pMATRO2/9mf94byq44Nm2l9L1y/nt2uefV6TSrsWBXZKbs1tkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772718501; c=relaxed/simple;
	bh=Y/U6dzr8HYlcVBpXU4s6771KLXs28Td3POcYpRPGCJk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KJnNOOKHZ8TDaJOkNW9e4yeWnIbyiqSFgt30FGO1JssTXxAI5P6oa8Sm31c8U3ujx1fkI4M1j9Ma63/Ltk+j5XQl0V7ZuIq+DtEjZLHDVIwJEwbCvpEMSpRmJL5u1gMiVwFDZmEokmrZz92yeMhHJo0AvmT6vr8IBey5p0kGWHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GVzYgefu; arc=none smtp.client-ip=209.85.160.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-506a93ba42dso84424211cf.1
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 05:48:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772718498; x=1773323298; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZMO5RCduv8sVFWa2cW8ITVOFRe4ocA/ZvzJGrJ1mPoo=;
        b=GVzYgefu1RfwzovModpfyW+4bBhj66JC88XpnT1AIRfwCzQvD5/g3ht/99AoCJ2ZOb
         GgrOD5Wd0EaLgsHAE3cvQYHP1S4AwXwk/rwl/AklP5b5oNwJ6ml7C4ww6GyVQd/9LJtv
         zftdGHUgFBT9rvfYZ6jfKshZ7d0vvbMBbKYPCUik6e7Y1IZLYAQB0vBboypYB2ogpJHU
         GwHTdHIj+A/MWEra2F/ojUJFJ5XP1BpydGbxXsnFmLmnU5Hb4ahucCARh/IgkuUVFprN
         ArkzabX+vtqhYOYHZ+IyNF+hauJpaZrBhhmEX5zOXwmcT65vLkGQxK1KEV8+oFOGSfYs
         V4FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772718498; x=1773323298;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZMO5RCduv8sVFWa2cW8ITVOFRe4ocA/ZvzJGrJ1mPoo=;
        b=NNe7if8XrqWD3HGxoIa6vvTSp1r6g4oE4mtmVqWNmJx6h2bFv4gXD+EYtwtvgVeiIJ
         q3KVDVvcUDIYJ5wyX0hq8KW71FszBygdKD8JZO0wMCfmRZ0zNtAArTFcahkCp6o+C6O/
         PJ1ZFr55jlmRARvYaXOwS33n281gqyvyYx9ll2eCLDbceLnFZ68bOVu0NFR7PANh+zRd
         NvoxUtvD10bjUM4vTzwytnk9NBEbeitlKbTWOaUJXF11lANdEwlxgFyii44YBI7JcpEO
         KuykhSq0jRgXuvX2fUFD/+LniXx1bpnRjB3ZxfcOuilLkJnyk19m6fDNlj7HHKDIzaMV
         t8PQ==
X-Forwarded-Encrypted: i=1; AJvYcCX1GbFBAJXsbKaxOdvhp4iyvi/kTrOHS/uEt6hVaAj7tph2XeAB2UzVTfLf3n+2S/vl2J3ANo9pAMMY@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/gYCjvmXZoiEDjRJ1hienoeX0HkxsSP46fwQoJCbqAB/dRr4Q
	jdfF9eR+ibYdluRbGfcXxn4TJrtydLplIZ2Dx51WtC/OgRHqsY7mvHzh
X-Gm-Gg: ATEYQzwY9JydQ2aMIAj/j5XOofsJrPy8cHa7a0aGtlHMj+E3rY5rvzCRw8qqR4o2w9M
	jGFonueHZWikcuk1iEzPVEp044uEMhiyPcLj/ppmw0uRb5voHAmUVlqVCI66nGqNgnfTsvm/zYF
	WnsG/s5xBAK5M9bjwWjoqx0sp3AW32KzlOKKpK7PMJHyfEIW6CK6ouCutBPwKeXGiAVEdMzHlvS
	i9xCJ6JL6N+KUsqEOHxoxRD1FnfN20Lp9/cEyQM1TxhwW0+0F9KhUsKvWovHVhJuzP6nLDo3Nv5
	vO7jXi8pvw+nuIDsZGA1mzldv1OmOj9dPQ+KBDFd+MXFdhCo+rQVT2I4uTsqsWrSkOUgSLQR9An
	+bLSBh2bbxkUfhwHrEeiiAKojBVx8b74Hd0+68E9sKI+Zd7O9zlJweMxupoVkRFs5YI8eBk/Sgt
	ZnZHSsyfwJgzp5gYY7OJ6RhmT4HTCNg3VPy4Q8
X-Received: by 2002:a05:622a:144:b0:505:d647:645b with SMTP id d75a77b69052e-508db35a613mr71690511cf.42.1772718497953;
        Thu, 05 Mar 2026 05:48:17 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-899f8ad5b8asm119142016d6.0.2026.03.05.05.48.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 05:48:17 -0800 (PST)
Date: Thu, 5 Mar 2026 08:48:48 -0500
From: Richard Acayan <mailingradian@gmail.com>
To: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Cc: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, mohammad.rafi.shaik@oss.qualcomm.com,
	linux-sound@vger.kernel.org, lgirdwood@gmail.com, perex@perex.cz,
	tiwai@suse.com, johan@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
	konrad.dybcio@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	srini@kernel.org
Subject: Re: [PATCH v3 00/14] ASoC: qcom: q6dsp: few fixes and enhancements
Message-ID: <aamJwMvex4aF6eah@rdacayan>
References: <20260304130712.222246-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260304130712.222246-1-srinivas.kandagatla@oss.qualcomm.com>
X-Rspamd-Queue-Id: EBAF3212C3F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271584-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_CC(0.00)[kernel.org,oss.qualcomm.com,vger.kernel.org,gmail.com,perex.cz,suse.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Wed, Mar 04, 2026 at 01:06:58PM +0000, Srinivas Kandagatla wrote:
> This patchset contains few fixes for the bugs hit during testing with
> Monza EVK platform
> - around array out of bounds access on dai ids which keep extending but
>   the drivers seems to have hardcoded some numbers, fix this and clean
> the mess up
> - fix few issues discovered while trying to shut down dsp.
> - flooding rpmsg with write requests due to not resetting queue pointer,
>   fix this resetting the pointer in trigger stop.
> - possible multiple graph opens which can result in open failures.
> 
> Apart from this few new enhancements to the dsp side
> - add new LPI MI2S and senary dai entries

Is the LPI MI2S on Q6AFE? I don't see the AFE port ID.

It sounds different from INT_MI2S so I can rebase my patches to depend
on this series.

