Return-Path: <devicetree+bounces-257561-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6DLuGb/fb2n8RwAAu9opvQ
	(envelope-from <devicetree+bounces-257561-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 21:04:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C794AF8F
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 21:04:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A9C3A9E2380
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 18:29:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF8F8466B4E;
	Tue, 20 Jan 2026 18:25:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="X+2bdaxq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f169.google.com (mail-dy1-f169.google.com [74.125.82.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 530F7451079
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 18:25:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768933519; cv=none; b=PtWGhGlzKEgRbIXC28U/EV7m5TBSG8WIhmihXld2zyeDhMqwkPqvAOUttXRAxjacPdJKxbGnHmvs2qYK2I0CeIqTMoVCl2OHQeqM7Y2P+ES1O0FsLtsWkKJUPoaw+B1dscBj2WAr7QrdUZ0/HGnG5CuGUv2KpBmx7gtCSCDwc6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768933519; c=relaxed/simple;
	bh=/majb68NZLle+sZZ2y2oJqxlBq+JGPPCK5WcFsqxy1s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YS8U0H7PK89JZWpugYIktQCpSSBOeL3ZwBYgc9FBhcNsjJd/TU5ZhwC01j3KP1v50ehuuVXHPDUveSW+HcrmfztaoS0tq0qY3pZEzv+1G5SwUGRX4aIioQTq+K8ku3bJ4wZ9yVIDgKbdkqh9Wm0TfSAMVVJUEoe0ictht1UOQvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=X+2bdaxq; arc=none smtp.client-ip=74.125.82.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f169.google.com with SMTP id 5a478bee46e88-2ae2eb49b4bso11690546eec.0
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 10:25:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768933515; x=1769538315; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Xv2BCMRvJI4AEzFRhX5RI8tLqrofx98qgSkyulQwJX4=;
        b=X+2bdaxqFd+bqdlcm2jtfY9dVIxHMeviwkZ0UpBh2325SGKRU0hdZhuNPJ6VjF7clX
         ITZmCmvx/1Lam/HqKevzPs89loXDCwWFkhzM7ixikdK4sCbORColXIhkGcnBj/bRQCEa
         w0BPxwPthqzQ9qHR2Kz7ZBN+u+nC9BEVQGwnxZHbM1kGerO4ekyAXc2Gd8PRqpMiTvb7
         hO5xZV/kcIaN+iS/zZa7TiZ5LxMYh+o2TD9vtw/rSbAOnMTk0yDdahKzPuOHP9k/d6RI
         iiudHGj+6aOkF+qAnGP+Z9Od/5FFHlWwEqz5S1rXmlaGLL5a7wNRxtimXY0sMr1XlXA6
         oWtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768933515; x=1769538315;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xv2BCMRvJI4AEzFRhX5RI8tLqrofx98qgSkyulQwJX4=;
        b=umGAVil5s/T+0grfwIQmRkyawJHoT1vM8PWfQxpXIBjMkvxG4n+eqprOff5MoDruwe
         3gZNs0LLF/Vuvd2BbNTzamXrlXN0YHGsNrGw52oJEL5METRWLkdZsEq5iroQjGfiAoEI
         bSYwN9QIRdrhyoedRrJSYqpAnl4hjMIANuUp6g9K4M0hg1LAq5tKjsk9KIHNACRXb5hm
         Jf+RL02LBukFAiBNEzVZTuPybrfgKH6KUqbUTASU8cxNRQKULBIYYCrRAvqkjgTBlubf
         PvbGL/yTqk5Y6INedX2tZyVV2amvTiNw3cfmWP5CjrJbZVjugBcOZiJNvbHA7fpF7VJy
         Ru0Q==
X-Forwarded-Encrypted: i=1; AJvYcCVV9u0Rs4wOAFlFhVieTPmGZ7O1jiROxmGVcLm7d4c7otOxbQNyvOHf0LkdM8WDMs0138AAm88XGV8a@vger.kernel.org
X-Gm-Message-State: AOJu0YzpMWno5aXhuXNU/jj1VX/mglUntUQ1zi/+k8eRmAoh3ZioAE0x
	7xlSiSTHZ/AtVToPdb8IIbxj2f4VeZWm11n6XCY5kNclcZN/OuFNhgkF
X-Gm-Gg: AZuq6aLBiWO0wUJ06qjhXBI0LZ1eyMZcq1AzLIl9LGJ9ayK9opRUyGCM5fCSD3XApKL
	jjjDDmjE0o/kQdf0gj4B3mYBi/GftteMVpwF7EuVIUNqCtVLt1cdOi9INVJZ5ySj8GU5GmVs7nK
	6BtB3ip8qlraC5/5lxL1/wIP2sKZ0X+m1sQmx/iQFh6TJteadh89aFtpNt89NOznDFo9HAMJrhj
	+ri+pm7D10+9CwrWZaBl7uCi3TtdJZeEoRQwhccJBDb4Z/1nQKG0ry1pD5WrkfIFj+CCYGXu/uU
	6lzCDpGrd/Qgdu0M1oPR6fO7yDU1p2AiumIv5sapIBu3vfp6YVM3FUlMCEMrzCJctF90rn9Dofv
	ahpwN+4blcHT9W3/cddpI6DZBUN7/OQwSDYfZeSdINX2HRfNlf1+49bTjPvXxHnAiDyg3q8800n
	4brUTre1yh1EkrM++9WOWJAoEAjptnYAzuQb/D/yqGqre4+A/h3vku+ivSigKI620=
X-Received: by 2002:a05:7300:6ca1:b0:2b0:59da:f798 with SMTP id 5a478bee46e88-2b6fdc7bff9mr2098244eec.21.1768933514943;
        Tue, 20 Jan 2026 10:25:14 -0800 (PST)
Received: from google.com ([2a00:79e0:2ebe:8:d631:e554:f0bd:4106])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b6b364579csm17884404eec.23.2026.01.20.10.25.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 10:25:14 -0800 (PST)
Date: Tue, 20 Jan 2026 10:25:11 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-input@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Frank Li <Frank.Li@nxp.com>, Job Noorman <job@noorman.info>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v4 2/3] Input: ili210x - convert to dev_err_probe()
Message-ID: <fw7csyedd56txho4ccx2qmhxpqisvp4uz5ubofatcr6sbvu5hn@vekvo3k55kf6>
References: <20260117001215.59272-1-marek.vasut+renesas@mailbox.org>
 <20260117001215.59272-2-marek.vasut+renesas@mailbox.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260117001215.59272-2-marek.vasut+renesas@mailbox.org>
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	TAGGED_FROM(0.00)[bounces-257561-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitrytorokhov@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,mailbox.org:email]
X-Rspamd-Queue-Id: D8C794AF8F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sat, Jan 17, 2026 at 01:12:03AM +0100, Marek Vasut wrote:
> Simplify error return handling, use dev_err_probe() where possible.
> No functional change.
> 
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

Applied, thank you.

-- 
Dmitry

