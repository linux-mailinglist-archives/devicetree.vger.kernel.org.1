Return-Path: <devicetree+bounces-263052-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yKuVCmOrhGk14QMAu9opvQ
	(envelope-from <devicetree+bounces-263052-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 15:38:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C3CF4215
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 15:38:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E37C1304245F
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 14:33:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34A3140758D;
	Thu,  5 Feb 2026 14:33:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Rgj6yKJ4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06E00407578
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 14:33:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770302020; cv=none; b=rg4sXpLwdohyTNmTNxOvgQmYvDvgoj6uDVJ/m8VowV1UsY88xlBfI8gFmkbXS6Ch6PlKIKJZpem5qFQAPFTbV8cb1XDxVv+oHhwtyImMFZvxKAVGpz+MHUXtxeh6o+aylgAMMzezKnk6H/ARJ8VUAwMSw/fFVuEWn76Fd7pl7TU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770302020; c=relaxed/simple;
	bh=8mtHYKz85mrDlNo26Vu/58tRJscT6uBhGIxN5uFSaDE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ujvYLK7YOQoDEIt0S3en6ESGXjZ9kENV7DQ0jSUPM5S5fkJJw3tIX/AwY4AcDfvKreE+hJcomynbtdgYPJV78RQmSceeDP6cOtYYxh5gHeL2GXr9P6jZx/QNfAjFmv5jQvPxZC6AKqPOR9zEVDOq9Hsam/XwuzlkLkcXtMb1hiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Rgj6yKJ4; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-823c56765fdso678459b3a.1
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 06:33:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770302019; x=1770906819; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pyK0JQ1lbzkHe30b8rjazNYXS7yd13NCbDJg71YiAfA=;
        b=Rgj6yKJ4Sq8U1eq1tNAPcfU9LGF4Hci96O9m8P39lS5kYQTBOrZUCodFHBvhEFq/OV
         rVQw1lAZ7pYjax3XpS2bndJgWtAoDZmAf5TFiewxKEG8WTUpNWDWDc3UYw85gdboIUX/
         WE1bHNcEgoNx0GVKUkA7FM0bpV4htzke59Px7Ha8Bc3BsA9h/yrqAghqcQoqfcuHvXl1
         NAO70vMA6jaEXGctKH29ak9rVCMAYEc7P9cUnheeLu1lUh8YYGdKrpGjxg1g0fhRdQuQ
         YlLHD6MEJHv1Q+d/BjPGT2Ro0J3qRzUt30buN3YdQL1U/rJKC234oYKLQu9WTBKTVRkP
         fzPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770302019; x=1770906819;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pyK0JQ1lbzkHe30b8rjazNYXS7yd13NCbDJg71YiAfA=;
        b=qYMnTDeXYcm939oXStKv9xILq60fBcunIy0JkfCAKPbDBm3agmSrXYyW/HfiVTUl3v
         50mPmNkLVjttSVj+frKV0RzsDrLuIU+w7LDo5iF48ukdqdz8bc0nCiKWsKQz09fEVmLb
         iCzYcm7bchDl4C0yzpYqAfQhEwGYDDvozKeAKXw9KM9NhizY6Bxf1TklmGNW2NCXUioC
         52dkt0ZJlXRfiSN4rW+E1YAfEIrHwI02xoyAJNirnhCWP+K7i2E+4x5Ozg4gumTR5fF/
         PJ2Jaz8FBW/jth1tFGxzqyb/ATbdm0ZbcjK+NbHp4gxmOP3p+MJTbUBCne10WigcjcWM
         slKQ==
X-Forwarded-Encrypted: i=1; AJvYcCVsGNotNWCA8Pf8q4+UVfS18i9GQe45Siuer7o/MAmlAMvz0uGkquYwxNi2R+ICYnl3c9hmrhBv9TZW@vger.kernel.org
X-Gm-Message-State: AOJu0YzAIlN7iufe93bsAo2xsQhRleGce97E9eOTko7bxacD4nJdUzQP
	nROf+vMob7LspRwNztNK8q7c5TGSh9MIXGoIMqzh9yW7Hu01Jbt1+Om/
X-Gm-Gg: AZuq6aIt2v/br2hG+ZgI7Nydjks27a0CPXVxKGxBKYm7uYnrcLdQRqE/jETAq72Bc2+
	dEroQPpbRTX5yUyyvr2S5+r9wAaKY7poazy8YtGHNvD76N1NaH+DL6KZLWGnN/uwC2RyIZy7ufo
	xZ0DETAsEnamsV7tGJMJki31W1SPkQF1tDP/axGuVREHeD9ndKGe5wN4goYyeICS8xzbuQpcYWD
	KJh3hRxqVzX23yeec9LLDGBrFNWIfeEOaZsi3nzJ5gqAi47qFJe995kCuBCU2AYQnb70LzTROL5
	rDR7cksid4VHlnNYPav92zAATwHAn3P3sawI7Gdg8af+NYupjoTgX/VFtwrWvOb9pNu0d+vj1Tu
	PVD2lgZUCF/yw4O22QRCvuwu6sNStaZVZqU/cu8RsgVDzKltjlQGGPzkRXf5p6RwsyeVUr/nRHy
	5XSkWQGMAqGoV6zPxUBaS32lgQ
X-Received: by 2002:a05:6a00:1949:b0:81f:852b:a93a with SMTP id d2e1a72fcca58-8241c19d22dmr6066843b3a.2.1770302019265;
        Thu, 05 Feb 2026 06:33:39 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8241d16f5b9sm7826047b3a.7.2026.02.05.06.33.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 06:33:38 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Thu, 5 Feb 2026 06:33:38 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Colin Huang <u8813345@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>, linux-hwmon@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-doc@vger.kernel.org, Colin.Huang2@amd.com, Carl.Lee@amd.com,
	Peter.Shen@amd.com
Subject: Re: [PATCH 2/3] dt-bindings: trivial-devices: Add Delta Q54SN120A1
 and Q54SW120A7
Message-ID: <f03ee47e-1f24-4170-9bb7-a83a09d683a8@roeck-us.net>
References: <20260205-add-q54sn120a1-q54q54sw120a7-v1-0-09061ecacfc7@gmail.com>
 <20260205-add-q54sn120a1-q54q54sw120a7-v1-2-09061ecacfc7@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260205-add-q54sn120a1-q54q54sw120a7-v1-2-09061ecacfc7@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263052-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[roeck-us.net];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D2C3CF4215
X-Rspamd-Action: no action

On Thu, Feb 05, 2026 at 09:34:36PM +0800, Colin Huang wrote:
> Add two additional Delta 1/4-brick DC/DC power modules,
> Q54SN120A1 and Q54SW120A7, to the trivial-devices list.
> 
> Signed-off-by: Colin Huang <u8813345@gmail.com>

This should be the first patch of the series.

> ---
>  Documentation/devicetree/bindings/trivial-devices.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
> index d0f7dbf15d6f..f430e49b9ec1 100644
> --- a/Documentation/devicetree/bindings/trivial-devices.yaml
> +++ b/Documentation/devicetree/bindings/trivial-devices.yaml
> @@ -95,6 +95,10 @@ properties:
>            - delta,dps920ab
>              # 1/4 Brick DC/DC Regulated Power Module
>            - delta,q54sj108a2
> +            # 1300W 1/4 Brick DC/DC Regulated Power Module
> +          - delta,q54sn120a1
> +            # 2000W 1/4 Brick DC/DC Regulated Power Module
> +          - delta,q54sw120a7
>              # Devantech SRF02 ultrasonic ranger in I2C mode
>            - devantech,srf02
>              # Devantech SRF08 ultrasonic ranger
> 
> -- 
> 2.34.1
> 

