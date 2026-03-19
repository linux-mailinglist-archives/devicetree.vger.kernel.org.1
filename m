Return-Path: <devicetree+bounces-277800-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0MjDKjkBvGmurAIAu9opvQ
	(envelope-from <devicetree+bounces-277800-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 14:59:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 43ED22CC4E6
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 14:59:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AE0A63009FAF
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:50:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A9B2259CA9;
	Thu, 19 Mar 2026 13:50:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b="gmq0jwAt"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FFFC2D3A60
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 13:50:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=185.125.188.123
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773928254; cv=pass; b=l1Tn0bjk05x94SVPOR7RNUlPierqlHuooYyzeTkNvo3sS0/7xeBOW2TtDlNOcfU4Hoa18lEITcFSFTxCCLtVPZRx/EzczRW/hIkuld01k1vXx2zlLP353s42yrtgnvjuOuzrNYzJ8BMoqQBOJhsgKxB0H93rkc1C+nLNhKy7Mj8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773928254; c=relaxed/simple;
	bh=wNe3zTjWXKubLpElCH4k7FK3v+Z2gPor4/nONBZYQbU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EzWQizm8DhtyCXjLZjEKDTz83BhuKZ/tmq6SS9N4dhZE2RbPWcYdRF8Lw+44hF6v8QekLnZBUj8bCMLAgzBAWDVrXpXuITwX9bHIUtYXnDd1rF2n2SamTmD8Nww7l7pFLyM8SbKlFc/5cvS4/isQYXA2kO73XMEU19Kzbet5frE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b=gmq0jwAt; arc=pass smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com [209.85.218.70])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id BF91C3F98A
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 13:50:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20251003; t=1773928250;
	bh=L/j+PNZ0FI8K56+I6MmSwOePj2ibMpgOJ+algsLEe2o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=gmq0jwAt/mcKk1TTVsJ31xwI3GStLHOX6XKM1NhCw3fbXD7RUCY7ktp7anEym3YHS
	 afH0F3SIziUJaMFfA9N/7LByM8W3L4es0f0ft6HAIQMZEOikTrTEiE/TKruaCrItwL
	 bKQFTv+HhJCKQdjKhbAuXzTj880E6drtgHTXPVlPsFUgYEd2hprJkufXqoSPaqU20K
	 wQiz/kAhMoaO0AaGAWcwSe7q1AEOg2Z7FQCJsEazf0EZvptc51HhAnO4d9y7NBP38Y
	 3U6SEQD9B0Ww7x10DtW5HXUsqhC/Gnh22ZqR67/LdVcE+41c3XTItwUpgjfZJnAPZq
	 FEK1oj3YW0qsTVl4ozNLQgiTJl22L84nETSzSODi1xrkUgUCp/nEIl4U+Jxzh5dQTv
	 vcZJSzUL7RJes8xDaHnauwYrM11sR3zxv+ieCyseXw93nhmJBi2zdP4LJUgWpFkbiv
	 XDF/zuGWzBmr3h3U3JJJUjohiCL1sofw7Ea7ei/BarKUVSaNZAhtaya0y9Hdyb6bG4
	 Pr1XhaAnfhaC/vIGbxhgKeAI7AjJwBbDuJx2zzWvtmOW0d+Zag3PJ2D0zuH64bo9wu
	 0aPjTg5l3JXPTBI0xWiCfTUqGPjRSh4VAVN8RKWz4fauV6GAB0wuM3nIQBVQ863qkI
	 fS5R7g6cE5IbqWl+FXfRlkzs=
