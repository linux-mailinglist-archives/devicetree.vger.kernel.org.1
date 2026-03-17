Return-Path: <devicetree+bounces-276753-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AKnsDwh3uWnQGQIAu9opvQ
	(envelope-from <devicetree+bounces-276753-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 16:45:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DB5DD2AD405
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 16:45:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2ED1530A2802
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 15:43:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 727793EBF1F;
	Tue, 17 Mar 2026 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kZERi2MO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f53.google.com (mail-dl1-f53.google.com [74.125.82.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54DB63EB7E5
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 15:43:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773762233; cv=none; b=RuWTAg/aVLclE8ujM2C7L107gPLinH9EJPzObCirEr+4JoVTQILBkNoMX+ZLAzCksm63WtQ08o6esJun75Qtkdf0kUd2yYQYrnszuukIEPw9IxllrQLcqpxdo0Egf4evaeZLnVq4hStIw+huS2uTA0usZiGDrIxKywILLdWtT2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773762233; c=relaxed/simple;
	bh=zRZUHoNWzgyD/ScVuU2X/ckq5rk/LdVG84UvA9jfae8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hZDwq2aXw8WtTvd6MzzvdkRZXz3UikB1rzsH1GqhmixQykjUzZ9yGRj3Pxo81tkLYFCrv1fa2dFX7DcBauARgYxu8PNR2fscelXY+flWbmw8x2KUrvOrf2TAZUEL3UQjGYam4ObibfCfEo3qZ39QtM/I3F165hGr0MIc6ES/+n8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kZERi2MO; arc=none smtp.client-ip=74.125.82.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f53.google.com with SMTP id a92af1059eb24-127380532eeso379465c88.1
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 08:43:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773762231; x=1774367031; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=shf1P/Bjh/21uNftSB90qcfRnB0k5KOrDRJd2IK4DgY=;
        b=kZERi2MOhjA/VKpCEWi86TqumtqsOL3CFEvDgkBuRx1ry51LvMHSdG9Vqvp5ndooMC
         o8S3j6WF9jQWVYQ3ZMr9Bjpp2E7lGog/JRaxrMrKUn8JNPWNeZsJhKrk7qhoOl9t3Ygj
         F69ldlaSB+IYhkqsb86DeI2G0MVIMeLIo+kgu9zQjQ0FIAGItlrMX6KCkrWkc5sBI6JJ
         HUrI9qQ+GklilXEjjCieUtnvkYB9t9rIoEn2QPZwIKnZnp2Ikhc2cVnOWWn/OYqAMbfM
         igPUiFGQ//1/ADtICIrtAV5R3ovlAmCHal0WWmy00yqEPWL+0vftKgQiwYxLx0p+gUgF
         DNug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773762231; x=1774367031;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=shf1P/Bjh/21uNftSB90qcfRnB0k5KOrDRJd2IK4DgY=;
        b=qRPFBZt/uW4FoM4tCu8i8lLo3Ce73nWGP4WjJRHEyXVy0Q026y9vC30+vlEHhpvCYT
         7p1P1MimEnUKeejpMLfTZ6M4wFA4jtF+H4Ts7wM4wD+sduZLnHMb4vxN6D41cLuTcunM
         ih7YiYAXDr7BR8dsSW0G03VtGbSSx4q78sXkGWo6/agE8e+QLPSDSY53z076fOfkhsje
         dgfIos10SbTHbm5VZcAPnQR7VX9v8V24VKWWEXNrS1XND8n8QtukOerfsM3MXo1gStx8
         daI9AVKcXWKHkWGQhLq158ZPhftZurOVvP+b5x8q0UlrB5E7hTr/PBTWwv36eSlrFq8B
         NyQg==
X-Forwarded-Encrypted: i=1; AJvYcCWKy7iFp3pkAoL7X4pKHbpH0CLVWvg/vOjllUZ3ze+Tf9pJywIGQsizxG7bEZ2i97ugxYKh3a5S3Me6@vger.kernel.org
X-Gm-Message-State: AOJu0YzaYq7gZRQbRsnM+MEw8WEHX5DM1kRuzB6mpi7R38CDfdGXB+ml
	wYdd2ZfAFlH9T6caIHNmR8fDBZPdG4Gbfaqtg22aKxJLwYx0OHUNeerd
X-Gm-Gg: ATEYQzwGg7OofBf+7TDgQyAEZGHCKjyLX5/G8HjLQhiWRBGtH0/VtdpwdOTLRgitfjj
	Aj/ng8HKFICcZhaWY14g7UVXbypaPz+qKcOROvFqDvFn5ol7w+sVa/MWakn6tDvpoJbRKLjGFW3
	3xa1aSFmSFtr9IlKdsEr6cwUN34xPuWlKuij7fXmYvYPZxju87KS1hl9mEDLIepDmmPdPSIucZC
	OPP4RIx5sETtDDDQC1TRbNAkn5euTQxzhgMPbbnR66ToxobHoC00n17XWJbI4gkm+Mkqf5UOGD6
	StwdLcNN2UlnXr5QxkWcSRl/NajUG85GRLCl79BVGtsstTYA3FxCufEtJDQyRJeAl6Z3NIvpcHO
	jV2o2FZvIFLMuNAYGqph2bCpbfofhgyXB+ejIDXkXxUQ9GztYe/cM4YyEUium4Io/l3OPs9X/5n
	VAH7CLokaJvZpgCf+kQENKjBHRZwHJ+5zZsU6A
X-Received: by 2002:a05:7022:924:b0:128:ce44:be8f with SMTP id a92af1059eb24-1299ba119b8mr6680c88.2.1773762231232;
        Tue, 17 Mar 2026 08:43:51 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-128f639a160sm16648121c88.12.2026.03.17.08.43.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 08:43:50 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Tue, 17 Mar 2026 08:43:50 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Colin Huang <u8813345@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>, linux-hwmon@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-doc@vger.kernel.org, Colin.Huang2@amd.com, Carl.Lee@amd.com,
	Peter.Shen@amd.com
Subject: Re: [PATCH v2 2/2] hwmon: (pmbus) Add Delta Q54SN120A1 Q54SW120A7
 chip
Message-ID: <833aa0f9-6c4a-49d5-9ff8-297ceb508a65@roeck-us.net>
References: <20260316-add-q54sn120a1-q54q54sw120a7-v2-0-60e6182cc4a7@gmail.com>
 <20260316-add-q54sn120a1-q54q54sw120a7-v2-2-60e6182cc4a7@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260316-add-q54sn120a1-q54q54sw120a7-v2-2-60e6182cc4a7@gmail.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276753-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[roeck-us.net];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[roeck-us.net:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DB5DD2AD405
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 16, 2026 at 04:39:34PM +0800, Colin Huang wrote:
> Add the DELTA chips Q54SN120A1, Q54SW120A7 in q54sj108a2,
> 1/4 Brick DC/DC Regulated Power Module with PMBus support
> 
> Signed-off-by: Colin Huang <u8813345@gmail.com>

Applied.

Thanks,
Guenter

