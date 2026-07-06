Return-Path: <devicetree+bounces-321127-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XT42LhCbS2oyWwEAu9opvQ
	(envelope-from <devicetree+bounces-321127-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 14:09:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 252C7710553
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 14:09:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linaro.org header.s=google header.b=TIJAuIeQ;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321127-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-321127-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6F7AF3039564
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 12:01:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E20DB423794;
	Mon,  6 Jul 2026 12:00:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F490423765
	for <devicetree@vger.kernel.org>; Mon,  6 Jul 2026 12:00:53 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783339254; cv=none; b=VKHzGFOMCjexkF2h/8E8eydVQLPWCpTmgO26O+fcBPaBPpGrr25dUTIuWEc3th7+d3Lc/D3xpZtcNd5WmEipi8GpCIWOrBakU+ssBlbdZn2wi9cMdKjzk4Sc/oJY9YIwFMDXWUNdt1nFCfoe3C6PEL4S8RNa9FqHqMPFCyMHV/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783339254; c=relaxed/simple;
	bh=r9XUtHpKfeTdXDwgOjlZYIyK35oBv8vrawLZipTt11Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BvXpAvNGczU86NuTkbib3F2GPnx3YYYbxUOEV6gl8/vMMwOTPc+wZQdmAb32V/POkqY9aU59dQ1GsLjcuvH1bu/gy+N/cUrFEfYxKLTxGVEiVUTFAqs15zSiVp3EcrA/VpGXmPwcY5dnRP/54aU7/pjzE6Uk7okv3SskW3D4YRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TIJAuIeQ; arc=none smtp.client-ip=209.85.167.44
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5aebf96bc89so518540e87.0
        for <devicetree@vger.kernel.org>; Mon, 06 Jul 2026 05:00:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1783339252; x=1783944052; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=biOXAUvJRswLbNqI7JWxyP6Sd5/K1iR+OePGqxXqYqY=;
        b=TIJAuIeQdUVxneW1BXRkIaJnMy01Z/U574xTj0MpR7Gdt20jRThYWvII9tGddlU7UF
         THcgBVC7VEoJSTqPbuiMJGuc373I5ITnLAx2iYWP3IZTQUO+OdhIh32fw0fue2+SXqfa
         fCCxaHsZr4WvXKKn6wBcecsmP50nugO6h54EAvPV9OYJqvRlxgX/Y40Drw4aSU1g68nY
         ZIiEQ80NGeahRb70yt6B1JyTlnnj2aFbtm6+GJzQsfIu5VUXmn0N+Bmt3hpH0+8jxvdU
         c3JEOIn7k28yX50GecTTPJ6ifRltsU1CXaxaAi4pw9iN5fZT+1Pg/mDI0JlEp5cGMX84
         /mAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783339252; x=1783944052;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=biOXAUvJRswLbNqI7JWxyP6Sd5/K1iR+OePGqxXqYqY=;
        b=KAunBXFwrUtdwbSQfUgI08s2zCVOnhSGQwt7SRNC8UQz3oTLtXRiyDGYft9PCU2ICd
         p8SUmJREMyi0ml4JQ+LNIGUmnteK0PwnJ7despumK3L6Fx1IgAaiTsDdLwDWldBAvJKN
         AvHZXDgde+IGFC8RTqAPiUvDlxlr8KXTdBurlT79zrUHIyS1566qea+nS7dQAK77RcFr
         OzQoPWB36xmCFolpTJTk5fi/urYVZtac8QVYDC3AC2B1wGBPv5NmTH7+5rPu+1BCgdQo
         QZaFCu78kHDqk9nHzNMgRnwPF04elc/+gFphSLhsRv+JptQdiklcygQWn4hMNHOVkIMu
         +GDQ==
X-Forwarded-Encrypted: i=1; AHgh+Rq/uq98MVbVDvmgj6DcU9vQ1AN2PFehpl7QuiSNqO8A7NtI9ZH/CNv91ZEoJPfWxQpPwvq/Ueds0et+@vger.kernel.org
X-Gm-Message-State: AOJu0Yzo2190a2G3ucjCwaVYLpr3c0EghN9zzTYrXwtF7ff6yzqiGHj0
	Ycuom9VMfGBoT7rEA4dyFLCSvVi0CgNv/mmQhCH38UaOmIN++CqvFbrbkaAz+ek/6IU=
X-Gm-Gg: AfdE7ck4iJ/iSoXzflti47NelvlcA1IbCaHULrclvTTlNBI6mtytCGEk0hUbRj5uHn1
	CHzSyecgiGzAyrwvCZkWKBxMKiHsVzQHf84i9sdYeXf3hcb4g0YTY9kW7xFV+xpNsb3zzo+ngTz
	4OlWr4VNfzpVTWhanL9vYbVKmyc+x3u0usyfbG6umcv6OkGncwmC3TIuGiO4JjOBALK89D3D0Sv
	KjpIywWHvjOPVs2l70tmHZOlwMPP5jbkB46sOwIkLLgGqnjOR5wJLiFaPuHazEWDFsjTU6Ncbb1
	T8KxiT5xJZ7QHff4g0kzLD9ukVaDA2u8ymEm+6JjCmaxkW9KhqwaaCaC69/DH7mUamuTJJIn3ZS
	PmVlEE0GXHjJrqswYi10+Fb8tDLkuY/yDwF8RduCGmEXO2efBXF4Qsayxzi7g7X7S0TQZwKMu+S
	0YTOu2QPY/6SUnRZ2WU/UjGwaSxvwt/ajvRvwQTgWYipY22TzH+p3OFbn+RzfauzxUKzPQe7r+s
	7KZ5w==
X-Received: by 2002:a05:6512:8348:b0:5ae:ba8f:ad39 with SMTP id 2adb3069b0e04-5aed454f924mr766872e87.4.1783339251496;
        Mon, 06 Jul 2026 05:00:51 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aed13c8b5bsm2866776e87.80.2026.07.06.05.00.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2026 05:00:50 -0700 (PDT)
Message-ID: <d74d7839-d126-427a-b151-ca895a27a83e@linaro.org>
Date: Mon, 6 Jul 2026 15:00:50 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/5] Add Qualcomm JPEG V4L2 encoder for SM8250
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Atanas Filipov <atanas.filipov@oss.qualcomm.com>, linux-media@vger.kernel.org
Cc: loic.poulain@oss.qualcomm.com, mchehab@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
 konradybcio@kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20260706071113.383215-1-atanas.filipov@oss.qualcomm.com>
 <68e59764-5a10-4abc-849c-14ea2d9ef76e@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <68e59764-5a10-4abc-849c-14ea2d9ef76e@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-321127-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:bryan.odonoghue@linaro.org,m:atanas.filipov@oss.qualcomm.com,m:linux-media@vger.kernel.org,m:loic.poulain@oss.qualcomm.com,m:mchehab@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andersson@kernel.org,m:konradybcio@kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[vladimir.zapolskiy@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vladimir.zapolskiy@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 252C7710553

On 7/6/26 13:12, Bryan O'Donoghue wrote:
> On 06/07/2026 08:11, Atanas Filipov wrote:
>> Note: The handling of shared camera subsystem resources (power domains,
>> interconnects) for child IP blocks is still an open design question.
> 
> Why ?
> 
> A device needs to vote on its own interconnect and power-domains on any
> bus. A sub-device of another device may wish to ramp a clock for
> whatever reason.

Certainly a CAMSS device will vote on all needed to it resources, some of
which are shared and got their description under CAMSS device tree node.

> There is no "master" device in this block of devices - save perhaps for
> the CSID mux / wrappers on some of these parts.
> 
> We have shared resources like camera noc, system noc and external clocks.
> 
> Please include power-domains and interconnects.
> 

Why? The common power domain and interconnects have already been
described as resources of the parent CAMSS device, there is no need
to duplicate descriptions in every child device tree node of CAMSS.

-- 
Best wishes,
Vladimir