Received: by mail-ej1-f70.google.com with SMTP id a640c23a62f3a-b9360e9f43bso114755466b.3
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 06:50:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773928250; cv=none;
        d=google.com; s=arc-20240605;
        b=eo/lrUIKivc6Ad8mLxtujEUeIlOkzt4LRgqf6fjsErUMjdOz/HS9AupApOHm5yvOeE
         Dv5pVwCy+pGtV6VJXLv1pK585f/pG5ssk18WD9oYYNGScWNvZJ6WPsjKGl8/6g+9VBHb
         UHUS67TGnIzg6IYYvFkxGP8uH2NS9WuAZKloHVZ8Zv5u9u6nlxoYBMv9a2YJ8fUklLis
         KPGRC7KCUvYNhYHQ2AwYY2QNeyb/isv/aF5rOhTdhRnElMgwbRWwRJMJ8Dx5c+2CxoMq
         JbNiQdHK6isdm+s2zzFcpQoGN0W61qmd2+03VyXAQTd9LbeaRgLf5a52xr/V+ytgm+jm
         LNJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version;
        bh=L/j+PNZ0FI8K56+I6MmSwOePj2ibMpgOJ+algsLEe2o=;
        fh=3zXrS5oWEHW+5C+Y8qnY++mGxtihk1JqXfBqQ0PRlVU=;
        b=QXEuu1TLQFwnMqCkhIU5QNCo8iPu4djd+N+ktcfgdLTdJEX1Aq5ZhvlHJCc4WVeNzS
         lu3z/3HaSXz61C6QRcQvQzX2SOUVreR3sTWbulgsMyldI8q0kvcmKOx/d20SBY/0DY/F
         kYprwsZcRUU0NDbdNbXXpxvI5Bs0q9XIAeXGTBVoB2sFdzgFduRQtwFm4tF5Uz/KGWnW
         rMcp0zfl5VF5tut85v+IKOyQ6uIpRWnBdgP1UFmef7n2Acm+XSRG7rRUtLchutWO11aj
         u9wwsisOezS50A7/9vX+purI4dPL9pfzHbuIJ7qek8mVlDjcXOWsqZkSMmEJyI14JgDO
         DcEA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773928250; x=1774533050;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=L/j+PNZ0FI8K56+I6MmSwOePj2ibMpgOJ+algsLEe2o=;
        b=o6VVMyiQsovcjTLtera6MHEmfl8HeUP4+LV1bMXqlICcj+cgllx671VD8YnFPyppQX
         2rHdJcTIdXPukPVhqUyXY5YYL0lh5fbYYw4kHmQykOYlyLR3q0WBYdOKX+hhlyAo5ZFy
         TusyW1xsM5nIfFFObf6XIbGZa6DLnaTFq31lNnZYMjwY5HR1FLAx8PmYTUR4assgpbzp
         CaUX01az4chgbO9b9IeWGgjfoabZ+55IONSLiK0l+hiYtN2Yci5OSHPel1cFqRoaFVAE
         6gZAnAXQ/KGC5rn9MJiBf4iiZNosqDuFwhu3p7Cv8wNypwbAaZ43dBl7QIAjrF2wNyie
         yWRQ==
X-Forwarded-Encrypted: i=1; AJvYcCXQ/a0v3Eveql804ZuFnVFEOWjNWzL4K+2shCRK6IYVq2fs48RkIBYXk2qAbYbgE59ct/0JSGYRxrJ5@vger.kernel.org
X-Gm-Message-State: AOJu0YwtH8tUus1/Z3aYOfSpaVEd7khZZ6+wu0xEoblN/myAT1fBLfcj
	+uT9h6BqvK1BQ491hxJrghJ81rEzAkOoQdNujZOjOzdWehkyjQaJi94vhWR+7iuT+MqReRctR2/
	Ve/JDyTa/zqiV4fyrU8ooutHAG4bvw7SLSl9M97YRpYC/PKzsXfnv/ZxRiQ4Kazs2Dt6zBAtNfD
	IV+Wz20bEIVu0dClZ5FB/hCSGXftMiIPX+fuUMh9x5fKihL/R9Qk6Ygw==
X-Gm-Gg: ATEYQzwgDa+2UqBFpfc5ccx7tq6AjBYJit9hfqanxoIUhSn15Jw5eaQoYZNwMDHnB0g
	bm/AA6ie2uJpwDqziXG/kdENWCIg5cxDU/Q/botiSqNGmoXW3zbvxa4ed7oroHzd9zO5zgG1qYY
	lDynyZi38cW18bkg4KuUBxPSUeKXrgYA4DlhOMgAuAhBz3jA1I8GpvemA7EhVm/3uohOJg55yaX
	wxtPz5aDEAqhW9qeOX6WDVP1hMAS8r9zNB3BsM=
X-Received: by 2002:a17:906:1d01:b0:b97:6a2a:405b with SMTP id a640c23a62f3a-b97f498e062mr420852066b.37.1773928250212;
        Thu, 19 Mar 2026 06:50:50 -0700 (PDT)
X-Received: by 2002:a17:906:1d01:b0:b97:6a2a:405b with SMTP id
 a640c23a62f3a-b97f498e062mr420848366b.37.1773928249601; Thu, 19 Mar 2026
 06:50:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260313094618.1361418-1-ziyue.zhang@oss.qualcomm.com>
 <20260313164542.GA1405513@bhelgaas> <en5a7jrgpbn4bsmw5qwprugb2qmjkqw2x5eey6jxxu63634duz@b43rhcsqkj3o>
 <abdviJbrluDn2Vrx@baldur> <kqpgjzcxnazjohiop27exget6qrv37wn3csmixt5nmc6d5dkbg@n7qjo6flaabn>
 <abtgaXSv-zRysJqO@baldur> <4byysnjodmlphwcevw5gb2asxbwwwlf526mtpwpkfi6crjxoqb@vyuktezfu2wu>
