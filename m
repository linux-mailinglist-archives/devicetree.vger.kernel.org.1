Return-Path: <devicetree+bounces-257604-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sCygMr3xb2m+UQAAu9opvQ
	(envelope-from <devicetree+bounces-257604-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 22:21:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 700184C246
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 22:21:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 8120260E0AC
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 19:58:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D917747B420;
	Tue, 20 Jan 2026 19:55:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PHVA9zbQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f171.google.com (mail-dy1-f171.google.com [74.125.82.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 605444418E3
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 19:55:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768938907; cv=none; b=jDKYPZeWmlNmsLiZKxC+xsW5EgZQ65yFgeJpbzyZCED5m+cGtw7DH/MHTqG5JxDmSEukG1N5bNMQlpteNZEj2P8b1WdUzf+oTUjx4A2kZgcSN02aGTmbBVCTxTjJ1MdXkDT003IvQ2ahPyOE8dSL0PCXH+339l5x0wajvm9t9ZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768938907; c=relaxed/simple;
	bh=6kPo6Rx3UH9KVgVmwRiPtreX/lQt94tWWEK47F6QWY4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PiY4wpFiIP+DMeZEDfUk+ekU1QgKjZEqQCXlqc8dza2sQIUGJZf4MjkEuGTqS8jKXh/h4W3JgIEDKaAcDFzO8VVrDUSEHBMBGCwjS44M3X5AB6htA4AFhRVJrqUgjp5+lFaw23BRbKKEEelu2SS8Mj5UFn2O+GmDRFAuW46Hflw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PHVA9zbQ; arc=none smtp.client-ip=74.125.82.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f171.google.com with SMTP id 5a478bee46e88-2ae255ac8bdso10418914eec.0
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 11:55:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768938903; x=1769543703; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GQSNIybqd3//ZKhTtvTbCXW0y0uZ8xcJxwgof6wQOVw=;
        b=PHVA9zbQssQLBi8HwBJxlgRjhAcVtLDv1zrJd8kjNl3wQUPAbTkYVV+uxYdAnEewY4
         v5CvknSmamH0Hh8XAH6UWlepZP/uzeWfRPfR7wvH0+VbZQGILHJ653tMyILKd8QXDO1u
         xSGmC69OHI6F1Cz26NVKy082gvve80lXqiRq2SDdH7KuZSrZsx4dpUY35WcPTT8O2Rer
         hVYMyb2rzJXPm1XdPLNBtjcpHb636+xns211ZYZpnti6M3eiV1NTkUg6oUZeUXW+UKW7
         a3nU/NC4sBpSfrDjkVlgoW2yH/rDVZH+nWU1OghS2g2KxAdzd4VELH1UBrB510pf3okb
         Pj+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768938903; x=1769543703;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GQSNIybqd3//ZKhTtvTbCXW0y0uZ8xcJxwgof6wQOVw=;
        b=ldeFlM9kzNc9j/YahnxDalfYg1bTyixtlvu2kRKrWazX3UJ5WSA6oDNqoruQQB9sA8
         2N2Qe2e5S0ibt1M8gYDIGs0FeNM8QRPSin9XtLATJ5dR3tKiJxgi5RL0o6UhdH8GN415
         L+axLSGxqgB93DyAE1p1ARLkHaqWJoS4oTlvNN7/UMWZrtMta7scQLuuBmF61k4GRPnJ
         cXQ6jYRqlxGVIzb/yVc81sBQv3THGj7P5QU+fwCuLOs/CFMu0B57KU5N3sB+P80lr3Md
         OVszmOr8jfiWnaU0vmj5mzWQNx2igC+h9ZWmLf5EWIrMy1t0XHChYi7Fchw3PcHBu4/n
         zMTA==
X-Forwarded-Encrypted: i=1; AJvYcCUhvh2Ictxp808/00QXcYhR7bYWrEIkkXYz33J/rgxDU6Fq9FIelOqGOwWeEQoFiSXx83U5avjoVYLO@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4eaxRs33iW8Wdj9sMuMN7MA+Geyi8zC5bLWxzv9MLr12JT3aQ
	W+hYHSYzUqgVl1mwqLqukBe7GE4gV9ITSPhurgIDdKT5R45YFHDMThD2
X-Gm-Gg: AZuq6aLt5oFA9Vd+phMOQsYF9oTa88t0Qsmw4FjArBFkZbA1tW2LkZ8o43mzYJsaPj8
	eXeAtkegz5wJghjQNOEBHJMXvCNG8eybUE5wzPx0fwde4NB92ksxy9o0Mg5tuzdZ42ooBFOW871
	udYZNGI+b82sHrZRnRSB8uAwVIKEE+Fqz7aQ3soA0GbrGFoafkDx+Pcq47VWjcKFOzEO/71o6Hw
	WS578Nrg7ITG6hUoXpraQHjqY2EJuXYnSg34q8JmAyMjG2pEmMuQXUSn6ypjk1npBOy0YEh2jsw
	ZJ7t2yrGaSrVBnR0VJSySaOFiVkxBlbi4ZKmuxLw2MFEiyaoWbEBR/+4Ma0m5cZx2Gv8cJjAl+G
	9D20IXtJq97iAcQMIlxAyOl4lP9XQQy4qaK5ZZvdYJJdh0E0dRK8WOnv1/PLjM8QLl0MbhVjpVg
	7UvSNUsvIR+XcHCCtVYoaW/VJ1BjbMjxTeI1wFsDyvmkGiJLx8G7JR
X-Received: by 2002:a05:693c:6001:b0:2b6:c617:f7a0 with SMTP id 5a478bee46e88-2b6c617f916mr8511359eec.6.1768938902933;
        Tue, 20 Jan 2026 11:55:02 -0800 (PST)
Received: from google.com ([2a00:79e0:2ebe:8:d631:e554:f0bd:4106])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b6b34c0eefsm18611112eec.4.2026.01.20.11.55.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 11:55:02 -0800 (PST)
Date: Tue, 20 Jan 2026 11:54:59 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, 
	Chris Morgan <macroalpha82@gmail.com>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	simona@ffwll.ch, airlied@gmail.com, tzimmermann@suse.de, mripard@kernel.org, 
	maarten.lankhorst@linux.intel.com, jesszhan0024@gmail.com, neil.armstrong@linaro.org, 
	jagan@edgeble.ai, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, 
	aweinzerl13@yahoo.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 5/6] dt-bindings: input: touchscreen: goodix: Add "panel"
 property
Message-ID: <4dkhkwtbxmvns335xahyrwijvy5qjyifieuo27eluiehkjzman@v52ihb3o6o3s>
References: <20260113195721.151205-1-macroalpha82@gmail.com>
 <20260113195721.151205-6-macroalpha82@gmail.com>
 <7863194.oDFzTOozpa@diego>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7863194.oDFzTOozpa@diego>
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-257604-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[lists.infradead.org,gmail.com,lists.freedesktop.org,vger.kernel.org,ffwll.ch,suse.de,kernel.org,linux.intel.com,linaro.org,edgeble.ai,yahoo.com,hotmail.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitrytorokhov@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 700184C246
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Jan 16, 2026 at 10:49:25AM +0100, Heiko Stübner wrote:
> Hi Chris,
> 
> Am Dienstag, 13. Januar 2026, 20:57:20 Mitteleuropäische Normalzeit schrieb Chris Morgan:
> > From: Chris Morgan <macromorgan@hotmail.com>
> > 
> > Add a "panel" property to define a relationship between a touchscreen
> > and an associated panel when more than one of each exist in a device.
> > 
> > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > ---
> >  Documentation/devicetree/bindings/input/touchscreen/goodix.yaml | 2 ++
> 
> This patch is part of a diverse series right now (drm-panel, input, dts)
> and therefore possibly could be overlooked by Dmitry, as the patch should
> likely go through the input subsystem (or would at least need an Ack from
> Dmitry, for me to take it along) .
> 
> Best way would probably be to pick Rob's Ack and resend it separately
> (pointing to this series as user).

You can definitely take it through another tree.

Acked-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>

Thanks.

-- 
Dmitry

