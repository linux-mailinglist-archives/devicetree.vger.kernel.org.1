Return-Path: <devicetree+bounces-276804-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AOm4CKeWuWmhKwIAu9opvQ
	(envelope-from <devicetree+bounces-276804-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 19:00:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B7BC12B07B1
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 19:00:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DF1CC303DA05
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 18:00:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A0F137D13C;
	Tue, 17 Mar 2026 17:59:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QLqQPbeH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7B8237B002
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 17:59:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.50
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773770398; cv=pass; b=XOKgwjZQ7cXyt9TTX2N7NALCWUteors8etHrc2OxGT620CP1tn7yerr6NTGqy3ENkD5RmR3j2T4OG2T5utKL4LOoDA+Y0YhqXEq24uxsVg8qr5whVr27P9cf5b89r46Ng27FnGyKt+zo1zXkmJwaC96xFvQ9LoudNhky8yh59eE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773770398; c=relaxed/simple;
	bh=Hq/dv0Gra6gnuL3lvhCOf57oZ38fe/WRXBofL/5kidk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=T4RJJmp4d/FD/4FJgUt1mFKZZqYREucS6SyqQXdbwwoHNqLrBhWmS+8LdS11fEhUHfJhd84neXAFNyMMSiECRbxsaH8hpKgbhAhZ1BPWnmL2expsJwJE03ZBWYc0qv6fXDHlMrl6E2cTujWvwJBYHXa2JjNrkwGwFp8/8DstGn8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QLqQPbeH; arc=pass smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-59dea72099eso7000470e87.0
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 10:59:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773770391; cv=none;
        d=google.com; s=arc-20240605;
        b=A7VM+KjRLcgxbjEYT8kF7GlPNEBmf/jsJbU/mFuMqr+ihgUO9Iu5vBumEx1s212LI/
         YV7mdH1XjXw4Drbspi2C6aUh3VLVhkwpdTTu4BXHBxWRN3WL/872nH1SLTgx2LkVlqb9
         MGSBc5FtbmL6uWzZg3xBjl1YKnECmBI6cG5Zy/my9XjocypjFq0Ar8ZFBSm4AjGxrbGp
         aTkjJ0Y6sNduo4PyH8Nfzj5rm5HnkfFUgb/5fRRRdJvMPw9ufMV8lhpmEHd2OK5NotUB
         9N0u9a7hAwNx6pOMcu821YPOw5hr5L88cEjLwz77U4jjHSNHDRSn+iqN5CIxjJdLf1/B
         Qadg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=F+zYh4D1AhciUb2qWsGCZrd2hODwBQKfeuM+1T1I6Ts=;
        fh=1V1cvwoekhcEG22mp67sXI65OKz5EODTfYlBBsBAvtA=;
        b=lu/khav6I1g2Xh5JDlSZ07emHjFVSmnOyhs6lNC1DrB+xEhM5+/0WySGmS6Egq8ghm
         nwJB3OVSCIeopF6JUhP5ZNdf+mbLfzyCNQuZuPDvG35qF58LQ8I4AnReie+lPDx0DN48
         L57F4PYyzQ8CkRzn0D2WzZNOBwWqvOIc+7wtMK7LrtfhJqBefKFkPTTOcRtg42+Rg1Q1
         gnUE0dOaY/0yfmwOlt4n7Em3wobPqoxS75quhY5JiNVcB/kNz+ngv9VLaVaX9Pn1Pl6t
         S8cGYTOSTjLcR3i/hQRa04HbD/8omGdVk0r3MsieMWnElBXtDL8LMalbOgHfulECcpT4
         IWkQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773770391; x=1774375191; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F+zYh4D1AhciUb2qWsGCZrd2hODwBQKfeuM+1T1I6Ts=;
        b=QLqQPbeH8No1sMHqpXpdN3vEkVjSmST7gdqUh39g6LZ2Xbef7oUSfN9+nRBhzhLJun
         kUdrmy9JCkdh8CqSmmKTp5Qz+NIxfhMe3I6It13jUoQP11fkAm98BMhcP0RKSRRpbeCG
         z/wLZ9s1jqJj5PaGgeIQETSNZKDZhj03qOMa7E4LIJxC0Dky1aIezg2Ae0azwbJqx0wk
         g768cOjqIQqM5d9Su4s4yGvO/ociHRP0m2mBKAaER1+fmUW0HZpLcMXyT6w7634Dz9uT
         T5dK7vQuorCYvPWQunswk+SrY6SnkQhwJV5Br39dOuMatw2I5qL7Fnsst1mlrbY95YyU
         sLZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773770391; x=1774375191;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=F+zYh4D1AhciUb2qWsGCZrd2hODwBQKfeuM+1T1I6Ts=;
        b=DMUUCdq8T9nkxoHjtkWUPIV956Yim2Sz4LnVhBBXkVPdXED7B7XgHI7myLV0GiosNv
         AQMHWLpynIhyFNoqLW0kfDrQSNfiJcO4jpAkKCpqgrin0abR1/oWuq1vv+fx1BAJ3xzi
         +6vk98BDxpJ9vt7bF7qBl47at/yXwtRuxPjZe5chTPotclmYwx95J70cfeSwMTbkcvU1
         9TpXepEw7OKOXXYrMw8ehGZ7oIgYZi2hFERsgQkbK5rURRAJ0jS8FxGupTcW3KXzf9cH
         IILWbVqh3HgyHbljj7lJ3aF6/aJg7VrrFsD7sy47y6v2Fb0rwurMa05wxuL85Pnh9ggR
         Im1A==
X-Forwarded-Encrypted: i=1; AJvYcCWqHXsKgFumOsyO8sAM6e8YZ5mARjTTwWiEMEfcdzpVu90ZIXll6ynBGRj7sgwi+nDWHW+byIqqsvYs@vger.kernel.org
X-Gm-Message-State: AOJu0YwNw33R6aBAn2StPYOI3XvfZ3svW6rOO7SAOjIYVrrexMT4o6+M
	V4sJfCdxXNZ3OD2gUaPUOgxvzTW1qG5VdXL9FrhiTiYam84vMwlmfFhHMjZXLDoZvw7fBFlv6wc
	ag4hgzSxoETCVMGuJsGDYrO1Yq48SGqQ=
X-Gm-Gg: ATEYQzy46rzCZeK8zVa35Yw3Bs0s8cZ35S9cU6tpOWZBsRk61M01TUaGmPWyZtccROz
	/MsiqKMqAW0LdPdjbIGMdpHP1gHFA/C/nWQM4dA4t5PAaliWWJYBvoXr5/p976INU0++epc+kg+
	oROXOm3xtp/7Wj0WG1h5YWh97MfItPUdqk1n753KPUwCW4WKIChjr4MVh/l72UUf5lTuNC72cPV
	Sn40W8NrjUpLU1w5pL7mHiM4PxJmDPm641FIL4t6px+Blinf9buE+GKlXsDWJd40zrLrNSzBcko
	4gWN4mOdYZUp0wYCu2OiSRn1S4XB4ouEER+eTd8gn+H2iKnwltnWRt7Zh1j3FUqbfvL7
X-Received: by 2002:ac2:5308:0:b0:5a1:184a:9ed5 with SMTP id
 2adb3069b0e04-5a27957d8afmr139720e87.2.1773770390562; Tue, 17 Mar 2026
 10:59:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260317-ch13726a-v2-0-28aa46bcd6d0@gmail.com>
 <20260317-ch13726a-v2-1-28aa46bcd6d0@gmail.com> <20260317-helpful-proficient-pronghorn-ef5e1f@quoll>
In-Reply-To: <20260317-helpful-proficient-pronghorn-ef5e1f@quoll>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Tue, 17 Mar 2026 12:59:39 -0500
X-Gm-Features: AaiRm52DSjIDHjqtjh1jdGSgRBArLiGl3iFNb-9lQ_KTulb8xhu_BDo1QivMeo4
Message-ID: <CALHNRZ-hvAY5EzLMb1To8+pdtE3GUCDZZu6SddoUd5dZxTjnVw@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: display: panel: Add ChipWealth
 CH13726A AMOLED driver bindings
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <jesszhan0024@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Teguh Sobirin <teguh@sobir.in>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276804-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,lists.freedesktop.org,vger.kernel.org,sobir.in];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[webgeek1234@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,devicetree.org:url,bootlin.com:url,mail.gmail.com:mid,linaro.org:email]
X-Rspamd-Queue-Id: B7BC12B07B1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 17, 2026 at 2:33=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On Tue, Mar 17, 2026 at 12:23:07AM -0500, Aaron Kling wrote:
> > The Chip Wealth Technology CH13726A display driver is a single chip
> > solution for AMOLED using MIPI-DSI. This is used for the AYN Thor botto=
m
> > panel.
>
> A nit, subject: drop second/last, redundant "bindings". The
> "dt-bindings" prefix is already stating that these are bindings.
> See also:
> https://elixir.bootlin.com/linux/v6.17-rc3/source/Documentation/devicetre=
e/bindings/submitting-patches.rst#L18

