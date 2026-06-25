Return-Path: <devicetree+bounces-315630-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id eBO7FwsKPWrmwAgAu9opvQ
	(envelope-from <devicetree+bounces-315630-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 12:59:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0525C6C4E73
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 12:59:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=JWW9xqBj;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315630-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315630-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0C6FB30E0B6C
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 10:57:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A56C6399036;
	Thu, 25 Jun 2026 10:57:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 516C039989B
	for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 10:57:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782385042; cv=none; b=YghoTR04WXCu5i2RTwYDcvvjzZ6uiv4JAm5fiQyGcylrDCAyA69HBb/cQRnsGE4J1c1yep1AQgme068XD30+RR/MSfemyEezgRxorcSnxtW9lpGBU6GEdWamCNklT3L9NQK+WrlL8yebzPS+LFtGKwr2g6eh13VOqOW1oOXSeEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782385042; c=relaxed/simple;
	bh=++FVkwILNKlbScjNFeM9SANlKaAyvEa5jrh63t4yOmU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lkOXUHtm1gFEy9HOfgu7LqDQXcjKhLJwlw7yMCxMt5SDHd1ewQkwzOfTsBMGSjUi2MoNNs992ksWcjdlQ/5tLWFp4Gsidrzc+gBYdbelZ50b+D7cD6PecvAjibK7CAuL4YPcXr5t813W+5Ns2/u4Jyrwn3wTzNygSVtXv0bJXwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JWW9xqBj; arc=none smtp.client-ip=209.85.128.41
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-49249707788so11049755e9.2
        for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 03:57:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782385040; x=1782989840; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=BqRv2LvLiTwMDijxQ6la05Or7ANrVdBQUl8AHj2I31g=;
        b=JWW9xqBjlikzFGp87zH4wigoNrFkQSlDKv9FZbZwd/gcQ/ixWhfyOnmZxWXfjA71FK
         +UpqdNYcjrU23YfaIPEW0hZ/H8vAy/D4XARYppdFefXfPFfWFMXTwcAyNzoUm++Zfzi3
         4cWtPzZg7CIfbeThPjFDcyXIm6qCvR2vT36LJHeEN3lsW+X/2VZlLelczpY/lZStNno4
         rdQQfLlDmgiA/hSMN5RVX7nC0puQ+XTAGZQz445SGd9bbMzUMHjZ7lDShDxes5fcwPZF
         UpOggCEf0nqHGA0ffD5OiZjwiA/ogLxjwlbeqLs1Xt5I6+5UQQjCJkajzud5CDx7ibze
         ILxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782385040; x=1782989840;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BqRv2LvLiTwMDijxQ6la05Or7ANrVdBQUl8AHj2I31g=;
        b=DR2v9vqOfHd/ORlp9G6hx4Cxe+PQwrkiWeZTIBdu7TkHqBw2gLppownQepgU6f/Moi
         bpvoC+JNo5lFW+zOvwb5QOaZDoof3L984hbKqcO+N9CJ8R2Uo0qpdb0HGRPxupSblhGY
         dkN0qf3Gu121urwk2/ChadeCHcvIasqaqL2l/SK123vSc5Yz+QR6ldVIv0n3+0XHJq6b
         PDBKwxzXBef/grpa6XnlQzrJIxgHKOOjJLq6ZDG0Dwc9VJ4YkGaU15RGjdexjk2+dL9s
         A+kZsEYJh7ptexMSuFznRx/TU8wfEoUq4KcBbPLtbrPlJP4vv+lWE+NhBBpdah5tMoDG
         F6ZA==
X-Forwarded-Encrypted: i=1; AHgh+RpVQFHzYzD4Tf9MHk9G3MZcmCK60o4eCNN6vNl667B017YBTEBYnnf1G3BhNUgRkmipIkTTP3M4xQDE@vger.kernel.org
X-Gm-Message-State: AOJu0YwOaDEcSakytWDG2W92fclrNdyNFTnNwBu13kjI6hghKnuP4z/1
	SSrThtsBSObyKY95qw3lDHaSXCr4DELgVm3Sgnew18n6S+dXnJivJL9G
X-Gm-Gg: AfdE7cm9FZ2kPdtgqX25aXktSJRBgF6XQdf8mImuvCao+ABWKfkKw4eA/DHYEJaD3Y6
	ym1VROI7aWnU056VEt4dNPA+WjopMTM/gNEX3dLIFC1uJ7JyYztYrP5RAvycwIrhvZ7WBRWswZ+
	Ht6c20BzEtQUE1CaX+ug/8LfKo9qKza2T2Cs5kA9WSwmgsAPC+hlSSFwQ0yoImg68KrSmcnN/J/
	eHbM5Ui/tmxdN1f0vGD/1hsquANS0jeuKI1bsQ0H3fpCou0GzrQQih7d4SNgvt7rqVtqDm0awEJ
	M8AE3JDt90Byvxkcb25tNaF88bU+IsyCMxhEvaO4cZD8ejSVD67m5tTf5VzqQF6z9bFm4wuT7MA
	/wfCxYO9aUgR17g/Fbtuua9FjoBvwMRGMW4uSHQ1em2Z15e4CjgivOEuwZAjq2QrxVJ4l2TTjlR
	b1YguLl1gJ5Nnt7X9WTK2+Kfq7f6xQuElGJHQrtkvhe7xojr0YqNo/oh6M8UqHW7+aWFOtty3Ca
	WbwO7ZX
X-Received: by 2002:a05:600c:5488:b0:490:ea8a:32d0 with SMTP id 5b1f17b1804b1-4926689644emr25100555e9.20.1782385039551;
        Thu, 25 Jun 2026 03:57:19 -0700 (PDT)
Received: from [10.128.11.131] (195-23-151-163.net.novis.pt. [195.23.151.163])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4926401a2e7sm91474245e9.3.2026.06.25.03.57.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jun 2026 03:57:19 -0700 (PDT)
Sender: Julian Braha <julian.braha@gmail.com>
Message-ID: <f725da33-3ce0-455a-ba43-e23b8ec5d223@gmail.com>
Date: Thu, 25 Jun 2026 11:57:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] edac: xilinx: Add EDAC support for Versal XilSem
To: Rama devi Veggalam <rama.devi.veggalam@amd.com>, bp@alien8.de,
 tony.luck@intel.com, michal.simek@amd.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-edac@vger.kernel.org,
 devicetree@vger.kernel.org, james.morse@arm.com, mchehab@kernel.org,
 rric@kernel.org, git@amd.com
