Return-Path: <devicetree+bounces-277648-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wOG5HG7Bu2n1ngIAu9opvQ
	(envelope-from <devicetree+bounces-277648-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 10:27:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 024FE2C8A29
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 10:27:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5EBEA328D479
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 09:19:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 378FD3B8D61;
	Thu, 19 Mar 2026 09:18:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LIUB+diq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C84B03B47DD
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 09:18:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773911900; cv=none; b=fsNpRHAIfpfvL7kwlLej4FHH8AgVXmtfDadt0hnnyPX3NSh93N0kMjbFEQeS5nREzx8/HN13XH5BCkd+6VHcBfEL/t2XZ3ikiUmB4nRFHunGuSjNCoPe6wl1YdyWpwgFO+2gdsY6ZlK63w7QHZZeaKCVLL88a39wkc1c2OkivRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773911900; c=relaxed/simple;
	bh=zEXXn1MspTZ2rAYnF/7wGHtscAvFKis7T9kv6P47gTk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jrVrSy3ECfE4QINiEV8UmrYIYAXmkvrRr1KWZVdZ9cU+zFFUATpnzhfXMcKNT/T+e/b0deDHM2k6zqZI+FO4iU/o/Zt7gxKJw9C6+DAzbQpNfHa5mtE55UQfNOh1SP0aaN18iPa+8g9a9pPJlsYSAcCNvkAXSRmfDbTuwAxug7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LIUB+diq; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-829781b2b01so521696b3a.2
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 02:18:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773911897; x=1774516697; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MJMOAJBWLr5Df9WGW21xRpmJxqWD0Nz3f9kgoVuXs4k=;
        b=LIUB+diqgN8/MeWgttSO3iGkmxHfby5sCtKNrrNwVCs9R5oqBDlCEZzVjzAZe0NlLc
         G34w5YNq7oEgI3fA/Y6ZsWE9HqgqgoQHyoKnmY8Q2OFCVamsZWfY7RottjLAkqE3I5yF
         9Mqmb4vYGWB/4xGahsXKcnrV3q8OZDZxFC+O6pA7MrOdXl/0TV9j/5fs08L6NA6GjdCt
         iYwiZpCRlZqcslJ3SFtroy8KmaIdkLYiw1xIPWtZKmXp83Si/2Tf3GBWS+kRYb8/OKVE
         kYpGCaQxI9gO8hIIYBLjaTRSZa3GswWSLegIKLVTi31ArQZc/S+SILBMNAMp4GqzpY7A
         ntYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773911897; x=1774516697;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MJMOAJBWLr5Df9WGW21xRpmJxqWD0Nz3f9kgoVuXs4k=;
        b=W1KMtUfE84YckElxsHX1VG/NUeKlcvrFuFdX48ekdvCmPBDMBpQ2o4+yybqX1Fi8BL
         +bOYBpm01s0jPyRE8dXw0oDOmh+YLtDTdcVwH5BDhVkgn56dTaq5WkN8S4MplsexlZDE
         NPq/FT1Yb01KxYT6gkbJXshjzo9Q7A7Q7Kmg4Da6DO4kuvpraxfBgUA1Qk7rvdRghKOs
         gYO3IU38w0o5Q0a7IFlIAZVwpsy/LWUB9yFHegguhlszD0K8CqTcjM7f/zrLZCv82rH0
         pJvSMawUsOW6H5NBRWfrBcYKH58dOhtOznCeiDsAbQi+M2H2AynME6UJTykOMMNaOjDH
         wwEQ==
X-Forwarded-Encrypted: i=1; AJvYcCWunctAVAkYRX2JdO/LIeWbE9QeNGtLUFHyXzz9fctTBH1ofq8U7rF7iLPoWuQrAxcosgTmfWgG3awk@vger.kernel.org
X-Gm-Message-State: AOJu0YzW/qpCmDmJaYY8cPj0kA4fEuwkUAxZ6Y3nfIQn2xU8L+9W/JAv
	qBJiUAGcTsk0kTUKtY5go3jHbTHhtoEsFIXBTH2r9eJhS5qKddeyXXdF
X-Gm-Gg: ATEYQzy075pBdzEi9FyNuHFaabwufO8sPf6RZuG8UxZinX0bWeON4A0NzqvDF7Qg6cl
	0n3pg709pBdvy5Bd/wKIQ2M+uxYl1uYnHxrvLAX2OwWGvu5dRX592APTE55DllCxeEpcHCG3m0o
	dm3Egpm6B9uSjyfP4YTrkTJfsDgItU53TBnQhTqDLspjoDra5p4zxOde7SgXqfKf18qh5Z5KBqX
	fnANDeAdfZ9Nxbz/VauUqJM3ifMAm6wv/z8xg0eTqb+oFI8gajKmmEoTOyG1snXfB7BHfDjTx0m
	BkpWfCBC8s4kwGexHFeJaYwGfHXrItM311TmDX7NXMMd7OPhMaFKu+MRSFzAmb+syOfH+TyOwMw
	qNAU/mhWV0UUgeEoj51u6mbMoosnhxuInxMURdbJCt4BuRqSmkjzn1+uHaVVbz6jw1CeWUpnqUl
	TbsX7aCXNOhckDZhHFGu4=
X-Received: by 2002:a05:6a00:a96:b0:82a:5ef0:20fb with SMTP id d2e1a72fcca58-82a6add7085mr6096505b3a.26.1773911896794;
        Thu, 19 Mar 2026 02:18:16 -0700 (PDT)
Received: from fedora ([122.173.30.71])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82a6bef9a32sm5995188b3a.58.2026.03.19.02.18.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 02:18:16 -0700 (PDT)
Date: Thu, 19 Mar 2026 14:47:40 +0530
From: ShiHao <i.shihao.999@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: robh@kernel.org, conor+dt@kernel.org, broonie@kernel.org,
	bjorn.andersson@oss.qualcomm.com, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: request for guidence
Message-ID: <abu_NBSH79OyN5do@fedora>
References: <abqbUuruxPJsfBo3@fedora>
 <ccce197c-c514-43c8-8026-534966bb0438@kernel.org>
 <abqr0Qpcx_2BQINg@fedora>
 <40d02335-90c2-4b14-a9df-d9ff1a75ddd2@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <40d02335-90c2-4b14-a9df-d9ff1a75ddd2@kernel.org>
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277648-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ishihao999@gmail.com,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.974];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 024FE2C8A29
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 18, 2026 at 03:15:56PM +0100, Krzysztof Kozlowski wrote:

> I could not find any GSoC page telling that DT is the respective list to
> contact about your application. Or that me or Mark or Bjorn are... Where

Hello Krzysztof,

well it is actually said here.
https://github.com/LinuxFoundationGSoC/ProjectIdeas/wiki/Contributor-Application-Template
> On the GSoC pages, there is list of people from Linux Foundation to
> reach. Unfortunately I do not know with whom else you could contact, but
> I am sure that Linux kernel maintainers are not the ones to discuss it.
> GSoC is Google's or Linux Foundation program, nothing to do with us.
> 
> Best regards,
> Krzysztof

However lets drop this i submitted my proposal today so, beside
this i got one questions that is it okay to convert bindings
outside gsoc. Thanks for your help and sorry if i wasted your
time.


Best regards
 Shihao

