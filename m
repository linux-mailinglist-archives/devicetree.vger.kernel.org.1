Return-Path: <devicetree+bounces-269756-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YOfXOv21pGlHpgUAu9opvQ
	(envelope-from <devicetree+bounces-269756-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 22:56:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 99B121D1C33
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 22:56:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9D8573013247
	for <lists+devicetree@lfdr.de>; Sun,  1 Mar 2026 21:56:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB28A2F28FF;
	Sun,  1 Mar 2026 21:56:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ym8Z3LJR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f43.google.com (mail-dl1-f43.google.com [74.125.82.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C19FE2C159E
	for <devicetree@vger.kernel.org>; Sun,  1 Mar 2026 21:56:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772402169; cv=none; b=ETk+dWdyoAjxnFrAch9eC4voEi8LjeMUgFx/vVCzVWQwx8XE/hrgRJL80tUGI/Qsbb/+yNZfaxDzyGEp6sIR9Kal9NfH3rcAvexdwJ74m21Q0b58uZxV7tbvhahWyGjplCXUB7WWeXeLC5oHIOemDO7F8LsZsmSlTxKAbpcw/N0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772402169; c=relaxed/simple;
	bh=7KcWMTg7IAVdO0nLU/h50zMEUxSoooideYRvPqP4BmE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dLNSgUfIkKJEx0vR+ypsiZFMRd4hMlMt7wbfVkzhr5zgh3Tb9Gz+E5bmAvvxFg1p+Q753CJIh6ey2551JR0MPtYMVGt8ssBZoNYhIfHIMhWEaPnFnxiu8BjRdhyUdG3Jv6cTddj3babskR5d7ETDMh/UGiO+p9/QYEyjMGMtaRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ym8Z3LJR; arc=none smtp.client-ip=74.125.82.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f43.google.com with SMTP id a92af1059eb24-126ea4b77adso4817713c88.1
        for <devicetree@vger.kernel.org>; Sun, 01 Mar 2026 13:56:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772402168; x=1773006968; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VIacLwhje9cL0wv5CnP9VaDZyNaAAbXizVI9qFdiSd8=;
        b=Ym8Z3LJRq8qLXdwlUoeLXyIgBNvRgJOSTEc3s/AR3g5qdENx40dWKiZsHd1bh+Gc7G
         fK+/kEgr0jqwwf0NCuO+GppKLje9h55U6GlViOe+QR5azzMXV5rCcakgnuhmcNE1tagY
         ZfbiQBejqblTA+P60ju424KWGeUE1s8AuNdEhvysex87G/BEuSd16S+YDck8fLkcNCqP
         vH/CZ30J4M5xuk5La3BUpC566PoU6mzXdyZr7rXODQD7acCwOeyI2EMhdv8NsbsW/si6
         ZgKX5LeQONqGV3hTsf/op8pnsYABuji2JSKBx2Fr8pTcvfNOcc1HBQibGx07Pby8ilqE
         naEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772402168; x=1773006968;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VIacLwhje9cL0wv5CnP9VaDZyNaAAbXizVI9qFdiSd8=;
        b=g6PttoWdJw9duyUY9oQUvoBS6QR/HszWwWw44Xf0D+OV+56UkWE+zBaa8WDADFn1sF
         ufSkyb+UMrKFJsKQa0B+dfIt2PQhrppp8jvcwoCY4GvL8ukgQjjQUoy3ZTxZ0q4whTyf
         HQE5iFtFRhHC2+3nZf+JKKdis+D/RODp2tv695S/n8/P3uWhsPhzMqUDQswwY55c7j1F
         8duzernoD0GD3iewoUuqcIbDk1NT5Z2j+eSj+sAWKrHrzDTeF6Jz9jyMxfw5MJy/hAP7
         bfY/0XJOtjcLvEHK7eMbSdY+aL0SUIX9LQjloDy14BBy8IHKvVMN5g52t0xnPFP5RpPy
         U1jQ==
X-Forwarded-Encrypted: i=1; AJvYcCWPTOfS2lLrI2Vr2wPU9vTaD1Wsn5SHBb/b4qY0KooSjHhcVW3dBiQ6vLWI+kjhqr9ifp1qD0r2lH2i@vger.kernel.org
X-Gm-Message-State: AOJu0YxICsxRJ/mX5t4yGI46hymNbqLC3ECzi3+CgX4m61abq7LPiA1/
	CP0xlzDlIKi/2l0fK8sYcv5mJdjsa6oUDT9Fxldpr7neKKRIGGGz+Q56
X-Gm-Gg: ATEYQzzUmBrM7m7W2IF8NXyNIjiVqG3/8R2bEnsPzMJDmfkMeKpk806MdaRoRHkmbqe
	f6T5eAgp1vbewdas2QDQ6gVeAvKIDRU897l0HJWeXV05zHhHQsa3YNDLRNobTUYWRQ8ggzF1mtx
	k8rJaZAFyGZ+aVUT+ezSBQN/o3o7lJH5LUaAiNzsE5uJtVX3jL1Hu26U2jfL+jqX5j8Ri4oU/mV
	e1vv7zHYjFYoMRxJXTjBAtsoYTD+fv5WQoZRuRcgfB8WTxjQ5Q+xMC3az5BJAVm8Kgyh2UidLpY
	gBZnotxlNhlxxiQS6jY3YkMn8JDBneGebaRvecsdMTNETf+TiOxdt2HNY0WfHjVxQPOQfWWEzUH
	SrSFn9/8uVDJhwJM03sUkmBq5okMdfHMHGF4P7fyCLR9SsjTHlFKOKIjSNCLxj/xYARIWe44zAL
	h2oo34brrNuClHgY2rZ/JsNKP5vDkFdlj4596V5F99/RxXdijJHBJdlsn31mBaB+1Z
X-Received: by 2002:a05:7022:1a81:b0:11b:d561:bc10 with SMTP id a92af1059eb24-1278fc95345mr3745869c88.41.1772402167752;
        Sun, 01 Mar 2026 13:56:07 -0800 (PST)
Received: from google.com ([2a00:79e0:2ebe:8:864f:8513:57d0:4064])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2bdf662eb6dsm4048586eec.2.2026.03.01.13.56.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Mar 2026 13:56:07 -0800 (PST)
Date: Sun, 1 Mar 2026 13:56:04 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Marc Dietrich <marvin24@gmx.de>
Cc: Thierry Reding <thierry.reding@gmail.com>, 
	Arnd Bergmann <arnd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Hunter <jonathanh@nvidia.com>, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: tegra: paz00: configure WiFi rfkill switch through
 device tree
Message-ID: <aaSsgDqmTLEQQqK0@google.com>
References: <aY_BpRQmLdqOOW2K@google.com>
 <82f24afb-1fd2-bfc9-2215-4526aff372ba@gmx.de>
 <07c024a6-d2f9-5805-4ae7-cbc89cda53bf@gmx.de>
 <aZvdDIYlCjg8sVGT@google.com>
 <99ddd816-f19f-cda8-15a9-6273e26e9e8b@gmx.de>
 <4a1bcdfd-e308-e357-2409-8bc82f115928@gmx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4a1bcdfd-e308-e357-2409-8bc82f115928@gmx.de>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,nvidia.com,vger.kernel.org,lists.infradead.org];
	TAGGED_FROM(0.00)[bounces-269756-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmx.de];
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
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 99B121D1C33
X-Rspamd-Action: no action

Hi Marc,

On Sun, Mar 01, 2026 at 09:55:45PM +0100, Marc Dietrich wrote:
> 
> thinking about all this a bit more, I guess your approach to just convert
> the driver to device-tree and not change any functionally beside it, is the
> best solution for now (and good pratice in general).
> Maybe I can get access to a machine with bluetooth (or some other user steps
> up), so we can try to find a better solution, if required at all.

Thank you. I believe your tested-by is applicable to the current version
of the patch as well, so maybe Thierry can simply pick it up.

Thanks.

-- 
Dmitry

