Return-Path: <devicetree+bounces-267131-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +FbCFrITmmmeYQMAu9opvQ
	(envelope-from <devicetree+bounces-267131-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 21:21:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AE34816DCCE
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 21:21:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E82E7302C5CA
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 20:21:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D789368288;
	Sat, 21 Feb 2026 20:21:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eIOaVn21"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABFDE36829F
	for <devicetree@vger.kernel.org>; Sat, 21 Feb 2026 20:21:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771705262; cv=none; b=QYwDWDGVr+CgZZu+83RfTO97jI2CfhAbe7+eu/Im7E4J8gRAMm0iUPUUK+Alj9fSqCMdxQOTgIOPMH2Mx/uoT9kT6hX81CEZxseoEqj/xwM7YT3gwDsHWIr2iAAbzeVjLdoRXXoeGlMocTyMNFWHZoj3loxO6nMY2AYXRYIAKJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771705262; c=relaxed/simple;
	bh=MdfV7MR6/fNLmSxrCi1s/IDBRC28RM6oES4DTBkklKY=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=SmP5SfR4eTLT4coeTQNxz3N3kjQ/Jv2utQdCHCTOIFKRPMfy+Jj/nCJjtFamTO1UlWcdp/pm2xQvuKXBvoERSQZyTPdXb735fIfRVMqhmPGGSrVm4vjPaq15+8ewl+OLZon1l4F49PZJKdRsEmmEnE08YV9wysWZ9z7YOau/dhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eIOaVn21; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-48374014a77so32527875e9.3
        for <devicetree@vger.kernel.org>; Sat, 21 Feb 2026 12:21:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771705259; x=1772310059; darn=vger.kernel.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MdfV7MR6/fNLmSxrCi1s/IDBRC28RM6oES4DTBkklKY=;
        b=eIOaVn21dxmpGJRJ5AkRuf5VTL3tJulHpCokOrqiI8iCoB4pZ7tMsTzlDJ0GLGA34Q
         n3JXOOSVdrA56L1uDX0fKkBPSR0GcLm8apmgrGBM+MerfDBGcytTQq1OqTqRqweBx3ks
         HAJj5wOS5Ed5nWX6dEmDEesqptyXktUbVlUk14wG/noVbqzsfGydzSDYSVBlRBUwYLto
         rE98i5CvMuV15vFLN8YaIUKikic7fmEH2Z4Zf0PnCiBbjMdV7lDy+8CrpUQywHOBJqfJ
         v+z89zcG9cgneXMzbO9fDKxWg2e2wsoAQIyPD+qkg4AkSHdopNnSPykA0sUshdlhB8yA
         +B3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771705259; x=1772310059;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MdfV7MR6/fNLmSxrCi1s/IDBRC28RM6oES4DTBkklKY=;
        b=f0StxfEwebg6KUzF7mCrAOZ5Uu6YCvZxKasD83O2aBTW7eIcGv2eNf/pjofh6BT3DZ
         fyj8Fin0y2w1vdvre2FQlUJeHyuZJ8LJiIRf8d9MBS+sKyQ3Wu5gVGDE+UMq3P02qNmc
         nDYtulOwd9LhVAHmbkxf+/n+ffBcWHbEg/wzbB9HWvvaOgd5QM4vBvd+YYgB6SC7oKWe
         L/WNx+SJT6QPXYmf97BXaVWRILM3sjo+4bpUpUpF4n1Q7V9CoSTrexBU5M7ovB4Z/gyL
         ECcvcw9vliIgvMEQjnKzP+Y1VHVz5rW2TMvinINPUjVx8kziQBg9NkiqNG0s2YBSJkP4
         bp+Q==
X-Forwarded-Encrypted: i=1; AJvYcCWH7ndIHY5qynp55U7o0+ny8nTZnNBDqGoodCdQOkA+nNj3ecy10eHiWyZSPa+PjH4UmlcsCzjdYqD1@vger.kernel.org
X-Gm-Message-State: AOJu0YxaRQiWIQEQDcfG3G0QrauRyXfpkvNS8lB0Xu2kPoC1gy0KFolR
	zgPqluWyj9zh5D4LKbtVIbXX1EYh/SIiRPovrC/i4fozOuU8+fvbTcXB
X-Gm-Gg: AZuq6aId7YuZ3MAe7q80Qxt59ehh7mh/LxenD35Bnnv4bAPwTwH53C4W9I42YZRL1sW
	rdN+yo1vKRJHyIn+NvGIS0q/pz1zbQongUTcOQhMYJs81VQp2UNrcgzfvS1177Z8oSkzK5Ao2Wr
	gus0juDoOOZtenS7Ig/v7Ykgr/rLKGm1KQyt1FXoY2M4EziiaCtuiIsrL47X6/j+Eog6i035JJk
	2s1H63bsWDaNAEO7juX5wJIE86datq3N+f7To7h9msQC8yCH69ktbq/azK2eaMNN2KwG0sKhQIF
	dG4lmh7Y0IlCKz/skxcWFrijk8UTt6/aFT3JgFBRSD78asxnpVlA3IAuv0/sluWvHhpzk0dgid3
	nDjWYZz4Tr8gSBMxzGcgsaUcxJfcuIYhhY0/iyxKUNjfFagUhzmolXQdlE2CaQTsknM4X2Eej8O
	wdsiboZ2UIATWy/W6wdTUMj4zVWiaEEDLIretAaPgMsu5oYp+e6F6EwAc=
X-Received: by 2002:a05:600c:1e1d:b0:480:6999:27ec with SMTP id 5b1f17b1804b1-483a95bebcdmr70776425e9.13.1771705258786;
        Sat, 21 Feb 2026 12:20:58 -0800 (PST)
Received: from smtpclient.apple ([2001:912:1ac0:1e00:8846:5cfe:bf37:b202])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483a316eb08sm175040345e9.0.2026.02.21.12.20.57
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2026 12:20:58 -0800 (PST)
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.300.41.1.7\))
Subject: Re: [PATCH v6 4/4] net: phy: realtek: add RTL8224 polarity support
From: Damien Dejean <dam.dejean@gmail.com>
In-Reply-To: <def77227-7b69-4f23-8f68-949173eda6a4@redhat.com>
Date: Sat, 21 Feb 2026 21:20:46 +0100
Cc: andrew@lunn.ch,
 krzk+dt@kernel.org,
 robh@kernel.org,
 kuba@kernel.org,
 maxime.chevallier@bootlin.com,
 netdev@vger.kernel.org,
 devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 edumazet@google.com,
 davem@davemloft.net,
 hkallweit1@gmail.com
