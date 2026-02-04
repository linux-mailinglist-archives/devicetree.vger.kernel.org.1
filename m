Return-Path: <devicetree+bounces-262610-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ICVoFigug2kwjAMAu9opvQ
	(envelope-from <devicetree+bounces-262610-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 12:31:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E85DEE52A4
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 12:31:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0A7D630B3B19
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 11:26:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8591B3ED101;
	Wed,  4 Feb 2026 11:25:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eNXIISo4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f48.google.com (mail-dl1-f48.google.com [74.125.82.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F663ECBFB
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 11:25:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770204350; cv=none; b=U/4YhpU4EwBqB+oELc9DuWvkcU3Ba546kWCXQous6R1+qEfNcFjexXKZY6xE2Pe/+aDGR1n2KV248BY2U50+juJCmwCeIN1orQrHo36xG5OwuJmFI7C4QXRJHJHRtG8vwIRKbqay3Fvrfa5+VqnFSHmQB3JlhwRUdfwU4ccABSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770204350; c=relaxed/simple;
	bh=cHrIGCrLD2E71lxcn6R9T8rwGbDwPkRE47D0XFgJzv0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XKnTK7Q00/nBgRibqxlnrGIsaVfZzl5O9RB8shfi4zpL90P932smH37nhi5+UnZwY8ds5TzWQphnqnKhe1FyHiKUjUFbkLnB+ACy89m8CCKcxaNFnCtWpjQH/YlPymyxvubzAUuJO+WZvyVzIQ1Unay4LhxzODsrPJXK4k0VD2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eNXIISo4; arc=none smtp.client-ip=74.125.82.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f48.google.com with SMTP id a92af1059eb24-1248d27f293so2615900c88.0
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 03:25:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770204349; x=1770809149; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mYrSGr/bgBDeAZ5X1xIVgbMDj6wzpB8qLVpSIaqJT/s=;
        b=eNXIISo4aQQIBQHdlO4XbwCqot0+VXtRPHNtKHFI+KFB2jiPqVYCUg71ZNyWmtzGgP
         wC4maQro0HfaHDjxJiy4vKxGZffOBxtO7EythNtQfHnuz/bMT8Rojp1Jrebvx8BRudY7
         B+mC6/km06Kx6RUxFlISKqYRNvXpMDgBqWZqqRBv2YOqva7GN53eVsS/KvQU+hfdHXSJ
         rAer8iEs9vYZ2jNTS2TkooAIlfgCQDl8NFToJnG7AHnGBP48rF8mVuPKnkK+27qUSmQ6
         uf1xL/D9/Yli3yanC1RS4+u+K5/5X0i/Fq6Vb5B08QglP9Vg3NkIlgufKhBD+PgzxxwA
         cQfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770204349; x=1770809149;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mYrSGr/bgBDeAZ5X1xIVgbMDj6wzpB8qLVpSIaqJT/s=;
        b=BO49HUPGk/9QSBf8iMQdLxiDtR96aOqBQ8P1XkM6ig8/K0cOqZvnWnfYtfpTXgcjwF
         663KZ8fiPL6VkLimHper9NeH2X9sNa10Iqj2TMMSFgsD4bPfZ1762NFeH0BXFGDTi615
         mnRxyJuWFIb2ijq8eLie/QW92RWr5WQNUBt1T8Prz4jXSBYarsnzPZhAr7oxCL2EVVvP
         CzL3QrFiZbwFdElwsF5wB4wMumer2/vgqCXxeLMpZYJV35eKzo9tk8sMLf5TOqR7IhKd
         riZEs/awMbcNCkN3s0tTVCAJB9z5wFwLo5pfXZCmm9hi+DlfPzgCz1d6BVSj/HpsnjXB
         lj/A==
X-Forwarded-Encrypted: i=1; AJvYcCVs6KljQGimatquzfDCCEGqFIsypMybzNRl2+/iA59ddZpkUyd95UGWa+Cs4v18jQFALoW7mUj9t3TG@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0chUBZH+VGkbS+XFxaemtrdmPdcxmzU4g3mHQzBdFi8ipgB22
	WtJuZ2QyUUIe+XFcfibznOGmQg8xBi754Z1IHntn7phTuOFp7lOzcllrfYxBpzKA
X-Gm-Gg: AZuq6aJSUQfWcvVD2b2ivp2G95LiNh3o8Wv9ltTIQeAzFF7WiQIqVPkimvdkuMSzA7R
	AwM/IZqappVHEXNN7UO2TyPoSj1rwwv7J4PJSnGgY6MMhhg2BhyRzlmfwbUqcIsAgUxZShOHivg
	6W5GnaYKiq6PFkcSfK5y8T5Iqd5wnRoZ+FgHGvC9488nnzH4jZV14xKvgwMTqDl1BEyogJyciLw
	gqeueXDGWdfXCDl+AlKW8cA1IbL+HTG4xu1jo5Ka2KpbbxquCLD8sW/LFZ7JJL4RbS+BDw1F0xd
	SXStPWZ8tMbxY6KhaxEjASkEwK/Te/ysVB7Yt1rNZ4aVMXJ3gL9tAsmadKlL9gCrwptz+Wm8v53
	5suXrOu/cR18n9hmmgYzQE0IZvkn68PqIQ00cJqRjkYgv5UnvYt/jc1lk/kIktbPon2vaXdddSB
	OS1eaP+l6ZIQi5/GJ5o4JE9otBmNVRzof8JsPeTgEMXFoQjdtzxP4G
X-Received: by 2002:a05:7022:325:b0:11d:e25a:d9ca with SMTP id a92af1059eb24-126f47bd21cmr998880c88.26.1770204349187;
        Wed, 04 Feb 2026 03:25:49 -0800 (PST)
Received: from google.com ([2a00:79e0:2ebe:8:b789:f5e2:3597:9114])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-126f4e111efsm1602698c88.8.2026.02.04.03.25.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Feb 2026 03:25:48 -0800 (PST)
Date: Wed, 4 Feb 2026 03:25:45 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Raymond Hackley <raymondhackley@protonmail.com>
Cc: linux-kernel@vger.kernel.org, Markuss Broks <markuss.broks@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH] dt-bindings: input: touchscreen: imagis: allow
 linux,keycodes for ist3038
Message-ID: <aYMsshqLbX3DfIO2@google.com>
References: <20251224100941.3356201-1-raymondhackley@protonmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251224100941.3356201-1-raymondhackley@protonmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,kernel.org,lists.sr.ht];
	TAGGED_FROM(0.00)[bounces-262610-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[protonmail.com];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitrytorokhov@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[protonmail.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E85DEE52A4
X-Rspamd-Action: no action

On Wed, Dec 24, 2025 at 10:10:48AM +0000, Raymond Hackley wrote:
> Imagis IST3038 provides touch keys. Allow linux,keycodes for ist3038.
> 
> Signed-off-by: Raymond Hackley <raymondhackley@protonmail.com>

Applied, thank you.

-- 
Dmitry