In-Reply-To: <4byysnjodmlphwcevw5gb2asxbwwwlf526mtpwpkfi6crjxoqb@vyuktezfu2wu>
From: Tobias Heider <tobias.heider@canonical.com>
Date: Thu, 19 Mar 2026 14:50:37 +0100
X-Gm-Features: AaiRm53OOBmjYF3wt3fYYuOja2T2t90m9EZO7Pd32ZcMTQGM6FDTvHdOzk-54EU
Message-ID: <CAARv3RSag8n0=ut9KGm0yALRPVTiyQ+bBBbT+3Vf1sNOCBLbGA@mail.gmail.com>
Subject: Re: [PATCH v1 1/1] arm64: dts: qcom: hamoa: Move PCIe PERST and Wake
 GPIOs to port nodes
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Bjorn Helgaas <helgaas@kernel.org>, 
	Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com, 
	lpieralisi@kernel.org, kwilczynski@kernel.org, bhelgaas@google.com, 
	johan+linaro@kernel.org, vkoul@kernel.org, kishon@kernel.org, 
	neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
	linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com, 
	quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [4.34 / 15.00];
	RECEIVED_BLOCKLISTDE(3.00)[209.85.218.70:received];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-277800-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_ALLOW(0.00)[canonical.com:s=20251003];
	GREYLIST(0.00)[pass,body];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,oss.qualcomm.com,gmail.com,google.com,linaro.org,linux.com,vger.kernel.org,lists.infradead.org,quicinc.com];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	DMARC_POLICY_ALLOW(0.00)[canonical.com,reject];
	DKIM_TRACE(0.00)[canonical.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tobias.heider@canonical.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	R_SPF_ALLOW(0.00)[+ip6:2600:3c0a:e001:db::/64];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=2];
	NEURAL_SPAM(0.00)[0.978];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,canonical.com:dkim]
X-Rspamd-Queue-Id: 43ED22CC4E6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Resending because the previous mail ended up being HTML (sorry)

