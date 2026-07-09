Return-Path: <devicetree+bounces-323349-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id diIQIQ5KT2ptdgIAu9opvQ
	(envelope-from <devicetree+bounces-323349-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 09:13:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D06EA72D7DC
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 09:13:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=fairphone.com header.s=fair header.b=gLsp7Dd1;
	dmarc=pass (policy=quarantine) header.from=fairphone.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323349-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323349-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 31F76303FADB
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 07:07:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A68B3DCD8F;
	Thu,  9 Jul 2026 07:07:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0131D3DDAF8
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 07:07:02 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783580827; cv=none; b=SmBwUEmIpbLusjvI3e0X+4czBevp7SpE4LS9ZOmeRAW6c73egCbsi7ARI2negZ5dTNLSs9176kowFZ16WzCjQwEAfjlXU+VXAddB5kLgiZUyIRUiZAEwPVKOwwkPRNe84yd0eM0jIWJQHmZ+bHvpkpamCQYs8XP1diNlbt+vgoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783580827; c=relaxed/simple;
	bh=Bnd/Zp3niZIQob/FNfLgwtO3XTUE9bxrb51tY42Yjss=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=NTdPwEl26hXjv0TXwL083XMljREjvIMvEpwOQ9fZ/Wp32P6QWcy/oEf37IirgUN+JoIDQbxi8+BbUqdlJq3Aqrs8AzFn4ZQ6//4Q+ZKKOhF04cDwv4XwnV7avZGb49dFtFjOqD4L9xYXSVGiSnqSXC//coQ0kJRhe151ZmtD/gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=gLsp7Dd1; arc=none smtp.client-ip=209.85.218.47
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-c15ec1da77aso21967466b.2
        for <devicetree@vger.kernel.org>; Thu, 09 Jul 2026 00:07:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1783580820; x=1784185620; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-type:content-transfer-encoding:mime-version:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=39wxSflXcaAuLOW85LSK1MzZPDJ4dD+cTINLmzJuWNw=;
        b=gLsp7Dd1WVvvxNVzg0TEshjZfYeaBtgcq8CTqXXbwUOJd7r8Qtb+oP9eCA/LzinkrT
         /ueUwtkfdbEZT3eRvolfn182weA34O2dMkA/8QNSaiwQ4Oos0CsAqs/uaoDPXGSue2QE
         sE5Iau+Am+lLQ2kJj54eDIkSdJew+WpHDO/bFtybnWU8S5C5Ll0s2trL+ntKRvcgEh8w
         iZ3SzhmzPVaxidRhAA4aPtwzhpMwE9IN2w0nnyx/NvkFN2EJnQnoMpPmNN4iNn4O9vdp
         hiQf0djgmMURAn5qc1tsFRlkv2rSEDq213wtVSbXULMU4+y2n+0u/CWfJ+4MEFiq2Pvd
         Kdow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783580820; x=1784185620;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-type:content-transfer-encoding:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=39wxSflXcaAuLOW85LSK1MzZPDJ4dD+cTINLmzJuWNw=;
        b=ik7s/nFtvFBUsddCEcm0g5un1vstYT+d1p/5mNXUjK5qu5x6ejdSkZmJZtCAhbwuV5
         u704jDhBHUpXmesTTEUYIzdjK7gyfutGQqHs1f42L2/3LK1tL0/Q/Hbu44o68PJf0Cxy
         SMJztiicuOQpU5TPWZZdIbvCA+oJ0imn+yU38EgDT6U0IfriXhS/zbokh0VqVuPvNfAh
         1WutiblCVNW6Qm57X5zx9ZKNZ0zy0Fli4qYbuW3UALdAr7VDrXwzGTdIHnq6aIWbHPEl
         WoM+lzZL5/mznVMQkLGPqIFDWulobqbXW3T/2ummXmKpzk1fPQBZnLgKMAgl3JGSdQbz
         lILw==
X-Forwarded-Encrypted: i=1; AHgh+RohDRqGf1qOBhC9LAAwa+Xk/f2vrRkG0WLn5hCEIGKcVektfEW44pCHQptkwOyvV3HH44TtYRiIkR6H@vger.kernel.org
X-Gm-Message-State: AOJu0YzccYWKMDWpgrs4v0nTXg4C0mL+YnH+MTq7wMNonl+QqFep3GA7
	mfnVgHYsmZ0S3hYHvOXKmN4WqjfSELNGbZ/XBIU5cQv/rOLRDPVprbz9YU7wguql8Ls=
X-Gm-Gg: AfdE7cnvCKYrUKvtjHpNzKvI4/qHvGisUc3+dXP2BPIXIVTg/cw+WzaooZ+mn7HBzs6
	cjTyQYc2Mt2eGB5pd/wUHBtvwte1g1k7TxeLlRenJfCfWaNP9R+kwXsIkIHG7UMY0ACQ9U1T/8z
	0xzRUCZMcP25KKCpmwlP/Su5xKZqmAQ2mWrVRmOaLGX4yR4jfh5RePyHGXY1LDU3rUUmL+uwLAc
	zcxjbyp9+EvUojxRY8K1CT5rGCCqCl1VEoszXrRWGKgHfnPuSNLBDnsoBBXtScShb4Gz/6yf0GG
	JC2d1cW7pSaFBtdpCmTOKt3PRlLy50dEohUhSU/XcYCnRAK8mylXH+oKEwcHsbZoOaFFcg9Iskw
	CXqRT+Yn/29gAZKI088SQYb79CbQwHQc1CgC8BgYNWZAyEmlECBhOTAKzNavT4U9gSnR2i8P+I/
	qqUubuOqhAL1572p5Ny9mNoctYIuctGN4SFi9/tebkPD97nKxPQCfPBbJ7Hg==
X-Received: by 2002:a17:907:3f86:b0:c15:d0b6:495c with SMTP id a640c23a62f3a-c15d0b64ce5mr261020666b.29.1783580818201;
        Thu, 09 Jul 2026 00:06:58 -0700 (PDT)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c15ca1bd81asm240667266b.30.2026.07.09.00.06.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jul 2026 00:06:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 09 Jul 2026 09:06:56 +0200
Message-Id: <DJTUMRRV8K1A.3AL1AMOF242DP@fairphone.com>
Cc: "Srinivas Kandagatla" <srini@kernel.org>, "Liam Girdwood"
 <lgirdwood@gmail.com>, "Mark Brown" <broonie@kernel.org>, "Jaroslav Kysela"
 <perex@perex.cz>, "Takashi Iwai" <tiwai@suse.com>, "Bjorn Andersson"
 <andersson@kernel.org>, "Konrad Dybcio" <konradybcio@kernel.org>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>,
 <cros-qcom-dts-watchers@chromium.org>,
 <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-sound@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>
Subject: Re: [PATCH RFC 1/2] ASoC: codecs: lpass-tx-macro: Use correct
 config for sc7280
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>, "Luca Weiss"
 <luca.weiss@fairphone.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260526-sc7280-tx-macro-v1-0-1aad6900fec0@fairphone.com>
 <20260526-sc7280-tx-macro-v1-1-1aad6900fec0@fairphone.com>
 <4rd4l5ioccdiggvlwl623qsdoy2udy5cr6sigyxrg5pbdll37g@sboebzvzlr6m>
In-Reply-To: <4rd4l5ioccdiggvlwl623qsdoy2udy5cr6sigyxrg5pbdll37g@sboebzvzlr6m>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-323349-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:srini@kernel.org,m:lgirdwood@gmail.com,m:broonie@kernel.org,m:perex@perex.cz,m:tiwai@suse.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:cros-qcom-dts-watchers@chromium.org,m:~postmarketos/upstreaming@lists.sr.ht,m:phone-devel@vger.kernel.org,m:linux-sound@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:dmitry.baryshkov@oss.qualcomm.com,m:luca.weiss@fairphone.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,perex.cz,suse.com,chromium.org,lists.sr.ht,vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[fairphone.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D06EA72D7DC

Hi Dmitry,

On Sat Jul 4, 2026 at 1:55 AM CEST, Dmitry Baryshkov wrote:
> On Tue, May 26, 2026 at 05:29:54PM +0200, Luca Weiss wrote:
>> With the v9 data, the controls will have completely wrong names and
>> using wrong code paths that do not apply to v9.4.
>>=20
>> Note, that this will change control names so it's a breaking change.
>
> Is it something that we want to keep as compatible for the old DTs? Or
> is it completely broken and unusable?

It's definitely not completely broken since a good number of devices
work (seemingly) correctly with it.

I also tried and I could make the microphone on Fairphone 5 (QCM6490,
Elite audio) work even with the "wrong" v9.0 config, by updating the
control names to the v9 names instead of the correct v9.4 names.

In the cover letter I've expanded more on this and the possible options
I see.

Regards
Luca

>
>>=20
>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>> ---
>>  sound/soc/codecs/lpass-tx-macro.c | 9 ++-------
>>  1 file changed, 2 insertions(+), 7 deletions(-)
>>=20


