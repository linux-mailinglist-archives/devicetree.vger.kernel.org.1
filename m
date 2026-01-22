Return-Path: <devicetree+bounces-258630-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cCChGfaMcmlJmAAAu9opvQ
	(envelope-from <devicetree+bounces-258630-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 21:47:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D59106D896
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 21:47:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CF69830157CF
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 20:47:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52D88371048;
	Thu, 22 Jan 2026 20:47:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dn53nCet"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE6DF3A63F3
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 20:47:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769114865; cv=none; b=s6FyaFJ5NGRImbvWWzI1MZt/HpAB25i6qHxujPlOd7vdfDkvy4ex/DjeHZw5BIqNkuuPe2jvrFwBOx5zu+9RVKLucNbvID8znlfAIMhquGz6Y93bXQ98SfqCO7ILQAJFwIoWgijBoFicUAtJZ3BB1/Tnd5uxCXMJRopkZoXY8Bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769114865; c=relaxed/simple;
	bh=6ydNNGaBTVLwP3JEYSbtuzK13+5qu8DIEj1lwTsVX5A=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=ASExj6HZk6z+uwlOltGOecjkpRRnVwp/3V+UO0uKUsR03xcY3h7uQFAmyq1FjkZRscQfDKSskYRKaKYetDsWfUtxx2S9rugwYKAnavJlj8Ub6ugoexN7nwsI4pFkZunK/wgisdkAHYkskRpV5l41cqD8hmRqkpSJvtNIQiVuYB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dn53nCet; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-4359a302794so975375f8f.1
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 12:47:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769114855; x=1769719655; darn=vger.kernel.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6ydNNGaBTVLwP3JEYSbtuzK13+5qu8DIEj1lwTsVX5A=;
        b=dn53nCetjrLM2lY51zbeFXrK7AYBL9VTxQ1qsBMbWFuMhpZm5BrmMCAzczpdCzC5p8
         U5jC4NqG+8YLvLxTAQMwLZR9MnP2IrSfA8eimGaPZpiKqo37XZINL6cSjRQ3/OUFpRKc
         7o04NHfrIpeXCtpZf7L07gRS/2nMNZyVcqbTr2eTZEVGzaIBuRsv7LCL6Oyo1JNHHKhT
         6SzKle+/W0jcREFV8pyrOZjbncTqBRmFLWCmgDs9CzpMju9VVRGOgyak0qCFg0RNYwKS
         z0Ema2goggX8zJKRXaV0vi0H6egQSsD7A8cb7gWDnYUsf6fS4iO3VFPUI/3MO6+7uIx4
         7Ehw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769114855; x=1769719655;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6ydNNGaBTVLwP3JEYSbtuzK13+5qu8DIEj1lwTsVX5A=;
        b=jsf2JwFXBkipyq+ky/x8v0swe+AENbCwupsfmuUzp7uEPIsBiJ48YwVbWZPUtyonXw
         jH6aHuVMQiCYlvq5nZOCYVj0FQ3OFkTqpKkHjH3CYVy4D8xkJeNJDUQqlykvgf/ZqFz3
         uVC+lr1hISNeXtSprDWVAdbBkzVoxKfaXraiIEF+oHclCqjl0C19ihBPTkw9TS5F/Qg8
         dqMkTs0+KBTTVml8+xjIHXE5DONSh3N+errhw1GvvIBpvRILIct7F0SCIIWJGAXEK5Wc
         /L6BIezvt5ZzFUmBKy5pU3YOE1/vPJMZ35cSgepD4iYcjkeFvvFjUbckualuMUiIytug
         N6pQ==
X-Forwarded-Encrypted: i=1; AJvYcCVZ83VV1URu2E7zTThmnBcCXIxH899t76/w7hqoHDMfQkcI84+ltBiURFHHSeh/Cc75m3PI6YV7N+15@vger.kernel.org
X-Gm-Message-State: AOJu0YxPBmM2D1yTMlOikAeo4PRaO6X+ag9kB45omgNq8By3Hz9kYELQ
	LQR3cVGxlLpiua60varZAyjYt8ki9R4jb3vR0sgoHvWprjJED7KN3tuO
X-Gm-Gg: AZuq6aLQsPMQSqlbh3vaUCX+ADIAiUnljWINMc03bdswZU/UVWGn8Fi6dmL01catLg9
	s/hne8961BS6rnUJMi2ul3MPFccjQNWPpBbZGEt+y6qp73kZTmCzNq3zpfI48LQHBU6hUrDnflV
	HXFnJzect9fGYCmP7btAFiykycA7GREfbxv5CnHWoVN4ux70GV6y5vyH9Du0nVd49lgUMFhYISI
	vMuvUHuid2xDk4TajcPdHY8YJpCQcg82+OrCSMqu74pyQXjyhZam9CpXMKXEgsb4w7VbUV0Q17N
	V/qfEMkiJDfrtLf5Ljy593snx3JuA4ZULGnHiSqYlAOnheABmaMyEprIuxbpYWf32tIgT6sCI5+
	ztZExB0mIC150dxfpLRW8MMv49L015CuTzWPO2T0DM9PtSdWzMvEIIPjq1oHpRI/ngpLFQEza1W
	QmbLZXQzmyPoDs+CHPLyGb6eqPuMtIfFNed7ckYtbspms=
X-Received: by 2002:a05:6000:608:b0:431:a50:6ead with SMTP id ffacd0b85a97d-435b15997a1mr1476659f8f.20.1769114855046;
        Thu, 22 Jan 2026 12:47:35 -0800 (PST)
Received: from smtpclient.apple ([2001:912:1ac0:1e00:985e:f575:8301:f2e2])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435b1c24bf8sm1235793f8f.11.2026.01.22.12.47.34
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Jan 2026 12:47:34 -0800 (PST)
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.300.41.1.7\))
Subject: Re: [PATCH v2 3/4] dt-bindings: net: realtek,rtl82xx: add a property
 to set MDI polarity
