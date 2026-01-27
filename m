Return-Path: <devicetree+bounces-260068-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mLiJOVP/eGmOuQEAu9opvQ
	(envelope-from <devicetree+bounces-260068-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 19:09:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6745B98CDF
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 19:09:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 753F2300A13C
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 18:07:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE9AB325495;
	Tue, 27 Jan 2026 18:07:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OX/67nQh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1C203254BB
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 18:07:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769537272; cv=none; b=t+qaSHViIZVdRUvH4mi547PUL4rR8lV7BQ6UZR/nFhOGsItDjvwRUL34/Nob/DS6w65XyXZ5rmZjrlHh3t2++RkHdtr7IGubH3hAv9hNC6MmmNsl/WmIicymRbcQbI3ZMMlDM9qLrfAnzbaIh9t4SIiseTbLMhFqQVvJJ2uzJMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769537272; c=relaxed/simple;
	bh=ngAa7exeLB5gDmNghwIR44uqNNxwffiVafjG9Dte/YI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uUpnp7mni4UX80zq4LJ3n/GEPs7yrJe/Gcb7tZJzUgrmduXfJk3UuAlVcvzxchgJCnAEv/6CV0SEvzWwwXgY9KBZUj+DMPM9Jp/UqG8hI/+nObM4W7JP7eC7c051IfZRYpTHDy0ejVRmIRUapujQvnhIGBwyqrhk92+qrqYO20k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OX/67nQh; arc=none smtp.client-ip=209.85.215.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f182.google.com with SMTP id 41be03b00d2f7-bd1ce1b35e7so3821115a12.0
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 10:07:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769537270; x=1770142070; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=61Q9qvVACFV/Gip0ktst+VombCVJQ9f27Ti9Ba+TeIw=;
        b=OX/67nQhuKJI9w5yYVZG62m+a1uvJgOB4OS6fNgdKEs123mMK4ASovLG0vbYaAMmIf
         qBDAXI4rIoUK9+2dtnhAyCDnCygK1dsz/iaR9xEjaP2zYATetG9j2SqQziNj+lKZxMaD
         mfWwrq2qfSlRippgMxl2t1WoCYIEz3A33XBDGcvK9+ruzTk2RzsQo4O0HUJuOc1/7hs3
         lw+C52o49DuV4WUk05AwJnX17gCxlNAZZO+SMz5qW5qNciZ5LTnij8xz/6AtokD5mmjI
         679an6Ud83CDZp6xZE5RGaDRGMaHsJc7BKSIaMQLPhC7M2F3pwqh/9c1izJfjvVKLrpz
         gWVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769537270; x=1770142070;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=61Q9qvVACFV/Gip0ktst+VombCVJQ9f27Ti9Ba+TeIw=;
        b=hB9Rsixe7bkNxOKHsJK+pEg+JKZY3KyK/2LrBJvsj5tHJUvOes0fHsOl8uBadcsskp
         pxRBjUmVrphIiPdzSssETPOBw/xx61lB3FYiTJa+ud0uIvHWDsr0l+1/trny7mgeP7NV
         zP31UPHzy7NC7ndTrY+LlkAPr5GChL7tucRqxUMao+tu2lLSiscJIOsn+ZBRnMNyGrlV
         xQF5QprlnYQA5vl4gyvEInfYWMUt63JmvyP18v4+xaoF4fL9wJuCB1ywbXjGpKcxgPUN
         nMXB8lpstSCx75p9KhOQgifMx3x59EDBF+JEcAwure5ne3F4wHOIXYErgkVZf8nVD0cG
         +biA==
X-Forwarded-Encrypted: i=1; AJvYcCXd3G6m3m6wQFQ1TWWfiumvwVZoAcD2ccixI5RDLSzG/qDdP1JXL4qY9l7YNxPAoFxijx4kXhN30o6n@vger.kernel.org
X-Gm-Message-State: AOJu0Ywf/KVay0SA+I4vQHaHZTWf/aPDSAW4LKhp//9XNwJ9Ykd8vwSa
	AcFTw+k4hATqSKmC/Pqattzns0ibHQ+yMFsI+AMjp9aBZ8ImeEbjtaDD
X-Gm-Gg: AZuq6aIzzMPisQ66JoPMi+f3eQGHjC0O5NXIXJqZwZCTb73TcYtitdsHN9UhvXVBiHR
	HUVN9NpzHJJM2/xpPh0jbJBBGWq5Leicc1uR/jxZWLsu/yQ5SzOxImbT69863RTWrwLuVC0iLmt
	aSdo+XdqXGdCjfSGnGl/sJgC0hC2PraGqfmGJ9/BZmtsCN4wCpefVCtBLSC04T/9sPXr+yfCgOS
	KMm2Rm5B0PRFTUHGVcm3lxDvYcaUlBeth60hLaJe3ARn1b9Ka15cJbbp9IBebNhg/VJzhHWuCHg
	JZ9tTeI+NJ27esx/+LHHy9JXXRl+lqmM1/Q6HyEUikjDhX39FfDbuyIzobz50hGpPYhAJ2s13o3
	02eS/gYLPo/E/f0YCLDXeNIdx/N8MAv+5aImvzsAMSTuXbtvDJlsJsdT3u5Lp2jgey2Mmp1rTyc
	66LQBcFX2oOIfhnAg5esVumI3iHpIb7N5UBk8=
X-Received: by 2002:a17:90a:c2cb:b0:352:e796:bb65 with SMTP id 98e67ed59e1d1-353fedae2efmr2325937a91.31.1769537270166;
        Tue, 27 Jan 2026 10:07:50 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3540f2cb0a7sm134264a91.2.2026.01.27.10.07.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 10:07:49 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Tue, 27 Jan 2026 10:07:48 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Wenliang Yan <wenliang202407@163.com>
Cc: Jean Delvare <jdelvare@suse.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>, linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 0/8] hwmon: (ina3221) Various improvement and add
 support for SQ52210
