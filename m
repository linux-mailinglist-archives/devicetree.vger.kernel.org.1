Return-Path: <devicetree+bounces-315428-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hubYDt17PGpVoggAu9opvQ
	(envelope-from <devicetree+bounces-315428-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 02:52:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 852DA6C209F
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 02:52:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lontium.com header.s=default header.b=gGd6GMTV;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315428-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315428-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 34D2F303CF92
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 00:52:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65D0E3655D9;
	Thu, 25 Jun 2026 00:52:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out198-10.us.a.mail.aliyun.com (out198-10.us.a.mail.aliyun.com [47.90.198.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A236778F26
	for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 00:52:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782348762; cv=none; b=uHmwFhy8JXAkDICQX3WQu6fNUYJ0+laAOGQnylMEcreIzcEGBwt2wf+5+SXfEfNDp5nkgLYZ8Q0pY3/ga1dUSfFRbk88vI5Y55TNAm1HU88M0hPkR76qP52CFPlOdVIthwwDi9A7fbCn7pSgb1/nd/DgVyFJu1U5HXhyz3sxq9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782348762; c=relaxed/simple;
	bh=iHInnlsicP1XnaaxQZu4XOxYgdOxE5qlx5UG1P98G9E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NhgdXicRbyrUa0qlKOTPkrAtLlQe1f0651zcrC89KpHmy2VIhSjy+QebNnfamXctYuZYxPfnBsuqOb1IWwnakgE+Ar/6y56BCqmQpFsoNhPBoTpBWdkrnu62/NgwEvOVT82F3/CCtUO/jQ/uqkFwsDeIFH7dDZZ8CqIlmLLiWFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=lontium.com; spf=pass smtp.mailfrom=lontium.com; dkim=pass (2048-bit key) header.d=lontium.com header.i=@lontium.com header.b=gGd6GMTV; arc=none smtp.client-ip=47.90.198.10
DKIM-Signature:v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=lontium.com; s=default;
	t=1782348742; h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type;
	bh=TZqNTnIu549tTIomgYazqeUAShfsBdkEd7y+/MMJhI0=;
	b=gGd6GMTVQWxHjF50+cI8iBdLimajYxzsYFSalby/eDe5CL9ljLNkODrc+tzoOIBPD+cjVjQruYOKv9OtZPN7JF37eDmh7okDnCZ4yDYwrWCduXzGJyaNshx2spcegkzpHa9ejeJxg+4gqNF8QcZjUG+pAvR7uFxi8C5H32vuVs0jP9hcCqUP8tTgCvpbwbgqD7QJNHv3+UEDAhekrGtbDD5KXamSvS9FRsHt1wIEO25ZhLkkO5uIG1idnzByx1wVpA9zPMZNY5kOjiJ8xsXwD3xvs7+nAvyWC3r7yWR419EdDDuNg1SuBT0pwPpJLAIAIVTCKkEcCz9Oo5W4zDWYUQ==
X-Alimail-AntiSpam:AC=CONTINUE;BC=0.255127|-1;CH=green;DM=|CONTINUE|false|;DS=CONTINUE|ham_regular_dialog|0.0610697-0.0193207-0.91961;FP=13348953743449387992|12|1|9|0|-1|-1|-1;HT=maildocker-contentspam033037071049;MF=syyang@lontium.com;NM=1;PH=DS;RN=1;RT=1;SR=0;TI=SMTPD_---.i4nhy7Y_1782348739;
Received: from mail-ot1-f47.google.com(mailfrom:syyang@lontium.com fp:SMTPD_---.i4nhy7Y_1782348739 cluster:ay29)
          by smtp.aliyun-inc.com;
          Thu, 25 Jun 2026 08:52:20 +0800
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-7e6da33a561so1041911a34.3
        for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 17:52:20 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ98GlplNuzVacGAksL64U693mNRdsFjPOrdZcH/Udq7GdrHj+9P0skWvn3BRgLilK9BpfEEPZkwbK6z@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/+6s7Cf8WSvgU9g1RJ/nRYSYfWc3D1HwF3HM1eVv8ZuIU5LVQ
	XBFeY/E3pDx5q1bH2/ff+WT1D5gqSaLHww7pu5mVpaii/0fuyfzH/PzmuHPDC0UBHCA3XhIX3CC
	BPDPnrNqh5KsEHcRa73mbOnfPq4RzHfw=
X-Received: by 2002:a05:6808:c3cb:b0:48a:a718:1f56 with SMTP id
 5614622812f47-4921595161cmr484323b6e.9.1782348738618; Wed, 24 Jun 2026
 17:52:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260508142500.4922-1-syyang@lontium.com> <CAFQXuNYq5QYAXRzcUBnyvVh5ofPBVYONCs1dM6qPgK0BDja5Ow@mail.gmail.com>
 <495f0dc3-b5ee-429e-bc60-78b13bcb42c3@kernel.org>
In-Reply-To: <495f0dc3-b5ee-429e-bc60-78b13bcb42c3@kernel.org>
From: Sunyun Yang <syyang@lontium.com>
Date: Thu, 25 Jun 2026 08:52:05 +0800
X-Gmail-Original-Message-ID: <CAFQXuNajWT31q1MccwTDa074_7=6tfaz-FOmP-tx_q83R60QfQ@mail.gmail.com>
X-Gm-Features: AVVi8CfE-A5p_Q7IR6jyWv_M8aKD8qGz_1Y5TCkwp3XWzUgtW9ua0QWOzc8_JDM
Message-ID: <CAFQXuNajWT31q1MccwTDa074_7=6tfaz-FOmP-tx_q83R60QfQ@mail.gmail.com>
Subject: Re: [PATCH v6 1/2] dt-bindings: bridge: Add Lontium LT9611C(EX/UXD)
 MIPI DSI to HDMI driver
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	andrzej.hajda@intel.com, neil.armstrong@linaro.org, 
	dmitry.baryshkov@oss.qualcomm.com, maarten.lankhorst@linux.intel.com, 
	rfoss@kernel.org, mripard@kernel.org, Laurent.pinchart@ideasonboard.com, 
	tzimmermann@suse.de, jonas@kwiboo.se, jernej.skrabec@gmail.com, 
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, xmzhu@lontium.corp-partner.google.com, 
	xmzhu@lontium.com, rlyu@lontium.com, xbpeng@lontium.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[lontium.com:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-315428-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:dmitry.baryshkov@oss.qualcomm.com,m:maarten.lankhorst@linux.intel.com,m:rfoss@kernel.org,m:mripard@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:tzimmermann@suse.de,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:devicetree@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:xmzhu@lontium.corp-partner.google.com,m:xmzhu@lontium.com,m:rlyu@lontium.com,m:xbpeng@lontium.com,m:conor@kernel.org,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[syyang@lontium.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[21];
	DMARC_NA(0.00)[lontium.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,intel.com,linaro.org,oss.qualcomm.com,linux.intel.com,ideasonboard.com,suse.de,kwiboo.se,gmail.com,vger.kernel.org,lists.freedesktop.org,lontium.corp-partner.google.com,lontium.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[syyang@lontium.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[lontium.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,devicetree.org:url,vger.kernel.org:from_smtp,lontium.com:dkim,lontium.com:email,lontium.com:from_mime,mail.gmail.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 852DA6C209F

Krzysztof Kozlowski <krzk@kernel.org> =E4=BA=8E2026=E5=B9=B46=E6=9C=8824=E6=
=97=A5=E5=91=A8=E4=B8=89 22:05=E5=86=99=E9=81=93=EF=BC=9A
>
> On 11/05/2026 05:28, Sunyun Yang wrote:
> > <syyang@lontium.com> =E4=BA=8E2026=E5=B9=B45=E6=9C=888=E6=97=A5=E5=91=
=A8=E4=BA=94 22:25=E5=86=99=E9=81=93=EF=BC=9A
> >>
> >> From: Sunyun Yang <syyang@lontium.com>
> >>
> >> LT9611C(EX/UXD) is an I2C-controlled chip that Receiver signal/dual po=
rt
> >> mipi dsi and output hdmi, differences in hardware features:
> >> - LT9611C: supports 1-port mipi dsi to hdmi 1.4
> >> - LT9611EX: supports 2-port mipi dsi to hdmi 1.4
> >> - LT9611UXD: supports 2-port mipi dsi to hdmi 1.4/2.0
> >>
> >> Signed-off-by: Sunyun Yang <syyang@lontium.com>
> >> ---
> >>  .../bindings/display/bridge/lontium,lt9611.yaml           | 8 ++++++-=
-
> >>  1 file changed, 6 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/Documentation/devicetree/bindings/display/bridge/lontium,=
lt9611.yaml b/Documentation/devicetree/bindings/display/bridge/lontium,lt96=
11.yaml
> >> index 429a06057ae8..e0821a63d9d7 100644
> >> --- a/Documentation/devicetree/bindings/display/bridge/lontium,lt9611.=
yaml
> >> +++ b/Documentation/devicetree/bindings/display/bridge/lontium,lt9611.=
yaml
> >> @@ -4,19 +4,23 @@
> >>  $id: http://devicetree.org/schemas/display/bridge/lontium,lt9611.yaml=
#
> >>  $schema: http://devicetree.org/meta-schemas/core.yaml#
> >>
> >> -title: Lontium LT9611(UXC) 2 Port MIPI to HDMI Bridge
> >> +title: Lontium LT9611(UXC/C/EX/UXD) 2 Port MIPI DSI to HDMI Bridge
> >>
> >>  maintainers:
> >>    - Vinod Koul <vkoul@kernel.org>
> >>
> >>  description: |
> >> -  The LT9611 and LT9611UXC are bridge devices which convert DSI to HD=
MI
> >> +  The LT9611=E3=80=81LT9611UXC=E3=80=81LT9611C=E3=80=81LT9611EX and L=
T9611UXD
> >> +  are bridge devices which convert DSI to HDMI
> >>
> >>  properties:
> >>    compatible:
> >>      enum:
> >>        - lontium,lt9611
> >> +      - lontium,lt9611c
> >> +      - lontium,lt9611ex
> >>        - lontium,lt9611uxc
> >> +      - lontium,lt9611uxd
> >>
> >>    reg:
> >>      maxItems: 1
> >> --
> >
> > Gentle ping.
> > Thanks.
>
> Except mess with threading, your patchset does not build, when applied
> on next-20260618.
>
> What is the base of this?
>

Thanks for testing my patchset on next-20260618.

The base of this series is v7.0.

> Best regards,
> Krzysztof