From: Damien Dejean <dam.dejean@gmail.com>
In-Reply-To: <20260122165102.GA2564919-robh@kernel.org>
Date: Thu, 22 Jan 2026 21:47:23 +0100
Cc: andrew@lunn.ch,
 krzk+dt@kernel.org,
 netdev@vger.kernel.org,
 devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 edumazet@google.com,
 davem@davemloft.net,
 kuba@kernel.org,
 pabeni@redhat.com,
 hkallweit1@gmail.com
Content-Transfer-Encoding: quoted-printable
Message-Id: <916AA508-4097-42DF-8087-4C82ABB87D76@gmail.com>
References: <20260121151506.813783-1-dam.dejean@gmail.com>
 <20260121151506.813783-3-dam.dejean@gmail.com>
 <20260122165102.GA2564919-robh@kernel.org>
To: Rob Herring <robh@kernel.org>
X-Mailer: Apple Mail (2.3864.300.41.1.7)
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lunn.ch,kernel.org,vger.kernel.org,google.com,davemloft.net,redhat.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-258630-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[damdejean@gmail.com,devicetree@vger.kernel.org];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com]
X-Rspamd-Queue-Id: D59106D896
X-Rspamd-Action: no action


> Le 22 janv. 2026 =C3=A0 17:51, Rob Herring <robh@kernel.org> a =C3=A9cri=
t :
>=20
> However, are these properties something that should be common?

If by common you mean =C2=AB not Realtek specific =C2=BB I have no idea =
if this kind of mapping is possible on other chips. Marvell Aquantia =
phys have an =C2=AB order =C2=BB (marvell,mdi-cfg-order) property like =
the one I introduced in the patch before this one (thanks Andrew), but =
that=E2=80=99s all I know.



