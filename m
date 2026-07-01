Return-Path: <devicetree+bounces-318675-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lrgDJkAjRWqn7goAu9opvQ
	(envelope-from <devicetree+bounces-318675-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 16:25:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EC2776EEB1C
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 16:25:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=ExSKeb8j;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318675-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318675-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BB2D6319219F
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 14:01:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF2BD2C15BB;
	Wed,  1 Jul 2026 14:01:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f54.google.com (mail-yx1-f54.google.com [74.125.224.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D838258CE5
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 14:01:32 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782914493; cv=pass; b=Bw5K29SSGwaDIE24UaKNxIZmJw15F2yq9Nnl/P2IgeuxokiD7WDBFmcxdOnxXKQJLQIU8KNogIA6Fq3dUeiDOEua+NqPBBMLhfErnVBlIolAUZ6m9zak+9V/muKwH3v8m29DPOa34WvBz3WxHg7lelqizVU7JCiSKgmaXuzfkYI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782914493; c=relaxed/simple;
	bh=eVUZ4embWnOBiS9PgKFrner9THwK3cnX7ndZCKBqzJ8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cEaQPK0BAi0+8PPGLVMdbetBL2bjMVJV9mHRPS61mCZMr28mSkv7PMpdx0M8Yr/miDfuFPmw191T9NWgPo88NvdH5bPRodd66XNgmKxIwi+wiAa3F9Mwx1/PtFGL1k/zvPjx1wk9fA70JPvZrNyECW+tt3S1OY8zgcxFTIgXKQk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ExSKeb8j; arc=pass smtp.client-ip=74.125.224.54
Received: by mail-yx1-f54.google.com with SMTP id 956f58d0204a3-664d910cc75so1009559d50.1
        for <devicetree@vger.kernel.org>; Wed, 01 Jul 2026 07:01:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1782914491; cv=none;
        d=google.com; s=arc-20260327;
        b=DmKnOceuHIeV9zbqk3DJ5p8FQM7issFceEhROerZvPAloyPP2iSuQbgajFz8F2qaMp
         p3rj4FleyxjrPqN9HbTkkdHqEgfBGi61/JFJO9oSQoSnOa1zy4ajjdBzSM5voByOqy8F
         QiS4r+Zmg+4LzpRIeddg8LOJqXQQRX4qfPUEtm/jzJ5RG76tjd+VNlFo0EVCE7DuURDa
         VeVp9/LqVHphT55wIeyOcnWsuXZRn76VphPLcRAPROk5i8cvDThnuIROlF7EHSVndBsh
         b3TLkojPEgStG+PWCLo3dU4JoV1vi9eBI8a45L7nVxvth1LgV2jPjgObFxi9xtXq6jSP
         h6XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=eVUZ4embWnOBiS9PgKFrner9THwK3cnX7ndZCKBqzJ8=;
        fh=7KRIb2Plmpg4Of79u4QY7ld1sPwMbDRwvEWQxSpDR2Q=;
        b=liEIWuZLMxcPvKYUN7hQQY0qurl0NHie7ANWYSOdE8alLSvjEK0e7AA4Ml44Kqafhb
         zVTjrZ5zgmoOKbLldhc2q9Mr4GDBzZZplwgiNgXZqciRT/1P/BkYb2F+0f8xRcP9XS7g
         f7IEvCCdfvvsVz8CuHMS4C6KbP3UDLnGlM3qopjzxj922j6DEkqno+N/nSD4XjvssE1l
         cV4F5n1/ubNbx6VAHlv/8nVU+EtnsKhHoHSVgzKS/blRa2bNMHhdt/eP7Ahxm75R2ILA
         oXp3dwXzwKZzS3RpUpwFB7vfPvYEKgooqb2WSi+ghhFl2RCDlLUDp3eChy6Pe8cAfDxW
         umrw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782914491; x=1783519291; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eVUZ4embWnOBiS9PgKFrner9THwK3cnX7ndZCKBqzJ8=;
        b=ExSKeb8jnnGY4Cx2tEnwQy84vb0UbEDvK3CJ2L1sjC+bx1DfZ1gw2exY3Qe+G+fvLy
         7sw4EsOk4tpqAj1ZaLye9UItBIaDnqA4ZTfBW8ZAT1yZSfoALWkGNvCIhRXDvfZgqxVD
         QEgvHRH6vbOxON8RLjPq6Y2MBVuME35vDxgrorJxy2QhBi/0hOjvwzoBD26G+pYsxjh3
         QkERTl5sVaGMxLmLiv7KQqY9sbV9P5SWILL8O6fXG3Hm/l6GHvhDGWMvRL6CVBgdDDDU
         HqsKFAcAf0tATFyZmUZ4NCmml8mqXJek+eHf3T7YmsIWk6DUt8p5OyDzaNNnVRMCoT1U
         P5Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782914491; x=1783519291;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=eVUZ4embWnOBiS9PgKFrner9THwK3cnX7ndZCKBqzJ8=;
        b=kWXYQFQ2E3Q87vRgq+6NS0Vyk09ACI3qDe3F71cqQHj1rPQ93Ne4tIMYqplXdiR6cA
         9ow25naNr3pHKLB97c8LdgATQIjiDLyOZBUR2JDDBUPKXx6ZAKkicp6eGz98xfO/ffP9
         BwEiEsxDJdhOfzF0R3sNOfQhrdcRRCJRE224JJg13EqogxTtzcb6rfpH5LG55TWDgxj9
         FMc5EAIRnPQpjEBU2MkrHbhaxcvHeALjq7XtbRJ5tlYKE72fZefMoLfg81ipFGYYYs/a
         WM/YHBbCPQTVyuq3VVGdxNmykJbMVSS2CMJV77eU6SMVN/fDTrdYVfgD8aV3Q56pvWLs
         ZKIQ==
X-Forwarded-Encrypted: i=1; AHgh+RrmbpxGMc+QVVPrxiaZ/nJD2Vi6DqgWA3ydR+/nbk4uN9UY1dRmQv7GGT3oC3I6gQMuigHZZkrnEG5m@vger.kernel.org
X-Gm-Message-State: AOJu0YzLgXfg3o0aaRJo3z3Nr30YqK0MaD9SVS43NGnaj/fZrFSvA6i7
	WdTHPRqVDslJZPTmKjQvWfaIovuUewXNmvl5NHX6pcEHXu6l5sqig0BednKPmLMkktqTTTco8Rh
	VKj/8T1TOay8jkooAEpv6n1evvJ9bbt8=
X-Gm-Gg: AfdE7clK54L6AifRkOIJQ5Qm7NZZOxTi2Th4LLicA94YG1r3rcewrYCYmyNqg7E+lD2
	PG3s1UMsB7nQKytL1930y1JXh6BTC8FkZPQTnrd+iETOn7iQbEIDq14XtfDXxY3uqFepZTfGrQd
	ZfUB3I9AJfZp6/XFqQAOZwPl6l42IFK/4a4FWP+BdqIu//z7+mebHkYhqFhxaY+ZgVCY+rHGqHL
	+VQ4JIZDMD8cVVo7CT/xm6cofmv7e2gRFTmDQZpoC6NnGbe89vU6n7G5TGqN0bpSH4fX2ITbOvO
	koff+WUGnV4n96QDhSu5GOv1SS/7BMB4frJb0r6XFy9pwldYiYrRjBHiAU1YFA==
X-Received: by 2002:a05:690e:b88:b0:664:ae03:5251 with SMTP id
 956f58d0204a3-66591634413mr801390d50.2.1782914491125; Wed, 01 Jul 2026
 07:01:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260630-apple-mtp-keyboard-final-v1-0-506d936a1707@gmail.com>
 <20260630-apple-mtp-keyboard-final-v1-7-506d936a1707@gmail.com> <B22C8EFD-DEDE-49C1-AD8E-BAEB5C91B6A6@chaosmail.tech>
In-Reply-To: <B22C8EFD-DEDE-49C1-AD8E-BAEB5C91B6A6@chaosmail.tech>
From: Michael Reeves <michael.reeves077@gmail.com>
Date: Thu, 2 Jul 2026 00:01:19 +1000
X-Gm-Features: AVVi8CdUm7TRIKQUnleOwtMjaxBDCbjz3iJPuSJcM6iQODX-JToqKlxvunuUfag
Message-ID: <CANpmGNuoS+AK6yOo-S8Z7M9LbOqZXUN8Sgv46L_y=OYnU_orXA@mail.gmail.com>
Subject: Re: [PATCH 07/10] HID: apple: Add support for DockChannel HID keyboards
To: Sasha Finkelstein <k@chaosmail.tech>
Cc: Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>, Neal Gompa <neal@gompa.dev>, 
	Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Hector Martin <marcan@marcan.st>, "Joerg Roedel (AMD)" <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	Jiri Kosina <jikos@kernel.org>, Benjamin Tissoires <bentiss@kernel.org>, asahi@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, iommu@lists.linux.dev, 
	linux-input@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:k@chaosmail.tech,m:sven@kernel.org,m:j@jannau.net,m:neal@gompa.dev,m:jassisinghbrar@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:marcan@marcan.st,m:joro@8bytes.org,m:will@kernel.org,m:robin.murphy@arm.com,m:dmitry.torokhov@gmail.com,m:jikos@kernel.org,m:bentiss@kernel.org,m:asahi@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:iommu@lists.linux.dev,m:linux-input@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:dmitrytorokhov@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-318675-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[michaelreeves077@gmail.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michaelreeves077@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,jannau.net,gompa.dev,gmail.com,marcan.st,8bytes.org,arm.com,lists.linux.dev,lists.infradead.org,vger.kernel.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,mail.gmail.com:mid,chaosmail.tech:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EC2776EEB1C

On Tue, Jun 30, 2026 at 11:41=E2=80=AFPM Sasha Finkelstein <k@chaosmail.tec=
h> wrote:
[...]
> It looks like this section is duplicated in the following commit (8).
> Is that correct?
>
Yes, it is duplicated, thank you for the pick up. I moved the fixup to
the transport layer driver (in the following commit 8), which works
better, but must have forgotten to delete it here.

I will correct this in v2.

Thank you again!

