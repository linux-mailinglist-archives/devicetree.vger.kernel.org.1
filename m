Return-Path: <devicetree+bounces-259681-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kISMDnsDeGlanQEAu9opvQ
	(envelope-from <devicetree+bounces-259681-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 01:14:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A52E48E6B0
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 01:14:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E49ED3023E15
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 00:14:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51F9E11CA0;
	Tue, 27 Jan 2026 00:14:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cx/16uo1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 135801862A
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 00:14:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769472886; cv=none; b=nZ/pNYDrtjDyeNwYkznrvVEc99If5sA9C7A7w1TZGKXHVkUgaOEAtyb70jrvPLkaDIpUcdsmRJzWSB0ZIoh53YMuKdaB/J/C0O/RcKQ/ELxazqQWDBDMxEg3bksrP4VFKzA3WnYoK+T5Tox/Jrei+KpvsOi4fNCLovTZcBMnuA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769472886; c=relaxed/simple;
	bh=TH59QeXuQGouzsx54n3g7177F6nxdq5jEKo8uM4nifw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ONacKmQx8//9qjheUS0mAkBQ0uEKP5nTaFWHjzWFwTTeoHV/UwGsRWm0/BrUZn57XlSJKv9tzTqWDg1NC2j+fAr9yJAkN3KmG1ToZ2JU2rlxzjGQER9wdovX29E/bUnM2RZx+VHtaRA4EBtBure/SGOr6OM2qoqPr4T6jiRebm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cx/16uo1; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2a7aa9efc55so35954225ad.1
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 16:14:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769472884; x=1770077684; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5bI0cUR40vMu/6PE2qVNNlqy6g+zm/m1EfFecSGRNTY=;
        b=cx/16uo1nOf2B69/VAEkLJnrS8fdFaRgCFt7pRO8hLJTMYv+/PsceIqD0Aicyq76Ph
         8U7IYwlB1Gveh4Z9ZdCZJjPGlVpAM4DWrbNpiS1/ZkbnnwgFvL/dsVGeVmcA5drT69er
         pOt/saXGcXnxpvVe16goy/tV4xAUMyhelZ1x9PZKkszOxgGuaNi/A0IbjFgGikYrLhzM
         AADzEHDMShTPqwlBHE+XrZLP8MkA9WEmxa3K85DQHsjbLfxa6wyWsP9fP/+h1P4KfFbQ
         AMUVMo/MgpV066oYKBYE2AdYmEJ1louhkyjwte0JnpJ36PBV9LI9jiJ0sauRw0kTsfVJ
         V2OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769472884; x=1770077684;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5bI0cUR40vMu/6PE2qVNNlqy6g+zm/m1EfFecSGRNTY=;
        b=V3/zZEa+emu9kKzdmjMHq2tfePAwpYJqMpC6XFPgA9kLa427QEFoUt/rr3VUrQsGko
         pzsjzHDNpqNTC74zhnxFobumgdp210JmrS9ohMafgPQqeGu0A0FgQUyNdOCPdYySFs5X
         ET/zg6iOUDSKotinYJ/JanAsdeB3568ESaHTp77jTwYGbHb4P3c3m0QRtpTNwx1zPmdj
         FWUGk4+ML0D/aO/ju6J674DWUvWbD3VAmzpju6BbHzMA36UP5o7tsdu/k20vlqI/4fr5
         3rOUqV5yOW9onYIU9HZldLz9xFI2aF4LQZ44vEkUDub/35Jc/fAf9FAbXbFUCrWMUcvW
         cTYA==
X-Forwarded-Encrypted: i=1; AJvYcCX8405AygBGsNW54opLOS4gRtJLb6T5TGKlic4KIN/lMtfsaljIKrGbsKylYUQEucawUp9b+KH35sEb@vger.kernel.org
X-Gm-Message-State: AOJu0YzmD7EjAPIKD3TcePocRmSs5LlEhLX97RFv87bbpYwzyeaTgnTR
	Cw5W2jizVoVppiBusXDUjE9F3E9ttxaV2QMAwmJUOfIsPh7S/UzNj/2H
X-Gm-Gg: AZuq6aJyVaz+cX+bdMkIac+eI/Ih+c4O+kDBl3TJy48iWKRtE7c/BOFTTPvo06hlPSX
	TDt66LrzVGKQDZx+FstpXTODo56wfwynI2C8C7AjIQHvle/Guv5r3hTBoc0hciuHgudDhBKOZ40
	+/IhryvHQMzQrBDvxrLDFOujTG/CQ8fGNBEKGbt4nM2FtOTVPmFYp4T3pCerGYyJ3FQS0WxBHuQ
	2mZTjNaDi35YzyIOw6KahRQxuzlJG7tgDbJH2Hh31GoTsDbc01SWzULIJpap4PUEUJcdnUU5JMI
	ztd+GlGMnlGzAQYSgMe1zF2oi7Y1+N9hEpKXYnj1fHZMmEEg+Md8wWU+rknkBkXqWK4Mc3k8b13
	ZSOpLzc42dsBadR07G68RXn1aa0LCwnS87CY9Bp25m6/rUCC/pEuZPzjWmvK7avXn/1fN4Yei9y
	MlMUnt7auctMYy97ttLxCwvYS8ry8VpM06nNg=
X-Received: by 2002:a17:903:244e:b0:2a0:e5cd:80a1 with SMTP id d9443c01a7336-2a845323729mr67639465ad.41.1769472884595;
        Mon, 26 Jan 2026 16:14:44 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a802fae223sm98674545ad.77.2026.01.26.16.14.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 16:14:43 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Mon, 26 Jan 2026 16:14:43 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Mayank Mahajan <mayankmahajan.x@nxp.com>
Cc: corbet@lwn.net, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, priyanka.jain@nxp.com,
	vikash.bansal@nxp.com,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v5 1/3] dt-bindings: hwmon: ti,tmp108: Add P3T1035,P3T2030
Message-ID: <2d56908f-1849-481b-a567-ae7b3d925ff6@roeck-us.net>
References: <20260119040459.2898998-1-mayankmahajan.x@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260119040459.2898998-1-mayankmahajan.x@nxp.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-259681-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[roeck-us.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,roeck-us.net:mid]
X-Rspamd-Queue-Id: A52E48E6B0
X-Rspamd-Action: no action

On Mon, Jan 19, 2026 at 09:34:57AM +0530, Mayank Mahajan wrote:
> Document the NXP P3T1035 and P3T2030 compatibles in TMP108.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Signed-off-by: Mayank Mahajan <mayankmahajan.x@nxp.com>

Applied.

Thanks,
Guenter

