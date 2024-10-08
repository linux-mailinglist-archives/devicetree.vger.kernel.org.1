Return-Path: <devicetree+bounces-109017-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 316F09949FB
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 14:29:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 638B21C249BD
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 12:29:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AD3B1B81CC;
	Tue,  8 Oct 2024 12:27:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.de header.i=markus.stockhausen@gmx.de header.b="OG00Gvxx"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3BAF4C97
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 12:27:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.17.21
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728390478; cv=none; b=TmgnpQX5crGSmuUVZb1Sk2n089jp4+zPW+A7piP9lDKFveuBL9iCWsP36hSw10zY+/4CfWXE/bHycw3M9iB4cbC6GfWFo+hzxmYfCPHRQsHbTyTv3W7iEdQN5/sdZL4cnI63oWhAJr/pMOUi9ePcn+UdnWApGmw8HNDVjxuC5AU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728390478; c=relaxed/simple;
	bh=E0wdjmnHspC2Mrn22hKj7qrpLO+zMv0egQLIivyJecc=;
	h=From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:
	 MIME-Version:Content-Type; b=BBngDq5MH82wBQv6BBVElPXjU45yfnnu3gEiNyL41RJ8qVPAomw4j5IYBexfHIhcZciCtgWdqbw1Tw7sQD0MBf9Fu4f0asJx7nLWxSWqk12zFKmS7zIorVcN7bLzLW4OMBQ0eXrOcn6JqajeMjCUud3JPiTqYNxl03tnkkNPPJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de; spf=pass smtp.mailfrom=gmx.de; dkim=pass (2048-bit key) header.d=gmx.de header.i=markus.stockhausen@gmx.de header.b=OG00Gvxx; arc=none smtp.client-ip=212.227.17.21
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1728390441; x=1728995241;
	i=markus.stockhausen@gmx.de;
	bh=1eE7bBm9hVIVa8mkUL7DOWfcwttFz7lKkwYrwCdnzMU=;
	h=X-UI-Sender-Class:From:To:Cc:References:In-Reply-To:Subject:Date:
	 Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=OG00GvxxMRfbyT52dFmFWmMiq+aLbkZQDZvxWMqCeXdC8ofze2zSzg6qoDN30OLr
	 FZld8ozgLRePfSKNG3fn5yRSt3ZD4Ul4d97anXQMq/PJW8p2oGpC98Junxftvjtsd
	 pHoRpWwFGfaknuDLCW6VxCSYNctAOzsMdQtrJZYeG47fX9xfVzhg3P8PJxNxmY4pM
	 3aUJLEChmra0WxtWuuF0NuT81/M4u+Opw6zQUqUQYI4btIwI5+g2dmd7KNJzX3kGt
	 ZUPU5Nv/92HvJRebL1XXa2B5YciA4ccBRkcjdHsANt69DU2l6UAg3II/NXhVNGN0W
	 HDM+Bl3N2UiQe0z+SQ==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from colnote55 ([94.31.70.45]) by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1N9Mtg-1u1ELt1k9M-010cpd; Tue, 08
 Oct 2024 14:27:21 +0200
From: <markus.stockhausen@gmx.de>
To: "'Rob Herring'" <robh@kernel.org>
Cc: <linux-phy@lists.infradead.org>,
	<chris.packham@alliedtelesis.co.nz>,
	<devicetree@vger.kernel.org>,
	<krzk@kernel.org>
