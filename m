Return-Path: <devicetree+bounces-304037-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MHqRAMDrGGpnowgAu9opvQ
	(envelope-from <devicetree+bounces-304037-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 03:28:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 04FDE5FC03E
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 03:28:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 28CC5300A26C
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 01:28:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 374F334C990;
	Fri, 29 May 2026 01:28:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fX1WOndr"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409D08834;
	Fri, 29 May 2026 01:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780018105; cv=none; b=sGw60ERx3Pe+wJeW3zjakVWC1bNDTeKVTo9W2LHO/OYJ+BFuss/bYEeOsZQo+pouPmP3q3eD+yDvbYMFpwMeZHocgTYXINYNRjKexVRlm/KTSvG/DKJMfgjPHZONpETfuLvt14/bFWC02ROQpILHVrh64G1XJTYIPHupa/aV4XA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780018105; c=relaxed/simple;
	bh=18UPC2SZKdtzhosHiYr4d0Inrp340u6TbYLhcolEGKs=;
	h=Content-Type:MIME-Version:In-Reply-To:References:Subject:From:Cc:
	 To:Date:Message-ID; b=bWd/tcVObtI7ePE+TwpFxyAxfu+pgoC71CswDqNDiFv4mNk7i+oUnKacrY5O28pKnWqRqjdO3/BqJoLxcmmOOuutX1uCUGRrqlM7E4aKSogavu9Fr9uXo8TPKTU2GP+wDS737+BBkfTzN3bOOxhXk+O1XtM8rtHRYomxS61s4Y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fX1WOndr; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C25471F000E9;
	Fri, 29 May 2026 01:28:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780018103;
	bh=18UPC2SZKdtzhosHiYr4d0Inrp340u6TbYLhcolEGKs=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date;
	b=fX1WOndr20hppBB1CZKVm/hEIpVUgAbvGuiAiUv547pPLvtWcArnOTgsfn7qxzqBH
	 J7gjGE2XqsppldXrfQpkAp3JAYq4xIBytFrqRL5lPOuj8vZDKxQyIYYC+AV35OPcMo
	 4M5p6Z/alBfBTDvBJ5hKqhqYwgGWBmtNE74e72U0ug83sYH7TPiAB87fe4gjfjot23
	 m3I/ecp6hlJXYQpFPXGrdeWvoGRCUjuLdtQtAo7ycyZWSsVO2ZkdZ0A4Kh40QHwkI+
	 1xVPPEnuQBdfCsdXl+ch6Ll6xNOutEEhyXFyLzpYQOkScMXD92/W9YuOQYvk94SOPU
	 EJJQcPcePG57g==
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20260419-hawi-spmi-v3-2-b04ee909cb87@oss.qualcomm.com>
References: <20260419-hawi-spmi-v3-0-b04ee909cb87@oss.qualcomm.com> <20260419-hawi-spmi-v3-2-b04ee909cb87@oss.qualcomm.com>
Subject: Re: [PATCH v3 2/2] spmi: spmi-pmic-arb: add support for PMIC arbiter v8.5
From: Stephen Boyd <sboyd@kernel.org>
Cc: Subbaraman Narayanamurthy <subbaraman.narayanamurthy@oss.qualcomm.com>, David Collins <david.collins@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, kernel@oss.qualcomm.com, Fenglin Wu <fenglin.wu@oss.qualcomm.com>
To: Conor Dooley <conor+dt@kernel.org>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Fenglin Wu <fenglin.wu@oss.qualcomm.com>, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>
Date: Thu, 28 May 2026 18:28:22 -0700
Message-ID: <178001810213.7182.15847911221471275437@lazor>
User-Agent: alot/0.12
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-304037-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sboyd@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,qualcomm.com:email]
X-Rspamd-Queue-Id: 04FDE5FC03E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Quoting Fenglin Wu (2026-04-19 19:25:53)
> PMIC arbiter v8.5 is an extension of PMIC arbiter v8 that updated
> the definition of the channel status register bit fields. Add support
> to handle this difference.
>=20
> Signed-off-by: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
> ---

Applied to spmi-next