References: <20260624212545.2850787-1-rama.devi.veggalam@amd.com>
 <20260624212545.2850787-5-rama.devi.veggalam@amd.com>
Content-Language: en-US
From: Julian Braha <julianbraha@gmail.com>
In-Reply-To: <20260624212545.2850787-5-rama.devi.veggalam@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-315630-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[julianbraha@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:rama.devi.veggalam@amd.com,m:bp@alien8.de,m:tony.luck@intel.com,m:michal.simek@amd.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:linux-edac@vger.kernel.org,m:devicetree@vger.kernel.org,m:james.morse@arm.com,m:mchehab@kernel.org,m:rric@kernel.org,m:git@amd.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[julianbraha@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0525C6C4E73

Hi Rama,

On 6/24/26 22:25, Rama devi Veggalam wrote:
>  config EDAC_VERSAL
> -	tristate "Xilinx Versal DDR Memory Controller"
> +	tristate "Xilinx Versal DDR Memory Controller and XilSEM"
>  	depends on ARCH_ZYNQMP || COMPILE_TEST
>  	help
>  	  Support for error detection and correction on the Xilinx Versal DDR
> -	  memory controller.
> +	  memory controller and configuration memory of the programmable logic (PL) fabric. Support detection of errors in Network on Chip (NoC) peripheral interconnect (NPI) Registers.

This line of kconfig 'help' is far too long. See
Documentation/process/coding-style.rst
and
Documentation/kbuild/kconfig-language.rst

- Julian Braha

