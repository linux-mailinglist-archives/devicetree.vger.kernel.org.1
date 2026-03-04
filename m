Return-Path: <devicetree+bounces-270858-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OCDRCL27p2nfjQAAu9opvQ
	(envelope-from <devicetree+bounces-270858-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 05:57:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C2CC1FACAA
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 05:57:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2692130817FC
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 04:56:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25E4A37F8B9;
	Wed,  4 Mar 2026 04:56:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IFGDBpuJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f49.google.com (mail-dl1-f49.google.com [74.125.82.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0960F37F8AD
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 04:56:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772600189; cv=none; b=i+gLli2n+rUmBsmE9JfR8CbVKs2u4+2+HP/v8yJS2LZQFaepUpcRGSIYt47UXI8fBE8R6vXWZB9DqoPctnrESUMTEzLM8gcWZDcz5rMBr+vzx6GgaSv/DcewvGhZJpmitwvxegGujN1nApylVyBMVSC3WSsGcaAMQFiaqU4nMTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772600189; c=relaxed/simple;
	bh=UvPE5KRZ6oJZo3zfJg7jfhskZOj8msyDuu72/RzPLkI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fMeTNuwulp9o6b6jooWbp+wBUGvrKkT5E4631RwfVqtDB2oZ71apwanRlvTMpoc+kS2eSRUaeXwDWm7XWat/7Ad4ryThlHm3G7l6p5cx6tSL3cin6QD7KAmbTjuFFVvL6VFg42Pn24vuKCtGMOW7yxIVhrz5/oAw9Vx4tMZln3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IFGDBpuJ; arc=none smtp.client-ip=74.125.82.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f49.google.com with SMTP id a92af1059eb24-1279eced0b9so4008095c88.0
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 20:56:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772600187; x=1773204987; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=aTVcJPVpzFRvlrM5JfQCAuSEqp9bcj4wWHMuF6BWOGQ=;
        b=IFGDBpuJy/7IZ/5YUpIsVtURidmeCtrpsAAkxNrxiC6nf+MKT+z+CwQAphQ1m/oSAb
         sWytT6unxtI7JdcXS57SYoqGZeGnhoN7X58Z4a2e71dFLfS5UIGH/DKbndocTkWf6Ssn
         WUwoxDqlWGz8NOB3brMhem7NcYGTIs2Z+AoPxn3LRucOguAWS1wtRLFWW4O2eqIcucDK
         3IU74kZj1rWfrCtef6wTOXKg+mrK5VJtfYeA7S6awBAIDCpZZmHuYXcbcnulDdvXHCxN
         itnpBs4wOPjSke2b1/2bFoUTrTCYLzcBWgHsWmvdw34HHcWGyru1Wz6wFWGyqIqTDCkT
         6X4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772600187; x=1773204987;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aTVcJPVpzFRvlrM5JfQCAuSEqp9bcj4wWHMuF6BWOGQ=;
        b=pQZT/33v/TS1TrKuuaJOS/uPJBQn/U/GJpXMPypwAB8pwModUq/WeSL3VYextYMPlU
         PNPNenDn9kKDnQVn8bkLrU+cyzR2BPmHSWGlXEYhGf/OhjBYCtnmLy8zNHrAsMWxVGDH
         IAmm2gQgFapP2VkhXNCxwhoQZeXW6ZSzAsynKkPoyn9FJ0xzsxPFMehNYOYUBJkbd2lo
         Eq1cmFdWoqkZrc95bkwT9Mi94W4VHGAsBTJbGzCYZV9P25UDDSdVzRbWBTtXQrzRjVCa
         hX29apDa5thI23WlaPZrw+K5HTWC6s1P5/DkxUTLmnlPKzt1GXRsFDLC8+tI4JGWpnZw
         TfMg==
X-Forwarded-Encrypted: i=1; AJvYcCUT93hPV5LcCm+Vut4tAjvEOuRh/T1c7Kweh/PFN7u/wEv+c5mzokTDtsdZAgoOWzpo5gRmsUxr4xEX@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1UP3S5tkPZvjzs4WUWh/4ckNoHuVVjO6J6nC1nvfgzG0DnsKa
	ooRZcPvv1tuupxTFjVWf5U3n58n0H9Z/4r22bNJEBuHnvdun+/zPphtx
X-Gm-Gg: ATEYQzwSTMXm4M6zpxunZ3X1+efs2BcXlqm0xvLTZjnoK1uzYpI9ubj3J18gfrVFlmV
	3efFRrPBNRLk+16JHrNjo1Y8V7z3XX/hYXnY1SWUU3wRNziDNPxYiPbIJvCfbsHJSsW9UCcUKJV
	ckuzIffBWuIiKvFF6o5DI2dYJ8Ge5k1KaG7iRMBf9Ia3wsL1c1WvYcMLTWe5j+ygTK7Ny9prfIT
	xn4BNW874L8WLImFAKJ53LJEuMVV96Dj2I8wMTd6bmMcDboMrS8fuq7VmHo0hwqCDWREaCgBYmr
	WI9uBkemQGGfM+i+/m3pvGkj9c/lq5zi8lrC5VHDj6CefBF9qS6+6xgEy9zuERQr8HOs0CN3O9E
	xhCdy9K/RhB6AbaSzIf8MgfPj1YP0xNwZEHC8eUWJMv1WwyqKk0aVFME0Mcx1K01tvHnmFBSvWr
	eyFZO5+5cl3dgMXLwXm4TFsdr7WhsHCizEL8YWi/A3SG+hRCtz5Vr3Ze4LEwZjnNX24xgi+ykbr
	aI=
X-Received: by 2002:a05:7300:dc8c:b0:2be:1803:7e11 with SMTP id 5a478bee46e88-2be311bd422mr242905eec.30.1772600186892;
        Tue, 03 Mar 2026 20:56:26 -0800 (PST)
Received: from google.com ([2a00:79e0:2ebe:8:a048:d9ec:d217:7d59])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2be12805b93sm7512637eec.15.2026.03.03.20.56.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 20:56:26 -0800 (PST)
Date: Tue, 3 Mar 2026 20:56:23 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Luca Weiss <luca.weiss@fairphone.com>, linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v4 2/4] dt-bindings: input: awinic,aw86927: Add Awinic
 AW86938
Message-ID: <aae7dQsFhJnQWTYM@google.com>
References: <20260302-aw86938-driver-v4-0-92c865df9cca@fairphone.com>
 <20260302-aw86938-driver-v4-2-92c865df9cca@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260302-aw86938-driver-v4-2-92c865df9cca@fairphone.com>
X-Rspamd-Queue-Id: 8C2CC1FACAA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270858-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitrytorokhov@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[fairphone.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:email]
X-Rspamd-Action: no action

On Mon, Mar 02, 2026 at 11:50:26AM +0100, Griffin Kroah-Hartman wrote:
> Add bindings for the Awinic AW86938 haptic chip which can be found in
> smartphones. These two chips require a similar devicetree configuration,
> but have a register layout that's not 100% compatible.
> Still, because chip model is fully detectable via ID register, these
> chips can be documnented in the same file.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Signed-off-by: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>

Applied, thank you.

-- 
Dmitry

