Return-Path: <devicetree+bounces-262773-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kNIxGxaKg2lWpAMAu9opvQ
	(envelope-from <devicetree+bounces-262773-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 19:04:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D7202EB59F
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 19:04:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6B465305B088
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 17:59:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66D264219E1;
	Wed,  4 Feb 2026 17:59:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nexthop.ai header.i=@nexthop.ai header.b="g6MGtNTx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2B541C2F6
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 17:59:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770227979; cv=none; b=kkEegk4MJoCXAD4e61dz0D3aBhgjMPI+lmQ1BMMNUgQQv6eQjq3fpIVSunbfON55GTWPhxlHPLUfB9AxTNekV45NdZdHXa1r45R2PxWFcIJyB9U78FfjqH4VZysjuivk/IiIWAdNqSWHDrIDczEMZ7oIK6l2i5YmSmADYZXM80o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770227979; c=relaxed/simple;
	bh=DQMMFflNqnk7npdBRibcUjPFqk+hQsIRfSSjEu4G97A=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=g+omtrvBJuHQoc9FieHt/o9FS7A26jqV0oLmqaT/40g2hd7ErglO2lFo7Q5mbao2lgv4sPbzH4iHO382Kmyi4tDCMp9G/J40i1bgCm+YvEKzDz616Vsuj70rCYNN0eF1P9g1FHjXvo9FEofWmPHHTI6HEMJajd/XXwKlw9ShjzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexthop.ai; spf=pass smtp.mailfrom=nexthop.ai; dkim=pass (2048-bit key) header.d=nexthop.ai header.i=@nexthop.ai header.b=g6MGtNTx; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexthop.ai
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nexthop.ai
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-81dab89f286so62600b3a.2
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 09:59:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nexthop.ai; s=google; t=1770227978; x=1770832778; darn=vger.kernel.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DQMMFflNqnk7npdBRibcUjPFqk+hQsIRfSSjEu4G97A=;
        b=g6MGtNTx54YgW5OyFcbLokmgzD974VboIQMjoAA4L/1RkTdhwTNSeN2AgTfTtAShTH
         wIrz2Dau24FO533lNiweMWObnxIyE3mFNhomjdD2c0Oip+YwAFbE+qAKrJf1aSBnKhDO
         celfD5q5NJQkfJ4CMvqA3AsP1mngVv6k6yFNudyJqmSrQHCIPa84Fq/U6niwht2dYeTd
         HyY4cQLoas0gRQXO8Zp+H9cnIhp0Nv6Eh6BOczYfND6pZwbqfT1oicqp/nt3wdZVpEYC
         0zA2ef2aRbZGeUw2dr3TKQxf1Aeh1WkwAtDqEOf9GXmsaqIrvcI2gQniLJimrohpijI1
         O56w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770227978; x=1770832778;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DQMMFflNqnk7npdBRibcUjPFqk+hQsIRfSSjEu4G97A=;
        b=NmslMRMnD/Lp/0KF0/k3olrCEPCU9qSMJMuLvB5Dm7wNqhR0XFOoDWHGEgtDSjJRJW
         kli9tNom7dutb0+RmDZbtnJxfZbs25f0vg/WNfhKlM9dpicRnpAlEOMbgiwHRjjNTCqk
         7Namea3PVOrGSIVw4RnFgqU0MQAfUNMI2UJfmA3RUopETDBtRHXXMZ3QuN04Z0BlB6oq
         /y8YKnjLXHwuBhpNQWVwn0UEtRzdGWCpP1171i0iRc7ZOFlpzvCVREBHPoWgl9SSOCA8
         8+jirD4LW5B5LHyfn7tPZPZmdjMSTkW/7/e2rTcqjtjkx8S7NRUS2uh/MNJmATkBkbiT
         JTeQ==
X-Forwarded-Encrypted: i=1; AJvYcCWQvAnzKeZgxjD0DFrL8Nn6ZXkMn6Xq0K4bqp8+kQ8qT56MPu2g9aZDvKNIU0PtqmWvonzzrUxAznfW@vger.kernel.org
X-Gm-Message-State: AOJu0Yz65oh+MUm18l8iRyrogPwGTf/7Z3exFe0tRs3W7o+6neABbtGe
	2gNPmJ4kP6JTUe6d/itpFO3KfhtheKfjzNFPP08sEcd/mrbytx9oHx2eXu4o/Wy93YQ=
X-Gm-Gg: AZuq6aKYV2mq9qPzMQb9SS3vODsSbPAVxgYyValLK5O5FRfgPEEVjfVhJwYFIe93rCp
	8gUWAYI0dYbOutlwnWfMRQtn3DH79x/7wizsGDRzUq9TPJ7GdfP3aJinDGTuEMxa93f/0hEbEK0
	E+vr4t9uSXlhJl7ETQVRG82YWedRpE1B3s40tkxvVqwH7raqMdOcG7Phwdmwi/fIeyLsnI9VEFM
	EY3nXkAUzXp97mEDy2q+jPO/48NOK8j+8BXkU4LnEqDwvOeh5lcCVBXBDbz+nZduG3KArn5uwLw
	OkGPlamqxlMUJOHyBUOJgKMyn9vtwms1QmKAZFhoqQN5KHY1yjX3REYlCTIiZ+ntsj+4ol3OHOd
	kzl9C4FJIOuUPPbnBGgw5L/TM7zKvQ86w6/jymstjhjknTwTVU0wIkts3QUjGkOztzcu1IieKXr
	Lmo4gOr0QldgSYp9o3cRLVDP0vAQ7SRTrnYxI=
X-Received: by 2002:a05:6a20:72a2:b0:38d:657f:7d9d with SMTP id adf61e73a8af0-393725ddbc9mr3332035637.75.1770227978511;
        Wed, 04 Feb 2026 09:59:38 -0800 (PST)
Received: from smtpclient.apple ([50.47.115.214])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a93397e9cesm26698205ad.97.2026.02.04.09.59.37
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Feb 2026 09:59:38 -0800 (PST)
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.300.41.1.7\))
Subject: Re: [PATCH v10 1/7] i2c: xiic: switch to devres managed APIs
From: Abdurrahman Hussain <abdurrahman@nexthop.ai>
In-Reply-To: <aYMbY62uJo95yc1l@smile.fi.intel.com>
Date: Wed, 4 Feb 2026 09:59:27 -0800
Cc: Jonathan Cameron <jonathan.cameron@huawei.com>,
 Abdurrahman Hussain via B4 Relay <devnull+abdurrahman.nexthop.ai@kernel.org>,
 Michal Simek <michal.simek@amd.com>,
 Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <1B0AB3B9-A117-455B-949B-24805850AC69@nexthop.ai>
