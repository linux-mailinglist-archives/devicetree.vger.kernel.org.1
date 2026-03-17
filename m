Return-Path: <devicetree+bounces-276822-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KFu7AtueuWk1LQIAu9opvQ
	(envelope-from <devicetree+bounces-276822-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 19:35:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 510042B0FB8
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 19:35:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BD64430107DD
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 18:29:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0503B395DBF;
	Tue, 17 Mar 2026 18:29:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kJOlkfAj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B72137A492
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 18:29:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.49
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773772187; cv=pass; b=EXaOPxXv8hH9X/8d3+JLj2EnjWTXCVbtK80r+n6X4yyLl7TZ0nOJ0tPwFmINO3iYgOYrtI/M6/bSs8bTLE0AHAVpyjc/mrIPB9i/9QlcTrQfnsyLqyEllFgHLhjmDo5hbfsMI7jy1I3+JDavaF044FAK3KL/F1NxvuTpx8SRNLI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773772187; c=relaxed/simple;
	bh=swMKjeMNeUsp4h+Vz5/7o8kitaZNgYBGM8jqx5pOxDA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JArQ4JXhytflIifSDl1wCafI1j91OO5d+wURn7J7T+yIlpE2bOnKEDf11zpw1jH5jCBrkQMs07a5OWTV8/9JE69wfvkJo8IxyoaO6dPU4+gBFD7wq22u6k9r9xKxmkdy0tNZpvbIdc5w6Jr9SATDyttpawvSCDU01cj/uUmI0xM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kJOlkfAj; arc=pass smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5a12c19affeso297842e87.1
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 11:29:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773772184; cv=none;
        d=google.com; s=arc-20240605;
        b=GJO+jN/kJeeYbVhNYxG5LEGzD4375o+sYiJTaTgZCv3Q5oH1XN7iLMfMyN0Of5RM9F
         VAKqTwn67SpRl/69EZ5Qn6Fs0Y031rEqRt/DoIT/Op7NUkHhAu0TDGCwm2+KaMF/0c8w
         dPA2fVrTtkudYTiuAIQMHMCD/b1n2hmC4rZL9CEb1CucHjHAAzMe/0Xk9Y8yv55ONMi6
         nT2psHVTgxBBTtG2wHE0dQtIILwlB+ZM0Or0Vb/leL3SiPNtIWJkxu3FeSeH63e5r/2B
         Jyx8vM5+fuzfRwOwKyMC0tps6G5+5fE28ThpBj/ATBHtWU0dXewFHCGXDj2uusdKGz1x
         V61Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ReTvBCd8P9yyzfq3HfeJmsA/gm4KeOu6IvS40zFKzQ8=;
        fh=w7nZmZd7J9jR9Jn3DuJcfAVadaCdV410vt13g3k73hw=;
        b=FpYRntKk/oGBhJ6iPFHk4XuTd0m5xQ9MnAnOoAh5+5NokhmRBNvC6sfIZTs83DqBC1
         B2WhS6TmbwXprx8eCJrkUlD6gY4lG4Q27r4MtHL060TS5BH5mBSWYRKX1Mt00eSNE+9W
         yTFOvyLEEBYEkz64Cd2hQnyZLudWXcpD4yyugLnaVELKT/awQy5QQuLYi5WIX7C8KChL
         fLqzG5Jeq9O4mCo5BJhA958JQLRYwyKi72snLoORyu1IacyINRZpzjxZnfkYSOvCgTI9
         eMRjvxcgV/aFujkZ3EjX6vgsGjC5LLlW0MTlNzU89LbzY463kP6WV1UvdafRiSG9l8Rx
         A60A==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773772184; x=1774376984; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ReTvBCd8P9yyzfq3HfeJmsA/gm4KeOu6IvS40zFKzQ8=;
        b=kJOlkfAjNrWtsoeTtzQQwO9Kt9258frWcPo8bfpT1eCKIRJ+LL4g/Xfbtx91NfWCE4
         3sP1uuCOTRGFIlt/e5W9k7OIgbJpwDEwnsu2k0Ysc7Hvaqm4tiwynN2CH1C/qQZDYGGV
         Fr1ttn58USzSv4WUrQpdlU4jo/TvcYGJJjjHlmUd2BFT4QM1Ut27W2Ztqhl6/tCe/jkU
         Mro3VOFb18IKvqbvGy2Wd3nu8z6GjWFVBQOjlLEZZZYgQpGrgobCRBpI50ISFyXsUasK
         s2Bjz5GG+McRLYgCaxg/IY3z7M8T5r3I7a9dSg5S1bh4rc6GgCdPqH2aT3Jq/F9PDwJS
         poBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773772184; x=1774376984;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ReTvBCd8P9yyzfq3HfeJmsA/gm4KeOu6IvS40zFKzQ8=;
        b=PmyLLWSlLZpK8Bge4dbTFFiw8zIpyuc4NYtRFPkdOpKs/zTCcHdRmut5/GAKbo2Df0
         WgRcahQ7nqrHFPkMFF9TQc/Xyb6eULiJfdaBi7a7jsaJrsnRo/wTnlVevLtx8IvADUcQ
         PGb465BfLXVeYLNP6rhA+4RIzqzTMTPJ4ed9wAzYGwTcHLUxAJFAzUVoDr/gJFm87bPa
         93UIJOXcUD2V+TOkOTeHnmiFkknqYHmne9qj7NTH2YC+nIqViVlQfkBNllybSnYrxiEk
         kxu+TF+ZqN2mdOzajrlr/E6+vuLqQsKcuJco1WV5+mCzBRyDQXR/DXOod5uJdzMBnSQH
         Mlsg==
X-Forwarded-Encrypted: i=1; AJvYcCUxraFP0mHXCNwmOzX3XMkJwekwxdZEi5JNAQmdNP73N+wJiZyRAYDeZZOVJAEn6mMMQOIK7AsiDOqN@vger.kernel.org
X-Gm-Message-State: AOJu0YwqJLHJ2hJ6mfg77cpsi267G4NM4+AneCnbSwH+vBXQZM7TchAn
	kDMthGlBNbOSKJq3FWtsYFRFtrjMXiQBwKBCVuuiLPcoiKkbz5jQeIinpv0YrK9QB7IPeGLgdQQ
	S9dUM4GtJZ2LXb8ivLEyujfDucBQUIL8=
X-Gm-Gg: ATEYQzxlvicMit7+Wq1qVVPSxwiPMFeJ7RV+WM5cZKLVm0wmK4/pIVuSaTd+boWf+6N
	8sLz/5TGR7PLqQuRasOpAiGVr9z4R62atkR1+I7NyOx3CcoEq2SsUh5BJ/jFe2FHj7c4omXkVqC
	34EgYGsX7Oq0sp6zSQEkiP20f/bck0ceNgNnxy1/fQZwdImoaB1axKUSQi8WD9Mbdgc064l9Gad
	08rIvkGOA83JTUsdcuKPsmR3JCEyRjFDt+i5xasIb0cxcuRfhSpG/TF263vnfE1yBuCkce7j6IZ
	ZUHFrhdhqld14w56fpWI5ECGshILKbNo+7dcovQQibZ+gAfehQB+br1lM3yNywULZdHN
X-Received: by 2002:a05:6512:2313:b0:5a2:7901:a513 with SMTP id
 2adb3069b0e04-5a27901a7camr426839e87.7.1773772184154; Tue, 17 Mar 2026
 11:29:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260317-ch13726a-v2-0-28aa46bcd6d0@gmail.com>
 <20260317-ch13726a-v2-1-28aa46bcd6d0@gmail.com> <20260317-helpful-proficient-pronghorn-ef5e1f@quoll>
 <CALHNRZ-hvAY5EzLMb1To8+pdtE3GUCDZZu6SddoUd5dZxTjnVw@mail.gmail.com>
In-Reply-To: <CALHNRZ-hvAY5EzLMb1To8+pdtE3GUCDZZu6SddoUd5dZxTjnVw@mail.gmail.com>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Tue, 17 Mar 2026 13:29:32 -0500
X-Gm-Features: AaiRm50HgqgjbuPX-50F3bbn8pQSL_8CmnvMBK9-YO7OK126DaYdRACviZGF9CY
Message-ID: <CALHNRZ_B+W6-OmBY5ZkfQyEfPDjhr5R+aDpTLm=byJuMduV0fQ@mail.gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276822-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,lists.freedesktop.org,vger.kernel.org,sobir.in];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[webgeek1234@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 510042B0FB8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 17, 2026 at 12:59=E2=80=AFPM Aaron Kling <webgeek1234@gmail.com=
> wrote:
>
> On Tue, Mar 17, 2026 at 2:33=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.=
org> wrote:
> >
> > On Tue, Mar 17, 2026 at 12:23:07AM -0500, Aaron Kling wrote:
> > > The Chip Wealth Technology CH13726A display driver is a single chip
> > > solution for AMOLED using MIPI-DSI. This is used for the AYN Thor bot=
tom
> > > panel.
> >
> > A nit, subject: drop second/last, redundant "bindings". The
> > "dt-bindings" prefix is already stating that these are bindings.
> > See also:
> > https://elixir.bootlin.com/linux/v6.17-rc3/source/Documentation/devicet=
ree/bindings/submitting-patches.rst#L18
>
> Ack
>
> > Also drop all references to "display driver", even if you meant hardwar=
e
> > thing.  Driver in hardware is suitable only to motors, haptics and LEDs=
,
> > but not to displays. AMOLED driver is fine, display driver too confusin=
g.
>
> Per the data sheet [0], my understanding is that the ch13726 is a
> ddic, a display driver integrated circuit, which is a class of generic
> chip that gets bundled with multiple panels. This data sheet doesn't
> use the specific term ddic, but others I'm working on do and the term
> crept across for consistency. I can change the description to avoid
> confusion, Is 'AMOLED driver' enough to imply that this is a common
> chip supporting multiple panels?

Sorry, forgot to actually paste the link [0] in my last reply. Adding now.

> > >
> > > Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> > > ---
> > >  .../display/panel/chipwealth,ch13726a.yaml         | 66 ++++++++++++=
++++++++++
> > >  1 file changed, 66 insertions(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/display/panel/chipweal=
th,ch13726a.yaml b/Documentation/devicetree/bindings/display/panel/chipweal=
th,ch13726a.yaml
> > > new file mode 100644
> > > index 0000000000000000000000000000000000000000..b490c6757bb98c0752ded=
78b8fea3aaec853c7b2
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/display/panel/chipwealth,ch13=
726a.yaml
> > > @@ -0,0 +1,66 @@
> > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/display/panel/chipwealth,ch13726a=
.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Chip Wealth Technology CH13726A display driver
> > > +
> > > +maintainers:
> > > +  - Neil Armstrong <neil.armstrong@linaro.org>
> > > +
> > > +description:
> > > +  Chip Wealth Technology CH13726A is a single-chip solution
> > > +  for AMOLED connected using a MIPI-DSI video interface.
> > > +
> > > +allOf:
> > > +  - $ref: panel-common.yaml#
> > > +
> > > +properties:
> > > +  compatible:
> > > +    const: ayntec,thor-panel-bottom
> >
> > Why compatible is completely different than commit msg, description and
> > title are saying?
>
> See above for the general explanation. I don't know what the panel
> part number for this is, the only thing the odm described was the
> ddic. So I'm describing where the panel is used. There is precedence
> for this, for example rocktech,jh057n00900 containing
> gameforce,chi-panel. The downstream driver code I based on also
> supports displays from retroidpocket, so I'm also trying to leave a
> simple path for those to be added, should someone care to.
>
> > > +
> > > +  port: true
> >
> > This goes before reset-gpios
>
> Ack
>
> > > +  reg:
> > > +    maxItems: 1
> > > +    description: DSI virtual channel
> > > +
> > > +  vdd-supply: true
> > > +  vddio-supply: true
> > > +  vdd1v2-supply: true
> > > +  avdd-supply: true
> > > +
> > > +  reset-gpios: true
> > > +
> >
> > Drop blank line here (it is port+reset-gpios+rotation in three lines).
>
> Ack
>
> >
> > > +  rotation: true
> > > +
> >
> > Best regards,
> > Krzysztof
> >
Aaron

[0] https://www.scribd.com/document/910879274/CH13726A-SPEC-V0-0

