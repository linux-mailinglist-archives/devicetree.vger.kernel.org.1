Return-Path: <devicetree+bounces-261738-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SNoUGUt+gGnE8wIAu9opvQ
	(envelope-from <devicetree+bounces-261738-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 11:36:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B90AFCB0F9
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 11:36:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4CE10301A715
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 10:28:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09E17358D13;
	Mon,  2 Feb 2026 10:28:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="Q5H3M+Rd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B148286415
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 10:28:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770028125; cv=none; b=FBhZVw+xyvC5vNvIdYkhvyKvl2G9MO0TnyMWufl63Bz3pzlkT5neo3EsyVL92urxn3PPDsHpyijEvn8a0Hk6k9f8A8RbruVG0F4vngP+0JscPA5XFqbtvXQARuGb0WFeta0IxdY1A5gfDRWRnxzbrmQLNg0XZR/vo2Ot7+XEP98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770028125; c=relaxed/simple;
	bh=CGixetDr5XeqnxjJDvhNpPyZj8eg9DUKX5ATtM82gGg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QMCi+4T4+UxB5knLT/YKx7ulydg0S/H5zHq7zU+y/m0he+ZsFA1MUAnQW3iJanteCiuHqQBx8tz7P9SrX9qp0gb5A73SmCMBhzdqkyd2TruU6odyWwHyXGPsHXSciAEmrSBIzWfLwleayG4vh3nkZnmO4bAxbcL+0hBeTo+3fzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=Q5H3M+Rd; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-482f2599980so13647095e9.0
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 02:28:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1770028123; x=1770632923; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CGixetDr5XeqnxjJDvhNpPyZj8eg9DUKX5ATtM82gGg=;
        b=Q5H3M+Rd1Rl0brN8K/nBJ30PSRxA6VsPhcF5MCwCck++PNaluTZGT/KBinDazDWC75
         lANgybPLnn79TsnOBvywJIJeQkCD8aws8CYjBFos2MpgGOR2+VRwG55v+doItsWLx51s
         lJsZZFhTQcqbfqDZ+eCINoQ6NbDMDDGZoeqxSLOb6H//ocSvMNfXW9+G+rVaqhPnlv3/
         SXeFVRv2k6JM6wwYTKiQqrUl/x7bcFffKr5ei6HfGZkbagFT7LUx7/vfjblc20VSpvA6
         zhoGGgfg8X9jvquzzSiIfOQS1ZCnniWhJNesOnJamYQwfJvcT5nSiUv1XzXJcIPz2nTI
         sg/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770028123; x=1770632923;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CGixetDr5XeqnxjJDvhNpPyZj8eg9DUKX5ATtM82gGg=;
        b=jasxCg72NBZBW9WOIosO2HCEoKrZF1s/kB6w6vVRv/UgszfNBnTd3SOfbvX/aEwgpt
         L+gxZRUQbnpdNtbv6Jc8IM2J4g+4oPp7y1Gtby526gTOZdlKFAe8vcw2h0j9dCsIsbTU
         BntiF0L9fERWM5Cuh8UxRJKq7JJTLukICe7RbUm8I0n+O9XrruQ2bNWfMrcoHSbO2aqb
         52hf365lA/Vp8sDeNjNrFFwkLcf5QnyIeWQX7Mldecza7DzpUjlO7m5BQA30mvJnjG/X
         PAE8XE/8wEl28LKBZGQZAaua0yxiS9kNXYmA97az7FGbmpTwlGvh5t4UVyPKpFvhHAVK
         7cLQ==
X-Forwarded-Encrypted: i=1; AJvYcCVjcF0Ixx1bA9ISifgOUnZwa6TOb/BIv0n7lzwY6OM+PD0MxjCZi9i17CfThgrP41/o9E34fpSdiCUF@vger.kernel.org
X-Gm-Message-State: AOJu0YxMcaWcGRZRfG1LDfJJPg2L2ootqZFEZbS4aZ7ImsUL0SCLTIYy
	gRssCxA2MTdVdxbvBbz/nJOHb8W9djEjS1pQQAIFWYJ7y3OK/RiZw73uvJyRsrcth/s=
X-Gm-Gg: AZuq6aI5rfslR16aVlJD9zWlhc81d68ou5PoqluBvXlgYeGPrgVXrD+sst4rEZioqms
	ObzQWrGNkUbaRTZKCPuVYipTu6gqZtI3FNL2hIBJ5zwYO14Wy+I8Mwkg7Mxf6aecsmkPGS2Svus
	z5ZqDBQNbbre1/D3UhsFk6zxzfDJddPtc925x5uIt4rEwWTATy2diHTJAVFa/Xk1oUH/5fsJxRA
	1uAmMnqm8ON7C5I3k43bJu12S+OVWxVx7pv61NdgyD9y5BHWX+gTcTuuZU1+XWAaq4OIbQt5rL5
	ZYrRNUIGYomxi0x0YxMwsjYh/zUaAL2bGByWJTk8mvKyTBYE8MgHmJpsu8JcENb332IPRlSCgyq
	+1akrQlfEM/9tBch4lwH94U7l80rkJ8asew21Vm2WdHCFWiDymCBxTNlrAisScDcP0O5M3RfeWf
	KKFOWLoUMpq4hXnSHSTWtz5a+EBs5A39LyrT8j8EqBUxt4SlOrK1Y5QQ/nuwuKvzlrZN9EgNcCV
	mIfHpRN40GYZsZSP+uKDcrQ8G74BSGsyucQ4xOAuV8Pm9P+ZQOgo2lwnXtLLxAB7YOgApZVh6Ta
	UgkgGYU=
X-Received: by 2002:a05:600c:34ca:b0:480:3b4e:41ba with SMTP id 5b1f17b1804b1-482db48d595mr129371045e9.18.1770028122637;
        Mon, 02 Feb 2026 02:28:42 -0800 (PST)
Received: from aspen.lan (aztw-34-b2-v4wan-166919-cust780.vm26.cable.virginm.net. [82.37.195.13])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-480705956f1sm350132565e9.11.2026.02.02.02.28.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 02:28:42 -0800 (PST)
Date: Mon, 2 Feb 2026 10:28:40 +0000
From: Daniel Thompson <daniel@riscstar.com>
To: tessolveupstream@gmail.com
Cc: Krzysztof Kozlowski <krzk@kernel.org>, lee@kernel.org,
	danielt@kernel.org, jingoohan1@gmail.com, deller@gmx.de,
	pavel@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, dri-devel@lists.freedesktop.org,
	linux-fbdev@vger.kernel.org, linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: backlight: gpio-backlight: allow
 multiple GPIOs
Message-ID: <aYB8WPTUXHqfZpyH@aspen.lan>
References: <20260120125036.2203995-1-tessolveupstream@gmail.com>
 <20260120125036.2203995-2-tessolveupstream@gmail.com>
 <3f3c47ea-1660-4bd4-ab89-3bdf58217995@kernel.org>
 <54d156ba-e177-4059-a808-2505983b4e2e@gmail.com>
 <500b603d-5abc-4c45-8d56-bbc88fc85b83@kernel.org>
 <aXnxGPNtk5BwoJOu@aspen.lan>
 <304ef935-e82b-4556-be3c-6ec4f57cf68c@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <304ef935-e82b-4556-be3c-6ec4f57cf68c@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.06 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20230601.gappssmtp.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261738-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,gmx.de,lists.freedesktop.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[riscstar-com.20230601.gappssmtp.com:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[daniel@riscstar.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: B90AFCB0F9
X-Rspamd-Action: no action

On Thu, Jan 29, 2026 at 11:11:34AM +0530, tessolveupstream@gmail.com wrote:
> On 28-01-2026 16:50, Daniel Thompson wrote:
> > On Wed, Jan 28, 2026 at 11:11:33AM +0100, Krzysztof Kozlowski wrote:
> >> On 23/01/2026 12:11, tessolveupstream@gmail.com wrote:
> >>>
> >>>
> >>> On 20-01-2026 20:01, Krzysztof Kozlowski wrote:
> >>>> On 20/01/2026 13:50, Sudarshan Shetty wrote:
> >>>>> Update the gpio-backlight binding to support configurations that require
> >>>>> more than one GPIO for enabling/disabling the backlight.
> >>>>
> >>>>
> >>>> Why? Which devices need it? How a backlight would have three enable
> >>>> GPIOs? I really do not believe, so you need to write proper hardware
> >>>> justification.
> >>>>
> >>>
> >>> To clarify our hardware setup:
> >>> the panel requires one GPIO for the backlight enable signal, and it
> >>> also has a PWM input. Since the QCS615 does not provide a PWM controller
> >>> for this use case, the PWM input is connected to a GPIO that is driven
> >>> high to provide a constant 100% duty cycle, as explained in the link
> >>> below.
> >>> https://lore.kernel.org/all/20251028061636.724667-1-tessolveupstream@gmail.com/T/#m93ca4e5c7bf055715ed13316d91f0cd544244cf5
> >>
> >> That's not an enable gpio, but PWM.
> >>
> >> You write bindings for this device, not for something else - like your
> >> board.
> >
> > Sudarshan: I believe at one point the intent was to model this hardware
> > as a pwm-backlight (using enables GPIOs to drive the enable pin)
> > attached to a pwm-gpio (to drive the PWM pin). Did this approach work?
> >
>
> Yes, the original plan was to model this using pwm‑gpio, and that
> setup worked. But on the SOC there’s no actual PWM controller available
> for this path— the LED_PWM line is just tied to a GPIO that’s driven
> high (effectively a fixed 100% duty cycle). Because of that, describing
> it as a PWM in DT was flagged as incorrect.
>
> As pointed out during the SoC DTS review, the correct path forward is
> to extend gpio‑backlight to handle multiple GPIOs, rather than
> representing them as multiple separate backlight devices.

That not quite what I got from the link above. There is a suggestion to
use gpio-backlight, but the reason it was flagged is because pwm-gpio
was unused... it was not referenced by a pwm-backlight.

Having said that I suspect it is better to model this backlight controller
on this board as a gpio-backlight because from a backlight controller
point of this that is physically what the controller is composed of
(assuming there is not sufficient capacitance on the signal for a
software PWM to work at anything other than 0% and 100%). Even if those
GPIO signals are connected to the panel's PWM input I'm not sure that's
relevant because none of the backlight controller bindings model the
panel anyway.

Whatever route you select, you do need to make it clear in the patch
description *why* it is correct to model the system as a gpio-backlight.
Deferring to (potentially ambiguous) review comments is not sufficient
to explain why changing the gpio-backlight bindings are an improvement.


Daniel.