On Thu, Mar 19, 2026 at 6:39=E2=80=AFAM Manivannan Sadhasivam <mani@kernel.=
org> wrote:
>
> On Wed, Mar 18, 2026 at 09:42:56PM -0500, Bjorn Andersson wrote:
> > On Mon, Mar 16, 2026 at 08:50:12AM +0530, Manivannan Sadhasivam wrote:
> > > On Sun, Mar 15, 2026 at 09:53:33PM -0500, Bjorn Andersson wrote:
> > > > On Sat, Mar 14, 2026 at 07:50:50PM +0530, Manivannan Sadhasivam wro=
te:
> > > > > On Fri, Mar 13, 2026 at 11:45:42AM -0500, Bjorn Helgaas wrote:
> > > > > > On Fri, Mar 13, 2026 at 05:46:18PM +0800, Ziyue Zhang wrote:
> > > > > > > Commit 960609b22be5 ("arm64: dts: qcom: hamoa: Move PHY, PERS=
T, and Wake
> > > > > > > GPIOs to PCIe port nodes and add port Nodes for all PCIe port=
s") did not
> > > > > > > convert all Hamoa=E2=80=91based platforms to the new method o=
f defining PERST and
> > > > > > > Wake GPIOs in the PCIe root port nodes.
> > > > > > >
> > > > > > > Without the change PCIe probe will fail. The probe failure ha=
ppens because
> > > > > > > the PHY stays in the controller node while the PERST/Wake GPI=
Os were moved
> > > > > > > to the port nodes.
> > > > > > >
> > > > > > > This fixes probe failures seen on the following platforms:
> > > > > > >  - x1-hp-omnibook-x14
> > > > > > >  - x1-microsoft-denali
> > > > > > >  - x1e80100-lenovo-yoga-slim7x
> > > > > > >  - x1e80100-medion-sprchrgd-14-s1
> > > > > > >  - x1p42100-lenovo-thinkbook-16
> > > > > > >  - x1-asus-zenbook-a14
> > > > > > >  - x1-crd
> > > > > > >  - x1-dell-thena
> > > > > > >
> > > > > > > Fixes: 960609b22be5 ("arm64: dts: qcom: hamoa: Move PHY, PERS=
T, and Wake GPIOs to PCIe port nodes and add port Nodes for all PCIe ports"=
)
> > > > > >
> > > > > > Are you saying that DTs in the field broke because of some kern=
el
> > > > > > change?  That's not supposed to happen.  Even though PHY, PERST=
, and
> > > > > > Wake GPIOs should be described in Root Port nodes instead of th=
e Root
> > > > > > Complex node in *future* DTs, the kernel is still supposed to a=
ccept
> > > > > > the old style with them described in the Root Complex node.
> > > > > >
> > > > >
> > > > > This is not related to the driver change. The driver correctly pa=
rses all Root
> > > > > Port properties either in the Root Complex node (old binding) or =
Root Port node
> > > > > (new binding). But commit 960609b22be5, left converting mentioned=
 board DTS to
> > > > > the new binding, leaving those affected platforms in a half baked=
 state i.e.,
> > > > > some properties in RC node and some in Root Port node. Driver can=
not parse such
> > > > > combinations, so it fails correctly so.
> > > > >
> > > >
> > > > Are you saying that above listed machines has broken PCIe support i=
n
> > > > v7.0-rc?
> > > >
> > >
> > > I haven't verified it, but I'm pretty sure PCIe is broken on these pl=
atforms.
> > >
> >
> > In line with Bjorn's request, we shouldn't have to guess.
> >
> > > > It seems this is a (partial) revert of 960609b22be5, is this actual=
ly
> > > > fixing that change, or is it only applicable once some other change=
s are
> > > > applied?
> > > >
> > >
> > > This change is fixing the issue in the respective board DTS and is a =
standalone
> > > fix on top of v7.0-rc1.
> > >
> >
> > So 960609b22be5 was broken when I merged it?
> >
>
> Broken on the machines mentioned in the commit message, not for all Hamoa
> platforms.
>
> > The commit message says that the commit was incomplete, in that it
> > didn't fully convert from the old to the new style, so it sounds like
> > the offending commit was incomplete - but I believe the offending commi=
t
> > was a workaround for the new solution not being in place and this commi=
t
> > mostly reverts the changes in the offending commit.
> >
>
> So 960609b22be5 was supposed to move all the platforms from old PCIe bind=
ing to
> new for greater good, but it apparently decided to do so only for a subse=
t of
> the platforms for some reason which  don't know. But the problem arises d=
ue to
> 960609b22be5 changing the hamoa.dtsi to the new binding which also warran=
ts the
> platform DTS to also be changed to the new binding. If we only have eithe=
r dtsi
> or dts converted and not both to the new binding, the driver will get con=
fused
> and fail. And this is what exactly happended for below machines:
>
>  - x1-hp-omnibook-x14
>  - x1-microsoft-denali
>  - x1e80100-lenovo-yoga-slim7x
>  - x1e80100-medion-sprchrgd-14-s1
>  - x1p42100-lenovo-thinkbook-16
>  - x1-asus-zenbook-a14
>  - x1-crd
>  - x1-dell-thena

I can confirm the breakage for (some of) the listed devices on Ubuntu.
We are experimenting with 7.0-rcs ahead of our 26.04 release.

I'll try to collect some test feedback for the fix.
I'd certainly appreciate this being included as an rc fix since
currently half of
the x1 laptop devices are broken.

>
> > In other words, it's not clear to me, from the commit message, why this
> > change is a -rc fix. Perhaps the author of the offending commit tricked
> > me to merge that one, and that's what's being fixed?
> >
>
> I wouldn't say that the author has tricked, but he was unaware of the fac=
t that
> changing SoC dtsi warrants change in all platforms, not a subset. I wante=
d to
> catch these kind of issues with DT binding validation, so I sent out a se=
ries
> earlier [1], but it got stuck. I'll push it forward.
>
> [1] https://lore.kernel.org/linux-pci/20251106-pci-binding-v2-0-bebe9345f=
c4b@oss.qualcomm.com
>
> > Also, is the lack of Tested-by telling us that nobody has tested any of
> > the v7.0-rc on the 8 listed Hamoa devices?
> >
>
> Exactly. Otherwise, they would've seen the failure so obviously.
>
> >
> >
> > If it's actually needed, can we please have the commit message improved
> > so that we can merge it into -rc?
> >
>
> Sure. I'll work with Ziyue to reword it properly.
>
> - Mani
>
> --
> =E0=AE=AE=E0=AE=A3=E0=AE=BF=E0=AE=B5=E0=AE=A3=E0=AF=8D=E0=AE=A3=E0=AE=A9=
=E0=AF=8D =E0=AE=9A=E0=AE=A4=E0=AE=BE=E0=AE=9A=E0=AE=BF=E0=AE=B5=E0=AE=AE=
=E0=AF=8D
>

