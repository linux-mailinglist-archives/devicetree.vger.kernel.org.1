Return-Path: <devicetree+bounces-258475-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QJD6KilEcmnpfAAAu9opvQ
	(envelope-from <devicetree+bounces-258475-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 16:37:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1226C69026
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 16:37:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3FBF73065E58
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 15:29:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A91941C2EE;
	Thu, 22 Jan 2026 15:19:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nsx1ywyU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 773AA3F23C9
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 15:19:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769095142; cv=none; b=rCBAJ+J8mpFXD+fJRzMsMlZu5gZx+D4pUPO9od924c7Jk3FrGGgSGVs3Zl8zSRxzz/qZfeOHbjZQx9Iz067pqzHhH9RRdxhoKk5vxFoW0S98H03is3ZHn0FVfO576kOlcHjylDB3Zesga0zi7Z8Ou/CJUWMUlUrvMPTpFnRvO2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769095142; c=relaxed/simple;
	bh=QO+Klz71nnsExe6hmzmUDR1fZn7FWwQeBhK8j1pFyL8=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=hWm0XCyO7rI1zJSuFtqxqq2sjVJEHH34RW+16NOCTwvI1jSowZrsjvam7CbEQBernN56XR2l7hPUMROK6y661yhAXwwcdaHTtTW2ykCsPoPlFa2UcJ14tTAUUPayLVxnY/WfAmer6srKjA4b3G3wBDRrdbTU8jurI1l4FyRN4wM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nsx1ywyU; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-42fbc305914so978353f8f.0
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 07:19:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769095139; x=1769699939; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=QO+Klz71nnsExe6hmzmUDR1fZn7FWwQeBhK8j1pFyL8=;
        b=nsx1ywyUu/VuWsJG+fEnqT2mceITAqNclHFvCfeb9TLI77+WZoBfxlS+iUe2IBpXZM
         s/OVYHuLewBVoRidTnBxu/QyhP2aeoDfA51ngpnwlwQoQ4C+qulMAZx3aYP8egPyvUGk
         /7bSEIXtEyW2mBGcgnjK9rwtArhJYqyc1g/oMykhGGnZqiMqaYhZdXeOYOUA2f4I/6eN
         AzApDLHhgKW+/Iy+K4nbntcl7VLOd8woC95eJAWcuid4Qh+piHp1cbHB08z1QH0F7B78
         ooM/0ZjbkfrgdjnZOg8UakIfv71CcfQfLNH5ZTW8FZatBVKTR4FASEhoCX/Tz5NywLnG
         nCzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769095139; x=1769699939;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QO+Klz71nnsExe6hmzmUDR1fZn7FWwQeBhK8j1pFyL8=;
        b=mdDdtlGvNGzkM7uDuasowXzIFD9netoKsjJEuKYPnuWa87DObmWroqD8nlGhXm+qDf
         pdzeBpKnu7UE26MjJ5BvDYiOdzIOa2oDsKMtroat3u3sfZz4svUiknV7WcwWQ9j5IDRT
         q55azv2DPyfDe0RpP/4yUi5atrKJv9RWPD7V3So+aK+VBh5pPkNCyylwojD6xdix0RyZ
         dVcRk4ygiQXtFrtz7UasYUZ4v/lTFNGfzNEICMz8FTfIFVUoY5TvjY2jjGIXm8MWFZyv
         xuLwfxc4TslvjLF8s328gPcf2Qh7CNYSIEYhd8dCM7SS5nRSkYyFXbMAfOkwl86QHxc5
         kuyQ==
X-Forwarded-Encrypted: i=1; AJvYcCXsHbA+lfHldf7e4ZfJLFnkj8vtZj4R9JKMvSk1yzVhGZJ94I5f3Y+uVwQeAUMFAqBUePs8AtliL4gm@vger.kernel.org
X-Gm-Message-State: AOJu0YwlnJwScvMtUti6+DWjfXJKUjd2Onfzpp16Xt7VjPa4wrSKDCRa
	Ip5sbe49tVENIJeTQFib9/KNldyR83yRDbyvCfgJSFg9mng2j3ba737euOfYSoIrw9U=
X-Gm-Gg: AZuq6aLrf5qFaRGQ4Yaz9uen86nrNdoKj+aiqFO6M7+4k3FU57c8NhvPuEcUMmI3E9u
	EuHPFDqUHrifkc6LXGbBhsX3W8UpF0milerTgbJ+FFuz7sHcXNICliE4paRMcrTY68jIsc2QYiJ
	PIOTbh8L5WE0jdHrakSWyqNRiq9YG+E1vMrFHvjqzr1uMhQ7FQv16nr5WScKKmW4Wwd6V/LgO/M
	hzE1q5hxrhyLhOxxy/s0rznif1eNRWAEohcWRnMqIF2HZyStc1RizJ72VbeyOzPhfE1KqnOH2jB
	hSVjr3LqfH+nKdOoK2YENUEaS8Ft6mr82EEPj8vG/BLAnGhD3n2T+O8kNFZsK3CMoyvfP8a4buh
	1piKaxZzQn7xKIOhs7Wy6cL3PQFy3V/7r5O8LGhGpYkXEQ3FzPb7nJFa0Vuw3gLUugdkSMmXPHl
	J/Dt7N/VqDaACEqngu9g==
X-Received: by 2002:a05:6000:2012:b0:42f:bad7:af76 with SMTP id ffacd0b85a97d-4358fed8000mr16686929f8f.15.1769095138525;
        Thu, 22 Jan 2026 07:18:58 -0800 (PST)
Received: from draszik.lan ([212.129.87.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4359314bbc6sm20083983f8f.12.2026.01.22.07.18.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 07:18:58 -0800 (PST)
Message-ID: <1df01358fc8e5885e20c24b6cf983be695acc479.camel@linaro.org>
Subject: Re: [PATCH v6 00/20] Samsung S2MPG10 regulator and S2MPG11 PMIC
 drivers
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Lee Jones <lee@kernel.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,  Mark Brown <broonie@kernel.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Krzysztof Kozlowski	
 <krzk+dt@kernel.org>, Linus Walleij <linusw@kernel.org>, Bartosz
 Golaszewski	 <brgl@kernel.org>, Peter Griffin <peter.griffin@linaro.org>,
 Will McVicker	 <willmcvicker@google.com>, Juan Yescas <jyescas@google.com>,
 	kernel-team@android.com, linux-kernel@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-gpio@vger.kernel.org, Bartosz Golaszewski	
 <bartosz.golaszewski@oss.qualcomm.com>
Date: Thu, 22 Jan 2026 15:18:57 +0000
In-Reply-To: <20260122151104.GL3831112@google.com>
References: <20260105-s2mpg1x-regulators-v6-0-80f4b6d1bf9d@linaro.org>
	 <20260122150634.GK3831112@google.com> <20260122151104.GL3831112@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+build3 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[linaro.org,kernel.org,gmail.com,bgdev.pl,google.com,android.com,vger.kernel.org,oss.qualcomm.com];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258475-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[20];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 1226C69026
X-Rspamd-Action: no action

On Thu, 2026-01-22 at 15:11 +0000, Lee Jones wrote:
>=20
> Also, FYI, you may wish to run some per-patch more tests:
>=20
> "[PATCH v6 17/20] regulator: s2mps11: refactor S2MPG10" has no obvious st=
yle problems and is ready for submission.
> WARNING: Argument '_r_mask' is not used in function-like macro
> #102: FILE: drivers/regulator/s2mps11.c:759:
> [...]
> WARNING: Argument '_r_table' is not used in function-like macro
> #102: FILE: drivers/regulator/s2mps11.c:759:
> [...]
> WARNING: Argument '_r_table_sz' is not used in function-like macro
> #102: FILE: drivers/regulator/s2mps11.c:759:

This is mentioned in the commit message and they are false-positives due
to patch context

Cheers,
Andre'

