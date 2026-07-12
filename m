Return-Path: <devicetree+bounces-325110-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OyDwJFLWU2rWfQMAu9opvQ
	(envelope-from <devicetree+bounces-325110-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 20:00:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B1AD745947
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 20:00:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=WNosKTFr;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325110-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-325110-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 917CB30010F3
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 18:00:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F5F8367B99;
	Sun, 12 Jul 2026 18:00:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F41277E0E4
	for <devicetree@vger.kernel.org>; Sun, 12 Jul 2026 18:00:45 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783879248; cv=pass; b=IFLWuX4aRfo0hZxS9upGSxaJQjs7vjPmM9IvyE84/Zn4OSEaV2Gjo/nClKuEIba0LmN3BfJXZf6Hg3WOufaFoZJVCjeYFZw2hO2pe0bLTxggPDauO+H8Pm2JJDWgR5n6B+IPtC8z+RlxUedg+lHS8ptiX4Ab6m6Dl7Y6tFXonWQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783879248; c=relaxed/simple;
	bh=64xLY2yQUaGJsa1753ObGwn1onn6TZ4165+4pNFJH7Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sMcSmu5vYlSysdarB9sH50JK84GKzDLJI0a45bUO9rY/ftDajulhp4Owy7LkrVd3mBscOwwDAJ0SocynxWoeh5YW71WUR1voXzE+dpkVip+GBaketTfg7wy9lT2dTHlVM78phps2p+F8vnKpUT5H2C8tOB76oTi3e2hYSpUNVWk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WNosKTFr; arc=pass smtp.client-ip=209.85.210.173
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-8485b358552so2587990b3a.2
        for <devicetree@vger.kernel.org>; Sun, 12 Jul 2026 11:00:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783879245; cv=none;
        d=google.com; s=arc-20260327;
        b=dKXWSznToLbfb+jlnm4M15SnyeEuzOKRfWymyTpWC28hB1zzqf0ezg8y3wWIR0pzLO
         ZulO6ncnNJBc0Bg6cGN4PxBshvnbApmXR3sCiuJFUpnootZwOBoNc1hF1pBrR5SVkuOC
         iOJnyjElemAt7ZoV7NIpr/fll9nov278o6f8G7eH5JobGGyqj5fj09B/3zkvWV1jXeRf
         086BFiDRiu5cy+qq+8Mm6Y5icYZZ7FD2Deq8H5aXMswkxjBd6fuM1CUtQZZTVCRzt+6o
         W4oZVYR9JkFPEX59ed1XwzaxxvZAu0hOv5lWGto+sbiCNgUq1/ezyaketpvTT3SMJEF6
         6LNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hOtx5Uo4a/i9Sp4XrnBY2y5AeFcy0ZPNgohX4nU/9DQ=;
        fh=QbwowHmFtXP3H9+Wxp9dVJaFdbFNOOZqxqLc/c5f+6o=;
        b=cWrAoFP0+Z5RiRsT15MQ3VXY9wcxZlcDQ+2X9wASIsnovZhTdzTkm1MLB3nLM3lh04
         iAvHXXTm2mVIiHeJGJF++AHLn6hEkrfROMi61TnyE/LzAQh0VLrqWnT24KXiu/otI/oI
         zkrXfL8gOI6s29ZvHJO8OXMtUvAVWnk5Fg7AmIoieTk9xonHb5/nvCQt35DGcrrbAgJj
         NTHPev3IGVuapsYC93BdASgMGRpLEeT+ePeklTd+wJEACvFncVVCtlfq8dGVsQCj0/Ao
         7qbQieBb7kArR7PQOCbbP8198fXwaLwubCpa7IMwj7140oWLB1e2UBf9atffZzGoHnpH
         0VEg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783879245; x=1784484045; darn=vger.kernel.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=hOtx5Uo4a/i9Sp4XrnBY2y5AeFcy0ZPNgohX4nU/9DQ=;
        b=WNosKTFr76Vy2EG6b6w2epORXd0104Rt2eqe3vbLEUA9rLQmWM9K+LoANc/k57Bj3n
         qbsQVnqNBbeX2ofjLfmGtQWynkIa3vTy0Lr3KP8MqKNdJjjRHV/4pfwvd8DjBMoSAtNE
         WWUN1JieqFFJ67uZ49X779uUrocQCZwNtJvBpJky4Tsj9jKJj+C0eDKeeYJShzSMDYbw
         5TAvlw/HWb++K296IlKeFtcog63I1N44p8ZmN4N0ukMNRJDTcyqjC2LpDYfIDU0tGJVZ
         KaKiQauomYDpX1STAHu2SdLqkt0rqUpIGhaKGrZEyuJ9tkKgt4due5Gh3tWatscoDF2C
         T5AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783879245; x=1784484045;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=hOtx5Uo4a/i9Sp4XrnBY2y5AeFcy0ZPNgohX4nU/9DQ=;
        b=iGQAfYv92qV4X7mHfYEWMJrBXHK7affrJ9MCr7DAvQnzllaPzoseIpwiptjT7XT4NT
         WlpdKr/6zX20ZXeiMfYcmNFg3oUNhSTYdGNdw6VoGW8rOuzNBYuvGueXE2jLeTuPj/pC
         0M2grNLYdga4k64UPM0Bs//TWpUeWo71gkVyl0ev/KeydOowXziBziFikIx0rzseku6x
         ZtPFNkdkPDGwzBA4f5x5yQngzFD5O/lQ2JmyGt4IUYGTdt+kWhfuwPLkhGNoD/KVtnU2
         aGj07pKrJ9tS6v4sek1ebG18L6FLNFNFaQVPAmQeYLu6R1XWTQXH3397wNMWzL/LN8Bk
         2nUA==
X-Forwarded-Encrypted: i=1; AHgh+RqF3M4CixNi0Uh7QuxXxSbnFZWs99eAQWlt2hzdL2eWw0gOGfZx5WCU0lI3fYoO2LKrxOk6ZpX9gIOi@vger.kernel.org
X-Gm-Message-State: AOJu0Yxm2vyF8MZzk+j+Tl2rZO2wOklw6vSvEICJtd1HHWTn8GhJ3NMX
	VY/HpuhADNYmjSKoUEd4fqSwBwemQNBn7d6hBh4IOAU7uSX2wRC/UN9HmmZpu6AOG2IHZIPyXCW
	RGxGuZBz41315j4QYk7RsvC+khFKCiBU=
X-Gm-Gg: AfdE7ck4aZNYrHGt6JWQRwNncvLCB7pC1snLY+0B04V2/bCoP1bzTZiaaHcbXkeEXcQ
	mlxE/OQTnIDNkePqS31UxZLOZ3WtdjVJl8XAO1yMasoUmo7FfPlcdKusIcclxocCo1j9L58lE1A
	rMnb97nfzZ/E8lHndtVFYiC1lNWCpwlj2RoO+wuhdCw53MN0hxfTEYwzcRah9Q/yjJ6tdeXBj9Y
	CKZDg+yH9SaVKnYG8q9LWbWe9LhSX7J8Pj4pqjlxkRRduVv4OY1mQG2Sh9YbbnDio9WxMNWNeuf
	h5//c4buO4WuqtvnEgnGqQYhj7JC4mjkJANTQQ7GWImuPRKmLQPS6Vi59m0AEsbIM14jxcP/sPa
	EoI5mjG3FCQ==
X-Received: by 2002:a05:6a00:4188:b0:848:2f84:72e with SMTP id
 d2e1a72fcca58-848898b9d90mr5651239b3a.65.1783879244916; Sun, 12 Jul 2026
 11:00:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260711-nanopi-m6-v2-0-422675a65402@gmail.com> <ce54c773-22cf-43d2-b831-1ea5355359ca@kwiboo.se>
In-Reply-To: <ce54c773-22cf-43d2-b831-1ea5355359ca@kwiboo.se>
From: Joachim Eastwood <joachim.eastwood@gmail.com>
Date: Sun, 12 Jul 2026 20:00:33 +0200
X-Gm-Features: AVVi8Cd8NGiWyQj59k9G_t9WcUTCbNW8tUsN3M5fDY7JrN-hw3Tixg2ATvZSB5M
Message-ID: <CAPSPb=vyKK3ngm+d+nN7KM20ZyA10Hg5cb8EarRF6SE4hLOWFg@mail.gmail.com>
Subject: Re: [PATCH v2 00/12] arm64: dts: rockchip: Add NanoPi M6 board
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	diederik@cknow-tech.com, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-325110-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:jonas@kwiboo.se,m:heiko@sntech.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:diederik@cknow-tech.com,m:krzysztof.kozlowski@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[joachimeastwood@gmail.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joachimeastwood@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[10];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,kwiboo.se:email,mail.gmail.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2B1AD745947

Hi Jonas,

On Sat, 11 Jul 2026 at 01:36, Jonas Karlman <jonas@kwiboo.se> wrote:
>
> Hi Joachim,
>
> On 7/11/2026 12:11 AM, Joachim Eastwood via B4 Relay wrote:
> > This patch series add support for the NanoPi M6. This board is very
> > similar to the NanoPi R6C and R6S boards which are already supported.
> >
> > Main differences:
> > * M.2 M-key slot with PCIe (Also present on R6C)
> > * M.2 E-key slot with PCIe and USB (from hub)
> > * 1 additional USB 2.0 port from an on-board USB hub
> > * RT5616 audio CODEC
> >
> > Patch 2 and 3 moves a bit code around. Please let me know if those two
> > should be squashed together.
> > Next few patches adds some missing bits the common nanopi dtsi file.
> > While the final patch adds support for NanoPi M6. Support for M6 has
> > been split into two files one dtsi and one dts file. This is to make
> > it easier to add support to the new M6V2 board at a later stage.
>
> In my personal opinion I think it would make more sense to sort
> patches in following order:
> - adding/fixing missing bits to the common nanopi-r6 dtsi
> - extract M6/R6 common parts from nanopi-r6 dtsi to nanopi dtsi,
>   nanopi-r6 dtsi includes the nanopi dtsi and no changes to dts files
> - final parts that adds the M6 board
>
> Should probably make it a little bit easier to cherry-pick and bisect.

If the additions/missing bits needs to backported I agree.
I'll cook up a patch set with the order you suggest. Thanks for the feedback.


best regards,
Joachim Eastwood