Content-Transfer-Encoding: quoted-printable
Message-Id: <CB0A00EB-82D1-44AC-BBC8-8C676C89AD2E@gmail.com>
References: <20260207092539.647768-1-dam.dejean@gmail.com>
 <20260207092539.647768-4-dam.dejean@gmail.com>
 <def77227-7b69-4f23-8f68-949173eda6a4@redhat.com>
To: Paolo Abeni <pabeni@redhat.com>
X-Mailer: Apple Mail (2.3864.300.41.1.7)
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267131-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lunn.ch,kernel.org,bootlin.com,vger.kernel.org,google.com,davemloft.net,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[damdejean@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: AE34816DCCE
X-Rspamd-Action: no action

Hi Paolo,

> Le 11 f=C3=A9vr. 2026 =C3=A0 12:36, Paolo Abeni <pabeni@redhat.com> a =
=C3=A9crit :
>=20
> This very close to what you implemented into patch 2/4. Likely you can
> deduplicate the code a bit factoring out some common helper.

Thanks for the feedback, let me rework this and repost once it is =
possible

Damien

>=20
> Side notes: you should include the target tree in the subj prefix -
> 'net-next' in this case, a per patch changelog for the introduced
> changes WRT the previous revision and a cover letter.
>=20
> Also note that net-next is now closed for the merge window; you will
> have to wait unit ~23 Feb before reposting.
>=20
> /P
>=20
>> }
>>=20
>> static int rtl8224_probe(struct phy_device *phydev)
>=20


