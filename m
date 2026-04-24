Return-Path: <devicetree+bounces-289887-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4P96E00g62k9IwAAu9opvQ
	(envelope-from <devicetree+bounces-289887-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 09:48:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FCF845AE80
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 09:48:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DB4BE300A101
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 07:48:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 038902EBB89;
	Fri, 24 Apr 2026 07:48:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iRKIckSO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4EE62D248B
	for <devicetree@vger.kernel.org>; Fri, 24 Apr 2026 07:48:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777016905; cv=none; b=FIJKWeY+selV8xA4TsHnVfLSrOTCi7bm6TNDTPw34sJr1BWDfvrxQVqc5ufQW8yZ2jlmlAcKNN8lH00z65oJoLSyhFh23iR8Y9X0gEYXZyhG5JdiIQHm9h8o0WHJIudORVd3RZXs40evSTXRqFexnxen52X1C4kW/GUR4+WdUVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777016905; c=relaxed/simple;
	bh=feecK4MeBuj/VPyh/qYgnDaXVoeIaIRKFKR6chXYzQM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kUG2ihwkv+OOC3wNINMmQoqo56f3sU8tR5+YhMTj2BZw06psnRmEyIaraQzJBCLtGDL0aa5gFOAcfiYxOKVCFi02AoC89NKzef4p17xU0vwJo/utrKk6lrEaP0hV/vCZTHdNcHTYOf9nZdVKanTWcqBT9V4k+/bXhrVAFEg/YUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iRKIckSO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87832C19425
	for <devicetree@vger.kernel.org>; Fri, 24 Apr 2026 07:48:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777016905;
	bh=feecK4MeBuj/VPyh/qYgnDaXVoeIaIRKFKR6chXYzQM=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=iRKIckSOijMZisvasCxqfpngwj+h+OIOVBCIrBvqVdOx9uoOXCJVG2VcEd3Iz54OI
	 OwDUQT2XkF3gTu+99AhiATIhT1bZnz/FE7e38RmxjgN3ZcG7zhKDYGMt32U/MK7wsG
	 a1XZ/m+UOxKELs7MpzZkX69Z2d0WLDm20rWxe31KQef5dlPWnH4Vqo7JRgylfzpxZG
	 O6CbfwOMXymZJMsBp30ToRG2fiH9JtPoOjOP6wd2AMzhH+OSItAhEoT9cjUOi/TiW/
	 OIFuq+y/+HAVh4fQrQ8tgq5stf/HnmvayJBek2h9hqHByttv0kLzHXvHMq6HUtpFVz
	 EEkdN4gUKWZDg==
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-5a2c9c5ff87so8251820e87.0
        for <devicetree@vger.kernel.org>; Fri, 24 Apr 2026 00:48:25 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ+ZwIe8mi0C4IKT/BGSd0Okr8DrBYkll/6qljYplAiXxloz4V0y38nfGcf5ziG2RrZDO1sA6RHImdcG@vger.kernel.org
X-Gm-Message-State: AOJu0YyD57A5kYH6BldySc2Cv4/k9nxKIOhKzk7DiDQWR1ePlZKbSU7F
	NvLKSaYq13w1mev+/Nkpy0H2a5D0vGGR1ouKsCCcIERsGwR4p0zVJg8tOakT9dx+PPnGsc+++z9
	PSWCfc1is/qtzy+amGTSbDMfFh1JSPcY=
X-Received: by 2002:a05:6512:158c:b0:5a4:4ea:9982 with SMTP id
 2adb3069b0e04-5a4172bcc5cmr9318043e87.8.1777016904296; Fri, 24 Apr 2026
 00:48:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260424071305.89503-1-clamor95@gmail.com> <20260424071305.89503-2-clamor95@gmail.com>
In-Reply-To: <20260424071305.89503-2-clamor95@gmail.com>
From: Linus Walleij <linusw@kernel.org>
Date: Fri, 24 Apr 2026 09:48:12 +0200
X-Gmail-Original-Message-ID: <CAD++jL=_oFXDSGxOziSB4JJsd0nJrxfN+xaJ031C-nq7=CaPOg@mail.gmail.com>
X-Gm-Features: AQROBzAeQLBiO2O8LJ_HmvCDG79a_y_CSWdVyN_SA_mC1wsB1hows8I5qh7lb78
Message-ID: <CAD++jL=_oFXDSGxOziSB4JJsd0nJrxfN+xaJ031C-nq7=CaPOg@mail.gmail.com>
Subject: Re: [PATCH v1 1/2] dt-bindings: input: Document Imagis ISA1200 haptic
 motor driver
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-input@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 9FCF845AE80
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-289887-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]

On Fri, Apr 24, 2026 at 9:13=E2=80=AFAM Svyatoslav Ryhel <clamor95@gmail.co=
m> wrote:

> Document the Imagis ISA1200 haptic motor driver, used primarily in mobile
> handheld devices and capable of supporting up to two motors.
>
> The exact datasheet for the ISA1200 is not available; all data was modele=
d
> based on available downstream kernel sources for various devices and
> fragments of information scattered across the internet.
>
> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>

DT binding maintainers: notice that this version is essentially a reply to
requested changes from Rob in 2022:
https://lore.kernel.org/linux-input/YjuaK09nOztYOmyn@robh.at.kernel.org/

I.e. moving from "all info derived from the compatible" to "use more
properties".

Yours,
Linus Walleij

