Return-Path: <devicetree+bounces-258058-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2Cc3FLIUcWmodQAAu9opvQ
	(envelope-from <devicetree+bounces-258058-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 19:02:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A3ACD5AF07
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 19:02:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1A611A880D9
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 17:04:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57FD649253F;
	Wed, 21 Jan 2026 16:52:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="K7Op50E7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E607C48C41D
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 16:52:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769014329; cv=none; b=U2spfWzBmatzL129N348qbHMbBoeQHHS2s6Nvh/HE5dYtzcPVl7r+4kA1VaYNEH9Ijc60OPJDt8lajnYbwjxd+9oXcDwQQoPo+i6fhNP4v5tgbtgLL8k7ZQwwh8ycJuywV2WMF5dVtkQUu3CcSu8HZbXcNiSr1ugDJhSjcPNqQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769014329; c=relaxed/simple;
	bh=4HRBjG7A0xNa2ZgGS4Ah4wBKvv4emyEssJAWSX3yqrQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=d6ZLrlGnTesXG5RflXPu41ROVc+kyG6JOTUSNKxWL/NQAvqZvu2tDE7a0Lf5ylUciqE/IyFE89QcrfD1V4YcjQwTMn5G4vRMpOP1J9iFfMvtdMVVdu2dgEFewhAOTmFH/upM80m+p5hDh+nBNcx6hNHw1lg/TwwiKb2H/CYqH3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=K7Op50E7; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-42fb4eeb482so30404f8f.0
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 08:52:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769014325; x=1769619125; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ihhUfgSz7A2yaxp14lt5kXBlvsJX0TtPumRcsY55W6Y=;
        b=K7Op50E7vJdZNwShrzqpNy8Bo2RtCBJh1LRdxfRWDr3s74lHPe6OCASwzNCOtpRKVi
         spv90Sp4Z8xT7n3K+d2gX00pWINi7Fp/IrdVpl8srSIwelbwWbK8jrQMql4bSynI+1cA
         vISjT8JRjt6cL2gIShiMJnkFW6vZs366ru7WlsCCKikoB+1/0mC0M2nRzgl5H7SnQ036
         Nd0jegIkhAaumQOIsV2iP9oLPNd1QjVvj9LziaZx0osLUPdirRaRw6rvDNX52H+eBWSE
         RHHXKpRY3nvuGWtMEyxHKqMAtGIxnB4Zyr1ugyXt/TmkCBn8LYMG3tZ+MI6flsVw660K
         9mZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769014325; x=1769619125;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ihhUfgSz7A2yaxp14lt5kXBlvsJX0TtPumRcsY55W6Y=;
        b=qXqgE1zi3OtbSgOoXIrLU1kTQh+l/rRCz/nkm060PDMqHzBcWgE02AT6FUVOr95W2G
         uwYH+8kbSueDwN1Ne9urUUCdPHttaoqHcDGR2HxSYpqKBdSf5OeO4FS7tEuObqWq5Flb
         SlbpsjQwAcl4VTmRoUS9XkWZtUaf/jSR3hCiJo3+dtQhWS9Wo49dof0V+bJ439g3sN7x
         v1tUPi0M/cXhHaMNkNdI67KGygWML7KTrm53wUt98/+amMBL0yLiSK12gOjhFoOZW6o6
         /RQBX3/rWDJtCidvqL/RWgkbio3v3YHfmVBhFcXfjuoUNyverLuetbuslYbO72baL7R0
         9GdQ==
X-Forwarded-Encrypted: i=1; AJvYcCWU2IzkSZAp5eqmg5SrlIJ9maEMv41gZCK/e7mRPfu+y5DLQJaLhmORG688i1J7hlLEuATSc/wr5u0C@vger.kernel.org
X-Gm-Message-State: AOJu0YzPLQMh/hHaGBqtBJKeLgbCovj2Duxj+K6/OD34h9mj5Zs+jKgL
	qMQuVbbeQM94BN0PbHFklXmwhOH0gtgKvtVzA4GqJI0DCODczYs+IJL/
X-Gm-Gg: AZuq6aL009OttT3eZF2CENDClUzj8HM8Q8m6ZSIC07Z/JO2kW+VaXhopgQGp+d0fK6w
	DE4tELCYtSv6UuV4NsCXw2EMRzE805hd8GyvKtipZoD+BYFucA4watSxwr97W1AZdGlGBfnSicO
	7LaLCsG5ADRctsVJ8CYEME8LtldfaiUij7mEA0pJ5HDMXw0fssL2xHf2YzhHWz5bMmBjijPT9S2
	SbYWaaXBDoOAJDzbuiSoYICxzwhJrnkCmfAK3wlf+wwQiZnOI6Qtp0ypvqTOtqfAI40bSZwhxzQ
	Sr6b8xDgPXVJ4qD3cuROkFHapopu0R78AQPibFTTL3vmsCHV+inzTscZlYA8cALs7C14CXx2d10
	9ZgSlPfM5XMQPkjvjfelnuo+V/IOiE0GNl1FmavbU9oPQEmPtSKbiIY6YO0iVDYK4m+6LCd9NGj
	PD732+j7vU8mPBeeMcA7MKqhrRBy5YmoVOWc5rK7efPiet0gWLIzbeFsQ=
X-Received: by 2002:a5d:4a88:0:b0:431:764:c25d with SMTP id ffacd0b85a97d-4356a053cc5mr22591618f8f.35.1769014324966;
        Wed, 21 Jan 2026 08:52:04 -0800 (PST)
Received: from anton.local (bba-94-59-215-181.alshamil.net.ae. [94.59.215.181])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435924ae723sm11119706f8f.41.2026.01.21.08.52.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 08:52:04 -0800 (PST)
Date: Wed, 21 Jan 2026 20:52:00 +0400
From: "Anton D. Stavinskii" <stavinsky@gmail.com>
To: Rob Herring <robh@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen Wang <unicorn_wang@outlook.com>, Inochi Amaoto <inochiama@gmail.com>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
	sophgo@lists.linux.dev, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH 1/8] dt-bindings: sound: sophgo: add CV1800B I2S/TDM
 controller binding
Message-ID: <aXEC1f0gy64FY_Pl@anton.local>
Mail-Followup-To: Rob Herring <robh@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen Wang <unicorn_wang@outlook.com>, Inochi Amaoto <inochiama@gmail.com>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
	sophgo@lists.linux.dev, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
References: <20260115-cv1800b-i2s-driver-v1-0-e8b22b8578ab@gmail.com>
 <20260115-cv1800b-i2s-driver-v1-1-e8b22b8578ab@gmail.com>
 <20260121163213.GA3413426-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260121163213.GA3413426-robh@kernel.org>
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,outlook.com,perex.cz,suse.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	TAGGED_FROM(0.00)[bounces-258058-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stavinsky@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: A3ACD5AF07
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Jan 21, 2026 at 10:32:13AM +0400, Rob Herring wrote:
> On Thu, Jan 15, 2026 at 11:17:38PM +0400, Anton D. Stavinskii wrote:
> > Purpose: introduce DT schema for the CPU driver
> 
> Please write a better commit msg. Use complete sentences for starters.

Thank you for the review. But I'm afraid this is initial version of the
file. The current version 4 is here
https://lore.kernel.org/all/20260120-cv1800b-i2s-driver-v4-1-6ef787dc6426@gmail.com/
Hope everything from what you said is already fixed. Big thanks to
Krzysztof for reviewing, help and patience.