References: <20260204-i2c-xiic-v10-0-c2b996425235@nexthop.ai>
 <20260204-i2c-xiic-v10-1-c2b996425235@nexthop.ai>
 <20260204100034.000050b2@huawei.com> <aYMbY62uJo95yc1l@smile.fi.intel.com>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
X-Mailer: Apple Mail (2.3864.300.41.1.7)
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[nexthop.ai:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262773-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[nexthop.ai];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[nexthop.ai:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abdurrahman@nexthop.ai,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,abdurrahman.nexthop.ai,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,intel.com:email]
X-Rspamd-Queue-Id: D7202EB59F
X-Rspamd-Action: no action



> On Feb 4, 2026, at 2:11=E2=80=AFAM, Andy Shevchenko =
<andriy.shevchenko@intel.com> wrote:
>=20
> On Wed, Feb 04, 2026 at 10:00:34AM +0000, Jonathan Cameron wrote:
>> On Wed, 04 Feb 2026 07:01:58 +0000
>> Abdurrahman Hussain via B4 Relay =
<devnull+abdurrahman.nexthop.ai@kernel.org> wrote:
>=20
> ...
>=20
>>> - return 0;
>>> -
>>> -err_pm_disable:
>>> - pm_runtime_disable(&pdev->dev);
>>> - pm_runtime_set_suspended(&pdev->dev);
>>> -
>>> return ret;
>> Trivial but if you are respinning...
>> If you get here we know ret must be 0, so make that explicit to the =
reader as it
>> was before with
>> return 0;
>=20
>> Otherwise they need to look up a few lines to realize that is true.
>=20
> Right and this is already the line above, just wrong one was removed.
>=20
> ...
>=20
>>> - pm_runtime_disable(&pdev->dev);
>>> - pm_runtime_set_suspended(&pdev->dev);
>>> pm_runtime_dont_use_autosuspend(&pdev->dev);
>>=20
>> Take a look at docs for the devm_runtime_enable() that is called
>> by the cleanup for devm_pm_runtime_set_active_enabled()
>>=20
>> Short story, it will call pm_runtime_dont_use_autosuspend() for you
>=20
> Good catch! It's not obvious from the devm_pm_*() naming... :-(
>=20
> ...
>=20
> This definitely means v11 should be send at some point, but,
> Abdurrahman, do not hurry with it, this series missed the cycle
> anyway, we have a few *weeks* to polish this.
>=20
> That said, send it after v6.20-rc1 (or v7.0-rc1) is out.
>=20

Sounds good. Thank you for your patience!


