Return-Path: <devicetree+bounces-264844-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oDr7EDP0jGk8wAAAu9opvQ
	(envelope-from <devicetree+bounces-264844-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 22:27:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A9EB7127C0B
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 22:27:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4E22A3009F81
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 21:26:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C33C436212B;
	Wed, 11 Feb 2026 21:26:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="C43FWdmO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 925DC339719
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 21:26:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770845164; cv=none; b=ZujC9O0n/40Ct60+HuCHcPV8y8OMJJKgEZaD1rKegPejQ3yUFrfLKw5L19yhhM1YhbcL/POiotC4qNMxlHDf7V3Q4162/Olz1eWbRgGvd114u9EQPJfHwQBt3cyA/rcFgCzKHh4UCR9stH/ZqBhDcc/7MqLsyfCsMaDlBAsxK9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770845164; c=relaxed/simple;
	bh=33X+7c51EAcJiWLg9z3hvYsrew62Mmu6d6pFOcq/T+8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cZEmQjWhS/uC5Z4RKxcT1Kol/v7lCuZ6LpO1JyOwlwsbrk9myN2YtlGUqgzRhSRbVB93twDVPJDLyIkCrVPMBM9bgC7Vimx6g3ivgl2/0x62I2miF4kyg7RjrVfKM41NyEsnYyRwuHYC4F9hsUbSaDjfM8+lx5jICIVqjkzeiiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=C43FWdmO; arc=none smtp.client-ip=209.85.160.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f177.google.com with SMTP id d75a77b69052e-5033a2c4b81so64293161cf.0
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 13:26:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770845162; x=1771449962; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=PU9zPPZ6q/jlj/hCesIMdYrjem+AOCzJA8bXmrZmXNY=;
        b=C43FWdmOe1GEasCvRejDCptyZ3GP+pt/Mw8U+Cgc1idgAf2BU2AZa04mDpA1718rRP
         MqOj7DaqX2glV24cfMQtpAUX9QlYii5QyKP2QiKxZRfEOazThWvH5XvAe4v9z1IGtY6N
         1p6gBS4FLESkAkkrAWlNevtIEmjw4oH881jLWDs6AZFdyAvfUvnchGwPke8BZw8VFFlV
         /undCP3PL8AYj/HLLSJsdRCFnRptMvV+N2zp1OCqyAxF4Th3ZYE3nFZdqUmurDJSSA78
         XdoIuATO/yje52+yYnCLLUIMYKAJJazAyRDmXzo9rNbm7PRonIM9YR69O5tfAgwFFzBq
         tuCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770845162; x=1771449962;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PU9zPPZ6q/jlj/hCesIMdYrjem+AOCzJA8bXmrZmXNY=;
        b=maTc13vEu4WOawqS3oD1gpQia4TDvkI+WDxoz+AQYYCCFOYBwKY7viFVnkb3wIN6vi
         oi/DHFRa8VO0rsEdqcjGNJhlcLDLwGpQubaRvYAIpdjulEDcEO7ePdJZYoICionEbR1/
         mMNUFQ6ZusnaCiYhEZa8mIBIf+WgwFxHMam9H1iOs+7YyFtTBCMXHso38IZLnSayATFs
         M96nM/JLKVe4RYSFQjnohLzn6oJBhDNWQ+9tCNqavRKOkpKEBVt0ObcX/0UieVrdZqii
         f2qoG7t11F/GzIEbpbO6PkroTAX41e0frIRRDFICTyNREzDdLBUbXEVJb8PTle8aVvtP
         iHQA==
X-Forwarded-Encrypted: i=1; AJvYcCWg5NoxnPXCQclw6NnwaPubglg22QYoGCpfYKQ2ZwKd738DsRQYxJHy+z5+FJkHsgWTgBUpKxp+dvye@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4/cLQQJtXS24UiXeGmW/f3yPiazlBsUkRIzelsXz4krmRxn/4
	ngy4dH6PgWuDYoaGVr/4BHdp5sFKnCRdBHRxxBO40U5SOTj8eg/FUlKtapirjQ==
X-Gm-Gg: AZuq6aJyBA3iw6kqaxJILcIA9uRC+G7WeWZxaIVeXOeXfactboVvbFfEVCY8QfRi6cQ
	RJrSSURMvjvuekUpOzJnHXjPaSqiH24IpD7J/JiEO7ULMMXALgDxJEl41UdxiTI7Wat1zf+uCoY
	mdsALaya/TGdmFrXf4EDQdVAnsRKSErIAXtxDvzgPbF5hHUresUSCWQIljlP4qSeta71E9VNnIX
	WuY3MxITyu2O8Npe8T6mUH+vNHZ7WJKYoB8V65v+ptA/QJKqJDjxFYF14Knwe1UE9ESLXtLTVz0
	8y+Scjb9uQGvKTHghWIJwkUEEcbZSTgd0tI4mZpAt845MZXd/lJxUGDLcyNfmDuKBgLnoMQCFYj
	q75cYDVq7fWYzu8M6Jyd4KdmlbarB+R8xm91ezcmlKAeCU/+665frTRENDZGmhQO12jlU1TQHWC
	L7hmbR3nc83XORrHlSzKL/iHf7Sg==
X-Received: by 2002:a05:6214:212a:b0:894:68f7:40f2 with SMTP id 6a1803df08f44-89727868cfbmr10595546d6.2.1770838373169;
        Wed, 11 Feb 2026 11:32:53 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8971cc91eccsm20103146d6.13.2026.02.11.11.32.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 11:32:52 -0800 (PST)
Date: Wed, 11 Feb 2026 14:33:19 -0500
From: Richard Acayan <mailingradian@gmail.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Thierry Reding <thierry.reding@gmail.com>,
	Sam Ravnborg <sam@ravnborg.org>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
	yifei@zhan.science
Subject: Re: [PATCH 6/6] arm64: dts: qcom: add support for pixel 3a xl with
 the tianma panel
Message-ID: <aYzZf-9rqqBikpNA@rdacayan>
References: <20260210023300.15785-1-mailingradian@gmail.com>
 <20260210023300.15785-7-mailingradian@gmail.com>
 <037d0771-a802-4ca4-86be-5b032635395a@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <037d0771-a802-4ca4-86be-5b032635395a@oss.qualcomm.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264844-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,gmail.com,linux.intel.com,suse.de,ffwll.ch,ravnborg.org,vger.kernel.org,lists.freedesktop.org,zhan.science];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A9EB7127C0B
X-Rspamd-Action: no action

On Tue, Feb 10, 2026 at 10:10:46AM +0100, Konrad Dybcio wrote:
> On 2/10/26 3:33 AM, Richard Acayan wrote:
> > Some Pixel 3a XL devices have a Tianma panel. Add the separate device
> > tree for this to support these other devices.
> 
> There's not a device upstream for any kind of Pixel 3a XL - should
> we anticipate a non-Tianma-panel one too (i.e. are you sure those
> are out in the wild)?

Yes, some postmarketOS community members self-declared as owning the
variant with the SDC (Samsung) panel[1].

[1] https://wiki.postmarketos.org/index.php?title=Google_Pixel_3a_XL_(google-bonito)&oldid=89946#Users_owning_this_device

