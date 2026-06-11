Return-Path: <devicetree+bounces-310246-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Ih40C6d3KmrdpwMAu9opvQ
	(envelope-from <devicetree+bounces-310246-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 10:53:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 373186700D0
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 10:53:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=eR4PW+t4;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310246-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-310246-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 42966300AD6E
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 08:53:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C09639A4B3;
	Thu, 11 Jun 2026 08:53:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E50A35C190;
	Thu, 11 Jun 2026 08:53:34 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781168015; cv=none; b=ZA+Gk/OOEHc2qNXArD1fAIC+ZOWswfRnIXzfDcFwX03LXJxYrHT9eXFKk7km/hHK8v8KAZQHtPhcH1RO8Q3y8jXkAWZqycPKEDMz/AHZIT16mn2m1BhO7LSSqISLwVglg1SzQpuq8B2inaW9TUDWDBtzg/PleYEQ9g5R8jp4xOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781168015; c=relaxed/simple;
	bh=eqH7ANavCevHLiMAPvzsb1H7Ap650s5wyNUr10SOOgg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YWtLnRBJFUQrg1b4AFwXFlGfbXH7Lf+fMkiaylC5LOwJ0SyggHBrfRSv5yLK7w/ahoP3YySMhCby9GctXNxbVnuhNPQrhXAkJSIntriCz04WSGK2yH77SaLo6eyOyqCnVa/iYZ93SjwCGNzOvdH6A1TJzseunU8TPFIaG/KBOTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eR4PW+t4; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 801291F00893;
	Thu, 11 Jun 2026 08:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781168014;
	bh=RkaMDJv2k3WR+KxoPtZX4VuY7kdj3G9qSMG6ex+5q5Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=eR4PW+t4dG2N2gll2evKsNnHjmj/qGrL5hi0MIXaqBqZUGppb7v2gIKAMpjD122aM
	 pxvS19hSjIo5oagLCqQ2VR7EVI5+IW21Oc5r2aY1I5/GjtiQJg/zamVGVVQKja+erb
	 MCDlbe7Xp+kyMSKum3sCs7WjtiRL47EU9WYy5+QXcpsq/nYWJDJmdTYtlLUPDvtJw9
	 g6ePt7ySApnqDmJjoE0wU6/NnoO2D6PETXfbYtfNTrFyZ8U6d1Bw8+k4vPygxMmlCK
	 hRJOYVoeapN8jsNRvpUdBWIhcKfy2nfz5Rb1OEMjYPYMXJE/t7kNJZNLE2UsOs/FAv
	 BqcdWL2Mzm7Ng==
Date: Thu, 11 Jun 2026 10:53:31 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, David Collins <david.collins@oss.qualcomm.com>, 
	Subbaraman Narayanamurthy <subbaraman.narayanamurthy@oss.qualcomm.com>, Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>, 
	kernel@oss.qualcomm.com, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: spmi: glymur-spmi-pmic-arb: Add compatible
 for Qualcomm Maili SoC
Message-ID: <20260611-happy-bullfrog-from-lemuria-3fd5df@quoll>
References: <20260609-maili-spmi-binding-v1-1-80fc4b6bb80f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260609-maili-spmi-binding-v1-1-80fc4b6bb80f@oss.qualcomm.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:fenglin.wu@oss.qualcomm.com,m:linux-arm-msm@vger.kernel.org,m:sboyd@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:david.collins@oss.qualcomm.com,m:subbaraman.narayanamurthy@oss.qualcomm.com,m:kamal.wadhwa@oss.qualcomm.com,m:kernel@oss.qualcomm.com,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-310246-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp,qualcomm.com:email,quoll:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 373186700D0

On Tue, Jun 09, 2026 at 11:29:24PM -0700, Fenglin Wu wrote:
> The PMIC arbiter in the Qualcomm Maili SoC is version v8.5, which
> is the same with Hawi and compatible with Glymur. Hence, add a string
> for "qcom,maili-spmi-pmic-arb" as a compatible entry for
> "qcom,glymur-spmi-pmic-arb".
> 
> Signed-off-by: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/spmi/qcom,glymur-spmi-pmic-arb.yaml | 1 +
>  1 file changed, 1 insertion(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


