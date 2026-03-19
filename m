Return-Path: <devicetree+bounces-277571-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cAWpDhqEu2nhlAIAu9opvQ
	(envelope-from <devicetree+bounces-277571-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 06:05:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B788C2C617B
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 06:05:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 62D3F302EEB0
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 05:05:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBC30292B54;
	Thu, 19 Mar 2026 05:05:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="K6G+FcZv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f170.google.com (mail-dy1-f170.google.com [74.125.82.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B057C279DB4
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 05:05:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773896727; cv=none; b=MeNl6AzlETRB66yMaJNsBhLbjx6HSfQwfLtbyqhPFaUjgL/5j0Wri0gijzWUDnR7i7IK9fLMlisGCY4hov55uEuTcspzxOWWQ30qyJP50sXrKH0aJhWX98J+OgERABtAoX3MxohtbSdqoKoHiAOibCOdlp577R7M3IwtK973by0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773896727; c=relaxed/simple;
	bh=t7AD1W4oc26vxJ396UlI2p+sFRRUjpy/QTkzcQyVREU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UuPLNUuS4zFbMe8xbsybUaLJx03/xFWD7tQzHDISvM83nEj6tHd1qcSth854r5irBmm8/1N97rnsMBfWnnj+n3FaXOHK4EYSVkHr37zi8FpGeXAUaP/b1l0UQ9yehXl8ILWsVCIhITJ03Nl1FVlV4Uuiges8K6G9zZ0wwKz6Gp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=K6G+FcZv; arc=none smtp.client-ip=74.125.82.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f170.google.com with SMTP id 5a478bee46e88-2c0bcd8f194so895400eec.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 22:05:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773896726; x=1774501526; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=F8SjrRV9Yg0anFvQFZOjECns1z57O1adeI2TqSANhPE=;
        b=K6G+FcZvUItiJregkDxTVKv2I7RMnxi2V98WZdh6KmwYAVSNfb1wvwtoU9IZTooE+o
         bxDdqtFYtYdhHP1T42Twg5afbW7pmxJNrFJux4fh5AEdYgjzUWFm0BorTXHJy2+SzdsM
         zYYf+afFNX83yTcTuxWtwMG2UbvDy/ZUJg9SS7g7oyqEMHNU0qrDT0ES8Hdem1VCX8md
         Co2+AkFKREj4TzzW9ChZX3q3B/deil+fodi6J2NCC22ynF4udHF6BOJ8IbUb9ob6E9ad
         cUJVm16/qDEOTg0HZqPLwr82sqCkdWSGji8YQ6W7f13gucK+thSCnS4+aAi181UelvwJ
         6bBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773896726; x=1774501526;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F8SjrRV9Yg0anFvQFZOjECns1z57O1adeI2TqSANhPE=;
        b=d3q6sgvNxyU1WwIIkWt0L5LPTn4XyUR7sXecLWunvOxgFWwMK7tTmwtvJ8QxhmLJR9
         E0nqNblxI7410yIJwaQxeEHGWomtsfXEHv0+HoNuW9apkpZM8D+cUWV1qzyV8QQcE4vc
         VmssX8p98BIaAYGpCj0jCQijUPpdFm8XDB5lAsWtTI4lpB4CYaei6YsmlCWxevMZAxWO
         hQjvJRilqMwC5ksSdiw1uAREtyWCBQPYK0yhQtWXzmfXXScYX2ZEAakoVm+dQ2OhTga2
         Z7dvtvGnNrDOrHAtl8q5oG8DR4GzKyIk7XuNZXUB9BFt6dFoN4qGTAsxiKkwC/Xu7lcb
         0rIQ==
X-Forwarded-Encrypted: i=1; AJvYcCVPcWgAuomHl8jx2HXCEPYuDIbIi5pCnMRGmdeofg4dl7eX5QAbwtyc0AupU5gfvPo5SUxNREeLBQCs@vger.kernel.org
X-Gm-Message-State: AOJu0YxUZ7JZVYPzeo8ONaPXJxg549jgBqDNFBVUHfPveTTJXwtIPqS/
	+WduAvOMZQaHP9oXZTy1ysHBgfLIzLGDlYXD8zrluiKJCADuq3gHBF+Q
X-Gm-Gg: ATEYQzyUoWgHpubMNGMzT9pHlGeIijRKLRl352G+JaVl7jOcPUANIxr9Q7/9vz9dQ+8
	bn40I02ki0JacJo9rRzue5PaJJllmmvl/ODvAMSAdFs9uWXqr8N6DO5ugEPe4JAsjZ1NiWsrvx1
	8aqZwnaHFVSWDYeCJaeqVbeM1oECM4JJpjHtiYRunnQyABiwsh5SuPAHMTsQD9+LA0GOmFfZaJ3
	dNu1g4YYpVpxAf1uNFeJPmFSivmRxmQmYICaTjbBenRKi7SEmpxLBcXB7UNelruLfi2LcFr7Oks
	ZKzCDC87w3F5g0SNp9aqqV/Mtecv/Wxo98fuN4fipV1LKiNGPEP/EFb+/Mh8OOamTeOAgsxtMmQ
	v6RTlTchn25Ze0Yo3p8oYqWt0x7jQqrzB65YGi3HXTLsbCcpKMu2ZIC4F2XT2WpbPGfH20nuISr
	GwQ6fHud4j7OORyGSOp9rAsAL8U6kNwnEa+3lDbWzqW7ikw8ETg5+zz/CoopLA1wk=
X-Received: by 2002:a05:7301:168b:b0:2be:ca4:e13f with SMTP id 5a478bee46e88-2c0e5085f7fmr2369601eec.23.1773896725720;
        Wed, 18 Mar 2026 22:05:25 -0700 (PDT)
Received: from google.com ([2a00:79e0:2ebe:8:5966:2bd9:1ed:e7c4])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2c0fb178b82sm1036378eec.6.2026.03.18.22.05.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 22:05:25 -0700 (PDT)
Date: Wed, 18 Mar 2026 22:05:22 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Eduard Bostina <egbostina@gmail.com>
Cc: daniel.baluta@nxp.com, simona.toaca@nxp.com, d-gole@ti.com, 
	m-chawdhry@ti.com, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Mark Brown <broonie@kernel.org>, linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: input: touchscreen: Convert TS-4800 to DT
 schema
Message-ID: <abuEDqUuFElpmEwp@google.com>
References: <20260316181038.9771-1-egbostina@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260316181038.9771-1-egbostina@gmail.com>
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277571-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitrytorokhov@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.963];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: B788C2C617B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 16, 2026 at 08:10:37PM +0200, Eduard Bostina wrote:
> Convert the TS-4800 touchscreen bindings to DT schema.
> 
> Signed-off-by: Eduard Bostina <egbostina@gmail.com>

Applied, thank you.

-- 
Dmitry