Ack

> Also drop all references to "display driver", even if you meant hardware
> thing.  Driver in hardware is suitable only to motors, haptics and LEDs,
> but not to displays. AMOLED driver is fine, display driver too confusing.

Per the data sheet [0], my understanding is that the ch13726 is a
ddic, a display driver integrated circuit, which is a class of generic
chip that gets bundled with multiple panels. This data sheet doesn't
use the specific term ddic, but others I'm working on do and the term
crept across for consistency. I can change the description to avoid
confusion, Is 'AMOLED driver' enough to imply that this is a common
chip supporting multiple panels?

> >
> > Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> > ---
> >  .../display/panel/chipwealth,ch13726a.yaml         | 66 ++++++++++++++=
++++++++
> >  1 file changed, 66 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/display/panel/chipwealth=
,ch13726a.yaml b/Documentation/devicetree/bindings/display/panel/chipwealth=
,ch13726a.yaml
> > new file mode 100644
> > index 0000000000000000000000000000000000000000..b490c6757bb98c0752ded78=
b8fea3aaec853c7b2
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/panel/chipwealth,ch1372=
6a.yaml
> > @@ -0,0 +1,66 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/display/panel/chipwealth,ch13726a.y=
aml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Chip Wealth Technology CH13726A display driver
> > +
> > +maintainers:
> > +  - Neil Armstrong <neil.armstrong@linaro.org>
> > +
> > +description:
> > +  Chip Wealth Technology CH13726A is a single-chip solution
> > +  for AMOLED connected using a MIPI-DSI video interface.
> > +
> > +allOf:
> > +  - $ref: panel-common.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    const: ayntec,thor-panel-bottom
>
> Why compatible is completely different than commit msg, description and
> title are saying?

See above for the general explanation. I don't know what the panel
part number for this is, the only thing the odm described was the
ddic. So I'm describing where the panel is used. There is precedence
for this, for example rocktech,jh057n00900 containing
gameforce,chi-panel. The downstream driver code I based on also
supports displays from retroidpocket, so I'm also trying to leave a
simple path for those to be added, should someone care to.

> > +
> > +  port: true
>
> This goes before reset-gpios

Ack

> > +  reg:
> > +    maxItems: 1
> > +    description: DSI virtual channel
> > +
> > +  vdd-supply: true
> > +  vddio-supply: true
> > +  vdd1v2-supply: true
> > +  avdd-supply: true
> > +
> > +  reset-gpios: true
> > +
>
> Drop blank line here (it is port+reset-gpios+rotation in three lines).

Ack

>
> > +  rotation: true
> > +
>
> Best regards,
> Krzysztof
>
Aaron

