Return-Path: <devicetree+bounces-315374-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kSTTDuszPGrplAgAu9opvQ
	(envelope-from <devicetree+bounces-315374-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 21:45:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 797B46C1157
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 21:45:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=FMVDEan6;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315374-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-315374-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D3E453031AEE
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 19:45:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23BD13C769F;
	Wed, 24 Jun 2026 19:45:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC7AB33D506;
	Wed, 24 Jun 2026 19:45:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782330344; cv=none; b=vF2cKYbvGJ59gFuQx3PxQ60s+0L+yVAiMiyHjS7/YnZLLPlyNtXpPDF5nLSX1mzrIJBT5DyFkDaGQAqU3xoMxWvqyvAE72vmzWls5++cV//WqgItFZrz5dP6oShHxf91nCvsvxtZXnhxHEbFVmsCijvdztLctEbbm3jPrQ9inFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782330344; c=relaxed/simple;
	bh=BzyOlsszxJEeIY9pYAhULIu3fNM+/17IvpEOrDVmRlM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Cpd2VO68KxOM8KMS1nsVhV/rsyKpOQ3LaAmB3F2/3IOEbdDdX4pOLPdmT2J4XG3NI19AWmtDc78gE/I2HSegr2QIblpojM/Swg/bNr0D68h9XfHozG/oWN3PPBMsKy+XpcYdhttKuaTQRZrQhtC3hPo6ZDo3I+Ngn+YHqaVnk6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FMVDEan6; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B7721F000E9;
	Wed, 24 Jun 2026 19:45:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782330342;
	bh=+YMatfDrWesAa/1uFkH2Ifq/id2ddc7RPiI/6Itz998=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=FMVDEan6qU6OtyY5LEV2DZpmdbMtUaUlp4bGR+hj/6BaKiZBthX3JDxLTeYBcn6wL
	 pis5nHOFr0KRSIdPqA37dHiLVA0QObfTLf9TCHkWsBGStCFWSq+wl2SaMhz6Bnc5TI
	 vTOHNf52lphs9i3auX4oelZQyhTrD5ehQT1YWyVSiZlqKTXXDsNgUwgevCUBWRJnal
	 M3CHeoOQwbijcGkXyqtRozyAKuAbRRiU0GCWpl+7Vu+m3vhSFvKnU2SyVcwRAYVc8Z
	 kGirYKHROlNAVvC53Oh2GPlEFkL5QwZ0Tmv4vcMhZe0BdniAEKnSuN7MiCmh9diO1N
	 hvlr/NPwAyzYA==
Date: Wed, 24 Jun 2026 14:45:41 -0500
From: Rob Herring <robh@kernel.org>
To: David Heidelberg <david@ixit.cz>
Cc: David Rhodes <david.rhodes@cirrus.com>,
	Richard Fitzgerald <rf@opensource.cirrus.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, patches@opensource.cirrus.com,
	Bjorn Helgaas <bhelgaas@google.com>, linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	phone-devel@vger.kernel.org
Subject: Re: [PATCH v2] ASoC: dt-bindings: Convert cirrus,cs35l36 to DT schema
Message-ID: <20260624194541.GA672824-robh@kernel.org>
References: <20260624-dt-cirrus-cs35l36-v2-1-74eccdbd8fe4@ixit.cz>
 <CAL_JsqLE8Z-LbeF9r=sqRqAoGUcs7R-T4cN+hF3QzjGydHctgQ@mail.gmail.com>
 <3873b111-36d5-442e-996c-31d05d23c8e8@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3873b111-36d5-442e-996c-31d05d23c8e8@ixit.cz>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-315374-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:david@ixit.cz,m:david.rhodes@cirrus.com,m:rf@opensource.cirrus.com,m:lgirdwood@gmail.com,m:broonie@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:patches@opensource.cirrus.com,m:bhelgaas@google.com,m:linux-sound@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:phone-devel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[cirrus.com,opensource.cirrus.com,gmail.com,kernel.org,google.com,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,devicetree.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 797B46C1157

On Wed, Jun 24, 2026 at 08:39:28PM +0200, David Heidelberg wrote:
> On 24/06/2026 20:17, Rob Herring wrote:
> > On Wed, Jun 24, 2026 at 11:02 AM David Heidelberg via B4 Relay
> > <devnull+david.ixit.cz@kernel.org> wrote:
> > > 
> > > From: David Heidelberg <david@ixit.cz>
> > > 
> > > Convert CS35L36 Speaker Amplifier to yaml.
> > > 
> > > Changes:
> > >   - maintainers email to the generic Cirrus email
> > >   - Both the codec and downstream worked just fine without
> > >     VP-supply provided. Align with datasheet for similar models.
> > >   - add dai-common.yaml to cover for '#sound-dai-cells',
> > >     'sound-name-prefix'
> > > 
> > > Reviewed-by: David Rhodes <David.Rhodes@cirrus.com>
> > 
> > If you are going to take stuff I haven't fixed:
> > 
> > Assisted-by: OpenAI:gpt-4
> > 
> > (I don't remember the exact flavor I used)
> > 
> > > Co-developed-by: Rob Herring (Arm) <robh@kernel.org>
> > > Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> > > Signed-off-by: David Heidelberg <david@ixit.cz>
> > > ---
> > > Relevant for Pixel 3 / 3XL / 4.
> > > ---
> > > Changes in v2:
> > > - Rename the commit. (Mark)
> > > - Link to v1: https://lore.kernel.org/r/20260618-dt-cirrus-cs35l36-v1-1-1a43515666ad@ixit.cz
> > > ---
> > >   .../devicetree/bindings/sound/cirrus,cs35l36.yaml  | 224 +++++++++++++++++++++
> > >   .../devicetree/bindings/sound/cs35l36.txt          | 168 ----------------
> > >   2 files changed, 224 insertions(+), 168 deletions(-)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/sound/cirrus,cs35l36.yaml b/Documentation/devicetree/bindings/sound/cirrus,cs35l36.yaml
> > > new file mode 100644
> > > index 0000000000000..af0acaaefb68e
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/sound/cirrus,cs35l36.yaml
> > > @@ -0,0 +1,224 @@
> > > +# SPDX-License-Identifier: GPL-2.0-only
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/cirrus,cs35l36.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Cirrus Logic CS35L36 Speaker Amplifier
> > > +
> > > +maintainers:
> > > +  - patches@opensource.cirrus.com
> > > +  - Bjorn Helgaas <bhelgaas@google.com>
> > 
> > Bjorn is not correct. Generally we want a person, not a company list.
> 
> I'm adding back James, can I keep the patches at 2nd place?

Yes.

> > > +      cirrus,vpbr-thld:
> > > +        description: Initial VPBR threshold voltage
> > > +        $ref: /schemas/types.yaml#/definitions/uint32
> > > +
> > > +      cirrus,vpbr-atk-rate:
> > > +        description: Attenuation attack step rate
> > > +        $ref: /schemas/types.yaml#/definitions/uint32
> > > +
> > > +      cirrus,vpbr-atk-vol:
> > > +        description: VP brownout prevention step size
> > > +        $ref: /schemas/types.yaml#/definitions/uint32
> > > +
> > > +      cirrus,vpbr-max-attn:
> > > +        description: Maximum attenuation during VP brownout prevention
> > > +        $ref: /schemas/types.yaml#/definitions/uint32
> > > +
> > > +      cirrus,vpbr-wait:
> > > +        description: Delay between brownout clearance and attenuation release
> > > +        $ref: /schemas/types.yaml#/definitions/uint32
> > > +
> > > +      cirrus,vpbr-rel-rate:
> > > +        description: Attenuation release step rate
> > > +        $ref: /schemas/types.yaml#/definitions/uint32
> > > +
> > > +      cirrus,vpbr-mute-en:
> > > +        description: Mute audio if maximum attenuation reached
> > > +        $ref: /schemas/types.yaml#/definitions/uint32
> > 
> > Constraints on any of these?
> 
> Code just applies whatever is thrown at it, maybe David knows more?
> 
> #nodatasheet (but would be lovely to have one)

Unless the driver just takes these values and shoves them straight into 
a 32-bit register, the driver should give some clue about the size or 
possible values.

Rob