Message-ID: <956b92bd-950b-44fc-af85-6f76ed60656f@roeck-us.net>
References: <20260119121446.17469-1-wenliang202407@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260119121446.17469-1-wenliang202407@163.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260068-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[roeck-us.net];
	FREEMAIL_TO(0.00)[163.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,roeck-us.net:mid]
X-Rspamd-Queue-Id: 6745B98CDF
X-Rspamd-Action: no action

Hi,

On Mon, Jan 19, 2026 at 07:14:38AM -0500, Wenliang Yan wrote:
> Make modifications according to the guidance provided in the reply.
> 
> 1.Modify the description for power[123]_input(PATCH 5).
> 
> 2.Re-annotate the significance of the limit value calculation
> and the use of register masks in the sq52210_alert_limit_write.
> Modify the calculation process to resolve arithmetic overflow issues.
> The limit values SOL, BOL, and BUL are all stored using the upper
> 13 bits of the register, so shifting is required. In contrast,
> the POL value is configured by setting the lower three bits
> to 0 directly(PATCH 6).
> 
> 3.Resolve arithmetic overflow issues in the ina3221_read_power(PATCH 7).
> 
> 4.Resolve arithmetic overflow issues in the ina3221_read_curr,
> and validate channel indices in ina3221_write_in(PATCH 8).
> 

AI review of the series provided the feedback below. Please fix or explain
false positives.

Thanks,
Guenter

---
Analysis of Top 8 Commits in drivers/hwmon/ina3221.c

Commit: a0f07f4a272b hwmon: (ina3221) Modify write/read functions for 'in' and 'curr' attribute
--------------------------------------------------------------------------------------------
Change Categories:
- CHANGE-1: Added read/write support for inX_crit/lcrit/alarm
- CHANGE-2: Added read/write support for currX_lcrit/alarm
- CHANGE-3: Refactored ina3221_write_curr

Regressions/Bugs:
1. MAJOR BUG: In `ina3221_write_curr`, `hwmon_curr_lcrit` passes current value (in mA) directly to `sq52210_alert_limit_write`. `sq52210_alert_limit_write` treats the value as Shunt Voltage (in uV) for `SQ52210_ALERT_SUL` (divides by 5). This fails to account for the shunt resistor value. The alert limit will be incorrect for any shunt resistor other than 1 mOhm.
   Evidence:
   `ina3221_write_curr`: `return sq52210_alert_limit_write(ina, SQ52210_ALERT_SUL, channel, val);`
   `sq52210_alert_limit_write`: `regval = DIV_ROUND_CLOSEST(val, 5) & 0xfff8;`

Commit: ef198f703062 hwmon: (ina3221) Support write/read functions for 'power' attribute
----------------------------------------------------------------------------------------
Change Categories:
- CHANGE-1: Added read/write support for powerX attributes
- CHANGE-2: Updated ina3221_is_visible

Regressions/Bugs:
1. BUG: `ina3221_is_visible` incorrectly enables `hwmon_power_crit` and `hwmon_power_crit_alarm` based solely on `has_alerts`. Standard INA3221 devices have `has_alerts` set to true but do not support power measurement (`has_power` is false). This exposes unsupported power attributes to userspace for INA3221.
   Evidence:
   ```c
   case hwmon_power_crit:
       if (has_alerts)
           return 0644;
       return 0;
   ```

Commit: 61e453283222 hwmon: (ina3221) Support for writing alert limit values and modify the 'ina3221_read_value' function
-------------------------------------------------------------------------------------------------------------------------
Change Categories:
- CHANGE-1: Refactored `ina3221_read_value` to handle SQ52210 registers
- CHANGE-2: Added `sq52210_alert_limit_write`

Regressions/Bugs:
1. CRITICAL BUG: `ina3221_read_value` leaves `*val` uninitialized when reading `SQ52210_ALERT_LIMITx` registers if `ina->alert_type_select` is 0 (default). `ina3221_probe` initializes `alert_type_select` to 0 but does not sync it with the device's `SQ52210_ALERT_CONFIG` register. Reading these attributes before writing them results in returning garbage stack data to userspace.
   Evidence:
   ```c
   switch (reg) {
   ...
   case SQ52210_ALERT_LIMIT3:
       if (ina->alert_type_select & SQ52210_ALERT_ALL_SUL_MASK)
           *val = ...
       else if (...)
           *val = ...
       break;
   }
   return 0;
   ```
   If no mask matches, `*val` is never assigned.

Summary:
Multiple significant regressions found in the series. The logic for SUL (Shunt Under Limit) handling for Current attributes is fundamentally broken regarding unit conversion (mA vs uV) and shunt resistance. Visibility checks for power attributes are too permissive for legacy devices. Uninitialized variable usage in read path poses a stability/correctness risk.