References: <20241007163623.3274510-1-markus.stockhausen@gmx.de> <20241007163623.3274510-2-markus.stockhausen@gmx.de> <20241007193044.GA2255474-robh@kernel.org>
In-Reply-To: <20241007193044.GA2255474-robh@kernel.org>
Subject: AW: [PATCH v2 1/3] dt-bindings: phy: add realtek,otto-serdes PHY binding
Date: Tue, 8 Oct 2024 14:27:18 +0200
Message-ID: <001f01db197d$6c842e90$458c8bb0$@gmx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
X-Mailer: Microsoft Outlook 16.0
Content-Language: de
Thread-Index: AQFmt424TDky7oOEBHAYnHfWLjuWPwFdE8X8AiR5ApazSXrHYA==
X-Provags-ID: V03:K1:cR82ijsXV3rl3PO4cQlu69T5MLLvQgL62YJdCwh05i5IBTEdXE8
 jt55/NnLgptUVBzq1CWO045G8SHtoRlPRyhNCyNgGrMAhLZpPLYI4Hg0NgNBZ+5LmCWUcHP
 MBjaOW6uGDedX/6OLWcCXoGN554JwE7GYFHEJGtnEWI3w+ca7kON/bjbNtEYSRCl0LwSsCn
 0xmnnhUdF6vsSIbzegtbg==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:lxAtLcTVHek=;qLacDJsKEGTvwRF+UOXxrnQjhU6
 bAPp1a6N5q+6ptU/oWWVcVPQgBFEzRei/9r7R0O2U2ATlYJkkmhry+4sEvrUMo1Mjq2OPbfGB
 wWmmX3u+4CzjnqJfOf+4C9kSW6ihpvIa+WKmEGe7psEcU8LVzKC/mGdZiC36CTZXhGJ9LFvK/
 6fFJUl4qLQ+StP4Cp4kRsF9r5OM/BxCKkTeHSdYmKkteNtPwOZ9b+JPPb+OuNutOaRc7VZ8nX
 E2a61ptgKh/OqtlaTzfbxiqPomdNbdIon+OSvuggnu6xbj4eaP7oq2jwnzeLWPDA+2YFTA1tL
 JExgD1r6JOMWEY0bkLPIudP8k+NfYnKc2hnb7V1auOB6AxnD8ydytM9S3kGIUDHw4UuFUjeCU
 1nSUxmQ1TUdfG57xlaZmBtbz3tvFf5PkYV5/EwCE+fJi3NLJ4GKR/5Q/I8dakIoWL6trDQoN1
 JX3XiS3BXcQm0+PSH94/UYuOhAadDmepsXstZXwRvF2062A6AJ+0ySlIntMA0wFzdndEpES4V
 KdqxgXK0Y4Ik5WSVWhiPYxyTPu0X1j3j/+CLTvvlgWiPizr+eRuiDHH+3A3gP0DdRkUmjNjgF
 C/YmC9FoLhIYrIq2HzqUjVsidIV6OHLPxiLdnIFaCiaC2fXHTYgDNEP7msbt0OdTlEYMt8faQ
 CezkQSNGZE5jIFNTS/A78ZAfR10CwTbtL6yRvR687dsMrOq88HC+Y6si3SpvOUVVp/i2mZtjZ
 rmahNJhu6Izw1PTF54qaltKPy9+mgwsFauHKFmBGY9HECaDSt9wodMKIKBZfXD4jC8rhuov/m
 fWjnLBrUNBst/JLTHyptrSDw==

> -----Urspr=FCngliche Nachricht-----
> Von: Rob Herring <robh@kernel.org>=20
> Gesendet: Montag, 7. Oktober 2024 21:31
> An: Markus Stockhausen <markus.stockhausen@gmx.de>
> Cc: linux-phy@lists.infradead.org; chris.packham@alliedtelesis.co.nz;
devicetree@vger.kernel.org; krzk@kernel.org
> Betreff: Re: [PATCH v2 1/3] dt-bindings: phy: add realtek,otto-serdes =
PHY
binding
> ...
> > +
> > +properties:
> > +  $nodename:
> > +    pattern: "^serdes@[0-9a-f]+$"
>
> The node name for phy providers is 'phy'.

Hi Rob,

I found different configs in other files. E.g.

- torrent-phy@f0fb500000
- serdes: serdes@e2004010
- serdes_phy: phy@8901000

Do I understand correctly that I should go with "serdes: phy@1b00e780"?=20
If yes, adapt the $nodename pattern accordingly or drop it as in most =
other
files?

Best regards.

Markus


